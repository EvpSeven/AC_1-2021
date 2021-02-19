# Mapa de registos
# array:	$t0
# i:		$t1
# array + i:	$t2
# array[i]:	$t3
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
main:	la $t0,array 			# $t0 = &(array[0])
	li $t1,0			# i = 0
for:	bge $t1,SIZE,end_for		# while(i < SIZE) {
	sll $t2,$t1,2			# $T2 = i*4
	add $t2,$t2,$t0			# $t2 = array + i*4 -> posição i
	lw $t3,0($t2)			# $t3 = array[i]
	move $a0,$t3			#
	li $v0,print_string		#
	syscall				# print_string(array[i])
	la $a0,'\n'			#
	li $v0,print_char		#
	syscall				# print_char('\n')
	addiu $t1,$t1,1			# i++
	j for				#
end_for:				# }
	jr $ra				# termina o programa
