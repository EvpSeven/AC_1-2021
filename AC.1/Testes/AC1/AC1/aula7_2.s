	.data
str:	.asciiz "Arquitetura de Computadores I"
	.text
	.globl main
	
main:	
        addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	la $a0,str
	
	jal strrev
	
	move $a0,$v0
	li $v0,4
	syscall
	
	li $v0,0
	lw $ra,0($sp)
	addiu $sp,$sp,4
	
	jr $ra
	
strrev:
	addiu $sp,$sp,-16
	sw $s0,0($sp)
	sw $s1,4($sp)
	sw $s2,8($sp)
	sw $ra,12($sp)
	
	move $s0,$a0
	move $s1,$a0		# *p1
	move $s2,$a0		# *p2
	

while:	lb $t0,0($s2)

	beq $t0,'\0',endW
	addiu $s2,$s2,1		# p2++
	
	j while
	
endW:	subiu $s2,$s2,1		# p2--

while2:	
	
	bge $s1,$s2,endW2	# while(p1<p2)
	
	move $a0,$s1
	move $a1,$s2
	jal exchange
	
	addiu $s1,$s1,1		# p1++
	subiu $s2,$s2,1		# p2--
	
	j while2
	
endW2:	
	move $v0,$s0 		# return str
	lw $s0,0($sp)
	lw $s1,4($sp)
	lw $s2,8($sp)
	lw $ra,12($sp)
	addiu $sp,$sp,16
	
	jr $ra

exchange: 
	
	lb $t0,0($a0)
	lb $t1,0($a1)

	sb $t0,0($a1)
	sb $t1,0($a0)
	
	jr $ra
