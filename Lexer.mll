{
open Parser
exception Unexpected_character of char*int
exception Bad_character_format of string

(* Assuming there is a starting "'" character as well as an ending "'" *)

let unwrap_str str = 
    let open String in 
    let old_size = length str in
    sub str 1 (old_size-2)
;;

let getEdsgerCharacter str = 
    let open String in 
    let old_size = length str in
    let ears_free_str = sub str 1 (old_size-2) in
    match get ears_free_str 0 with
    | '\\' ->
          ( match get ears_free_str 1 with 
            | 'x' -> 
                let hex_friendly_str = "0x" ^ 
                                      (sub ears_free_str 2 2)   
                in  Char.chr @@ int_of_string hex_friendly_str
            | '\\'-> '\\'
            | '\'' -> '\''
            | '"' -> '"'
            | '0' -> Char.chr 0
            | 't' -> '\t'
            | 'n' -> '\n'
            | 'r' -> '\r'
            | _ -> raise (Bad_character_format str))
    | plain_char -> plain_char

} 

let digit             = ['0'-'9']
let hex_digit         = digit | ['a'-'f' 'A'-'F']
let int_const         = digit+
let double_const      = digit+ '.' digit+ (['e' 'E'] ['+' '-']? digit+)?
let char_const        = '\'' [^'\'']* '\''
let letter            = ['A'-'Z''a'-'z']
let white             = [' ' '\t' '\r' '\n']
let newline           = '\r' | '\n' | "\r\n"
let notnewline        = [^ '\r' '\n' ]
let const_char_inners = [^'\\' '\'' '"']
    | '\\'  ( '\''| '\\' | '"' | '\\' | '0' | 'n' | 'r' |'t'| ('x' hex_digit hex_digit))

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
  | '"' ([^'"']|'\\' '"')* '"'  
      {
        T_string (unwrap_str @@ Lexing.lexeme lexbuf) 
      }

  | '\'' const_char_inners '\'' 
      {
        let str = Lexing.lexeme lexbuf in
        T_char_const ( getEdsgerCharacter str )
      }
  | int_const  { T_int_const (Lexing.lexeme lexbuf) }
  | double_const  { T_double_const (Lexing.lexeme lexbuf)}
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
  |  _ as chr     { raise (Unexpected_character (chr,(Lexing.lexeme_start lexbuf)))}

and consume_comment = 
    parse
    | "*/" { lexer lexbuf }
    | _ { consume_comment lexbuf}
