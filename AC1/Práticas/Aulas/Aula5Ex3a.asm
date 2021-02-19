# Mapa de registos
# $t1:		p
# $t2:		*p
# $t3:		lista+SIZE
# $t4:		houve_troca
# $t5:		i
# $t6:		lista
# $t7:		lista+i
# $t8:		lista[i]
# $t9:		lista[i+1]
	.data
	.eqv FALSE,0
	.eqv TRUE,1
	.eqv read_int,5
	.eqv print_int10,1
	.eqv SIZE,10
	.align 2
lista:	.space 40			# reserva espaço para 10 numeros inteiros
	.text				#
	.globl main			#
main:	la $t1, lista			# p=lista
	li $t3, SIZE			# $t3 = SIZE
	sll $t3, $t3, 2			# $t3 = SIZE*4
	addu $t3, $t1, $t3		# $t3 = lista + SIZE*4
					# ------ LEITURA DOS PONTEIROS ------
w_leit:	bge $t1, $t3, do		# while(p<lista+SIZE) {
	li $v0,read_int			# read_int()
	syscall				#
	sw $v0, 0($t1)			# guardar a word que acabamos de ler no teclado
	addu $t1, $t1, 4		# p++ (*4)
	j w_leit			#
do:	la $t6, lista			# do{
	li $t4, FALSE			# houve_troca=false
	li $t5, 0			# i=0
while:	bge $t5, 9, end_w		# while(i<SIZE-1){ - 9 porque é SIZE-1
if:	sll $t7, $t5, 2			# $t7 = i*4
	addu $t7, $t7, $t6		# $t7 = i*4 + lista -> calculo do endereco do elemento i
	lw $t8, 0($t7)			# $t8 = lista[i]
	lw $t9, 4($t7)			# $t9 = lista[i+1]
	ble $t8, $t9, end_if		# if(lista[i] > lista[i+1]){
	sw $t8, 4($t7)			# lista[i+1] = $t8 -> $t8=$t9
	sw $t9, 0($t7)			# lista[i] = $t9 -> $t9=$t8
	li $t4, TRUE			#
					# }
end_if:	addu $t5, $t5, 1			# i++
	j while				# }
end_w:	beq $t4, TRUE, do		# while(houve_troca==TRUE)
	li $t5, 0			# podemos voltar a carregar o $t5 com 0 pois nao o vamos usar mais
w_impr:	bge $t5, SIZE, end_wl		# while(i<SIZE){
	li $t7, 0			# para começar da posiçao inicial
	sll $t7, $t5, 2			# i*4
	addu $t7, $t7, $t6		# elemento i da lista
					# ------ ATUALIZAR i PARA PERCORRER O ARRAY ------
	lw $a0, 0($t7)			# carregar a palavra da memoria para podermos imprimir
	li $v0, print_int10		#
	syscall				# print_int10()
	addu $t5, $t5, 1		# i++
	j w_impr			# }
end_wl:	jr $ra				# termina o programa