	.data
	.eqv size,20 
str:	.space 20
	.text
	.globl main

main:	li $v0,8
	la  $a0,str
	li $a1,size
	syscall
	
	li $t1,0
	li $t0,0
	
	
while:	la   $t2,str
	addu $t3,$t2,$t1
	lb  $t4,0($t3)
	beq $t4,'\0',end_while
	blt $t4,'0',end_if
	bgt $t4,'9',end_if
	
	add $t0,$t0,1
end_if:
	
	add $t1,$t1,1
	
	j while
end_while:

	li $v0,1
	or $a0,$0,$t0
	syscall
	
jr $ra