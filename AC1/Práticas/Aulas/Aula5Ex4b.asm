# Mapa de registos
# $t1:	*(p+1)
# $t2:	*p
# $t3:	lista+SIZE
# $t4:	houve_troca
# $t5:	p
# $t6:	pUltimo
	.data
	.eqv FALSE,0
	.eqv TRUE,1
	.eqv SIZE,10
	.eqv print_int10,1
	.eqv read_int,5
	.align 2
lista:	.space 40		# reserva espaço para 10 numeros inteiros
	.text
	.globl main
main:	la $t5,lista		# p=lista
	li $t3,SIZE		# $t3=SIZE
	sll $t3,$t3,2		# $t3=SIZE*4
	addu $t3,$t3,$t5	# $t3 = lista+SIZE*4
w_leit:	bge $t5,$t3,end_wl	# while(p<lista+SIZE) {
	li $v0,read_int		# read_int()
	syscall			#
	sw $v0,0($t5)		# guardar a palavra que acabamos de introduzir no teclado
	addu $t5,$t5,4		# p*4
	j w_leit		# }
end_wl:	la $t5,lista		#
	li $t6,SIZE		# $t6=SIZE
	subu $t6,$t6,1		# $t6=SIZE-1
	sll $t6,$t6,2		# $t6=(SIZE-1)*4
	addu $t6,$t6,$t5	# $t6=(SIZE-1)*4+lista
do:	li $t4,FALSE		# houve_troca=FALSE
	la $t5,lista		# voltar a por o endereco inicial para podermos percorrer o array
for:	bge $t5,$t6,endfor	# while(p<pUltimo) {
if:	lw $t2,0($t5)		# $t2=*p
	lw $t1,4($t5)		# $t1=*(p+1)
	ble $t2,$t1,endif	# if(*p>*(p+1)) {
	sw $t2,4($t5)		# $t2=$t1
	sw $t1,0($t5)		# $t1=$t2
	li $t4,TRUE		# houve_troca=TRUE
endif:	addu $t5,$t5,4		# p*4
	j for			# }
	addi $t6,$t6,-4		# decrementar para ele nao chegar a ultima posicao
				# porque ja temos a garantia que o numero maior esta no final
endfor:	beq $t4,TRUE,do		# } while(houve_troca==TRUE)
	la $t5,lista		# voltar a por o endereco inicial para podermos percorrer o array de novo
w_impr:	bge $t5,$t3,end_w	# while(p<lista+SIZE) {
	lw $a0,0($t5)		# carregar a palavra da memoria para imprimir
	li $v0, print_int10	#
	syscall			# print_int10()
	addu $t5,$t5,4		# p*4
	j w_impr		# }
end_w:	jr $ra			# termina o programa
