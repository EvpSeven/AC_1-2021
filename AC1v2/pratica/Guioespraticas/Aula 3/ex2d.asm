# Mapa de registos: 
	# $t0 – value 
	# $t1 – bit 
	# $t2 - i 
	.data
str1: 	.asciiz "introduza um numero"
str2: 	.asciiz "o valor em binario é"
	.eqv print_string, 4
	.eqv read_int,5
	.eqv print_char, 11
	
	.text
	.globl main	
main:	la $a0, str1
	li $v0, print_string	#print_string(str1)
	syscall 
	
	ori $v0, $0, read_int	# nao podia ser: li $v0, read_int ?
	syscall
	or $t0, $0, $v0  	#value = read_int();
	
	la $a0, str2
	li $v0, print_string	
	syscall			#print_string(str2)
	
	li $t2,0 		#i=0

for:	bge $t2, 32, endfor

	rem $t4, $t2,4 		#$t4= i%4
	bne $t4, 0, for2	#se $t4!=0 salta para o for2 
	or $a0, $0, ' '		#print_char(' ')
	ori $v0,$0,print_char
	syscall

for2:	andi $t5, $t0, 0x80000000 
	srl $t1, $t5, 31  	
	
	addi $t6, $t1, 0x30
	
	or $a0, $0, $t6
	ori $v0, $0, print_char
	syscall
	
	j endif
	
endif:	sll $t0, $t0, 1		#value= value<< 1
	add $t2, $t2, 1		#i++
	
	j for			#volta ao for
	
endfor: jr $ra			#fim do programa
	

