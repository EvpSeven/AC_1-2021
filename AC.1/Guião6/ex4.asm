	.data
str1:	.asciiz"Arquitectura de "
str2:	.space 50
str3:	.asciiz"Computadores I"
br:	.asciiz "\n"
	.text
	.globl main
	
main:
	subu $sp,$sp,4
	sw $ra,($sp)
	la $a0,str2
	la $a1,str1
	
	jal strcpy
	
	move $t0,$v0
	
	move $a0,$v0	
	li $v0,4
	syscall
	
	la $a0,br
	syscall
	
	move $a0,$t0
	la $a1,str3
	
	jal strcat
	
	move $a0,$v0
	li $v0,4
	syscall
	
	li $v0,1
	
	lw $ra,($sp)
	addu $sp,$sp,4
	
jr $ra


####################################################################################################################

strcat:
	move $t0,$a0
	move $t1,$a1
		
	lb $t2, ($t1)
	
while:	beq $t2,'\0',end_while
	
	addu $t0,$t0,1
	lb $t2, ($t0)
	j while
end_while:	
	subu $sp,$sp,24
	sw $a0,($sp)
	sw $a1,4($sp)
	sw $t0,8($sp)
	sw $t1,12($sp)
	sw $t2,16($sp)
	sw $ra,20($sp)
	
	move $a0,$t0
	move $a1,$t1
	jal strcpy
	
	lw $a0,($sp)
	lw $a1,4($sp)
	lw $t0,8($sp)
	lw $t1,12($sp)
	lw $t2,16($sp)
	lw $ra,20($sp)
	addu $sp,$sp,24
	
	move $v0,$a0   
	
jr $ra


####################################################################################################################

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
