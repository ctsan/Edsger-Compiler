%{
open Core.Std
open NicePrint
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
%type <ast_decl list> declaration_list
%type <ast_decl list> declaration_list_e
%type <ast_decl> declaration
%type <ast_decl list> more_declarators
%type <unit> ctype
%type <int> pointer_asterisk_e 
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
%type <unit> expression
%type <unit> expression_list
%type <unit> expression_list_e
%type <unit> constant_expression
%type <unit> unary_operator
%type <unit> unary_assignment
%type <unit> binary_assignment

%%

program:
      declaration_list T_eof 
        {
            eprintf_color Green "Passing Syntax :-) \n";
            eclear();
            ast_tree := Some $1;
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
      T_id                                                           { ()}
    | T_lparen expression T_rparen                                   { Printf.printf "hi\n"; ()}
    | T_true                                                         { ()}
    | T_false                                                        { ()}
    | T_null                                                         { ()}
    | T_int_const                                                    { ()}
    | T_char_const                                                   
        { printf "Char Const\n" ; ()}
    | T_double_const                                                 { ()}
    | T_string                                                       { ()}
    | T_id T_lparen expression_list_e  T_rparen                      { ()}
    | expression T_lbrack expression T_rbrack                        { ()}
    | unary_operator expression %prec UNARY                          { ()}
    | expression binary_operator expression                          { ()}
    | unary_assignment expression %prec T_dcr                        { ()}
    | expression unary_assignment                                    { ()}
    | expression binary_assignment expression %prec T_assign         { ()}
    | T_lparen ctype T_rparen expression %prec CAST                  { ()}
    | expression T_qmark expression T_colon expression %prec TERNARY { ()}
    | T_new ctype %prec LOWEST                                       { ()}
    | T_new ctype T_lbrack expression T_rbrack                       { ()}
    | T_delete expression %prec COMMAND                              { ()}
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
      T_times { ()}
    | T_div   { ()}
    | T_mod   { ()}
    | T_plus  { ()}
    | T_minus { ()}
    | T_lt    { ()}
    | T_gt    { ()}
    | T_lteq  { ()}
    | T_gteq  { ()}
    | T_eq    { ()}
    | T_neq   { ()}
    | T_and   { ()}
    | T_or    { ()}
    | T_comma { ()}
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
