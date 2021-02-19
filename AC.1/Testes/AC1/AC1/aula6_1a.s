	.data

str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "Ponteiros"

	.align 2
	
array: 	.word str1,str2,str3

	.text
	.globl main
	
main:

	li $t0,0			# $t0 = int i=0;
	
for:	bge $t0,3,endFor		# for(i=0;i<size;i++)

	
	la $t1,array			# $t1 = &array
	sll $t2,$t0,2			# i*4
	
	addu $t2,$t2,$t1		# &array[i];
	
	lw $t2,0($t2)			# *array[i];
	
	move $a0,$t2
	li $v0,4
	syscall				# print_str(array[i]);
	
	li $a0,'\n'
	li $v0,11
	syscall				# print_char('\n');

	addi $t0,$t0,1			# i++;
	j for
endFor:
	
	jr $ra