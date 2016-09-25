open Ast
exception Terminate of string

type typ =
	  TYPE_none
	| TYPE_int    of int
	| TYPE_char   of int
	| TYPE_bool   of int
	| TYPE_double of int
	| TYPE_array  of typ * int
	| TYPE_void
	| TYPE_null


let ptrBytes    = 8

let intBytes    = 2

let boolBytes   = 1

let charBytes   = 1

let doubleBytes = 10

let rec sizeOfType t =
   match t with
	(*-- Primitive Type Sizes  --*)
   | TYPE_int n when n=0	   -> intBytes
   | TYPE_char n when n=0    -> charBytes
   | TYPE_bool n when n=0    -> boolBytes
   | TYPE_double n when n=0  -> doubleBytes
	(*-- Pointers Cost 8 Bytes --*)
   | TYPE_int _ | TYPE_char _ | TYPE_bool _ | TYPE_double _ -> ptrBytes
	(*-- Arrays Cost According to their size --*)
   | TYPE_array (et, sz) 	-> sz * sizeOfType et
   | _						 -> 0

let is_pointer = function
    | TYPE_int    x when x>0        -> true
    | TYPE_char   x when x>0        -> true
    | TYPE_bool   x when x>0        -> true
    | TYPE_double x when x>0        -> true
    | TYPE_null                     -> true
    | TYPE_array (x,y)              -> true (* immutable pointer to type x, with size y *)
    | _                             -> false


let map_to_symbol_table_type = function
	| Ty_int n -> TYPE_int n
	| Ty_char n -> TYPE_char n
	| Ty_bool n -> TYPE_bool n
	| Ty_double n -> TYPE_double n
	| Ty_void -> TYPE_void
	(* | _ -> raise (Terminate "Bad Type") *)


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
    | what                             -> 
            (* NOTE: temporary of course *)
            (match what with
                | TYPE_int x           -> raise (Terminate ("TYPE_int " ^ (string_of_int x)))
                | TYPE_char x          -> raise (Terminate ("TYPE_char " ^ (string_of_int x)))
                | TYPE_bool x          -> raise (Terminate ("TYPE_bool " ^ (string_of_int x)))
                | TYPE_double x        -> raise (Terminate ("TYPE_double " ^ (string_of_int x)))
                | TYPE_array (x,y)              -> TYPE_array (deref_expr x,y)
	            | _ -> raise (Terminate "deref_expr wat")
)

let rec equalType t1 t2 =
   (let open Core.Std in
   match t1, t2 with
   (*-------------------- Manage Arrays ---------------------------*)
   | TYPE_array (et1, sz1), TYPE_array (et2, sz2) -> printf "c1\n";equalType et1 et2
   | _, TYPE_array _                              -> printf "c2\n";equalType t2 t1
   | TYPE_array (et1, sz1), t2                    -> equalType (addr_of_point et1) t2
   (*-------------------- Manage Nulls ----------------------------*)
   | t1, TYPE_null  when t1 <> TYPE_null          -> printf "c3\n";equalType t2 t1
   | TYPE_null, t2 when is_pointer t2             -> printf "c4\n";true
   | _                                            -> printf "c5\n";t1 = t2
   )

let arithmetic_type = function
  | TYPE_int 0 -> true
  | TYPE_double 0 -> true
  | _ -> false

let integer_type = function
  | TYPE_int 0 -> true
  | _ -> false

(* check if types: (t*,int) *)
let ptr_arithmetic_type ptr t =
  is_pointer ptr && integer_type t 

let eq_arithmetic_type t1 t2 =
  arithmetic_type t1 && equalType t1 t2

(* true if operands are valid for plus minus operators *)
let valid_pm_operands t1 t2 =
  ptr_arithmetic_type t1 t2 || eq_arithmetic_type t1 t2

module H_expr = Hashtbl.Make (
  struct
    type t = Ast.ast_expr
    let equal = (=)
    let hash = Hashtbl.hash
  end
)

(* Hashtbl ast_expr -> Types.typ *)
let expr_ht:(typ H_expr.t) = H_expr.create 1000

(** This Function Takes as input an expression and it's mapping, and results the mapping*)
let register_n_return_expr ~expr ~result =
  H_expr.add expr_ht expr result;
  result

(* This Function gets the result *)
let lookup_type_of_expr expr =
  H_expr.find expr_ht expr
