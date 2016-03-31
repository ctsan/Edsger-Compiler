{
type token =
  | T_eof | T_negate
  | T_plu_assign | T_int_const  | T_float_const | T_char_const
  | T_min_assign | T_for | T_do | T_begin | T_end | T_if | T_then
  | T_mul_assign | T_lparen | T_rparen | T_plus | T_minus | T_times
  | T_div_assign | T_lteq | T_gteq | T_gt | T_lt | T_neq | T_eq
  | T_mod_assign | T_incr | T_dcr
  | T_assign
  | T_lbrack | T_rbrack | T_semicolon| T_lbrace | T_rbrace 
  | T_mod | T_div | T_qmark
  | T_or    | T_string
  | T_and   | T_int | T_float | T_char | T_bool
  | T_addr  | T_break | T_byref | T_continue | T_new | T_delete | T_else
  | T_comma | T_true | T_false | T_null | T_return | T_void
  | T_colon | T_id | T_comment 
} 
let digit    = ['0'-'9']
let int_const   = '-'? digit+
let float_const   = digit* '.'? digit* (['e' 'E'] ['+' '-'] digit+)?
let char_const   = 'a'
let letter   = ['A'-'Z''a'-'z']
let white    = [' ' '\t' '\r' '\n']
let newline    = '\r' | '\n' | "\r\n"
let notnewline  = [^ '\r' '\n' ]
let special  = "\\n"

rule lexer = parse
  | "//" notnewline*  { T_comment }
  | "for"    { T_for }
  | "do"     { T_do }
  | "begin"  { T_begin }
  | "end"    { T_end }
  | "if"     { T_if }
  | "then"   { T_then }
  | "else"   { T_else }
  | "true"   { T_true }
  | "false"   { T_false }
  | "byref"   { T_byref }
  | "break"   { T_break }
  | "NULL"   { T_null }
  | "void"   { T_void }
  | "delete"   { T_delete }
  | "return"   { T_return }
  | "new"   { T_new }
  | "continue"   { T_continue }
  | "int"    { T_int }
  | "float"  { T_float }
  | "bool"   { T_bool }
  | "char"   { T_char }
  | '"' ([^'"']|'\\' '"')* '"'  { T_string }
  | int_const  { T_int_const }
  | float_const  { T_float_const }
  | char_const    { T_char_const }
  | '='      { T_assign }
  | "+="     { T_plu_assign }
  | "-="     { T_min_assign }
  | "*="     { T_mul_assign }
  | "/="     { T_div_assign }
  | "%="     { T_mod_assign }
  | '('      { T_lparen }
  | ')'      { T_rparen }
  | '{'      { T_lbrace }
  | '}'      { T_rbrace }
  | '['      { T_lbrack }
  | ']'      { T_rbrack }
  | '+'      { T_plus }
  | '-'      { T_minus }
  | '*'      { T_times }
  | '/'      { T_div }
  | '%'      { T_mod }
  | "||"      { T_or }
  | "&&"      { T_and }
  | '&'      { T_addr }
  | '!'      { T_negate }
  | '?'      { T_qmark }
  | ','      { T_comma }
  | ':'      { T_colon }

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
      | T_for       -> "T_for"
      | T_do        -> "T_do"
      | T_begin     -> "T_begin"
      | T_end       -> "T_end"
      | T_if        -> "T_if"
      | T_then      -> "T_then"
      | T_assign        -> "T_assign"
      | T_plu_assign-> "T_plu_assign"
      | T_min_assign-> "T_min_assign"
      | T_mul_assign-> "T_mul_assign"
      | T_div_assign-> "T_div_assign"
      | T_mod_assign-> "T_mod_assign"
      | T_or        -> "T_or"
      | T_and       -> "T_and"
      | T_addr      -> "T_addr"
      | T_comma     -> "T_comma"
      | T_colon     -> "T_colon"
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
      | T_lbrace    -> "T_lbrace" 
      | T_rbrace    -> "T_rbrace" 
      | T_string    -> "T_string" 
      | T_id       -> "T_id" 
      | T_int       -> "T_int" 
      | T_float    -> "T_float" 
      | T_char    -> "T_char" 
      | T_bool    -> "T_bool" 
      | T_else   -> "T_else"
      | T_true   -> "T_true"
      | T_false   -> "T_false"
      | T_byref   -> "T_byref"
      | T_break   -> "T_break"
      | T_null   -> "T_null"
      | T_void   -> "T_void"
      | T_delete   -> "T_delete"
      | T_return   -> "T_return"
      | T_new   -> "T_new"
      | T_continue   -> "T_continue"
      | T_negate   -> "T_negate"
      | T_qmark   -> "T_qmark"
      | T_comment   -> "T_comment"

  let main =
    let lexbuf = Lexing.from_channel stdin in
        let rec loop () =
          let token = lexer lexbuf in
          if token <> T_comment then 
              Printf.printf "token=%s, lexeme=\"%s\"\n" (string_of_token token) (Lexing.lexeme lexbuf);
          if token <> T_eof then loop () in
        loop ()
}
