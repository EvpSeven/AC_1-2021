# Mapa de registos
# n:		$a0 -> $s0
# b:		$a1 -> $s1
# s:		$a2 -> $s2
# p:		$s3
# *p:		$t1
# digit:	$t0
# v:		$t2
# val:		$s5
# Sub-rotina intermédia
#
#
		.data
str:		.space 33
		.eqv SIZE,33
strn:		.asciiz "\n"
		.eqv read_int,5
		.eqv print_string,4
		.text
		.globl main
main:		subu $sp,$sp,8		# reserva espaço no stack
		sw $s5,0($sp)		# guarda registos $sx e $ra
		sw $ra,4($sp)		#
do1:					# do {
		li $v0,read_int		#
		syscall			# read_int()
		move $s5,$v0		# val = read_int()
					#
		move $a0,$s5		# passar os parametros para a função
		li $a1,2		#
		la $a2,str		#
		jal itoa		#
		move $a0,$v0		#
		li $v0,print_string	#
		syscall			# print_string(itoa(val,2,str))
		la $a0,strn		#
		li $v0,print_string	#
		syscall			# imprimir enter
					#
		move $a0,$s5		# passar os parametros para a função
		li $a1,8		#
		la $a2,str		#
		jal itoa		#
		move $a0,$v0		#
		li $v0,print_string	#
		syscall			# print_string(itoa(val,8,str))
		la $a0,strn		#
		li $v0,print_string	#
		syscall			# imprimir enter
					#
		move $a0,$s5		# passar os parametros para a função
		li $a1,16		#
		la $a2,str		#
		jal itoa		#
		move $a0,$v0		#
		li $v0,print_string	#
		syscall			# print_string(itoa(val,16,str))
		la $a0,strn		#
		li $v0,print_string	#
		syscall			# imprimir enter
		la $a0,strn		#
		li $v0,print_string	#
		syscall			# imprimir enter
					#
while1:		bne $s5,0,do1		#
		li $v0,0		# return 0
		lw $s5,0($sp)		# repoe os registos $sx e $ra
		lw $ra,4($sp)		#
		addu $sp,$sp,8		# liberta espaço
		jr $ra			# termina o programa
					#
					#
itoa:		subu $sp,$sp,20		# reserva espaço no stack
		sw $s0,0($sp)		# guarda registos $sx e $ra
		sw $s1,4($sp)		#
		sw $s2,8($sp)		#
		sw $s3,12($sp)		#
		sw $ra,16($sp)		#
		move $s0,$a0		# copia n, b e s para registos
		move $s1,$a1		# "callee-saved
		move $s2,$a2		#
		move $s3,$a2		# p = s
do2:					# do {
		rem $t0,$s0,$s1		# digit = n % b
		div $s0,$s0,$s1		# n = n / b
		move $a0,$t0		# passa o argumento para a função
		jal toascii		# salta para a função
		sb $v0,0($s3)		# *p = toascii(digit)
		addiu $s3,$s3,1		# p++
while2:		bgt $s0,0,do2		# } while(n>0)
		sb $0,0($s3)		# *p = '\0'
		move $a0,$s2		# passar os argumentos para a função
		jal strrev		# salta para a função
		move $v0,$s2		# return s
		lw $s0,0($sp)		# repõe os registos $sx e $ra
		lw $s1,4($sp)		#
		lw $s2,8($sp)		#
		lw $s3,12($sp)		#
		lw $ra,16($sp)		#
		addu $sp,$sp,20		#
		jr $ra			# termina a subrotina intermedia
					#
					#
toascii:	move $t2,$a0		# $t2 = v
		add $t2,$t2,'0'		# v += '0'
if:		ble $t2,'9',end_if	# if(v > '9')
		addiu $t2,$t2,7		# 'A' - '9' - '1'
end_if:		move $v0,$t2		#
		jr $ra			# termina a subrotina terminal
