	.data
str1:	.asciiz"Arquitetura de Computadores I"
	.text
	.globl main

main:	
	la $a0,str1	
	jal strlen

jr $ra
	
	
strlen: li $t1,0

while:	lb $t0, ($a0)
	addiu $a0,$a0,1
	beq $t0,'\0',end_while
	addi $t1,$t1,1
	j while

end_while:	
	move $v0,$t1
	jr $ra