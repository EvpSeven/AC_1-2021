# Mapa de registos
# res:		$v0
# s:		$a0
# *s:		$t0
# digit:	$t1
# Sub-rotina terminal: não devem ser usados registos $sx
#
	.data
str:	.asciiz "2016 e 2020 sao anos bissextos"
	.eqv print_int10,1
	.text
	.globl main
main:	subiu $sp,$sp,4		# reservar espaço na stack
	sw $ra,0($sp)		# salvaguardar o $ra
				#
	la $a0,str		# carregar no $a0 o endereço inicial da string
	jal atoi		# salta para a função
				#
	move $a0,$v0		# passa o valor de retorno da função para $a0 para que possa ser impresso
	li $v0,print_int10	#
	syscall			# print_int10(atoi(str))
				#
	lw $ra,0($sp)		# repor o valor de $ra
	addiu $sp,$sp,4		# libertar espaço na stack
				#
	jr $ra			# termina o programa
				#
				#	
atoi:	li $v0,0		# res = 0
				#
while:	lb $t0,0($a0)		# while(*s >= 0 && *s <= 9){
	blt $t0,'0',endw	#
	bgt $t0,'9',endw	#
	sub $t1,$t0,'0'		# digit = *s-'0'
	addiu $a0,$a0,1		# s++
	mul $v0,$v0,10		# res = 10 * res
	add $v0,$v0,$t1		# res = 10 * res + digit
	j while			# }
				#
endw:	jr $ra			# termina sub-rotina