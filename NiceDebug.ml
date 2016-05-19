open Core.Std
open Ast
open Format
open Identifier
open Types
open Symbol
let show_offsets = true


let rec pretty_typ ppf typ =
  let pretty_pointer n = 
	let rec aux str = function
	| 0 -> str
	| n -> aux (str ^ "*") (n-1)
	in aux "" n
  in
  match typ with
  | TYPE_none ->
      fprintf ppf "<undefined>"
  | TYPE_int n ->
      fprintf ppf "int %s" (pretty_pointer n)
  | TYPE_char n->
      fprintf ppf "char %s" (pretty_pointer n)
  | TYPE_bool n->
      fprintf ppf "bool %s" (pretty_pointer n)
  | TYPE_double n ->
      fprintf ppf "double %s"  (pretty_pointer n)
  | TYPE_array (et, sz) ->
      pretty_typ ppf et;
      if sz > 0 then
        fprintf ppf " [%d]" sz
      else
        fprintf ppf " []"
  | TYPE_void ->
      fprintf ppf "proc"
  | TYPE_null ->
      fprintf ppf "null pointer"

let pretty_mode ppf mode =
  match mode with
  | PASS_BY_REFERENCE ->
      fprintf ppf "reference "
  | _ ->
      ()

let printSymbolTable () =
  let rec walk ppf scp =
    if scp.sco_nesting <> 0 then begin
      fprintf ppf "scope: ";
      let entry ppf e =
        fprintf ppf "%a" pretty_id e.entry_id;
        match e.entry_info with
        | ENTRY_none ->
            fprintf ppf "<none>"
        | ENTRY_variable inf ->
            if show_offsets then
              fprintf ppf "[%d]" inf.variable_offset
        | ENTRY_label _ -> fprintf ppf ""
        | ENTRY_function inf ->
            let param ppf e =
              match e.entry_info with
                | ENTRY_parameter inf ->
                   fprintf ppf "%a%a : %a"
                      pretty_mode inf.parameter_mode
                      pretty_id e.entry_id
                      pretty_typ inf.parameter_type
                | _ ->
                    fprintf ppf "<invalid>" in
            let rec params ppf ps =
              match ps with
              | [p] ->
                  fprintf ppf "%a" param p
              | p :: ps ->
                  fprintf ppf "%a; %a" param p params ps;
              | [] ->
                  () in
            fprintf ppf "(%a) : %a"
              params inf.function_paramlist
              pretty_typ inf.function_result
        | ENTRY_parameter inf ->
            if show_offsets then
              fprintf ppf "[%d]" inf.parameter_offset
        | ENTRY_temporary inf ->
            if show_offsets then
              fprintf ppf "[%d]" inf.temporary_offset in
      let rec entries ppf es =
        match es with
          | [e] ->
              fprintf ppf "%a" entry e
          | e :: es ->
              fprintf ppf "%a, %a" entry e entries es;
          | [] ->
              () in
      match scp.sco_parent with
      | Some scpar ->
          fprintf ppf "%a\n%a"
            entries scp.sco_entries
            walk scpar
      | None ->
          fprintf ppf "<impossible>\n"
    end in
  let scope ppf scp =
    if scp.sco_nesting = 0 then 
      fprintf ppf "no scope\n"
    else
      walk ppf scp in
  printf "%a----------------------------------------\n"
    scope !currentScope
