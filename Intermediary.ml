open Core.Std;;
open Printf
open Symbol
open Ast

let (>>|) = Option.(>>|) 

type operator = 
   | Op_unit | Op_endu | Op_lt | Op_gt | Op_eq
   | Op_plus | Op_minus | Op_mult | Op_div | Op_mod | Op_assign |Op_jump
   | Op_call | Op_par | Op_ret 

and pass_type = 
   | V | R | RET

and operand = 
   | Unit
   | Var of string          (* TODO: Symbol Table Entry *)
   | UnitName of string
   | Int of int
   | Bool of bool
   | Float of float
   | Label of int
   | Temp of int
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
       | Op_unit       -> fprintf ppf "unit"
       | Op_endu       -> fprintf ppf "endu"
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
   | Bool i            -> fprintf ppf "%b" i
   | Float i          -> fprintf ppf "%f" i
   | Temp i           -> fprintf ppf "$%d" i
   | Label i          -> fprintf ppf "%d" i
   | PassType p       -> fprintf ppf "%a" pprint_passtype p
   | Star             -> fprintf ppf "*"
   | InitPlace        -> fprintf ppf "<undef>"
   | Empty            -> fprintf ppf "-"

let pprint_quad ppf q =
   fprintf ppf "%d :\t%a, %a, %a, %a" q.quad_tag pprint_operator q.quad_op 
      pprint_operand q.quad_argX pprint_operand q.quad_argY pprint_operand q.quad_argZ

let pprint_quads ppf ql = 
   List.iter ql (fun q -> fprintf ppf "\n%a" pprint_quad q)


(* Empty Quad  *)
let newProp () = {
   place  = InitPlace;  
   next   = [];
   trues  = [];
   falses = []
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
  (* | E_const n         -> prop.place <- Int n; *)
  (*                        prop *)
  (* | E_var x           -> prop.place <- Var x; *)
  (*                        prop; *)
  (* | E_op (e1, op, e2) -> let e1prop = genquads_expr e1 *)
  (*                        and e2prop = genquads_expr e2 *)
  (*                        and w = Temp (newTemp ()) in *)
  (*                        let q = genQuad (bnToOp op) e1prop.place e2prop.place w in *)
  (*                        addQuad q; *)
  (*                        prop.place <- w; *)
  (*                        prop *)
    | E_function_call (x,l) -> 
        Printf.printf "%d\n" (List.length (lookup_pass_styles (Identifier.id_make x)));
        let _ =  l >>| (List.iter2_exn (lookup_pass_styles (Identifier.id_make x)) ~f:(fun style par ->
            let pprop = genquads_expr par in
            addQuad (genQuad Op_par pprop.place (pass_of_style style)  Empty); 
        )) 
        in (* TODO Pass return value *)
        addQuad(genQuad Op_call Empty Empty (UnitName x));
        prop;
    | E_id str -> prop.place <- Var str; prop
    | E_int n -> prop.place <- Int (int_of_string n); prop
    | E_bool n -> prop.place <- Bool (n); prop
    (* | E_char _ -> TYPE_char 0 *)
    (* | E_double _ -> TYPE_double 0 *)
    (* | E_string x -> TYPE_array (TYPE_char 0, 1+String.length x) (1* NOTE: +1 for null check *1) *)
    (* | E_null -> TYPE_null *) 
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
    (* | E_gt (x,y) -> bin_op_helper x y Op_gt *)
    (* | E_neq (x,y) | E_eq  (x,y) -> *) 
    (*     let _ = check_eval_ar_op (x,y) in (); TYPE_bool 0 *)
    | E_comma (x,y) -> 
            let xprop = genquads_expr x in
            let yprop = genquads_expr y in
            prop.place <- yprop.place;
            prop
    | E_assign (x,y) -> 
            let yprop = genquads_expr y in
            let xprop = genquads_expr x in
            addQuad(genQuad Op_assign yprop.place Empty xprop.place ); 
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
    (* | E_uplus x -> eval_expr x *)
    (* | E_uminus x -> eval_expr x *)
    (* | E_addr x ->  addr_of_point (eval_expr x) *)
    (* | E_deref x -> deref_expr (eval_expr x) *)
    (* | E_incr_bef x -> (ignore (eval_expr x); TYPE_int 0) *)
    (* | E_decr_bef x -> (ignore (eval_expr x); TYPE_int 0) *)
    (* | E_incr_aft x -> (ignore (eval_expr x); TYPE_int 0) *)
    (* | E_decr_aft x -> (ignore (eval_expr x); TYPE_int 0) (*we need an lvalue check function*) *)
    (* | E_array_access (x,y) -> if (equalType (eval_expr y) (TYPE_int 0)) then *)
    (*                               eval_expr x *) 
    (*                           else *)
    (*                               raise (Terminate "Array index not int") *)
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


and genquads_stmt ast =
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
    | S_for (_,expr1,expr2,expr3,stmt) ->
        let initprop   = expr1 >>| genquads_expr in  
        let start_loop = nextQuad () in
        let guardprop  = expr2 >>| genquads_expr in
        (match guardprop with
        | Some grop -> backpatch grop.trues (nextQuad ())
        | None -> ());
        let stmts      = genquads_stmt stmt  in
        let update     = expr3 >>| genquads_expr in
        addQuad(genQuad Op_jump Empty Empty (Label start_loop));
        prop.next <- (match guardprop with None -> [] | Some gprop -> gprop.falses);
        prop

  | S_braces bl   -> (match bl with
        | b :: bs -> let bprop = genquads_stmt b in
                   (match bs with
                     | [] -> prop.next <- bprop.next;
                             prop
                     | _  -> backpatch bprop.next (nextQuad ());
                             let bsprop = genquads_stmt (S_braces bs) in
                             prop.next <- bsprop.next;
                             prop))

  | _ -> printf "(else)\n"; prop 
(*   | S_print e    -> let eprop = genquads_expr e in *)
(*                     let q1 = genQuad Op_par eprop.place (PassType V) Empty in *)
(*                     let q2 = genQuad Op_call Empty Empty (UnitName "print") in *)
(*                     addQuad q1; *)
(*                     addQuad q2; *)
(*                     prop *)
(*   | S_let (x, e) -> let eprop = genquads_expr e in *)
(*                     addQuad (genQuad Op_assign eprop.place Empty (Var x)); *)
(*                     prop *)
(*   | S_for (e, s) -> let w = Temp (newTemp ()) in *)
(*                     let eprop = genquads_expr e in *)
(*                     addQuad (genQuad Op_assign eprop.place Empty w); *)
(*                     let l = nextQuad () in *)
(*                     addQuad (genQuad Op_gt w (Int 0) (Label (l + 2))); *)
(*                     let q1 = genQuad Op_jump Empty Empty Star in *)
(*                     addQuad q1; *)
(*                     prop.next <- [q1.quad_tag]; *)
(*                     let sprop = genquads_stmt s in *)
(*                     backpatch sprop.next l; *)
(*                     let w2 = Temp (newTemp ()) in *)
(*                     addQuad (genQuad Op_minus w (Int 1) w2); *)
(*                     addQuad (genQuad Op_assign w2 Empty w); *)
(*                     addQuad (genQuad Op_jump Empty Empty (Label l)); *)
(*                     prop *)
(*   | S_if (e, s)  -> let eprop = genquads_expr e in *)
(*                     let l = nextQuad () in *)
(*                     addQuad (genQuad Op_gt eprop.place (Int 0) (Label (l + 2))); *)
(*                     let q1 = genQuad Op_jump Empty Empty Star in *)
(*                     addQuad q1; *)
(*                     prop.falses <- [q1.quad_tag]; *)
(*                     let sprop = genquads_stmt s in *)
(*                     prop.next <- sprop.next; *)
(*                     prop *)
