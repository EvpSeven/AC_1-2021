# Mapa de registos
# array: $t0
# i: $t1
# array+i: $t2
#array[i]: $a0
	.data
array:	.word str1, str2, str3
str1: 	.asciiz "Array"
str2: 	.asciiz "de"
str3: 	.asciiz "Ponteiros"
	.eqv print_string, 4
	.eqv print_char,12
	.eqv SIZE, 3
	.text
	.globl main
main:	la $t0, array
	li $t1,0
for:	bge $t1, SIZE, endf
	lb $a0, 0($t1)
	li $v0, print_string
	syscall
	la $a0, '\n'
	li $v0, print_char
	syscall
	j for
endf: jr $ra
