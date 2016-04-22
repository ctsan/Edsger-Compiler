let main =
    let lexbuf = Lexing.from_channel stdin in
    try
        Parser.program Lexer.lexer lexbuf; 
        (* Parser.program is defined in Parser.mly as %start program*)
        (* And is also exposed in .mli file *)
        exit 0
    with 
		| Parsing.Parse_error ->
			Printf.eprintf "Syntax error\n";
			exit 1
		| Parser.Error ->
			Printf.eprintf "Not Good :( \n";
