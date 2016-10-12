open NicePrint
open Core.Std
open Ast



let compile_channel ~debug channel filename f i =
  let lexbuf = Lexing.from_channel channel in
  try
    let ast_tree = Parser.program Lexer.lexer lexbuf in
    Semantic.check ast_tree;
    if debug then
      begin
        NiceDebug.debug_flag := true;
        Intermediary.write_quads ("out.imm");
        Codegen.get_all_instructions () |> Codegen.write_instructions ~filename:("out.s");
      end
    else if filename <> "-" then
      begin
        let file_prefix = String.rstrip filename ~drop:((<>) '.') in
        let file_prefix = match String.rsplit2 file_prefix ~on:'/' with
                          | None -> file_prefix
                          | Some y -> snd y
        in
        Intermediary.write_quads (file_prefix ^ "imm");
        Codegen.get_all_instructions () |> Codegen.write_instructions ~filename:(file_prefix ^ "s");
      end
    else
      begin
        if f then
          begin
            Intermediary.write_quads "/dev/null";
            Codegen.get_all_instructions () |> Codegen.print_instructions;
          end
        else if i then
          Intermediary.print_quads ()
        else
          raise (Failure "UNEXPECTED RESULT");
      end
    ; exit 0
  with
  | Parser.Error ->
    eprintf_color Red "[2] Syntax Error :(\n"; eclear ();
    exit 2
  | Lexer.Unexpected_character (chr,pos) ->
    eprintf_color Red "[1] Unexpected Character '%c' (ascii: %d) \
                       was found at offset %d. Aborting..\n"
      chr (Char.to_int chr) (pos); eclear();
    exit 1
  (* | Semantic.Terminate str | Types.Terminate str -> *)
  (*   eprintf_color Red "[3] "; eprintf "%s\n" str; eclear (); *)
  (*   exit 3 *)
  (* | Symbol.Exit -> exit 3 *)



(* Parse Flags and Provide Documentation for -help *)
let arguments =
  let open Command.Spec in
  empty
  +> flag "-d" no_arg ~doc:" Debugging Output."
  +> flag "-O" no_arg ~doc:" Optimization Flag."
  +> flag "-f" no_arg ~doc:" Get src code from stdin, output assembly on stdout."
  +> flag "-i" no_arg ~doc:" Get src code from stdin, output IR on stdout."
  +> flag "-a" no_arg ~doc:" Compile and link"
  +> anon (maybe_with_default "-" ("filename" %: file))

let command =
  Command.basic
    ~summary:"Edsger Compiler (C.Tsanikidis,A.Aggelakis)." arguments
    (fun d o f i a filename () ->
       let file_channel =
         if filename="-" then stdin
         else open_in filename
       in
       if (f = true && i = true) || ( (f = true || i = true) && filename <> "-" ) then
         (eprintf_color Red "Bad combination of flags. Aborting...\n"; eclear (); exit 124;)
       else
          compile_channel ~debug:(d) file_channel filename f i
    )

let main =
  if Array.length Sys.argv = 1 then
    begin
      eprintf "You should provide more information. Try -help\n";
      exit 100
    end
  else
    Command.run ~version:"0.1" command
