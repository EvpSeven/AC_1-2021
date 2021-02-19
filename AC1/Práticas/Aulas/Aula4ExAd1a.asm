# Mapa de registos
# p:	$t0
# *p:	$t1
#
	.data
	.eqv SIZE,20
	.eqv print_string,4
	.eqv read_string,8
str1:	.space 20
str2:	.asciiz "Introduza uma string: "
	.text
	.globl main
						#
main:	la $a0,str2				#
	li $v0,print_string			#
	syscall					# print_string("Introduza uma string: ")
						#
	la $a0,str1				# carregar os parametros de entrada
	li $a1,SIZE				# para leitura da string
	li $v0,read_string			#
	syscall					# read_string() $a0 - str; $a1 - SIZE
						#
	la $t0,str1				# p = str
						#
while:	lb $t1,0($t0)				# $t1 = *p
	beq $t1,'\0',endw			# while(*p != '\0') {
						#
if:	blt $t1,0x61,end_if			# if(*p >= 'a') &&
	bgt $t1,0x7A,end_if			# (*p <= 'z')
						#
	sub $t1,$t1,0x61			# $t2 = *p - 'a'
	add $t1,$t1,0x41			# *p = *p - 'a' + 'A' // 'a'=0x61, 'A'=0x41, 'a'-'A'=0x20
						#
	sb $t1,0($t0)				# guarda o novo valor de *p
						#
end_if:						#
	addiu $t0,$t0,1				# p++
	j while					#
						#
endw:	la $a0,str1				#
	li $v0,print_string			#
	syscall					# print_string(str)
	jr $ra					# termina o programa
