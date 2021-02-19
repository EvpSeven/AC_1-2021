# Mapa de registos
# $t0 = $a0:	dst
# $t1 = $a1:	src
# $t2:		p
# $t3:		*dst
# $t4:		*src
# $t5:		*p
# $t6:		exit_value
# $t7:		strlen(str1)
#
		.data
str:		.asciiz "String too long: "
str1:		.asciiz "I serodatupmoC ed arutetiuqrA"
str2:		.align 2
		.space 31
str3:		.asciiz "\n"
		.eqv SIZE,30
		.eqv print_string,4
		.eqv print_int10,1
		.text
		.globl main
main:		subu $sp,$sp,4			# liberta espaço na stack
		sw $ra,0($sp)			# salvaguarda $ra
						#
		la $a0,str1			# $a0=str1
		jal strlen			# strlen(str1)
						#
if:		bgt $v0,SIZE,else		# if(strlen(str1)<=STR_MAX_SIZE){
		la $a0,str2			# $a0=str2
		la $a1,str1			# $a0=str1
		jal strcopy			# strcopy(str2,str1)
						#
		move $a0,$v0			#
		li $v0,print_string		#
		syscall				# print_string(str2)
						#
		la $a0,str3			#
		li $v0,print_string		#
		syscall				# print_string(str3)
						#
		la $a0,str2			#
		jal strrev			#
						#
		move $a0,$v0			#
		li $v0,print_string		#
		syscall				# print_string(strrev(str2))
						#
		li $t6,0			# exit_value=0
						#
		j end_if			#
						#
else:		la $a0,str			#
		li $v0,print_string		#
		syscall				# print_string(str)
						#
		la $a0,str1			#
		jal strlen			# strlen(str1)
						#
		move $a0,$v0			#
		li $v0,print_int10		#
		syscall				# print_int10(strlen(str1))
						#
		li $t6,-1			#
						#
end_if:		lw $ra,0($sp)			# repor o valor de $ra
		addiu $sp,$sp,4			# libertar espaço na stack
						#
		jr $ra				# termina
	
	
	
	
	
strcopy:	move $t2,$a0			# p=dst
						#
do:		lb $t4,0($a1)			# ler o *src
		sb $t4,0($t2)			# escrever o *src em *p
		addu $t2,$t2,1			# p++
		addu $a1,$a1,1			# src+
						#
		bne $t4,'\0',do			# (while(scr++ != '\0')}
						#
		move $v0, $a0			# passar o que queremos retornar para o endereço de retorno
		jr $ra				# termina
						#
						#
						#
						#
strlen:		li $t1,0			# len=0
						#
while:		lb $t0,0($a0)			# while(*s++ != \0)
		addiu $a0,$a0,1			#
		beq $t0,'\0',endw		# {
		addi $t1,$t1,1			# len++
		j while				# }
						#
endw:		move $v0, $t1			# return len
		jr $ra				# termina a subrotina
						#
						#
						#
						#
strrev:		subu $sp,$sp,16			# reserva espaço na stack
		sw $ra,0($sp)			# guarda endereço de retorno
		sw $s0,4($sp)			# guarda valor dos registos
		sw $s1,8($sp)			# $s0, $s1, $s2
		sw $s2,12($sp)			#
		move $s0,$a0			# registo "callee-saved"
		move $s1,$a0			# p1 = str
		move $s2,$a0			# p2 = str
						#
while1:		lb $t0,0($s2)			# $t0=*p2
		beq $t0,'\0',end_w1		# while(*p2 != '\0') {
		addu $s2,$s2,1			# p2++
		j while1			# }
						#
end_w1:		subu $s2,$s2,1			# p2--
						#
while2:		bge $s1,$s2, end_w2		# while(p1<p2) {
		move $a0,$s1			#
		move $a1,$s2			#
		jal exchange			# exchange(p1,p2)
						#
		addu $s1,$s1,1			# p1++
		subu $s2,$s2,1			# p2--
		j while2			# }
						#
end_w2:		move $v0,$s0			# return str
		lw $ra,0($sp)			# repoe endereço de retorno
		lw $s0,4($sp)			# repoe o valor dos registos
		lw $s1,8($sp)			# $s0, $s1 e $s2
		lw $s2,12($sp)			#
		addu $sp,$sp,16			# liberta espaco da stack
		jr $ra				# termina
						#
						#
						#
						#
exchange:	lb $t1,0($a0)			# $t1=*p1
		lb $t2,0($a1)			# $t2=*p2
		sb $t1,0($a1)			# $t2=$t1
		sb $t2,0($a0)			# $t1=$t2
		jr $ra				# SUB-ROTINA TERMINAL
