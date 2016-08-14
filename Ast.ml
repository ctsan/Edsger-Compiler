(* Notes: voids can't be pointers. *)
type ast_type =
  | Ty_int    of int
  | Ty_char   of int
  | Ty_bool   of int
  | Ty_double of int
  | Ty_void

and ast_param =
  | P_byval of ast_type * string
  | P_byref of ast_type * string

and ast_decl =
  | D_var_decl  of ast_type * (string * ast_expr option ) list
  | D_func_decl of ast_type * string * ast_param list option
  | D_func_def  of ast_type * string * ast_param list option * ast_decl list option* ast_stmt list

and ast_stmt =
  | S_None (* if empty statement *)
  | S_expr     of ast_expr
  | S_braces   of ast_stmt list
  | S_if       of ast_expr * ast_stmt * ast_stmt option
  | S_for      of string option * ast_expr option * ast_expr option * ast_expr option * ast_stmt
  | S_continue of string option
  | S_break    of string option
  | S_return   of ast_expr option

and ast_expr =
  | E_id     of string
  | E_function_call of string * ast_expr list option
  (*-- Literals --*)
  | E_poly_type of float  (* if this appears in E_plus(`type`,E_poly_type) it has type `type` E {int,float} *)
  | E_int    of string
  | E_bool   of bool    (*  -> BOOL *)
  | E_char   of char
  | E_double of string
  | E_string of string
  | E_null
  (*-- Binary Operations --*)
  | E_plus  of ast_expr * ast_expr
  | E_minus of ast_expr * ast_expr
  | E_div   of ast_expr * ast_expr
  | E_mult  of ast_expr * ast_expr 
  | E_mod   of ast_expr * ast_expr (*  -> INT  *)
  | E_and   of ast_expr * ast_expr (*  -> BOOL *)
  | E_or    of ast_expr * ast_expr (*  -> BOOL *)
  | E_lteq of ast_expr * ast_expr  (*  -> BOOL *)
  | E_gteq of ast_expr * ast_expr  (*  -> BOOL *)
  | E_lt of ast_expr * ast_expr    (*  -> BOOL *)
  | E_gt of ast_expr * ast_expr    (*  -> BOOL *)
  | E_neq of ast_expr * ast_expr   (*  -> BOOL *)
  | E_eq of ast_expr * ast_expr    (*  -> BOOL *)
  | E_comma of ast_expr * ast_expr (* (X,Y) -> Y *)
  (*-- Binary Operations --*)
  | E_assign     of ast_expr * ast_expr
  | E_mul_assign of ast_expr * ast_expr
  | E_div_assign of ast_expr * ast_expr
  | E_mod_assign of ast_expr * ast_expr
  | E_plu_assign of ast_expr * ast_expr
  | E_min_assign of ast_expr * ast_expr
  (*-- Unary Operations --*)
  | E_negate of ast_expr (* ! *)
  | E_uplus of ast_expr (* + *)
  | E_uminus of ast_expr (* - *)
  | E_addr of ast_expr (* & *)
  | E_deref of ast_expr (* * *)
  (*-- Unary Asignments --*)
  | E_incr_bef of ast_expr (* ++x *)
  | E_decr_bef of ast_expr (* --x *)
  | E_incr_aft of ast_expr (* x++ *)
  | E_decr_aft of ast_expr (* --x *)
  (*-- Others --*)
  | E_array_access of ast_expr * ast_expr
  | E_delete of ast_expr
  | E_new of ast_type * ast_expr option
  | E_cast of ast_type * ast_expr
  | E_ternary_op of ast_expr * ast_expr * ast_expr
;;
