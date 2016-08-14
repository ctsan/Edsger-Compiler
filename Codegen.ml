open Core.Std
open Printf
open Symbol
open Ast
open Types
open Identifier
open Intermediary

type label_id = string
let string_of_label l = sprintf "%s:\n" l

type reg =
  | Rax | Rbx | Rcx | Rdx
  | Rsi | Rdi | Rbp | Rsp
  | Rth of int (* R8,R9,R10,R11,R12,R13,R14,R15 *)

     (* e.g. rax,   eax,   ax,   ah,   al *)
type rtype =  B64 | B32  | B16 | B8H | B8L

type reg_form = reg * rtype

type imm =
  | Imm8  of int
  | Imm16 of int
  | Imm32 of int
  | Imm64 of int

type memory_location = int option * reg * reg option

type operand =
  | Reg   of reg_form
  | Mem   of memory_location
  | Const of imm

(* this can be extended to add more instructions  *)
type ins_86_64 =
  | D_str   of label_id * string
  | D_byte  of label_id * imm  (* 8bit  *)
  | D_short of label_id * imm  (* 16bit *)
  | D_long  of label_id * imm  (* 32bit integer *)
  | D_zero  of label_id * int  (* number of bytes initialized as zero *)
  | M_Label of label_id

  | I_movb  of operand * operand
  | I_movw  of operand * operand
  | I_movl  of operand * operand
  | I_movq  of operand * operand

  | I_pushq of operand (* reg64, mem, const64 *)
  | I_popq  of operand   (* reg64, mem *)
  | I_leaq  of memory_location * reg (* move the address of memory location, to 64bit-register *)

  | I_addb  of operand * operand  (* Following forms can't infer the type of add.*)
  | I_addw  of operand * operand
  | I_addl  of operand * operand
  | I_addq  of operand * operand

  | I_subb  of operand * operand  (* Following forms can't infer the type of sub.*)
  | I_subw  of operand * operand
  | I_subl  of operand * operand
  | I_subq  of operand * operand

  | I_imul  of operand * reg (* first operand:reg or mem, result is always a register 64bit *)
  | I_idiv  of operand  (* mem,reg: divides 128-bit integer (rdx:rax), remained in rdx, quotient in rax.*)
  | I_idivw of memory_location (* mem,reg: divides 128-bit integer (rdx:rax), remained in rdx, quotient in rax.*)
  | I_jmp   of label_id
  | I_cmp   of operand * operand
  | I_je    of label_id
  | I_jne   of label_id
  | I_jz    of label_id
  | I_jg    of label_id
  | I_jge   of label_id
  | I_jl    of label_id
  | I_jle   of label_id
  | I_ret

let string_of_imm = function
  | Imm8  i
  | Imm16 i
  | Imm32 i
  | Imm64 i ->
     sprintf "$%d\n" i (* NOTE: Added \n *)

let string_of_reg r =
  match r with
  | Rax -> "%rax"
  | Rbx -> "%rbx"
  | Rcx -> "%rcx"
  | Rdx -> "%rdx"
  | Rsi -> "%rsi"
  | Rdi -> "%rdi"
  | Rbp -> "%rbp"
  | Rsp -> "%rsx"
  | Rth i -> "%r" ^ Int.to_string i

let string_of_reg_form rf =
  let (^$) c s = s ^ (String.make 1 c) in
  match rf with
  | (r, B64) ->
      string_of_reg r
  | (r, B32) ->
      let str = string_of_reg r in
      (match r with
      | Rth _ -> (^$) 'd' str
      | _ -> String.tr 'r' 'e' str)
  | (r, B16) ->
      let str = string_of_reg r in
      (match r with
      | Rth _ -> (^$) 'w' str
      | _ -> String.filter str (fun c -> c <> 'r'))
  | (r, B8L) ->
     let str = string_of_reg r in
     let filt = fun c -> c <> 'r' && c <> 'x' in
     (match r with
     | Rth _ -> (^$) 'b' str
     | _ -> (^$) 'l' (String.filter str filt))
  | (r, B8H) ->
      raise (Terminate "Better not use B8H")

let string_of_memory_location mloc =
  match mloc with
  | (None, r, None) | (Some 0, r, None) ->
     sprintf "(%s)" (string_of_reg r)
  | (Some x, r, None) when x > 0 ->
      "+" ^ Int.to_string x ^ (sprintf "(%s)" (string_of_reg r))
  | (Some x, r, None) ->
      Int.to_string x ^ (sprintf "(%s)" (string_of_reg r))
  | _ ->
      "No clue what's this or if it's needed"
  (* TODO: ^ ???? *)

let string_of_operand = function
  | Reg r     -> string_of_reg_form r
  | Mem mloc  -> string_of_memory_location mloc
  | Const imm -> string_of_imm imm

let string_of_ins_86_64 = function
  | D_str  (label,str)   -> (string_of_label label) ^ sprintf "\t.string %S\n" str
  | D_byte  (label,num)   -> (string_of_label label) ^ sprintf "\t.byte " ^ string_of_imm num
  | D_short  (label,num)   -> (string_of_label label) ^ sprintf "\t.short " ^ string_of_imm num
  | D_long  (label,num)   -> (string_of_label label) ^ sprintf "\t.long " ^ string_of_imm num
  | D_zero (label,total) -> (string_of_label label) ^ sprintf "\t.zero %d\n" total
  | M_Label label        -> sprintf "%S:\n" (string_of_label label)
  | I_movb (op1,op2)     -> sprintf "\tmovb %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_movw (op1,op2)     -> sprintf "\tmovw %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_movl (op1,op2)     -> sprintf "\tmovl %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_movq (op1,op2)     -> sprintf "\tmovq %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_pushq op           -> sprintf "\tpushq %s\n" (string_of_operand op)
  | I_popq op            -> sprintf "\tpopq %s\n" (string_of_operand op)
  | I_leaq (mem,reg1)    -> sprintf "\tleaq %s,%s\n" (string_of_memory_location mem) (string_of_reg reg1)
  | I_addb (op1,op2)     -> sprintf "\taddb %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_addw (op1,op2)     -> sprintf "\taddw %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_addl (op1,op2)     -> sprintf "\taddl %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_addq (op1,op2)     -> sprintf "\taddq %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_subb (op1,op2)     -> sprintf "\tsubb %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_subw (op1,op2)     -> sprintf "\tsubw %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_subl (op1,op2)     -> sprintf "\tsubl %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_subq (op1,op2)     -> sprintf "\tsubq %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_imul (op1,reg1)    -> sprintf "\timul %s,%s\n" (string_of_operand op1) (string_of_reg reg1)
  | I_idiv reg1          -> sprintf "\tidiv %s\n" (string_of_operand reg1)
  | I_idivw mem          -> sprintf "\tidivw %s\n" (string_of_memory_location mem)
  | I_jmp label          -> sprintf "\tjmp %s\n" (string_of_label label)
  | I_cmp (op1,op2)      -> sprintf "\tcmp %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_je label           -> sprintf "\tje %s\n" (string_of_label label)
  | I_jne label          -> sprintf "\tjne %s\n" (string_of_label label)
  | I_jz label           -> sprintf "\tjz %s\n" (string_of_label label)
  | I_jg label           -> sprintf "\tjg %s\n" (string_of_label label)
  | I_jge label          -> sprintf "\tjge %s\n" (string_of_label label)
  | I_jl label           -> sprintf "\tjl %s\n" (string_of_label label)
  | I_jle label          -> sprintf "\tjle %s\n" (string_of_label label)
  | I_ret                -> sprintf "\tret\n"

let bool_to_int b =
  match b with
  | true -> 1
  | false -> 0


(* is operator of intermediary, ultimately transformed to int*)
(* Only Doubles will not be encoded as Integers. *)
let is_encoded_as_int op =
  match op with
  | Double _ -> false
  | _ -> true (* consider some assertions here *)

let instructions:ins_86_64 list ref = ref []
let call_stack = Stack.create ()

let add_instruction i =
  instructions := i :: !instructions

(* input: Takes entry l of parameter *)
(* output: returns  ins_86_64 list *)
let get_AR l =
  let base = I_movq (Reg (Rsi, B64), Mem (Some 4, Rbp, None)) in
  let ncur = l.entry_scope.sco_nesting in
  let na = (Stack.top_exn call_stack).entry_scope.sco_nesting in
  let rec loopins acc = function
    | 0 ->
        acc
    | n ->
        loopins ((I_movq (Mem (Some 4, Rsi, None), Reg (Rsi, B64)))::acc) (n-1)
  in
    base::(loopins [] (ncur-na-1))

(* input: Takes callee and called function entries *)
(* output: returns ins_86_64 list *)
let update_AR callee called =
  let np = callee.entry_scope.sco_nesting in
  let nx = called.entry_scope.sco_nesting in
  if (np > nx) then
    [I_pushq (Reg (Rbp, B64))]
  else if (np = nx) then
    [I_pushq (Mem (Some 4, Rbp, None))]
  else
    let fst = I_movq (Mem (Some 4, Rbp, None),Reg (Rsi, B64)) in
    let lst = [I_pushq (Mem (Some 4, Rsi, None))] in
    let rec loopins acc = function
    | 0 ->
        acc
    | n ->
        loopins ((I_movq (Mem (Some 4, Rsi, None), Reg (Rsi, B64)))::acc) (n-1)
  in
    fst::(loopins [] (np-nx-1)) @ lst

let is_par e = match e.entry_info with
| ENTRY_parameter _ -> true
| ENTRY_variable _ | ENTRY_temporary _ -> false
| _ -> raise (Terminate "Bad entry to load")


(* input: This function takes a destination register, and a source argument *)
(* output: a list of the necessery assembly instructions *)
let rec load reg a =
  match a with
  | Int n ->
      [I_movw(Const (Imm16 n),reg)]
  | Bool b ->
      [I_movb(Const (Imm8 (bool_to_int b)),reg)] (* NOTE: implemented mine coz of incompatibility *)
  | Char chr ->
      [I_movb(Const (Imm8 (Char.to_int chr)),reg)]
  | Var ent ->
    if is_local ent then
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then 
        [I_movq (Mem (Some (lookup_bp_offset ent), Rbp, None),reg)]
      else
        [I_movq (Mem (Some (lookup_bp_offset ent), Rbp, None),Reg (Rsi, B64));
         I_movq (Mem (None, Rsi, None), reg)])
    else
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then 
        get_AR(ent) @
        [I_movq (Mem (Some (lookup_bp_offset ent), Rsi, None),reg)]
     else
        get_AR(ent) @
        [I_movq (Mem (Some (lookup_bp_offset ent), Rsi, None),Reg (Rsi, B64));
        I_movq (Mem (None, Rsi, None), reg)])
  | Address i -> load_addr reg i
  (* TODO use proper `mov` later later. *)
  | Deref i -> load (Reg (Rdi,B64)) i @ [I_movq (Mem (None,Rdi,None),reg) ]
  (* TODO adjust `mov` size*)
  | Temp n -> [I_movq (Mem (Some (lookup_bp_offset n),Rbp,None),reg)]
  | _ -> raise (Terminate "bad quad entry")

(* Takes operand of quad that is String str (Label int????) *)
(* Returns M_Label (ins) str *)
and label_of e = match e with
| String str -> str
| Label int -> Int.to_string int
| _ -> printf e; raise (Terminate "Label can only be string")
  

(* input: This function takes a destination register, and a source argument *)
(* output: a list of the necessery assembly instructions *)
(* Pretty much the same as load but with lea *)
and load_addr reg a =
  let reg_of_op =
    match reg with
    | Reg x -> fst x
    | _ -> Rax (* just a filler, i need reg of operand for leaq, maybe TODO: change this *)
  in
  match a with
  | String str ->
      []
      (* [I_leaq(reg, )], String to memory location function or sth needed? *)
  | Var ent ->
    if is_local ent then
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then
        [I_leaq ((Some (lookup_bp_offset ent), Rbp, None),reg_of_op)]
      else
        [I_movq (Mem (Some (lookup_bp_offset ent), Rbp, None),reg)])
    else
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then
        get_AR(ent) @
        [I_leaq ((Some (lookup_bp_offset ent), Rsi, None),reg_of_op)]
      else        
        get_AR(ent) @
        [I_movq (Mem (Some (lookup_bp_offset ent), Rsi, None), reg)])
  (* TODO use proper `mov` later later. *)
  | Deref i -> load reg i
  | _ -> raise (Terminate "bad quad entry")


(* Generates assembly instructions to store a register to a memory location *)
and store reg a =
  match a with
  | Var ent ->
    if is_local ent then
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then
        [I_movq (reg, Mem (Some (lookup_bp_offset ent), Rbp, None))]
      else          
        [I_movq (Reg (Rsi, B64),Mem (Some (lookup_bp_offset ent), Rbp, None));
        I_movq (reg,Mem (None, Rsi, None))])
    else
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then
          get_AR(ent) @
          [I_movq (reg,Mem (Some (lookup_bp_offset ent), Rsi, None))]
      else
          get_AR(ent) @
          [I_movq (Mem (Some (lookup_bp_offset ent), Rsi, None),Reg (Rsi, B64));
          I_movq (reg,Mem (None, Rsi, None))])
  | Deref i -> load (Reg (Rdi, B64)) i @ [I_movq (reg,Mem (None, Rdi, None))]
  (* TODO Add Temp like the `load` case *)
  | _ -> raise (Terminate "bad quad entry")


(* generate a label for the beginning of a unit *)
and label_name p =
    (* TODO: WE NEED A QUEUE *)
    let id = id_name p.entry_id in
    let n = 1 in
    sprintf "_%s_%d" id n

(* generate a label for the end of a unit *)
(* and label_end_of p = *)
(*     (\* TODO: WE NEED A QUEUE *\) *)
(*     let id = id_name p.entry_id in *)
(*     let n = 1 in *)
(*     sprintf "@%s_%d" id n *)

and label_end_of str =
    (* TODO: WE NEED A QUEUE *)
    let id = str in
    let n = 1 in
    sprintf "@%s_%d" id n

(* generate a label for a quad with label `label_name` *)
and label_general p =
    (* TODO: need a hashtbl *)
    (* assign value n in hashtbl for p *)
    let n = 1 in
    sprintf "@%d" n



(* This function takes a quad, and returns a list of instructions*)
and ins_of_quad qd =
  match qd.quad_op with
  | Op_assign ->
    if is_encoded_as_int qd.quad_argX then
      let ld_ins = load (Reg (Rsi,B64)) qd.quad_argX in
      ld_ins @ store (Reg (Rsi,B64)) qd.quad_argZ
    else []
  | Op_array  ->
    let ld_ins  = load (Reg (Rax,B64)) qd.quad_argY in
    let ld_addr = load_addr (Reg (Rcx,B64)) qd.quad_argX in
    let st_ins  = store (Reg (Rax,B64)) qd.quad_argZ in
    let type_size = sizeOfType (TYPE_int 0) in (* TODO Fix, to lookup for the size of the array *)
    ld_ins @
    [I_movq (Reg (Rcx,B64),Const(Imm8 type_size))] @
    [I_imul (Reg (Rcx,B64),Rax) ] @ (* TODO Check size is correct*)
    ld_addr @
    [I_addq (Reg (Rcx,B64),Reg (Rax,B64))] @
    st_ins
  | Op_plus ->
    let ld1_ins = load (Reg (Rax,B64)) qd.quad_argX in
    let ld2_ins = load (Reg (Rdx,B64)) qd.quad_argY in
    let st_ins = store(Reg (Rax,B64)) qd.quad_argZ in
    ld1_ins @
    ld2_ins @
    [I_addq (Reg (Rax,B64),Reg (Rdx,B64)) ] @ (* TODO Chcek Size (q,w,..)*)
    st_ins
  | Op_minus ->
    let ld1_ins = load (Reg (Rax,B64)) qd.quad_argX in
    let ld2_ins = load (Reg (Rdx,B64)) qd.quad_argY in
    let st_ins = store(Reg (Rax,B64)) qd.quad_argZ in
    ld1_ins @
    ld2_ins @
    [I_subq (Reg (Rax,B64),Reg (Rdx,B64)) ] @ (* TODO Chcek Size (q,w,..)*)
    st_ins
  | Op_mult ->
    let ld1_ins = load (Reg (Rax,B64)) qd.quad_argX in
    let ld2_ins = load (Reg (Rcx,B64)) qd.quad_argY in
    let st_ins = store(Reg (Rax,B64)) qd.quad_argZ in
    ld1_ins @
    ld2_ins @
    [I_imul (Reg (Rax,B64),Rcx) ] @ (* TODO Chcek Size (q,w,..)*)
    st_ins
  | Op_div ->
    let ld1_ins = load (Reg (Rax,B64)) qd.quad_argX in
    (* cwd needed ? i guess depends on size *)
    let ld2_ins = load (Reg (Rcx,B64)) qd.quad_argY in
    let st_ins = store(Reg (Rax,B64)) qd.quad_argZ in
    ld1_ins @
    ld2_ins @
    [I_idiv (Reg (Rcx,B64)) ] @ (* TODO Chcek Size (q,w,..)*)
    st_ins
  | Op_mod ->
    let ld1_ins = load (Reg (Rax,B64)) qd.quad_argX in
    (* cwd needed ? i guess depends on size *)
    let ld2_ins = load (Reg (Rcx,B64)) qd.quad_argY in
    let st_ins = store(Reg (Rdx,B64)) qd.quad_argZ in
    ld1_ins @
    ld2_ins @
    [I_idiv (Reg (Rcx,B64)) ] @ (* TODO Chcek Size (q,w,..)*)
    st_ins
  | Op_eq ->
    let ld1_ins = load (Reg (Rax,B64)) qd.quad_argX in
    let ld2_ins = load (Reg (Rdx,B64)) qd.quad_argY in
    ld1_ins @
    ld2_ins @
    [I_cmp (Reg (Rax,B64),Reg (Rdx,B64));
     I_je (label_of(qd.quad_argZ))]
  (* | Op_neq -> *)
  (*   let ld1_ins = load (Reg (Rax,B64)) qd.quad_argX in *)
  (*   let ld2_ins = load (Reg (Rdx,B64)) qd.quad_argY in *)
  (*   ld1_ins @ *)
  (*   ld2_ins @ *)
  (*   [I_cmp (Reg (Rax,B64),Reg (Rdx,B64)); *)
  (*    I_jne (label_of(qd.quad_argZ))] *)
  | Op_lt ->
    let ld1_ins = load (Reg (Rax,B64)) qd.quad_argX in
    let ld2_ins = load (Reg (Rdx,B64)) qd.quad_argY in
    ld1_ins @
    ld2_ins @
    [I_cmp (Reg (Rax,B64),Reg (Rdx,B64)); 
     I_jl (label_of(qd.quad_argZ))]
  | Op_gt ->
    let ld1_ins = load (Reg (Rax,B64)) qd.quad_argX in
    let ld2_ins = load (Reg (Rdx,B64)) qd.quad_argY in
    ld1_ins @
    ld2_ins @
    [I_cmp (Reg (Rax,B64),Reg (Rdx,B64));
     I_jg (label_of(qd.quad_argZ))]
  | Op_ifb ->
    let ld1_ins = load (Reg (Rax,B64)) qd.quad_argX in
    ld1_ins @
    [I_cmp (Reg (Rax,B64),Const (Imm64 0)); (* TODO no or so immediate cmp *)
     I_jne (label_of(qd.quad_argZ))]
  | Op_jump ->
    [I_jmp (label_of (qd.quad_argZ))]
  | Op_unit ->
    (* TODO SOMEHOW GET sco_negofs for size and save to size *) 
    (* TODO PRINT LABEL N SHIT *)
    [I_pushq (Reg (Rbp, B64));
     I_movq (Reg (Rsp, B64), Reg (Rbp, B64));
     I_subq (Reg (Rsp, B64), Const(Imm8 3000))] (*TODO Imm8 size *)
  | Op_endu ->
    let ent = match qd.quad_argZ with 
              | UnitName x -> x
              | _ -> raise (Terminate "Bad operator of endu")
    in
    let endof = label_end_of(ent) ^ ":" in
    let endp = label_of(qd.quad_argX) ^ "\t endp\n" in
    [M_Label endof;
     I_movq (Reg (Rbp, B64), Reg (Rsp, B64));
     I_pushq (Reg (Rbp, B64));
     (* TODO I_ret ??? *)
     M_Label endp]
  | Op_ret ->
    []
  | Op_call ->
    []
  | Op_par ->
    []
  (* TODO Figure out label stuff *)
  | _ -> []

(* This function takes a list of quads, and returns a list of lists of istructions *)
let quads_to_ins qlist =
  List.fold qlist ~init:[] ~f:(fun acc quad -> ins_of_quad quad :: acc)
  |> List.rev

(* This Function Takes a List of Lists of instructions of x86_64, and prints them *)
let print_instructions lst =
  lst
  |> ListLabels.flatten
  |> List.iter ~f:(fun ins -> printf "%s" (string_of_ins_86_64 ins))
