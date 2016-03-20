{
type token =
  | T_eof | T_int_const  | T_float_const | T_char_const
  | T_print | T_let | T_for | T_do | T_begin | T_end | T_if | T_then
  | T_assign | T_lparen | T_rparen | T_plus | T_minus | T_times
  | T_lteq | T_gteq | T_gt | T_lt | T_neq | T_eq
  | T_incr | T_dcr
  | T_lbrack | T_rbrack | T_semicolon
  | T_mod | T_div
  | T_string
  | T_int | T_float | T_char | T_bool
  | T_id
} 
let digit    = ['0'-'9']
let int_const   = digit+
let float_const   = digit* '.'? digit* ('e' ['+' '-'] digit+)?
let char_const   = 'a'
let letter   = ['A'-'Z''a'-'z']
let white    = [' ' '\t' '\r' '\n']
let special  = "\\n"

rule lexer = parse
    "print"  { T_print }
  | "let"    { T_let }
  | "for"    { T_for }
  | "do"     { T_do }
  | "begin"  { T_begin }
  | "end"    { T_end }
  | "if"     { T_if }
  | "then"   { T_then }

  | "int"    { T_int }
  | "float"  { T_float }
  | "bool"   { T_bool }
  | "char"   { T_char }

  | '"' ([^'"']|'\\' '"')* '"'  { T_string }

  | int_const  { T_int_const }
  | float_const  { T_float_const }
  | char_const    { T_char_const }

  | '='      { T_assign }
  | '('      { T_lparen }
  | ')'      { T_rparen }
  | '+'      { T_plus }
  | '-'      { T_minus }
  | '*'      { T_times }
  | '/'      { T_div }
  | '%'      { T_mod }

  | white+               { lexer lexbuf }
  | "'" [^ '\n']* "\n"   { lexer lexbuf }

  | ';'      { T_semicolon }
  | '<'      { T_lt        }
  | '>'      { T_gt        }
  | ">="     { T_gteq      }
  | "<="     { T_lteq      }
  | "!="     { T_neq       }
  | "=="     { T_eq       }
  | "++"     { T_incr      }
  | "--"     { T_dcr       }

  | '{'      { T_lbrack }
  | '}'      { T_rbrack }
  | letter (letter|digit|'_')*   { T_id }

  |  eof          { T_eof }
  |  _ as chr     { Printf.eprintf "invalid character: '%c' (ascii: %d)"
                      chr (Char.code chr);
                    lexer lexbuf }

{
  let string_of_token token =
    match token with
      | T_eof       -> "T_eof"
      | T_int_const     -> "T_int_const"
      | T_float_const     -> "T_float_const"
      | T_char_const     -> "T_char_const"
      | T_print     -> "T_print"
      | T_let       -> "T_let"
      | T_for       -> "T_for"
      | T_do        -> "T_do"
      | T_begin     -> "T_begin"
      | T_end       -> "T_end"
      | T_if        -> "T_if"
      | T_then      -> "T_then"
      | T_assign        -> "T_assign"
      | T_lparen    -> "T_lparen"
      | T_rparen    -> "T_rparen"
      | T_plus      -> "T_plus"
      | T_minus     -> "T_minus"
      | T_times     -> "T_times"
      | T_div       -> "T_div"
      | T_mod       -> "T_mod"
      | T_semicolon -> "T_semicolon"
      | T_lt        -> "T_lt"
      | T_gt        -> "T_gt"
      | T_gteq      -> "T_gteq"
      | T_lteq      -> "T_lteq"
      | T_neq       -> "T_neq"
      | T_eq        -> "T_eq"
      | T_incr      -> "T_incr"
      | T_dcr       -> "T_dcr"
      | T_lbrack    -> "T_lbrack" 
      | T_rbrack    -> "T_rbrack" 
      | T_string    -> "T_string" 
      | T_id       -> "T_id" 
      | T_int       -> "T_int" 
      | T_float    -> "T_float" 
      | T_char    -> "T_char" 
      | T_bool    -> "T_bool" 

  let main =
    let lexbuf = Lexing.from_channel stdin in
    let rec loop () =
      let token = lexer lexbuf in
      Printf.printf "token=%s, lexeme=\"%s\"\n"
        (string_of_token token) (Lexing.lexeme lexbuf);
      if token <> T_eof then loop () in
    loop ()
}
