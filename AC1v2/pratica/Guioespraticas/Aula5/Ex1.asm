#Mapa de Registos
#i:	$t0
#lista:	$t1
#lista+i: $t2
	.data
	.eqv SIZE,5 
str1:	.asciiz "introduza um numero"
	.align 2
lista:	.space 20
	.eqv print_string, 4
	.eqv read_int,5		
	.text
	.globl main
main:	li $t0, 0		#i=0
	
while:	
	bge $t0, SIZE, endw
	la $a0, str1		#print_string(;);
	la $v0,print_string
	syscall
	li $v0, read_int
	syscall
	la $t1, lista
	sll $t2,$t0, 2
	addu $t2, $t1, $t2	#p
	sw $v0, 0($t2)
	addi $t0, $t0,1
	j while
	
endw:   jr $ra
	
	
	
