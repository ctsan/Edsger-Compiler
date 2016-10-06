open Core.Std
open Ast
open Format
open Identifier
open Types
open Symbol
open NiceDebug
open Intermediary


exception Terminate of string

type storage =
  | L_VALUE
  | R_VALUE

let asrt ~condition ~msg=
  if not condition then
    raise (Terminate msg)

let rec eval_const_int = function
  | E_int x       -> int_of_string x
  (* TODO Expand to support arbitrary float computations before a cast *)
  | E_cast (Ty_int 0,E_double x)   -> Int.of_float (Float.of_string x) (* TODO: Refactor *)
  | E_cast (Ty_int 0,E_char x)     -> int_of_char x                    (* TODO: Use edsger specific conversions *)
  | E_plus (x,y)  -> ((eval_const_int x)+(eval_const_int y))
  | E_minus (x,y) -> ((eval_const_int x)-(eval_const_int y))
  | E_div (x,y)   -> ((eval_const_int x)/(eval_const_int y))
  | E_mult (x,y)  -> ((eval_const_int x)*(eval_const_int y))
  | E_mod (x,y)   -> ((eval_const_int x)mod(eval_const_int y))
  | _ -> raise (Terminate "Not Constant Int Expression")

let is_valid_lvalue = function
  | E_id n           -> is_mutable (id_make n)
  | E_array_access _ -> true
  | E_deref _        -> true
  | _ -> false

let rec eval_expr expression =
  let result = match expression with
  | E_function_call (x,l) ->
    let param_types = id_make x |> lookup_pass_types in
    let res = l >>| List.iter2_exn param_types ~f:(fun fun_param call_param ->
        let call_param_res = eval_expr call_param in
        if not (equalType call_param_res fun_param) then
          raise (Terminate ("passing type does not agree with function type")) (* TODO Print Types *)
      ) in
    (* Check if applied with no arguments when arguments are required*)
    if res = None then asrt ~condition:(List.length param_types = 0) ~msg:"Function with 0 arguments";
    lookup_result_type (id_make x)
  | E_poly_type _ -> raise (Failure "This should not happen")
  | E_id str   -> lookup_result_type (id_make str)
  | E_int _    -> TYPE_int 0
  | E_bool _   -> TYPE_bool 0
  | E_char _   -> TYPE_char 0
  | E_double _ -> TYPE_double 0
  | E_string x -> TYPE_array (TYPE_char 0, 1+String.length x) (* NOTE: +1 for null check *)
  | E_null     -> TYPE_null
  | E_plus (x,y)  | E_minus(x,y) -> 
    asrt ~condition:(valid_pm_operands (eval_expr x) (eval_expr y))
    ~msg:"Operands of operator +/- have bad types!";
    (eval_expr x)
  | E_mult (x,y) | E_div (x,y)   ->
    asrt ~condition:(eq_arithmetic_type (eval_expr x) (eval_expr y))
    ~msg:"Operands of operator * or / have bad types!";
    (eval_expr x)
  | E_mod (x,y)   -> 
    asrt ~condition:(integer_type (eval_expr x) && integer_type (eval_expr y))
    ~msg:"Operands of operator mod not integers!";
    (eval_expr x)
  (*------------------ Logical Operator -----------------------------*)
  | E_and (x,y) | E_or (x,y) ->
    asrt ~condition:(check_binary_logical_operator x y) ~msg:"operands of and/or not boolean";
    TYPE_bool 0
  | E_lteq (x,y) | E_gteq (x,y) | E_lt  (x,y) | E_gt  (x,y)
  | E_neq (x,y) | E_eq  (x,y) ->
    let _ = check_eval_ar_op (x,y) in (); TYPE_bool 0 (* TODO: spec pg10, fix pointers *)
  | E_comma (x,y) -> (ignore (eval_expr x); eval_expr y)
  | E_assign (x,y) ->
    let lval = eval_expr x in
    let rval = eval_expr y in
    asrt ~condition:(is_valid_lvalue x)   ~msg:"This is not a valid l-value";
    asrt ~condition:(equalType rval lval) ~msg:"l-value different type from r-value";
    rval
  | E_mul_assign (x,y) -> eval_expr (E_assign (x, E_mult (x,y)))
  | E_div_assign (x,y) -> eval_expr (E_assign (x, E_div (x,y)))
  | E_mod_assign (x,y) -> eval_expr (E_assign (x, E_mod (x,y)))
  | E_plu_assign (x,y) -> eval_expr (E_assign (x, E_plus (x,y)))
  | E_min_assign (x,y) -> eval_expr (E_assign (x, E_minus (x,y)))
  | E_negate x -> (* BOOL -> BOOL *)
    let x_expr = eval_expr x  in
    asrt ~condition:(equalType x_expr (TYPE_bool 0)) ~msg:"Not Valid operand of unary operator";
    x_expr
  | E_uplus x | E_uminus x -> (* 'a ARITHMETIC -> 'a ARITHMETIC *)
    let x_expr = eval_expr x  in
    asrt ~condition:(arithmetic_type x_expr) ~msg:"Not Valid operand of unary operator";
    x_expr
  | E_addr x ->
    if (is_valid_lvalue x) then
      addr_of_point (eval_expr x) (* TODO assert Pointer is not NULL *)
    else
      raise (Terminate "operator '&' should have an l-value as operand")
  | E_deref x ->  
    deref_expr (eval_expr x) (* TODO Ask a teacher whether we should check if operand is l-value *)
  (* TODO check if operands are l-values and of Arithmetic Type or Poitner Type *)
  | E_incr_bef x | E_decr_bef x | E_incr_aft x | E_decr_aft x ->
    let x_expr = eval_expr x  in
    asrt ~condition:(arithmetic_type x_expr || is_pointer x_expr) ~msg: "operands of ++/-- operator are not suitable";
    x_expr
  | E_array_access (x,y) ->
    asrt ~condition:(equalType (eval_expr y) (TYPE_int 0)) ~msg:"Array index not int";
    deref_expr (eval_expr x);
  | E_delete x ->
    asrt ~condition:(is_pointer (eval_expr x)) ~msg:"can't delete something that isn't a pointer";
    TYPE_null
  | E_new (x, None) ->
    addr_of_point (map_to_symbol_table_type x)
  | E_new (x, Some y) ->
    asrt ~condition:(eval_expr y |> integer_type) ~msg:"Non-int size of dynamic allocation";
    addr_of_point (map_to_symbol_table_type x)
  | E_cast (x, y) -> (ignore (eval_expr y); map_to_symbol_table_type x)
  | E_ternary_op (x, y, z) ->
      if (equalType (eval_expr x) (TYPE_bool 0))
      && (equalType (eval_expr y) (eval_expr z)) then
        eval_expr z
      else
        raise (Terminate "Wrong types ternary")
  in
  register_n_return_expr ~expr:expression ~result

and check_eval_ar_op (x,y) =
  let x_eval = eval_expr x in
  let y_eval = eval_expr y in
  if (x_eval) <> (y_eval) then
    raise (Terminate "Addition arguments don't match")
  else
    x_eval

and check_eval_of_type x y ~wanted_type =
  (let res1 = check_eval_ar_op (x,y) in
   equalType res1 wanted_type)

and check_binary_logical_operator x y =
  check_eval_of_type x y ~wanted_type:(TYPE_bool 0)

and check tree =
  (* ignore(ast >>| fun tree -> ( *)
      initSymbolTable 256;
      scan_funcs tree;
      openScope();
      check_all_decls tree;
      (* Check that main returns void and is implemented *)
      if (lookup_result_type (id_make "main_0") <> TYPE_void)
      then raise (Terminate "main should return void");
      if (not (fun_is_defined (id_make "main_0")))
      then raise (Terminate "main is not implemented");
      printSymbolTable ();
      (* let ins_list = list_of_quads () |> Codegen.quads_to_ins  in *)
  (* )) *)

and scan_funcs decls =
  List.iter decls (function 
    | D_func_def (_,id,_,_,_) -> (set_fun_globally_defined (id_make id))
    | _ -> ()
  )

and check_all_decls decls =
  List.iter decls check_a_declaration;

and check_a_declaration  =
  let def_func_head typ id params ~forward=
    let symtbl_ret_type = map_to_symbol_table_type typ in
    let brand_new_fun = newFunction (id_make id) true in
    openScope ();
    (match params with
     | Some param_list ->
       (List.iter param_list
          (function
            | P_byval (typ, id) -> let dmy = newParameter (id_make id) (map_to_symbol_table_type typ)  PASS_BY_VALUE brand_new_fun  true in ignore dmy;()
            | P_byref (typ, id) -> let dmy = newParameter (id_make id)  (map_to_symbol_table_type typ) PASS_BY_REFERENCE brand_new_fun  true  in ignore dmy; ()
          ))
     | None -> ());
    if forward then forwardFunction brand_new_fun;
    endFunctionHeader brand_new_fun symtbl_ret_type;
    brand_new_fun
  in
  (function
    (***********************************************)
    (*** VARIABLES DECLARATION                   ***)
    (***********************************************)

    | D_var_decl (typ,defines) ->
      let sym_tbl_type = map_to_symbol_table_type typ in
      let _ = printf "- var definition" in
      List.iter
        defines (* Check and Register Definitions*)
        (function
          | (id,Some expr) ->
            printf " %s\n" id;
            let dmy =
              newVariable (id_make id)
                (TYPE_array (sym_tbl_type,eval_const_int expr))
                true
            in ignore dmy; ()
          | (id,None) ->
            printf " %s\n" id;
            let dmy = newVariable (id_make id)
                sym_tbl_type true
            in ignore dmy; ()
        )

    (***********************************************)
    (*** FUNCTION DECLARATION                    ***)
    (***********************************************)

    | D_func_decl (typ,id,params) ->
      begin
        printf "- fun decl %s\n" id;
        ignore (def_func_head typ id params ~forward:true);
        closeScope ();
      end

    (***********************************************)
    (*** FUNCTION DEFINITION                     ***)
    (***********************************************)

    | D_func_def (typ,id,params,fun_decls,fun_stmts) ->
      begin
        printf "- fun def %s\n" id;
        let fun_entry = def_func_head typ id params ~forward:false in
        (match fun_decls with
         | Some declerations -> scan_funcs declerations; check_all_decls declerations
         | None -> ()
        );
        (* This Folding Returns whether return statement is guaranteed or not *)
        addQuad (genQuad Op_unit (UnitName (fun_entry)) Empty Empty); (* IR add Function Quad *)
        let guaranteed_return =
          List.fold fun_stmts ~init:false ~f:(check_a_statement (id_make id))
        in
        if (not guaranteed_return) && (not (equalType TYPE_void (lookup_result_type (id_make id)))) then
          raise (Terminate "return value is not guaranteed in a non-void function");
        let lst_prop = List.fold fun_stmts ~init:(newProp ()) ~f:(fun _ ast ->
            let prop = genquads_stmt ast in
            closequad prop; prop)
        in
        printSymbolTable ();
        closeFinalQuad lst_prop fun_entry;
        let ins_list = list_of_last_fun_quads () |> Codegen.quads_to_ins  in
        Codegen.add_list_of_ins ins_list;
        clearFunQuads ();
        closeScope ()
      end);


(* check_a_statement function takes three arguments *)
(* 1st: function in which this statement executes *)
(* 2nd: this argument states the current guarantee of return statement *)
(* 3rd: this argument is the statement for semantic analysis *)

and check_a_statement func_id status =
  (function
    | S_None -> status
    | S_expr expr -> let _ = eval_expr expr in status
    | S_braces many_stmts ->
      begin
        (* TODO: Double check that this is not necessery! *)
        (* openScope(); This Is probably not necessery *)
        List.fold many_stmts ~init:status ~f:(check_a_statement func_id)
        (* closeScope()  *)
      end
    | S_if (bool_expr,if_stmt,el_stmt) ->
      begin
        if (equalType (eval_expr bool_expr) (TYPE_bool 0)) then
          begin
            let return_status_of_if = check_a_statement func_id status if_stmt in
            let return_status_of_else =
              (match el_stmt with
               | Some e -> check_a_statement func_id status e
               | None -> false)
            in
            status || (return_status_of_else && return_status_of_if)
          end
        else raise (Terminate "if statement lacks boolean check")
      end
    | S_for (label,expr1,expr2,expr3,stmt) ->
      begin
        (* manage label existance *)
        let labl = (match label with
            | Some l -> (newLabel (id_make l) true)
            | None -> (let e =  no_entry (id_make "___trash") in e)) in
        let for_exps = (function
            | Some exp ->
              eval_expr exp
            | None -> TYPE_bool 0) in
        (* execute the analysis  of the first expression *)
        let _ = for_exps expr1 in ();
        (* do the same for the second, while checking for being boolean*)
        if not ( equalType (for_exps expr2) (TYPE_bool 0))then
          raise (Terminate "guard in for statement should be boolean or empty\n");
        (* third expression *)
        let _ = for_exps expr3 in
        let _ = check_a_statement func_id status stmt in
        (* disable label acceptance *)
        (match label with
         | Some l -> endLabelScope labl
         | None -> ());
        status
        (* Do not change return-existance status, since for loops may or may not*)
        (* execute *)
      end
    | S_continue label | S_break label ->
      begin
        let labl = (match label with
            | Some l -> l
            | None -> "") in
        if labl <> "" then begin
          let lbl_entry = lookupEntry (id_make labl) LOOKUP_CURRENT_SCOPE true in
          match lbl_entry.entry_info with
          | ENTRY_label v ->
            if (not !v) then raise (Terminate "This label does not correspond to a valid loop")
          | ENTRY_none ->
            ();
          | _ -> raise (Terminate "BAD ENTRY TYPE MISTER DEVELOPER")
        end;
        status
      end
    | S_return r ->
      (match r with
       | Some expr ->
         if not (equalType (eval_expr expr) (lookup_result_type func_id) ) then
           raise (Terminate "return type is not correct")
       | None ->
         if not (equalType TYPE_void (lookup_result_type func_id) ) then
           raise (Terminate "return type is not correct")
      );
      true (* found a RETURN ! so return true*)
  )
