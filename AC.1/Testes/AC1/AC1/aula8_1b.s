	.data
str:	.asciiz "2016 e 2020 sao anos bissextos"

	.text
	.globl main

main:	subiu $sp,$sp,4
	sw $ra,0($sp)

	la $a0,str	# $a0 = &str
	
	jal itoa
	
	move $a0,$v0
	li $v0,1
	syscall		# print_int10(atoi(str))
	
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	
	jr $ra
	
	
