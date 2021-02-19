# Mapa de registos: 
	# $t0 – value 
	# $t1 – bit 
	# $t2 - i 
	# $t3- falg
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
	li $t3,0
	
for:	bge $t2, 32, endfor

shift:  srl $t1, $t0, 31
	
if:	beq $t3, 1, true	#if(flag==1||bit!=0)
	beq $t1,0, endif
	
true:	li $t3, 1		#flag==1
	
if2:	rem $t4, $t2,4 		#$t4= i%4
	bne $t4, 0, print	#se $t4!=0 salta para o for
	or $a0, $0, ' '		#print_char(' ')
	ori $v0,$0,print_char
	syscall

	
print:	addi $t6, $t1, 0x30
	
	or  $a0, $0, $t6
	ori $v0, $0, print_char
	syscall
	
	j endif
	
endif:	sll $t0, $t0, 1		#value= value<< 1
	addi $t2, $t2, 1		#i++
	
	j for			#volta ao for
	
endfor: jr $ra			#fim do programa
	
