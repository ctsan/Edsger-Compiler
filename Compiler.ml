open NicePrint
open Core.Std
open Ast

let compile_channel channel = 
    let lexbuf = Lexing.from_channel channel in
    try
        Parser.program Lexer.lexer lexbuf; 
        (* Semantic.count_top_level_decls !ast_tree;*)
        Semantic.check !ast_tree;
        exit 0
    with 
        | Parsing.Parse_error | Parser.Error ->
            eprintf_color Red "[2] Syntax Error :(\n"; eclear ();
            exit 2
        | Lexer.Unexpected_character (chr,pos) ->
            eprintf_color Red "[1] Unexpected Character '%c' (ascii: %d) \
                was found at offset %d. Aborting..\n"
                chr (Char.to_int chr) (pos); eclear();
            exit 1
        | Semantic.NoMainFunction ->
            eprintf_color Red "[3] `main` function missing :(\n"; eclear ();
            exit 3

(* Parse Flags and Provide Documentation for -help *) 
let arguments = 
    let open Command.Spec in 
     empty
     +> flag "-O" no_arg ~doc:" Optimization Flag."
     +> flag "-f" no_arg ~doc:" Get src code from stdin, output assembly on stdout."
     +> flag "-i" no_arg ~doc:" Get src code from stdin, output IR on stdout."
     +> anon (maybe_with_default "-" ("filename" %: file))

let command = 
	Command.basic
		~summary:"Edsger Compiler (C.Tsanikidis,A.Aggelakis)." arguments
		(fun optim assembly intermediary filename () ->
		   let file_channel = 
			   if filename="-" then stdin
			   else open_in filename
		   in
		   match (assembly,intermediary) with
		   | (true,true) ->
				eprintf_color Red "Bad combination of flags. Aborting...\n"; eclear (); exit 124;
		   | _ -> compile_channel file_channel (* TODO Later Stages *)
		)

let main =
        Command.run ~version:"0.1" command
