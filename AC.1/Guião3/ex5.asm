	.data
str1:	.asciiz"Introduza dois numeros:"
str2:   .asciiz"Resultado: "
array1:	.space	20	
	.text
	.globl main
	
main:	la $t0, array1
	
	li $v0,4
	la $a0,str1
	syscall
	
	li $v0,5
	syscall	
	
	andi $v0,$v0,0x0f
	move $t1,$v0
	sw   $t1, ($t0)
	
	li $v0,5
	syscall
	
	
	andi $v0,$v0,0x0f
	move $t1,$v0
	sw   $t1,4($t0)	
	
	lw   $t5, ($t0)
	lw   $t1,4($t0)
	
while:	beq $t5,$0,end_while
	addi $t3,$t3,1
	bge  $t3,4,end_while
	
if:	andi $t4,$t5,0x00000001
	beqz $t4,end_if
	
	add $t2,$t2,$t1
	
end_if:	
	sll $t1,$t1,1
	srl $t5,$t5,1
	
	j while
	
end_while:
	li $v0,4
	la $a0,str2
	syscall
	
	li $v0,1
	move $a0,$t2
	syscall
	
jr	$ra
