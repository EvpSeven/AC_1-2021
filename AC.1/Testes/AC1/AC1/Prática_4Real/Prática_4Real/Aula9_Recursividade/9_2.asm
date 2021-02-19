#Aula9
#Exer2
	.data
str: .asciiz "Renato "

buf: .space 33
	.text
	.globl main
main:
	subiu $sp, $sp, 4
	sw $ra, 0($sp)
	
	la $a0, buf
	la $a1, str
	jal strcpy
	
	move $a0, $v0		#print_str()
	li $v0, 4
	syscall

	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra

#Função String_Copy
strcpy:
	subiu $sp, $sp, 8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	
	move $s0, $a0
	#$a0 = dst
	#$a1 = src

if:
	lb $t1, 0($a1)		#*src	
	
	beq $t1, '\0', endif
	
	sb $t1, 0($a0)		#*dst
	
	addiu $a0, $a0, 1
	addiu $a1, $a1, 1
	jal strcpy
	
endif:
	move $v0, $s0
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addiu $sp, $sp, 8
	jr $ra	
	