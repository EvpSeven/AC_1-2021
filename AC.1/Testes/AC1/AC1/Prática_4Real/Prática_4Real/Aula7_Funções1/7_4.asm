#Aula7
#Exer4
	.data
str1: .asciiz "Arquitetura de "
str2: .space 33
str3: .asciiz "Computadores"
	.text
	.globl main
main:	
	subiu $sp, $sp, 4
	sw $ra, 0($sp)

	la $a0, str2
	la $a1, str1
	jal strcpy
	
	move $a0, $v0 #a0 = destino
	la $a1, str3  #a1 = source
	jal strcat
	
	move $a0, $v0
	li $v0, 4
	syscall
	
	li $v0, 0	

	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra
	
#Função String_Concatenate   $a0 = dst   $a1 = src
strcat:	
	subiu $sp, $sp, 8
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	
while:
		
	lb $t1, 0($a0)	#char *p = dst  #..............-------
	
	beq $t1, '\0', endwhile
	addiu $a0, $a0, 1
	
	j while
	
endwhile:
	#move $a0, $a0
	#move $a1, $a1
	jal strcpy
	
	lw $ra, 0($sp)
	lw $a0, 4($sp)
	addiu $sp, $sp, 8
	
	move $v0, $a0	#return dst
	
	jr $ra
	
	
#Função String_Copy
strcpy:
	li $t0, 0 #i = 0
	#a0 = dst
	#a1 = src
do:
	addu $t1, $a0, $t0  #dst  #.------------
	addu $t2, $a1, $t0  #src
	
	lb $t3, 0($t2) 	#src[i]
	sb $t3, 0($t1)  #dst[i]
	
	addiu $t0, $t0, 1 #i++
	
	bne $t3, '\0', do
	
	move $v0, $a0   #return dst

	jr $ra
