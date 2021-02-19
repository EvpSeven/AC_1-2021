	.data
str:	.asciiz "2016 e 2020 sao anos bissextos"
	.text
	.globl main
main:	
	addiu $sp,$sp,-4	#stack space
	sw $ra,0($sp)		#save $ra
	#
	la $a0,str
	jal atoi
	
	move $a0,$v0
	li $v0,1
	syscall
	
	lw $ra,0($sp)		#restore $ra
	addiu $sp, $sp,4	#restore $sp
	li $v0,0		#return 0
	jr $ra
	
	# in: $a0; out: $v0
atoi:	li $v0, 0			# $v0 = result
wh:	lb $t0, ($a0)
	# if( (*s<'0') || (*s> '9') not_dig
	bltu $t0, '0', not_dig
	bgtu $t0, '9', not_dig
	subu $t1, $t0, '0'		# digit = *s - '0';
	addiu $a0, $a0, 1		# s++
	mulu $v0, $v0, 10		# res *= 10
	addu $v0, $v0, $t1		# res += digit
	b wh
not_dig:
	jr $ra
#
#	2040
#