.eqv 	print_string,4

.data
str1:	.asciiz "Arquitetura de "
.align 2
str2:	.space 50
str3:	.asciiz "\n"
str4:	.asciiz "Computadores I"
.text
.globl main
main:	subu 	$sp,$sp,4
	sw 	$ra,0($sp)
	la 	$a0, str2
	la 	$a1, str1
	jal 	strcpy
	lw $ra,0($sp)
	addiu $sp,$sp,4
	
	la	$a0, str2
	li	$v0, print_string
	syscall
	
	la	$a0, str3
	li	$v0, print_string
	syscall
	
	la	$a0, str2
	la	$a1, str4
	subu 	$sp,$sp,4
	sw 	$ra,0($sp)
	jal	strcat
	lw $ra,0($sp)
	addiu $sp,$sp,4
	move	$a0, $v0
	li	$v0, print_string
	syscall
	
	li $v0,0
	jr	$ra


#--------------------------------------------------------------------------

strcat:	
	move $t0,$a0
while:	lb $t1,0($t0)
	beq $t1,'\0',endwhile
	addi $t0,$t0,1
	j while
endwhile:
	addi $sp,$sp,-8
	sw $ra,4($sp)
	sw $a0,0($sp)
	move $a0,$t0
	jal strcpy
	lw $v0,0($sp)
	lw $ra,4($sp)
	addi $sp,$sp,8
	jr $ra

#--------------------------------------------------------------------------


strcpy:	
	move $t0,$a0
	move $t1,$a1
	lb $t2,0($t1)
do:	sb $t2,0($t0)
	addi $t0,$t0,1
	addi $t1,$t1,1
	lb $t2,0($t1)
	beq $t2,'\0',enddo
	j do
enddo:	move $v0,$a0
	jr $ra
	
#--------------------------------------------------------------------------
