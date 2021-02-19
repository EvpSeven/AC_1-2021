# Mapa de registos
# houvetroca:	$t0
# aux:		$t1
# *p:		$t2
# pultimo:	$t3
# SIZE		$t4
.data
	.eqv SIZE,10
	.eqv read_int,5
	.eqv print_int10,1
	.eqv print_char,11
	.eqv FALSE, 0
	.eqv TRUE,1
array:	.align 2
	.space 40 			# reserva espaço para 10 numeros inteiros
	.text				#
	.globl main			#
main: 	la $t2, array			#p=array
	li $t4, SIZE			#
	sll $t6, $t4, 2			#(SIZE)*4
	addu $t6, $t6,$t2		#$t6= Array+SIze
	subu $t4, $t4, 1		#SIZE-1
	sll $t4, $t4, 2			#(SIZE-1)*4
	addu $t3, $t2, $t4		#pultimo=lista+(SIZE-1)*4
ler: 	bgeu $t2, $t6,endler		# while(pi < pultimo){
	li $v0, read_int		# read_int()
	syscall				
	sw $v0, 0($t2)			# guardar a palavra lida
	addi $t2, $t2, 4		# p++
	j ler	
endler: 	
do:	li $t0,FALSE			#houvetroca=FAlSE
	la $t2, array			#p=array
for:	bge $t2, $t3,enddo		#for(p=lista, p< pultimo,p++)
	lw  $t5, 0($t2)			#$t5=*p
	lw  $t9, 4($t2)			#$t9=*p+1
	
if:	ble $t5,$t9,endfor			#if(*p>*(p+1))
	sw  $t5, 4($t2)			#*(p+1)=*p
	sw  $t9, 0($t2)			#*p=*(p+1)
	li $t0, TRUE			#houvertroca=TRUE
	
endfor: addi $t2, $t2,4			#p++
	j for
	
enddo: 	beq $t0, TRUE, do		#while(houvertroca==TRUE)
	la $t2, array	
	
imp:	bge $t2, $t6,endimp		# while(pi < SIZE+ARRAY){
	lw $a0, 0($t2)			# buscar a palavra 
	li $v0, print_int10		# print_int10()
	syscall	
	addi $t2, $t2, 4		# p++
	la $a0, ';'			# 
	li $v0, print_char		# print_int10()
	syscall	
	j imp	
endimp: jr $ra				#fim