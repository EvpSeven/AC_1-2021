.globl strlen

strlen: li $t1,0

while:	
	lb $t0,0($a0)
	addi $a0,$a0,1
	beq $t0,'\0',endw
	
	addi $t0,$t0,1
	j while
	
endw:	
	move $v0,$t0	#return len
	jr $ra