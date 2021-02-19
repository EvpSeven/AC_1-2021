#MAPA DE REGISTOS
#str: $a0  -> $s0 ( argumento � passado em $a0)
#p1: $s1 (registo callee-saved)
#p2: $s2(registo callee-saved)
#
	.data 
str:	.asciiz "ITED -orievA ed edadisrevinU"
	.eqv   print_string, 4
	.text
	.globl main
main:
	subu $sp, $sp, 4 # Reserva espa�o na stack
	sw $ra, 0($sp) # Salvaguarda o registo $ra
	la $a0, str
	jal strrev
	move $a0, $v0
	li $v0, print_string
	syscall
	lw $ra, 0($sp) # Recupera o valor do reg. $ra
	addu $sp, $sp, 4 # Liberta espa�o na stack
	li $v0, 0
	jr $ra
	
strrev: subu $sp,$sp,16	#reserva espa�o na stack
	sw $ra,0($sp)	#salvaguarda do $ra
	sw $s0,4($sp)	#guarda valores dos registos
	sw $s1,8($sp)	#$s0, $s1, $s2
	sw $s2,12($sp)		
	move $s0, $a0	#registo "callee-saved"
	move $s1, $a0	#p1=str
	move $s2, $a0	#p2=str
while1: lb $t1, 0($s2)  		#$t1=*p2	
	beq $t1, '\0', endw1		#while(*p2!='\0')
	addu $s2, $s2,1			#p2++;
	j while1
endw1:	subu $s2, $s2, 1		#p2--
while2: bge $s1, $s2, endw2
	move $a0,$s1	#argumento p1
	move $a1,$s2	#argumento p2
	jal exchange
	addu $s1, $s1, 1	#p1++
	subu $s2, $s2, 1	#p2--
	j while2
endw2:	move $v0,$s0 			# return str
	lw $ra,0($sp)  			# rep�e endere�o de retorno
	lw $s0,4($sp)  			# rep�e o valor dos registos
	lw $s1,8($sp)  			# $s0, $s1 e $s2
	lw $s2,12($sp)  			#
	addiu $sp,$sp,16 		# liberta espa�o da stack
	jr $ra 				# termina a sub-rotina

exchange: lb $t0, 0($a0) 		#t0= *c1
	  lb $t1, 0($a1)		#t1= *c2
	  sb $t0, 0($a1)		#*c2= *c1
	  sb $t1, 0($a0) 		#*c1=*c2
          jr $ra
