
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
  | MenhirState168
  | MenhirState162
  | MenhirState158
  | MenhirState152
  | MenhirState151
  | MenhirState149
  | MenhirState147
  | MenhirState143
  | MenhirState141
  | MenhirState139
  | MenhirState137
  | MenhirState135
  | MenhirState131
  | MenhirState127
  | MenhirState123
  | MenhirState120
  | MenhirState119
  | MenhirState118
  | MenhirState115
  | MenhirState114
  | MenhirState112
  | MenhirState108
  | MenhirState107
  | MenhirState106
  | MenhirState103
  | MenhirState102
  | MenhirState101
  | MenhirState100
  | MenhirState96
  | MenhirState95
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState89
  | MenhirState88
  | MenhirState87
  | MenhirState86
  | MenhirState84
  | MenhirState83
  | MenhirState82
  | MenhirState81
  | MenhirState80
  | MenhirState79
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState74
  | MenhirState73
  | MenhirState72
  | MenhirState70
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState64
  | MenhirState63
  | MenhirState62
  | MenhirState61
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState55
  | MenhirState54
  | MenhirState53
  | MenhirState52
  | MenhirState50
  | MenhirState49
  | MenhirState48
  | MenhirState44
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
# 162 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv639 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 172 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv635 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 182 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv633 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 189 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 69 "Parser.mly"
      (unit)
# 197 "Parser.ml"
            ) = 
# 181 "Parser.mly"
                                  (())
# 201 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)) : 'freshtv636)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv637 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 211 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv638)) : 'freshtv640)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv647 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 220 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv643 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 230 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv641 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 237 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 69 "Parser.mly"
      (unit)
# 245 "Parser.ml"
            ) = 
# 182 "Parser.mly"
                               (())
# 249 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv642)) : 'freshtv644)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv645 * _menhir_state) * _menhir_state * (
# 74 "Parser.mly"
      (unit)
# 259 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv646)) : 'freshtv648)
    | _ ->
        _menhir_fail ()

and _menhir_goto_more_declarators : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 58 "Parser.mly"
      (unit)
# 269 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv627 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 279 "Parser.ml"
        )) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 283 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv623 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 293 "Parser.ml"
            )) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 297 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv621 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 304 "Parser.ml"
            )) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 308 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
            let _3 = () in
            let _v : (
# 56 "Parser.mly"
      (unit)
# 315 "Parser.ml"
            ) = 
# 113 "Parser.mly"
                                          (())
# 319 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv619) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 56 "Parser.mly"
      (unit)
# 327 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv617) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 56 "Parser.mly"
      (unit)
# 335 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv615) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 56 "Parser.mly"
      (unit)
# 343 "Parser.ml"
            )) = _v in
            ((let _v : (
# 55 "Parser.mly"
      (unit)
# 348 "Parser.ml"
            ) = 
# 107 "Parser.mly"
                           ( () )
# 352 "Parser.ml"
             in
            _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv616)) : 'freshtv618)) : 'freshtv620)) : 'freshtv622)) : 'freshtv624)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv625 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 362 "Parser.ml"
            )) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 366 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv626)) : 'freshtv628)
    | MenhirState158 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv631 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 375 "Parser.ml"
        ))) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 379 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv629 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 385 "Parser.ml"
        ))) * _menhir_state * (
# 58 "Parser.mly"
      (unit)
# 389 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : (
# 58 "Parser.mly"
      (unit)
# 396 "Parser.ml"
        ) = 
# 118 "Parser.mly"
                                          (())
# 400 "Parser.ml"
         in
        _menhir_goto_more_declarators _menhir_env _menhir_stack _menhir_s _v) : 'freshtv630)) : 'freshtv632)
    | _ ->
        _menhir_fail ()

and _menhir_goto_else_part_e : _menhir_env -> 'ttv_tail -> (
# 72 "Parser.mly"
      (unit)
# 409 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv613 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 416 "Parser.ml"
    )) * _menhir_state) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 420 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_v : (
# 72 "Parser.mly"
      (unit)
# 425 "Parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv611 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 431 "Parser.ml"
    )) * _menhir_state) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 435 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_6 : (
# 72 "Parser.mly"
      (unit)
# 440 "Parser.ml"
    )) = _v in
    ((let ((((_menhir_stack, _menhir_s), _, _3), _), _, _5) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _1 = () in
    let _v : (
# 69 "Parser.mly"
      (unit)
# 449 "Parser.ml"
    ) = 
# 178 "Parser.mly"
                                                              (())
# 453 "Parser.ml"
     in
    _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv612)) : 'freshtv614)

and _menhir_goto_label_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 73 "Parser.mly"
      (unit)
# 460 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv609 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 468 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_for ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv605 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 478 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_lparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv601 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 488 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_char_const ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_dcr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_delete ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_double_const ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_false ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_id ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_lparen ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_minus ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_negate ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_new ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_null ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_plus ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | T_semicolon ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv602)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv603 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 542 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv604)) : 'freshtv606)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv607 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 553 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv608)) : 'freshtv610)

and _menhir_reduce66 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 74 "Parser.mly"
      (unit)
# 563 "Parser.ml"
    ) = 
# 209 "Parser.mly"
       (())
# 567 "Parser.ml"
     in
    _menhir_goto_id_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_run124 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv599) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 74 "Parser.mly"
      (unit)
# 581 "Parser.ml"
    ) = 
# 210 "Parser.mly"
           (())
# 585 "Parser.ml"
     in
    _menhir_goto_id_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv600)

and _menhir_reduce58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_expression_e = 
# 244 "Parser.mly"
     (())
# 594 "Parser.ml"
     in
    _menhir_goto_expression_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_binary_assignment : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 83 "Parser.mly"
      (unit)
# 601 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv597 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 609 "Parser.ml"
    )) * _menhir_state * (
# 83 "Parser.mly"
      (unit)
# 613 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState52
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv598)

and _menhir_goto_expression_list_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 78 "Parser.mly"
      (unit)
# 662 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv595 * _menhir_state)) * _menhir_state * (
# 78 "Parser.mly"
      (unit)
# 670 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_rparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv591 * _menhir_state)) * _menhir_state * (
# 78 "Parser.mly"
      (unit)
# 680 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv589 * _menhir_state)) * _menhir_state * (
# 78 "Parser.mly"
      (unit)
# 687 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _3) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 696 "Parser.ml"
        ) = 
# 223 "Parser.mly"
                                                             (())
# 700 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv590)) : 'freshtv592)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv593 * _menhir_state)) * _menhir_state * (
# 78 "Parser.mly"
      (unit)
# 710 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv594)) : 'freshtv596)

and _menhir_goto_declarator : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "Parser.mly"
      (unit)
# 718 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv587 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 726 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_comma ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 736 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_id ->
            _menhir_run150 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState158) : 'freshtv582)
    | T_semicolon ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 752 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 58 "Parser.mly"
      (unit)
# 758 "Parser.ml"
        ) = 
# 117 "Parser.mly"
               (())
# 762 "Parser.ml"
         in
        _menhir_goto_more_declarators _menhir_env _menhir_stack _menhir_s _v) : 'freshtv584)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv585 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 772 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv586)) : 'freshtv588)

and _menhir_goto_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 69 "Parser.mly"
      (unit)
# 780 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv567 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 790 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 794 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_else ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv561) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_break ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_char_const ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_continue ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_dcr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_delete ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_double_const ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_false ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_id ->
                _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_if ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_lbrace ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_lparen ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_minus ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_negate ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_new ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_null ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_plus ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_return ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_semicolon ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | T_for ->
                _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv562)
        | T_addr | T_break | T_char_const | T_continue | T_dcr | T_delete | T_double_const | T_false | T_for | T_id | T_if | T_incr | T_int_const | T_lbrace | T_lparen | T_minus | T_negate | T_new | T_null | T_plus | T_rbrace | T_return | T_semicolon | T_string | T_times | T_true ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv563) = Obj.magic _menhir_stack in
            ((let _v : (
# 72 "Parser.mly"
      (unit)
# 865 "Parser.ml"
            ) = 
# 199 "Parser.mly"
                   (())
# 869 "Parser.ml"
             in
            _menhir_goto_else_part_e _menhir_env _menhir_stack _v) : 'freshtv564)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv565 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 879 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 883 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv566)) : 'freshtv568)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv571) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 892 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv569) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 898 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _2) = _menhir_stack in
        let _1 = () in
        let _v : (
# 72 "Parser.mly"
      (unit)
# 905 "Parser.ml"
        ) = 
# 200 "Parser.mly"
                       (())
# 909 "Parser.ml"
         in
        _menhir_goto_else_part_e _menhir_env _menhir_stack _v) : 'freshtv570)) : 'freshtv572)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv575 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 917 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 921 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv573 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 927 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 931 "Parser.ml"
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
# 942 "Parser.ml"
        ) = 
# 180 "Parser.mly"
                                        (())
# 946 "Parser.ml"
         in
        _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)) : 'freshtv576)
    | MenhirState24 | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv579 * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 954 "Parser.ml"
        )) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 958 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv577 * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 964 "Parser.ml"
        )) * _menhir_state * (
# 69 "Parser.mly"
      (unit)
# 968 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : (
# 70 "Parser.mly"
      (unit)
# 974 "Parser.ml"
        ) = 
# 188 "Parser.mly"
                                 (())
# 978 "Parser.ml"
         in
        _menhir_goto_statement_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv578)) : 'freshtv580)
    | _ ->
        _menhir_fail ()

and _menhir_reduce68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 73 "Parser.mly"
      (unit)
# 989 "Parser.ml"
    ) = 
# 204 "Parser.mly"
       (())
# 993 "Parser.ml"
     in
    _menhir_goto_label_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv559) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 69 "Parser.mly"
      (unit)
# 1007 "Parser.ml"
    ) = 
# 175 "Parser.mly"
                 (())
# 1011 "Parser.ml"
     in
    _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv560)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState29
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

and _menhir_run114 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack) MenhirState114

and _menhir_run117 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_lparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv555 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_char_const ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_delete ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_double_const ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_false ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_id ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_int_const ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_lparen ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_minus ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_negate ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_new ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_null ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_plus ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_string ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_times ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | T_true ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv556)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv557 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv558)

and _menhir_run121 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_colon ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv551 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv549 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (
# 73 "Parser.mly"
      (unit)
# 1148 "Parser.ml"
        ) = 
# 205 "Parser.mly"
                   (())
# 1152 "Parser.ml"
         in
        _menhir_goto_label_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv550)) : 'freshtv552)
    | T_lparen ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
    | T_and | T_assign | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_incr | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_semicolon | T_times ->
        _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv553 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv554)

and _menhir_run123 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_id ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | T_semicolon ->
        _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123

and _menhir_run127 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_id ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | T_semicolon ->
        _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127

and _menhir_goto_expression_e : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expression_e -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv529 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv525 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv523 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 69 "Parser.mly"
      (unit)
# 1219 "Parser.ml"
            ) = 
# 183 "Parser.mly"
                                        (())
# 1223 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)) : 'freshtv526)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv527 * _menhir_state) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv528)) : 'freshtv530)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv535 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1238 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv531 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1248 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_char_const ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_dcr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_delete ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_double_const ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | T_false ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState137
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv532)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv533 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1302 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv541 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1311 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv537 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1321 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_char_const ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_dcr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_delete ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_double_const ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | T_false ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState139
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
            | T_rparen ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv538)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv539 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1375 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv540)) : 'freshtv542)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv547 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1384 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv543 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1394 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_break ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_char_const ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_continue ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_dcr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_delete ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_double_const ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_false ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_id ->
                _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_if ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_lbrace ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState141
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
            | T_return ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_semicolon ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | T_for ->
                _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv544)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv545 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 1460 "Parser.ml"
            )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv546)) : 'freshtv548)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expression_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 77 "Parser.mly"
      (unit)
# 1470 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv521 * _menhir_state * (
# 77 "Parser.mly"
      (unit)
# 1478 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_comma ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv515 * _menhir_state * (
# 77 "Parser.mly"
      (unit)
# 1488 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_char_const ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_delete ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_double_const ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_false ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_id ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_int_const ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_lparen ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_minus ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_negate ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_new ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_null ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_plus ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_string ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_times ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | T_true ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv516)
    | T_rparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv517 * _menhir_state * (
# 77 "Parser.mly"
      (unit)
# 1538 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 78 "Parser.mly"
      (unit)
# 1544 "Parser.ml"
        ) = 
# 255 "Parser.mly"
                      (())
# 1548 "Parser.ml"
         in
        _menhir_goto_expression_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv519 * _menhir_state * (
# 77 "Parser.mly"
      (unit)
# 1558 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv520)) : 'freshtv522)

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1566 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run88 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1617 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1668 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1719 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1770 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv513) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 1828 "Parser.ml"
    ) = 
# 297 "Parser.mly"
                   (())
# 1832 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1839 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1890 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv511) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 1948 "Parser.ml"
    ) = 
# 294 "Parser.mly"
                   (())
# 1952 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv512)

and _menhir_run66 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv509) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 1966 "Parser.ml"
    ) = 
# 296 "Parser.mly"
                   (())
# 1970 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv510)

and _menhir_run67 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 1977 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_run69 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2028 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState69
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

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv507) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 2086 "Parser.ml"
    ) = 
# 298 "Parser.mly"
                   (())
# 2090 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2097 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2148 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run79 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2199 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79

and _menhir_run81 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2250 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_run83 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2301 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv505) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 2359 "Parser.ml"
    ) = 
# 295 "Parser.mly"
                   (())
# 2363 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv506)

and _menhir_run86 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2370 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv503) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 83 "Parser.mly"
      (unit)
# 2428 "Parser.ml"
    ) = 
# 293 "Parser.mly"
               (())
# 2432 "Parser.ml"
     in
    _menhir_goto_binary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv504)

and _menhir_run91 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2439 "Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState91
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

and _menhir_reduce24 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 2494 "Parser.ml"
    ) = 
# 214 "Parser.mly"
           (())
# 2498 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | T_rparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv501) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState41 in
        ((let _v : (
# 78 "Parser.mly"
      (unit)
# 2550 "Parser.ml"
        ) = 
# 254 "Parser.mly"
      (())
# 2554 "Parser.ml"
         in
        _menhir_goto_expression_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_goto_unary_assignment : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 82 "Parser.mly"
      (unit)
# 2565 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState151 | MenhirState24 | MenhirState115 | MenhirState141 | MenhirState139 | MenhirState137 | MenhirState135 | MenhirState131 | MenhirState120 | MenhirState118 | MenhirState29 | MenhirState34 | MenhirState106 | MenhirState37 | MenhirState100 | MenhirState41 | MenhirState44 | MenhirState93 | MenhirState91 | MenhirState88 | MenhirState86 | MenhirState83 | MenhirState81 | MenhirState79 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState69 | MenhirState67 | MenhirState63 | MenhirState61 | MenhirState58 | MenhirState56 | MenhirState54 | MenhirState52 | MenhirState49 | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv495 * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 2575 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_char_const ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_delete ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_double_const ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_false ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_id ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_int_const ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_lparen ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_minus ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_negate ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_new ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_null ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_plus ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_string ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_times ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | T_true ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv496)
    | MenhirState152 | MenhirState119 | MenhirState143 | MenhirState112 | MenhirState108 | MenhirState107 | MenhirState103 | MenhirState102 | MenhirState101 | MenhirState96 | MenhirState95 | MenhirState53 | MenhirState57 | MenhirState94 | MenhirState77 | MenhirState92 | MenhirState89 | MenhirState87 | MenhirState84 | MenhirState82 | MenhirState80 | MenhirState75 | MenhirState73 | MenhirState70 | MenhirState68 | MenhirState64 | MenhirState62 | MenhirState59 | MenhirState55 | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv499 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2625 "Parser.ml"
        )) * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 2629 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 2635 "Parser.ml"
        )) * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 2639 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 2645 "Parser.ml"
        ) = 
# 228 "Parser.mly"
                                  (())
# 2649 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv498)) : 'freshtv500)
    | _ ->
        _menhir_fail ()

and _menhir_goto_unary_operator : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 80 "Parser.mly"
      (unit)
# 2658 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv493 * _menhir_state * (
# 80 "Parser.mly"
      (unit)
# 2666 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv494)

and _menhir_goto_parameter_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 65 "Parser.mly"
      (unit)
# 2715 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv491 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 2723 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_comma ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 2733 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_bool ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | T_byref ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | T_char ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | T_double ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | T_int ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv486)
    | T_rparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 2757 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 67 "Parser.mly"
      (unit)
# 2763 "Parser.ml"
        ) = 
# 167 "Parser.mly"
                      (())
# 2767 "Parser.ml"
         in
        _menhir_goto_parameter_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv489 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 2777 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)

and _menhir_goto_statement_list_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 70 "Parser.mly"
      (unit)
# 2785 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv477 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 2795 "Parser.ml"
        )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 2799 "Parser.ml"
        )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 2803 "Parser.ml"
        )) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 2807 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_break ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_char_const ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_continue ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_delete ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_double_const ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_false ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_id ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_if ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_int_const ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | T_lbrace ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState24
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
            let (_menhir_stack : ((((((('freshtv475 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 2855 "Parser.ml"
            )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 2859 "Parser.ml"
            )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 2863 "Parser.ml"
            )) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 2867 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState24 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv473 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 2875 "Parser.ml"
            )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 2879 "Parser.ml"
            )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 2883 "Parser.ml"
            )) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 2887 "Parser.ml"
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
# 2899 "Parser.ml"
            ) = 
# 171 "Parser.mly"
                                                                                                              (())
# 2903 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv471) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 68 "Parser.mly"
      (unit)
# 2911 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 68 "Parser.mly"
      (unit)
# 2919 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 68 "Parser.mly"
      (unit)
# 2927 "Parser.ml"
            )) = _v in
            ((let _v : (
# 55 "Parser.mly"
      (unit)
# 2932 "Parser.ml"
            ) = 
# 109 "Parser.mly"
                           ( () )
# 2936 "Parser.ml"
             in
            _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv468)) : 'freshtv470)) : 'freshtv472)) : 'freshtv474)) : 'freshtv476)
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
            _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv478)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv483 * _menhir_state) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 2960 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_break ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_char_const ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_continue ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_delete ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_double_const ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_false ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_id ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_if ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_int_const ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_lbrace ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_lparen ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_minus ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_negate ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_new ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_null ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_plus ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_rbrace ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv481 * _menhir_state) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 3008 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState115 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv479 * _menhir_state) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 3016 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 69 "Parser.mly"
      (unit)
# 3025 "Parser.ml"
            ) = 
# 177 "Parser.mly"
                                         (())
# 3029 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)) : 'freshtv482)
        | T_return ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_semicolon ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_string ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_times ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_true ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | T_for ->
            _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv484)
    | _ ->
        _menhir_fail ()

and _menhir_run150 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_lbrack ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_addr ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_char_const ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_delete ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_double_const ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_false ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_id ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_int_const ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_lparen ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_minus ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_negate ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_new ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_null ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_plus ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_string ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_times ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | T_true ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv462)
    | T_comma | T_semicolon ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 62 "Parser.mly"
      (unit)
# 3111 "Parser.ml"
        ) = 
# 143 "Parser.mly"
                        (())
# 3115 "Parser.ml"
         in
        _menhir_goto_declarator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 76 "Parser.mly"
      (unit)
# 3129 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325 * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 3139 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3143 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | T_and | T_assign | T_colon | T_comma | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon | T_times ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323 * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 3157 "Parser.ml"
            )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3161 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 3167 "Parser.ml"
            ) = 
# 227 "Parser.mly"
                                              (())
# 3171 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv326)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3183 "Parser.ml"
        )) * _menhir_state * (
# 83 "Parser.mly"
      (unit)
# 3187 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3191 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | T_colon | T_comma | T_lbrack | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3245 "Parser.ml"
            )) * _menhir_state * (
# 83 "Parser.mly"
      (unit)
# 3249 "Parser.ml"
            )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3253 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _1), _, _2), _, _3) = _menhir_stack in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 3259 "Parser.ml"
            ) = 
# 229 "Parser.mly"
                                                             (())
# 3263 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv330)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3275 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3279 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3285 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3289 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3296 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 271 "Parser.mly"
              (())
# 3302 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3308 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)) : 'freshtv334)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3316 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3320 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_colon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv335 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3334 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3338 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState57 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_char_const ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_dcr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_delete ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_double_const ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_false ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_id ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_lparen ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_minus ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_negate ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_new ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_null ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_plus ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv336)
        | T_comma ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_lbrack ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv338)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv341 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3438 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3442 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv339 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3448 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3452 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3459 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 274 "Parser.mly"
             (())
# 3465 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3471 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)) : 'freshtv342)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv345 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3479 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3483 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv343 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3489 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3493 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3500 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 283 "Parser.mly"
           (())
# 3506 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3512 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)) : 'freshtv346)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv349 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3520 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3524 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv347 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3530 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3534 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3541 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 281 "Parser.mly"
            (())
# 3547 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3553 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv353 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3561 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3565 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv351 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3571 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3575 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3582 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 273 "Parser.mly"
            (())
# 3588 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3594 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv357 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3602 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3606 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv355 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3612 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3616 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3623 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 275 "Parser.mly"
              (())
# 3629 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3635 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv361 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3643 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3647 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv359 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3653 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3657 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3664 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 278 "Parser.mly"
             (())
# 3670 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3676 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv365 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3684 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3688 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv363 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3694 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3698 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3705 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 276 "Parser.mly"
           (())
# 3711 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3717 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)) : 'freshtv366)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv371 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3725 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3729 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_comma ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_lbrack ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | T_rbrack ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv369 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3785 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3789 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState77 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv367 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3797 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3801 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 3810 "Parser.ml"
            ) = 
# 224 "Parser.mly"
                                              (())
# 3814 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv372)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv375 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3828 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3832 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv373 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3838 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3842 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3849 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 279 "Parser.mly"
             (())
# 3855 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3861 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)) : 'freshtv376)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3869 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3873 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3879 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3883 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3890 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 277 "Parser.mly"
           (())
# 3896 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3902 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)) : 'freshtv380)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv383 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3910 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3914 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv381 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3920 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3924 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3931 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 280 "Parser.mly"
           (())
# 3937 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3943 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)) : 'freshtv384)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv387 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3951 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3955 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv385 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3961 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3965 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 3972 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 272 "Parser.mly"
            (())
# 3978 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 3984 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)) : 'freshtv388)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv391 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3992 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 3996 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv389 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4002 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4006 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4013 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 284 "Parser.mly"
              (())
# 4019 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4025 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)) : 'freshtv392)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv395 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4033 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4037 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv393 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4043 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4047 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _1), _), _, _3) = _menhir_stack in
        let _10 = () in
        let _v : (
# 76 "Parser.mly"
      (unit)
# 4054 "Parser.ml"
        ) = let _2 =
          let _1 = _10 in
          
# 282 "Parser.mly"
            (())
# 4060 "Parser.ml"
          
        in
        
# 226 "Parser.mly"
                                                             (())
# 4066 "Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv394)) : 'freshtv396)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv399 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4074 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4078 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4082 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | T_assign | T_colon | T_comma | T_div_assign | T_lbrack | T_min_assign | T_mod_assign | T_mul_assign | T_plu_assign | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv397 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4124 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4128 "Parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4132 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, _1), _), _, _3), _), _, _5) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4140 "Parser.ml"
            ) = 
# 231 "Parser.mly"
                                                                     (())
# 4144 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv400)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state * (
# 80 "Parser.mly"
      (unit)
# 4156 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4160 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | T_and | T_assign | T_colon | T_comma | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon | T_times ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv401 * _menhir_state * (
# 80 "Parser.mly"
      (unit)
# 4174 "Parser.ml"
            )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4178 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4184 "Parser.ml"
            ) = 
# 225 "Parser.mly"
                                            (())
# 4188 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv402)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv404)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv407 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4200 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | T_colon | T_comma | T_lbrack | T_rbrack | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv405 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4254 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _1 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4261 "Parser.ml"
            ) = 
# 234 "Parser.mly"
                                        (())
# 4265 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv408)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv411 * _menhir_state * (
# 77 "Parser.mly"
      (unit)
# 4277 "Parser.ml"
        ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4281 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_lbrack ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | T_comma | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv409 * _menhir_state * (
# 77 "Parser.mly"
      (unit)
# 4337 "Parser.ml"
            ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4341 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (
# 77 "Parser.mly"
      (unit)
# 4348 "Parser.ml"
            ) = 
# 249 "Parser.mly"
                                         (())
# 4352 "Parser.ml"
             in
            _menhir_goto_expression_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv412)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4364 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_comma ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_lbrack ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv413 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4422 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : (
# 77 "Parser.mly"
      (unit)
# 4428 "Parser.ml"
            ) = 
# 250 "Parser.mly"
                 (())
# 4432 "Parser.ml"
             in
            _menhir_goto_expression_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv416)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv421 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4444 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_comma ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_lbrack ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv419 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4500 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState103 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv417 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4508 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4517 "Parser.ml"
            ) = 
# 215 "Parser.mly"
                                                 (())
# 4521 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)) : 'freshtv420)
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv422)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv425 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 4535 "Parser.ml"
        ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4539 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | T_and | T_assign | T_colon | T_comma | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon | T_times ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv423 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 4553 "Parser.ml"
            ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4557 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, _2), _, _4) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4565 "Parser.ml"
            ) = 
# 230 "Parser.mly"
                                                    (())
# 4569 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv426)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv431 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 4581 "Parser.ml"
        ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4585 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_comma ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_lbrack ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | T_rbrack ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv429 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 4641 "Parser.ml"
            ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4645 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState108 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv427 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 4653 "Parser.ml"
            ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4657 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _, _2), _, _4) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 76 "Parser.mly"
      (unit)
# 4667 "Parser.ml"
            ) = 
# 233 "Parser.mly"
                                               (())
# 4671 "Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)) : 'freshtv430)
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv432)
    | MenhirState135 | MenhirState137 | MenhirState139 | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv435 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4685 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_comma ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_lbrack ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | T_rparen | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv433 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4743 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : 'tv_expression_e = 
# 245 "Parser.mly"
                  (())
# 4749 "Parser.ml"
             in
            _menhir_goto_expression_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv436)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv439 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4761 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_comma ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_lbrack ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | T_rparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv437 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4817 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState119 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_addr ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_break ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_char_const ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_continue ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_dcr ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_delete ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_double_const ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_false ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_id ->
                _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_if ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_incr ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_int_const ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_lbrace ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState120
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
            | T_return ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_semicolon ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_string ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_times ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_true ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | T_for ->
                _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv438)
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv440)
    | MenhirState24 | MenhirState115 | MenhirState120 | MenhirState131 | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv445 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4889 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_comma ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_lbrack ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv443 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4945 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState143 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv441 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4953 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : (
# 69 "Parser.mly"
      (unit)
# 4961 "Parser.ml"
            ) = 
# 176 "Parser.mly"
                             (())
# 4965 "Parser.ml"
             in
            _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)) : 'freshtv444)
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv446)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 4979 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_and ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_assign ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_comma ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_dcr ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_div ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_div_assign ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_eq ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_gt ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_gteq ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_incr ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_lbrack ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_lt ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_lteq ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_min_assign ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_minus ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_mod ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_mod_assign ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_mul_assign ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_neq ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_or ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_plu_assign ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_plus ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_qmark ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_times ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | T_rbrack ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv457 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 5037 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : (
# 79 "Parser.mly"
      (unit)
# 5043 "Parser.ml"
            ) = 
# 259 "Parser.mly"
               (())
# 5047 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv455) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 79 "Parser.mly"
      (unit)
# 5055 "Parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv453 * _menhir_state)) * _menhir_state * (
# 79 "Parser.mly"
      (unit)
# 5062 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_rbrack ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv449 * _menhir_state)) * _menhir_state * (
# 79 "Parser.mly"
      (unit)
# 5072 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv447 * _menhir_state)) * _menhir_state * (
# 79 "Parser.mly"
      (unit)
# 5079 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, _3) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 62 "Parser.mly"
      (unit)
# 5088 "Parser.ml"
                ) = 
# 142 "Parser.mly"
                                                 (())
# 5092 "Parser.ml"
                 in
                _menhir_goto_declarator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)) : 'freshtv450)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv451 * _menhir_state)) * _menhir_state * (
# 79 "Parser.mly"
      (unit)
# 5102 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)) : 'freshtv454)) : 'freshtv456)) : 'freshtv458)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152) : 'freshtv460)
    | _ ->
        _menhir_fail ()

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv321) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 5123 "Parser.ml"
    ) = 
# 216 "Parser.mly"
             (())
# 5127 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv322)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv319) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 80 "Parser.mly"
      (unit)
# 5141 "Parser.ml"
    ) = 
# 264 "Parser.mly"
              (())
# 5145 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv317) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 5159 "Parser.ml"
    ) = 
# 222 "Parser.mly"
               (())
# 5163 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv315) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 80 "Parser.mly"
      (unit)
# 5177 "Parser.ml"
    ) = 
# 265 "Parser.mly"
             (())
# 5181 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv313) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 5195 "Parser.ml"
    ) = 
# 218 "Parser.mly"
             (())
# 5199 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)

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
    let (_menhir_stack : 'freshtv311) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 80 "Parser.mly"
      (unit)
# 5232 "Parser.ml"
    ) = 
# 267 "Parser.mly"
               (())
# 5236 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv309) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 80 "Parser.mly"
      (unit)
# 5250 "Parser.ml"
    ) = 
# 266 "Parser.mly"
              (())
# 5254 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_bool ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_char ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_double ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState37
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
    let (_menhir_stack : 'freshtv307) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 5323 "Parser.ml"
    ) = 
# 219 "Parser.mly"
                  (())
# 5327 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv305) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 82 "Parser.mly"
      (unit)
# 5341 "Parser.ml"
    ) = 
# 288 "Parser.mly"
             (())
# 5345 "Parser.ml"
     in
    _menhir_goto_unary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)

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
        let (_menhir_stack : 'freshtv303 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv301) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 5377 "Parser.ml"
    ) = 
# 217 "Parser.mly"
              (())
# 5381 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv302)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv299) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 5395 "Parser.ml"
    ) = 
# 221 "Parser.mly"
                     (())
# 5399 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_addr ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_char_const ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_dcr ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_delete ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_double_const ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_false ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_id ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_incr ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_int_const ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_lparen ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_minus ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_negate ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_new ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_null ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_plus ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_string ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_times ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | T_true ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv297) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 82 "Parser.mly"
      (unit)
# 5460 "Parser.ml"
    ) = 
# 289 "Parser.mly"
            (())
# 5464 "Parser.ml"
     in
    _menhir_goto_unary_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv295) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 76 "Parser.mly"
      (unit)
# 5478 "Parser.ml"
    ) = 
# 220 "Parser.mly"
                   (())
# 5482 "Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv293) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 80 "Parser.mly"
      (unit)
# 5496 "Parser.ml"
    ) = 
# 263 "Parser.mly"
             (())
# 5500 "Parser.ml"
     in
    _menhir_goto_unary_operator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)

and _menhir_goto_parameter : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 66 "Parser.mly"
      (unit)
# 5507 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv287 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 5516 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 66 "Parser.mly"
      (unit)
# 5522 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv285 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 5528 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_3 : (
# 66 "Parser.mly"
      (unit)
# 5534 "Parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _2 = () in
        let _v : (
# 65 "Parser.mly"
      (unit)
# 5541 "Parser.ml"
        ) = 
# 156 "Parser.mly"
                                       (())
# 5545 "Parser.ml"
         in
        _menhir_goto_parameter_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)) : 'freshtv288)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 66 "Parser.mly"
      (unit)
# 5555 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : (
# 66 "Parser.mly"
      (unit)
# 5563 "Parser.ml"
        )) = _v in
        ((let _v : (
# 65 "Parser.mly"
      (unit)
# 5568 "Parser.ml"
        ) = 
# 157 "Parser.mly"
                (())
# 5572 "Parser.ml"
         in
        _menhir_goto_parameter_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)) : 'freshtv292)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_declaration_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "Parser.mly"
      (unit)
# 5586 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5596 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_bool ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | T_char ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | T_double ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | T_int ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | T_void ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | T_addr | T_break | T_char_const | T_continue | T_dcr | T_delete | T_double_const | T_false | T_for | T_id | T_if | T_incr | T_int_const | T_lbrace | T_lparen | T_minus | T_negate | T_new | T_null | T_plus | T_rbrace | T_return | T_semicolon | T_string | T_times | T_true ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv269 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5616 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : (
# 54 "Parser.mly"
      (unit)
# 5622 "Parser.ml"
            ) = 
# 103 "Parser.mly"
                        (())
# 5626 "Parser.ml"
             in
            _menhir_goto_declaration_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147) : 'freshtv272)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5638 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_bool ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | T_char ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | T_double ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | T_eof ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv281 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5654 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState168 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv279 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 5661 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : (
# 52 "Parser.mly"
      (unit)
# 5669 "Parser.ml"
            ) = 
# 93 "Parser.mly"
                             ( printf "A Program Runs"; () )
# 5673 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv277) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 52 "Parser.mly"
      (unit)
# 5681 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 52 "Parser.mly"
      (unit)
# 5689 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 52 "Parser.mly"
      (unit)
# 5697 "Parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv274)) : 'freshtv276)) : 'freshtv278)) : 'freshtv280)) : 'freshtv282)
        | T_int ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | T_void ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv284)
    | _ ->
        _menhir_fail ()

and _menhir_reduce91 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 70 "Parser.mly"
      (unit)
# 5716 "Parser.ml"
    ) = 
# 187 "Parser.mly"
     (())
# 5720 "Parser.ml"
     in
    _menhir_goto_statement_list_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_pointer_asterisk_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 60 "Parser.mly"
      (unit)
# 5727 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 60 "Parser.mly"
      (unit)
# 5738 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_2 : (
# 60 "Parser.mly"
      (unit)
# 5746 "Parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 60 "Parser.mly"
      (unit)
# 5753 "Parser.ml"
        ) = 
# 132 "Parser.mly"
                                               (())
# 5757 "Parser.ml"
         in
        _menhir_goto_pointer_asterisk_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)) : 'freshtv230)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * (
# 61 "Parser.mly"
      (unit)
# 5765 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 60 "Parser.mly"
      (unit)
# 5771 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * (
# 61 "Parser.mly"
      (unit)
# 5777 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_2 : (
# 60 "Parser.mly"
      (unit)
# 5783 "Parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 59 "Parser.mly"
      (unit)
# 5789 "Parser.ml"
        ) = 
# 127 "Parser.mly"
                                   (())
# 5793 "Parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 59 "Parser.mly"
      (unit)
# 5801 "Parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState10 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv237 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5810 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_id ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv233 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5820 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv231 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5827 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (
# 66 "Parser.mly"
      (unit)
# 5835 "Parser.ml"
                ) = 
# 161 "Parser.mly"
                        (())
# 5839 "Parser.ml"
                 in
                _menhir_goto_parameter _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)) : 'freshtv234)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv235 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5849 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
        | MenhirState32 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv245 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5858 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_lbrack ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv239 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5868 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | T_addr ->
                    _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_char_const ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_dcr ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_delete ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_double_const ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | T_false ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState34
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv240)
            | T_and | T_assign | T_colon | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_incr | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon | T_times ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv241 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5918 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
                let _1 = () in
                let _v : (
# 76 "Parser.mly"
      (unit)
# 5925 "Parser.ml"
                ) = 
# 232 "Parser.mly"
                               (())
# 5929 "Parser.ml"
                 in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv243 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5939 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
        | MenhirState37 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5948 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_rparen ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv247 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 5958 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | T_addr ->
                    _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_char_const ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_dcr ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_delete ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_double_const ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_false ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_id ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_incr ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_int_const ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_lparen ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_minus ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_negate ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_new ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_null ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_plus ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_string ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_times ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | T_true ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv248)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv249 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6010 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
        | MenhirState0 | MenhirState168 | MenhirState20 | MenhirState147 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv253 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6019 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_id ->
                _menhir_run150 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv254)
        | MenhirState9 | MenhirState162 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv261 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6035 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | T_id ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv257 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6045 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv255 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6052 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
                let _2 = () in
                let _v : (
# 66 "Parser.mly"
      (unit)
# 6059 "Parser.ml"
                ) = 
# 162 "Parser.mly"
                 (())
# 6063 "Parser.ml"
                 in
                _menhir_goto_parameter _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)) : 'freshtv258)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv259 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6073 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
        | _ ->
            _menhir_fail ()) : 'freshtv264)) : 'freshtv266)) : 'freshtv268)
    | _ ->
        _menhir_fail ()

and _menhir_goto_declaration : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "Parser.mly"
      (unit)
# 6085 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState168 | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 6094 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 55 "Parser.mly"
      (unit)
# 6100 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 6106 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (_2 : (
# 55 "Parser.mly"
      (unit)
# 6112 "Parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (
# 53 "Parser.mly"
      (unit)
# 6118 "Parser.ml"
        ) = 
# 97 "Parser.mly"
                                    ( () )
# 6122 "Parser.ml"
         in
        _menhir_goto_declaration_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)) : 'freshtv222)
    | MenhirState0 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 55 "Parser.mly"
      (unit)
# 6132 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : (
# 55 "Parser.mly"
      (unit)
# 6140 "Parser.ml"
        )) = _v in
        ((let _v : (
# 53 "Parser.mly"
      (unit)
# 6145 "Parser.ml"
        ) = 
# 98 "Parser.mly"
                   ( () )
# 6149 "Parser.ml"
         in
        _menhir_goto_declaration_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)) : 'freshtv226)
    | _ ->
        _menhir_fail ()

and _menhir_goto_declaration_list_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 54 "Parser.mly"
      (unit)
# 6158 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv217 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6166 "Parser.ml"
    )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6170 "Parser.ml"
    )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 6174 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    (_menhir_reduce91 _menhir_env (Obj.magic _menhir_stack) MenhirState23 : 'freshtv218)

and _menhir_reduce78 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 60 "Parser.mly"
      (unit)
# 6183 "Parser.ml"
    ) = 
# 131 "Parser.mly"
                   (())
# 6187 "Parser.ml"
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
        _menhir_reduce78 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_goto_parameter_list_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 67 "Parser.mly"
      (unit)
# 6209 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv215 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6217 "Parser.ml"
    )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6221 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_rparen ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv211 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6231 "Parser.ml"
        )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6235 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_lbrace ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv197 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6245 "Parser.ml"
            )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6249 "Parser.ml"
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
                let (_menhir_stack : 'freshtv195) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState20 in
                ((let _v : (
# 54 "Parser.mly"
      (unit)
# 6271 "Parser.ml"
                ) = 
# 102 "Parser.mly"
       (())
# 6275 "Parser.ml"
                 in
                _menhir_goto_declaration_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv198)
        | T_semicolon ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv207 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6287 "Parser.ml"
            )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6291 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv205 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6298 "Parser.ml"
            )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6302 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _4) = _menhir_stack in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : (
# 63 "Parser.mly"
      (unit)
# 6312 "Parser.ml"
            ) = 
# 147 "Parser.mly"
                                                                    (())
# 6316 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv203) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 63 "Parser.mly"
      (unit)
# 6324 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv201) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 63 "Parser.mly"
      (unit)
# 6332 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv199) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 63 "Parser.mly"
      (unit)
# 6340 "Parser.ml"
            )) = _v in
            ((let _v : (
# 55 "Parser.mly"
      (unit)
# 6345 "Parser.ml"
            ) = 
# 108 "Parser.mly"
                           ( () )
# 6349 "Parser.ml"
             in
            _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)) : 'freshtv202)) : 'freshtv204)) : 'freshtv206)) : 'freshtv208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv209 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6359 "Parser.ml"
            )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6363 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)) : 'freshtv212)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv213 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 6374 "Parser.ml"
        )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 6378 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)

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
# 6405 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv193 * _menhir_state * (
# 61 "Parser.mly"
      (unit)
# 6413 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_times ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | T_and | T_assign | T_colon | T_comma | T_dcr | T_div | T_div_assign | T_eq | T_gt | T_gteq | T_id | T_incr | T_lbrack | T_lt | T_lteq | T_min_assign | T_minus | T_mod | T_mod_assign | T_mul_assign | T_neq | T_or | T_plu_assign | T_plus | T_qmark | T_rbrack | T_rparen | T_semicolon ->
        _menhir_reduce78 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv194)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 6435 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 65 "Parser.mly"
      (unit)
# 6444 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState158 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * (
# 62 "Parser.mly"
      (unit)
# 6453 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6462 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6476 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * (
# 53 "Parser.mly"
      (unit)
# 6485 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6494 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv43 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 6503 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv45 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 6512 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) * _menhir_state * 'tv_expression_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv47 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 6521 "Parser.ml"
        )))) * _menhir_state * 'tv_expression_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state * (
# 73 "Parser.mly"
      (unit)
# 6530 "Parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv52)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv57 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6553 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state)) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6562 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 6576 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6590 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6599 "Parser.ml"
        ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6603 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv71 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6612 "Parser.ml"
        ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6616 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 6625 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6634 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6643 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state * (
# 77 "Parser.mly"
      (unit)
# 6652 "Parser.ml"
        ))) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6656 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * (
# 77 "Parser.mly"
      (unit)
# 6665 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6674 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * (
# 80 "Parser.mly"
      (unit)
# 6683 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6687 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv87 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6696 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6700 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6704 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv89 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6713 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6717 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6726 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6730 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6739 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv95 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6748 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6752 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6761 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6770 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6774 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6783 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6792 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6796 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6805 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6814 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6818 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6827 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6836 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6840 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6849 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6858 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6862 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6871 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6880 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6884 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6893 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6902 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6906 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6915 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6924 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6928 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6937 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6946 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6950 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6959 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6968 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6972 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6981 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv139 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6990 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 6994 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7003 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7012 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7016 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7025 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv147 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7034 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7038 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7047 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7056 "Parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7060 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7069 "Parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7078 "Parser.ml"
        )) * _menhir_state * (
# 83 "Parser.mly"
      (unit)
# 7082 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7086 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7095 "Parser.ml"
        )) * _menhir_state * (
# 83 "Parser.mly"
      (unit)
# 7099 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 7108 "Parser.ml"
        )) * _menhir_state * (
# 76 "Parser.mly"
      (unit)
# 7112 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state * (
# 82 "Parser.mly"
      (unit)
# 7121 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state * (
# 80 "Parser.mly"
      (unit)
# 7130 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv171 * _menhir_state) * _menhir_state * (
# 59 "Parser.mly"
      (unit)
# 7154 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv177 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 7173 "Parser.ml"
        )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 7177 "Parser.ml"
        )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 7181 "Parser.ml"
        )) * _menhir_state * (
# 70 "Parser.mly"
      (unit)
# 7185 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv179 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 7194 "Parser.ml"
        )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 7198 "Parser.ml"
        )))) * _menhir_state * (
# 54 "Parser.mly"
      (unit)
# 7202 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv181 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 7211 "Parser.ml"
        )))) * _menhir_state * (
# 67 "Parser.mly"
      (unit)
# 7215 "Parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state * (
# 61 "Parser.mly"
      (unit)
# 7229 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 7243 "Parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv192)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 64 "Parser.mly"
      (unit)
# 7262 "Parser.ml"
    ) = 
# 152 "Parser.mly"
             (())
# 7266 "Parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 64 "Parser.mly"
      (unit)
# 7274 "Parser.ml"
    )) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 7281 "Parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | T_id ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 7291 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | T_lparen ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv13 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 7301 "Parser.ml"
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
                let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState9 in
                ((let _v : (
# 67 "Parser.mly"
      (unit)
# 7323 "Parser.ml"
                ) = 
# 166 "Parser.mly"
     (())
# 7327 "Parser.ml"
                 in
                _menhir_goto_parameter_list_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv15 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 7341 "Parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 64 "Parser.mly"
      (unit)
# 7352 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)) : 'freshtv22)) : 'freshtv24)) : 'freshtv26)

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
# 7367 "Parser.ml"
    ) = 
# 135 "Parser.mly"
                  (())
# 7371 "Parser.ml"
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
# 7385 "Parser.ml"
    ) = 
# 138 "Parser.mly"
               (())
# 7389 "Parser.ml"
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
# 7403 "Parser.ml"
    ) = 
# 137 "Parser.mly"
             (())
# 7407 "Parser.ml"
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
# 7421 "Parser.ml"
    ) = 
# 136 "Parser.mly"
             (())
# 7425 "Parser.ml"
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
# 7444 "Parser.ml"
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
  


# 7482 "Parser.ml"
