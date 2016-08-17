open Ast
exception Terminate of string

type typ = TYPE_none
         | TYPE_int of int
         | TYPE_char of int
         | TYPE_bool of int
         | TYPE_double of int
         | TYPE_array of
             typ * int
         | TYPE_void
         | TYPE_null


val ptrBytes      : int
val intBytes      : int
val boolBytes     : int
val charBytes     : int
val doubleBytes   : int

val sizeOfType : typ -> int
val equalType : typ -> typ -> bool
val map_to_symbol_table_type :  ast_type ->typ
val is_pointer :  typ ->bool
val addr_of_point : typ -> typ 
val deref_expr: typ ->  typ


val register_n_return_expr : expr:ast_expr -> result:typ -> typ
val lookup_type_of_expr    : ast_expr -> typ

val arithmetic_type      : typ -> bool
val integer_type         : typ -> bool
val ptr_arithmetic_type  : typ ->typ -> bool
val eq_arithmetic_type   : typ -> typ-> bool
val valid_pm_operands    : typ -> typ -> bool
