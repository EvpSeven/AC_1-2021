	.data
	.eqv SIZE,3
array:	.word
str1:	.asciiz"Array"
str2:	.asciiz"de"
str3:	.asciiz"ponteiros"

	.text
	.globl main

main:	la $t1,array
	li $t0,0
	li $t3,0
	
for:	bge $t0,SIZE,end_for
	lb $t2, ($t1)
		
		while:	beq $t2,'\0',end_while
			li $v0,11
			move $a0,$t2
			syscall
			la $a0,'-'
			syscall
			subu $t1,$t1,$t3
			addi $t3,$t3,1			
			addu $t1,$t1,$t3
			lb $t2,($t1)
			j while
		end_while:
	
	addi $t1,$t1,1
	addi $t0,$t0,1	
	la $a0,'\n'
	syscall	
	j for
end_for:

jr $ra
	
