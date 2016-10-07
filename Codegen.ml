open Core.Std
open Symbol
open Ast
open Types
open Identifier
open Intermediary

type label_id = string
let string_of_label l = sprintf "%s:\n" l
let string_of_targ_label l = sprintf "%s" l

type reg =
  | Rax | Rbx | Rcx | Rdx
  | Rsi | Rdi | Rbp | Rsp
  | Rip
  | Rth of int (* R8,R9,R10,R11,R12,R13,R14,R15 *)

     (* e.g. rax,   eax,   ax,   ah,   al *)
type rtype =  B64 | B32  | B16 | B8H | B8L

type reg_form = reg * rtype

type imm =
  | Imm8  of int
  | Imm16 of int
  | Imm32 of int
  | Imm64 of int

type str_or_int = Str of string | Num of int

type memory_location = str_or_int option * reg * reg option * int option

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
  | D_asciz of label_id * string
  | M_Globl of label_id
  | M_Label of label_id

  | I_movb  of operand * operand
  | I_movw  of operand * operand
  | I_movl  of operand * operand
  | I_movq  of operand * operand

  | I_pushq of operand (* reg64, mem, const64 *)
  | I_pushw of operand (* Change to enforce 16bit operand *)
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

  | I_cbtw (* AX <- Sign Extend AL *)
  | I_cwtd (* EAX <- Sign Extend AX  *)
  | I_cltd  (*  RAX <- Sign Extend EAX  *)

  | I_imul  of operand * operand (* first operand:reg or mem, result is always a register 64bit (WHY???) *)
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
  | I_call  of label_id
  | I_empty (* for debugging *)


let string_of_imm = function
  | Imm8  i
  | Imm16 i
  | Imm32 i
  | Imm64 i ->
     sprintf "$%d" i (* NOTE: Added \n *)

let string_of_reg r =
  match r with
  | Rax -> "%rax"
  | Rbx -> "%rbx"
  | Rcx -> "%rcx"
  | Rdx -> "%rdx"
  | Rsi -> "%rsi"
  | Rdi -> "%rdi"
  | Rbp -> "%rbp"
  | Rsp -> "%rsp"
  | Rip -> "%rip"
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
  | (None, r, None,None) | (Some (Num 0), r, None,None) ->
     sprintf "(%s)" (string_of_reg r)
  (* | (Some x, r, None,None) when x > 0 -> *)
  (*     "+" ^ Int.to_string x ^ (sprintf "(%s)" (string_of_reg r)) *)
  | (Some (Num x), r, None,None) ->
      Int.to_string x ^ (sprintf "(%s)" (string_of_reg r))
  | (Some (Str str), r, None, None) ->
      sprintf "%s(%s)" str (string_of_reg r)
  | _ ->
      "No clue what's this or if it's needed"
  (* TODO: ^ ???? *)

let string_of_operand = function
  | Reg r     -> string_of_reg_form r
  | Mem mloc  -> string_of_memory_location mloc
  | Const imm -> string_of_imm imm

let string_of_ins_86_64 = function
  | D_str  (label,str)   -> (string_of_label label) ^ sprintf "\t.string %S\n" str
  | D_byte  (label,num)  -> (string_of_label label) ^ sprintf "\t.byte " ^ string_of_imm num
  | D_short  (label,num) -> (string_of_label label) ^ sprintf "\t.short " ^ string_of_imm num
  | D_long  (label,num)  -> (string_of_label label) ^ sprintf "\t.long " ^ string_of_imm num
  | D_zero (label,total) -> (string_of_label label) ^ sprintf "\t.zero %d\n" total
  | D_asciz (label, str) -> (string_of_label label) ^ sprintf "\t.asciz\t\"%s\"\n" str
  | M_Globl label        -> sprintf "%s\n" (string_of_targ_label label)
  | M_Label label        -> sprintf "%s" (string_of_label label)
  | I_movb (op1,op2)     -> sprintf "\tmovb %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_movw (op1,op2)     -> sprintf "\tmovw %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_movl (op1,op2)     -> sprintf "\tmovl %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_movq (op1,op2)     -> sprintf "\tmovq %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_pushq op           -> sprintf "\tpushq %s\n" (string_of_operand op)
  | I_pushw op           -> sprintf "\tpushw %s\n" (string_of_operand op)
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
  | I_imul (op1,op2)    -> sprintf "\timul %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_idiv reg1          -> sprintf "\tidiv %s\n" (string_of_operand reg1)
  | I_idivw mem          -> sprintf "\tidivw %s\n" (string_of_memory_location mem)
  | I_jmp label          -> sprintf "\tjmp %s\n" (string_of_targ_label label)
  | I_cmp (op1,op2)      -> sprintf "\tcmp %s,%s\n" (string_of_operand op1) (string_of_operand op2)
  | I_je label           -> sprintf "\tje %s\n" (string_of_targ_label label)
  | I_jne label          -> sprintf "\tjne %s\n" (string_of_targ_label label)
  | I_jz label           -> sprintf "\tjz %s\n" (string_of_targ_label label)
  | I_jg label           -> sprintf "\tjg %s\n" (string_of_targ_label label)
  | I_jge label          -> sprintf "\tjge %s\n" (string_of_targ_label label)
  | I_jl label           -> sprintf "\tjl %s\n" (string_of_targ_label label)
  | I_jle label          -> sprintf "\tjle %s\n" (string_of_targ_label label)
  | I_ret                -> sprintf "\tret\n"
  | I_empty              -> sprintf "\n"
  | I_call label         -> sprintf "\tcall %s\n" (string_of_targ_label label)
  | I_cbtw               -> sprintf "\tcbtw\n"
  | I_cltd               -> sprintf "\tcltd\n"
  | I_cwtd               -> sprintf "\tcwtd\n"

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

let str_lab_stk = Stack.create ()

let make_inst_of_stk stk =
  let res = Stack.fold stk ~init:[] ~f:(fun acc (strlab, str) -> (D_asciz (strlab, str))::acc ) in
  Stack.clear stk; res

let add_instruction i =
  instructions := i :: !instructions

let label_counter = ref 0

let uniq_lab_of_str () =
    incr label_counter;
    sprintf ".LC.%d" (!label_counter);;

(* input: Takes entry l of parameter *)
(* output: returns  ins_86_64 list *)
let get_AR l =
  let base = I_movq (Mem (Some (Num (2*ptrBytes)), Rbp, None,None),Reg (Rsi, B64)) in
  let na = l.entry_scope.sco_nesting in
  let ncur = (Stack.top_exn call_stack).entry_scope.sco_nesting in
  let rest = List.(range 0 (ncur-na) |> (* TODO Test again, since it doesnt agree with quads.pdf *)
                   map ~f:(fun _ -> I_movq (Mem (Some (Num (2*ptrBytes)), Rsi, None,None), Reg (Rsi, B64))))  in
  base::rest

(* input: Takes callee and called function entries *)
(* output: returns ins_86_64 list *)
let update_AL callee called =
  let np = callee.entry_scope.sco_nesting in
  let nx = called.entry_scope.sco_nesting in
  if (np < nx) then
    [I_pushq (Reg (Rbp, B64))]
  else if (np = nx) then
    [I_pushq (Mem (Some (Num (ptrBytes*2)), Rbp, None,None))]
  else
    let fst = I_movq (Mem (Some (Num (ptrBytes*2)), Rbp, None,None),Reg (Rsi, B64)) in
    let nth = I_movq (Mem ((Some (Num (ptrBytes*2))), Rsi, None,None), Reg (Rsi, B64)) in
    let lst = [I_pushq (Mem (Some (Num (ptrBytes*2)), Rsi, None,None))] in
    let med_elts = List.range 0 (np-nx-1) |> List.map ~f:(fun _ -> nth ) in
    fst :: med_elts @ lst

let is_par e = match e.entry_info with
| ENTRY_parameter _ -> true
| ENTRY_variable _ | ENTRY_temporary _ -> false
| _ -> raise (Terminate "Bad entry to load")

let regSizeOfEntry (e, from_ptr) = 
  let rsize = if from_ptr then size_of_entry_deref e else size_of_entry e in
  if rsize = intBytes then B16
  else if rsize = charBytes then B8L
  else if rsize = doubleBytes then raise (Terminate "Doubles in regSizeOfEntry")
  else if rsize = ptrBytes then B64
  else raise (Terminate ("Strange size of entry = " ^ string_of_int rsize))

let regSizeOfOperand = function
  | Var e -> regSizeOfEntry (e,false)
  | Temp e -> regSizeOfEntry (e,false)
  | Char _ | Bool _ -> B8L
  | Int _ -> B16
  | String _ | Address _ -> B64
  | _ -> raise (Terminate "regSizeOfOperand strange operand")

let transMov rsize = function
  | I_movq (x,y) when rsize = B8L -> I_movb (x,y)
  | I_movq (x,y) when rsize = B16 -> I_movw (x,y)
  | I_movq (x,y) when rsize = B32 -> I_movl (x,y)
  | I_movq (x,y) when rsize = B64 -> I_movq (x,y)
  | _ -> raise (Terminate "strange transform of mov")

(* input: the register to which, we will move address of the result *)
(* output: needed ins_86_64 list *)
let rec load_result_address reg =
  [ I_movq (Mem (Some (Num (3*ptrBytes)), Rbp,None,None),reg) ]

(* input: This function takes a destination register, and a source argument *)
(* output: a list of the necessery assembly instructions *)
let rec load reg a =
  match a with
  | Int n ->
      [I_movw(Const (Imm16 n), Reg (reg, B16))]
  | Bool b ->
      [I_movb(Const (Imm8 (bool_to_int b)), Reg (reg, B8L))] (* NOTE: implemented mine coz of incompatibility *)
  | Char chr ->
      [I_movb(Const (Imm8 (Char.to_int chr)), Reg (reg, B8L))]
  | Var ent ->
    if not (is_mutable ent.entry_id) then 
      load_addr reg a
    else
    if is_local ent then
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then
        let rsize = regSizeOfEntry (ent, false) in
        [I_movq (Mem (Some (Num (lookup_bp_offset ent)), Rbp, None,None), Reg (reg,rsize)) 
         |> transMov rsize]
      else
        let rsize = regSizeOfEntry (ent, true) in
        [I_movq (Mem (Some (Num (lookup_bp_offset ent)), Rbp, None,None),Reg (Rsi, B64));
         I_movq (Mem (None, Rsi, None,None), Reg (reg,rsize)) |> transMov rsize]) 
    else
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then
        let rsize = regSizeOfEntry (ent, false) in 
        get_AR(ent) @
        [I_movq (Mem (Some (Num (lookup_bp_offset ent)), Rsi, None,None), Reg (reg,rsize)) |> transMov rsize]
      else
        let rsize = regSizeOfEntry (ent, true) in
        get_AR(ent) @
        [I_movq (Mem (Some (Num (lookup_bp_offset ent)), Rsi, None,None),Reg (Rsi, B64));
        I_movq (Mem (None, Rsi, None,None), Reg (reg,rsize)) |> transMov rsize]) 
  | Address i -> load_addr reg i
  | Deref i -> 
      load Rdi i @ 
      [I_movq (Mem (None,Rdi,None,None),Reg (reg,B64))] (* TODO fix movq *)
  (* TODO adjust `mov` size*)
  | Temp n ->
      let rsize = regSizeOfEntry (n, false) in
      [I_movq (Mem (Some (Num (lookup_bp_offset n)),Rbp,None,None), Reg (reg, rsize))
       |> transMov rsize]
  | String str ->
      let strlab = uniq_lab_of_str () in
      Stack.push str_lab_stk (strlab, str);
      [I_leaq ((Some (Str strlab), Rip, None, None), reg)]
  | _ -> raise (Terminate "bad quad entry")

(* Takes operand of quad that is String str (Label int????) *)
(* Returns M_Label (ins) str *)
and label_of e =
  match e with
  (* | String str -> "@p" ^ str *)
  | Label int -> ".$" ^ Int.to_string int
  | _ -> raise (Terminate "Label can only be string")

(* input: This function takes a destination register, and a source argument *)
(* output: a list of the necessery assembly instructions *)
(* Pretty much the same as load but with lea *)
and load_addr reg a =
  match a with
  | String str ->
      []
      (* [I_leaq(reg, )], String to memory location function or sth needed? *)
  | Var ent ->
    if is_local ent then
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then        
        [I_leaq ( (Some (Num (lookup_bp_offset ent)), Rbp, None,None) ,reg)]
      else
        [I_movq (Mem (Some (Num (lookup_bp_offset ent)), Rbp, None,None), Reg (reg, B64))])
    else
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then
        get_AR(ent) @
        [I_leaq ((Some (Num (lookup_bp_offset ent)), Rsi, None,None),reg)]
      else        
        get_AR(ent) @
        [I_movq (Mem (Some (Num (lookup_bp_offset ent)), Rsi, None,None), Reg (reg, B64))])
  (* TODO use proper `mov` later later. *)
  | Deref i -> load reg i
  | Temp n ->
      let rsize = regSizeOfEntry (n, false) in
      [I_leaq ((Some (Num (lookup_bp_offset n)),Rbp,None,None), reg)] (* fix type *)
  | _ -> raise (Terminate "bad quad entry")


(* Generates assembly instructions to store a register to a memory location *)
and store reg a =
  match a with
  | Var ent ->
    if is_local ent then
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then
        let rsize = regSizeOfEntry (ent, false) in
        [I_movq (Reg (reg,rsize), Mem (Some (Num (lookup_bp_offset ent)), Rbp, None,None))
         |> transMov rsize]
      else
        let rsize = regSizeOfEntry (ent, true) in
        [I_movq (Reg (Rsi, B64),Mem (Some (Num (lookup_bp_offset ent)), Rbp, None,None));
        I_movq (Reg (reg,rsize),Mem (None, Rsi, None,None)) |> transMov rsize])
    else
     (if (not (is_par ent) || lookup_passmode ent = PASS_BY_VALUE) then
        let rsize = regSizeOfEntry (ent, false) in
        get_AR(ent) @
        [I_movq (Reg (reg,rsize),Mem (Some (Num (lookup_bp_offset ent)), Rsi, None,None))
         |> transMov rsize]
      else
        let rsize = regSizeOfEntry (ent, true) in
        get_AR(ent) @
        [I_movq (Mem (Some (Num (lookup_bp_offset ent)), Rsi, None,None),Reg (Rsi, B64));
         I_movq (Reg (reg,rsize),Mem (None, Rsi, None,None)) |> transMov rsize])
  | Deref i -> 
      load Rdi i @ 
      [I_movq (Reg (reg,B64),Mem (None, Rdi, None,None))] (* TODO fix movq *)
  (* TODO Add Temp like the `load` case *)
  | Temp n -> 
      let rsize = regSizeOfEntry (n, false) in
      [I_movq (Reg (reg, rsize),Mem (Some (Num (lookup_bp_offset n)),Rbp,None,None))
       |> transMov rsize]
  | _ -> raise (Terminate "bad quad entry")


(* generate a label for the beginning of a unit *)
and label_name p =
    (* TODO: WE NEED A QUEUE *)
    match p with
    | UnitName ent ->
      let id = uniq_id_of_fun ent in
      sprintf "_%s_%d" (string_of_entry ent) id
    | _ -> raise (Failure "This should be called with procedure name\n")

(* genearte label for the end of a unit*)
and label_end_of p =
    match p with
    | UnitName ent -> sprintf ".$%s_%d" (string_of_entry ent) (uniq_id_of_fun ent)
    | _ -> raise (Failure "This should be called with procedure name\n")

(* generate a label for the end of a unit *)
(* and label_end_of p = *)
(*     (\* TODO: WE NEED A QUEUE *\) *)
(*     let id = id_name p.entry_id in *)
(*     let n = 1 in *)
(*     sprintf "@%s_%d" id n *)

(* and label_name str = *)
(*     (\* TODO: WE NEED A QUEUE *\) *)
(*     let id = str in *)
(*     let n = 1 in *)
(*     sprintf "_%s_%d" id n *)


(* generate a label for a quad with label `label_name` *)
and label_general p =
    (* TODO: need a hashtbl *)
    (* assign value n in hashtbl for p *)
    let n = 1 in
    sprintf ".$%d" n



(* This function takes a quad, and returns a list of instructions*)
and ins_of_quad qd =
  M_Label (label_of (Label qd.quad_tag)) :: (match qd.quad_op with
  | Op_assign ->
    if is_encoded_as_int qd.quad_argX then
      let ld_ins = load Rax qd.quad_argX in
      ld_ins @ store Rax qd.quad_argZ
    else []
  | Op_array ->
    let ld_ins  = load Rax qd.quad_argY in
    let ld_addr = load_addr Rax qd.quad_argX in (* TODO Test this is correct *)
    let st_ins  = store Rax qd.quad_argZ in
    let type_size = qd.quad_argX |> type_of_operand |> deref_expr |>  sizeOfType   in 
    ld_ins @
    [I_movw (Const(Imm8 type_size),Reg (Rcx,B16))] @
    (* Offset goes to RCX *)
    [I_imul (Reg(Rax,B16), Reg (Rcx, B16)) ] @ (* TODO double check imul has the correct format *)
    (* address goes to RAX*)
    ld_addr @
    (* sum offset (RCX) and address (RAX) *)
    [I_addq (Reg (Rcx,B16),Reg (Rax,B64))] @
    st_ins
  | Op_plus ->
    let ld1_ins = load Rax qd.quad_argX in
    let ld2_ins = load Rdx qd.quad_argY in
    let st_ins = store Rax qd.quad_argZ in
    let rsize = regSizeOfOperand qd.quad_argX in
    let add_ins (r1,r2) = 
      if rsize = B8L then [I_addb (r1,r2)]
      else if rsize = B16 then [I_addw (r1,r2)]
      (*else if rsize = ?? then raise (Terminate "double in ins_of_quad op_plus")*)
      else if rsize = B64 then [I_addq (r1,r2)]
      else raise (Terminate "Strange rsize of operand")
    in
    ld1_ins @
    ld2_ins @
    add_ins (Reg (Rdx,rsize),Reg (Rax,rsize)) @ 
    st_ins
  | Op_minus ->
    let ld1_ins = load Rax qd.quad_argX in
    let ld2_ins = load Rdx qd.quad_argY in
    let st_ins = store Rax qd.quad_argZ in
    let rsize = regSizeOfOperand qd.quad_argX in
    let sub_ins (r1,r2) = 
      if rsize = B8L then [I_subb (r1,r2)]
      else if rsize = B16 then [I_subw (r1,r2)]
      (*else if rsize = ?? then raise (Terminate "double in ins_of_quad op_plus")*)
      else if rsize = B64 then [I_subq (r1,r2)]
      else raise (Terminate "Strange rsize of operand") in
    ld1_ins @
    ld2_ins @
    sub_ins (Reg (Rdx,rsize),Reg (Rax,rsize))  @
    st_ins
  | Op_mult ->
    let ld1_ins = load Rax qd.quad_argX in
    let ld2_ins = load Rcx qd.quad_argY in
    let st_ins = store Rax qd.quad_argZ in
    let rsize = regSizeOfOperand qd.quad_argX in
    ld1_ins @
    ld2_ins @
    [I_imul (Reg (Rcx,rsize), Reg (Rax,rsize)) ] @ 
    st_ins
  | Op_div ->
    let ld1_ins = load Rax qd.quad_argX in
    let ld2_ins = load Rcx qd.quad_argY in
    let rsize = regSizeOfOperand qd.quad_argX in
    let conv_ins = 
      if rsize = B8L then [I_cbtw]
      else if rsize = B16 then [I_cwtd]
      else if rsize = B32 then [I_cltd] 
      else raise (Terminate "Strange rsize division") in
    let st_ins = store Rax qd.quad_argZ in
    ld1_ins @
    ld2_ins @
    conv_ins @
    [I_idiv (Reg (Rcx,rsize)) ] @
    st_ins
  | Op_mod ->
    let ld1_ins = load Rax qd.quad_argX in
    let ld2_ins = load Rcx qd.quad_argY in
    let rsize = regSizeOfOperand qd.quad_argX in
    let conv_ins = 
      if rsize = B8L then [I_cbtw]
      else if rsize = B16 then [I_cwtd]
      else if rsize = B32 then [I_cltd] 
      else raise (Terminate "Strange rsize division") in
    let st_ins = 
      if rsize = B8L then store Rax qd.quad_argZ 
      else store Rdx qd.quad_argZ in
    ld1_ins @
    ld2_ins @
    conv_ins @
    [I_idiv (Reg (Rcx,rsize)) ] @ 
    st_ins
  | Op_eq ->
    let ld1_ins = load Rax qd.quad_argX in
    let ld2_ins = load Rdx qd.quad_argY in
    let rsize = regSizeOfOperand qd.quad_argX in
    ld1_ins @
    ld2_ins @
    [I_cmp (Reg (Rdx,rsize),Reg (Rax,rsize));
     I_je (label_of(qd.quad_argZ))]
  (* | Op_neq -> *)
  (*   let ld1_ins = load (Reg (Rax,B64)) qd.quad_argX in *)
  (*   let ld2_ins = load (Reg (Rdx,B64)) qd.quad_argY in *)
  (*   ld1_ins @ *)
  (*   ld2_ins @ *)
  (*   [I_cmp (Reg (Rdx,B64),Reg (Rax,B64)); *)
  (*    I_jne (label_of(qd.quad_argZ))] *)
  | Op_lt ->
    let ld1_ins = load Rax qd.quad_argX in
    let ld2_ins = load Rdx qd.quad_argY in
    let rsize = regSizeOfOperand qd.quad_argX in
    ld1_ins @
    ld2_ins @
    [I_cmp (Reg (Rdx,rsize),Reg (Rax,rsize)); 
     I_jl (label_of(qd.quad_argZ))]
  | Op_gt ->
    let ld1_ins = load Rax qd.quad_argX in
    let ld2_ins = load Rdx qd.quad_argY in
    let rsize = regSizeOfOperand qd.quad_argX in
    ld1_ins @
    ld2_ins @
    [I_cmp (Reg (Rdx,rsize),Reg (Rax,rsize));
     I_jg (label_of(qd.quad_argZ))]
  | Op_ifb ->
    let ld1_ins = load Rax qd.quad_argX in
    ld1_ins @
    [I_cmp (Const (Imm8 0), Reg (Rax,B8L)); (* TODO no or so immediate cmp *)
     I_jne (label_of(qd.quad_argZ))]
  | Op_jump ->
    [I_jmp (label_of (qd.quad_argZ))]
  | Op_unit ->
    (* TODO SOMEHOW GET sco_negofs for size and save to size *) 
    (* TODO PRINT LABEL N SHIT *)
    (match qd.quad_argX with
    | UnitName ent -> Stack.push call_stack (ent)
    | _ -> raise (Failure "incorrect argument"));
    let final_label = 
      let entr_id = match qd.quad_argX with
      | UnitName e -> e.entry_id
      | _ -> raise (Failure "This can't happen")
      in
      if id_name entr_id = "main_0" then
        [M_Globl ".globl main";
         M_Label "main"]
      else 
        [M_Label (label_name qd.quad_argX)]
    in
    let size = lookup_fr_size () in
    final_label @ 
    [
     I_pushq (Reg (Rbp, B64));
     I_movq (Reg (Rsp, B64), Reg (Rbp, B64));
     I_subq (Const(Imm8 size), Reg (Rsp, B64))] (*TODO Imm8 size *)
  | Op_endu ->
    let endof = label_end_of(qd.quad_argZ)  in
    (* let endp =  label_name(qd.quad_argZ) ^ " endp\n" in *)
    ignore (Stack.pop_exn call_stack);
    [
     M_Label endof;
     I_movq (Reg (Rbp, B64), Reg (Rsp, B64));
     I_popq (Reg (Rbp, B64));
     (* I_movq (Const(Imm8 0), Reg (Rax, B64)); (\* to return 0 to OS, prone to error*\) *)
     I_ret
    ] @
     (* M_Label endp  TODO use endp if at&t will be used *)
    make_inst_of_stk str_lab_stk
  | Op_retv ->
    let current = Stack.top_exn call_stack in
    let rsize = regSizeOfOperand qd.quad_argX in
    let mv_ins (r1,r2) =
      if rsize = B8L then [I_movb (r1,r2)]
      else if rsize = B16 then [I_movw (r1,r2)]
      else if rsize = B64 then [I_movq (r1,r2)]
      else raise (Terminate "Strange rsize of operand retv") in
    load Rax qd.quad_argX @
    load_result_address (Reg (Rdx,B64)) @
    mv_ins(Reg (Rax,rsize), Mem (None,Rdx,None,None)) (* TODO fix size (Size of Result Type) *)
  | Op_ret ->
    let current = Stack.top_exn call_stack in
    [I_jmp (label_end_of (UnitName current))]
  | Op_call ->
    let fix_procs_offset_ins entry =
      if is_procedure entry then [I_subq ( Const (Imm8 8),Reg (Rsp,B64))]
      else []
    in
    let ent = match qd.quad_argZ with
            | UnitName e -> e
            | _ -> raise (Terminate "call with non-function")
    in
    let final_tar_lab =
      if id_name (ent.entry_id) = "main_0" then "main"
      else if fun_is_globally_defined ent.entry_id then uniq_string_of_fentry(ent)
      else "_" ^ (id_name ent.entry_id |> String.rsplit2_exn ~on:'_' |> fst)
    in
    let par_size = match ent.entry_info with
                    | ENTRY_function f -> size_of_params f.function_paramlist (* TODO implement *)
                    | _ -> raise (Terminate "call with non-function")
    in
    let called_ent = (match qd.quad_argZ with
      | UnitName e -> e
      | _ -> raise (Failure "Bad arg"))
    in
    fix_procs_offset_ins called_ent @
    update_AL (Stack.top_exn call_stack) called_ent @
    [
     I_call (final_tar_lab);
     I_addq (Const (Imm8 (par_size + ptrBytes * 2)),Reg (Rsp,B64)) (* TODO size ?? *)
    ]
  | Op_par ->
    let xsize = size_of_operand qd.quad_argX in
    let ptype =
      match qd.quad_argY with
      | PassType p -> p
      | _ -> raise (Terminate "par quad with no passtype")
    in (match ptype with
        (* TODO !IMPORTANT You probably can't do the following *)
        | V when xsize = intBytes  ->
          load (Rax) qd.quad_argX @ (* TODO fix register based on size *)
          [I_pushw (Reg (Rax, B16))]         (* maybe correct here *)
        | V when xsize = ptrBytes  ->
          load (Rax) qd.quad_argX @ (* TODO fix register based on size *)
          [I_pushq (Reg (Rax, B64))]         (* maybe correct here *)
        | V when xsize = charBytes ->
          load (Rax) qd.quad_argX @
          [I_subq (Const (Imm8 1), Reg (Rsp, B64));
          I_movq (Reg (Rsp, B64), Reg (Rsi, B64));
          I_movb (Reg (Rax, B8L), Mem (Some (Num 0), Rsi ,None,None))
          ]
        | V when xsize = doubleBytes ->
          [] (* TODO doubles *)
        | R | RET ->
          load_addr Rsi qd.quad_argX @
          [I_pushq (Reg (Rsi, B64))]
        | _ -> raise (Terminate "Bad size of par"))
  (* TODO Figure out label stuff *)
  | _ -> []) @ [I_empty] (* NOTE Inneficient, reconsider *)

(* This function takes a list of quads, and returns a list of lists of istructions *)
let quads_to_ins qlist =
  qlist
  |> List.rev
  |> List.fold ~init:[] ~f:(fun acc quad -> ins_of_quad quad :: acc)

(* This Function Takes a List of Lists of instructions of x86_64, and prints them *)
let print_instructions lst =
  lst
  |> ListLabels.flatten
  |> List.iter ~f:(fun ins -> printf "%s" (string_of_ins_86_64 ins))

let write_instructions lst ~filename =
  let module O = Out_channel in
  let ofile = O.create filename in
  lst
  |> ListLabels.flatten
  |> List.iter ~f:(fun ins -> O.output_string ofile (string_of_ins_86_64 ins))
  ; O.close ofile

let instrss: ins_86_64 list list list ref = ref []

let add_list_of_ins lst =
  instrss := lst::!instrss

let get_all_instructions () =
  ListLabels.flatten (!instrss) |> List.rev
