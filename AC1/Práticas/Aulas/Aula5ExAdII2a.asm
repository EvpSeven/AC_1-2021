# Mapa de registos
# p:		$t1
# pultimo:	$t2
# *p:		$t3
#
	.data
array:	.word str1,str2,str3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
	.eqv print_string,4
	.eqv print_char,11
	.eqv SIZE,3
	.text
	.globl main
main:	la $t1,array			# p = array
	li $t2,SIZE			# $t2 = SIZE
	sll $t2,$t2,2			# SIZE * 4
	add $t2,$t2,$t1			# pultimo = array + SIZE*4
for:	bge $t1,$t2,end_for		# while(p < pultimo) {
	lw $t3,0($t1)			# $t3 = *p
	move $a0,$t3			#
	li $v0,print_string		#
	syscall				# print_string(*p)
	la $a0,'\n'			#
	li $v0,print_char		#
	syscall				# print_char('\n')
	addiu $t1,$t1,4			# p++
	j for				#
end_for:				# }
	jr $ra				# termina o programa
