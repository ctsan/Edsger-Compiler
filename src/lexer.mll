(* 
http://caml.inria.fr/pub/docs/manual-ocaml-4.00/manual026.html 
*)

{ 
open Parser        (* The type token is defined in parser.mli *)
exception Eof
}
let whitespaces = [' ''\t']

rule token = parse
			[' ' '\t']     { token lexbuf }    
		  | ['\n' ]        { EOL }
		  | ['0'-'9']+ as lxm { INT(int_of_string lxm) }
		  | '+'            { PLUS }
		  | '-'            { MINUS }
		  | '*'            { TIMES }
		  | '/'            { DIV }
		  | '('            { LPAREN }
		  | ')'            { RPAREN }
		  | eof            { raise Eof }
