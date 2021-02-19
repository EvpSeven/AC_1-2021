# Mapa de registos
# $t0 - value
# $t1 - bit
# $t2 - i
# $t3 - flag
# $t4 - char
	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "\nO valor em binario e': "

	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_char, 11
	
	.text
	.globl main
	
main:	la $a0, str1
	li $v0, print_string  	     # (instrucao virtual)
	syscall		      	     # print_string(str1)
			      	     #
	ori $v0, $0, read_int 	     # valor lido e' retornado em $v0
	syscall		      	     #
	or $t0, $v0, $0	      	     # value = read_int()
			      	     #
	la $a0, str2	      	     # print_string(str2)
	ori $v0, $0, print_string   #
	syscall			     #
				     #
	li $t2, 0		     # i = 0
	li $t3, 0		     # flag = 0
for:	bge $t2, 32, endfor 	     # while(i < 32) {
				     #
#	andi $t1, $t0, 0x80000000   # (instrucao virtual) isola bit 31
#	beq $t1, $0, else	     # if(bit != 0)
#	ori $a0, $0, 0x31   	     # 
#	ori $v0, $0, print_char	     # print_char('1')
#	syscall			     #
#				     #
#	j shift			     #
#				     #
#else:	ori $a0, $0, 0x30	     # else
#	ori $v0, $0, print_char	     # print_char('0')
#	syscall			     #
				     #
	srl $t1, $t0, 31	     # isolar bit 31
				     #
	beq $t3, 1, ifbody 	     #	     
	beq $t1, 0, shift	     #
				     #
ifbody:	li $t3, 1	     	     # flag = 1
				     #
if:	rem $t4, $t2, 4	     	     # resto da divisao inteira	
	bne $t4, 0, print	     # se nao for igual a 0 sai do if
				     #
	ori $a0, $0, 0x20	     #	
	ori $v0, $0, print_char	     # imprimir o espaco
	syscall			     #
				     # 
print:	addi $a0, $t1, 0x30   	     # char	     
	ori $v0, $0, print_char	     # li $v0, print_char
	syscall			     #
				     #
shift:	sll $t0, $t0, 1		     # value = value << 1
	addi $t2, $t2, 1  	     # i++
				     #		     
	j for			     # }
				     #
endfor:				     #
	jr $ra			     # fim do programa
