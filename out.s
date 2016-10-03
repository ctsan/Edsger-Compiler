.$0:
.globl main
main:
	pushq %rbp
	movq %rsp,%rbp
	subq $20,%rsp

.$1:
	movw $7,%ax
	pushw %ax

.$2:
	leaq -20(%rbp),%rax
	pushq %rax

.$3:
	subq $8,%rsp
	pushq 16(%rbp)
	call _readString
	addq $26,%rsp

.$4:
	leaq -20(%rbp),%rax
	pushq %rax

.$5:
	subq $8,%rsp
	pushq 16(%rbp)
	call _writeString
	addq $24,%rsp

.$6:
.$main_0_11:
	movq %rbp,%rsp
	popq %rbp
	ret

