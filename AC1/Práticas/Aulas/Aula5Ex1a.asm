# i:		$t0
# lista:	$t1
# lista+i:	$t2
	.data
	.eqv	SIZE,5
str1:	.asciiz "\nIntroduza um numero: "
	.align 2
lista:	.space 20				# SIZE*4
	.eqv read_int,5				#
	.eqv print_string,4			#
	.text					#
	.globl main				#
main:	li $t0,0				# i=0
while:	bge $t0,SIZE,endw			# while(i<SIZE) {
	la $a0,str1				#
	li $v0,print_string			#
	syscall					# print_string(str1)
	li $v0,read_int				#
	syscall					# $v0=read_int()
	la $t1,lista				# $t1=lista (ou &lista[0])
	sll $t2,$t0,2				# para o proximo endereco ser um numero multiplo de 4 (i*4)
	addu $t2, $t1, $t2			# $t2 = &lista[i] - o endereco da pos. i � calculado somando os 2 enderecos : lista + i
	sw $v0, 0($t2)				# lista[i]=read_int() - copia para a memoria
	addi $t0, $t0, 1			# i++ (ja fizemos *4 anteriormente)
	j while					# }
endw: 	jr $ra					# termina o programa