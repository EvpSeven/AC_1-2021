	.data
str1:   .asciiz"Introduza um numero: "
str2:   .asciiz"\nO valor em hexadecimal:"
	.text
	.globl main
	
	
main:	ori $v0,$0,4
	la  $a0,str1
	syscall
	
	ori $v0,$0,5
	syscall
	
	move $t0,$v0
	
	ori $v0,$0,4
	la  $a0,str2
	syscall
	
	ori $t1,$0,8
	
loop:	andi $t2,$t0,0xf0000000
	bne  $t2,0,end_loop
	blez $t1,end_loop
	
	sll $t0,$t0,4
	subi $t1,$t1,1
	j loop
	
end_loop:

loop2:  andi $t3,$t0,0xf0000000
	srl $t3,$t3,28
	ble $t3,9,print_char0
	
	la $v0,11
	move $a0,$t3
	add $a0,$a0,'0'
	add $a0,$a0,7
	syscall
	j end_if
	
print_char0: la $v0,11
	     move $a0,$t3
	     add $a0,$a0,'0'
	     syscall
	     j end_if
	     
	    
end_if:
	
	sll $t0,$t0,4
	sub $t1,$t1,1
	bgtz $t1,loop2
	
	
jr $ra
