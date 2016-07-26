open Core.Std;;
open Printf
open Symbol
open Ast
open Types

let (>>|) = Option.(>>|) 

type operator = 
   | Op_unit | Op_endu | Op_lt | Op_gt | Op_eq
   | Op_plus | Op_minus | Op_mult | Op_div | Op_mod | Op_assign |Op_jump
   | Op_call | Op_par | Op_ret | Op_retv | Op_array

and pass_type = 
   | V | R | RET

and operand = 
   | Unit
   | Var of string          (* TODO: MAYBE Change it to be Symbol Table Entry *)
   | UnitName of string
   | Char of char           
   | Int of int
   | Bool of bool
   | Double of float
   | Label of int
   | Temp of int
   | Address of operand (* added by me, TODO: Examine if this is a good choice*)
   | Deref   of operand
   | PassType of pass_type
   | Star (* for backpatching *)
   | InitPlace (* For Place Initialization *)
   | Empty

and quad =  {
   mutable quad_tag  : int;
   mutable quad_op   : operator;
   mutable quad_argX : operand;
   mutable quad_argY : operand;
   mutable quad_argZ : operand;
}

and semantic_properties = {
   mutable place  : operand;
   mutable next   : int list;
   mutable trues  : int list;
   mutable falses : int list;
}

let pprint_operator ppf op = 
    match op with
       | Op_unit       -> fprintf ppf "unit" (*new line for clear results*)
       | Op_endu       -> fprintf ppf "endu"
       | Op_array      -> fprintf ppf "array"
       | Op_plus       -> fprintf ppf "+"
       | Op_minus      -> fprintf ppf "-"
       | Op_mult       -> fprintf ppf "*"
       | Op_div       -> fprintf ppf "/"
       | Op_mod       -> fprintf ppf "%%"
       | Op_eq         -> fprintf ppf "="
       | Op_lt         -> fprintf ppf "<"
       | Op_gt         -> fprintf ppf ">"
       | Op_assign     -> fprintf ppf ":="
       | Op_jump       -> fprintf ppf "jump"
       | Op_call       -> fprintf ppf "call"
       | Op_par        -> fprintf ppf "par"
       | Op_ret        -> fprintf ppf "ret"
       | Op_retv        -> fprintf ppf "retv"

let pprint_passtype ppf p =
   match p with
   | V   -> fprintf ppf "V"
   | R   -> fprintf ppf "R"
   | RET -> fprintf ppf "RET"

let rec pprint_operand ppf op = 
   match op with
   | Unit             -> fprintf ppf "()"
   | Var v            -> fprintf ppf "%s" v
   | UnitName s       -> fprintf ppf "%s" s
   | Int i            -> fprintf ppf "%d" i
   | Char i            -> fprintf ppf "'%c'" i
   | Bool i           -> fprintf ppf "%b" i
   | Double i         -> fprintf ppf "%f" i
   | Temp i           -> fprintf ppf "$%d" i
   (* Invariant that should be held: no Address (Address ...) *)
   | Address op       -> fprintf ppf "{"; pprint_operand ppf op; fprintf ppf "}" 
   | Deref   op       -> fprintf ppf "["; pprint_operand ppf op; fprintf ppf "]" 
   | Label i          -> fprintf ppf "%d" i
   | PassType p       -> fprintf ppf "%a" pprint_passtype p
   | Star             -> fprintf ppf "*"
   | InitPlace        -> fprintf ppf "<undef>"
   | Empty            -> fprintf ppf "-"

let pprint_quad ppf q =
   if q.quad_op = Op_unit then
        fprintf ppf "\n";
   fprintf ppf "%d :\t%a, %a, %a, %a" q.quad_tag pprint_operator q.quad_op 
      pprint_operand q.quad_argX pprint_operand q.quad_argY pprint_operand q.quad_argZ

let pprint_quads ppf ql = 
   List.iter ql (fun q -> fprintf ppf "\n%a" pprint_quad q)


(* Empty Quad  *)
let newProp () = {
   place  = InitPlace;  
   next   = [];
   trues  = [];
   falses = [];
}

let quads = ref []       (* All our Quads *)
let quadNext = ref 0     (* Next Quad Number *)
let tmp = ref 0          (* Temporaries Numbering *)

(* Return Next Quad number *)
let nextQuad () = 
   !quadNext

(* Generate Next Quad, Update Quad Numbering *)
let genQuad op argX argY argZ =
   let nQ = nextQuad() in
   incr quadNext;
   { quad_tag = nQ;
     quad_op = op;
     quad_argX = argX;
     quad_argY = argY;
     quad_argZ = argZ }

(* Add a quad on our quads *)
let addQuad q =
  quads := q :: !quads

(* Increment Temporaries and return the new one *)
let newTemp () =
  incr tmp;
  !tmp

(* INPUT: List of INTs*)
(* OUTP : BackPatching quads with labels with these INTS *)
let rec backpatch ~quad_tags ~label =
   match quad_tags with
   | [] -> ()
   | _ ->
      List.iter !quads (fun q -> 
         if List.mem quad_tags q.quad_tag then
         if q.quad_argZ = Star then
            q.quad_argZ <- Label label )

(* let bnToOp bn = *)
(*    match bn with *)
(*    | O_plus  -> Op_plus *)
(*    | O_minus -> Op_minus *)
(*    | O_times -> Op_mult *)

(* let rec genquads asts = *)
(*   List.iter (fun ast -> addQuad (genQuad Op_unit (UnitName "main") Empty Empty); *)
(*                 let prop = genquads_stmt ast in *)
(*                 closequad prop; *)
(*                 ()) asts; *)
(*   printf "%a" pprint_quads (List.rev !quads); *)
(*   print_newline() *)

and closequad prop name =
  backpatch prop.next (nextQuad ());
  backpatch prop.trues (nextQuad ());
  backpatch prop.falses (nextQuad ());
  

and closeFinalQuad prop name =
  backpatch prop.next (nextQuad ());
  backpatch prop.trues (nextQuad ());
  backpatch prop.falses (nextQuad ());
  addQuad (genQuad Op_endu Empty Empty (UnitName name))

and genquads_expr ast =
  let prop = newProp () in
  let bin_op_helper x y op = 
        let e1prop = genquads_expr x
        and e2prop = genquads_expr y
        and w = Temp (newTemp ()) in
        let q = genQuad op e1prop.place e2prop.place w in
        addQuad q;
        prop.place <- w;
        prop
  in
  let logical_op_helper x y op =
        let e1prop = genquads_expr x in
        let e2prop = genquads_expr y in
        prop.trues <- [nextQuad ()];
        addQuad(genQuad op e1prop.place e2prop.place Star);
        prop.falses <- [nextQuad ()];
        addQuad(genQuad Op_jump Empty Empty Star);
        prop 
  in
  let pass_of_style = function
      | PASS_BY_VALUE     -> PassType V
      | PASS_BY_REFERENCE -> PassType R
  in
  match ast with
    | E_function_call (x,l) -> 
        Printf.printf "%d\n" (List.length (lookup_pass_styles (Identifier.id_make x)));
        let _ =  l >>| (List.iter2_exn (lookup_pass_styles (Identifier.id_make x)) ~f:(fun style par ->
            let pprop = genquads_expr par in
            addQuad (genQuad Op_par pprop.place (pass_of_style style)  Empty); 
        )) 
        in (* TODO Pass return value *)
        (match lookup_result_type x with
        | TYPE_void -> ()
        | _ -> let w = Temp (newTemp()) in 
                addQuad(genQuad Op_par (PassType RET) w Empty);
                prop.place <- w);
        addQuad(genQuad Op_call Empty Empty (UnitName x));
        prop;
    | E_id str -> prop.place <- Var str; prop
    | E_int n -> prop.place <- Int (int_of_string n); prop
    | E_bool n -> prop.place <- Bool (n); prop
    | E_char n -> prop.place <- Char n; prop
    (* | E_double _ -> TYPE_double 0 *)
    (* | E_string x -> TYPE_array (TYPE_char 0, 1+String.length x) (1* NOTE: +1 for null check *1) *)
    | E_null -> prop.place <- Int 0; prop (* TODO: Is this the best idea? Null as a zero integer? *)
    | E_plus (x,y) -> bin_op_helper x y Op_plus
    | E_minus (x,y) -> bin_op_helper x y Op_minus
    | E_div (x,y) -> bin_op_helper x y Op_div
    | E_mult (x,y) -> bin_op_helper x y Op_mult
    | E_mod (x,y) ->  bin_op_helper x y Op_mod
    (* (* Logical Operator*) *)
    | E_and (x,y) -> 
        let e1prop = genquads_expr x in
        backpatch e1prop.trues (nextQuad ());
        let e2prop = genquads_expr y in
        prop.falses <- e1prop.falses @ e2prop.falses;
        prop.trues <- e2prop.trues;
        prop
    | E_or (x,y) -> 
        let e1prop = genquads_expr x in
        backpatch e1prop.falses (nextQuad ());
        let e2prop = genquads_expr y in
        prop.trues  <- e2prop.trues @ e1prop.trues;
        prop.falses <- e2prop.falses;
        prop
    | E_lteq (x,y)  -> genquads_expr (E_negate (E_gt (x,y)))  (* Making these OPs Syntantic sugar *)
    | E_gteq (x,y) ->  genquads_expr (E_negate (E_lt (x,y)))  (* For Previously Defined relops   *)
    | E_eq (x,y) -> logical_op_helper  x y Op_eq 
    | E_lt (x,y) -> logical_op_helper x y Op_lt
    | E_gt (x,y) -> logical_op_helper x y Op_gt
    | E_neq (x,y) -> genquads_expr (E_negate (E_eq(x,y)))   (* Syntantic Sugar of !(x==y) *)
    | E_comma (x,y) -> 
            let _  = genquads_expr x in
            let yprop = genquads_expr y in
            prop.place <- yprop.place;
            prop
    | E_assign (x,y) -> 
            let yprop = genquads_expr y in
            let xprop = genquads_expr x in
            addQuad(genQuad Op_assign yprop.place Empty xprop.place ); 
            prop.place <- xprop.place;
            prop
    | E_mul_assign (x,y) ->  (* Implement as Syntantic Sugar *)
            genquads_expr (E_assign (x, E_mult (x,y)))
    | E_div_assign (x,y) -> 
            genquads_expr (E_assign (x, E_div (x,y)))
    | E_mod_assign (x,y) ->  
            genquads_expr (E_assign (x, E_mod (x,y)))
    | E_plu_assign (x,y) -> 
            genquads_expr (E_assign (x, E_plus (x,y)))
    | E_min_assign (x,y) -> 
            genquads_expr (E_assign (x, E_minus (x,y)))
    | E_negate x -> 
             let rprop = genquads_expr x in
             prop.trues <- rprop.falses;
             prop.falses <- rprop.trues;
             prop
    | E_uplus x -> 
            genquads_expr x  
    (* Make the following, syntantic sugar for *(-1) *)
    | E_uminus x ->
            (* TODO: consider the case when uminus is applied on a float number*)
            genquads_expr (E_mult (E_int "-1",x))
    | E_addr x ->  (* TODO: Fix unrestricted nests *)
            let tprop = genquads_expr x in
            let w = Temp (newTemp ()) in        
            addQuad(genQuad Op_assign tprop.place Empty w);
            prop.place <- Address (w);
            prop
    | E_deref x -> (* TODO: Optionally avoid using one temporary in the first step *)
            let tprop = genquads_expr x in
            let w = Temp (newTemp ()) in        
            addQuad(genQuad Op_assign tprop.place Empty w);
            prop.place <- Deref (w);
            prop
    (* | E_incr_bef x -> *) 
    (*         (1* Syntantic Sugar for x=x+1 if x is int or a pointer, x=x+1.0 if x is double ) *1) *)
    (*         (1* TODO *1) *)
    (*         genquads_expr (E_assign (x,)) *)
    (* | E_decr_bef x -> (ignore (eval_expr x); TYPE_int 0) *)
    (* | E_incr_aft x -> (ignore (eval_expr x); TYPE_int 0) *)
    (* | E_decr_aft x -> (ignore (eval_expr x); TYPE_int 0) (*we need an lvalue check function*) *)
    | E_array_access (x,y) ->  (* TODO FIX *)
            let aprop = genquads_expr x in
            let iprop = genquads_expr y in
            let w = Temp (newTemp ()) in  (* Generate Temporary just before use for better ordering*)
            addQuad(genQuad Op_array aprop.place iprop.place w);
            prop.place <- Deref (w); (* The result should be the deref of this *)
            prop
            
    (* | E_delete x -> if is_pointer (eval_expr x) then *)
    (*                     eval_expr x *)
    (*                 else *)
    (*                     raise (Terminate "Can't delete non-point") *)
    (* | E_new (x, None) -> addr_of_point (map_to_symbol_table_type x) *)
    (* | E_new (x, Some y) -> if equalType (eval_expr y) (TYPE_int 0) then *)
    (*                             addr_of_point (map_to_symbol_table_type x) *)
    (*                        else *)
    (*                             raise (Terminate "Non int array size") *)
    (* | E_cast (x, y) -> (ignore (eval_expr y); map_to_symbol_table_type x) *) 
    (* | E_ternary_op (x, y, z) -> *)
    (*     if (equalType (eval_expr x) (TYPE_bool 0)) *) 
    (*     && (equalType (eval_expr y) (eval_expr z)) then *)
    (*         eval_expr z *)
    (*     else *)
    (*         raise (Terminate "Wrong types ternary") *)
    | _ -> prop

(* Associate labels to qtags for 'continue' stmt*)
let label_to_qtag = String.Table.create ();; 
(* for continue with no label use the most recent enclosing *)
let fors_qtags    = Stack.create ();;  
(* for backpatching breaks with enclosing for *)
let breaks_for_bp = Stack.create ();;
(* for backpatching breaks with respecting for *)
let breaks_for_resp_bp = String.Table.create ();;

let rec genquads_stmt ast =
    let prop = newProp () in
    match ast with
    | S_expr expr -> printf "(expr)\n"; genquads_expr expr
    | S_if (cond, ifstmt,None)  -> 
        let cprop = genquads_expr cond in
        backpatch cprop.trues (nextQuad ());
        let sprop = genquads_stmt ifstmt in
        prop.next <- cprop.falses @ sprop.next;
        prop
    | S_if (cond, ifstmt, Some elstmt) ->
        let cprop = genquads_expr cond in
        backpatch cprop.trues (nextQuad ());
        let sprop = genquads_stmt ifstmt in
        let l1    = [ nextQuad () ] in           
        addQuad(genQuad Op_jump Empty Empty Star);  
        backpatch cprop.falses (nextQuad ());
        let eprop = genquads_stmt elstmt in
        prop.next <- l1 @ eprop.next  @ sprop.next; 
        (* TODO: REFACTOR for better Efficiency instead of using '@' *)
        prop
    | S_for (label,expr1,expr2,expr3,stmt) ->
        let _   = expr1 >>| genquads_expr in  
        let start_loop = nextQuad () in
        let _ = label >>| (fun label -> Hashtbl.set label_to_qtag ~key:label ~data:start_loop) in 
        Stack.push fors_qtags start_loop; (* store this for keeping track of the most recent for*)
        let guardprop  = expr2 >>| genquads_expr in
        (match guardprop with
        | Some grop -> backpatch grop.trues (nextQuad ())
        | None -> ());
        let _     = genquads_stmt stmt  in
        let _     = expr3 >>| genquads_expr in
        addQuad(genQuad Op_jump Empty Empty (Label start_loop));
        let target_breaks = match label with
        | None -> []
        | Some l -> 
            (match Hashtbl.find breaks_for_resp_bp l with
            | Some res -> res  (* TODO Remove this after returnign it*)
            | None -> [])
        in
        prop.next <- 
            (Stack.to_list breaks_for_bp) @ target_breaks 
            @ (match guardprop with None -> [] | Some gprop -> gprop.falses);
        Stack.clear breaks_for_bp;
        prop
  | S_braces bl   -> (match bl with
                        | b :: bs -> let bprop = genquads_stmt b in
                                   (match bs with
                                     | [] -> prop.next <- bprop.next;
                                             prop
                                     | _  -> backpatch bprop.next (nextQuad ());
                                             let bsprop = genquads_stmt (S_braces bs) in
                                             prop.next <- bsprop.next;
                                             prop)
                        | _ -> prop) (* TODO Check again *)
  | S_continue label -> 
       (match label with
       | None ->  addQuad(genQuad Op_jump Empty Empty (Label (Stack.pop_exn fors_qtags)))
       | Some l -> let for_qtag = String.Table.find_exn label_to_qtag l in
                 addQuad(genQuad Op_jump Empty Empty (Label for_qtag)) 
       ); prop
  | S_break label -> 
       (match label with
       | None ->  
               Stack.push breaks_for_bp (nextQuad ());
               addQuad(genQuad Op_jump Empty Empty Star)
       | Some l -> 
               Hashtbl.add_multi breaks_for_resp_bp ~key:l ~data:(nextQuad ());
               addQuad(genQuad Op_jump Empty Empty Star) 
       ); prop
  | S_return r -> 
      (match r >>| genquads_expr with
      | Some result -> addQuad ( genQuad Op_retv result.place Empty Empty)
      | None -> ());
      addQuad ( genQuad Op_ret Empty Empty Empty );
      prop
  | _ -> printf "(else)\n"; prop 
