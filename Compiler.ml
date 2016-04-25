let main =
    let file_channel = open_in Sys.argv.(1) in
    let lexbuf = Lexing.from_channel file_channel in
    try
        Parser.program Lexer.lexer lexbuf; 
        exit 0
    with 
		| Parsing.Parse_error ->
			Printf.eprintf "\x1B[31mSyntax Error :( \n\x1B[0m";
			exit 2
		| Parser.Error ->
			Printf.eprintf "\x1B[31mSyntax Error :( \n\x1B[0m";
			exit 2
        | Lexer.Unexpected_character (chr,pos) ->
            Printf.eprintf 
                "\x1B[31mUnexpected Character '%c' (ascii: %d) was found at offset %d. Aborting.. \x1B[0m \n "
                chr (Char.code chr) (pos);
            exit 1

(* Lexing.from_channel: in_channel -> lexbuf *) 
