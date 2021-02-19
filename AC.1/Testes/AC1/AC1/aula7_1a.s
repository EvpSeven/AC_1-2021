	.globl strlen
	
strlen:	li $t0,0		# int len = 0;
	
while:	lb $t1,0($a0)		# $t1 = *s
	addi $a0,$a0,1		# *s++;
	beq $t1,'\0', endWhile	# while(*s++ != '\0')
	
	addi $t0,$t0,1		# len++;
	
	j while
	
endWhile:
	move $v0,$t0		# return len;
	
	jr $ra
	
