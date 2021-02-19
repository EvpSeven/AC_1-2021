	.data
str:	.asciiz"ITED - orievA ed edadisrevinU"
	.text
	.globl main
	
main:
	la $a0,str
	subu $sp,$sp,4
	sw $ra,($sp)
	jal strrev
	
	move $a0,$v0
	li $v0,4
	syscall
	lw $ra,($sp)
	addu $sp,$sp,4

jr $ra


strrev:	subu $sp,$sp,16
	sw   $ra, ($sp)
	sw   $s0,4($sp)
	sw   $s1,8($sp)
	sw   $s2,12($sp)
	
	move $s0,$a0
	move $s1,$a0
	move $s2,$a0
	lb $s3,($s2)
while1:	beq $s3,'\0',end_while1
	addi $s2,$s2,1
	lb $s3,($s2)	
	
	j while1
end_while1:	
	subi $s2,$s2,1
	
while2:	
	bge $s1,$s2,end_while2
	
	move $a0,$s1
	move $a1,$s2
	jal exchange
	addu $s1,$s1,1
	subu $s2,$s2,1
	
	j while2
	
end_while2:

	move $v0,$s0
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	
	addu $sp,$sp,16
	
	jr $ra

exchange:	
	lb $t0, ($a0)
	lb $t1, ($a1)
	
	move $t3,$t0
	move $t0,$t1
	move $t1,$t3
	
	sb $t0,($a0)
	sb $t1,($a1)	
	jr $ra

