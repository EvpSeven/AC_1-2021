	.data
		.eqv print_int16,34
		.eqv print_int,1
		.eqv print_char,11 
	.text
	.globl main
	
main:   ori $t0,$0,0x12345678
	andi $t1,$t0,0xf000
	srl  $t1,$t1,12
	andi $t2,$t0,0x0f00
	srl  $t2,$t2,8
	andi $t3,$t0,0x00f0
	srl  $t3,$t3,4
	andi $t4,$t0,0x000f
	
	ori $v0,$0,print_int16
	or $a0,$0,$t1
	syscall
	
	ori $v0,$0,print_char
	ori $a0,$0,' '
	syscall
	
	ori $v0,$0,print_int16
	or $a0,$0,$t2
	syscall
	
	ori $v0,$0,print_char
	ori $a0,$0,' '
	syscall
	
	ori $v0,$0,print_int16
	or $a0,$0,$t3
	syscall
	
	ori $v0,$0,print_char
	ori $a0,$0,' '
	syscall
	
	ori $v0,$0,print_int16
	or $a0,$0,$t4
	syscall
	
	
	
