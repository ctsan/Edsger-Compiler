type typ = TYPE_none
         | TYPE_int of int
         | TYPE_char of int
         | TYPE_bool of int
         | TYPE_double of int
         | TYPE_array of
             typ * int
         | TYPE_proc

val sizeOfType : typ -> int
val equalType : typ -> typ -> bool
