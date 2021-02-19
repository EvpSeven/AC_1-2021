# strcat é intermedia
# p= $t1
	.data
	.eqv print_int10, 1
	.eqv print_string, 4
	.eqv MAXSIZE 30
str1:	.asciiz "Arquitetura de "
	
str2:	.space 50
str3:	.asciiz "Computadores I"
str4:	.asciiz "\n"
	.text
	.globl main
main:	addiu $sp, $sp, -4		#reserva espaço na stack
	sw $ra, 0($sp)			#salvaguarda $ra
	la $a0, str2
	la $a1, str1
	jal strcpy
	move $t3, $v0			#$t3=str2
	move $a0, $t3			#print_string("arquitetura de")
	li $v0, print_string
	syscall
	la $a0, str4
	li $v0, print_string		#print_string("\n")
	syscall
	move $a0, $t3
	la $a1, str3 
	jal strcat			#
	move $a0, $v0
	li $v0, print_string		#print_strin
	syscall
	li $v0, 0
	
	
	lw $ra, 0($sp)			#repoe $ra
	addiu $sp, $sp, 4		#repoeespaço na stack
	jr $ra

#-------------------------------------------


strcat:	addiu $sp, $sp, -8		#reserva espaço na )
	sw $ra, 0($sp)			#salvaguarda $ra
	sw $a0, 4($sp)
	
	move $t0, $a0			#p=dst			
while:  lb $t2, 0($t0)			#$t2=*p
	beq $t2, '\0', end
	addiu $t0,  $t0, 1		#p++
	j while
end:    move $a0, $t0
	jal strcpy
	
	
	lw $ra, 0($sp)			#repoe $ra
	lw $v0, 4($sp)			#return $a0= dst
	addiu $sp, $sp, 8		#repoe espaço na stack
	jr $ra
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


