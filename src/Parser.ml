
exception Error

let _eRR =
  Error

type token = 
  | T_void
  | T_true
  | T_times
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
  | T_else
  | T_double_const
  | T_double
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
  | MenhirState164
  | MenhirState160
  | MenhirState154
  | MenhirState153
  | MenhirState151
  | MenhirState149
  | MenhirState145
  | MenhirState143
  | MenhirState141
  | MenhirState139
  | MenhirState137
  | MenhirState133
  | MenhirState129
  | MenhirState125
  | MenhirState122
  | MenhirState121
  | MenhirState120
  | MenhirState117
  | MenhirState116
  | MenhirState114
  | MenhirState110
  | MenhirState109
  | MenhirState108
  | MenhirState105
  | MenhirState104
  | MenhirState103
  | MenhirState102
  | MenhirState101
  | MenhirState100
  | MenhirState99
  | MenhirState97
  | MenhirState96
  | MenhirState95
  | MenhirState94
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState89
  | MenhirState88
  | MenhirState87
  | MenhirState85
  | MenhirState84
  | MenhirState83
  | MenhirState82
  | MenhirState81
  | MenhirState80
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState72
  | MenhirState71
  | MenhirState70
  | MenhirState69
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState64
  | MenhirState63
  | MenhirState62
  | MenhirState61
  | MenhirState60
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState52
  | MenhirState45
  | MenhirState41
  | MenhirState37
  | MenhirState34
  | MenhirState32
  | MenhirState29
  | MenhirState24
  | MenhirState23
  | MenhirState20
  | MenhirState14
  | MenhirState13
  | MenhirState10
  | MenhirState9
  | MenhirState0

let rec _menhir_goto_id_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 74 "Parser.mly"
      (unit)
# 159 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv613 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 169 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv609 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 179 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv607 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 186 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 69 "Parser.mly"
      (unit)
# 194 "Parser.ml"
            ) = 
# 181 "Parser.mly"
                                  (())
# 198 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv608)) : 'freshtv610)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv611 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 208 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv612)) : 'freshtv614)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv621 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 217 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv617 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 227 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv615 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 234 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 69 "Parser.mly"
      (unit)
# 242 "Parser.ml"
            ) = 
# 182 "Parser.mly"
                               (())
# 246 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv616)) : 'freshtv618)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv619 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 256 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv620)) : 'freshtv622)
    | _ ->
        _menhir_fail ()

and _menhir_goto_more_declarators : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 58 "Parser.mly"
      (unit)
# 266 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv601 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 276 "Parser.ml"
        )) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 280 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv597 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 290 "Parser.ml"
            )) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 294 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv595 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 301 "Parser.ml"
            )) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 305 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
            let _3 = () in
            let _v : (
# 56 "Parser.mly"
      (unit)
# 312 "Parser.ml"
            ) = 
# 113 "Parser.mly"
                                          (())
# 316 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv593) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 56 "Parser.mly"
      (unit)
# 324 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv591) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 56 "Parser.mly"
      (unit)
# 332 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv589) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 56 "Parser.mly"
      (unit)
# 340 "Parser.ml"
            )) = _v in
            ((let _v : (
# 55 "Parser.mly"
      (unit)
# 345 "Parser.ml"
            ) = 
# 107 "Parser.mly"
                           ( () )
# 349 "Parser.ml"
             in
            _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv590)) : 'freshtv592)) : 'freshtv594)) : 'freshtv596)) : 'freshtv598)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv599 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 359 "Parser.ml"
            )) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 363 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv600)) : 'freshtv602)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv605 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 372 "Parser.ml"
        ))) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 376 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv603 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 382 "Parser.ml"
        ))) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 386 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : (
# 58 "Parser.mly"
      (unit)
# 393 "Parser.ml"
        ) = 
# 118 "Parser.mly"
                                          (())
# 397 "Parser.ml"
         in
        _menhir_goto_more_declarators _menhir_env _menhir_stack _menhir_s _v) : 'freshtv604)) : 'freshtv606)
    | _ ->
        _menhir_fail ()

and _menhir_goto_else_part_e : _menhir_env -> 'ttv_tail -> (
# 72 "Parser.mly"
      (unit)
# 406 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv587 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 413 "Parser.ml"
    )) * _menhir_state) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 417 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_v : (
# 72 "Parser.mly"
      (unit)
# 422 "Parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv585 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 428 "Parser.ml"
    )) * _menhir_state) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 432 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_6 : (
# 72 "Parser.mly"
      (unit)
# 437 "Parser.ml"
    )) = _v in
    ((let ((((_menhir_stack, _menhir_s), _, _3), _), _, _5) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _1 = () in
    let _v : (
# 69 "Parser.mly"
      (unit)
# 446 "Parser.ml"
    ) = 
# 178 "Parser.mly"
                                                              (())
# 450 "Parser.ml"
     in
    _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv586)) : 'freshtv588)

and _menhir_goto_label_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 73 "Parser.mly"
      (unit)
# 457 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv583 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 465 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_for ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 475 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_lparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv575 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 485 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_char_const ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_dcr ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_delete ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_double_const ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_false ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_id ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_lparen ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_minus ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_negate ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_new ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_null ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_plus ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_semicolon ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv576)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv577 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 539 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv578)) : 'freshtv580)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 550 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv582)) : 'freshtv584)

and _menhir_reduce62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 74 "Parser.mly"
      (unit)
# 560 "Parser.ml"
    ) = 
# 209 "Parser.mly"
       (())
# 564 "Parser.ml"
     in
    _menhir_goto_id_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_run126 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv573) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 74 "Parser.mly"
      (unit)
# 578 "Parser.ml"
    ) = 
# 210 "Parser.mly"
           (())
# 582 "Parser.ml"
     in
    _menhir_goto_id_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)

and _menhir_reduce58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_expression_e = 
# 244 "Parser.mly"
     (())
# 591 "Parser.ml"
     in
    _menhir_goto_expression_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_binary_assignment : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 83 "Parser.mly"
      (unit)
# 598 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv571 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 606 "Parser.ml"
    )) * _menhir_state * (
# 83 "Parser.mly"
      (unit)
# 610 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv572)

and _menhir_goto_statement_list_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 70 "Parser.mly"
      (unit)
# 659 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv563 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 669 "Parser.ml"
        )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 673 "Parser.ml"
        )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 677 "Parser.ml"
        )) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 681 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_break ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_char_const ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_continue ->
            _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_delete ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_double_const ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_false ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_id ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_if ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_int_const ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_lbrace ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_lparen ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_minus ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_negate ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_new ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_null ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_plus ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_rbrace ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv561 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 729 "Parser.ml"
            )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 733 "Parser.ml"
            )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 737 "Parser.ml"
            )) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 741 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState24 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv559 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 749 "Parser.ml"
            )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 753 "Parser.ml"
            )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 757 "Parser.ml"
            )) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 761 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s, _1), _, _4), _, _7), _, _8) = _menhir_stack in
            let _9 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : (
# 68 "Parser.mly"
      (unit)
# 773 "Parser.ml"
            ) = 
# 171 "Parser.mly"
                                                                                                              (())
# 777 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv557) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 68 "Parser.mly"
      (unit)
# 785 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv555) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 68 "Parser.mly"
      (unit)
# 793 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv553) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 68 "Parser.mly"
      (unit)
# 801 "Parser.ml"
            )) = _v in
            ((let _v : (
# 55 "Parser.mly"
      (unit)
# 806 "Parser.ml"
            ) = 
# 109 "Parser.mly"
                           ( () )
# 810 "Parser.ml"
             in
            _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv554)) : 'freshtv556)) : 'freshtv558)) : 'freshtv560)) : 'freshtv562)
        | T_return ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_semicolon ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_string ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_times ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_true ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_for ->
            _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv564)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv569 * _menhir_state) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 834 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_break ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_char_const ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_continue ->
            _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_delete ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_double_const ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_false ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_id ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_if ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_int_const ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_lbrace ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_lparen ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_minus ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_negate ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_new ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_null ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_plus ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_rbrace ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv567 * _menhir_state) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 882 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState117 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv565 * _menhir_state) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 890 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 69 "Parser.mly"
      (unit)
# 899 "Parser.ml"
            ) = 
# 177 "Parser.mly"
                                         (())
# 903 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)) : 'freshtv568)
        | T_return ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_semicolon ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_string ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_times ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_true ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | T_for ->
            _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv570)
    | _ ->
        _menhir_fail ()

and _menhir_reduce24 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 932 "Parser.ml"
    ) = 
# 214 "Parser.mly"
           (())
# 936 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_bool ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_byref ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_char ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_double ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_int ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_rparen ->
        _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_goto_unary_assignment : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 82 "Parser.mly"
      (unit)
# 965 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState153 | MenhirState24 | MenhirState117 | MenhirState143 | MenhirState141 | MenhirState139 | MenhirState137 | MenhirState133 | MenhirState122 | MenhirState120 | MenhirState29 | MenhirState34 | MenhirState108 | MenhirState37 | MenhirState52 | MenhirState101 | MenhirState99 | MenhirState96 | MenhirState94 | MenhirState91 | MenhirState89 | MenhirState87 | MenhirState84 | MenhirState82 | MenhirState80 | MenhirState77 | MenhirState75 | MenhirState71 | MenhirState69 | MenhirState66 | MenhirState64 | MenhirState62 | MenhirState60 | MenhirState57 | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv547 * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 975 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_char_const ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_delete ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_double_const ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_false ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_id ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_int_const ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_lparen ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_minus ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_negate ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_new ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_null ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_plus ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_string ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_times ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_true ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv548)
    | MenhirState154 | MenhirState121 | MenhirState145 | MenhirState114 | MenhirState110 | MenhirState109 | MenhirState105 | MenhirState104 | MenhirState103 | MenhirState61 | MenhirState65 | MenhirState102 | MenhirState85 | MenhirState100 | MenhirState97 | MenhirState95 | MenhirState92 | MenhirState90 | MenhirState88 | MenhirState83 | MenhirState81 | MenhirState78 | MenhirState76 | MenhirState72 | MenhirState70 | MenhirState67 | MenhirState63 | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv551 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1025 "Parser.ml"
        )) * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 1029 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv549 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1035 "Parser.ml"
        )) * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 1039 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 1045 "Parser.ml"
        ) = 
# 228 "Parser.mly"
                                  (())
# 1049 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv550)) : 'freshtv552)
    | _ ->
        _menhir_fail ()

and _menhir_goto_unary_operator : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 80 "Parser.mly"
      (unit)
# 1058 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv545 * _menhir_state * (
# 80 "Parser.mly"
      (unit)
# 1066 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv546)

and _menhir_goto_parameter_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 65 "Parser.mly"
      (unit)
# 1115 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv543 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 1123 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_comma ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv537 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 1133 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_bool ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | T_byref ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | T_char ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | T_double ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | T_int ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv538)
    | T_rparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv539 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 1157 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 67 "Parser.mly"
      (unit)
# 1163 "Parser.ml"
        ) = 
# 167 "Parser.mly"
                      (())
# 1167 "Parser.ml"
         in
        _menhir_goto_parameter_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv540)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv541 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 1177 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv542)) : 'freshtv544)

and _menhir_goto_declarator : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "Parser.mly"
      (unit)
# 1185 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv535 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 1193 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_comma ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv529 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 1203 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_id ->
            _menhir_run152 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160) : 'freshtv530)
    | T_semicolon ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv531 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 1219 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 58 "Parser.mly"
      (unit)
# 1225 "Parser.ml"
        ) = 
# 117 "Parser.mly"
               (())
# 1229 "Parser.ml"
         in
        _menhir_goto_more_declarators _menhir_env _menhir_stack _menhir_s _v) : 'freshtv532)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv533 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 1239 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)

and _menhir_goto_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 69 "Parser.mly"
      (unit)
# 1247 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv515 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1257 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 1261 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_else ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv509) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_break ->
                _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_char_const ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_continue ->
                _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_dcr ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_delete ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_double_const ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_false ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_id ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_if ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_lbrace ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_lparen ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_minus ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_negate ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_new ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_null ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_plus ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_return ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_semicolon ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | T_for ->
                _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv510)
        | T_addr | T_break | T_char_const | T_continue | T_dcr | T_delete | T_double_const | T_false | T_for | T_id | T_if | T_incr | T_int_const | T_lbrace | T_lparen | T_minus | T_negate | T_new | T_null | T_plus | T_rbrace | T_return | T_semicolon | T_string | T_times | T_true ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv511) = Obj.magic _menhir_stack in
            ((let _v : (
# 72 "Parser.mly"
      (unit)
# 1332 "Parser.ml"
            ) = 
# 199 "Parser.mly"
                   (())
# 1336 "Parser.ml"
             in
            _menhir_goto_else_part_e _menhir_env _menhir_stack _v) : 'freshtv512)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv513 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1346 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 1350 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv514)) : 'freshtv516)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv519) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 1359 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv517) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 1365 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _2) = _menhir_stack in
        let _1 = () in
        let _v : (
# 72 "Parser.mly"
      (unit)
# 1372 "Parser.ml"
        ) = 
# 200 "Parser.mly"
                       (())
# 1376 "Parser.ml"
         in
        _menhir_goto_else_part_e _menhir_env _menhir_stack _v) : 'freshtv518)) : 'freshtv520)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv523 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1384 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 1388 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv521 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1394 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 1398 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _1), _, _4), _, _6), _, _8), _, _10) = _menhir_stack in
        let _9 = () in
        let _7 = () in
        let _5 = () in
        let _3 = () in
        let _2 = () in
        let _v : (
# 69 "Parser.mly"
      (unit)
# 1409 "Parser.ml"
        ) = 
# 180 "Parser.mly"
                                        (())
# 1413 "Parser.ml"
         in
        _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv522)) : 'freshtv524)
    | MenhirState24 | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv527 * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 1421 "Parser.ml"
        )) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 1425 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv525 * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 1431 "Parser.ml"
        )) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 1435 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : (
# 70 "Parser.mly"
      (unit)
# 1441 "Parser.ml"
        ) = 
# 188 "Parser.mly"
                                 (())
# 1445 "Parser.ml"
         in
        _menhir_goto_statement_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv526)) : 'freshtv528)
    | _ ->
        _menhir_fail ()

and _menhir_reduce64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 73 "Parser.mly"
      (unit)
# 1456 "Parser.ml"
    ) = 
# 204 "Parser.mly"
       (())
# 1460 "Parser.ml"
     in
    _menhir_goto_label_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv507) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 69 "Parser.mly"
      (unit)
# 1474 "Parser.ml"
    ) = 
# 175 "Parser.mly"
                 (())
# 1478 "Parser.ml"
     in
    _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_semicolon ->
        _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run116 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack) MenhirState116

and _menhir_run119 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_lparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv503 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_char_const ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_delete ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_double_const ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_false ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_id ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_int_const ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_lparen ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_minus ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_negate ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_new ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_null ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_plus ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_string ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_times ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | T_true ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv504)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv505 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv506)

and _menhir_run123 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_colon ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv499 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv497 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (
# 73 "Parser.mly"
      (unit)
# 1615 "Parser.ml"
        ) = 
# 205 "Parser.mly"
                   (())
# 1619 "Parser.ml"
         in
        _menhir_goto_label_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv498)) : 'freshtv500)
    | T_lparen ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
    | T_and | T_assign | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_incr | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_semicolon | T_times ->
        _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv501 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv502)

and _menhir_run125 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_id ->
        _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState125
    | T_semicolon ->
        _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState125
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125

and _menhir_run129 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_id ->
        _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | T_semicolon ->
        _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129

and _menhir_goto_expression_e : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expression_e -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv477 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv473 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv471 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 69 "Parser.mly"
      (unit)
# 1686 "Parser.ml"
            ) = 
# 183 "Parser.mly"
                                        (())
# 1690 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)) : 'freshtv474)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv475 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv476)) : 'freshtv478)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv483 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1705 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv479 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1715 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_char_const ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_dcr ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_delete ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_double_const ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_false ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_id ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_lparen ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_minus ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_negate ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_new ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_null ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_plus ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_semicolon ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv480)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv481 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1769 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv482)) : 'freshtv484)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv489 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1778 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv485 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1788 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_char_const ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_dcr ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_delete ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_double_const ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_false ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_id ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_lparen ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_minus ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_negate ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_new ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_null ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_plus ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_rparen ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv486)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv487 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1842 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv488)) : 'freshtv490)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv495 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1851 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv491 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1861 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_break ->
                _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_char_const ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_continue ->
                _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_dcr ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_delete ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_double_const ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_false ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_id ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_if ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_lbrace ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_lparen ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_minus ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_negate ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_new ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_null ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_plus ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_return ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_semicolon ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | T_for ->
                _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv492)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv493 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1927 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv494)) : 'freshtv496)
    | _ ->
        _menhir_fail ()

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1937 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run96 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1988 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2039 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2090 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2141 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 2199 "Parser.ml"
    ) = 
# 297 "Parser.mly"
                   (())
# 2203 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv470)

and _menhir_run69 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2210 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_run71 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2261 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 2319 "Parser.ml"
    ) = 
# 294 "Parser.mly"
                   (())
# 2323 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv468)

and _menhir_run74 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv465) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 2337 "Parser.ml"
    ) = 
# 296 "Parser.mly"
                   (())
# 2341 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)

and _menhir_run75 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2348 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75

and _menhir_run77 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2399 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv463) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 2457 "Parser.ml"
    ) = 
# 298 "Parser.mly"
                   (())
# 2461 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2468 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2519 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_run87 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2570 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_run89 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2621 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89

and _menhir_run91 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2672 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 2730 "Parser.ml"
    ) = 
# 295 "Parser.mly"
                   (())
# 2734 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv462)

and _menhir_run94 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2741 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 2799 "Parser.ml"
    ) = 
# 293 "Parser.mly"
               (())
# 2803 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv460)

and _menhir_run99 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2810 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99

and _menhir_goto_declaration_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "Parser.mly"
      (unit)
# 2861 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv445 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 2871 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_bool ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | T_char ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | T_double ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | T_int ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | T_void ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | T_addr | T_break | T_char_const | T_continue | T_dcr | T_delete | T_double_const | T_false | T_for | T_id | T_if | T_incr | T_int_const | T_lbrace | T_lparen | T_minus | T_negate | T_new | T_null | T_plus | T_rbrace | T_return | T_semicolon | T_string | T_times | T_true ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv443 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 2891 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : (
# 54 "Parser.mly"
      (unit)
# 2897 "Parser.ml"
            ) = 
# 103 "Parser.mly"
                        (())
# 2901 "Parser.ml"
             in
            _menhir_goto_declaration_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv444)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv446)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 2913 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_bool ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | T_char ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | T_double ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | T_eof ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv455 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 2929 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState164 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv453 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 2936 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : (
# 52 "Parser.mly"
      (unit)
# 2944 "Parser.ml"
            ) = 
# 93 "Parser.mly"
                             ( printf "A Program Runs"; () )
# 2948 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv451) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 52 "Parser.mly"
      (unit)
# 2956 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv449) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 52 "Parser.mly"
      (unit)
# 2964 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv447) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 52 "Parser.mly"
      (unit)
# 2972 "Parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv448)) : 'freshtv450)) : 'freshtv452)) : 'freshtv454)) : 'freshtv456)
        | T_int ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | T_void ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164) : 'freshtv458)
    | _ ->
        _menhir_fail ()

and _menhir_reduce87 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 70 "Parser.mly"
      (unit)
# 2991 "Parser.ml"
    ) = 
# 187 "Parser.mly"
     (())
# 2995 "Parser.ml"
     in
    _menhir_goto_statement_list_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_run152 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_lbrack ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv437 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_char_const ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_delete ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_double_const ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_false ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_id ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_int_const ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_lparen ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_minus ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_negate ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_new ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_null ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_plus ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_string ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_times ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | T_true ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153) : 'freshtv438)
    | T_comma | T_semicolon ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv439 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 62 "Parser.mly"
      (unit)
# 3059 "Parser.ml"
        ) = 
# 143 "Parser.mly"
                        (())
# 3063 "Parser.ml"
         in
        _menhir_goto_declarator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv441 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv435) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 3084 "Parser.ml"
    ) = 
# 216 "Parser.mly"
             (())
# 3088 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv433) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 80 "Parser.mly"
      (unit)
# 3102 "Parser.ml"
    ) = 
# 264 "Parser.mly"
              (())
# 3106 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv431) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 3120 "Parser.ml"
    ) = 
# 222 "Parser.mly"
               (())
# 3124 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv429) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 80 "Parser.mly"
      (unit)
# 3138 "Parser.ml"
    ) = 
# 265 "Parser.mly"
             (())
# 3142 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv427) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 3156 "Parser.ml"
    ) = 
# 218 "Parser.mly"
             (())
# 3160 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_bool ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | T_char ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | T_double ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | T_int ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv425) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 80 "Parser.mly"
      (unit)
# 3193 "Parser.ml"
    ) = 
# 267 "Parser.mly"
               (())
# 3197 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv423) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 80 "Parser.mly"
      (unit)
# 3211 "Parser.ml"
    ) = 
# 266 "Parser.mly"
              (())
# 3215 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_bool ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_char ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_double ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_int ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv421) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 3284 "Parser.ml"
    ) = 
# 219 "Parser.mly"
                  (())
# 3288 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv419) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 82 "Parser.mly"
      (unit)
# 3302 "Parser.ml"
    ) = 
# 288 "Parser.mly"
             (())
# 3306 "Parser.ml"
     in
    _menhir_goto_unary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_lparen ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
    | T_and | T_assign | T_colon | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_incr | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon | T_times ->
        _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 3338 "Parser.ml"
    ) = 
# 217 "Parser.mly"
              (())
# 3342 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 3356 "Parser.ml"
    ) = 
# 221 "Parser.mly"
                     (())
# 3360 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_char_const ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_dcr ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_delete ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_double_const ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_false ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 82 "Parser.mly"
      (unit)
# 3421 "Parser.ml"
    ) = 
# 289 "Parser.mly"
            (())
# 3425 "Parser.ml"
     in
    _menhir_goto_unary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 3439 "Parser.ml"
    ) = 
# 220 "Parser.mly"
                   (())
# 3443 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 80 "Parser.mly"
      (unit)
# 3457 "Parser.ml"
    ) = 
# 263 "Parser.mly"
             (())
# 3461 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv408)

and _menhir_goto_parameter : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 66 "Parser.mly"
      (unit)
# 3468 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv401 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 3477 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 66 "Parser.mly"
      (unit)
# 3483 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv399 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 3489 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_3 : (
# 66 "Parser.mly"
      (unit)
# 3495 "Parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _2 = () in
        let _v : (
# 65 "Parser.mly"
      (unit)
# 3502 "Parser.ml"
        ) = 
# 156 "Parser.mly"
                                       (())
# 3506 "Parser.ml"
         in
        _menhir_goto_parameter_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)) : 'freshtv402)
    | MenhirState9 | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 66 "Parser.mly"
      (unit)
# 3516 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : (
# 66 "Parser.mly"
      (unit)
# 3524 "Parser.ml"
        )) = _v in
        ((let _v : (
# 65 "Parser.mly"
      (unit)
# 3529 "Parser.ml"
        ) = 
# 157 "Parser.mly"
                (())
# 3533 "Parser.ml"
         in
        _menhir_goto_parameter_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)) : 'freshtv406)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 76 "Parser.mly"
      (unit)
# 3547 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 3557 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3561 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | T_and | T_assign | T_colon | T_comma | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon | T_times ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269 * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 3575 "Parser.ml"
            )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3579 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 3585 "Parser.ml"
            ) = 
# 227 "Parser.mly"
                                              (())
# 3589 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv272)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3601 "Parser.ml"
        )) * _menhir_state * (
# 83 "Parser.mly"
      (unit)
# 3605 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3609 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_assign ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_div ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_div_assign ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_eq ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_gt ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_gteq ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_lt ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_lteq ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_min_assign ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_minus ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_mod ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_mod_assign ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_mul_assign ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_neq ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_or ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_plu_assign ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_plus ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_qmark ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_times ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | T_colon | T_comma | T_lbrack | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3663 "Parser.ml"
            )) * _menhir_state * (
# 83 "Parser.mly"
      (unit)
# 3667 "Parser.ml"
            )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3671 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _1), _, _2), _, _3) = _menhir_stack in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 3677 "Parser.ml"
            ) = 
# 229 "Parser.mly"
                                                             (())
# 3681 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv276)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3693 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3697 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv277 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3703 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3707 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3714 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 271 "Parser.mly"
              (())
# 3720 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3726 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)) : 'freshtv280)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3734 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3738 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_assign ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_colon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3752 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3756 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState65 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_char_const ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_dcr ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_delete ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_double_const ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_false ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_id ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_lparen ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_minus ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_negate ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_new ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_null ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_plus ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv282)
        | T_comma ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_div ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_div_assign ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_eq ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_gt ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_gteq ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_lbrack ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_lt ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_lteq ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_min_assign ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_minus ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_mod ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_mod_assign ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_mul_assign ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_neq ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_or ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_plu_assign ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_plus ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_qmark ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | T_times ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv284)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3856 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3860 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3866 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3870 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3877 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 274 "Parser.mly"
             (())
# 3883 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3889 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)) : 'freshtv288)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3897 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3901 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3907 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3911 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3918 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 283 "Parser.mly"
           (())
# 3924 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3930 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)) : 'freshtv292)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3938 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3942 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3948 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3952 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3959 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 281 "Parser.mly"
            (())
# 3965 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3971 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)) : 'freshtv296)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv299 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3979 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3983 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3989 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3993 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4000 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 273 "Parser.mly"
            (())
# 4006 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4012 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)) : 'freshtv300)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4020 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4024 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv301 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4030 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4034 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4041 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 275 "Parser.mly"
              (())
# 4047 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4053 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv302)) : 'freshtv304)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4061 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4065 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv305 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4071 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4075 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4082 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 278 "Parser.mly"
             (())
# 4088 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4094 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)) : 'freshtv308)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv311 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4102 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4106 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4112 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4116 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4123 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 276 "Parser.mly"
           (())
# 4129 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4135 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)) : 'freshtv312)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv317 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4143 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4147 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_assign ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_comma ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_div ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_div_assign ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_eq ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_gt ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_gteq ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_lbrack ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_lt ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_lteq ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_min_assign ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_minus ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_mod ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_mod_assign ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_mul_assign ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_neq ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_or ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_plu_assign ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_plus ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_qmark ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | T_rbrack ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4203 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4207 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState85 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv313 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4215 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4219 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4228 "Parser.ml"
            ) = 
# 224 "Parser.mly"
                                              (())
# 4232 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)) : 'freshtv316)
        | T_times ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv318)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv321 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4246 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4250 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv319 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4256 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4260 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4267 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 279 "Parser.mly"
             (())
# 4273 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4279 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)) : 'freshtv322)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv325 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4287 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4291 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv323 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4297 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4301 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4308 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 277 "Parser.mly"
           (())
# 4314 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4320 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4328 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4332 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv327 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4338 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4342 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4349 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 280 "Parser.mly"
           (())
# 4355 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4361 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)) : 'freshtv330)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4369 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4373 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4379 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4383 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4390 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 272 "Parser.mly"
            (())
# 4396 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4402 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)) : 'freshtv334)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4410 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4414 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv335 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4420 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4424 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4431 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 284 "Parser.mly"
              (())
# 4437 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4443 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)) : 'freshtv338)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv341 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4451 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4455 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv339 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4461 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4465 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4472 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 282 "Parser.mly"
            (())
# 4478 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4484 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)) : 'freshtv342)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv345 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4492 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4496 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4500 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_div ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_eq ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_gt ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_gteq ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_lt ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_lteq ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_minus ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_mod ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_neq ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_or ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_plus ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_qmark ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_times ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_assign | T_colon | T_comma | T_div_assign | T_lbrack | T_min_assign | T_mod_assign | T_mul_assign | T_plu_assign | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv343 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4542 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4546 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4550 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, _1), _), _, _3), _), _, _5) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4558 "Parser.ml"
            ) = 
# 231 "Parser.mly"
                                                                     (())
# 4562 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv346)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv349 * _menhir_state * (
# 80 "Parser.mly"
      (unit)
# 4574 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4578 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_and | T_assign | T_colon | T_comma | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon | T_times ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv347 * _menhir_state * (
# 80 "Parser.mly"
      (unit)
# 4592 "Parser.ml"
            )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4596 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4602 "Parser.ml"
            ) = 
# 225 "Parser.mly"
                                            (())
# 4606 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv350)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv353 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4618 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_assign ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_div ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_div_assign ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_eq ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_gt ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_gteq ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_lt ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_lteq ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_min_assign ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_minus ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_mod ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_mod_assign ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_mul_assign ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_neq ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_or ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_plu_assign ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_plus ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_qmark ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_times ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | T_colon | T_comma | T_lbrack | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv351 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4672 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _1 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4679 "Parser.ml"
            ) = 
# 234 "Parser.mly"
                                        (())
# 4683 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv354)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv359 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4695 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_assign ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_comma ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_div ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_div_assign ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_eq ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_gt ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_gteq ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_lbrack ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_lt ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_lteq ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_min_assign ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_minus ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_mod ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_mod_assign ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_mul_assign ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_neq ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_or ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_plu_assign ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_plus ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_qmark ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv357 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4751 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState105 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv355 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4759 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4768 "Parser.ml"
            ) = 
# 215 "Parser.mly"
                                                 (())
# 4772 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
        | T_times ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv360)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv363 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 4786 "Parser.ml"
        ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4790 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | T_and | T_assign | T_colon | T_comma | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon | T_times ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv361 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 4804 "Parser.ml"
            ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4808 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, _2), _, _4) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4816 "Parser.ml"
            ) = 
# 230 "Parser.mly"
                                                    (())
# 4820 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv364)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv369 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 4832 "Parser.ml"
        ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4836 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_assign ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_comma ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_div ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_div_assign ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_eq ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_gt ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_gteq ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_lbrack ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_lt ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_lteq ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_min_assign ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_minus ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_mod ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_mod_assign ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_mul_assign ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_neq ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_or ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_plu_assign ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_plus ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_qmark ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | T_rbrack ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv367 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 4892 "Parser.ml"
            ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4896 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState110 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv365 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 4904 "Parser.ml"
            ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4908 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _, _2), _, _4) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4918 "Parser.ml"
            ) = 
# 233 "Parser.mly"
                                               (())
# 4922 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)) : 'freshtv368)
        | T_times ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv370)
    | MenhirState137 | MenhirState139 | MenhirState141 | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv373 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4936 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_assign ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_comma ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_div ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_div_assign ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_eq ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_gt ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_gteq ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_lbrack ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_lt ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_lteq ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_min_assign ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_minus ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_mod ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_mod_assign ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_mul_assign ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_neq ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_or ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_plu_assign ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_plus ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_qmark ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_times ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4994 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : 'tv_expression_e = 
# 245 "Parser.mly"
                  (())
# 5000 "Parser.ml"
             in
            _menhir_goto_expression_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv374)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 5012 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_assign ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_comma ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_div ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_div_assign ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_eq ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_gt ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_gteq ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_lbrack ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_lt ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_lteq ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_min_assign ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_minus ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_mod ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_mod_assign ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_mul_assign ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_neq ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_or ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_plu_assign ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_plus ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_qmark ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 5068 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState121 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_break ->
                _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_char_const ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_continue ->
                _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_dcr ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_delete ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_double_const ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_false ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_id ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_if ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_lbrace ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_lparen ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_minus ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_negate ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_new ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_null ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_plus ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_return ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_semicolon ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | T_for ->
                _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv376)
        | T_times ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv378)
    | MenhirState24 | MenhirState117 | MenhirState122 | MenhirState133 | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv383 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 5140 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_assign ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_comma ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_div ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_div_assign ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_eq ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_gt ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_gteq ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_lbrack ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_lt ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_lteq ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_min_assign ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_minus ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_mod ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_mod_assign ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_mul_assign ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_neq ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_or ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_plu_assign ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_plus ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_qmark ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 5196 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState145 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv379 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 5204 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : (
# 69 "Parser.mly"
      (unit)
# 5212 "Parser.ml"
            ) = 
# 176 "Parser.mly"
                             (())
# 5216 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)) : 'freshtv382)
        | T_times ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv384)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 5230 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_assign ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_comma ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_dcr ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_div ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_div_assign ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_eq ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_gt ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_gteq ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_lbrack ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_lt ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_lteq ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_min_assign ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_minus ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_mod ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_mod_assign ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_mul_assign ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_neq ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_or ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_plu_assign ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_plus ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_qmark ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_times ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | T_rbrack ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv395 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 5288 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : (
# 79 "Parser.mly"
      (unit)
# 5294 "Parser.ml"
            ) = 
# 259 "Parser.mly"
               (())
# 5298 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv393) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 79 "Parser.mly"
      (unit)
# 5306 "Parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv391 * _menhir_state)) * _menhir_state * (
# 79 "Parser.mly"
      (unit)
# 5313 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_rbrack ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv387 * _menhir_state)) * _menhir_state * (
# 79 "Parser.mly"
      (unit)
# 5323 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv385 * _menhir_state)) * _menhir_state * (
# 79 "Parser.mly"
      (unit)
# 5330 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, _3) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 62 "Parser.mly"
      (unit)
# 5339 "Parser.ml"
                ) = 
# 142 "Parser.mly"
                                                 (())
# 5343 "Parser.ml"
                 in
                _menhir_goto_declarator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)) : 'freshtv388)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv389 * _menhir_state)) * _menhir_state * (
# 79 "Parser.mly"
      (unit)
# 5353 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)) : 'freshtv394)) : 'freshtv396)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154) : 'freshtv398)
    | _ ->
        _menhir_fail ()

and _menhir_goto_declaration : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "Parser.mly"
      (unit)
# 5367 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState164 | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5376 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 55 "Parser.mly"
      (unit)
# 5382 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5388 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_2 : (
# 55 "Parser.mly"
      (unit)
# 5394 "Parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 53 "Parser.mly"
      (unit)
# 5400 "Parser.ml"
        ) = 
# 97 "Parser.mly"
                                    ( () )
# 5404 "Parser.ml"
         in
        _menhir_goto_declaration_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
    | MenhirState0 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 55 "Parser.mly"
      (unit)
# 5414 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : (
# 55 "Parser.mly"
      (unit)
# 5422 "Parser.ml"
        )) = _v in
        ((let _v : (
# 53 "Parser.mly"
      (unit)
# 5427 "Parser.ml"
        ) = 
# 98 "Parser.mly"
                   ( () )
# 5431 "Parser.ml"
         in
        _menhir_goto_declaration_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)
    | _ ->
        _menhir_fail ()

and _menhir_goto_declaration_list_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 54 "Parser.mly"
      (unit)
# 5440 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv259 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 5448 "Parser.ml"
    )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 5452 "Parser.ml"
    )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 5456 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    (_menhir_reduce87 _menhir_env (Obj.magic _menhir_stack) MenhirState23 : 'freshtv260)

and _menhir_goto_pointer_asterisk_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 60 "Parser.mly"
      (unit)
# 5463 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 60 "Parser.mly"
      (unit)
# 5474 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_2 : (
# 60 "Parser.mly"
      (unit)
# 5482 "Parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 60 "Parser.mly"
      (unit)
# 5489 "Parser.ml"
        ) = 
# 132 "Parser.mly"
                                               (())
# 5493 "Parser.ml"
         in
        _menhir_goto_pointer_asterisk_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)) : 'freshtv220)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state * (
# 61 "Parser.mly"
      (unit)
# 5501 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 60 "Parser.mly"
      (unit)
# 5507 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state * (
# 61 "Parser.mly"
      (unit)
# 5513 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_2 : (
# 60 "Parser.mly"
      (unit)
# 5519 "Parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 59 "Parser.mly"
      (unit)
# 5525 "Parser.ml"
        ) = 
# 127 "Parser.mly"
                                   (())
# 5529 "Parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 59 "Parser.mly"
      (unit)
# 5537 "Parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState10 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv227 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5546 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_id ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5556 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv221 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5563 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (
# 66 "Parser.mly"
      (unit)
# 5571 "Parser.ml"
                ) = 
# 161 "Parser.mly"
                        (())
# 5575 "Parser.ml"
                 in
                _menhir_goto_parameter _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)) : 'freshtv224)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5585 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)) : 'freshtv228)
        | MenhirState32 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv235 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5594 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_lbrack ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5604 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | T_addr ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_char_const ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_dcr ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_delete ->
                    _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_double_const ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_false ->
                    _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_id ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_incr ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_int_const ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_lparen ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_minus ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_negate ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_new ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_null ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_plus ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_string ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_times ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_true ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv230)
            | T_and | T_assign | T_colon | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_incr | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon | T_times ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv231 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5654 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
                let _1 = () in
                let _v : (
# 76 "Parser.mly"
      (unit)
# 5661 "Parser.ml"
                ) = 
# 232 "Parser.mly"
                               (())
# 5665 "Parser.ml"
                 in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv233 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5675 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)) : 'freshtv236)
        | MenhirState9 | MenhirState41 | MenhirState45 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv243 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5684 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_id ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv239 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5694 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv237 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5701 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
                let _2 = () in
                let _v : (
# 66 "Parser.mly"
      (unit)
# 5708 "Parser.ml"
                ) = 
# 162 "Parser.mly"
                 (())
# 5712 "Parser.ml"
                 in
                _menhir_goto_parameter _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)) : 'freshtv240)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv241 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5722 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)
        | MenhirState37 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv249 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5731 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_rparen ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv245 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5741 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | T_addr ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_char_const ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_dcr ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_delete ->
                    _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_double_const ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_false ->
                    _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_id ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_incr ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_int_const ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_lparen ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_minus ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_negate ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_new ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_null ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_plus ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_string ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_times ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | T_true ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState108
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv246)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv247 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5793 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
        | MenhirState0 | MenhirState164 | MenhirState20 | MenhirState149 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv251 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5802 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_id ->
                _menhir_run152 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv252)
        | _ ->
            _menhir_fail ()) : 'freshtv254)) : 'freshtv256)) : 'freshtv258)
    | _ ->
        _menhir_fail ()

and _menhir_goto_parameter_list_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 67 "Parser.mly"
      (unit)
# 5821 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv207 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 5831 "Parser.ml"
        )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 5835 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv203 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 5845 "Parser.ml"
            )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 5849 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_lbrace ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv189 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 5859 "Parser.ml"
                )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 5863 "Parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | T_bool ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | T_char ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | T_double ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | T_int ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | T_void ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | T_addr | T_break | T_char_const | T_continue | T_dcr | T_delete | T_double_const | T_false | T_for | T_id | T_if | T_incr | T_int_const | T_lbrace | T_lparen | T_minus | T_negate | T_new | T_null | T_plus | T_rbrace | T_return | T_semicolon | T_string | T_times | T_true ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState20 in
                    ((let _v : (
# 54 "Parser.mly"
      (unit)
# 5885 "Parser.ml"
                    ) = 
# 102 "Parser.mly"
       (())
# 5889 "Parser.ml"
                     in
                    _menhir_goto_declaration_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv190)
            | T_semicolon ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv199 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 5901 "Parser.ml"
                )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 5905 "Parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv197 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 5912 "Parser.ml"
                )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 5916 "Parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _1), _, _4) = _menhir_stack in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _v : (
# 63 "Parser.mly"
      (unit)
# 5926 "Parser.ml"
                ) = 
# 147 "Parser.mly"
                                                                    (())
# 5930 "Parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv195) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 63 "Parser.mly"
      (unit)
# 5938 "Parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv193) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 63 "Parser.mly"
      (unit)
# 5946 "Parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_1 : (
# 63 "Parser.mly"
      (unit)
# 5954 "Parser.ml"
                )) = _v in
                ((let _v : (
# 55 "Parser.mly"
      (unit)
# 5959 "Parser.ml"
                ) = 
# 108 "Parser.mly"
                           ( () )
# 5963 "Parser.ml"
                 in
                _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)) : 'freshtv194)) : 'freshtv196)) : 'freshtv198)) : 'freshtv200)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv201 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 5973 "Parser.ml"
                )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 5977 "Parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv205 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 5988 "Parser.ml"
            )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 5992 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)) : 'freshtv208)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state)) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6001 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv211 * _menhir_state)) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6011 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv209 * _menhir_state)) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6018 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _3) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 6027 "Parser.ml"
            ) = 
# 223 "Parser.mly"
                                                            (())
# 6031 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv213 * _menhir_state)) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6041 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)
    | _ ->
        _menhir_fail ()

and _menhir_reduce74 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 60 "Parser.mly"
      (unit)
# 6053 "Parser.ml"
    ) = 
# 131 "Parser.mly"
                   (())
# 6057 "Parser.ml"
     in
    _menhir_goto_pointer_asterisk_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_times ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | T_and | T_assign | T_colon | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_id | T_incr | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon ->
        _menhir_reduce74 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_reduce72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 67 "Parser.mly"
      (unit)
# 6081 "Parser.ml"
    ) = 
# 166 "Parser.mly"
     (())
# 6085 "Parser.ml"
     in
    _menhir_goto_parameter_list_e _menhir_env _menhir_stack _menhir_s _v

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

and _menhir_goto_basic_type : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 61 "Parser.mly"
      (unit)
# 6111 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv185 * _menhir_state * (
# 61 "Parser.mly"
      (unit)
# 6119 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_times ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | T_and | T_assign | T_colon | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_id | T_incr | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon ->
        _menhir_reduce74 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv186)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 6141 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6150 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6159 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6173 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 6182 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6191 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv39 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 6200 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv41 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 6209 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv43 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 6218 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 6227 "Parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv48)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv53 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6250 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6259 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 6273 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6287 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv65 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6296 "Parser.ml"
        ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6300 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv67 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6309 "Parser.ml"
        ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6313 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6322 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6331 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6340 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * (
# 80 "Parser.mly"
      (unit)
# 6349 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6353 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv77 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6362 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6366 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6370 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv79 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6379 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6383 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6392 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6396 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6405 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6414 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6418 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6427 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6436 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6440 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6449 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6458 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6462 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6471 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6480 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6484 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6493 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv101 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6502 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6506 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6515 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6524 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6528 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6537 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6546 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6550 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6559 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6568 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6572 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6581 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6590 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6594 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6603 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv121 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6612 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6616 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6625 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6634 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6638 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6647 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv129 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6656 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6660 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6669 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6678 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6682 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6691 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6700 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6704 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6713 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6722 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6726 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6735 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv145 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6744 "Parser.ml"
        )) * _menhir_state * (
# 83 "Parser.mly"
      (unit)
# 6748 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6752 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6761 "Parser.ml"
        )) * _menhir_state * (
# 83 "Parser.mly"
      (unit)
# 6765 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 6774 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6778 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 6787 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * (
# 80 "Parser.mly"
      (unit)
# 6796 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 6810 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6829 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv169 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6848 "Parser.ml"
        )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6852 "Parser.ml"
        )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 6856 "Parser.ml"
        )) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 6860 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv171 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6869 "Parser.ml"
        )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6873 "Parser.ml"
        )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 6877 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv173 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6886 "Parser.ml"
        )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6890 "Parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * (
# 61 "Parser.mly"
      (unit)
# 6904 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv181 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6918 "Parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv184)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 64 "Parser.mly"
      (unit)
# 6937 "Parser.ml"
    ) = 
# 152 "Parser.mly"
             (())
# 6941 "Parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 64 "Parser.mly"
      (unit)
# 6949 "Parser.ml"
    )) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6956 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_id ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6966 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_lparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv11 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6976 "Parser.ml"
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
                _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv12)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv13 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 7004 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)) : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 7015 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)) : 'freshtv20)) : 'freshtv22)) : 'freshtv24)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 61 "Parser.mly"
      (unit)
# 7030 "Parser.ml"
    ) = 
# 135 "Parser.mly"
                  (())
# 7034 "Parser.ml"
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
# 61 "Parser.mly"
      (unit)
# 7048 "Parser.ml"
    ) = 
# 138 "Parser.mly"
               (())
# 7052 "Parser.ml"
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
# 61 "Parser.mly"
      (unit)
# 7066 "Parser.ml"
    ) = 
# 137 "Parser.mly"
             (())
# 7070 "Parser.ml"
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
# 61 "Parser.mly"
      (unit)
# 7084 "Parser.ml"
    ) = 
# 136 "Parser.mly"
             (())
# 7088 "Parser.ml"
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
# 52 "Parser.mly"
      (unit)
# 7107 "Parser.ml"
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
  


# 7145 "Parser.ml"
