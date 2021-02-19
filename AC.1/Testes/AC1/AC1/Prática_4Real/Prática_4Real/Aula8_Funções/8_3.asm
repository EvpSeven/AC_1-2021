#Aula7
#Exer3
	.data
str0: .asciiz "\n Operação desconhecida"
str1: .asciiz "\n Numero de argumentos errado"
	.text
	.globl main
main:
	#a0 = numero de variáveis (length do array)
	#a1 = array
	
	subiu $sp, $sp, 4
	sw $ra, 0($sp)
	
	li $t4, 0	#exit_code = 0
	
if:
	bne $a0, 3, else
	
	lw $t5, 0($a1) 	#argv[0]
	move $a0, $t5
	jal atoi
	move $t5, $v0	#val1
	
	lw $t6, 8($a1)	#argv[2]
	move $a0, $t6
	jal atoi
	move $t6, $v0	#val2
	
	lw $t7, 4($a1)	#operador
	lb $t7, 0($t7)
	
op_x:
	bne $t7, 'x', op_barra
	mul $t8, $t5, $t6	#res
	
	j print

op_barra:
	bne $t7, '/', op_rem
	div $t8, $t5, $t6	#res
	
	j print

op_rem:	
	bne $t7, '%', else1
	rem $t8, $t5, $t6	#res
	
	j print
	
else1:
	la $a0, str0		#print_str0(op descc)
	li $v0, 4
	syscall
	
	li $t4, 1		#Exit_code = 1
	
	j fim

else:
	la $a0, str1		#print_str1(n arg errado)
	li $v0, 4
	syscall
	
	li $t4, 2
	
	b fim
	
print:	
	move $a0, $t5  #print_primeira_cena
	li $v0, 1
	syscall
	
	move $a0, $t7 #operando
	li $v0, 11
	syscall
	
	move $a0, $t6 #print_segunda_cena
	li $v0, 1
	syscall
	
	li $a0, '='  #print_igual
	li $v0, 11
	syscall
	
	move $a0, $t8
	li $v0, 1
	syscall

#outro if:
fim:
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra

#Função_Atoi-----------------------------------------------------------
atoi:
	li $t0, 0 #digit = 0
	li $t1, 0 #res = 0
	
while:
	lb $t2, 0($a0)
	
	blt $t2, '0', endwhile
	bgt $t2, '9', endwhile

	subi $t0, $t2, '0' #digit = ...
	addiu $a0, $a0, 1
	
	mulu $t3, $t1, 10 #10*res
	add $t1, $t3, $t0 #res = ...
	
	j while

endwhile:

	move $v0, $t1  #return res
	
	jr $ra
