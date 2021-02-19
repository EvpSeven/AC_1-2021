	.data
str1: 	.asciiz "introduza 2 numeros"		#print_string("introduza 2 numeros")
str2: 	.asciiz "A soma dos dois numeiros e':"	#print_string("A soma dos dois numeiros e': ")
	.eqv print_string, 4
	.eqv read_int, 5	#a= read_int();
	.eqv print_int10,1
	
	.text
	.globl main
main:	la $a0,str1
	ori $v0,$0, print_string
	syscall		#print_string(str1);
	
	ori $v0,$0,read_int
	syscall 	  #valor lido e´ retornado em $vo
	or  $t0, $v0, $0  #$t0 = read_int
	
	ori $v0,$0,read_int
	syscall 	  #valor lido e´ retornado em $vo
	
	or  $t1, $v0, $0  #$t1 = read_int
					
	la $a0, str2
	ori $v0, $0, print_string
	syscall
	
	add $v0, $t0, $t1 #v0 = t0 + t1
	
	or $a0, $0, $v0
	ori $v0, $0, print_int10 #print_int10(v0)
	syscall
	
	jr $ra
	