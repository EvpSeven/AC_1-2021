	.globl itoa
	
itoa:				# unsigned int digit
	li $t1,0		# res = 0;
	
while:	lb $t2,0($a0)		# $t2 = *s
	blt $t2,'0',endW	#  
	bgt $t2,'9',endW	# while((*s>='0') && (*s <='9'))
	
	subiu $t3,$t2,'0'	# digit = *s++ -'0';
	addiu $a0,$a0,1		# s++;
	
	mulo $t1,$t1,10		# 10*res
	addu $t1,$t1,$t3	# res = 10*res + digit
	
	j while
	
endW:	move $v0,$t1		# return res;
	jr $ra
	
