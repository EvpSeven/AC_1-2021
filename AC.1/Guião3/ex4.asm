	.data
str1:   .asciiz"Introduza um numero: "
str2:   .asciiz"\nO valor em octal:"
	.text
	.globl main
	
	
main:	ori $v0,$0,4
	la  $a0,str1
	syscall
	
	ori $v0,$0,5
	syscall
	
	or $t0,$0,$v0
	
	ori $v0,$0,4
	la  $a0,str2
	syscall
	
	ori $t1,$0,11
	
loop:	andi $t2,$t0,0xe0000000
	bne  $t2,0,end_loop
	blez $t1,end_loop
	
	sll $t0,$t0,3
	sub $t1,$t1,1
	j loop
	
end_loop:
	srl $t0,$t0,1
loop2:  andi $t3,$t0,0xe0000000
	srl $t3,$t3,29
	
	
	 la $v0,11
	 move $a0,$t3
	 add $a0,$a0,'0'
	 syscall
	 
	     
	    
end_if:
	
	sll $t0,$t0,3
	sub $t1,$t1,1
	bgtz $t1,loop2
	
	
jr $ra
