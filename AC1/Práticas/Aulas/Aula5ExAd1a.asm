# Mapa de registos
# i:		$t0
# lista[i]:	$t1
# j:		$t2
# lista[j]:	$t3
# SIZE:		$t4
# SIZE-1:	$t5
# lista:	$t6
# lista+i*4:	$t7 -> calculo do endereço i do array
# lista+j*4	$t8 -> calculo do endereço j do array
#
	.data
	.eqv SIZE,10
	.eqv read_int,5
	.eqv print_int10,1
lista:	.align 2
	.space 40 			# reserva espaço para 10 numeros inteiros
	.text				#
	.globl main			#
					#
main:	li $t0,0			# i = 0
	li $t4,SIZE			# $t4 = SIZE
	subi $t5,$t4,1			# $t5 = SIZE-1
	la $t6,lista			# $t6 = lista
					#
while_l:				#
	bge $t0,$t4,endw_l		# while(i < SIZE){
	sll $t7,$t0,2			# $t7 = i*4
	addu $t7,$t7,$t6		# $t7 = i*4 + lista
	li $v0,read_int			#
	syscall				# read_int()
	sw $v0,0($t7)			# guardar a palavra lida
	addiu $t0,$t0,1			# i++
	j while_l			# }
					#
endw_l:					#
	li $t0,0			# i = 0
	li $t2,0			# j = 0
					#
for1:	bge $t0,$t5,end_for1		# while(i<SIZE-1) {
	addi $t2,$t0,1			# j = i + 1
					#
for2:	bge $t2,$t4,end_for2		# while(j<SIZE) {
	sll $t7,$t0,2			# $t7 = i*4
	addu $t7,$t7,$t6		# $t7 = i*4 + lista
	sll $t8,$t2,2			# $t8 = j*4
	addu $t8,$t8,$t6		# $t8 = j*4 + lista
	lw $t1,0($t7)			# $t1 = lista[i]
	lw $t3,0($t8)			# $t3 = lista[j]
					#
if:	ble $t1,$t3,end_if		# if(lista[i]>lista[j]) {
	sw $t1,0($t8)			# lista[i]=lista[j]
	sw $t3,0($t7)			# lista[j]=lista[i]
					#
end_if:					# }
	addiu $t2,$t2,1			# j++
	j for2				#
					#
end_for2:				# }
	addiu $t0,$t0,1			# i++
	j for1				# 
					#
end_for1:				# }
	li $t0,0			# i = 0	
while_i:				#
	bge $t0,$t4,endw_i		# while(i < SIZE) {
	sll $t7,$t0,2			# $t7 = i*4
	addu $t7,$t7,$t6		# $t7 = i*4 + lista
	lw $a0,0($t7)			# carrega em $a0 a palavra para imprimir
	li $v0,print_int10		#
	syscall				# print_int10()
	addiu $t0,$t0,1			# i++
	j while_i			#
					#
endw_i:					# }
	jr $ra				# termina o programa