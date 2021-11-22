.section .data
    .global op1
    .global op2
    .equ CONST, 15

.section .text
    .global sum # int sum(void)
    .global sum_v2 # int sum_v2(void)

sum:
    movl op1(%rip), %ecx # place op1 in ecx
    movl op2(%rip), %eax # place op2 in eax
    addl %ecx, %eax # add ecx to eax. Result is in eax
    ret
sum_v2:
    movl op1(%rip), %eax # place op1 in eax
    movl op2(%rip), %esi # place op2 in esi
    movl $CONST, %ecx # place CONST in ecx
    movl $CONST, %edx # place CONST in edx
    subl %eax, %ecx
    subl %esi, %edx
    subl %edx, %ecx
    movl %ecx, %eax
    ret  