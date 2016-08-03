open Core.Std
open Printf
open Symbol
open Ast
open Types
open Identifier

let (>>|) = Option.(>>|)

type operator =
  | Op_unit | Op_endu | Op_lt | Op_gt | Op_eq | Op_ifb
  | Op_plus | Op_minus | Op_mult | Op_div | Op_mod | Op_assign |Op_jump
  | Op_call | Op_par | Op_ret | Op_retv | Op_array
  | Op_malloc | Op_free | Op_cast

and pass_type =
  | V | R | RET


and operand =
  | Unit
  | Var of string          (* TODO: MAYBE Change it to be Symbol Table Entry *)
  | UnitName of string
  | Char of char
  | String of string
  | Int of int
  | Bool of bool
  | Double of float
  | Label of int
  | Temp of int
  | Address of operand (* Invariant: No Nested Address *)
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
  (* mutable typ    : Types.typ; *)
  (* mutable cond   : bool;  *)
  mutable next   : int list;
  mutable trues  : int list;
  mutable falses : int list;
}

let string_of_operator = function
  | Op_unit       -> "unit"
  | Op_endu       -> "endu"
  | Op_array      -> "array"
  | Op_plus       -> "+"
  | Op_minus      -> "-"
  | Op_mult       -> "*"
  | Op_div        -> "/"
  | Op_mod        -> "%"
  | Op_eq         -> "="
  | Op_lt         -> "<"
  | Op_gt         -> ">"
  | Op_ifb        -> "ifb"
  | Op_assign     -> ":="
  | Op_jump       -> "jump"
  | Op_call       -> "call"
  | Op_par        -> "par"
  | Op_ret        -> "ret"
  | Op_retv       -> "retv"
  | Op_cast       -> "cast"
  | Op_malloc     -> "alloc"
  | Op_free       -> "free"

let string_of_passtype = function
  | V   -> "V"
  | R   -> "R"
  | RET -> "RET"

let pprint_operator ppf op = string_of_operator op |> fprintf ppf "%s"

let pprint_passtype ppf p  = string_of_passtype p |> fprintf ppf "%s"

let rec pprint_operand ppf op =
  let f = fprintf in
  match op with
  | Unit             -> f ppf "()"
  | Var v            -> f ppf "%s" v
  | UnitName s       -> f ppf "%s" s
  | Int i            -> f ppf "%d" i
  | String s         -> f ppf "\"%s\"" s
  | Char i           ->f ppf "'%c'" i
  | Bool i           -> f ppf "%b" i
  | Double i         -> f ppf "%F" i (* NOTE change this to %f or %.f possibly *)
  | Temp i           -> f ppf "$%d" i
  | Address op       -> f ppf "{"; pprint_operand ppf op; f ppf "}"
  | Deref   op       -> f ppf "["; pprint_operand ppf op; f ppf "]"
  | Label i          -> f ppf "%d" i
  | PassType p       -> f ppf "%a" pprint_passtype p
  | Star             -> f ppf "*"
  | InitPlace        -> f ppf "<undef>"
  | Empty            -> f ppf "-"

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
  (* typ    = Types.TYPE_none; *)
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

(* condition or expression?  *)
let is_condition prop =
  not (prop.trues=[] && prop.falses=[])

let match_ar ~expr ~(if_int: 'a lazy_t) ~if_double=
  force (match lookup_type_of_expr expr with
      | TYPE_int 0 -> if_int
      | TYPE_double 0 -> if_double
      | _ -> raise (Failure "This should not happen!"))


let match_ar_or_ptr ~expr ~(if_int: 'a lazy_t) ~if_double ~if_pointer =
  force (match lookup_type_of_expr expr with
      | TYPE_int 0 -> if_int
      | n when is_pointer n -> if_pointer
      | TYPE_double 0 -> if_double
      | _ -> raise (Failure "This should not happen!"))

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

let rec output_condition pr =
  if is_condition pr then pr
  else
    begin
      let npr = newProp () in
      npr.trues <- [nextQuad ()];
      addQuad(genQuad Op_ifb pr.place Empty Star);
      npr.falses <- [nextQuad ()];
      addQuad(genQuad Op_jump Empty Empty Star);
      npr
    end

let rec output_expression pr =
  if not (is_condition pr) then pr
  else
    begin
      let npr = newProp () in
      let w = Temp(newTemp()) in
      backpatch pr.next (nextQuad());
      backpatch pr.trues (nextQuad());
      addQuad(genQuad Op_assign (Bool true) Empty w);
      npr.next <-[nextQuad ()];
      addQuad(genQuad Op_jump Empty Empty Star);
      backpatch pr.falses (nextQuad());
      addQuad(genQuad Op_assign (Bool false) Empty w);
      npr.place <- w;
      npr
    end

and closequad prop =
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
    let fun_id = id_make x in
    Printf.printf "%d\n" (List.length (lookup_pass_styles fun_id));
    let _ =  l >>| (List.iter2_exn (lookup_pass_styles fun_id) ~f:(fun style par ->
        let pprop = genquads_expr par in
        addQuad (genQuad Op_par pprop.place (pass_of_style style)  Empty);
      ))
    in (* TODO Pass return value *)
    (match lookup_result_type fun_id with
     | TYPE_void -> ()
     | _ -> let w = Temp (newTemp()) in
       addQuad(genQuad Op_par w (PassType RET) Empty);
       prop.place <- w);
    addQuad(genQuad Op_call Empty Empty (UnitName x));
    prop;
  | E_id str -> prop.place <- Var str;  prop
  | E_int n  -> prop.place <- Int (int_of_string n); prop
  | E_bool n ->
     prop.place <- Bool n;
     prop
  | E_char n   -> prop.place <- Char n; prop
  | E_double n -> prop.place <- Double (Float.of_string n); prop
  | E_string s -> prop.place <- String s; prop
  | E_null     -> prop.place <- Int 0; prop (* TODO: Is this the best idea? Null as a zero integer? *)
  | E_plus (x,y)  ->
    let e1prop = genquads_expr x
    and e2prop = genquads_expr y
    and w = Temp (newTemp ()) in
    let q = match_ar_or_ptr ~expr:x
        ~if_int:(lazy (genQuad Op_plus e1prop.place e2prop.place w))
        ~if_pointer:(lazy (genQuad Op_array e1prop.place e2prop.place w))
        ~if_double:(lazy (genQuad Op_plus e1prop.place e2prop.place w))
    in
    addQuad q;
    prop.place <- w;
    prop
  | E_minus (x,y) ->
    let e1prop = genquads_expr x
    and e2prop = genquads_expr y
    and w = Temp (newTemp ()) in
    let q = match_ar_or_ptr ~expr:x
            ~if_int:(lazy (genQuad Op_minus e1prop.place e2prop.place w))
        ~if_pointer:(lazy (genQuad Op_array e1prop.place e2prop.place w)) (* TODO MINUS! FIX!*)
         ~if_double:(lazy (genQuad Op_minus e1prop.place e2prop.place w))
    in
    addQuad q;
    prop.place <- w;
    prop
  | E_div (x,y)   -> bin_op_helper x y Op_div
  | E_mult (x,y)  -> bin_op_helper x y Op_mult
  | E_mod (x,y)   -> bin_op_helper x y Op_mod
  (* (* Logical Operator*) *)
  | E_and (x,y) ->
    let e1prop = genquads_expr x |> output_condition in
    backpatch e1prop.trues (nextQuad ());
    let e2prop = genquads_expr y |> output_condition in
    prop.falses <- e1prop.falses @ e2prop.falses;
    prop.trues  <- e2prop.trues;
    prop
  | E_or (x,y) ->
    let e1prop = genquads_expr x |> output_condition in
    backpatch e1prop.falses (nextQuad ());
    let e2prop = genquads_expr y |> output_condition in
    prop.trues  <- e2prop.trues @ e1prop.trues;
    prop.falses <- e2prop.falses;
    prop
  | E_lteq (x,y)  -> genquads_expr (E_negate (E_gt (x,y)))  (* Making these OPs Syntactic sugar *)
  | E_gteq (x,y) ->  genquads_expr (E_negate (E_lt (x,y)))  (* For Previously Defined relops   *)
  | E_eq (x,y) -> logical_op_helper x y Op_eq
  | E_lt (x,y) -> logical_op_helper x y Op_lt
  | E_gt (x,y) -> logical_op_helper x y Op_gt
  | E_neq (x,y) -> genquads_expr (E_negate (E_eq(x,y)))   (* Syntactic Sugar of !(x==y) *)
  | E_comma (x,y) ->
    let _  = genquads_expr x in
    let yprop = genquads_expr y in
    prop.place <- yprop.place;
    prop
  | E_assign (x,y) ->
    let yprop = genquads_expr y |> output_expression in
    closequad yprop;
    (* backpatch yprop.next (nextQuad ()); *)
    let xprop = genquads_expr x in
    addQuad(genQuad Op_assign yprop.place Empty xprop.place ); 
    prop.place <- xprop.place; (* TODO Test this againt yprop.place *)
    prop
    (* if not (is_condition yprop) then *)
    (*   begin *)
    (*     printf "hi from expr\n"; *)
    (*     addQuad(genQuad Op_assign yprop.place Empty xprop.place ) *)
    (*   end *)
    (* else( *)
    (*   printf "hi from cond\n"; *)
    (*   let nprop = conv_cond_to_expr yprop in *)
    (*   backpatch nprop.next (nextQuad ()); *)
    (*   addQuad(genQuad Op_assign nprop.place Empty xprop.place ); *)
    (* ); *)
  | E_mul_assign (x,y) ->  (* This can't be syntactic sugar of E_assign since we will evaluate x only once *)
    let yprop = genquads_expr y in
    let xprop = genquads_expr x in
    addQuad(genQuad Op_mult xprop.place yprop.place xprop.place);
    prop.place <- xprop.place;
    prop
  | E_div_assign (x,y) ->
    let yprop = genquads_expr y in
    let xprop = genquads_expr x in
    addQuad(genQuad Op_div xprop.place yprop.place xprop.place);
    prop.place <- xprop.place;
    prop
  | E_mod_assign (x,y) ->
    let yprop = genquads_expr y in
    let xprop = genquads_expr x in
    addQuad(genQuad Op_mod xprop.place yprop.place xprop.place);
    prop.place <- xprop.place;
    prop
  | E_plu_assign (x,y) ->
    genquads_expr (E_assign (x, E_plus (x,y)))
  | E_min_assign (x,y) ->
    genquads_expr (E_assign (x, E_minus (x,y)))
  | E_negate x ->
    let rprop = genquads_expr x |> output_condition in
    prop.trues <- rprop.falses;
    prop.falses <- rprop.trues;
    prop
  | E_uplus x ->
    genquads_expr x
  (* Make the following, syntactic sugar for (0-item) *)
  | E_uminus x ->
    let rs = match_ar ~expr:x
        ~if_int:(lazy (E_int "0"))
        ~if_double:(lazy (E_double "0.0"))
    in genquads_expr (E_minus (rs,x))
  | E_addr x ->
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
  | E_incr_bef x ->
    let expand_as_sum one_of_type =
      E_plu_assign (x,one_of_type)
    in let rs = match_ar_or_ptr ~expr:x
           ~if_int:(lazy (E_int "1"))
           ~if_pointer:(lazy (E_int "1"))
           ~if_double:(lazy (E_double "1.0"))
    in genquads_expr (expand_as_sum rs)
  | E_incr_aft x ->
    let ww    = Temp(newTemp ()) in
    let rprop = genquads_expr x in
    addQuad (genQuad Op_assign rprop.place Empty ww);
    let rs = match_ar_or_ptr ~expr:x
        ~if_int:(lazy (E_int "1"))
        ~if_pointer:(lazy (E_int "1"))
        ~if_double:(lazy (E_double "1.0"))
    in
    let w = Temp(newTemp ()) in
    let _ = match_ar_or_ptr ~expr:x
        ~if_int:(lazy (addQuad(genQuad Op_plus  rprop.place (genquads_expr rs).place w)))
        ~if_pointer:(lazy (addQuad(genQuad Op_array rprop.place (genquads_expr rs).place w)))
        ~if_double:(lazy (addQuad(genQuad Op_plus   rprop.place (genquads_expr rs).place w)))
    in
    addQuad (genQuad Op_assign w Empty rprop.place);
    prop.place <- ww;
    prop
  (* | E_decr_bef x -> (ignore (eval_expr x); TYPE_int 0) *)
  (* | E_decr_aft x -> (ignore (eval_expr x); TYPE_int 0) (\*we need an lvalue check function*\) *)
  | E_array_access (x,y) ->  (* TODO FIX *)
    let aprop = genquads_expr x in
    let iprop = genquads_expr y in
    let w = Temp (newTemp ()) in  (* Generate Temporary just before use for better ordering*)
    addQuad(genQuad Op_array aprop.place iprop.place w);
    prop.place <- Deref (w); (* The result should be the deref of this *)
    prop
  | E_delete x ->
    let rprop = genquads_expr x in
    let w = Temp (newTemp ()) in
    addQuad(genQuad Op_free rprop.place Empty w);
    prop.place <- w; (* The result should be the deref of this *)
    prop
  | E_new (x, None) ->
    let bytes = sizeOfType (map_to_symbol_table_type x) in
    let w = Temp (newTemp()) in
    addQuad(genQuad Op_malloc (Int bytes) Empty w);
    prop.place <- w;
    prop
  | E_new (x, Some y) ->
    let bytes = sizeOfType (map_to_symbol_table_type x) in
    let w = Temp (newTemp()) in
    let total_bytes_prop    = genquads_expr (E_mult (E_int (string_of_int bytes),y)) in
    addQuad(genQuad Op_malloc total_bytes_prop.place Empty w);
    prop.place <- w;
    prop
  (* | E_cast (x, y) -> TODO Check this again when we know more about code-generation *)
  | E_ternary_op (con, tr_expr, fal_expr) ->
    let cprop = genquads_expr con |> output_condition in
    backpatch cprop.trues (nextQuad ());
    let w = Temp (newTemp ()) in
    let tprop = genquads_expr tr_expr in
    addQuad (genQuad Op_assign tprop.place Empty w);
    let l1    = [nextQuad ()] in
    addQuad(genQuad Op_jump Empty Empty Star);
    backpatch cprop.falses (nextQuad ());
    let fprop = genquads_expr fal_expr in
    addQuad (genQuad Op_assign fprop.place Empty w);
    prop.trues  <- tprop.trues @ fprop.trues;
    prop.falses <- tprop.falses @ fprop.falses;
    prop.next   <- l1 @ fprop.next  @ tprop.next;
    prop.place <- w;
    prop
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
    let cprop = genquads_expr cond |> output_condition in
    backpatch cprop.trues (nextQuad ());
    let sprop = genquads_stmt ifstmt in
    prop.next <- cprop.falses @ sprop.next;
    prop
  | S_if (cond, ifstmt, Some elstmt) ->
    let cprop = genquads_expr cond |> output_condition in
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
    let guardprop  = expr2 >>| genquads_expr >>| output_condition in
    (match guardprop with
     | Some grop -> backpatch grop.trues (nextQuad ())
     | None -> ());
    let stmts_prop     = genquads_stmt stmt  in
    backpatch stmts_prop.next (nextQuad ()); (* TODO do tests to check this, vs closeQuad *)
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
