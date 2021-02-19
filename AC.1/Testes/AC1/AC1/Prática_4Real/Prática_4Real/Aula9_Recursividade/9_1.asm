#Aula9 Recursividade
#Exer1
	.data
str: .asciiz "Canedo"
str1: .asciiz "A length é: "
	.text
	.globl main
main:
	subiu $sp, $sp, 4
	sw $ra, 0($sp)
	
	la $a0, str1 #print_str()
	li $v0, 4
	syscall
	
	la $a0, str
	jal strlen
	
	move $a0, $v0 #print_int()
	li $v0, 1
	syscall
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra

#função String_length
strlen:
	subiu $sp, $sp, 4
	sw $ra, 0($sp)		#guarda primerio valor do $ra
	li $v0, 0 		#return 0_because only returns zero once.
if:	
	lb $t0, 0($a0)		#
	beq $t0, '\0', else
	addiu $a0, $a0, 1	#s++
	jal strlen		#pc counter=30

	
	addiu $v0, $v0, 1	#len
else:
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra