		.text
		.globl strrev
		
# ------------------- strrev ----------------------
strrev:		subu $sp,$sp,16			# reserva espa�o na stack
		sw $ra,0($sp)			# guarda endere�o de retorno
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
		lw $ra,0($sp)			# repoe endere�o de retorno
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
