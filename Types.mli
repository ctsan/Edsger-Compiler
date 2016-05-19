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


val sizeOfType : typ -> int
val equalType : typ -> typ -> bool
val map_to_symbol_table_type :  ast_type ->typ
val is_pointer :  typ ->bool
val addr_of_point : typ -> typ 
val deref_expr: typ ->  typ 
