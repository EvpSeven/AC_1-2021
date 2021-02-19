	.data
str1:	.asciiz "Arquitetura de "
str2:	.space 50
	.align 2
str3:	.asciiz "Computadores I"
	.text
	.globl main
main:	addi $sp,$sp,4
	sw $ra,0($sp)
	la $a0,str2
	la $a1,str1
	jal strcpy
	lw $ra,0($sp)
	addi $sp,$sp,4
	move $a0,$v0
	li $v0,4
	syscall
	la $a0,'\n'
	li $v0,4
	syscall
	
	addi $sp,$sp,4
	sw $ra,0($sp)
	la $a0,str2
	la $a1,str3
	jal strcat
	lw $ra,0($sp)
	addi $sp,$sp,4
	move $a0,$v0
	li $v0,4
	syscall
	
	li $v0,0
	jr $ra
## 1 função 
strcpy:	li $t2,0
do:	add $t0,$a0,$t2 #dst[i]
	add $t1,$a1,$t2 #src[i]
	lb $t3,0($t1)
	sb $t3,0($t0)
	addiu $t2,$t2,1
	bne $t3,'\0',do
	move $v0,$a0
	jr $ra
## 2 função 
strcat:	move $t0,$a0
while:	lb $t1,0($t0)
	beq $t1,'\0',end
	addi $t0,$t0,1
	j while
end:	addi $sp,$sp,-8
	sw $ra,4($sp)
	sw $a0,0($sp)
	move $a0,$t0
	jal strcpy
	lw $v0,0($sp)
	lw $ra,4($sp)
	addi $sp,$sp,8
	jr $ra