	.data
str:	.space 20
	.eqv size,20	
	.text
	.globl main
	
main:	li $v0,8
	li $a1,size
	la $a0,str
	syscall
	
	la $t1,str
	li $t0,0
	
while:	lb $t2,0($t1)
	beq $t2,0,end_while
	blt $t2,'0',end_if
	bgt $t2,'9',end_if
	
	addi $t0,$t0,1
	
end_if:
	addi $t1,$t1,1
	j while
	
end_while:

	li $v0,1
	move $a0,$t0
	syscall
	
jr $ra
