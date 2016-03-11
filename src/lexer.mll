{
open Parser      
exception Eof
}
let whitesp = [' ' '\t']
rule token = parse
			whitesp           { token lexbuf }
		  | ['\n' ]           { EOL }
		  | ['0'-'9']+ as lxm { INT(int_of_string lxm) }
		  | '+'               { PLUS }
		  | '-'               { MINUS }
		  | '*'               { TIMES }
		  | '/'               { DIV }
		  | '('               { LPAREN }
		  | ')'               { RPAREN }
		  | eof               { raise Eof }
