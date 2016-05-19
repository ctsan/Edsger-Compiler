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
  let pretty_pointer n = 
	let rec aux str = function
	| 0 -> str
	| n -> aux (str ^ "*") (n-1)
	in aux "" n
  in
  match typ with
  | TYPE_none ->
      fprintf ppf "<undefined>"
  | TYPE_int n ->
      fprintf ppf "int %s" (pretty_pointer n)
  | TYPE_char n->
      fprintf ppf "char %s" (pretty_pointer n)
  | TYPE_bool n->
      fprintf ppf "bool %s" (pretty_pointer n)
  | TYPE_double n ->
      fprintf ppf "double %s"  (pretty_pointer n)
  | TYPE_array (et, sz) ->
      pretty_typ ppf et;
      if sz > 0 then
        fprintf ppf " [%d]" sz
      else
        fprintf ppf " []"
  | TYPE_void ->
      fprintf ppf "proc"
  | TYPE_null ->
      fprintf ppf "null pointer"

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
    if scp.sco_nesting = 0 then 
      fprintf ppf "no scope\n"
    else
      walk ppf scp in
  printf "%a----------------------------------------\n"
    scope !currentScope

(* +------------------------------------------------------------------------------+ *)
(* | Assertion of Return Types Through Lookup Tables                              | *)
(* +------------------------------------------------------------------------------+ *)

let map_to_symbol_table_type = function
	| Ty_int n -> TYPE_int n
	| Ty_char n -> TYPE_char n
	| Ty_bool n -> TYPE_bool n
	| Ty_double n -> TYPE_double n
	| _ -> raise (Terminate "Bad Type")

let lookup_type str = 
	let i1 = lookupEntry (id_make str) LOOKUP_ALL_SCOPES true in
    match i1.entry_info with 
        | ENTRY_function inf  -> inf.function_result
        | ENTRY_variable inf  -> inf.variable_type
        | ENTRY_parameter inf -> inf.parameter_type
        | ENTRY_temporary inf -> inf.temporary_type
        | _ -> raise (Terminate "Bad lookup") 

let rec addr_of_point = function
    | TYPE_int x        -> TYPE_int (x+1)
    | TYPE_char x       -> TYPE_char (x+1)
    | TYPE_bool x       -> TYPE_bool (x+1)
    | TYPE_double x     -> TYPE_double (x+1)
    | TYPE_array (x,y)  -> TYPE_array (addr_of_point x,y) (* ??? *)
    | TYPE_null         -> TYPE_null
    | _                 -> raise (Terminate "bad addr type")

let rec deref_expr = function
    | TYPE_int x when x>0           -> TYPE_int (x-1)
    | TYPE_char x when x>0          -> TYPE_char (x-1)
    | TYPE_bool x when x>0          -> TYPE_bool (x-1)
    | TYPE_double x when x>0        -> TYPE_double (x-1)
    | TYPE_array (x,y)              -> TYPE_array (deref_expr x,y)
    | _                             -> raise (Terminate "deref non-pointer")


(* TODO: needs refinement, for now check if int *)
let rec eval_const_int = function
	| E_int x -> int_of_string x 
	(*TODO:Tranform the parsing of int to Edsger Specific *)
	| E_plus (x,y) ->((eval_const_int x)+(eval_const_int y))
	| E_minus (x,y) -> ((eval_const_int x)-(eval_const_int y))
	| E_div (x,y)  -> ((eval_const_int x)/(eval_const_int y))
	| E_mult (x,y) ->((eval_const_int x)*(eval_const_int y))
	| E_mod (x,y) -> ((eval_const_int x)mod(eval_const_int y)) 
	| _ -> raise (Terminate "Not Constant Int Expression")

let rec eval_expr = function
    | E_function_call (x,l) -> lookup_type x
    | E_id str -> printf "will lookup for %s\n" str;lookup_type str
    | E_int _ -> TYPE_int 0
    | E_bool _ -> TYPE_bool 0
    | E_char _ -> TYPE_char 0
    | E_double _ -> TYPE_double 0
    | E_string x -> TYPE_array (TYPE_char 0, String.length x)
    | E_null -> TYPE_null 
    | E_plus (x,y) -> check_eval_ar_op (x,y)
    | E_minus (x,y) -> check_eval_ar_op (x,y)
    | E_div (x,y) -> check_eval_ar_op (x,y)
    | E_mult (x,y) -> check_eval_ar_op (x,y)
    | E_mod (x,y) -> check_eval_ar_op (x,y)
	(* Logical Operator*)
    | E_and (x,y) | E_or (x,y) -> 
		if (not (check_binary_logical_operator x y))
			then raise (Terminate "operands of and/or should be booleans\n")
			else TYPE_bool 0
	| E_lteq (x,y) | E_gteq (x,y) | E_lt  (x,y) | E_gt  (x,y) 
	| E_neq (x,y) | E_eq  (x,y) -> 
		check_eval_ar_op (x,y); TYPE_bool 0
    | E_comma (_,y) -> eval_expr y
    | E_assign (_,y) -> eval_expr y
    | E_mul_assign (_,y) -> eval_expr y (*o elegxos gia lvalues staristera pou? *)
    | E_div_assign (_,y) -> eval_expr y
    | E_mod_assign (_,_) -> TYPE_int 0
    | E_plu_assign (_,y) -> eval_expr y
    | E_min_assign (_,y) -> eval_expr y
    | E_negate _ -> TYPE_bool 0
    | E_uplus x -> eval_expr x
    | E_uminus x -> eval_expr x
    | E_addr x ->  addr_of_point (eval_expr x)
    | E_deref x -> deref_expr (eval_expr x)
    | E_incr_bef x -> TYPE_int 0
    | E_decr_bef x -> TYPE_int 0
    | E_incr_aft x -> TYPE_int 0
    | E_decr_aft x -> TYPE_int 0
    | E_array_access (x,y) -> eval_expr x 
    | E_delete x -> eval_expr x
    | E_new (x, _) -> map_to_symbol_table_type x 
    | E_cast (x, _) -> map_to_symbol_table_type x 
    | E_ternary_op (_, _, z) -> eval_expr z 

and check_eval_ar_op = function
    | (x,y) ->
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
	endFunctionHeader brand_new_fun symtbl_ret_type;;

let rec check ast =
	match ast with
	| None      -> raise (Terminate "AST is empty")
	| Some tree -> (
		initSymbolTable 256;
		openScope();
		check_all_decls tree;
		printSymbolTable())

and check_all_decls decls =
	List.iter decls check_a_declaration 

and check_a_declaration  = 
	(function
    (***********************************************)
    (*** VARIABLES DECLARATION                   ***)
    (***********************************************)

	| D_var_decl (typ,defines) -> 
		let sym_tbl_type = map_to_symbol_table_type typ in
		let _ = printf "- var definition\n" in 
		List.iter 
			defines (* Check and Register Definitions*) 
			(function 
			| (id,Some expr) -> 
				let dmy = 
					newVariable (id_make id)
						(TYPE_array (sym_tbl_type,eval_const_int expr))
						true 
				in ignore dmy; ()
			| (id,None) -> 
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
			def_func_head typ id params ~forward:true;
			closeScope ();
		end
    (***********************************************)
    (*** FUNCTION DEFINITION                     ***)
    (***********************************************)

	| D_func_def (typ,id,params,fun_decls,fun_stmts) -> 	
		begin
			printf "- fun def %s\n" id;
			def_func_head typ id params ~forward:false;
			(match fun_decls with
				| Some declerations -> check_all_decls declerations
				| None -> ()
			);
			List.iter fun_stmts check_a_statement;
			closeScope ();
		end);


and check_a_statement = (function 
	| S_None -> ()
	| S_expr expr -> let _ = eval_expr expr in ()
	| S_braces many_stmts -> 
		begin 
			printf "New block\n";
			(* openScope(); This Is probably not necessery *)
			List.iter many_stmts check_a_statement
			(* closeScope()  *)
		end
	| S_if (bool_expr,if_stmt,el_stmt) ->
		begin
			printf "new if statement\n"; 
			if (equalType (eval_expr bool_expr) (TYPE_bool 0)) then
				(check_a_statement if_stmt;	
				(match el_stmt with
				 | Some e -> printf "else stmt\n"; check_a_statement e
				 | None -> ()))
			else raise (Terminate "if statement lacks boolean check")
		end
	| S_for (label,expr1,expr2,expr3,stmt) ->
		begin 
			printf "new for statement\n";

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
			let _ = for_exps expr3 in ();
			check_a_statement stmt;
			(* disable label acceptance *)
			(match label with
			| Some l -> endLabelScope labl
			| None -> ());
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
			end
		end
	| S_return r -> 
			()
			(* match r with *)
			(* | Some expr -> *)
			(* 	if ( not equalType (eval_expr expr) () ) raise (Terminate "return type is not correct") *)
			(* | None -> *) 
			(* 	if ( not equalType (eval_expr expr) TYPE_void ) raise (Terminate "return type is not correct") *)
	)	

	
(****************************)
(* and check_program decls = *)
(* 	initSymbolTable 256; *)
(* 	printSymbolTable (); *)
(* 	openScope(); *)
(* 	printSymbolTable (); *)
(* 	let i2 = newVariable (id_make "i2") TYPE_int true in *)
(* 	ignore i1; ignore i2; *)
(* 	printSymbolTable (); *)
(* 	let p = newFunction (id_make "pr") true in *)
(* 	openScope (); *)
(* 	printSymbolTable (); *)
(* 	let p1 = newParameter (id_make "p1") TYPE_int  PASS_BY_VALUE p true in *)
(* 	let p2 = newParameter (id_make "p2") TYPE_int  PASS_BY_VALUE p true in *)
(* 	let p3 = newParameter (id_make "p3") TYPE_char PASS_BY_REFERENCE p true in *)
(* 	endFunctionHeader p TYPE_proc; *)
(* 	ignore p1; ignore p2; ignore p3; *)
(* 	printSymbolTable (); *)
(* 	let b1 = newVariable (id_make "b1") TYPE_bool true in *)
(* 	ignore b1; *)
(* 	let i1 = newVariable (id_make "i1") TYPE_int true in *)
(* 	ignore i1; *)
(* 	printSymbolTable (); *)
(* 	let i2 = lookupEntry (id_make "i2") LOOKUP_ALL_SCOPES true in *)
(* 	let i1 = lookupEntry (id_make "i1") LOOKUP_ALL_SCOPES true in *)
(* 	ignore i2; ignore i1; *)
(* 	let t1 = newTemporary TYPE_int in *)
(* 	let t2 = newTemporary TYPE_char in *)
(* 	ignore t1; ignore t2; *)
(* 	printSymbolTable (); *)
(* 	closeScope (); *)
(* 	printSymbolTable (); *)
(* 	let p = newFunction (id_make "f") true in *)
(* 	openScope (); *)
(* 	printSymbolTable (); *)
(* 	let x = newParameter (id_make "x") TYPE_int PASS_BY_VALUE p true in *)
(* 	let y = newParameter (id_make "y") TYPE_char PASS_BY_REFERENCE p true in *)
(* 	endFunctionHeader p TYPE_int; *)
(* 	ignore x; ignore y; *)
(* 	printSymbolTable (); *)
(* 	closeScope (); *)
(* 	printSymbolTable (); *)
(* 	let t1 = newTemporary TYPE_int in *)
(* 	let t2 = newTemporary TYPE_int in *)
(* 	ignore t1; ignore t2; *)
(* 	printSymbolTable (); *)
(* 	closeScope (); *)
(* 	printSymbolTable () *)

