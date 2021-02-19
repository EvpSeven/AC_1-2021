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
	andi $t1, $t0, 0x80000000 #bit= value & 0x80000000; isola o bit 31
	beqz  $t1 , else	#if $t1 =0 salta para o label "else"
				#se nao
	or  $a0,$0,'1'	#podia ser assim? : la &a0 ,1
	li  $v0, print_char	#está bem? ou tem de se fazer com o ori
	syscall
	
	j endif			#salto incondicional
	
else:   or $a0, $0, '0'
	ori $v0,$0, print_char	#print_char('0')
	syscall

endif:	sll $t0, $t0, 1		#value= value<< 1
	add $t2, $t2, 1		#i++
	
	j for			#volta ao for
	
endfor: jr $ra			#fim do programa
	
	
