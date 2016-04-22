{
open Parser
} 

let digit    = ['0'-'9']
let int_const   = digit+
let double_const   = digit+ '.' digit+ (['e' 'E'] ['+' '-']? digit+)?
let char_const   = '\'' [^'\'']* '\''
let letter   = ['A'-'Z''a'-'z']
let white    = [' ' '\t' '\r' '\n']
let newline    = '\r' | '\n' | "\r\n"
let notnewline  = [^ '\r' '\n' ]


rule lexer = parse
  | "//" notnewline*  { lexer lexbuf }
  | "/*" { consume_comment lexbuf }
  | "for"    { T_for }
  | "if"     { T_if }
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
  | "double"  { T_double }
  | "bool"   { T_bool }
  | "char"   { T_char }
  | '"' ([^'"']|'\\' '"')* '"'  { T_string }
  | '\'' ([^'\'']|'\\' '\'')* '\''  { T_char_const }
  | int_const  { T_int_const }
  | double_const  { T_double_const }
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
  | letter (letter|digit|'_')*   { T_id (Lexing.lexeme lexbuf) }
  |  eof          { T_eof }
  |  _ as chr     { Printf.eprintf "invalid character: '%c' (ascii: %d)"
                      chr (Char.code chr);
                    lexer lexbuf }

and consume_comment = 
    parse
    | "*/" { lexer lexbuf }
    | _ { consume_comment lexbuf}
