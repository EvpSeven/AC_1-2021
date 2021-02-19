	.data
str:	.asciiz "\nNumero de argumentos errado"
str1:	.asciiz "\nOperação desconhecida"
	.text
	.globl main
	
main:	subiu $sp,$sp,28
	sw $ra,0($sp)
	sw $s0,4($sp)		# int val1
	sw $s1,8($sp)		# "   val2
	sw $s2,12($sp)		# "   res
	sw $s3,16($sp)		# "   exit_code
	sw $s4,20($sp)		# char op
	sw $s5,24($sp)		# s5 = char *argv[]
	
	li $s3,0
	move $s5,$a1
	
if:	bne $a0,3,else		# if(argv ==3)

	lw $t0,0($s5)		# $t0 = *argv[0]
	move $a0,$t0
	
	jal atoi
	
	move $s0,$v0		# val1 = atoi(argv[0]);	
	
	lw $t1,8($s5)		# $t1 = *argv[2]
	move $a0,$t1
	
	jal atoi
	
	move $s1,$v0		# val2 = atoi(argv[2]);	
	
	lw $t2,4($s5)		#
	lb $t2,0($t2)		# 
	move $s4,$t2		# op = argv[1][0];
	
	li $t9,0		# auxiliar = false;
				# é necessário para ver se entrou nalgum if antes, se não faz o último else
	
ifX:	bne $t2,'x',elseIfX

	mul $s2,$s0,$s1		# res = val1*val2
	
	li $t9,1		# auxiliar = true;
	
elseIfX: bne $t2,'/',elseIfX2

	div $s2,$s0,$s1		# res = val1/val2
	
	li $t9,1		# auxiliar = true;

elseIfX2:bne $t2,'%',elseIfX3

	rem $s2,$s0,$s1		# res = val1%val2
	
	li $t9,1		# auxiliar = true;
	
elseIfX3:
	bne $t9,0,endIf		# if(auxiliar == false)
	
	la $a0,str1
	li $v0,4
	syscall			# print_str("\nOperação desconhecida")
	
	li $s3,1		# exit_code = 1;
	
	j endIf
	
else:	la $a0,str
	li $v0,4
	syscall			# print_str("\nNumero de argumentos errado")
	
	li $s3,2		# exit_code =2;
	
endIf:	

if2:	bne $s3,0,endIf2

	move $a0,$s0		#
	li $a1,10		#
	jal ac1			# print_int_ac1(val1,10)
	
	move $a0,$s4
	li $v0,11
	syscall			# print_char(op)
	
	move $a0,$s1		#
	li $a1,10		#
	jal ac1			# print_int_ac1(val2,10)
	
	li $a0,'='
	li $v0,11
	syscall			# print_char('=')
	
	move $a0,$s2		#
	li $a1,10		#
	jal ac1			# print_int_ac1(res,10)
	
endIf2:	

	move $v0,$s3		# return exit_code;
	
	lw $ra,0($sp)
	lw $s0,4($sp)		# int val1
	lw $s1,8($sp)		# "   val2
	lw $s2,12($sp)		# "   res
	lw $s3,16($sp)		# "   exit_code
	lw $s4,20($sp)		# char op
	lw $s5,24($sp)
	addiu $sp,$sp,28
	
	jr $ra
	
