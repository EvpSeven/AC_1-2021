	.eqv SIZE 5	# defines a size
	.data

str1:	.asciiz "\nIntroduza um numero: "
	.align 2

array1:	.space 20
	.text
	.globl main

main:		
	li $t0, 0		# i -> $t0
	
for:	bge $t0, SIZE, end	# if 'i' greater or equal SIZE, jump to 'end'

	la $a0, str1		
	li $v0, 4
	syscall			# print str1
	
	li $v0, 5		# reads from keyboard
	syscall			# returns to $v0
	move $t2, $v0		# valor do array na pos 'i'
	
	sll $t1, $t0, 2		# mult. of i*4 -> shift left
	sw  $t2, array1($t1)	# saves in the position $t1 of the array the value read ($v0)
	
 	addi $t0, $t0, 1	# i++
 	j for			
 end:	li $v0, 10
 	syscall 		# exit
	
