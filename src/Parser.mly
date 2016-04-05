%start PROG
%%
%token <int> INT
%token <float> FLOAT
%token <string> ID
%token <string> STRING
%token TRUE
%token FALSE
%token NULL
%token LEFT_BRACE
%token RIGHT_BRACE
%token LEFT_BRACK
%token RIGHT_BRACK
%token LEFT_PAREN
%token RIGHT_PAREN
%token COLON
%token SEMICOLON
%token COMMA
%token QMARK
%token OP_AND
%token OP_OR
%token OP_NEGATE
%token OP_PLUS
%token OP_MINUS
%token EOF

program:
    | EOF { None } 
    | v = value { Some V}
    ;

declaration:
    | variable_declaration {}
    | function_declaration {}
    | function_definition  {}
    ;

variable_declaration:
    | type; declarator; more_declarators; SEMICOLON 
