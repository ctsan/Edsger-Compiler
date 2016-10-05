open Identifier
open Error
open Types

exception Exit

module H = Hashtbl.Make (
  struct
    type t = id
    let equal = (==)
    let hash = Hashtbl.hash
  end
)

type pass_mode = PASS_BY_VALUE | PASS_BY_REFERENCE

type param_status =
  | PARDEF_COMPLETE
  | PARDEF_DEFINE
  | PARDEF_CHECK

type scope = {
  sco_parent : scope option;
  sco_nesting : int;
  mutable sco_entries : entry list;
  mutable sco_negofs : int
}


and variable_info = {
  variable_type   : Types.typ;
  variable_offset : int
}

and function_info = {
  mutable function_isForward : bool;
  mutable function_paramlist : entry list;
  mutable function_redeflist : entry list;
  mutable function_result    : Types.typ;
  mutable function_pstatus   : param_status;
  mutable function_initquad  : int;
  mutable function_uniq_id   : int option;
}

and parameter_info = {
  parameter_type           : Types.typ;
  mutable parameter_offset : int;
  parameter_mode           : pass_mode
}

and temporary_info = {
  temporary_type   : Types.typ;
  temporary_offset : int
}

and entry_info = ENTRY_none
               | ENTRY_variable  of variable_info
               | ENTRY_function  of function_info
               | ENTRY_parameter of parameter_info
               | ENTRY_label	 of bool ref
               | ENTRY_temporary of temporary_info

and entry = {
  entry_id    : Identifier.id;
  entry_scope : scope;
  entry_info  : entry_info
}

type lookup_type = LOOKUP_CURRENT_SCOPE | LOOKUP_ALL_SCOPES

let start_positive_offset = 4 * ptrBytes
let start_negative_offset = 0 (* NOTE  *)

let the_outer_scope = {
  sco_parent = None;
  sco_nesting = 0;
  sco_entries = [];
  sco_negofs = start_negative_offset
}

let no_entry id = {
  entry_id = id;
  entry_scope = the_outer_scope;
  entry_info = ENTRY_none
}

let currentScope = ref the_outer_scope
let quadNext = ref 1
let tempNumber = ref 1

let tab = ref (H.create 0)

let initSymbolTable size =
   tab := H.create size;
   currentScope := the_outer_scope

let openScope () =
  let sco = {
    sco_parent = Some !currentScope;
    sco_nesting = !currentScope.sco_nesting + 1;
    sco_entries = [];
    sco_negofs = start_negative_offset
  } in
  currentScope := sco

let closeScope () =
  let sco = !currentScope in
  let manyentry e = H.remove !tab e.entry_id in
  List.iter manyentry sco.sco_entries;
  match sco.sco_parent with
  | Some scp ->
      currentScope := scp
  | None ->
      Printf.printf "cannot close the outer scope!"

exception Failure_NewEntry of entry

let newEntry id inf err =
  try
    if err then begin
      try
        let e = H.find !tab id in
        if e.entry_scope.sco_nesting = !currentScope.sco_nesting then
           raise (Failure_NewEntry e)
      with Not_found ->
        ()
    end;
    let e = {
      entry_id = id;
      entry_scope = !currentScope;
      entry_info = inf
    } in
    H.add !tab id e;
    !currentScope.sco_entries <- e :: !currentScope.sco_entries;
    e
  with Failure_NewEntry e ->
    error "duplicate identifier %a" pretty_id id;
    e


let func_id = ref 0
let get_func_id () = incr func_id; !func_id
let cur_func_id () = !func_id

let uniq_id_of_fun ent =
  match ent.entry_info with
  | ENTRY_function f ->
        (
         match f.function_uniq_id with
         | Some id -> id
         | None -> raise (Failure "Every function should have a unique id in an earlier stage")
        )
  | _ -> raise (Invalid_argument "function should be passed")

let string_of_entry e =
  id_name e.entry_id

(** this returns the absolute unique string of a function entry
    this is used for labeling in assembly  *)
let uniq_string_of_fentry e =
  let open Core.Std in
  let (>>|) = Option.(>>|) in
  match e.entry_info with
  | ENTRY_function f ->
    (match f.function_uniq_id >>| fun i -> "_" ^ (string_of_entry e) ^ "_" ^  (string_of_int i ) with
    | None   ->  raise (Failure "no unique id has been given to this function yet")
    | Some n -> n)
  | _ -> raise (Invalid_argument "should pass function")


let is_local e =
    let scc = !currentScope in
    let res = e.entry_scope.sco_nesting = scc.sco_nesting in
    (* Printf.printf "\ncurrent scope %d, item scope %d\n" scc.sco_nesting e.entry_scope.sco_nesting; *)
    res
    (* TODO: is there a chance e will not be in current scope? *)

let size_of_entry e = 
  let typ = match e.entry_info with
  | ENTRY_variable var -> var.variable_type
  | ENTRY_parameter par -> par.parameter_type
  | ENTRY_temporary tem -> tem.temporary_type
  | _ -> raise (Terminate "size_of_entry only works with var/par/tem")
  in match typ with
  | TYPE_array (et, _) -> sizeOfType et
  | _ -> sizeOfType typ

let size_of_entry_deref e = match e.entry_info with
  | ENTRY_variable var -> sizeOfType (deref_expr var.variable_type)
  | ENTRY_parameter par -> sizeOfType (deref_expr par.parameter_type)
  | ENTRY_temporary tem -> sizeOfType (deref_expr tem.temporary_type)
  | _ -> raise (Terminate "size_of_entry_deref only works with var/par/tem")

let size_of_params parlist = 
  let rec sizeAux acc = function
    | [] -> acc
    | (x::xs) -> sizeAux (acc + size_of_entry x) xs
  in
  sizeAux 0 parlist

let lookupEntry id how err =
  let scc = !currentScope in
  let lookup () =
    match how with
    | LOOKUP_CURRENT_SCOPE ->
        let e = H.find !tab id in
        if e.entry_scope.sco_nesting = scc.sco_nesting then
          e
        else
          raise Not_found
    | LOOKUP_ALL_SCOPES ->
        H.find !tab id in
  if err then
    try
      lookup ()
    with Not_found ->
      error "unknown identifier %a (first occurrence)"
        pretty_id id;
      (* put it in, so we don't see more errors *)
      H.add !tab id (no_entry id);
      raise Exit
  else
    lookup ()

let lookup_unfiltered_type id =
	let i1 = lookupEntry id LOOKUP_ALL_SCOPES true in
    match i1.entry_info with
        | ENTRY_function inf  -> inf.function_result
        | ENTRY_variable inf  -> inf.variable_type
        | ENTRY_parameter inf -> inf.parameter_type
        | ENTRY_temporary inf -> inf.temporary_type
        | _ -> raise (Terminate "Bad lookup")

let lookup_result_type id =
  let general_type = lookup_unfiltered_type id
  in match general_type with
  | TYPE_array (t,sz) -> addr_of_point t
  | n -> n

let is_procedure ent = lookup_result_type ent.entry_id = TYPE_void

let is_mutable id =
  match lookup_unfiltered_type id with
  | TYPE_array _ -> false
  | _ -> true

let lookup_parameters (f:Identifier.id) =
	let open Core.Std in
	let i = lookupEntry f LOOKUP_ALL_SCOPES true in
	match i.entry_info with
	| ENTRY_function inf -> List.map inf.function_paramlist ~f:(fun arg ->
			match arg.entry_info with
			| ENTRY_parameter pinfo -> pinfo
			| _ -> raise (Failure "Invariant violated\n")
		)
	| _ -> raise (Failure "This is intended to take a function id")

let lookup_pass_types  f =
	let open Core.Std in
  List.map (lookup_parameters f) ~f:(fun param -> param.parameter_type)

let lookup_pass_styles f =
	let open Core.Std in
  List.map (lookup_parameters f) ~f:(fun param -> param.parameter_mode)

let lookup_bp_offset e =
  match e.entry_info with
  | ENTRY_parameter p -> p.parameter_offset
  | ENTRY_variable  v -> v.variable_offset
  | ENTRY_temporary t -> t.temporary_offset
  | _ -> raise (Failure "Don't call lookup_bp_offset with non-temp/var/par.")

let lookup_passmode e =
  match e.entry_info with
  | ENTRY_parameter p -> p.parameter_mode
  | _ -> raise (Failure "Don't call lookup_passmode with non-par.")

let newVariable id typ err =
  !currentScope.sco_negofs <- !currentScope.sco_negofs - sizeOfType typ;
  let inf = {
    variable_type = typ;
    variable_offset = !currentScope.sco_negofs
  } in
  newEntry id (ENTRY_variable inf) err

let newLabel id err =
  newEntry id (ENTRY_label (ref true)) err

let endLabelScope e =
	match e.entry_info with
	| ENTRY_label v -> v:= false;
	| _ -> Printf.printf "cannot end Label scope of something that is not a label\n"

let newFunction id err =
  try
    let e = lookupEntry id LOOKUP_CURRENT_SCOPE false in
    match e.entry_info with
    | ENTRY_function inf when inf.function_isForward ->
        inf.function_isForward <- false;
        inf.function_pstatus <- PARDEF_CHECK;
        inf.function_redeflist <- inf.function_paramlist;
        e
    | _ ->
        if err then
          error "duplicate identifier: %a" pretty_id id;
          raise Exit
  with Not_found ->
    let inf = {
      function_isForward = false;
      function_paramlist = [];
      function_redeflist = [];
      function_result = TYPE_none;
      function_pstatus = PARDEF_DEFINE;
      function_initquad = 0;
      function_uniq_id  = Some (get_func_id ());
    } in
    newEntry id (ENTRY_function inf) false

let newParameter id typ mode f err =
  match f.entry_info with
  | ENTRY_function inf -> begin
      match inf.function_pstatus with
      | PARDEF_DEFINE ->
          let inf_p = {
            parameter_type = typ;
            parameter_offset = 0;
            parameter_mode = mode
          } in
          let e = newEntry id (ENTRY_parameter inf_p) err in
          inf.function_paramlist <- e :: inf.function_paramlist;
          e
      | PARDEF_CHECK -> begin
          match inf.function_redeflist with
          | p :: ps -> begin
              inf.function_redeflist <- ps;
              match p.entry_info with
              | ENTRY_parameter inf ->
                  if not (equalType inf.parameter_type typ) then
                    error "Parameter type mismatch in redeclaration \
                           of function %a" pretty_id f.entry_id
                  else if inf.parameter_mode != mode then
                    error "Parameter passing mode mismatch in redeclaration \
                           of function %a" pretty_id f.entry_id
                  else if p.entry_id != id then
                    error "Parameter name mismatch in redeclaration \
                           of function %a" pretty_id f.entry_id
                  else
                    H.add !tab id p;
                  p
              | _ ->
                  Printf.printf  "I found a parameter that is not a parameter!";
                  raise Exit
            end
          | [] ->
              error "More parameters than expected in redeclaration \
                     of function %a" pretty_id f.entry_id;
              raise Exit
        end
      |PARDEF_COMPLETE ->
          Printf.printf "Cannot add a parameter to an already defined function";
          raise Exit
    end
  | _ ->
      Printf.printf "Cannot add a parameter to a non-function";
      raise Exit


let fun_is_defined f =
  let e = lookupEntry f LOOKUP_ALL_SCOPES true in
  match e.entry_info with
  | ENTRY_function inf -> not inf.function_isForward
  | _ -> Printf.printf "Cannot check status of non-function"; raise Exit


module Hset = Core.Std.Hash_set
let defined_funcs_hs = Hset.Poly.create ()

let fun_is_globally_defined id = Hset.mem defined_funcs_hs id

let set_fun_globally_defined id =
  Hset.add defined_funcs_hs id

let newTemporary typ =
  let id = id_make ("$" ^ string_of_int !tempNumber) in
  !currentScope.sco_negofs <- !currentScope.sco_negofs - sizeOfType typ;
  let inf = {
    temporary_type = typ;
    temporary_offset = !currentScope.sco_negofs
  } in
  incr tempNumber;
  newEntry id (ENTRY_temporary inf) false

let forwardFunction e =
  match e.entry_info with
  | ENTRY_function inf ->
      inf.function_isForward <- true
  | _ ->
      Printf.printf "Cannot make a non-function forward"

let endFunctionHeader e typ =
  match e.entry_info with
  | ENTRY_function inf ->
      begin
        match inf.function_pstatus with
        | PARDEF_COMPLETE ->
            Printf.printf "Cannot end parameters in an already defined function"
        | PARDEF_DEFINE ->
            inf.function_result <- typ;
            let offset = ref start_positive_offset in
            let fix_offset e =
              match e.entry_info with
              | ENTRY_parameter inf ->
                  inf.parameter_offset <- !offset;
                  let size =
                    match inf.parameter_mode with
                    | PASS_BY_VALUE     -> sizeOfType inf.parameter_type (* !IMPORANT *)
                    | PASS_BY_REFERENCE -> ptrBytes in (* !IMPORANT *)
                  offset := !offset + size
              | _ ->
                  Printf.printf "Cannot fix offset to a non parameter" in
            List.iter fix_offset inf.function_paramlist;
            inf.function_paramlist <- List.rev inf.function_paramlist
        | PARDEF_CHECK ->
            if inf.function_redeflist <> [] then
              error "Fewer parameters than expected in redeclaration \
                     of function %a" pretty_id e.entry_id;
            if not (equalType inf.function_result typ) then
              error "Result type mismatch in redeclaration of function %a"
                    pretty_id e.entry_id;
      end;
      inf.function_pstatus <- PARDEF_COMPLETE
  | _ ->
      Printf.printf "Cannot end parameters in a non-function"


(* TODO make sure an offset isn't necessery *)
let lookup_fr_size () =
  -(!currentScope).sco_negofs

