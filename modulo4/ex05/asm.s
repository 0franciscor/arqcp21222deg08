.section .text
	.global inc_and_square

inc_and_square:
    # *v1 em %edi
	# v2 em %esi

	movl (%rdi), %ecx
	addl $1 , %ecx
	movl %ecx , (%rdi)
	
	jmp square

square:
	movl %esi, %eax
	mull %esi
	jmp end

end:
	ret

	
	