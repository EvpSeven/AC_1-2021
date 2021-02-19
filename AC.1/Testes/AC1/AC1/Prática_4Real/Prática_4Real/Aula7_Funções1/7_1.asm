#Aula7
#Exer1	
	.data
str:    .asciiz "Teste"
str1:   .asciiz "A length da string é: "
	.text
	.globl main
	
main:
	subiu $sp, $sp, 4
	sw $ra, 0($sp)
	
	la $a0, str1
	li $v0, 4
	syscall
	
	la $a0, str
	jal strlen
	
	add $a0, $v0, $zero
	li $v0, 1
	syscall

	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra
	
#função string_length		
strlen:

	li $t0, 0	#leng = 0

while:
	lb $t1, 0($a0)
	
	beq $t1, '\0', endwhile
	addiu $t0, $t0, 1
	addiu $a0, $a0, 1
	
	j while
	
endwhile:
	move $v0, $t0
		
	jr $ra
	
	
