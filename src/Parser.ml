
exception Error

let _eRR =
  Error

type token = 
  | T_void
  | T_true
  | T_times
  | T_then
  | T_string
  | T_semicolon
  | T_rparen
  | T_return
  | T_rbrack
  | T_rbrace
  | T_qmark
  | T_plus
  | T_plu_assign
  | T_paren
  | T_or
  | T_null
  | T_new
  | T_neq
  | T_negate
  | T_mul_assign
  | T_mod_assign
  | T_mod
  | T_minus
  | T_min_assign
  | T_lteq
  | T_lt
  | T_lparen
  | T_lbrack
  | T_lbrace
  | T_int_const
  | T_int
  | T_incr
  | T_if
  | T_id
  | T_gteq
  | T_gt
  | T_for
  | T_false
  | T_eq
  | T_eof
  | T_end
  | T_else
  | T_double_const
  | T_double
  | T_do
  | T_div_assign
  | T_div
  | T_delete
  | T_dcr
  | T_continue
  | T_comma
  | T_colon
  | T_char_const
  | T_char
  | T_byref
  | T_break
  | T_bool
  | T_begin
  | T_assign
  | T_and
  | T_addr

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState160
  | MenhirState154
  | MenhirState150
  | MenhirState146
  | MenhirState142
  | MenhirState141
  | MenhirState139
  | MenhirState137
  | MenhirState129
  | MenhirState127
  | MenhirState125
  | MenhirState123
  | MenhirState119
  | MenhirState115
  | MenhirState111
  | MenhirState108
  | MenhirState107
  | MenhirState106
  | MenhirState103
  | MenhirState102
  | MenhirState100
  | MenhirState95
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState88
  | MenhirState87
  | MenhirState86
  | MenhirState82
  | MenhirState81
  | MenhirState80
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState64
  | MenhirState63
  | MenhirState51
  | MenhirState50
  | MenhirState48
  | MenhirState47
  | MenhirState46
  | MenhirState42
  | MenhirState39
  | MenhirState35
  | MenhirState32
  | MenhirState30
  | MenhirState27
  | MenhirState23
  | MenhirState22
  | MenhirState19
  | MenhirState10
  | MenhirState9
  | MenhirState0

let rec _menhir_goto_id_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 60 "Parser.mly"
      (unit)
# 138 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv587 * _menhir_state) * _menhir_state * (
# 60 "Parser.mly"
      (unit)
# 148 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv583 * _menhir_state) * _menhir_state * (
# 60 "Parser.mly"
      (unit)
# 158 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv581 * _menhir_state) * _menhir_state * (
# 60 "Parser.mly"
      (unit)
# 165 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 55 "Parser.mly"
      (unit)
# 173 "Parser.ml"
            ) = 
# 162 "Parser.mly"
                                  (())
# 177 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv582)) : 'freshtv584)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv585 * _menhir_state) * _menhir_state * (
# 60 "Parser.mly"
      (unit)
# 187 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv586)) : 'freshtv588)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv595 * _menhir_state) * _menhir_state * (
# 60 "Parser.mly"
      (unit)
# 196 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv591 * _menhir_state) * _menhir_state * (
# 60 "Parser.mly"
      (unit)
# 206 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv589 * _menhir_state) * _menhir_state * (
# 60 "Parser.mly"
      (unit)
# 213 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 55 "Parser.mly"
      (unit)
# 221 "Parser.ml"
            ) = 
# 163 "Parser.mly"
                               (())
# 225 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv590)) : 'freshtv592)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv593 * _menhir_state) * _menhir_state * (
# 60 "Parser.mly"
      (unit)
# 235 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv594)) : 'freshtv596)
    | _ ->
        _menhir_fail ()

and _menhir_goto_else_part_e : _menhir_env -> 'ttv_tail -> (
# 58 "Parser.mly"
      (unit)
# 245 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv579 * _menhir_state)) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 252 "Parser.ml"
    )) * _menhir_state) * _menhir_state * (
# 55 "Parser.mly"
      (unit)
# 256 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_v : (
# 58 "Parser.mly"
      (unit)
# 261 "Parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv577 * _menhir_state)) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 267 "Parser.ml"
    )) * _menhir_state) * _menhir_state * (
# 55 "Parser.mly"
      (unit)
# 271 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_6 : (
# 58 "Parser.mly"
      (unit)
# 276 "Parser.ml"
    )) = _v in
    ((let ((((_menhir_stack, _menhir_s), _, _3), _), _, _5) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _1 = () in
    let _v : (
# 55 "Parser.mly"
      (unit)
# 285 "Parser.ml"
    ) = 
# 159 "Parser.mly"
                                                              (())
# 289 "Parser.ml"
     in
    _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv578)) : 'freshtv580)

and _menhir_goto_label_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 59 "Parser.mly"
      (unit)
# 296 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv575 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 304 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_for ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 314 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_lparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv567 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 324 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_char_const ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_dcr ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_delete ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_double_const ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_false ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_id ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_incr ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_int_const ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_lparen ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_minus ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_negate ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_new ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_null ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_plus ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_string ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_times ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_true ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | T_semicolon ->
                _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv568)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv569 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 378 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv570)) : 'freshtv572)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 389 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv574)) : 'freshtv576)

and _menhir_reduce68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 60 "Parser.mly"
      (unit)
# 399 "Parser.ml"
    ) = 
# 190 "Parser.mly"
       (())
# 403 "Parser.ml"
     in
    _menhir_goto_id_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_run112 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv565) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 60 "Parser.mly"
      (unit)
# 417 "Parser.ml"
    ) = 
# 191 "Parser.mly"
           (())
# 421 "Parser.ml"
     in
    _menhir_goto_id_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)

and _menhir_goto_statement_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 57 "Parser.mly"
      (unit)
# 428 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((((((('freshtv563 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 436 "Parser.ml"
    )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * (
# 57 "Parser.mly"
      (unit)
# 440 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_semicolon ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv559 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 450 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * (
# 57 "Parser.mly"
      (unit)
# 454 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv557 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 461 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * (
# 57 "Parser.mly"
      (unit)
# 465 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _1), _, _4), _, _6), _, _8), _, _10) = _menhir_stack in
        let _11 = () in
        let _9 = () in
        let _7 = () in
        let _5 = () in
        let _3 = () in
        let _2 = () in
        let _v : (
# 55 "Parser.mly"
      (unit)
# 477 "Parser.ml"
        ) = 
# 161 "Parser.mly"
                                                      (())
# 481 "Parser.ml"
         in
        _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv558)) : 'freshtv560)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv561 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 491 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * (
# 57 "Parser.mly"
      (unit)
# 495 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv562)) : 'freshtv564)

and _menhir_goto_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "Parser.mly"
      (unit)
# 503 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv543 * _menhir_state)) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 513 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 55 "Parser.mly"
      (unit)
# 517 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_else ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv537) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_break ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_char_const ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_continue ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_dcr ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_delete ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_double_const ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_false ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_id ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_if ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_incr ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_int_const ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_lbrace ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_lparen ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_minus ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_negate ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_new ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_null ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_plus ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_return ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_string ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_times ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_true ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_for ->
                _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | T_semicolon ->
                _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv538)
        | T_addr | T_break | T_char_const | T_continue | T_dcr | T_delete | T_double_const | T_false | T_for | T_id | T_if | T_incr | T_int_const | T_lbrace | T_lparen | T_minus | T_negate | T_new | T_null | T_plus | T_rbrace | T_return | T_semicolon | T_string | T_times | T_true ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv539) = Obj.magic _menhir_stack in
            ((let _v : (
# 58 "Parser.mly"
      (unit)
# 588 "Parser.ml"
            ) = 
# 180 "Parser.mly"
      (())
# 592 "Parser.ml"
             in
            _menhir_goto_else_part_e _menhir_env _menhir_stack _v) : 'freshtv540)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv541 * _menhir_state)) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 602 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 55 "Parser.mly"
      (unit)
# 606 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv542)) : 'freshtv544)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv547) * _menhir_state * (
# 55 "Parser.mly"
      (unit)
# 615 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv545) * _menhir_state * (
# 55 "Parser.mly"
      (unit)
# 621 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _2) = _menhir_stack in
        let _1 = () in
        let _v : (
# 58 "Parser.mly"
      (unit)
# 628 "Parser.ml"
        ) = 
# 181 "Parser.mly"
                       (())
# 632 "Parser.ml"
         in
        _menhir_goto_else_part_e _menhir_env _menhir_stack _v) : 'freshtv546)) : 'freshtv548)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv551 * _menhir_state * (
# 55 "Parser.mly"
      (unit)
# 640 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv549 * _menhir_state * (
# 55 "Parser.mly"
      (unit)
# 646 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 57 "Parser.mly"
      (unit)
# 652 "Parser.ml"
        ) = 
# 175 "Parser.mly"
                (())
# 656 "Parser.ml"
         in
        _menhir_goto_statement_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv550)) : 'freshtv552)
    | MenhirState23 | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv555 * _menhir_state * (
# 56 "Parser.mly"
      (unit)
# 664 "Parser.ml"
        )) * _menhir_state * (
# 55 "Parser.mly"
      (unit)
# 668 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv553 * _menhir_state * (
# 56 "Parser.mly"
      (unit)
# 674 "Parser.ml"
        )) * _menhir_state * (
# 55 "Parser.mly"
      (unit)
# 678 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : (
# 56 "Parser.mly"
      (unit)
# 684 "Parser.ml"
        ) = 
# 169 "Parser.mly"
                                 (())
# 688 "Parser.ml"
         in
        _menhir_goto_statement_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv554)) : 'freshtv556)
    | _ ->
        _menhir_fail ()

and _menhir_goto_binary_assignment : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 69 "Parser.mly"
      (unit)
# 697 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv535 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 705 "Parser.ml"
    )) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 709 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_char_const ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_dcr ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_delete ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_double_const ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_false ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_id ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_incr ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_int_const ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_lparen ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_minus ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_negate ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_new ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_null ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_plus ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_string ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_times ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_true ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv536)

and _menhir_goto_binary_operator : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 67 "Parser.mly"
      (unit)
# 758 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv533 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 766 "Parser.ml"
    )) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 770 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_char_const ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_dcr ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_delete ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_double_const ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_false ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_id ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_incr ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_int_const ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_lparen ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_minus ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_negate ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_new ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_null ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_plus ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_string ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_times ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_true ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv534)

and _menhir_goto_statement_list_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 56 "Parser.mly"
      (unit)
# 819 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv525 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 829 "Parser.ml"
        )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 833 "Parser.ml"
        )))) * _menhir_state * (
# 41 "Parser.mly"
      (unit)
# 837 "Parser.ml"
        )) * _menhir_state * (
# 56 "Parser.mly"
      (unit)
# 841 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_break ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_char_const ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_continue ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_delete ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_double_const ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_false ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_id ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_if ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_int_const ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_lbrace ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_lparen ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_minus ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_negate ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_new ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_null ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_plus ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_rbrace ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv523 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 889 "Parser.ml"
            )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 893 "Parser.ml"
            )))) * _menhir_state * (
# 41 "Parser.mly"
      (unit)
# 897 "Parser.ml"
            )) * _menhir_state * (
# 56 "Parser.mly"
      (unit)
# 901 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState23 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv521 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 909 "Parser.ml"
            )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 913 "Parser.ml"
            )))) * _menhir_state * (
# 41 "Parser.mly"
      (unit)
# 917 "Parser.ml"
            )) * _menhir_state * (
# 56 "Parser.mly"
      (unit)
# 921 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s, _1), _, _4), _, _7), _, _8) = _menhir_stack in
            let _9 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : (
# 54 "Parser.mly"
      (unit)
# 933 "Parser.ml"
            ) = 
# 153 "Parser.mly"
                                                                                                              (())
# 937 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv519) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 54 "Parser.mly"
      (unit)
# 945 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv517) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 54 "Parser.mly"
      (unit)
# 953 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv515) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 54 "Parser.mly"
      (unit)
# 961 "Parser.ml"
            )) = _v in
            ((let _v : (
# 42 "Parser.mly"
      (unit)
# 966 "Parser.ml"
            ) = 
# 95 "Parser.mly"
                           ( () )
# 970 "Parser.ml"
             in
            _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv516)) : 'freshtv518)) : 'freshtv520)) : 'freshtv522)) : 'freshtv524)
        | T_return ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_string ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_times ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_true ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_for ->
            _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | T_semicolon ->
            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv526)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv531 * _menhir_state) * _menhir_state * (
# 56 "Parser.mly"
      (unit)
# 994 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_break ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_char_const ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_continue ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_delete ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_double_const ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_false ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_id ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_if ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_int_const ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_lbrace ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_lparen ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_minus ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_negate ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_new ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_null ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_plus ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_rbrace ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv529 * _menhir_state) * _menhir_state * (
# 56 "Parser.mly"
      (unit)
# 1042 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState103 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv527 * _menhir_state) * _menhir_state * (
# 56 "Parser.mly"
      (unit)
# 1050 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 55 "Parser.mly"
      (unit)
# 1059 "Parser.ml"
            ) = 
# 158 "Parser.mly"
                                         (())
# 1063 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv528)) : 'freshtv530)
        | T_return ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_string ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_times ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_true ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_for ->
            _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_semicolon ->
            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv532)
    | _ ->
        _menhir_fail ()

and _menhir_goto_more_declarators_e : _menhir_env -> 'ttv_tail -> (
# 44 "Parser.mly"
      (unit)
# 1088 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv513 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 1096 "Parser.ml"
    )) * _menhir_state * (
# 48 "Parser.mly"
      (unit)
# 1100 "Parser.ml"
    )) * (
# 44 "Parser.mly"
      (unit)
# 1104 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_comma ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv499 * (
# 44 "Parser.mly"
      (unit)
# 1114 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_id ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState150
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState150) : 'freshtv500)
    | T_semicolon ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv509 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 1130 "Parser.ml"
        )) * _menhir_state * (
# 48 "Parser.mly"
      (unit)
# 1134 "Parser.ml"
        )) * (
# 44 "Parser.mly"
      (unit)
# 1138 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv507 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 1145 "Parser.ml"
        )) * _menhir_state * (
# 48 "Parser.mly"
      (unit)
# 1149 "Parser.ml"
        )) * (
# 44 "Parser.mly"
      (unit)
# 1153 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _, _2), _3) = _menhir_stack in
        let _4 = () in
        let _v : (
# 43 "Parser.mly"
      (unit)
# 1160 "Parser.ml"
        ) = 
# 99 "Parser.mly"
                                                       (())
# 1164 "Parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv505) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 43 "Parser.mly"
      (unit)
# 1172 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv503) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 43 "Parser.mly"
      (unit)
# 1180 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv501) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : (
# 43 "Parser.mly"
      (unit)
# 1188 "Parser.ml"
        )) = _v in
        ((let _v : (
# 42 "Parser.mly"
      (unit)
# 1193 "Parser.ml"
        ) = 
# 93 "Parser.mly"
                           ( () )
# 1197 "Parser.ml"
         in
        _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)) : 'freshtv504)) : 'freshtv506)) : 'freshtv508)) : 'freshtv510)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv511 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 1207 "Parser.ml"
        )) * _menhir_state * (
# 48 "Parser.mly"
      (unit)
# 1211 "Parser.ml"
        )) * (
# 44 "Parser.mly"
      (unit)
# 1215 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv512)) : 'freshtv514)

and _menhir_goto_expression_list_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "Parser.mly"
      (unit)
# 1223 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv497 * _menhir_state)) * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 1231 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_rparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv493 * _menhir_state)) * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 1241 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv491 * _menhir_state)) * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 1248 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _3) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (
# 62 "Parser.mly"
      (unit)
# 1257 "Parser.ml"
        ) = 
# 204 "Parser.mly"
                                               (())
# 1261 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv492)) : 'freshtv494)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv495 * _menhir_state)) * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 1271 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv496)) : 'freshtv498)

and _menhir_reduce60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_expression_e = 
# 223 "Parser.mly"
     (())
# 1281 "Parser.ml"
     in
    _menhir_goto_expression_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce70 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 59 "Parser.mly"
      (unit)
# 1290 "Parser.ml"
    ) = 
# 185 "Parser.mly"
       (())
# 1294 "Parser.ml"
     in
    _menhir_goto_label_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_char_const ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_dcr ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_delete ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_double_const ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_false ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_id ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_incr ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_int_const ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_lparen ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_minus ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_negate ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_new ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_null ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_plus ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_string ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_times ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_true ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | T_semicolon ->
        _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run102 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce95 _menhir_env (Obj.magic _menhir_stack) MenhirState102

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_lparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_char_const ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_delete ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_double_const ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_false ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_id ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_int_const ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_lparen ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_minus ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_negate ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_new ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_null ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_plus ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_string ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_times ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | T_true ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv488)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv489 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)

and _menhir_run109 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_colon ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (
# 59 "Parser.mly"
      (unit)
# 1431 "Parser.ml"
        ) = 
# 186 "Parser.mly"
                   (())
# 1435 "Parser.ml"
         in
        _menhir_goto_label_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv482)) : 'freshtv484)
    | T_lparen ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
    | T_and | T_assign | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_incr | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_semicolon | T_times ->
        _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)

and _menhir_run111 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_id ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | T_semicolon ->
        _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111

and _menhir_run115 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_id ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | T_semicolon ->
        _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115

and _menhir_goto_expression_e : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expression_e -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv451 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv447 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv445 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 55 "Parser.mly"
      (unit)
# 1502 "Parser.ml"
            ) = 
# 164 "Parser.mly"
                                        (())
# 1506 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv449 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv457 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 1521 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv453 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 1531 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_char_const ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_dcr ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_delete ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_double_const ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_false ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_id ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_incr ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_int_const ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_lparen ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_minus ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_negate ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_new ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_null ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_plus ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_string ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_times ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_true ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | T_semicolon ->
                _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv454)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv455 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 1585 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv456)) : 'freshtv458)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv463 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 1594 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv459 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 1604 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_char_const ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_dcr ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_delete ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_double_const ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_false ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_id ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_incr ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_int_const ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_lparen ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_minus ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_negate ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_new ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_null ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_plus ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_string ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_times ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_true ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | T_rparen ->
                _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv460)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv461 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 1658 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)) : 'freshtv464)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv471 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 1667 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv467 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 1677 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_break ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_char_const ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_continue ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_dcr ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_delete ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_double_const ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_false ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_id ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_if ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_incr ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_int_const ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_lbrace ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_lparen ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_minus ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_negate ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_new ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_null ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_plus ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_return ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_string ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_times ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_true ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | T_semicolon ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv465) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState129 in
                ((let _v : (
# 57 "Parser.mly"
      (unit)
# 1735 "Parser.ml"
                ) = 
# 174 "Parser.mly"
     (())
# 1739 "Parser.ml"
                 in
                _menhir_goto_statement_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)
            | T_for ->
                _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv468)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv469 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 1755 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv470)) : 'freshtv472)
    | MenhirState23 | MenhirState103 | MenhirState108 | MenhirState119 | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv475 * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : (
# 55 "Parser.mly"
      (unit)
# 1776 "Parser.ml"
            ) = 
# 157 "Parser.mly"
                              (())
# 1780 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)) : 'freshtv476)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv478)) : 'freshtv480)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expression_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "Parser.mly"
      (unit)
# 1796 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv443 * _menhir_state * (
# 63 "Parser.mly"
      (unit)
# 1804 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_comma ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv437 * _menhir_state * (
# 63 "Parser.mly"
      (unit)
# 1814 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_char_const ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_delete ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_double_const ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_false ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_id ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_int_const ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_lparen ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_minus ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_negate ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_new ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_null ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_plus ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_string ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_times ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | T_true ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv438)
    | T_rparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv439 * _menhir_state * (
# 63 "Parser.mly"
      (unit)
# 1864 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 64 "Parser.mly"
      (unit)
# 1870 "Parser.ml"
        ) = 
# 236 "Parser.mly"
                      (())
# 1874 "Parser.ml"
         in
        _menhir_goto_expression_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv441 * _menhir_state * (
# 63 "Parser.mly"
      (unit)
# 1884 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv435) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 1899 "Parser.ml"
    ) = 
# 252 "Parser.mly"
              (())
# 1903 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 1910 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_char_const ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_dcr ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_delete ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_double_const ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_false ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_id ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_incr ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_int_const ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_lparen ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_minus ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_negate ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_new ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_null ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_plus ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_string ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_times ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | T_true ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv433) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 1968 "Parser.ml"
    ) = 
# 255 "Parser.mly"
             (())
# 1972 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv431) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 69 "Parser.mly"
      (unit)
# 1986 "Parser.ml"
    ) = 
# 278 "Parser.mly"
                   (())
# 1990 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv429) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2004 "Parser.ml"
    ) = 
# 264 "Parser.mly"
           (())
# 2008 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv427) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2022 "Parser.ml"
    ) = 
# 262 "Parser.mly"
            (())
# 2026 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv425) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 69 "Parser.mly"
      (unit)
# 2040 "Parser.ml"
    ) = 
# 275 "Parser.mly"
                   (())
# 2044 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv423) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 69 "Parser.mly"
      (unit)
# 2058 "Parser.ml"
    ) = 
# 277 "Parser.mly"
                   (())
# 2062 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv421) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2076 "Parser.ml"
    ) = 
# 254 "Parser.mly"
            (())
# 2080 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)

and _menhir_run59 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv419) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2094 "Parser.ml"
    ) = 
# 256 "Parser.mly"
              (())
# 2098 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 69 "Parser.mly"
      (unit)
# 2112 "Parser.ml"
    ) = 
# 279 "Parser.mly"
                   (())
# 2116 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2130 "Parser.ml"
    ) = 
# 259 "Parser.mly"
             (())
# 2134 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)

and _menhir_run62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2148 "Parser.ml"
    ) = 
# 257 "Parser.mly"
           (())
# 2152 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 2159 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_char_const ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_dcr ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_delete ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_double_const ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_false ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_id ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_incr ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_int_const ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_lparen ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_minus ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_negate ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_new ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_null ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_plus ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_string ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_times ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_true ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run66 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2217 "Parser.ml"
    ) = 
# 260 "Parser.mly"
             (())
# 2221 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2235 "Parser.ml"
    ) = 
# 258 "Parser.mly"
           (())
# 2239 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2253 "Parser.ml"
    ) = 
# 261 "Parser.mly"
           (())
# 2257 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv408)

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 69 "Parser.mly"
      (unit)
# 2271 "Parser.ml"
    ) = 
# 276 "Parser.mly"
                   (())
# 2275 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)

and _menhir_run70 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2289 "Parser.ml"
    ) = 
# 253 "Parser.mly"
            (())
# 2293 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2307 "Parser.ml"
    ) = 
# 265 "Parser.mly"
              (())
# 2311 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv402)

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 69 "Parser.mly"
      (unit)
# 2325 "Parser.ml"
    ) = 
# 274 "Parser.mly"
               (())
# 2329 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 67 "Parser.mly"
      (unit)
# 2343 "Parser.ml"
    ) = 
# 263 "Parser.mly"
            (())
# 2347 "Parser.ml"
     in
    _menhir_goto_binary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)

and _menhir_goto_declaration_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 40 "Parser.mly"
      (unit)
# 2354 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv383 * _menhir_state * (
# 40 "Parser.mly"
      (unit)
# 2364 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_bool ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | T_char ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | T_double ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | T_int ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | T_void ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | T_addr | T_break | T_char_const | T_continue | T_dcr | T_delete | T_double_const | T_false | T_for | T_id | T_if | T_incr | T_int_const | T_lbrace | T_lparen | T_minus | T_negate | T_new | T_null | T_plus | T_rbrace | T_return | T_semicolon | T_string | T_times | T_true ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381 * _menhir_state * (
# 40 "Parser.mly"
      (unit)
# 2384 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : (
# 41 "Parser.mly"
      (unit)
# 2390 "Parser.ml"
            ) = 
# 89 "Parser.mly"
                        (())
# 2394 "Parser.ml"
             in
            _menhir_goto_declaration_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv384)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state * (
# 40 "Parser.mly"
      (unit)
# 2406 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_bool ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | T_char ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | T_double ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | T_eof ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv393 * _menhir_state * (
# 40 "Parser.mly"
      (unit)
# 2422 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState160 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv391 * _menhir_state * (
# 40 "Parser.mly"
      (unit)
# 2429 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : (
# 39 "Parser.mly"
      (unit)
# 2437 "Parser.ml"
            ) = 
# 79 "Parser.mly"
                             ( printf "A Program Runs"; () )
# 2441 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 39 "Parser.mly"
      (unit)
# 2449 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 39 "Parser.mly"
      (unit)
# 2457 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 39 "Parser.mly"
      (unit)
# 2465 "Parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv386)) : 'freshtv388)) : 'freshtv390)) : 'freshtv392)) : 'freshtv394)
        | T_int ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | T_void ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160) : 'freshtv396)
    | _ ->
        _menhir_fail ()

and _menhir_reduce95 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 56 "Parser.mly"
      (unit)
# 2484 "Parser.ml"
    ) = 
# 168 "Parser.mly"
     (())
# 2488 "Parser.ml"
     in
    _menhir_goto_statement_list_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_declarator : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 48 "Parser.mly"
      (unit)
# 2495 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 2505 "Parser.ml"
        )) * _menhir_state * (
# 48 "Parser.mly"
      (unit)
# 2509 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_comma ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv365) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_id ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146) : 'freshtv366)
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
            ((let _v : (
# 44 "Parser.mly"
      (unit)
# 2532 "Parser.ml"
            ) = 
# 103 "Parser.mly"
      (())
# 2536 "Parser.ml"
             in
            _menhir_goto_more_declarators_e _menhir_env _menhir_stack _v) : 'freshtv368)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv369 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 2546 "Parser.ml"
            )) * _menhir_state * (
# 48 "Parser.mly"
      (unit)
# 2550 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)) : 'freshtv372)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv375) * _menhir_state * (
# 48 "Parser.mly"
      (unit)
# 2559 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv373) * _menhir_state * (
# 48 "Parser.mly"
      (unit)
# 2565 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _2) = _menhir_stack in
        let _1 = () in
        let _v : (
# 44 "Parser.mly"
      (unit)
# 2572 "Parser.ml"
        ) = 
# 105 "Parser.mly"
                          (())
# 2576 "Parser.ml"
         in
        _menhir_goto_more_declarators_e _menhir_env _menhir_stack _v) : 'freshtv374)) : 'freshtv376)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * (
# 44 "Parser.mly"
      (unit)
# 2584 "Parser.ml"
        ))) * _menhir_state * (
# 48 "Parser.mly"
      (unit)
# 2588 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * (
# 44 "Parser.mly"
      (unit)
# 2594 "Parser.ml"
        ))) * _menhir_state * (
# 48 "Parser.mly"
      (unit)
# 2598 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : (
# 44 "Parser.mly"
      (unit)
# 2605 "Parser.ml"
        ) = 
# 104 "Parser.mly"
                                            (())
# 2609 "Parser.ml"
         in
        _menhir_goto_more_declarators_e _menhir_env _menhir_stack _v) : 'freshtv378)) : 'freshtv380)
    | _ ->
        _menhir_fail ()

and _menhir_goto_parameter_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 51 "Parser.mly"
      (unit)
# 2618 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv363 * _menhir_state * (
# 51 "Parser.mly"
      (unit)
# 2626 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_comma ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv357 * _menhir_state * (
# 51 "Parser.mly"
      (unit)
# 2636 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_bool ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_byref ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_char ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_double ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_int ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154) : 'freshtv358)
    | T_rparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359 * _menhir_state * (
# 51 "Parser.mly"
      (unit)
# 2660 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 53 "Parser.mly"
      (unit)
# 2666 "Parser.ml"
        ) = 
# 149 "Parser.mly"
                      (())
# 2670 "Parser.ml"
         in
        _menhir_goto_parameter_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361 * _menhir_state * (
# 51 "Parser.mly"
      (unit)
# 2680 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)

and _menhir_reduce40 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (
# 62 "Parser.mly"
      (unit)
# 2692 "Parser.ml"
    ) = 
# 195 "Parser.mly"
           (())
# 2696 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_char_const ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_dcr ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_delete ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_double_const ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_false ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_id ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_incr ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_int_const ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_lparen ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_minus ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_negate ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_new ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_null ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_plus ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_string ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_times ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_true ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | T_rparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv355) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState39 in
        ((let _v : (
# 64 "Parser.mly"
      (unit)
# 2748 "Parser.ml"
        ) = 
# 235 "Parser.mly"
      (())
# 2752 "Parser.ml"
         in
        _menhir_goto_expression_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_goto_unary_assignment : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 68 "Parser.mly"
      (unit)
# 2763 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState141 | MenhirState23 | MenhirState103 | MenhirState129 | MenhirState127 | MenhirState125 | MenhirState123 | MenhirState119 | MenhirState108 | MenhirState106 | MenhirState27 | MenhirState32 | MenhirState90 | MenhirState35 | MenhirState86 | MenhirState39 | MenhirState42 | MenhirState79 | MenhirState77 | MenhirState75 | MenhirState63 | MenhirState50 | MenhirState47 | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv349 * _menhir_state * (
# 68 "Parser.mly"
      (unit)
# 2773 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_char_const ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_delete ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_double_const ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_false ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_id ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_int_const ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_lparen ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_minus ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_negate ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_new ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_null ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_plus ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_string ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_times ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | T_true ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv350)
    | MenhirState142 | MenhirState107 | MenhirState100 | MenhirState95 | MenhirState92 | MenhirState91 | MenhirState88 | MenhirState87 | MenhirState82 | MenhirState81 | MenhirState48 | MenhirState51 | MenhirState80 | MenhirState78 | MenhirState76 | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv353 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 2823 "Parser.ml"
        )) * _menhir_state * (
# 68 "Parser.mly"
      (unit)
# 2827 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv351 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 2833 "Parser.ml"
        )) * _menhir_state * (
# 68 "Parser.mly"
      (unit)
# 2837 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : (
# 62 "Parser.mly"
      (unit)
# 2843 "Parser.ml"
        ) = 
# 209 "Parser.mly"
                                  (())
# 2847 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "Parser.mly"
      (unit)
# 2856 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * _menhir_state * (
# 68 "Parser.mly"
      (unit)
# 2866 "Parser.ml"
        )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 2870 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | T_colon | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269 * _menhir_state * (
# 68 "Parser.mly"
      (unit)
# 2928 "Parser.ml"
            )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 2932 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
            let _v : (
# 62 "Parser.mly"
      (unit)
# 2938 "Parser.ml"
            ) = 
# 208 "Parser.mly"
                                  (())
# 2942 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv272)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 2954 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 2958 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_colon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 2972 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 2976 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState51 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_char_const ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_dcr ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_delete ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_double_const ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_false ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_id ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_incr ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_int_const ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_lparen ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_minus ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_negate ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_new ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_null ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_plus ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_string ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_times ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | T_true ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv274)
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv276)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3076 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3080 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | T_rbrack ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv279 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3136 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3140 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState64 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3148 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3152 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 62 "Parser.mly"
      (unit)
# 3161 "Parser.ml"
            ) = 
# 205 "Parser.mly"
                                              (())
# 3165 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)) : 'freshtv280)
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv282)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3179 "Parser.ml"
        )) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 3183 "Parser.ml"
        )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3187 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | T_colon | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3245 "Parser.ml"
            )) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 3249 "Parser.ml"
            )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3253 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _1), _, _2), _, _3) = _menhir_stack in
            let _v : (
# 62 "Parser.mly"
      (unit)
# 3259 "Parser.ml"
            ) = 
# 207 "Parser.mly"
                                            (())
# 3263 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv286)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3275 "Parser.ml"
        )) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 3279 "Parser.ml"
        )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3283 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | T_colon | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3341 "Parser.ml"
            )) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 3345 "Parser.ml"
            )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3349 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _1), _, _2), _, _3) = _menhir_stack in
            let _v : (
# 62 "Parser.mly"
      (unit)
# 3355 "Parser.ml"
            ) = 
# 210 "Parser.mly"
                                              (())
# 3359 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv290)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv293 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3371 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3375 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3379 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | T_colon | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv291 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3437 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3441 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3445 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, _1), _), _, _3), _), _, _5) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 62 "Parser.mly"
      (unit)
# 3453 "Parser.ml"
            ) = 
# 212 "Parser.mly"
                                                       (())
# 3457 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv294)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv297 * _menhir_state * (
# 66 "Parser.mly"
      (unit)
# 3469 "Parser.ml"
        )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3473 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | T_colon | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv295 * _menhir_state * (
# 66 "Parser.mly"
      (unit)
# 3531 "Parser.ml"
            )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3535 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
            let _v : (
# 62 "Parser.mly"
      (unit)
# 3541 "Parser.ml"
            ) = 
# 206 "Parser.mly"
                                (())
# 3545 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv298)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv301 * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3557 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | T_colon | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv299 * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3615 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _1 = () in
            let _v : (
# 62 "Parser.mly"
      (unit)
# 3622 "Parser.ml"
            ) = 
# 214 "Parser.mly"
                          (())
# 3626 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv302)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv305 * _menhir_state * (
# 63 "Parser.mly"
      (unit)
# 3638 "Parser.ml"
        ))) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3642 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | T_comma | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv303 * _menhir_state * (
# 63 "Parser.mly"
      (unit)
# 3698 "Parser.ml"
            ))) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3702 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (
# 63 "Parser.mly"
      (unit)
# 3709 "Parser.ml"
            ) = 
# 230 "Parser.mly"
                                         (())
# 3713 "Parser.ml"
             in
            _menhir_goto_expression_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv306)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3725 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv307 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3783 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : (
# 63 "Parser.mly"
      (unit)
# 3789 "Parser.ml"
            ) = 
# 231 "Parser.mly"
                 (())
# 3793 "Parser.ml"
             in
            _menhir_goto_expression_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv310)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv313 * _menhir_state) * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 3805 "Parser.ml"
        ))) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3809 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | T_colon | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv311 * _menhir_state) * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 3867 "Parser.ml"
            ))) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3871 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, _2), _, _4) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 62 "Parser.mly"
      (unit)
# 3879 "Parser.ml"
            ) = 
# 211 "Parser.mly"
                                              (())
# 3883 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv314)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv319 * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3895 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv317 * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3951 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState92 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv315 * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3959 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 62 "Parser.mly"
      (unit)
# 3968 "Parser.ml"
            ) = 
# 196 "Parser.mly"
                                   (())
# 3972 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)) : 'freshtv318)
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv320)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 3986 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_rbrack ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 4042 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState95 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv321) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 4050 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 61 "Parser.mly"
      (unit)
# 4059 "Parser.ml"
            ) = 
# 219 "Parser.mly"
                                     (())
# 4063 "Parser.ml"
             in
            _menhir_goto_array_expr_index_e _menhir_env _menhir_stack _v) : 'freshtv322)) : 'freshtv324)
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv326)
    | MenhirState23 | MenhirState103 | MenhirState108 | MenhirState119 | MenhirState123 | MenhirState125 | MenhirState127 | MenhirState129 | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 4077 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv327 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 4135 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : 'tv_expression_e = 
# 224 "Parser.mly"
                  (())
# 4141 "Parser.ml"
             in
            _menhir_goto_expression_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv330)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * _menhir_state)) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 4153 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv331 * _menhir_state)) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 4209 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState107 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_break ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_char_const ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_continue ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_dcr ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_delete ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_double_const ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_false ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_id ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_if ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_incr ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_int_const ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_lbrace ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_lparen ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_minus ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_negate ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_new ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_null ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_plus ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_return ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_string ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_times ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_true ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_for ->
                _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | T_semicolon ->
                _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv332)
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv334)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 4281 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_assign ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_comma ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_div ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_div_assign ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_eq ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_gt ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_gteq ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_lbrack ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_lt ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_lteq ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_min_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_minus ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_mod ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_mod_assign ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_mul_assign ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_neq ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_or ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_plu_assign ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_plus ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_qmark ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_times ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | T_rbrack ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv345 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 4339 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : (
# 65 "Parser.mly"
      (unit)
# 4345 "Parser.ml"
            ) = 
# 240 "Parser.mly"
               (())
# 4349 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv343) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 65 "Parser.mly"
      (unit)
# 4357 "Parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv341 * _menhir_state)) * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 4364 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_rbrack ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv337 * _menhir_state)) * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 4374 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv335 * _menhir_state)) * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 4381 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, _3) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 48 "Parser.mly"
      (unit)
# 4390 "Parser.ml"
                ) = 
# 124 "Parser.mly"
                                                 (())
# 4394 "Parser.ml"
                 in
                _menhir_goto_declarator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)) : 'freshtv338)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv339 * _menhir_state)) * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 4404 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)) : 'freshtv344)) : 'freshtv346)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142) : 'freshtv348)
    | _ ->
        _menhir_fail ()

and _menhir_goto_unary_operator : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 66 "Parser.mly"
      (unit)
# 4418 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv267 * _menhir_state * (
# 66 "Parser.mly"
      (unit)
# 4426 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_char_const ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_dcr ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_delete ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_double_const ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_false ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_id ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_incr ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_int_const ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_lparen ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_minus ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_negate ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_new ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_null ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_plus ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_string ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_times ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | T_true ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv268)

and _menhir_goto_declaration : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "Parser.mly"
      (unit)
# 4475 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState160 | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state * (
# 40 "Parser.mly"
      (unit)
# 4484 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 42 "Parser.mly"
      (unit)
# 4490 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state * (
# 40 "Parser.mly"
      (unit)
# 4496 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_2 : (
# 42 "Parser.mly"
      (unit)
# 4502 "Parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 40 "Parser.mly"
      (unit)
# 4508 "Parser.ml"
        ) = 
# 83 "Parser.mly"
                                    ( () )
# 4512 "Parser.ml"
         in
        _menhir_goto_declaration_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
    | MenhirState0 | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 42 "Parser.mly"
      (unit)
# 4522 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : (
# 42 "Parser.mly"
      (unit)
# 4530 "Parser.ml"
        )) = _v in
        ((let _v : (
# 40 "Parser.mly"
      (unit)
# 4535 "Parser.ml"
        ) = 
# 84 "Parser.mly"
                   ( () )
# 4539 "Parser.ml"
         in
        _menhir_goto_declaration_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)) : 'freshtv266)
    | _ ->
        _menhir_fail ()

and _menhir_goto_declaration_list_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "Parser.mly"
      (unit)
# 4548 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv257 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 4556 "Parser.ml"
    )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 4560 "Parser.ml"
    )))) * _menhir_state * (
# 41 "Parser.mly"
      (unit)
# 4564 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    (_menhir_reduce95 _menhir_env (Obj.magic _menhir_stack) MenhirState22 : 'freshtv258)

and _menhir_run140 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_lbrack ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_char_const ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_dcr ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_delete ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_double_const ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_false ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_id ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_incr ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_int_const ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_lparen ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_minus ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_negate ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_new ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_null ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_plus ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_string ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_times ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | T_true ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv252)
    | T_comma | T_semicolon ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 48 "Parser.mly"
      (unit)
# 4628 "Parser.ml"
        ) = 
# 125 "Parser.mly"
           (())
# 4632 "Parser.ml"
         in
        _menhir_goto_declarator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)

and _menhir_goto_parameter : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 52 "Parser.mly"
      (unit)
# 4646 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state * (
# 51 "Parser.mly"
      (unit)
# 4655 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 52 "Parser.mly"
      (unit)
# 4661 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state * (
# 51 "Parser.mly"
      (unit)
# 4667 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_3 : (
# 52 "Parser.mly"
      (unit)
# 4673 "Parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _2 = () in
        let _v : (
# 51 "Parser.mly"
      (unit)
# 4680 "Parser.ml"
        ) = 
# 138 "Parser.mly"
                                       (())
# 4684 "Parser.ml"
         in
        _menhir_goto_parameter_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 52 "Parser.mly"
      (unit)
# 4694 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : (
# 52 "Parser.mly"
      (unit)
# 4702 "Parser.ml"
        )) = _v in
        ((let _v : (
# 51 "Parser.mly"
      (unit)
# 4707 "Parser.ml"
        ) = 
# 139 "Parser.mly"
                (())
# 4711 "Parser.ml"
         in
        _menhir_goto_parameter_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_array_expr_index_e : _menhir_env -> 'ttv_tail -> (
# 61 "Parser.mly"
      (unit)
# 4725 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv241 * _menhir_state) * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 4732 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_v : (
# 61 "Parser.mly"
      (unit)
# 4737 "Parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv239 * _menhir_state) * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 4743 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_3 : (
# 61 "Parser.mly"
      (unit)
# 4748 "Parser.ml"
    )) = _v in
    ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
    let _1 = () in
    let _v : (
# 62 "Parser.mly"
      (unit)
# 4755 "Parser.ml"
    ) = 
# 213 "Parser.mly"
                                           (())
# 4759 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)) : 'freshtv242)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv237) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 62 "Parser.mly"
      (unit)
# 4773 "Parser.ml"
    ) = 
# 197 "Parser.mly"
             (())
# 4777 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv235) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 66 "Parser.mly"
      (unit)
# 4791 "Parser.ml"
    ) = 
# 245 "Parser.mly"
              (())
# 4795 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 62 "Parser.mly"
      (unit)
# 4809 "Parser.ml"
    ) = 
# 203 "Parser.mly"
               (())
# 4813 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv231) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 66 "Parser.mly"
      (unit)
# 4827 "Parser.ml"
    ) = 
# 246 "Parser.mly"
             (())
# 4831 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv229) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 62 "Parser.mly"
      (unit)
# 4845 "Parser.ml"
    ) = 
# 199 "Parser.mly"
             (())
# 4849 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv230)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_bool ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | T_char ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | T_double ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | T_int ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | T_void ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv227) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 66 "Parser.mly"
      (unit)
# 4884 "Parser.ml"
    ) = 
# 248 "Parser.mly"
               (())
# 4888 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv225) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 66 "Parser.mly"
      (unit)
# 4902 "Parser.ml"
    ) = 
# 247 "Parser.mly"
              (())
# 4906 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_bool ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_char ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_char_const ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_dcr ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_delete ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_double ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_double_const ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_false ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_id ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_incr ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_int ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_int_const ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_lparen ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_minus ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_negate ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_new ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_null ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_plus ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_string ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_times ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_true ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | T_void ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv223) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 62 "Parser.mly"
      (unit)
# 4977 "Parser.ml"
    ) = 
# 200 "Parser.mly"
                  (())
# 4981 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv221) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 68 "Parser.mly"
      (unit)
# 4995 "Parser.ml"
    ) = 
# 269 "Parser.mly"
             (())
# 4999 "Parser.ml"
     in
    _menhir_goto_unary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_lparen ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
    | T_and | T_assign | T_colon | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_incr | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon | T_times ->
        _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv217) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 62 "Parser.mly"
      (unit)
# 5031 "Parser.ml"
    ) = 
# 198 "Parser.mly"
              (())
# 5035 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv215) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 62 "Parser.mly"
      (unit)
# 5049 "Parser.ml"
    ) = 
# 202 "Parser.mly"
                     (())
# 5053 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_char_const ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_dcr ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_delete ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_double_const ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_false ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_id ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_incr ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_int_const ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_lparen ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_minus ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_negate ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_new ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_null ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_plus ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_string ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_times ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | T_true ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv213) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 68 "Parser.mly"
      (unit)
# 5114 "Parser.ml"
    ) = 
# 270 "Parser.mly"
            (())
# 5118 "Parser.ml"
     in
    _menhir_goto_unary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv211) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 62 "Parser.mly"
      (unit)
# 5132 "Parser.ml"
    ) = 
# 201 "Parser.mly"
                   (())
# 5136 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv209) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 66 "Parser.mly"
      (unit)
# 5150 "Parser.ml"
    ) = 
# 244 "Parser.mly"
             (())
# 5154 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)

and _menhir_goto_parameter_list_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "Parser.mly"
      (unit)
# 5161 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv207 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5169 "Parser.ml"
    )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5173 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_rparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv203 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5183 "Parser.ml"
        )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5187 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_lbrace ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv189 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5197 "Parser.ml"
            )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5201 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_bool ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | T_char ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | T_double ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | T_int ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | T_void ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | T_addr | T_break | T_char_const | T_continue | T_dcr | T_delete | T_double_const | T_false | T_for | T_id | T_if | T_incr | T_int_const | T_lbrace | T_lparen | T_minus | T_negate | T_new | T_null | T_plus | T_rbrace | T_return | T_semicolon | T_string | T_times | T_true ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState19 in
                ((let _v : (
# 41 "Parser.mly"
      (unit)
# 5223 "Parser.ml"
                ) = 
# 88 "Parser.mly"
       (())
# 5227 "Parser.ml"
                 in
                _menhir_goto_declaration_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv190)
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv199 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5239 "Parser.ml"
            )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5243 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv197 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5250 "Parser.ml"
            )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5254 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _4) = _menhir_stack in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : (
# 49 "Parser.mly"
      (unit)
# 5264 "Parser.ml"
            ) = 
# 129 "Parser.mly"
                                                                    (())
# 5268 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 49 "Parser.mly"
      (unit)
# 5276 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv193) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 49 "Parser.mly"
      (unit)
# 5284 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 49 "Parser.mly"
      (unit)
# 5292 "Parser.ml"
            )) = _v in
            ((let _v : (
# 42 "Parser.mly"
      (unit)
# 5297 "Parser.ml"
            ) = 
# 94 "Parser.mly"
                           ( () )
# 5301 "Parser.ml"
             in
            _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)) : 'freshtv194)) : 'freshtv196)) : 'freshtv198)) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv201 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5311 "Parser.ml"
            )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5315 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv205 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5326 "Parser.ml"
        )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5330 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)) : 'freshtv208)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_bool ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | T_char ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | T_double ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | T_int ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_goto_pointer_asterisk_e : _menhir_env -> 'ttv_tail -> (
# 46 "Parser.mly"
      (unit)
# 5357 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv185 * _menhir_state * (
# 47 "Parser.mly"
      (unit)
# 5365 "Parser.ml"
    )) * (
# 46 "Parser.mly"
      (unit)
# 5369 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_times ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * (
# 46 "Parser.mly"
      (unit)
# 5379 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * (
# 46 "Parser.mly"
      (unit)
# 5386 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _1) = _menhir_stack in
        let _2 = () in
        let _v : (
# 46 "Parser.mly"
      (unit)
# 5393 "Parser.ml"
        ) = 
# 114 "Parser.mly"
                                    (())
# 5397 "Parser.ml"
         in
        _menhir_goto_pointer_asterisk_e _menhir_env _menhir_stack _v) : 'freshtv154)) : 'freshtv156)
    | T_and | T_assign | T_colon | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_id | T_incr | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_paren | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state * (
# 47 "Parser.mly"
      (unit)
# 5405 "Parser.ml"
        )) * (
# 46 "Parser.mly"
      (unit)
# 5409 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _2) = _menhir_stack in
        let _v : (
# 45 "Parser.mly"
      (unit)
# 5415 "Parser.ml"
        ) = 
# 109 "Parser.mly"
                                   (())
# 5419 "Parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 45 "Parser.mly"
      (unit)
# 5427 "Parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState10 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5436 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_id ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5446 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv157 * _menhir_state) * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5453 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (
# 52 "Parser.mly"
      (unit)
# 5461 "Parser.ml"
                ) = 
# 143 "Parser.mly"
                        (())
# 5465 "Parser.ml"
                 in
                _menhir_goto_parameter _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)) : 'freshtv160)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5475 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
        | MenhirState30 | MenhirState35 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv167 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5484 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv165 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5490 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : (
# 50 "Parser.mly"
      (unit)
# 5496 "Parser.ml"
            ) = 
# 133 "Parser.mly"
            (())
# 5500 "Parser.ml"
             in
            _menhir_goto_result_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)
        | MenhirState0 | MenhirState160 | MenhirState19 | MenhirState137 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv169 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5508 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_id ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv170)
        | MenhirState9 | MenhirState154 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv177 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5524 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_id ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv173 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5534 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv171 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5541 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
                let _2 = () in
                let _v : (
# 52 "Parser.mly"
      (unit)
# 5548 "Parser.ml"
                ) = 
# 144 "Parser.mly"
                 (())
# 5552 "Parser.ml"
                 in
                _menhir_goto_parameter _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)) : 'freshtv174)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv175 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5562 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)
        | _ ->
            _menhir_fail ()) : 'freshtv180)) : 'freshtv182)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state * (
# 47 "Parser.mly"
      (unit)
# 5575 "Parser.ml"
        )) * (
# 46 "Parser.mly"
      (unit)
# 5579 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)

and _menhir_goto_result_type : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 50 "Parser.mly"
      (unit)
# 5587 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState160 | MenhirState137 | MenhirState19 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5597 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_id ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5607 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_lparen ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv129 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5617 "Parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | T_bool ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                | T_byref ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                | T_char ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                | T_double ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                | T_int ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                | T_rparen ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv127) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState9 in
                    ((let _v : (
# 53 "Parser.mly"
      (unit)
# 5639 "Parser.ml"
                    ) = 
# 148 "Parser.mly"
     (())
# 5643 "Parser.ml"
                     in
                    _menhir_goto_parameter_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv130)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv131 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5657 "Parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5668 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)) : 'freshtv138)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state) * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5677 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_lbrack ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_char_const ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_dcr ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_delete ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_double_const ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_false ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_id ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_incr ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_int_const ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_lparen ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_minus ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_negate ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_new ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_null ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_plus ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_string ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_times ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | T_true ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv140)
        | T_and | T_assign | T_colon | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_incr | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon | T_times ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv141) = Obj.magic _menhir_stack in
            ((let _v : (
# 61 "Parser.mly"
      (unit)
# 5734 "Parser.ml"
            ) = 
# 218 "Parser.mly"
        (())
# 5738 "Parser.ml"
             in
            _menhir_goto_array_expr_index_e _menhir_env _menhir_stack _v) : 'freshtv142)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv143 * _menhir_state) * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5748 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)) : 'freshtv146)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv151 * _menhir_state) * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5757 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_paren ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv147 * _menhir_state) * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5767 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_char_const ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_dcr ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_delete ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_double_const ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_false ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_id ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_incr ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_int_const ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_lparen ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_minus ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_negate ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_new ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_null ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_plus ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_string ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_times ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | T_true ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv148)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv149 * _menhir_state) * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 5819 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)) : 'freshtv152)
    | _ ->
        _menhir_fail ()

and _menhir_goto_basic_type : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 47 "Parser.mly"
      (unit)
# 5829 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv125 * _menhir_state * (
# 47 "Parser.mly"
      (unit)
# 5837 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
    ((let _v : (
# 46 "Parser.mly"
      (unit)
# 5844 "Parser.ml"
    ) = 
# 113 "Parser.mly"
      (())
# 5848 "Parser.ml"
     in
    _menhir_goto_pointer_asterisk_e _menhir_env _menhir_stack _v) : 'freshtv124)) : 'freshtv126)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state * (
# 40 "Parser.mly"
      (unit)
# 5860 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state * (
# 51 "Parser.mly"
      (unit)
# 5869 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * (
# 44 "Parser.mly"
      (unit)
# 5878 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv18)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv20)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 5890 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 45 "Parser.mly"
      (unit)
# 5904 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * (
# 40 "Parser.mly"
      (unit)
# 5913 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv29 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5922 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv31 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5931 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv33 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5940 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv35 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5949 "Parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv38)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv43 * _menhir_state)) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 5972 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state)) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 5981 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state) * _menhir_state * (
# 56 "Parser.mly"
      (unit)
# 5995 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6009 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6018 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6027 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv59 * _menhir_state) * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 6036 "Parser.ml"
        ))) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6040 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv61 * _menhir_state) * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 6049 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6058 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv65 * _menhir_state * (
# 63 "Parser.mly"
      (unit)
# 6067 "Parser.ml"
        ))) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6071 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * (
# 63 "Parser.mly"
      (unit)
# 6080 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6089 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * (
# 66 "Parser.mly"
      (unit)
# 6098 "Parser.ml"
        )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6102 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv73 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6111 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6115 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6119 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv75 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6128 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6132 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv77 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6141 "Parser.ml"
        )) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 6145 "Parser.ml"
        )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6149 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6158 "Parser.ml"
        )) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 6162 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6171 "Parser.ml"
        )) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6175 "Parser.ml"
        )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6179 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6188 "Parser.ml"
        )) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6192 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6201 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6205 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6214 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6223 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6227 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6236 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * (
# 68 "Parser.mly"
      (unit)
# 6245 "Parser.ml"
        )) * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6249 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * (
# 68 "Parser.mly"
      (unit)
# 6258 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * (
# 66 "Parser.mly"
      (unit)
# 6267 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv106)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv111 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 6305 "Parser.ml"
        )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 6309 "Parser.ml"
        )))) * _menhir_state * (
# 41 "Parser.mly"
      (unit)
# 6313 "Parser.ml"
        )) * _menhir_state * (
# 56 "Parser.mly"
      (unit)
# 6317 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv113 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 6326 "Parser.ml"
        )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 6330 "Parser.ml"
        )))) * _menhir_state * (
# 41 "Parser.mly"
      (unit)
# 6334 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv115 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 6343 "Parser.ml"
        )))) * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 6347 "Parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state * (
# 50 "Parser.mly"
      (unit)
# 6361 "Parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv122)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 50 "Parser.mly"
      (unit)
# 6380 "Parser.ml"
    ) = 
# 134 "Parser.mly"
             (())
# 6384 "Parser.ml"
     in
    _menhir_goto_result_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 47 "Parser.mly"
      (unit)
# 6398 "Parser.ml"
    ) = 
# 117 "Parser.mly"
                  (())
# 6402 "Parser.ml"
     in
    _menhir_goto_basic_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 47 "Parser.mly"
      (unit)
# 6416 "Parser.ml"
    ) = 
# 120 "Parser.mly"
               (())
# 6420 "Parser.ml"
     in
    _menhir_goto_basic_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 47 "Parser.mly"
      (unit)
# 6434 "Parser.ml"
    ) = 
# 119 "Parser.mly"
             (())
# 6438 "Parser.ml"
     in
    _menhir_goto_basic_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 47 "Parser.mly"
      (unit)
# 6452 "Parser.ml"
    ) = 
# 118 "Parser.mly"
             (())
# 6456 "Parser.ml"
     in
    _menhir_goto_basic_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 39 "Parser.mly"
      (unit)
# 6475 "Parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_bool ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | T_char ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | T_double ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | T_int ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | T_void ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 220 "/Users/CrisTsan/.opam/system/lib/menhir/standard.mly"
  


# 6513 "Parser.ml"
