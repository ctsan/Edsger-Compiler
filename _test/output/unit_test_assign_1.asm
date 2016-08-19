_main_0_1:
	pushq %rbp
	movq %rsp,%rbp
	subq %rsp,$2

@1:
	movw $9,%ax
	movw %ax,-2(%rbp)

@2:
@main_0_1:
	movq %rbp,%rsp
	popq %rbp
	ret
