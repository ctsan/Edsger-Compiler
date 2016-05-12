%{
open NicePrint
open Printf
open Ast
%}

%token <string>T_id
%token T_int  T_double T_bool T_char 
%token T_string T_char_const T_int_const T_double_const
%token T_true T_false
%token T_null
%token T_plu_assign T_min_assign T_mul_assign T_div_assign T_mod_assign
%token T_assign /* "=" */
%token T_incr T_dcr  /* "++" "--" */
%token T_lteq T_gteq T_gt T_lt T_neq T_eq /* "<=", ">=" ">" "<" "!=" "==" */
%token T_lbrace T_rbrace /* "{" "}" */
%token T_lbrack T_rbrack /* "[" "]" */
%token T_lparen T_rparen /* "(" ")" */
%token T_colon T_semicolon T_comma
%token T_qmark  /* '?' */
%token T_and
%token T_or
%token T_negate /* '!' */
%token T_plus
%token T_minus
%token T_times 
%token T_addr /* pointer '*' */
%token T_break T_byref T_continue T_new T_delete T_else 
%token T_return T_void
%token T_eof
%token T_for T_if 
%token T_mod T_div 

%left LOWEST
%nonassoc T_lbrack 
%left T_comma
%left COMMAND
%nonassoc T_assign T_plu_assign T_min_assign T_mul_assign T_div_assign T_mod_assign
%nonassoc TERNARY T_qmark 
%left T_or
%left T_and
%left T_eq T_neq
%left T_lteq T_lt T_gt T_gteq
%left T_plus T_minus
%left T_times T_div T_mod
%left UNARY
%right T_incr T_dcr CAST
%nonassoc T_else

%start program
%type <unit> program
%type <unit> declaration_list
/* %type <ast_decl list> declaration_list */
%type <unit> declaration_list_e
/* %type <ast_decl list> declaration_list_e */
%type <unit> declaration
//%type <ast_decl> declaration
%type <unit> more_declarators
//%type <ast_decl list> more_declarators
%type <unit> ctype
%type <unit> pointer_asterisk_e 
//%type <int> pointer_asterisk_e 
%type <unit> basic_type
%type <unit> declarator
%type <unit> parameter_list
%type <unit> parameter
%type <unit> parameter_list_e
%type <unit> statement
%type <unit> statement_list_e
%type <unit> else_part_e
%type <unit> label_e
%type <unit> id_e
%type <ast_expr> expression
%type <unit> expression_list
%type <unit> expression_list_e
%type <unit> constant_expression
%type <unit> unary_operator
%type <unit> unary_assignment
%type <unit> binary_assignment
%type <ast_expr> binary_operator
%%

program:
      declaration_list T_eof 
        {
            eprintf_color Green "Passing Syntax :-) \n";
            eclear();
            (*ast_tree := Some $1; *)
            () 
        }; 

declaration_list:
       declaration_list declaration { () }
     | declaration                  { () }
     ;

declaration_list_e:
                        { ()}
     | declaration_list { ()}
     ;

declaration:
      variable_declaration { Printf.printf "Var Decl\n"; () }
    | function_declaration { Printf.printf "Fun Decl\n"; () }
    | function_definition  { Printf.printf "Fun Def\n"; () }
    ;

%inline variable_declaration:
    | ctype more_declarators T_semicolon  {()}
    ;

more_declarators:
    declarator {()} 
    | declarator T_comma more_declarators { ()}
    
ctype: 
     basic_type pointer_asterisk_e {()}
    ;

pointer_asterisk_e: 
      %prec LOWEST               { ()}
    | T_times pointer_asterisk_e { ()}
    ;

basic_type: T_int { ()}
    | T_bool      { ()}
    | T_char      { ()}
    | T_double    { ()}
   ; 

declarator:
      name = T_id T_lbrack constant_expression T_rbrack 
                  { printf "Array Named %s\n" name; () }
    | name = T_id { printf "Variable Name %s\n" name; ()}
    ;

%inline function_declaration:
    result_type T_id T_lparen parameter_list_e T_rparen T_semicolon {()}
    ;

%inline result_type:
      ctype  { ()}
    | T_void { ()}
    ;

parameter_list:
      parameter_list T_comma parameter { ()}
    | parameter                        { ()}
    ;

parameter:
     T_byref ctype T_id { ()}
    | ctype T_id        { ()}
    ;

parameter_list_e:
                      { ()}
     | parameter_list { ()}
     ;

%inline function_definition:
    result_type T_id T_lparen parameter_list_e T_rparen T_lbrace declaration_list_e statement_list_e T_rbrace 
        {()}
    ;

statement:
     T_semicolon                                              { ()}
    | expression T_semicolon                                  { ()}
    | T_lbrace statement_list_e T_rbrace                      { ()}
    | T_if T_lparen expression T_rparen statement else_part_e { ()}
    | label_e T_for T_lparen expression_e T_semicolon expression_e T_semicolon
        expression_e T_rparen statement                       { ()}
    | T_continue id_e T_semicolon                             { ()}
    | T_break id_e T_semicolon                                { ()}
    | T_return expression_e T_semicolon                       { ()}
    ;

statement_list_e:
                                 { ()}
    | statement_list_e statement { ()}
    ;

else_part_e:
      %prec LOWEST     { ()}
    | T_else statement { ()}
    ;

label_e:
                   { ()}
    | T_id T_colon { ()}
    ;

id_e:
           { ()}
    | T_id { ()}
    ;
    
expression:
      T_id                                                           { E_int 0 }
    | T_lparen expression T_rparen                                   { E_int 0}
    | T_true                                                         { E_int 0}
    | T_false                                                        { E_int 0}
    | T_null                                                         { E_int 0}
    | T_int_const                                                    { E_int 0}
    | T_char_const                                                   
        { E_int 0}
    | T_double_const                                                 { E_int 0}
    | T_string                                                       { E_int 0}
    | T_id T_lparen expression_list_e  T_rparen                      { E_int 0}
    | expression T_lbrack expression T_rbrack                        { E_int 0}
    | unary_operator expression %prec UNARY                          { E_int 0}
    | e =  expression ;  op= binary_operator; e2 =expression                            
        { match op with
         |  E_mult (_,_) -> E_mult(e,e2)
         | E_div (_,_) -> E_div (e,e2)
         | E_mod (_,_) -> E_mod (e,e2)
         | E_plus(_,_) -> E_plus(e,e2)
         | E_minus (_,_) -> E_minus (e,e2)
         | E_lt(_,_) -> E_lt(e,e2)
         | E_gt (_,_) -> E_gt (e,e2)
         | E_lteq(_,_) -> E_lteq(e,e2)
         | E_gteq(_,_) -> E_gteq(e,e2)
         | E_eq (_,_) -> E_eq (e,e2)
         | E_neq(_,_) -> E_neq(e,e2)
         | E_and(_,_) -> E_and(e,e2)
         | E_or (_,_) -> E_or (e,e2)
        | E_comma (_,_) -> E_comma (e,e2)
        }
    | unary_assignment expression %prec T_dcr                        { E_int 0}
    | expression unary_assignment                                    { E_int 0}
    | expression binary_assignment expression %prec T_assign         { E_int 0}
    | T_lparen ctype T_rparen expression %prec CAST                  { E_int 0}
    | expression T_qmark expression T_colon expression %prec TERNARY { E_int 0}
    | T_new ctype %prec LOWEST                                       { E_int 0}
    | T_new ctype T_lbrack expression T_rbrack                       { E_int 0}
    | T_delete expression %prec COMMAND                              { E_int 0}
    ;

expression_e:
                  { ()}
     | expression { ()}
     ;

expression_list:
      expression_list T_comma expression { ()}
    | expression %prec LOWEST            { ()}
    ;

expression_list_e:
                      { ()}
    | expression_list { ()}
    ;

constant_expression:
    expression {()}
    ;

unary_operator:
      T_addr   { ()}
    | T_times  { ()}
    | T_plus   { ()}
    | T_minus  { ()}
    | T_negate { ()}
    ;

%inline binary_operator:
      T_times { E_mult (E_int 0,E_int 0) }
    | T_div   { E_div (E_int 0,E_int 0)}
    | T_mod   { E_mod ((E_int 0,E_int 0)) }
    | T_plus  { E_plus (E_int 0,E_int 0) }
    | T_minus { E_minus (E_int 0,E_int 0) }
    | T_lt    { E_lt (E_int 0,E_int 0) }
    | T_gt    { E_gt (E_int 0,E_int 0)}
    | T_lteq  { E_lteq (E_int 0,E_int 0)}
    | T_gteq  { E_gteq (E_int 0,E_int 0)}
    | T_eq    { E_eq (E_int 0,E_int 0)}
    | T_neq   { E_neq (E_int 0,E_int 0)}
    | T_and   { E_and (E_int 0,E_int 0)}
    | T_or    { E_or (E_int 0,E_int 0)}
    | T_comma { E_comma (E_int 0,E_int 0)}
    ;

unary_assignment:
      T_incr { ()}
    | T_dcr  { ()}
    ;

binary_assignment:
      T_assign     { ()}
    | T_mul_assign { ()}
    | T_div_assign { ()}
    | T_mod_assign { ()}
    | T_plu_assign { ()}
    | T_min_assign { ()}
    ;
