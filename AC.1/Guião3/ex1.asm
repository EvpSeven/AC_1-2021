	.data
	str1:.asciiz"Introduza um numero"
	str2:.asciiz"Valor ignorado\n"
	str3:.asciiz"Asoma dos positivos é:"
	.text
	.globl main
	
main:   ori $t0,$0,0	#
	ori $t2,$0,0	#
			#
WHILE:  		#	
	ori $v0,$0,4	#
	la  $a0,str1	#	print_string("Introduza um numero")
	syscall		#
			#	
	ori $v0,$0,5	#	read_int()
	syscall		#
			#
	bgtz $v0,IF	#	if($v0>0)goto IF
			#
	ori $v0,$0,4	#
	la  $a0,str2	#	else(){print_string("Valor ignorado")}
	syscall		#
	j END_IF	#
			#
IF:     add $t0,$t0,$v0 #	soma+=$v0
	j END_IF	#
			#
END_IF:			#
	addi $t2,$t2,1	#	i++
	ori  $t3,$0,5	#	
	sub  $t3,$t3,$t2#	if(i<5) goto WHILE
	bgtz $t3,WHILE	#	
			#
	ori $v0,$0,4	#
	la  $a0,str3	#	print_string("Valor ignorado")
	syscall		#
			#
	ori $v0,$0,1	#	
	or  $a0,$0,$t0	#	print_int(soma)
	syscall		#
			#
	jr $ra		#exit()
				
			
	
	
	
	
	