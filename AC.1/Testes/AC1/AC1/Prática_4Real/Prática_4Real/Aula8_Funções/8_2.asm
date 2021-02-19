#Aula8
#Exer2
	.eqv MAX_SIZE, 20
	.data
str:	.byte 0:MAX_SIZE
str0:	.asciiz	"\nIntroduza um numero: "
str1:	.asciiz "\nIntroduza uma base (entre 2 e 16): "
str2:	.asciiz	"\nERRO! Base invalida! O programa vai abortar!"
	.text
	.globl main
		
main:	
	addi	$sp, $sp, -4		#allocate memory
	sw	$ra, 0($sp)		#save $ra register
	
	la	$a0, str0		#print_str( "\nIntroduza um numero: " )
	li	$v0, 4
	syscall
		
	li	$v0, 5			# n = read_int()
	syscall
	move	$s0, $v0		#save n in a safer register
		
	la	$a0, str1		#print_str( "\nIntroduza uma base (entre 2 e 16): "
	li	$v0, 4
	syscall
		
	li	$v0, 5			#b = read_int()
	syscall	

	blt	$v0,  2, error		#  2 <= b <= 16
	bgt	$v0, 16	 error
		
	move	$a0, $s0 		#itoa(n, b, s)
	move	$a1, $v0		
	la	$a2, str		
		
	jal 	itoa			
		
	move	$a0, $v0		#print_str(s)
	li	$v0, 4
	syscall
		
	j	enderror
			
error:		
	la	$a0, str2		#print_str( "\nERRO! Base invalida! O programa vai abortar!" )
	li	$v0, 4
	syscall
		
enderror:	
	lw	$ra, 0($sp)
	addiu	$sp, $sp, 4
	jr	$ra
		
#Função_Itoa------------------------------------------------
itoa:
	#$a0 = n
	#$a1 = b
	#$a2 = s
	
	subiu $sp, $sp, 8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	move $t6, $a2		#preservar o $a2 = *p

do:
	lb $t0, 0($t6) 		#s = *p
	
	rem $t1, $a0, $a1 	# digit = $t1
	div $a0, $a0, $a1 	#n = a0
	
	move $s0, $a0		#salvaguarda o $a0
	
	move $a0, $t1 		#load digit
	jal toascii
	
	move $a0, $s0		#restora o $a0	
	
	sb $v0, 0($t6)
	addiu $t6, $t6, 1	#p++
	
	bgtz $a0, do
	
	li $t8, '\0'
	sb $t8, 0($t6)
	
	move $a0, $a2		#strrev(s)
	jal strrev
	
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
	
#String_reverse-----------------------------------------------------------------------------------------                                     
strrev:
 	
 	subiu $sp, $sp, 8
 	sw $ra, 0($sp)
 	sw $a0, 4($sp) #guarda o str
 	
 	move $t1, $a0		#p1
 	move $t2, $a0		#p2
 	
while:
 	lb $t0, 0($t2)		#*p2
 	
 	beq $t0, '\0', endwhile
 	addiu $t2, $t2, 1	#p2++
 	
 	j while
 	
 endwhile:
 	subiu $t2, $t2, 1	#p2--
 	
 while2:
 	bgt $t1, $t2, endwhile2
 	
 	move $a0, $t1 	#c1
 	move $a1, $t2	#c2
 	jal exchange
 	
 	addiu $t1, $t1, 1 	#p1++
 	subiu $t2, $t2, 1	#p2--
 	
 	j while2
 
endwhile2:

 	lw $ra, 0($sp)
 	lw $a0, 4($sp)
 	addiu $sp, $sp, 8
 	
 	move $v0, $a0
 	
 	jr $ra
 	
 #Função Exchange
 exchange:
 	
 	lb $t6, 0($a0)  #*c1
 	lb $t5, 0($a1)  #*c2
 	
 	sb $t5, 0($a0)
 	sb $t6, 0($a1)	
                                                                                                                                                                                                                             
        jr $ra                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
