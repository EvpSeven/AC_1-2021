# O argumento da funcao é passado em $a0
# O resultado é devolvido em $v0
# Sub-rotina terminal: nao devem ser usados registos $sx
	.data
str:	.asciiz "Arquitetura de Computadores I"
	.eqv print_int10,1
	.text
	.globl main
main:	subu $sp,$sp,4		# reserva uma posicao na stack para
	sw $ra,0($sp)		# guardar o registo $ra -> nao é terminal
	la $a0,str		# passagem do parametro a subrotina
	jal strlen		# salta para a funcao
	move $a0,$v0		# $a0=strlen(str) -> colocar o valor de retorno da funcao em $a0 para imprimir
	li $v0,print_int10	# print_int10()
	syscall			#
	lw $ra,0($sp)		# reposicao do $ra
	addu $sp,$sp,4		# liberta espaco na stack
	jr $ra			# termina o programa
				# $a0=s -> ponteiro
				#
strlen:	li $t1,0		# len=0
while:	lb $t0,0($a0)		# while(*s++ != \0)
	addiu $a0,$a0,1		#
	beq $t0,'\0',endw	# {
	addi $t1,$t1,1		# len++
	j while			# }
endw:	move $v0, $t1		# return len
	jr $ra			# termina a subrotina