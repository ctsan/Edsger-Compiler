.$0:
.globl main
main:
	pushq %rbp
	movq %rsp,%rbp
	subq $0,%rsp

.$1:
	leaq .LC.1(%rip),%rax
	pushq %rax

.$2:
	subq $8,%rsp
	pushq 16(%rbp)
	call _writeString
	addq $24,%rsp

.$3:
.$main_0_2:
	movq %rbp,%rsp
	popq %rbp
	movq $0,%rax
	ret
.LC.1:
	.asciz	"Hello World!\n"

