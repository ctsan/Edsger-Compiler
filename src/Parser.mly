%token T_int  T_double T_bool T_char T_id 
%token T_string T_char_const T_int_const T_double_const
%token T_true T_false
%token T_null
%token T_plu_assign T_min_assign T_mul_assign T_div_assign T_mod_assign
%token T_assign
%token T_incr T_dcr
%token T_lteq T_gtwq T_gt T_lt T_neq T_eq
%token T_lbrace T_rbrace
%token T_lbrack T_rbrack
%token T_lparen T_rparen
%token T_colon T_semicolon T_comma
%token T_qmark
%token T_and
%token T_or
%token T_negate
%token T_plus
%token T_minus
%token T_times
%token T_addr T_break T_byref T_continue T_new T_delete T_else
%token T_return T_void
%token T_eof
%token T_for T_do T_begin T_end T_if T_then 
%left T_plus T_minus
%left T_times T_div

%start program
%type <unit> program

%%

program:
      declaration_list T_eof { printf "A Program Runs"; () }
    ; 

declaration_list:
       declaration_list declaration { () }
     | declaration { () }
     ;

declaration_list_e:
       declaration_list declaration { () }
     | declaration { () }
     | {()}
     ;

declaration:
      variable_declaration { () }
    | function_declaration { () }
    | function_definition  { () }
    ;

variable_declaration:
    | type declarator more_declarators T_semicolon  {()}
    | type declarator T_semicolon {()}
    ;
more_declarators:
    | more_declarators T_comma declarator {()}
    | T_comma declarator  {()}
    ;

type: 
     basic-type pointer_asterisk {()}
    | basic-type                  {()}
    ;

pointer_asterisk: 
     pointer_asterisk T_times    {()}
    | T_times                     {()}
    ;

basic_type: T_int {()}
    | T_bool {()}
    | T_char {()}
    | T_double {()}
   ; 

declarator:
    T_id T_lbrack constant-expression T_rbrack {()}
    | T_id {()}
    ;

function_declaration:
    result-type T_id T_lparen parameter_list T_rparen T_semicolon {()}
    ;

result_type:
    type {()}
    | T_void {()}
    ;

parameter_list:
    | parameter_list T_comma parameter {()}
    | parameter {()}
    ;

parameter:
     byref type T_id {()}
    | type T_id {()}
    ;

parameter_list_e:
     {()}
     | parameter_list {()}
     ;

function_definition:
    result_type T_id T_lparen parameter_list_e T_rparen T_lbrace declaration_list_e statement_list_e T_rbrace {()}
    ;

statement:
      T_semicolon {()}
    | expression T_semicolon {()}
    | T_rbrace statement_list_e T_lbrace {()}
    | 
    ;

if_construct:
    T_if T_lparen expression T_rparen statement else_part {()}
    ;


