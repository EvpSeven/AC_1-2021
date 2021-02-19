
#$t1=len

	.data
str1:   .asciiz "Arquitetura de Computadores I"
	.eqv  print_int10,1
	.text
	.globl main
main:	addiu $sp, $sp, -4	#reserva espaço na stack
	sw $ra, 0($sp) 		#salvaguarda do $ra
	
	la $a0, str1		#passa str como argumento da funçao
	jal strlen		#chama a funçao 
	move $a0, $v0		#mete o valor de retorno para $a0 
	li $v0, print_int10	#pq v0 vai ser preciso para a syscall
	syscall			#imprime o resultado
			
	lw $ra, 0($sp)		#recupera o valor do $ra
	addiu $sp,$sp, 4
	jr $ra
	
strlen: li $t1,0

while:  lb $t0,0($a0)
	addiu $a0,$a0,1
	beq   $t0, '\0', endw
	addi $t1, $t1, 1
	j while
	
endw:   move $v0, $t1
	jr $ra
	