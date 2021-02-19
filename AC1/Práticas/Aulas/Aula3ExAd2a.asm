# Mapa de registos
# $t0 - res
# $t1 - i
# $t2 - mdor
# $t3 - mdo
# $t4 - registo temporario
# $t5 - registo temporario
# $t6 - registo temporario
	.data
str1:	.asciiz "Introduza dois numeros: "
str2:	.asciiz "\Resultado: "

	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_int10, 1
	.eqv print_intu10, 36		#intu e' para unsigned
	
	.text
	.globl main
	
main:	li $t0, 0			# res = 0
	li $t1, 0			# i = 0
					#
	la $a0, str1			#
	li $v0, print_string		# print_string(str1)
	syscall				#
					#
	ori $v0, $0, read_int		# read_int() mdor
	syscall				#
	or $t4, $v0, $0			# read_int() em registo temporario
	and $t2, $t4, 0x0ffff		# mdor = read_int() & 0x0F # 0x0ffff para 16 bits
					#
	ori $v0, $0, read_int		# read_int() mdo
	syscall				#
	or $t5, $v0, $0			# read_int() em registo temporario
	and $t3, $t5, 0x0ffff		# mdo = read_int() & 0x0F # 0x0ffff para 16 bits
					#
while:	beq $t2, 0, endwhile		# mdor != 0
	bge $t1, 16, endwhile		# && i<4 # 16 para 16 bits
					#
	addi $t1, $t1, 1		# i++
					#
	andi $t6, $t2, 0x00000001	# $t4 = mdor & 0x00000001
					#
if:	beq $t6, 0, endif		# $t4 != 0
	addu $t0, $t0, $t3		# res = res + mdo # addu soma 2 numeros unsigned
					#
endif:	sll $t3, $t3, 1			# mdo = mdo << 1
	srl $t2, $t2, 1			# mdor = mdor >> 1
	j while				#
					#
endwhile:				#
	addi $t1, $t1, 1		# i++
					#
	la $a0, str2			#
	li $v0, print_string		# print_string(str2)
	syscall				#
					#
	or $a0, $t0, $0			#
	or $v0, $0, print_intu10	# print_int10(res)
	syscall				#
					#
	jr $ra				# fim do programa