.$0:
.globl _main
_main:
	pushq %rbp
	movq %rsp,%rbp
	subq $2,%rsp

.$1:
	leaq -2(%rbp),%rsi
	pushq %rsi

.$2:
	pushq 16(%rbp)
	call _readChar
	addq $16,%rsp

.$3:
	movb -1(%rbp),%al
	subq $1,%rsp
	movq %rsp,%rsi
	movb %al,(%rsi)

.$4:
	subq $8,%rsp
	pushq 16(%rbp)
	call _writeChar
	addq $17,%rsp

.$5:
.$main_0_11:
	movq %rbp,%rsp
	popq %rbp
	movq $0,%rax
	ret

