@0:
_main_0_1:
	pushq %rbp
	movq %rsp,%rbp
	subq %rsp,$4

@1:
	movw $1,%ax
	movw $2,%dx
	cmp %ax,%dx
	jl @3

@2:
	jmp @5

@3:
	movw $100,%ax
	movw %ax,-4(%rbp)

@4:
	jmp @6

@5:
	movw $200,%ax
	movw %ax,-4(%rbp)

@6:
	movw -4(%rbp),%ax
	movw %ax,-2(%rbp)

@7:
@main_0_1:
	movq %rbp,%rsp
	popq %rbp
	ret
