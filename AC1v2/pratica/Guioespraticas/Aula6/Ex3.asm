#$s0= exit_value
	.data
	.eqv print_string, 4
	.eqv print_int10, 1
	.eqv STR_MAX_SIZE,30
str1:	.asciiz "I serodatupmoC ed arutetiuqrA"
str2:	.space 31	#reservarespaçopara a stirng (STR_MAX_SIZE+1)
str3:	.asciiz "\n"
str4:	.asciiz "String too long: "
	.text
	.globl main
main:	subu $sp, $sp, 4 	#reservar espaço na stack
	sw   $ra, 0($sp)	#salvaguarda de ra
	jal  strlen		#char a funçao strlen
if:	bgt  $v0, STR_MAX_SIZE, else	#if(strlen(str1)<= STR_MAX_SIZE)
	
	la $a0, str2
	la $a1, str1
	jal	strcpy
	
	move $a0, $v0			#print_string(str2)	str2é o retorno da funçao?
	li $v0, print_string
	syscall
	
	
	la	$a0, str3		#print_string("\n")
	li	$v0, print_string
	syscall
	
	la 	$a0, str2		#strrev(str2)
	jal 	strrev
	
	move	$a0, $v0
	li	$v0, print_string	#print_string(strrev(str2))
	syscall				
	li 	$s0, 0			#exit_value = 0
	
else:	la $a0, str4
	li $v0, print_string		#print_string(str4)
	syscall
	
	la $a0, str1			#strrev(str2)
	jal strlen
	move $a0, $v0			
	la $v0, print_int10		#print_int10(strrev(str2))
	syscall
	
	li $s0, -1			#exit_value = -1
	
end:	move $v0, $s0			#return exit_value
	lw   $ra, 0($sp)		#retoma o valor de ra
	addiu $sp, $sp, 4 		#repoem espaço na stack
	jr   $ra			#fim
#------------------------------------------------------------------------
strlen: li $t1,0
while:  lb $t0,0($a0)
	addiu $a0,$a0,1
	beq   $t0, '\0', endw2
	addi $t1, $t1, 1
	j while
endw2:   move $v0, $t1
	jr $ra
	
#--------------------------------------------------------------
strcpy: move $t0, $a0
	move $t1, $a1
	
do:	lb $t2, 0($t1)		#t2= src[t11]
	sb $t2, 0($t0)		#dst[t0]= scr[t1]
	
	addiu $t1, $t1, 1	#t0++
	addiu $t0, $t0, 1	#t1++
	
	bne $t2, '\0',do	# while(src[i++] != '\0')
	move $v0, $a0		#v0= dst
	jr $ra
#--------------------------------------------------------------
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
