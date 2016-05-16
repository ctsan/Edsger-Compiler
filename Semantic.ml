open Core.Std
open Ast
open Format
open Identifier
open Types
open Symbol

exception Terminate of string
exception NoMainFunction

let show_offsets = true

let rec pretty_typ ppf typ =
  match typ with
  | TYPE_none ->
      fprintf ppf "<undefined>"
  | TYPE_int ->
      fprintf ppf "int"
  | TYPE_char ->
      fprintf ppf "char"
  | TYPE_bool ->
      fprintf ppf "bool"
  | TYPE_double ->
      fprintf ppf "double"
  | TYPE_array (et, sz) ->
      pretty_typ ppf et;
      if sz > 0 then
        fprintf ppf " [%d]" sz
      else
        fprintf ppf " []"
  | TYPE_proc ->
      fprintf ppf "proc"

let pretty_mode ppf mode =
  match mode with
  | PASS_BY_REFERENCE ->
      fprintf ppf "reference "
  | _ ->
      ()

let printSymbolTable () =
  let rec walk ppf scp =
    if scp.sco_nesting <> 0 then begin
      fprintf ppf "scope: ";
      let entry ppf e =
        fprintf ppf "%a" pretty_id e.entry_id;
        match e.entry_info with
        | ENTRY_none ->
            fprintf ppf "<none>"
        | ENTRY_variable inf ->
            if show_offsets then
              fprintf ppf "[%d]" inf.variable_offset
        | ENTRY_function inf ->
            let param ppf e =
              match e.entry_info with
                | ENTRY_parameter inf ->
                   fprintf ppf "%a%a : %a"
                      pretty_mode inf.parameter_mode
                      pretty_id e.entry_id
                      pretty_typ inf.parameter_type
                | _ ->
                    fprintf ppf "<invalid>" in
            let rec params ppf ps =
              match ps with
              | [p] ->
                  fprintf ppf "%a" param p
              | p :: ps ->
                  fprintf ppf "%a; %a" param p params ps;
              | [] ->
                  () in
            fprintf ppf "(%a) : %a"
              params inf.function_paramlist
              pretty_typ inf.function_result
        | ENTRY_parameter inf ->
            if show_offsets then
              fprintf ppf "[%d]" inf.parameter_offset
        | ENTRY_temporary inf ->
            if show_offsets then
              fprintf ppf "[%d]" inf.temporary_offset in
      let rec entries ppf es =
        match es with
          | [e] ->
              fprintf ppf "%a" entry e
          | e :: es ->
              fprintf ppf "%a, %a" entry e entries es;
          | [] ->
              () in
      match scp.sco_parent with
      | Some scpar ->
          fprintf ppf "%a\n%a"
            entries scp.sco_entries
            walk scpar
      | None ->
          fprintf ppf "<impossible>\n"
    end in
  let scope ppf scp =
    if scp.sco_nesting == 0 then
      fprintf ppf "no scope\n"
    else
      walk ppf scp in
  printf "%a----------------------------------------\n"
    scope !currentScope

(* check_program tree *)
let rec count_top_level_decls ast =
	match ast with
	| None      -> raise (Terminate "AST is empty")
	| Some tree -> 
	let rec aux = (function
		| [] -> Printf.printf "-- declarations printed --\n"
		| hd::tl -> 
				((match hd with
					| D_var_decl (_,_) -> Printf.printf "- var decl\n"
					| D_func_decl (_,_,_) -> Printf.printf "- fun decl\n"
					| D_func_def (_,name,_,_,_) -> Printf.printf "- fun def %s\n" name);
				aux tl)) 
	in aux tree

let rec check ast =
	match ast with
	| None      -> raise (Terminate "AST is empty")
	| Some tree -> check_program tree

and check_program decls =
	initSymbolTable 256;
	printSymbolTable ();
	openScope();
	printSymbolTable ();
	let i1 = newVariable (id_make "i1") TYPE_int true in
	let i2 = newVariable (id_make "i2") TYPE_int true in
	ignore i1; ignore i2;
	printSymbolTable ();
	let p = newFunction (id_make "pr") true in
	openScope ();
	printSymbolTable ();
	let p1 = newParameter (id_make "p1") TYPE_int  PASS_BY_VALUE p true in
	let p2 = newParameter (id_make "p2") TYPE_int  PASS_BY_VALUE p true in
	let p3 = newParameter (id_make "p3") TYPE_char PASS_BY_REFERENCE p true in
	endFunctionHeader p TYPE_proc;
	ignore p1; ignore p2; ignore p3;
	printSymbolTable ();
	let b1 = newVariable (id_make "b1") TYPE_bool true in
	ignore b1;
	let i1 = newVariable (id_make "i1") TYPE_int true in
	ignore i1;
	printSymbolTable ();
	let i2 = lookupEntry (id_make "i2") LOOKUP_ALL_SCOPES true in
	let i1 = lookupEntry (id_make "i1") LOOKUP_ALL_SCOPES true in
	ignore i2; ignore i1;
	let t1 = newTemporary TYPE_int in
	let t2 = newTemporary TYPE_char in
	ignore t1; ignore t2;
	printSymbolTable ();
	closeScope ();
	printSymbolTable ();
	let p = newFunction (id_make "f") true in
	openScope ();
	printSymbolTable ();
	let x = newParameter (id_make "x") TYPE_int PASS_BY_VALUE p true in
	let y = newParameter (id_make "y") TYPE_char PASS_BY_REFERENCE p true in
	endFunctionHeader p TYPE_int;
	ignore x; ignore y;
	printSymbolTable ();
	closeScope ();
	printSymbolTable ();
	let t1 = newTemporary TYPE_int in
	let t2 = newTemporary TYPE_int in
	ignore t1; ignore t2;
	printSymbolTable ();
	closeScope ();
	printSymbolTable ()

(* let _ = List.fold_left *) 
(* 			~f:check_decls ~init:[] decls in () *) 

(* Params: Accumulated-Declarations, New Declaration *)
(* and check_decls acc_decls new_decl = *) 
(* 	match new_decl with *)
(* 	| D_var_decl (defed_type,vars) -> *)
(* 		List.iter (*Function:Add Variable of type defed_type*) vars *)
(* 	| D_func_decl (ret_type,fun_id,params) -> *)
(* 		let params =List.fold_left  ~f:(*Function:Add Fun Decl*) *) 
(* 									~init:[] *)
