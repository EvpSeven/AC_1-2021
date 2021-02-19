	.data
	.eqv STR_MAX_SIZE,30
str1:	.asciiz"I serodatupmoC ed arutetiuqrA"
	.align 2
str2:   .space 31
break1:	.asciiz"\n"
error:	.asciiz"String too long: "
	.text
	.globl main
	
main:	li $t0,0

	subu $sp,$sp,8
	sw $t0,($sp)
	sw $ra,4($sp)
	
	la $a0,str1
	jal strlen
	
	move $t1,$v0
	lw $t0,($sp)
	lw $ra,4($sp)
	addu $sp,$sp,8
	
	
if:	bgt $t1,STR_MAX_SIZE,else
	
	subu $sp,$sp,12
	sw $ra,($sp)
	sw $t0,4($sp)
	sw $t1,8($sp)
	
	la $a0,str2
	la $a1,str1
	jal strcpy
	
	lw $ra,($sp)
	lw $t0,4($sp)
	lw $t1,8($sp)
	addu $sp,$sp,12
	
	move $t2,$v0
	
	move $a0,$t2
	li $v0,4
	syscall
	
	la $a0,break1
	syscall
	
	subu $sp,$sp,16
	sw $ra,($sp)
	sw $t0,4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	
	move $a0,$t2
	jal strrev
	
	
	lw $ra,($sp)
	lw $t0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	addu $sp,$sp,16
	
	move $t2,$v0
	
	move $a0,$t2
	li $v0,4
	syscall
		
	j end_else
end_if:

else:
		la $a0,error
		li $v0,4
		syscall
		
		move $a0,$t1
		li $v0,1
		syscall
		
		li $t0,-1	
end_else:
	
	move $v0,$t0

jr $ra


#################################################################################################################################

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


#################################################################################################################################
exchange:	
	lb $t0, ($a0)
	lb $t1, ($a1)
	
	move $t3,$t0
	move $t0,$t1
	move $t1,$t3
	
	sb $t0,($a0)
	sb $t1,($a1)	
	jr $ra

strlen: li $t1,0

while3:	lb $t0, ($a0)
	addiu $a0,$a0,1
	beq $t0,'\0',end_while3
	addi $t1,$t1,1
	j while3

end_while3:	
	move $v0,$t1
	jr $ra
	


#################################################################################################################################
strcpy:

	move $t0,$a0
	move $t1,$a1
	lb $t2,($a1)
	
while4:	beq $t2,'\0',end_while4
	sb $t2,($t0)
	
	addu $t1,$t1,1
	addu $t0,$t0,1
	
	lb $t2,($t1)
	
	j while4

end_while4:

	move $v0,$a0
	
	jr $ra
