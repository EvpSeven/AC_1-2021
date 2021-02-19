	.data
	.eqv SIZE,5
str1:	.asciiz"\nIntroduza um numero.:"
	.align 2
lista:	.space 20
	.eqv read_int,5
	.text
	.globl main
	
main:	li $t0,0
	
while:	bge $t0,SIZE,end_while
	
	la $a0,str1
	li $v0,4
	syscall
	
	li $v0,read_int
	syscall
	
	la  $t1,lista
	sll $t2,$t0,2
	addu $t2,$t2,$t1
	sw  $v0, ($t2)
	
	addi $t0,$t0,1
	
	j while
end_while:

	jr $ra