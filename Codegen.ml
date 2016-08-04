open Core.Std
open Printf
open Symbol
open Ast
open Types
open Identifier

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

type memory_location =
  | Effective of int option * reg * reg option

type operand =
  | Reg   of reg_form
  | Mem   of memory_location
  | Const of imm

(* this can be extended to add more instructions  *)
type ins_86_64 =
  | D_str   of label_id * string
  | D_byte  of label_id * imm  (* 8bit  *)
  | D_short of label_id * imm  (* 16bit *)
  | D_long  of label_id * imm       (* 32bit integer *)
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
  | I_idiv  of operand (* mem,reg: divides 128-bit integer (rdx:rax), remained in rdx, quotient in rax.*)
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

let string_of_imm = function
  | Imm8  i
  | Imm16 i
  | Imm32 i
  | Imm64 i ->
     sprintf "$%d" i

let string_of_reg_form n = "" (* TODO !*)
let string_of_memory_location n = "" (* TODO !*)

let string_of_operand = function
  | Reg r     -> string_of_reg_form r
  | Mem mloc  -> string_of_memory_location mloc
  | Const imm -> string_of_imm imm

let string_of_ins_86_64 = function
  | D_str  (label,str)   -> (string_of_label label) ^ sprintf "\t.string %S\n" str
  | D_zero (label,total) -> (string_of_label label) ^ sprintf "\t.zero %d\n" total
  | I_movq (op1,op2)     -> sprintf "\tmovq %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | _ -> sprintf "this is not implemented\n"

let instructions = ref []

let add_instruction i =
  instructions := i :: !instructions

let get_AR l = 100

let update_AR l = 100
let load dst src = 100
let load_addr dst src = 100

let asm_of_quad qd = 9


