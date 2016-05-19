(********************************************)
(* Use This Function To grab the next token *)
(********************************************)

val lexer : Lexing.lexbuf -> Parser.token

(****************************************************************)
(* This Exception is thrown whenever we can't make sense of the *)
(* incoming characters.                                         *)
(****************************************************************)

exception Unexpected_character of char*int
