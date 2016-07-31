(* Symbol table *)

exception Exit

type pass_mode = PASS_BY_VALUE | PASS_BY_REFERENCE

type param_status =
  | PARDEF_COMPLETE                             (* Πλήρης ορισμός     *)
  | PARDEF_DEFINE                               (* Εν μέσω ορισμού    *)
  | PARDEF_CHECK                                (* Εν μέσω ελέγχου    *)

type scope = {
  sco_parent : scope option;
  sco_nesting : int;
  mutable sco_entries : entry list;
  mutable sco_negofs : int
}

and variable_info = {                         (******* Μεταβλητή *******)
  variable_type   : Types.typ;                (* Τύπος                 *)
  variable_offset : int                       (* Offset στο Ε.Δ.       *)
}

and function_info = {                         (******* Συνάρτηση *******)
  mutable function_isForward : bool;          (* forward Functio       *)
  mutable function_paramlist : entry list;    (* List Parameters       *)
  mutable function_redeflist : entry list;    (* Λίστα παραμέτρων (2η) *)
  mutable function_result    : Types.typ;     (* Function  result      *)
  mutable function_pstatus   : param_status;  (* Κατάσταση παραμέτρων  *)
  mutable function_initquad  : int            (* Αρχική τετράδα        *)
}

and parameter_info = {                        (****** Παράμετρος *******)
  parameter_type           : Types.typ;       (* Τύπος                 *)
  mutable parameter_offset : int;             (* Offset στο Ε.Δ.       *)
  parameter_mode           : pass_mode        (* Τρόπος περάσματος     *)
}

and temporary_info = {                        (** Προσωρινή μεταβλητή **)
  temporary_type   : Types.typ;               (* Τύπος                 *)
  temporary_offset : int                      (* Offset στο Ε.Δ.       *)
}

and entry_info = ENTRY_none
               | ENTRY_variable  of variable_info
               | ENTRY_function	 of function_info
               | ENTRY_parameter of parameter_info
               | ENTRY_label	 of	bool ref  (* inside for-loop or not*)
               | ENTRY_temporary of temporary_info

and entry = {
  entry_id    : Identifier.id;
  entry_scope : scope;
  entry_info  : entry_info
}

type lookup_type = LOOKUP_CURRENT_SCOPE | LOOKUP_ALL_SCOPES



val no_entry : Identifier.id -> entry
val currentScope : scope ref              (* Τρέχουσα εμβέλεια         *)
val quadNext : int ref                    (* Αριθμός επόμενης τετράδας *)
val tempNumber : int ref                  (* Αρίθμηση των temporaries  *)

val initSymbolTable  : int -> unit
val openScope        : unit -> unit
val closeScope       : unit -> unit
val newVariable      : Identifier.id -> Types.typ -> bool -> entry
val newLabel         : Identifier.id -> bool -> entry
val newFunction      : Identifier.id -> bool -> entry
val newParameter     : Identifier.id -> Types.typ -> pass_mode ->
                                        entry -> bool -> entry
val newTemporary     : Types.typ -> entry

val endLabelScope	 : entry -> unit

val forwardFunction    : entry -> unit
val endFunctionHeader  : entry -> Types.typ -> unit
val lookupEntry        : Identifier.id -> lookup_type -> bool -> entry

(* NOTE: Result type of `int a[N];` is transformed to `int *` *)
val lookup_result_type : Identifier.id -> Types.typ


(* NOTE: The following functions take as input an identifier of a function. *)
val lookup_pass_styles : Identifier.id -> pass_mode list
val lookup_pass_types  : Identifier.id -> Types.typ list
(* return true if a function has been defined *)
val fun_is_defined : Identifier.id -> bool

val is_mutable: Identifier.id -> bool

val start_positive_offset : int   (* Αρχικό θετικό offset στο Ε.Δ.   *)
val start_negative_offset : int   (* Αρχικό αρνητικό offset στο Ε.Δ. *)
