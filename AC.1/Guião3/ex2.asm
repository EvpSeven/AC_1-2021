	.data
str1:   .asciiz"Introduza um numero: "
str2:   .asciiz"\nO valor em binário é: "
	.text
	.globl main
	
main:	ori $v0,$0,4   
	la  $a0,str1
	syscall		#print.string("Introduza um numero: ")
	
	ori $v0,$0,5
	syscall		#read_int
	
	move $t0,$v0
	
	ori $v0,$0,4
	la $a0,str2
	syscall
	
	ori $t2,$0,0
	ori $t5,$0,0
	
loop:   
	andi $t1,$t0,0x80000000
	srl  $t1,$t1,31	
	
	blez $t1,printchar0
	bgtz $t1,printchar1	
	
printchar0:beq  $t5,0,end_if
	   ori $v0,$0,1
	   ori $a0,$0,0
	   syscall
	   j end_if
printchar1:ori $t5,$0,1
	   ori $v0,$0,1
	   ori $a0,$0,1
	   syscall
	   j end_if
	 
end_if:
	   sll  $t0,$t0,1
	   sub  $t3,$t2,31
	   addi $t2,$t2,1
	   rem  $t4,$t2,4
	   bne  $t4,0,end_loop
	   
	   beq  $t5,0,end_loop
	   ori $a0,$0,' '
	   ori $v0,$0,11
	   syscall
	   
end_loop:  bltz $t3,loop   
	   
jr $ra
	   
	   
	   
	
	
	
	
	
	
	
