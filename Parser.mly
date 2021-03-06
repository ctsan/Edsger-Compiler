%{
open NicePrint
open Core.Std
open Ast

let (>>|) =  Option.(>>|)

exception UnexpectedType
let construct_binary_assign typ arg1 arg2 =
    match typ with
    |  T_assign     -> E_assign (arg1,arg2)
    |  T_mul_assign -> E_mul_assign(arg1,arg2)
    |  T_div_assign -> E_div_assign(arg1,arg2)
    |  T_mod_assign -> E_mod_assign(arg1,arg2)
    |  T_plu_assign -> E_plu_assign(arg1,arg2)
    |  T_min_assign -> E_min_assign(arg1,arg2)
    | _ -> raise UnexpectedType

let construct_unary_assign typ arg ~before =
    match typ,before with
    | T_incr,true  -> E_incr_bef arg
    | T_incr,false -> E_incr_aft arg
    | T_dcr,true   -> E_decr_bef arg
    | T_dcr,false  -> E_decr_aft arg
    | _ -> raise UnexpectedType

let construct_type typ arg =
    match typ with
    | T_int   ->  Ty_int arg
    | T_bool  ->  Ty_bool arg
    | T_char   -> Ty_char arg
    | T_double -> Ty_double arg
    | T_void when arg=0 -> Ty_void
    | _ -> raise UnexpectedType

let construct_unary_operation  typ arg =
    match typ with
    | T_addr   ->  E_addr arg
    | T_times  ->  E_deref arg
    | T_plus   -> printf "found unary minus\n"; E_uplus arg
    | T_minus  -> printf "found unary minus\n" ; E_uminus arg
    | T_negate ->  E_negate arg
    | _ -> raise UnexpectedType

let construct_binary_operation typ arg1 arg2 =
    match typ with
     | T_times  -> E_mult(arg1,arg2)
     | T_div    -> E_div (arg1,arg2)
     | T_mod    -> E_mod (arg1,arg2)
     | T_plus   -> E_plus(arg1,arg2)
     | T_minus  -> E_minus (arg1,arg2)
     | T_lt     -> E_lt(arg1,arg2)
     | T_gt     -> E_gt (arg1,arg2)
     | T_lteq   -> E_lteq(arg1,arg2)
     | T_gteq   -> E_gteq(arg1,arg2)
     | T_eq     -> E_eq (arg1,arg2)
     | T_neq    -> E_neq(arg1,arg2)
     | T_and    -> E_and(arg1,arg2)
     | T_or     -> E_or (arg1,arg2)
     | T_comma  -> E_comma (arg1,arg2)
     | _ -> raise UnexpectedType;;

 let get_size_of_param_list paramlist =
     match paramlist with
     | Some lst -> string_of_int @@ List.length lst
     | None -> "0";;
%}

%token <Ast.ast_decl list> T_include
%token <string>T_id
(*---------------Types---------------*)
%token T_double T_bool T_char T_int
(*------------Literals---------------*)
%token <string> T_string
%token <string> T_double_const
%token <string> T_int_const
%token <char> T_char_const
%token T_true T_false
(*-----------------------------------*)
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
%left T_comma
%left COMMAND
%right T_assign T_plu_assign T_min_assign T_mul_assign T_div_assign T_mod_assign
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
%nonassoc T_lbrack

%start program
%type <Ast.ast_decl list> program
%type <ast_decl> declaration
%type <ast_type> ctype
%type <int> pointer_asterisk_e
%type <ast_param list> parameter_list
%type <ast_stmt> statement
%type <ast_expr> expression
%type <ast_expr list> expression_list
%%

program:
     includes declaration+ T_eof
       {
           List.rev_append (List.rev $1) $2
       };

includes:
     | { [] }
     | T_include includes { List.rev_append (List.rev $1) $2 }


declaration_list:
     | declaration declaration_list { $1::$2 }
     | declaration                  { $1::[] }
     ;

declaration:
    | vd = variable_declaration; { vd }
    | fd = function_declaration; { fd }
    | fd = function_definition;  { fd }
    ;

%inline variable_declaration:
    | ct = ctype; md = more_declarators; T_semicolon  { D_var_decl (ct,md) }
    ;

more_declarators:
    | declarator { $1::[]}
    | declarator T_comma more_declarators { $1::$3}

ctype:
     basic_type pointer_asterisk_e { construct_type $1 $2 }
    ;

pointer_asterisk_e:
    | %prec LOWEST               { 0   }
    | T_times pointer_asterisk_e { 1+$2}
    ;

basic_type:
    | T_int    { T_int    }
    | T_bool   { T_bool   }
    | T_char   { T_char   }
    | T_double { T_double }
   ;

declarator:
       T_id T_lbrack constant_expression T_rbrack {($1,Some $3)}
    |  T_id {($1,None)}
    ;

%inline function_declaration:
    rt = result_type; id = T_id;  T_lparen; par=parameter_list?; T_rparen; T_semicolon;
        {
            let total_parameters = get_size_of_param_list par
            in D_func_decl (rt,id ^ "_" ^ total_parameters , par >>| List.rev )
        }
    ;

%inline result_type:
    ct = ctype; { ct }
    | T_void { Ty_void }
    ;

parameter_list:
      parameter_list T_comma parameter  { $3::$1 }
     | parameter                        { $1::[] }
    ;

parameter:
     T_byref ctype T_id { P_byref ($2,$3)}
    | ctype T_id        { P_byval ($1,$2)}
    ;

%inline function_definition:
    rt = result_type; id = T_id;  T_lparen; par=parameter_list?; T_rparen; T_lbrace;
    derlst =declaration_list?; st =  statement*; T_rbrace;
        {
            let total_parameters = get_size_of_param_list par in
            D_func_def (rt,id ^ "_" ^ total_parameters, par >>| List.rev ,derlst,st)
        };

statement:
     T_semicolon                                              { S_None}
    | expression T_semicolon                                  { S_expr $1 }
    (*-------------------- Block Statement --------------------*)
    | T_lbrace statement* T_rbrace                            { S_braces $2 }
    (*-------------------- If Statement -----------------------*)
    | T_if T_lparen expression T_rparen statement else_part_e
        { S_if ($3,$5,$6)}
    (*-------------------- For Statement ----------------------*)
    | label_e T_for T_lparen expression? T_semicolon expression? T_semicolon
        expression? T_rparen statement  { S_for ($1,$4,$6,$8,$10)}
    (*-------------------- Other Keywords *--------------------*)
    | T_continue T_id? T_semicolon      { S_continue $2}
    | T_break T_id? T_semicolon         { S_break $2}
    | T_return expression? T_semicolon  { S_return $2}
    ;

else_part_e:
      %prec LOWEST     { None}
    | T_else statement { Some $2}
    ;

label_e:
                   { None }
    | T_id T_colon { Some $1}
    ;

expression:
    T_id                                 { E_id $1 }
    (*--------------------  (x+y) * 3 ------ ------------------------*)
    | T_lparen expression T_rparen       { $2 }
    (*---------------------------------------------------------------*)
    | T_true                             { E_bool true  }
    | T_false                            { E_bool false }
    | T_null                             { E_null       }
    | T_int_const                        { E_int $1     }
    | T_char_const                       { E_char $1    }
    | T_double_const                     { E_double $1  }
    | T_string                           { E_string $1  }
    (*------------------------- f(x+2,y,..z)  -----------------------*)
    | name = T_id ; T_lparen ; params = expression_list? ; T_rparen
    (* TODO: Refactor function calls to have an actual expression list without extra code *)
    (* This will make the design better, but special attention should be given to priority against common commas*)
        { let params = (match params with
           | None -> None
           | Some (hd::tl) ->
                   let rec flatten_commas acc expr =
                       match expr with
                       | E_comma (x,y) -> flatten_commas (y::acc) x
                       | _ -> expr::acc
                   in Some (flatten_commas [] hd)
            | _ -> printf "This should not happen!\n"; None )
          in
          let params_num = match params with
           | None -> "0"
           | Some lst -> string_of_int (List.length lst)
          in
          E_function_call (name ^ "_" ^ params_num,params) }
    (*-----------------------------   x[z]  -------------------------*)
    | expression T_lbrack expression T_rbrack  { E_array_access ($1,$3)}
    (*-------------------   &x,-x,*x,!x,+x  -------------------------*)
    | op = unary_operator ; e = expression %prec UNARY
        { construct_unary_operation op e            }
    (*---------------------------   x OP y  -------------------------*)
    | e1 =  expression ;  op = binary_operator; e2 = expression
        { construct_binary_operation op e1 e2       }
    (*-------------------------  ++ --   ----------------------------*)
    | unary_assignment expression %prec T_dcr
        { construct_unary_assign $1 $2 ~before:true }
    | expression unary_assignment
        { construct_unary_assign $2 $1 ~before:false }
    (*---------------------  %=, *=, +=, /=, ..  --------------------*)
    | expression binary_assignment expression %prec T_assign
        { construct_binary_assign $2 $1 $3          }
    (*----------------------- Type Casting --------------------------*)
    | T_lparen ctype T_rparen expression %prec CAST
        { E_cast ($2,$4)                            }
    (*--------------------------- X?Y:Z -----------------------------*)
    | expression T_qmark expression T_colon expression %prec TERNARY
        { E_ternary_op ($1,$3,$5)                   }
    (*---------------------------------------------------------------*)
    | T_new ctype %prec LOWEST { E_new ($2,None)}
    | T_new ctype T_lbrack  expression T_rbrack { E_new ($2,Some $4)}
    | T_delete expression %prec COMMAND  { E_delete $2}
    ;

expression_list:
      rest = expression_list ; T_comma ; new_expr = expression { new_expr::rest }
    | expression %prec LOWEST            { $1::[]}
    ;


constant_expression: expression { $1 };

unary_operator:
      T_addr   { T_addr   }
    | T_times  { T_times  }
    | T_plus   { T_plus   }
    | T_minus  { T_minus  }
    | T_negate { T_negate }
    ;

%inline binary_operator:
      T_times { T_times }
    | T_div   { T_div   }
    | T_mod   { T_mod   }
    | T_plus  { T_plus  }
    | T_minus { T_minus }
    | T_lt    { T_lt    }
    | T_gt    { T_gt    }
    | T_lteq  { T_lteq  }
    | T_gteq  { T_gteq  }
    | T_eq    { T_eq    }
    | T_neq   { T_neq   }
    | T_and   { T_and   }
    | T_or    { T_or    }
    | T_comma { T_comma }
    ;

unary_assignment:
      T_incr { T_incr }
    | T_dcr  { T_dcr  }
    ;

binary_assignment:
      T_assign     { T_assign      }
    | T_mul_assign { T_mul_assign  }
    | T_div_assign { T_div_assign  }
    | T_mod_assign { T_mod_assign  }
    | T_plu_assign { T_plu_assign  }
    | T_min_assign { T_min_assign  }
    ;
