(* Colored Printing Functions *)
(******************************) 

type color = 
    | Normal 
    | Green
    | Red;;

(******************************
##| 
##|  If you want to add additional colors, please adjust 'type color'
##|  and add the corresponding code in the following function. More:
##|  https://en.wikipedia.org/wiki/ANSI_escape_code 
##| 
*******************************)

let colortxt = function
    | Normal -> "\x1B[0m" 
    | Green  -> "\x1B[31m"
    | Red    -> "\x1B[31m";;


(* These Functions Print on Standard Error *)

let eprintf_color color = 
    prerr_string @@ colortxt Red;
    Printf.eprintf;;

let eclear () = prerr_string @@ colortxt Normal
