let main =
    let lexbuf = Lexing.from_channel stdin in
    try
        Parser.program Lexer.lexer lexbuf;
        exit 0
    with Parsing.Parse_error ->
        Printf.eprintf "Syntax error\n";
        exit 1

(* 
let main =
let lexbuf = Lexing.from_channel stdin in
let rec loop () =
    let token = lexer lexbuf in
    if token <> DISCARD then 
        Printf.printf "token=%s, lexeme=\"%s\"\n" (string_of_token token) (Lexing.lexeme lexbuf);
    if token <> T_eof then loop () in
loop ()
*)
