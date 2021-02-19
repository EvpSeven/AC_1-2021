#Aula9
#Exer5
	.data
str0: .asciiz "Introduza um número: "
str1: .asciiz "Resultado: "
	.text
	.globl main
main:
	subiu $sp, $sp, 4
	sw $ra, 0($sp)

#Decisão ternária:
# Se n> 1 
# Faz n * fact(n-1)
# Se n <= 1
# Return 1
					
	la $a0, str0	#print_str()
	li $v0, 4
	syscall
	
	li $v0, 5	#read_int()
	syscall
	
	move $t7, $v0
	
	la $a0, str1	#print_str()
	li $v0, 4
	syscall
	
	move $a0, $t7
	jal factorial

	move $a0, $v0 #print_int()
	li $v0, 1
	syscall
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
			
	jr $ra
	
#Função_Fatorial
factorial:
	#a0 = n
	subiu $sp, $sp, 8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	
if:
	ble $a0, 12, if1
	li $v0, 10
	
if1:
	beqz $a0, zero
	move $s0, $a0		#guardamos o $a0 em $s0
	
	subi $a0, $a0, 1
	
	jal factorial
	
	mul $v0, $v0, $s0
	
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addiu $sp, $sp, 8
	
	jr $ra
	
zero:
	li $v0, 1
	
	jr $ra
	