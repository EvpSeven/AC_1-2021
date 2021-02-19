#Aula7
#Exer2
      .data
str0: .asciiz " - "
str2: .asciiz "String invertida: "
str3: .asciiz "Julio"
str4: .asciiz "Passei aqui - "
      .text
     .globl main

main:    			#Analisar este!	
	subiu $sp, $sp, 4
	sw $ra, 0($sp)
		
	la $a0, str2
	li $v0, 4
	syscall
	
	la $a0, str3
	li $v0, 4
	syscall
	
	la $a0, str0
	li $v0, 4
	syscall
	
	la $a0, str3
	jal strrev
	
	move $a0, $v0
	li $v0, 4   #print reverse
	syscall
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra
	
#string_reverse                                         
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