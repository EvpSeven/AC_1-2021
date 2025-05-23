# Mapa de registos
# $t0 - gray
# $t1 - bin
# $t2 - mask

	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "\nValor em codigo Gray: "
str3:	.asciiz "\nValor em binario: "

	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_int16, 34
	
	.text
	.globl main

main:	la $a0, str1			#
	li $v0, print_string		# print_string(str1)
	syscall				#
					#
	ori $v0, $0, read_int		# read_int()
	syscall				#
	or $t0, $v0, $0			# gray = read_int()
					#
	srl $t2, $t0, 1			# mask = gray >> 1
	or $t1, $t0, $0			# bin = gray
					#
while:	beq $t2, 0, endwhile		# while(mask != 0)
					#
	xor $t1, $t1, $t2		# bin = bin ^ mask
	srl $t2, $t2, 1			# mask = mask >> 1
					#
	j while				# retorna ao while
					#
endwhile:				#
	la $a0, str2			#
	li $v0, print_string		# print_string(str2)
	syscall				#
					#
	or $a0, $t0, $0			#
	li $v0, print_int16		# print_int16(gray)
	syscall				#
					#
	la $a0, str3			#
	li $v0, print_string		# print_string(str3)
	syscall				#
					#
	or $a0, $t1, $0			#
	li $v0, print_int16		# print_int16(bin)
	syscall				#
					#
	jr $ra				# fim do programa
