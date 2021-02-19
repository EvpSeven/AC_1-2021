# Mapa de registos
# array:	$t0
# i:		$t1
# array + i:	$t2
# array[i]:	$t3
# j:		$t4
# &(array[i][j])$t5
# array[i][j]	$t6
#
	.data
array:	.word str1,str2,str3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
str4:	.asciiz "\nString #"
str5:	.asciiz ": "
str6:	.asciiz "-"
	.eqv print_string,4
	.eqv print_char,11
	.eqv print_int10,1
	.eqv SIZE,3
	.text
	.globl main
					#
main:	la $t0,array 			# $t0 = &(array[0][0])
	li $t1,0			# i = 0
					#
for:	bge $t1,SIZE,end_for		# while(i < SIZE) {
	sll $t2,$t1,2			# $t2 = i*4
	add $t2,$t2,$t0			# $t2 = array + i*4 -> posição i &(array[i])
	lw $t3,0($t2)			# $t3 = &(array[i][0])
	la $a0, str4			#
	li $v0,print_string		#
	syscall				# print_string()
	move $a0,$t1			#
	li $v0,print_int10		#
	syscall				# print_int10(i)
	la $a0, str5			#
	li $v0,print_string		#
	syscall				# print_string()
	li $t4,0			# j=0
					#
while:	addu $t5,$t3,$t4		# $t5 = &(array[i][j])
	lb $t6,0($t5)			# $t6 = array[i][j]
	beq $t6,'\0',endw		# while(array[i][j] != 0) {
	move $a0,$t6			#
	li $v0,print_char		#
	syscall				# print_char(array[i][j])
	la $a0,str6			#
	li $v0,print_string		#
	syscall				# print_char(array[i][j])
	addiu $t4,$t4,1			# j++
	j while				# }
					#
endw:					#
	addiu $t1,$t1,1			# i++
	j for				#
					#
end_for:				# }
	jr $ra				# termina o programa
