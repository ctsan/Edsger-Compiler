open Core.Std
open Printf
open Symbol
open Ast
open Types
open Identifier

type label_id = string

type reg =
  | Rax | Rbx | Rcx | Rdx
  | Rsi | Rdi | Rbp | Rsp
  | Rth of int (* R8,R9,R10,R11,R12,R13,R14,R15 *)

type rtype =  B64 | B32  | B16L | B16H

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
  | D_str   of string
  | D_byte  of imm * label_id (* 8bit  *)
  | D_short of imm * label_id (* 16bit *)
  | D_long  of imm * label_id      (* 32bit integer *)
  | D_zero  of int (* number of bytes initialized as zero *)
  | M_Label of label_id
  | I_movq   of operand * operand
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

let get_AR l = 100
let update_AR l = 100
let load dst src = 100
let load_addr dst src = 100
 
let asm_of_quad qd = 9

