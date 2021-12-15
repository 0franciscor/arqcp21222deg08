.section .text
	.global inc_and_square

inc_and_square:
    # *v1 em %edi
	# v2 em %esi

	movq (%rdi), %rcx
	addl $1 , %ecx
	movq %rcx , (%rdi)
	
	
	jmp square

square:
	movl %esi, %eax
	mull %esi
	jmp end

end:
	ret

	
	