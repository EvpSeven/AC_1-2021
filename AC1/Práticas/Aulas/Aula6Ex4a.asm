	.data
	.eqv print_string,4
str1:	.asciiz "Arquitetura de "
str2:	.space 50
str3:	.asciiz "\n"
str4:	.asciiz "Computadores I"
	.text
	.globl main
main:	addiu $sp,$sp,-4				# reserva espaço na stack
	sw $ra,0($sp)				# salvaguardar os registos
						#
	la $a0,str2				# carregar os argumentos da função
	la $a1,str1				#
	jal strcopy				# salta para a função
						#
	move $t9,$v0				#
	move $a0,$t9				#
	li $v0,print_string			#
	syscall					# print_string(str2)
						#
	la $a0,str3				#
	li $v0,print_string			#
	syscall					# print_string("\n")
						#
	move $a0,$t9				# argumentos da função
	la $a1,str4				#
	jal strcat				# salta para a função
						#
	move $a0,$v0				#
	li $v0,print_string			#
	syscall					# print_string(strcat(str2,str4))
						#
	li $v0,0				# return 0
	lw $ra,0($sp)				# repoe os registos
	addiu $sp,$sp,4				# liberta espaço na stack
	jr $ra					# termina o programa	



strcat:		addiu $sp,$sp,-8			# reserva espaço na stack
		sw $ra,0($sp)			# salvaguardar os registos
		sw $a0,4($sp)			#
		move $t0,$a0			# p = dst;
						#
while:		lb $t1,0($t0)			# $t0 = *p
		beq $t1,'\0',endw		# while(*p != '\0') {
		addiu $t0,$t0,1			# p++
		j while				# }
						#
endw:		move $a0,$t0			# carregar os parametros para a função - o src já está no $a1 desde que entra na função
		jal strcopy			# salta para a função
		lw $ra,0($sp)			# repor os registos
		lw $v0,4($sp)			# estamos a por diretamente no $v0 0 $a0 guardado no inicio da função
		addiu $sp,$sp,8			# liberta espaço na stack
		jr $ra				# termina o programa
						#
						#
strcopy:	li $t2,0			# i=0
						#
do:		add $t0,$a0,$t2			# dst[i]
		add $t1,$a1,$t2			# src[i]
		lb $t3,0($t1)			# ler o src[i]
		sb $t3,0($t0)			# escrever o src[i]
						#
		addiu $t2,$t2,1			# i++
						#
		bne $t3,'\0',do			# (while(scr[i++]!='\0')}
						#
		move $v0, $a0			# passar o que queremos retornar para o endereço de retorno
		jr $ra				# termina
