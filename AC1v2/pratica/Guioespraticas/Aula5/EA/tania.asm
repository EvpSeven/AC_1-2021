#Mapa de registos:
#pi : $t2
#pj : $t3
#lista[i] : $t4
#lista[j] : $t5
#pultimo: $t7

	.data
lista:	.space 40
	.eqv SIZE,10
	.eqv read_int,5
	.eqv print_int10,1
	.text
	.globl main
main:	la $t0,lista
	li $t1,SIZE
	sll $t1,$t1,2
	addu $t1,$t1,$t0
	
for1:	bge $t0,$t1,end_for1
	li $v0,read_int
	syscall
	sw $v0,0($t0)
	addu $t0,$t0,4		#p++
	j for1
	
end_for1:	
	la $t2,lista
	li $t7,SIZE
	sll $t7,$t7,2
	addu $t7,$t7,$t2
for_i:	bge $t2,$t7,end_forI
	move $t3,$t2
	
	addi $t3,$t3,1
	
for_j:	bge $t3,SIZE,end_forJ
	lw $t4,0($t2)
	lw $t5,0($t3)
	
if:	ble $t4,$t5,end_if
	sw $t4,0($t3)
	sw $t5,0($t2)
end_if: add $t3,$t3,4		#j++
	j for_j
	
end_forJ: add $t2,$t2,4		#i++
	j for_i
end_forI: 
	li $t5,0
for3:	bge $t5,SIZE,end_for3
	la $t6,lista
	move $t7,$t5
	sll $t7,$t7,2
	addu $t7,$t7,$t6
	lw $a0,0($t7)
	li $v0,print_int10
	syscall
	add $t5,$t5,1
	j for3
end_for3: jr $ra