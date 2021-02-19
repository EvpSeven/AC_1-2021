	.data
	
	str1:.asciiz"Introduza 2 numeros\n"
	str2:.asciiz"A soma dos dois numeros é "
	.eqv print_int,1
	.eqv print_string,4
	.eqv read_int,5
	
	.text
	.globl main
	
main:   ori $v0,$0,print_string  #escrever no ecrã "Introduza 2 numeros"
	la  $a0,str1
	syscall
	
	ori $v0,$0,read_int      #ler primeiro inteiro
	syscall
	
	or  $t0,$0,$v0           #primeiro interio no registo t0
	ori $v0,$0,read_int      #ler o segundo inteiro
	syscall
	
	or  $t1,$0,$v0           #segundo inteiro no registo t1
	
	add $t2,$t1,$t0          #somar os dois inteiros
	
	la  $a0,str2             #fazer print de "A soma dos dois numeros e' :"
	ori $v0,$0,print_string
	syscall
	
	ori $v0,$0,print_int     #escrever o ecrã a soma dos dois registos
	or  $a0,$0,$t2
	syscall
	
	jr $ra
	
 	
	
	
	