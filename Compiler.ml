open NicePrint
open Core.Std
open Ast

let compile_channel channel =
  let lexbuf = Lexing.from_channel channel in
  try
    let ast_tree = Parser.program Lexer.lexer lexbuf in
    Semantic.check ast_tree;
    Intermediary.write_quads "out.imm";
    Codegen.get_all_instructions () |> Codegen.write_instructions ~filename:"out.s";
    exit 0
  with
  | Parser.Error ->
    eprintf_color Red "[2] Syntax Error :(\n"; eclear ();
    exit 2
  | Lexer.Unexpected_character (chr,pos) ->
    eprintf_color Red "[1] Unexpected Character '%c' (ascii: %d) \
                       was found at offset %d. Aborting..\n"
      chr (Char.to_int chr) (pos); eclear();
    exit 1
  | Semantic.Terminate str | Types.Terminate str ->
    eprintf_color Red "[3] "; eprintf "%s\n" str; eclear ();
    exit 3
  | Symbol.Exit -> exit 3

(* Parse Flags and Provide Documentation for -help *)
let arguments =
  let open Command.Spec in
  empty
  +> flag "-O" no_arg ~doc:" Optimization Flag."
  +> flag "-f" no_arg ~doc:" Get src code from stdin, output assembly on stdout."
  +> flag "-i" no_arg ~doc:" Get src code from stdin, output IR on stdout."
  +> flag "-c" no_arg ~doc:" Compile to object file for Linux"
  +> flag "-C" no_arg ~doc:" Compile to object file for Mac"
  +> flag "-a" no_arg ~doc:" Compile and link"
  +> anon (maybe_with_default "-" ("filename" %: file))

let command =
  Command.basic
    ~summary:"Edsger Compiler (C.Tsanikidis,A.Aggelakis)." arguments
    (fun o f i clin cmac a filename () ->
       let file_channel =
         if filename="-" then stdin
         else open_in filename
       in
       match (clin,cmac) with
       | (true,true) ->
         eprintf_color Red "Bad combination of flags. Aborting...\n"; eclear (); exit 124;
       | _ -> compile_channel file_channel (* TODO Later Stages *)
    )

let main =
  if Array.length Sys.argv = 1 then
    begin
      eprintf "You should provide more information. Try -help\n";
      exit 100
    end
  else
    Command.run ~version:"0.1" command
