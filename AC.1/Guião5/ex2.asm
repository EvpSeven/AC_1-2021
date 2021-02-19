	.data
str1:	.asciiz";\n "
str2:	.asciiz" => "
lista:	.word  8,-4,3,5,124,-15,87,9,27,15

	.eqv print_int10,1
	.eqv print_string,4
	.eqv SIZE,40
	.text
	.globl main
	
main:	la $t0,lista
	li $t3,0
	la $t2,lista
	addi $t2,$t2,SIZE
	
while: 	bge $t0,$t2,end_while
	
	move $a0,$t3
	li $v0,print_int10
	syscall
	
	la $a0,str2
	li $v0,print_string
	syscall
	
	lw $a0, ($t0)
	li $v0,print_int10
	syscall
	
	la $a0,str1
	li $v0,print_string
	syscall
	
	addi $t3,$t3,1
	subu $t0,$t0,$t4
	sll  $t4,$t3,2
	addu $t0,$t0,$t4
	
	j while

end_while:
jr $ra