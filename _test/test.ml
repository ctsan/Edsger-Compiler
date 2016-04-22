(* http://ounit.forge.ocamlcore.org/api-ounit/ *)
open OUnit2;;

let suite = 
    "suite">:::
        ["test1">:: test1;
         "test2"> test2]
;;

let () =
    run_test_tt_main suite
