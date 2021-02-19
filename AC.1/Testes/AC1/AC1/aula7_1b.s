	.data
str:	.asciiz "Arquitetura de Computadores I"	
	.text
	.globl main
	
main:	subiu $sp,$sp,4		# guarda espaço na stack para o valor $ra
	sw $ra,0($sp)
	
	la $a0,str
	jal strlen		# strlen(str)
	
	move $a0,$v0		# guarda o valor de retorno em $a0, para depois poder logo imprimir
	li $v0,1
	syscall			#print_int10(strlen(str));
	
	li $v0,1		#return 0
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra
