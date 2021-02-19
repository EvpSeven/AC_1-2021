	.data
s_0:	.asciiz "Array "
s_1: 	.asciiz "de "
s_2:	.asciiz "ponteiros"

a_str:	.word s_0, s_1, s_2
str:	.asciiz "Conteudo do Array de Strings: "
	.text
	.globl main
main:	li $v0, 4
	la $a0, str
	syscall

	li $v0, 11
	la $a0, '\n'
	syscall
	
	li $t0, 0	# i=0
	
for:	bge $t0, 3, for_end
	sll $t2, $t0, 2
	lw $a0, a_str($t2)
	li $v0, 4
	syscall
	
	li $v0, 11
	la $a0, '\n'
	syscall
	
	addi $t0, $t0, 1
	j for
for_end:
	jr $ra