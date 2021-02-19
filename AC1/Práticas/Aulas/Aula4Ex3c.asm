# Mapa de registos
# i - $t0
# iultimo - $t1
# array[i] - $t2
# array+i - $t3
# soma - $t4
# array - $t5
	.data
array:	.word 7692,23,5,234	#
	.eqv SIZE,4		#
	.eqv print_int10,1	#
	.text			#
	.globl main		#
				#
main:	li $t6, SIZE		#
	sub $t6, $t6, 1		# $t6 = 3
	sll $t6, $t6, 2		# ou "mul $t4, $t4, 4"
	li $t0, 0		# i=0
	li $t4,0		# soma = 0
	addu $t1, $t5, $t6	# iultimo = array + SIZE - 1
				#
while:				# while (p <= pultimo)
	bgtu $t0, $t1, endw	# {
	la $t5, array		# $t5 = array
	addu $t3, $t5, $t0	# $t3 = array+i
	lw $t2, 0($t3)		# $t2 = array[i]
	add $t4, $t4, $t2	# soma = soma + array[i]
	addu $t0, $t0, 4	# i++ (como estamos a trabalhar com inteiros fazemos *4)
	j while			# }
				#
endw:	move $a0, $t4		#
	li $v0, print_int10	#
	syscall			# print_int10(soma)
	jr $ra			# termina o programa
	