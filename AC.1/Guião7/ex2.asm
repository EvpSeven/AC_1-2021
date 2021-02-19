	.data
	.eqv MAX_STR_SIZE,33
array:	.space MAX_STR_SIZE
	.text
	.globl main

main:

do:	
	li $v0,5
	syscall
	move $t1,$v0
	
	subu $sp,$sp,4
	sw $ra,($sp)
	
	move $a0,$t1
	li $a1,16
	la $a2,array
	jal itoa
	




while:bnez $t0,do
	
jr $ra