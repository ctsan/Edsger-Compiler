open Printf

type operator = 
   | Op_unit | Op_endu | Op_lt | Op_gt
   | Op_plus | Op_minus | Op_mult | Op_assign |Op_jump
   | Op_call | Op_par | Op_ret

and pass_type = 
   | V | R | RET

and operand = 
   | Unit
   | Var of char
   | UnitName of string
   | Int of int
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
   | Var v            -> fprintf ppf "%c" v
   | UnitName s       -> fprintf ppf "%s" s
   | Int i            -> fprintf ppf "%d" i
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
   List.iter (fun q -> fprintf ppf "\n%a" pprint_quad q) ql


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
let rec backpatch il z =
   match il with
   | [] -> ()
   | _ ->
      List.iter (fun q -> 
         if List.mem q.quad_tag il then
         if q.quad_argZ = Star then
            q.quad_argZ <- Label z ) !quads

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
  addQuad (genQuad Op_endu Empty Empty (UnitName "main"))

(* and genquads_expr ast = *)
(*   let prop = newProp () in *)
(*   match ast with *)
(*   | E_const n         -> prop.place <- Int n; *)
(*                          prop *)
(*   | E_var x           -> prop.place <- Var x; *)
(*                          prop; *)
(*   | E_op (e1, op, e2) -> let e1prop = genquads_expr e1 *)
(*                          and e2prop = genquads_expr e2 *)
(*                          and w = Temp (newTemp ()) in *)
(*                          let q = genQuad (bnToOp op) e1prop.place e2prop.place w in *)
(*                          addQuad q; *)
(*                          prop.place <- w; *)
(*                          prop *)

(* and genquads_stmt ast = *)
(*   let prop = newProp () in *)
(*   match ast with *)
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
(*   | S_block bl   -> (match bl with *)
(*                       | b :: bs -> let bprop = genquads_stmt b in *)
(*                                    (match bs with *)
(*                                      | [] -> prop.next <- bprop.next; *)
(*                                              prop *)
(*                                      | _  -> backpatch bprop.next (nextQuad ()); *)
(*                                              let bsprop = genquads_stmt (S_block bs) in *)
(*                                              prop.next <- bsprop.next; *)
(*                                              prop)) *)
(*   | S_if (e, s)  -> let eprop = genquads_expr e in *)
(*                     let l = nextQuad () in *)
(*                     addQuad (genQuad Op_gt eprop.place (Int 0) (Label (l + 2))); *)
(*                     let q1 = genQuad Op_jump Empty Empty Star in *)
(*                     addQuad q1; *)
(*                     prop.falses <- [q1.quad_tag]; *)
(*                     let sprop = genquads_stmt s in *)
(*                     prop.next <- sprop.next; *)
(*                     prop *)
