#-------main--------------------
	.data
	.eqv STR_MAX_SIZE,20
	.eqv printStr,4
	.eqv readStr,8
	.eqv printInt,5
	.eqv printInt10,1
str1:	.space 21
str2: 	.space 21
str3:	.space 41
string1:.asciiz "Introduza 2 strings: "
string2:.asciiz "Resultados:\n"
	.text
	.globl main
main:	subu $sp,$sp,4
	sw $ra,0($sp)	
	li $v0,printStr
	la $a0,string1
	syscall
	
	li $v0,readStr
	la $a0,str1
	li $a1,STR_MAX_SIZE
	syscall
	
	li $v0,readStr
	la $a0,str2
	li $a1,STR_MAX_SIZE
	syscall

	li $v0,printStr
	la $a0,string2
	syscall	

	la $a0,str1
	jal strlen
	move $a0,$v0
	li $v0,printInt
	li $a1,10
	syscall
	
	la $a0,str2
	jal strlen
	move $a0,$v0
	li $v0,printInt
	li $a1,10
	syscall
	
	la $a0,str3
	la $a1,str1
	jal strcpy
	
	la $a0,str3
	la $a1,str2
	jal strcat
	move $a0,$v0
	li $v0,printStr
	syscall
	
	la $a0,str1
	la $a1,str2
	jal strcmp
	move $a0,$v0
	li $v0,printInt10
	syscall
	
	lw $ra,0($sp)
	addu $sp,$sp,4
	li $v0,0
	jr $ra
	
#-------strlen-----------------$t0=len ,$t1=*s
strlen:
	li $t0,0  		#len=0
forlen:	lb $t1, 0($a0)		#*s
	beq $t1, $0, endlen	
	addi $t0, $t0,1		#len++
	addi $a0, $a0,1 	#s++
	j forlen	
endlen:	move $v0, $t0
			#move $a0,$v0
			#li $v0,printInt10
			#syscall
	jr $ra

#-------strcat----------------$s0= *dst,$s1=*src, $
strcat: 
	subu $sp,$sp,16
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	move $s0,$a0
	move $s1,$a1
	move $s2,$a0		#rp = dst;

forcat:	lb $t1, 0($s0) 		#*dst
	beq $t1,$0,jump
	addi $s0, $s0,1
	j forcat
jump:	move $a0, $s0 
	move $a1, $s1
	jal strcpy
	move $v0, $s2
	
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	subu $sp,$sp,-16
	jr $ra

#--------strcpy-----------------rp=$t0
strcpy:
	move $t0, $a0	 #rp= dst
forcpy:
	lb $t1, 0($a0) 	 #$t1=*dst
	sb $t1, 0($a1)	 #*dst=*src
	beq $t1, $0, endcpy
	addi $a0, $a0,1
	addi $a1, $a1,1
	j forcpy

endcpy:
	move $v0,$t0
	jr $ra

#---------strcmp-------------
strcmp:
forcmp:
	lb $t0, 0($a0)
	lb $t1, 0($a1)
	bne $t0, $t1, endcmp
	beq $t0, $0, endcmp
	addi $a0,$a0,1		#s1++
	addi $a1,$a1,1		#s2++
	j forcmp

endcmp:
	sub $v0, $t0, $t1
	jr $ra






