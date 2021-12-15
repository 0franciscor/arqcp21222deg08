.section .text
	.global sum_n
sum_n:
	movl $0, %eax
	movl $1, %ecx

	cmpl %eax, %edi
	jle end

	jmp loop

loop:
	addl %ecx, %eax

	cmpl %ecx, %edi
	je end

	incl %ecx

	jmp loop
end:
	ret