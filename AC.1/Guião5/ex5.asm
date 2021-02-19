	.data
	.eqv SIZE,10
lista:	.space 40

str1:	.asciiz"\n"
str2:	.asciiz"Introduza um numero:"

	.eqv print_string,4
	.eqv read_int,5
	.eqv print_int10,1
	
	.text
	.globl main
	
main:	la $t0,lista
	li $t2,0
	li $t3,0
	li $s0,4
	
for1:	beq $t5,SIZE,end_for1	
	
	la $a0,str2
	li $v0,print_string
	syscall
	
	li $v0,read_int
	syscall
	
	sll $t7,$t5,2
	addu $t7,$t0,$t7
	addi $t5,$t5,1
	
	sw $v0, ($t7)
	
	j for1

end_for1:
	li $t5,0

	
for2:	bgt $t2,8,end_for2
	addu $t1,$t0,$s0
	addi $t3,$t2,1
	addi $t5,$t4,4
	for3:	bgt $t3,9,end_for3
		
		lw $t7,($t1)
		lw $t6,($t0)
				
		if:bge $t7,$t6,end_if	
			move $a0,$t7
			move $t7,$t6
			move $t6,$a0
			
			sw $t7,($t1)
			sw $t6,($t0)
		end_if:
		
		addi $t3,$t3,1
		subu $t1,$t1,$t5
		sll $t5,$t3,2
		addu $t1,$t1,$t5
		
		j for3
		
	end_for3:

	addi $t2,$t2,1
	subu $t0,$t0,$t4
	sll $t4,$t2,2
	addu $t0,$t0,$t4
	
	j for2	

end_for2: