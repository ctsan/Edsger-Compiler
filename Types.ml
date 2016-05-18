(* Modified from Papaspyrou Code *)
type typ = TYPE_none
         | TYPE_int of int
         | TYPE_char of int
         | TYPE_bool of int
         | TYPE_double of int
         | TYPE_array of
             typ * int
         | TYPE_proc
         | TYPE_null

let rec sizeOfType t =
   match t with
	(*-- Primitive Type Sizes  --*)
   | TYPE_int n when n=0	 -> 2
   | TYPE_char n when n=0    -> 1
   | TYPE_bool n when n=0    -> 1
   | TYPE_double n when n=0  -> 10
	(*-- Pointers Cost 2 Bytes --*)
   | TYPE_int _ | TYPE_char _ | TYPE_bool _ | TYPE_double _ -> 2
	(*-- Arrays Cost According to their size --*)
   | TYPE_array (et, sz) 	-> sz * sizeOfType et
   | _						 -> 0

let rec equalType t1 t2 =
   match t1, t2 with
   | TYPE_array (et1, sz1), TYPE_array (et2, sz2) -> equalType et1 et2
   | et1, TYPE_null when et1 <> TYPE_null         -> equalType t2 t1
   | TYPE_null, TYPE_null                         -> true
   | TYPE_null, TYPE_int n when n > 0             -> true
   | TYPE_null, TYPE_bool n when n > 0            -> true
   | TYPE_null, TYPE_char n when n > 0            -> true
   | TYPE_null, TYPE_double n when n > 0          -> true
   | _                                            -> t1 = t2
