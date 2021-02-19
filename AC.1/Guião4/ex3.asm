	.data
str:	.space 20
	.eqv size,20
str1:	.asciiz"Introduza uma string:"
	.text
	.globl main

main:	la $t0,str

	la $a0,str1
	li $v0,4
	syscall 
	
	la $a0,str
	li $a1,size
	li $v0 8
	syscall
	
while:	
	
	lb $t1, ($t0)
	beqz $t1,end_while
	
	#subu $t1,$t1,'a'
if:	
	blt $t1,0x61,end_if
	bgt $t1,0x7A,end_if
	
	subi $t1,$t1,0x20
	sb $t1, ($t0)
	addi $t0,$t0,1
end_if:
	j while
			 
end_while:
	
	la $t0,str
	li $v0,11
	
	lb $t1, ($t0)
	
	
while2:	beqz $t1,end_while2	
	lb $t1, ($t0)
	move $a0,$t1	
 	syscall	
 	addi $t0,$t0,1
 	j while2
 			 		 
end_while2:
 	
	

jr $ra