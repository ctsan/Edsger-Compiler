(* let vars = Array.create 26 0 *)

(* The First Bool Expresses whether the parameter is byref or not *)
type ast_param = 
    | P_int  of bool * string
    | P_char of bool * string
    | P_bool of bool * string
    | P_double of bool * string

and ast_decl = 
    (* first int expresses number of asterisks (from 0 to N>0) *)
    | D_var_int    of int * (string * ast_expr option ) list
    | D_var_char   of int * (string * ast_expr option ) list
    | D_var_double of int * (string * ast_expr option ) list
    | D_var_bool   of int * (string * ast_expr option ) list

    | D_func_decl_int    of int * string * ast_param list
    | D_func_decl_char   of int * string * ast_param list
    | D_func_decl_bool   of int * string * ast_param list
    | D_func_decl_double of int * string * ast_param list

    | D_func_def_int    of int * string * ast_param list * ast_decl list * ast_stmt list
    | D_func_def_char   of int * string * ast_param list * ast_decl list * ast_stmt list
    | D_func_def_bool   of int * string * ast_param list * ast_decl list * ast_stmt list
    | D_func_def_double of int * string * ast_param list * ast_decl list * ast_stmt list

and ast_stmt = 
    | S_None (* if empty statement *)
    | S_expr     of ast_expr
    | S_braces   of ast_stmt list
    | S_if       of ast_expr * ast_stmt * ast_stmt option
    | S_for      of string option * ast_expr option * ast_expr option * ast_expr option * ast_stmt
    | S_continue of string option
    | S_break    of string option
    | S_return   of ast_expr option

(**** Design-Choices >  
 * Edsger int  -> OCaml int   (even though in OCaml its 32/64bit, use that for temp-store)
 * E.bool -> OC.char  (since it is 8bits)
 * E.double -> OC.string (since it is 10bytes) ****)

and ast_expr = 
    | E_int    of int
    | E_bool   of char
    | E_char   of char
    | E_double of string
    | E_plus  of ast_expr * ast_expr
    | E_minus of ast_expr * ast_expr
    | E_div   of ast_expr * ast_expr
    | E_mult of ast_expr * ast_expr
    | E_mod of ast_expr * ast_expr
    | E_and of ast_expr * ast_expr
    | E_or of ast_expr * ast_expr
    | E_negate of ast_expr
    | E_incr_bef of ast_expr (* difference of ++x, x++ * (???) *)
    | E_decr_bef of ast_expr
    | E_incr_aft of ast_expr
    | E_decr_aft of ast_expr
    | E_lteq of ast_expr * ast_expr
    | E_gteq of ast_expr * ast_expr
    | E_lt of ast_expr * ast_expr
    | E_gt of ast_expr * ast_expr
    | E_neq of ast_expr * ast_expr
    | E_eq of ast_expr * ast_expr
    | E_comma of ast_expr * ast_expr
    (* TODO More Here (or not) *)
;;

let ast_tree:ast_decl list option ref = ref None
