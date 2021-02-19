# N�O FUNCIONA	
	.data
buf:	.space 33
	.eqv print_string,4
	.eqv read_int,5
	.text
	.globl main
main:		subu $sp,$sp,12		# guarda espa�o na stack
		sw $ra,0($sp)		# salvaguarda dos registos
		sw $s0,4($sp)		#
		sw $s1,8($sp)		#
					#
do3:		li $v0,read_int		#
		syscall			# read_int()
		move $s0,$v0		# $s0 = read_int = val
					#
		li $v0,read_int		#
		syscall			# read_int()
		move $s1,$v0		# $s1 = read_int = base
					#
		move $a0,$s0		# argumentos da fun��o
		move $a1,$s1		#
		jal print_int_ac1	# salta para a fun��o
					#
while3:		bne $s0,0,do3		#
		li $v0,0		# return 0
		lw $ra,0($sp)		# reposi��o dos registos
		lw $s0,4($sp)		#
		lw $s1,8($sp)		#
		addu $sp,$sp,12		# liberta espa�o na stack	
		jr $ra			# termina o programa
					#
# ----------------------------------------------------------------------------------
					#
print_int_ac1:	subu $sp,$sp,16		# guarda espa�o na stack
		sw $s0,0($sp)		# salvaguarda dos registos
		sw $s1,4($sp)		#
		sw $s2,8($sp)		#
		sw $ra,12($sp)
		move $s0,$a0		# $s0 = val
		move $s1,$a1		# $s1 = base
		la $s2,buf		# $s2 = buf
					# 
		move $a0,$s0		# argumentos para a fun��o ($a0 e $a1 mant�m-se)
		move $a1,$s1		#
		move $a2,$s2		#
		jal itoa		# salta para a fun��o
		move $a0,$v0		#
		li $v0,print_string	#
		syscall			# print_string(itoa(val,base,buf))
					#
		lw $s0,0($sp)		# restauro dos registos
		lw $s1,4($sp)		#
		lw $s2,8($sp)		#
		lw $ra,12($sp)		#
		addu $sp,$sp,16		# liberta espa�o na stack
		jr $ra
# -----------------------------------------------------------------------------------
itoa:		subu $sp,$sp,20		# reserva espa�o no stack
		sw $s0,0($sp)		# guarda registos $sx e $ra
		sw $s1,4($sp)		#
		sw $s2,8($sp)		#
		sw $s3,12($sp)		#
		sw $ra,16($sp)		#
		move $s0,$a0		# copia n, b e s para registos
		move $s1,$a1		# "callee-saved
		move $s2,$a2		#
		move $s3,$a2		# p = s
do4:					# do {
		rem $t0,$s0,$s1		# digit = n % b
		div $s0,$s0,$s1		# n = n / b
		move $a0,$t0		# passa o argumento para a fun��o
		jal toascii		# salta para a fun��o
		sb $v0,0($s3)		# *p = toascii(digit)
		addiu $s3,$s3,1		# p++
while4:		bgt $s0,0,do4		# } while(n>0)
		sb $0,0($s3)		# *p = '\0'
		move $a0,$s2		# passar os argumentos para a fun��o
		jal strrev		# salta para a fun��o
		move $v0,$s2		# return s
		lw $s0,0($sp)		# rep�e os registos $sx e $ra
		lw $s1,4($sp)		#
		lw $s2,8($sp)		#
		lw $s3,12($sp)		#
		lw $ra,16($sp)		#
		addu $sp,$sp,20		#
		jr $ra			# termina a subrotina intermedia
					#
# --------------------------------------------------------------------------------------------
					#
toascii:	move $t2,$a0		# $t2 = v
		add $t2,$t2,'0'		# v += '0'
if:		ble $t2,'9',end_if	# if(v > '9')
		addiu $t2,$t2,7		# 'A' - '9' - '1'
end_if:		move $v0,$t2		#
		jr $ra			# termina a subrotina terminal
					#
# ------------------------------------------------------------------------------------------------
					#
strrev:		subu $sp,$sp,16		# reserva espa�o na stack
		sw $ra,0($sp)		# guarda endere�o de retorno
		sw $s0,4($sp)		# guarda valor dos registos
		sw $s1,8($sp)		# $s0, $s1, $s2
		sw $s2,12($sp)		#
		move $s0,$a0		# registo "callee-saved"
		move $s1,$a0		# p1 = str
		move $s2,$a0		# p2 = str
					#
while1:		lb $t0,0($s2)		# $t0=*p2
		beq $t0,'\0',end_w1	# while(*p2 != '\0') {
		addu $s2,$s2,1		# p2++
		j while1		# }
					#
end_w1:		subu $s2,$s2,1		# p2--
					#
while2:		bge $s1,$s2, end_w2	# while(p1<p2) {
		move $a0,$s1		#
		move $a1,$s2		#
		jal exchange		# exchange(p1,p2)
					#
		addu $s1,$s1,1		# p1++
		subu $s2,$s2,1		# p2--
		j while2		# }
					#
end_w2:		move $v0,$s0		# return str
		lw $ra,0($sp)		# repoe endere�o de retorno
		lw $s0,4($sp)		# repoe o valor dos registos
		lw $s1,8($sp)		# $s0, $s1 e $s2
		lw $s2,12($sp)		#
		addu $sp,$sp,16		# liberta espaco da stack
		jr $ra			# termina
					#
# ------------------------------------------------------------------------------------------
					#
exchange:	lb $t1,0($a0)		# $t1=*p1
		lb $t2,0($a1)		# $t2=*p2
		sb $t1,0($a1)		# $t2=$t1
		sb $t2,0($a0)		# $t1=$t2
		jr $ra			# SUB-ROTINA TERMINAL
