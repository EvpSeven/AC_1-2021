#$t0=p
#$t1=*p
	.data
str:	.space 20
str1: 	.asciiz "introduza uma string"
	.eqv print_string, 4
	.eqv read_string, 8
	.eqv size, 20
	.text
	.globl main
main:	li $v0, print_string
	la $a0, str1
	syscall
	la $a0, str
	li $a1,size
	li $v0, read_string
	syscall
	la $t0, str
while:	lb $t1,0($t0)
	beq $t1, '\0',endw
	subi $t1, $t1, ' '
	sb   $t1, 0($t0)
	addi $t0, $t0,1		#p++
	j while
endw:	li $v0, print_string
	la $a0, str
	syscall
	jr $ra