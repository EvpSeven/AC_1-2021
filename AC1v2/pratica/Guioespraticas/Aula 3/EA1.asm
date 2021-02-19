# Mapa de registos: 
	# $t0 – gray
	# $t1 – bin
	# $t2 - mask
	.data
str1: 	.asciiz "introduza um numero"
str2: 	.asciiz "o valor em binario é"
str3: 	.asciiz "o valor em gray é"
	.eqv print_string, 4
	.eqv read_int16,5
	.eqv print_int16, 34
	
	.text
	.globl main	
main:	la $a0, str1
	li $v0, print_string	#print_string(str1)
	syscall 
	
	ori $v0, $0, read_int16	
	syscall
	or $t0, $0, $v0  	#gray = read_int();
	
	srl $t2,$t0, 1
	or  $t1,$0, $t0
	
while:  beq $t2,0, end
	xor $t1, $t1, $t2
	srl $t2, $t2, 1
	j while 
	
end:	la $a0, str2
	li $v0, print_string	
	syscall			#print_string(str2)

	or $a0, $0, $t0
	li $v0, print_int16
	syscall			#print_int16(gray)
	
	la $a0, str3
	li $v0, print_string	
	syscall			#print_string(str3)
	
	or $a0, $0, $t1
	li $v0, print_int16
	syscall			#print_int16(bin)
 jr $ra			        #fim do programa
	
