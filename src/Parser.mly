%token T_int  T_double T_bool T_char T_id 
%token T_string T_char_const T_int_const T_double_const
%token T_true T_false
%token T_null
%token T_plu_assign T_min_assign T_mul_assign T_div_assign T_mod_assign
%token T_assign
%token T_incr T_dcr
%token T_lteq T_gteq T_gt T_lt T_neq T_eq
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
%token T_paren
%token T_mod T_div

%right BAD_CHOICE
%left T_comma
%left COMMAND
%right T_assign T_plu_assign T_min_assign T_mul_assign T_div_assign T_mod_assign
%right TERNARY
%left T_or
%left T_and
%left T_eq T_neq
%left T_lteq T_lt T_gt T_gteq
%left T_plus T_minus
%left T_times T_div
%right T_addr
%left UNARY
%right CHOOSE_LONGER
%right T_incr T_dcr
%left SUFFIX_DCR
%right INDEXING
%left LARGEST


%start program
%type <unit> program
%type <unit> declaration_list
%type <unit> declaration_list_e
%type <unit> declaration
%type <unit> variable_declaration
%type <unit> more_declarators_e
%type <unit> ctype
%type <unit> pointer_asterisk_e
%type <unit> basic_type
%type <unit> declarator
%type <unit> function_declaration
%type <unit> result_type
%type <unit> parameter_list
%type <unit> parameter
%type <unit> parameter_list_e
%type <unit> function_definition
%type <unit> statement
%type <unit> statement_list_e
%type <unit> statement_e
%type <unit> else_part_e
%type <unit> label_e
%type <unit> id_e
%type <unit> array_expr_index_e
%type <unit> expression
%type <unit> expression_list
%type <unit> expression_list_e
%type <unit> constant_expression
%type <unit> unary_operator
%type <unit> binary_operator
%type <unit> unary_assignment
%type <unit> binary_assignment

%%

/* We Need Left-Recursions since we have a LR (L stands for Left)
* LEFT:  R(n) = R(n-1) b 
* RIGHT: R(n) = b R(n-1) 
*/

program:
      declaration_list T_eof { printf "A Program Runs"; () }
    ; 

declaration_list:
       declaration_list declaration { () }
     | declaration { () }
     ;

declaration_list_e:
       {()}
     | declaration_list {()} 
     ;

declaration:
      variable_declaration { () }
    | function_declaration { () }
    | function_definition  { () }
    ;

variable_declaration:
    | ctype declarator more_declarators_e T_semicolon  {()}
    ;

more_declarators_e:
      {()}
    | more_declarators_e T_comma declarator {()}
    | T_comma declarator{()}
    ;

ctype: 
     basic_type pointer_asterisk_e {()}
    ;

pointer_asterisk_e: 
      {()}
    | pointer_asterisk_e T_times    {()}
    ;

basic_type: T_int {()}
    | T_bool {()}
    | T_char {()}
    | T_double {()}
   ; 

declarator:
      T_id T_lbrack constant_expression T_rbrack {()}
    | T_id {()}
    ;

function_declaration:
    result_type T_id T_lparen parameter_list_e T_rparen T_semicolon {()}
    ;

result_type:
      ctype {()}
    | T_void {()}
    ;

parameter_list:
      parameter_list T_comma parameter {()}
    | parameter {()}
    ;

parameter:
     T_byref ctype T_id {()}
    | ctype T_id {()}
    ;

parameter_list_e:
     {()}
     | parameter_list {()}
     ;

function_definition:
    result_type T_id T_lparen parameter_list_e T_rparen T_lbrace declaration_list_e statement_list_e T_rbrace {()}
    ;

statement:
     expression_e T_semicolon {()}
    | T_lbrace statement_list_e T_rbrace {()}
    | T_if T_lparen expression T_rparen statement else_part_e {()}
    | label_e T_for T_lparen expression_e T_semicolon expression_e T_semicolon
        expression_e T_rparen statement_e T_semicolon {()}
    | T_continue id_e T_semicolon {()}
    | T_break id_e T_semicolon {()}
    | T_return expression_e T_semicolon {()}
    ;

statement_list_e:
     {()}
    | statement_list_e statement {()}
    ;


statement_e:
     {()}
    | statement {()}
    ;


else_part_e:
      {()}
    | T_else statement {()} 
    ;

label_e:
       {()} 
    | T_id T_colon {()}
    ;

id_e:
       {()}
    | T_id {()}
    ;
    
expression:
      T_id {()}
    | T_lparen expression T_rparen %prec LARGEST {()}
    | T_true {()}
    | T_false {()}
    | T_null {()}
    | T_int_const {()}
    | T_char_const {()}
    | T_double_const {()}
    | T_string {()}
    | T_id T_lparen expression_list_e T_rparen %prec LARGEST {()}
    | expression T_lbrack expression T_rbrack {()}
    | unary_operator expression %prec UNARY {()}
    | expression binary_operator expression %prec SUFFIX_DCR {()}
    | unary_assignment expression %prec T_dcr {()}
    | expression unary_assignment {()}
    | expression binary_assignment expression %prec T_assign {()}
    | T_lparen result_type T_paren expression {()}
    | expression T_qmark expression T_colon expression %prec TERNARY {()}
    | T_new result_type {()}
    | T_new result_type T_lbrack expression T_rbrack %prec INDEXING {()}
    | T_delete expression %prec COMMAND {()}
    ;

array_expr_index_e:
        {()}
      | T_lbrack expression T_rbrack {()}
      ;

expression_e:
     {()}
     | expression {()}
     ;

expression_list:
      expression_list T_comma expression {()}
    | expression {()}
    ;

expression_list_e:
      {()} 
    | expression_list {()} 
    ;

constant_expression:
    expression {()}
    ;

unary_operator:
      T_addr {()}
    | T_times {()}
    | T_plus {()}
    | T_minus {()}
    | T_negate {()}
    ;

binary_operator:
      T_times {()}
    | T_div {()}
    | T_mod {()}
    | T_plus {()}
    | T_minus {()}
    | T_lt {()}
    | T_gt {()}
    | T_lteq {()}
    | T_gteq {()}
    | T_eq {()}
    | T_neq {()}
    | T_and {()}
    | T_or {()}
    | T_comma {()}
    ;

unary_assignment:
      T_incr {()}
    | T_dcr {()}
    ;

binary_assignment:
      T_assign {()}
    | T_mul_assign {()}
    | T_div_assign {()}
    | T_mod_assign {()}
    | T_plu_assign {()}
    | T_min_assign {()}
    ;
