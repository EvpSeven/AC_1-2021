	.data
	.eqv SIZE,10
	.eqv TRUE,1
	.eqv FALSE,0
	.eqv print_int10,1
	.eqv print_string,4
	.eqv read_int,5
lista:	.space 40
str1:	.asciiz"Insira um numero:"
str2:	.asciiz"\n"
	.text
	.globl main
	
main:	la $t6,lista
	li $t5,0
	li $t3,0

for1:	beq $t5,SIZE,end_for1	
	
	la $a0,str1
	li $v0,print_string
	syscall
	
	li $v0,read_int
	syscall
	
	sll $t7,$t5,2
	addu $t7,$t6,$t7
	addi $t5,$t5,1
	
	sw $v0, ($t7)
	
	j for1

end_for1:

	or $t7,$0,$t6
	li $t5,0
	or $t2,$0,$t6
	add $t2,$t2,4
	
do_while:
	li $t4,FALSE
	
	for2:	bge $t5,SIZE,end_for2
		
		subu $t7,$t7,$t3	
		subu $t2,$t2,$t3	
		sll $t3,$t5,2
		addu $t7,$t7,$t3
		addu $t2,$t2,$t3
				
		lw $t0, ($t7)
		lw $t1, ($t2)
		
		if:	ble $t0,$t1,end_if
			
			move $a0,$t1
			move $t1,$t0
			move $t0,$a0
			
			sw $t0, ($t7)
			sw $t1, ($t2)
			
			li $t4,TRUE
		
		end_if:
		addi $t5,$t5,1
		j for2
		
	end_for2:	
		li $t5,0
	
beq $t4,TRUE,do_while
	
for3:	bge $t5,SIZE,end_for3
	subu $t7,$t7,$t3		
	sll $t3,$t5,2
	addu $t7,$t7,$t3
				
	lw $a0, ($t7)
	li $v0,print_int10
	syscall
	
	la $a0,str2
	li $v0,print_string
	syscall
		
		
	addi $t5,$t5,1
	j for3
end_for3:
	jr $ra