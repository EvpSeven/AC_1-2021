#Aula9
#Exer3
	.data
array: .word 2, 3, 5
str0: .asciiz "A soma é: "
	.text
	.globl main
main:
	
	subiu $sp, $sp, 4
	sw $ra, 0($sp)
	
	la $a0, str0
	li $v0, 4
	syscall
	
	la $a0, array
	li $a1, 3 #passar o nelem de assim...
	jal soma
	
	move $a0, $v0
	li $v0, 1
	syscall
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra
	
#Função_soma---------------------------------------------------------------------------
soma:	
	#$a0 = array
	#$a1 = nelem
	
	subiu $sp, $sp, 8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	
	li $v0, 0		#return = 0
	
if:	
	beq $a1, 0, else
	
	lw $s0, 0($a0) 		#*array
	addiu $a0, $a0, 4	#array + 1
	subiu $a1, $a1, 1	#nelem - 1
	jal soma
	
	addu $v0, $s0, $v0
	
else:
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addiu $sp, $sp, 8
	
	jr $ra