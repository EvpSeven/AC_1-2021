#$t0= i
#exit_value

	.data
	.eqv print_int10, 1
	.eqv print_string, 4
	.eqv MAXSIZE 30
str1:	.asciiz "I serodatupmoC ed arutetiuqrA"
str2:	.space 31
str3: 	.asciiz "string too long: "
str4:	.asciiz "\n"
	.text
	.globl main
main:	addu $sp, $sp, -4		#reservar espaço na stack
	sw $ra, 0 ($sp)			#salvaguardar$ra

	la $a0, str1			
	jal strlen			#strlen(str1)
if:	bgt $v0, MAXSIZE, else		#if(strlen(str1)<= MAXSIZE
	la $a0, str2
	la $a1, str1
	jal strcpy  			# strcpy(str2,str)
	
	move $a0, $v0			#print_string(str2)	
	li $v0, print_string
	syscall
	
	la $a0, str4			#print_string(\n)	
	li $v0, print_string
	syscall
	
	la $a0, str2
	jal strrev
	move $a0, $v0			#print_string(strrev(str2))	
	li $v0, print_string
	syscall
	
	li $s0,0			#exit_value=0
	j end 
else:	la $a0, str3			#print_string(str3)	
	li $v0, print_string
	syscall
	la $a0, str1
	jal strlen
	
	move $a0, $v0			#print_string(strrev(str2))	
	li $v0, print_int10
	syscall
	li $s0,-1			#exit_value=-1
	
end:	move $v0, $s0			#return exit_value
	
	
	lw $ra, 0 ($sp)			#repoe $ra
	addu $sp, $sp, 4		#repoe espaço na stack
	jr $ra

#-------------------------------------------------------------
strcpy:	li $t2,0			# i=0
						#
do:		add $t0,$a0,$t2			# dst[i]
		add $t1,$a1,$t2			# src[i]
		lb $t3,0($t1)			# ler o src[i]
		sb $t3,0($t0)			#  dst[i]=src[i] 
						#
		addiu $t2,$t2,1			# i++
						#
		bne $t3,'\0',do			# (while(scr[i++]!='\0')}
						#
		move $v0, $a0			# passar o que queremos retornar para o endereço de retorno
		jr $ra				# termina
	
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
#------------------------------------------------------------------------
strlen: li $t1,0
while:  lb $t0,0($a0)
	addiu $a0,$a0,1
	beq   $t0, '\0', endw2
	addi $t1, $t1, 1
	j while
endw2:   move $v0, $t1
	jr $ra