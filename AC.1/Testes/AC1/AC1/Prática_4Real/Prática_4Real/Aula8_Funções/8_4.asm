#Aula8
#Exer4
	.data
	.text
	.globl main
main:
	subiu $sp, $sp, 4
	sw $ra, 0($sp)

	li $a0, 1
	li $a1, 3
	jal div
	
	move $a0, $v0 #print_resultado
	li $v0, 1
	syscall
	  
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra
#função div
div:
	#a0 = dividendo
	#a1 = divisor
	li $t1, 0 #i = 0
	sll $a1, $a1, 16
	
	andi $t0, $a0, 0xFFFF
	sll $a0, $t0, 1
	
for:
	li $t0, 0 #bit = 0

if:
	blt $a0, $a1, endif
	
	sub $a0, $a0, $a1
	li $t0, 1		#bit = 1		
		
endif:
	sll $t2, $a0, 1
	or $a0, $t2, $t0
	
	addiu $t1, $t1, 1	#i++
	blt $t1, 16, for
	
	srl $t0, $a0, 1
	andi $t1, $t0, 0xFFFF0000 #resto = t1
	
	and $t2, $a0, 0xFFFF	#quociente
	
	or $v0, $t1, $t2
	
	jr $ra

	
	
	
	
	