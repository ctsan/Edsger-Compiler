val lexer : Lexing.lexbuf -> Parser.token
exception Unexpected_character of char*int
