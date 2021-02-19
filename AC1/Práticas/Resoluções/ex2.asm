#MAPA
#$t0 - str
#$t1 - val


.data
.align 2
str1: .space 33
.eqv print_string, 4
.eqv read_int, 5
.text
.globl main
main:
	subu $sp, $sp, 4 # Reserva espaço na stack
	sw $ra, 0($sp) # Salvaguarda o registo $ra
	li $v0, read_int
	syscall
	move $t9, $a0
	la $t8, str1
	
do:	move $a0, $t9
	li $a1, 2
	move $a2, $t8
	jal itoa
	move $a0, $v0
	li $v0, print_string
	syscall
	
	move $a0, $t9
	li $a1, 8
	move $a2, $t8
	jal itoa
	move $a0, $v0
	li $v0, print_string
	syscall
	
	move $a0, $t9
	li $a1, 16
	move $a2, $t8
	jal itoa
	move $a0, $v0
	li $v0, print_string
	bne $t9, 0, do
	li $v0,0
	
	sw $ra, 0($sp) # Salvaguarda o registo $ra
	addu $sp, $sp, 4
	jr $ra
	
	 
	


# Mapa de registos
# n: $a0 -> $s0
# b: $a1 -> $s1
# s: $a2 -> $s2
# p: $s3
# digit: $t0
# Sub-rotina intermédia
itoa:	subu $sp,$sp,16 			# reserva espaço na stack
	sw $s0, 0($sp)  			# guarda registos $sx e $ra
 	sw $s1, 4($sp)
 	sw $s2, 8($sp)
 	sw $ra, 12($sp)
 	move $s0, $a0 			# copia n, b e s para registos
 	move $s1, $a1
 	move $s2, $a2 				# "callee-saved"
 	move $s3, $a2 			# p = s;
do_itoa:					# do {
	rem $t0, $s0, $s1
	div $s0, $s0, $s1
	move $a0, $t0
	jal toascii
	sw $v0, 4($s3)		 				#
 	bgt $s0,0, do_itoa			# } while(n > 0);
 	sb $0,0($s3) 			# *p = 0;
 	move $a0, $s2 				#
 	jal strrev 			# strrev( s );
 					# return s;
 	lw $s0, 0($sp)
 	lw $s1, 4($sp)
 	lw $s2, 8($sp)
 	lw $s2, 12($sp) 			# repõe registos $sx e $ra
 	addu $sp,$sp, 16 			# liberta espaço na stack
 	jr $ra 				#
 	
 	
 	
# Mapa de registos:
# str: $a0 -> $s0 (argumento é passado em $a0)
# p1: $s1 (registo callee-saved)
# p2: $s2 (registo callee-saved)
#
strrev:	subu $sp,$sp,16 	# reserva espaço na stack
	sw $ra,0($sp) 		# guarda endereço de retorno
	sw $s0,4($sp) 		# guarda valor dos registos
	sw $s1,8($sp) 		# $s0, $s1 e $s2
	sw $s2,12($sp) 		#
	move $s0,$a0 		# registo "callee-saved"
	move $s1,$a0 		# p1 = str
	move $s2,$a0 		# p2 = str
	
while1: lb $t0,0($s2)			# while( *p2 != '\0' ) {
	beq $t0,'\0', endw1 
	addiu $s2, $s2,1		# p2++;
	j while1  			# }
endw1:	subiu $s2, $s2,1		# p2--;
while2: 				# while(p1 < p2) {
	bgeu $s1, $s2, endw 
	move $a0, $s1 			#
	move $a1, $s2 			#
	jal exchange 			# exchange(p1,p2)
	addiu $s1, $s1,1
	subiu $s2, $s2, 1
	j while2 			# }
	
endw:	move $v0,$s0 			# return str
	lw $ra,0($sp)  			# repõe endereço de retorno
	lw $s0,4($sp)  			# repõe o valor dos registos
	lw $s1,8($sp)  			# $s0, $s1 e $s2
	lw $s2,12($sp)  			#
	addiu $sp,$sp,16 		# liberta espaço da stack
	jr $ra 				# termina a sub-rotina


exchange:
	lb $t0, 0($a0)
	lb $t1, 0($a1)
	sb $t0, 0($a1)
	sb $t1, 0($a0)
	jr $ra
	
toascii:
	addi $a0, $a0, '0'
	ble $a0, '9', end
	addi $a0, $a0, 7
end:	move $v0, $a0
	jr $ra
