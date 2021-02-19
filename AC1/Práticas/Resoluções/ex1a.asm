# Mapa de registos
#	$t0 -> p
#	$t1 -> *p

	.data

	.eqv 	read_string, 8
	.eqv	SIZE, 20
	.eqv	print_string, 4
	
str1:	.asciiz "Introduza uma string: "

str2:	.space	20

	.text
	.globl main

main:	la	$a0, str1
	li	$v0, print_string
	syscall
	
	la	$a0, str2		# $a0 = &str2[0]
	li	$a1, SIZE
	
	li	$v0, read_string
	syscall
	
	la	$t0, str2
	
	
	
while:	lb	$t1,0($t0)
	
	beq	$t1, '\0', end
	
	blt	$t1, 'a', else		# *p < a
	bgt	$t1, 'z', else		# *p > z
	
	
	subi	$t1, $t1, 'a'		# *p = *p - 'a'
	addi	$t1, $t1, 'A'		# *p = *p + 'A'
	
	sb	$t1,0($t0)		# guarda o valor final de *p no endereço p
	
	
else:
	addi	$t0, $t0, 1
	
	j	while
	
	
end:	la	$a0, str2
	li	$v0, print_string
	syscall
	
	jr	$ra