	.data
	.eqv print_int10,1
	.eqv print_string,4
	.eqv read_int,5
str1:	.asciiz ", "
str2:	.asciiz "Size of array: "
str3:	.asciiz "array["
str4:	.asciiz "] = "
str5:	.asciiz "Enter the value to be inserted: "
str6:	.asciiz "Enter the position: "
str7:	.asciiz "\nOriginal array: "
str8:	.asciiz "\nModified array: "
array:	.align 2
	.space 50
	.text
	.globl main
main:	subu $sp,$sp,28			# reserva espaço na stack
	sw $ra,0($sp)			# salvaguarda dos registos
	sw $s0,4($sp)			#
	sw $s1,8($sp)			#
	sw $s2,12($sp)			#
	sw $s3,16($sp)			#
	sw $s4,20($sp)			#
	sw $s5,24($sp)			#
	la $a0,str2			#
	li $v0,print_string		#
	syscall				# print_string("Size of array: ")
					#
	li $v0,read_int			#
	syscall				# read_int()
	move $s1,$v0			# array_size = read_int()
	li $s0,0			# i = 0
	la $s5,array			# $t5 = array
					#
for1:	bge $s0,$s1,endfor1		# for(i = 0; i < array_size; i++) {
	la $a0,str3			#
	li $v0,print_string		#
	syscall				# print_string("array[")
					#
	move $a0,$s0			#
	li $v0,print_int10		#
	syscall				# print_int10(i)
					#
	la $a0,str4			#
	li $v0,print_string		#
	syscall				# print_string("] = ")
					#
	li $v0,read_int			#
	syscall				# read_int()
	sll $s4,$s0,2			# i*4
	addu $s4,$s4,$s5		# $t4 = i*4 + array -> posição i do array
	sw $v0,0($s4)			# array[i] = read_int()
					#
	addiu $s0,$s0,1			# i++
	j for1				# }
					#
endfor1:la $a0,str5			#
	li $v0,print_string		#
	syscall				# print_string("Enter the value to be inserted: ")
					#
	li $v0,read_int			#
	syscall				# read_int()
	move $s2,$v0			# insert_value = read_int()
					#
	la $a0,str6			#
	li $v0,print_string		#
	syscall				# print_string("Enter the position: ")
					#
	li $v0,read_int			#
	syscall				# read_int()
	move $s3,$v0			# insert_pos = read_int()
					#
	la $a0,str7			#
	li $v0,print_string		#
	syscall				# print_string("\nOriginal array: ")
					#
	la $a0,array			# argumentos para a função
	move $a1,$s1			#
	jal print_array			#
					#
	la $a0,array			# argumentos para a função
	move $a1,$s2			#
	move $a2,$s3			#
	move $a3,$s1			#
	jal insert			#
					#
	la $a0,str8			#
	li $v0,print_string		#
	syscall				# print_string("\nModified array: ")
					#
	la $a0,array			# argumentos para a função
	addi $s1,$s1,1			# $t1 = array_size + 1
	move $a1,$s1			#
	jal print_array			#
	li $v0,0			# return 0
	lw $ra,0($sp)			# restaura os registos
	lw $s0,4($sp)			#
	lw $s1,8($sp)			#
	lw $s2,12($sp)			#
	lw $s3,16($sp)			#
	lw $s4,20($sp)			#
	lw $s5,24($sp)			#
	addu $sp,$sp,28			# liberta espaço na stack
	jr $ra				# termina o programa

# Mapa de registos
# $t0:	i
# $t1:	array[i]
# $t2: array+i
# $t3: array+pos
#
insert:
if:		ble $a2,$a3,else	# if(pos > size)
		li $v0,1		# return 1
		j end			#
else:		subiu $t0,$a3,1		# i = size-1
for2:		blt $t0,$a2,endfor2	# (for i  = size-1; i >= pos, i--) {
		sll $t2,$t0,2		# $t2 = i*4
		add $t2,$t2,$a0		# $t2 = i*4 + array
		lw $t1,0($t2)		# $t1 = array[i] -> ler o array[i]
		sw $t1,4($t2)		# array[i+1] = array[i] -> escrever array[i] em array[i+1]
		subi $t0,$t0,1		# i--
		j for2			# }
					#
endfor2:	sll $t3,$a2,2		# $t3 = pos*4
		add $t3,$t3,$a0		# $t3 = pos*4 + array
		sw $a1,0($t3)		# array[pos] = value -> escrever o value em array[pos]
		li $v0,0		# return 0
end:		jr $ra			# termina
					#
					#
# Mapa de registos
# $t0:	p
# $t1:	
# $t2: 
# $t3: 
#
print_array:	sll $t0,$a1,2		# $t0 = n*4
		add $t0,$t0,$a0		# p = a + n
		move $t2,$a0		#
					#
while:		bge $t2,$t0,endw	# for(; a < p; a++) {
		lw $a0,0($t2)		# *a -> antes, o $a0 tem o valor de a
		li $v0,print_int10	#
		syscall 		# print_int10(*a)
		la $a0,str1		#
		li $v0,print_string	#
		syscall			# print_string(", ")
		addiu $t2,$t2,4		#
		j while			# }
endw:		jr $ra			# termina
		
