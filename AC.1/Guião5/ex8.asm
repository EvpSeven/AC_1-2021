	.data
str1:	.asciiz"Nr. de Parametros"
str2:	.asciiz"\nP"
str3:	.asciiz": "
	.text
	.globl main
	
main:	li $t0,0
	subu $sp,$sp,8
	sw $a0, ($sp)
	sw $a1,4($sp)
	la $a0,str1
	li $v0,4
	syscall
	lw $t0,($sp)
	lw $t1,4($sp)
	move $a0,$t0
	li $v0,1
	syscall
	
	li $t2,0
for:	bge $t2,$t0,end_for
	
	la $a0,str2
	li $v0,4
	syscall
	
	move $a0,$t2
	li $v0,1
	syscall
	
	la $a0,str3
	li $v0,4
	syscall
	
	move $t4,$a1
	lb $a0,($t4)
while:	beq $a0,'\0',end_while

	lb $a0,($t4)
	li $v0,11
	syscall
	
	addu $t4,$t4,1

end_while:
	
	addi $t2,$t2,1
	addu $t4,$t4,1
end_for:
	addu $sp,$sp,8
jr $ra