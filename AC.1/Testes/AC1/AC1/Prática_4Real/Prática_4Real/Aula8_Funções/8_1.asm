#Aula8
#Exer1
	.data
str0: .asciiz "2040, o ano do fim das PPP"
	.text
	.globl main
main:
	subiu $sp, $sp, 4
	sw $ra, 0($sp)
	
	la $a0, str0
	jal atoi
	
	move $a0, $v0	 #print_int()
	li $v0, 1
	syscall
	
	li $v0, 0	#return 0
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra

#Função_Atoi
atoi:
	li $t0, 0 #digit = 0
	li $t1, 0 #res = 0
	
while:
	lb $t2, 0($a0)
	
	blt $t2, '0', endwhile
	bgt $t2, '9', endwhile

	subi $t0, $t2, '0' #digit = ...
	addiu $a0, $a0, 1
	
	mulu $t3, $t1, 10 #10*res
	add $t1, $t3, $t0 #res = ...
	
	j while

endwhile:

	move $v0, $t1  #return res
	
	jr $ra