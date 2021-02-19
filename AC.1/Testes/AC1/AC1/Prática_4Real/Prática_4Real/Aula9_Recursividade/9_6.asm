#Aula9
#Exer6
	.data
str0: .asciiz "Introduza um número: "
str1: .asciiz "Introduza um expoente: "
str2: .asciiz "Resultado: "
	.text
	.globl main
main:
	subiu $sp, $sp, 4
	sw $ra, 0($sp)
	
	la $a0, str0	#print_str()
	li $v0, 4
	syscall
	
	li $v0, 5	#read_int(numero)
	syscall
	move $t0, $v0
	
	la $a0, str1	#print_str()
	li $v0, 4
	syscall
	
	li $v0, 5	#read_int(numero)
	syscall
	move $t1, $v0
	
	la $a0, str2	#print_str()
	li $v0, 4
	syscall
	
	move $a0, $t0
	move $a1, $t1
	jal xtoy
	
	move $a0, $v0 #print_resultado
	li $v0, 1
	syscall
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4

	jr $ra

#Função_xtoy
xtoy:
	#$a0 = x = 2    
	#$a1 = y = 3
			#2*2*2 = 8
	subiu $sp, $sp, 8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	
	move $s0, $a0 
	
	beqz $a1, next
	subiu $a1, $a1, 1
	jal xtoy
	
	mul $v0, $s0, $v0
	
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addiu $sp, $sp, 8
	
	jr $ra

next:
	li $v0, 1	#return 1
		
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addiu $sp, $sp, 8
	
	jr $ra

#Decisão ternária:
# Se y != 0 
# Faz x * xtoy(x, y-1)
# Se y == 0
# Return 1

		