#Mapa de Registos
#p:	$t0
#*p:	$t1
#lista+size: $t2
	.data
str1:	.asciiz ";"
str2:	.asciiz "conteudo do array"
	.align 2
lista:	.word 	8,-4,3,5,124,-15,87,9,27,15
	.eqv print_int10, 1
	.eqv print_string,4
	.eqv SIZE,10		
	.text
	.globl main
main:	la $a0, str2		#print_string(conteudo do array);
	la $v0,print_string
	syscall
	la $t0,lista		#p=lista	
	li $t2, SIZE		#t2=size
	sll $t2, $t2, 2		#t2=SIZE*4
	addu $t2, $t2, $t0	#$t2 = SIZE+lista
while:	
	bge $t0, $t2, endw
	lw  $t1,0($t0)		#$t1= *p; mete no $t1 o conteudo do endereço p do array
	move $a0, $t1
	la $v0, print_int10
	syscall
	la $a0, str1		#print_string(;);
	la $v0,print_string
	syscall
	addi $t0, $t0, 4	#p++
	j while
	
endw:   jr $ra
	
	
	