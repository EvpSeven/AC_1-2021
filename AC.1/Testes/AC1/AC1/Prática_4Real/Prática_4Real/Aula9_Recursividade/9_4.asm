#Aula9
#Exer4
	.data
str0: .asciiz "Introduza um numero: "
str1: .asciiz "Introduza uma base: "
str2: .asciiz "Resultado: "
	.text
	.globl main
main:
	subiu $sp, $sp, 4
	sw $ra, 0($sp)

	la $a0, str0	#print_str()
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $t5, $v0 #guarda o numero
	
	la $a0, str1	#print_str()
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $t6, $v0 #guarda uma base
	
	la $a0, str2
	li $v0, 4
	syscall
	
	move $a0, $t5
	move $a1, $t6
	jal print_int_ac1
	
	move $a0, $v0		#print_int()
	li $v0, 11
	syscall

	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra

#Função_Print_int_ac1--------------------------------------------------------------
print_int_ac1:
	#$a0 = num
	#$a1 = base
		
	subiu $sp, $sp, 8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	
	move $s0, $a0

	div $t0, $a0, $a1
	
	beqz $t0, end
	move $a0, $t0
	jal print_int_ac1

	move $a0, $s0	
end:
	rem $a0, $a0, $a1
	jal toascii
	
	move $a0, $v0		#print_char()
	li $v0, 11
	syscall
	
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addiu $sp, $sp, 8
	
	jr $ra
	
#Função_toascii--------------------------------------------------
toascii:
	#$a0 = v
	
	addi $a0, $a0, '0'
	
if:
	ble $a0, '9', endif
	
	addi $a0, $a0, 7
	
endif:
	move $v0, $a0
	
	jr $ra
