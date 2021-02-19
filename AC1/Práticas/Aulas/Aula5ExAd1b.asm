# Mapa de registos
# pi:		$t0
# *pi:		$t1
# pj:		$t2
# *pj:		$t3
# SIZE:		$t4
# pultimo:	$t6
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
main:	li $t4,SIZE			# $t4 = SIZE
	la $t0,lista			# $t0 = lista
	li $t6,SIZE			# $t6 = SIZE
	sll $t6,$t6,2			# $t6 = SIZE*4
	add $t6,$t6,$t0			# pultimo = SIZE*4 + lista
					#
while_l:				#
	bge $t0,$t6,endw_l		# while(pi < pultimo){
	li $v0,read_int			#
	syscall				# read_int()
	sw $v0,0($t0)			# guardar a palavra lida
	addiu $t0,$t0,4			# pi++
	j while_l			# }
					#
endw_l:					#
	la $t0,lista			# pi = lista
					#
for1:	bge $t0,$t6,end_for1		# while(pi<pultimo) {
	addi $t2,$t0,4			# pj = pi + 4
					#
for2:	bge $t2,$t6,end_for2		# while(pj<pultimo) {
	lw $t1,0($t0)			# $t1 = *pi
	lw $t3,0($t2)			# $t3 = *pj
					#
if:	ble $t1,$t3,end_if		# if(*pi>*pj) {
	sw $t1,0($t2)			# *pi=*pj
	sw $t3,0($t0)			# *pj=*pi
					#
end_if:					# }
	addiu $t2,$t2,4			# j++
	j for2				#
					#
end_for2:				# }
	addiu $t0,$t0,4			# i++
	j for1				# 
					#
end_for1:				# }
	la $t0,lista			# pi = lista
while_i:				#
	bge $t0,$t6,endw_i		# while(pi < pultimo) {
	lw $a0,0($t0)			# carrega em $a0 a palavra para imprimir
	li $v0,print_int10		#
	syscall				# print_int10()
	addiu $t0,$t0,4			# pi++
	j while_i			#
					#
endw_i:					# }
	jr $ra				# termina o programa