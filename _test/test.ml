(* http://ounit.forge.ocamlcore.org/api-ounit/ *)
open OUnit2;;

let test1 test_ctxt = Compiler.main (open_in "_test/input/parser2.txt")

(* First List of Tests *)
let suite = 
    "suite">:::
    ["test1">:: test1]
;;

let () =
    run_test_tt_main suite;;
