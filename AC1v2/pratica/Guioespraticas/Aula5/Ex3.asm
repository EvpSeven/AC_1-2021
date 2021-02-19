#MAPA DE REGISTOS
#p = $t0
#lista + size=$t3
#houve_troca=$t4
#i =$t5
#lista= $t6
#lista + i = $t7

	.data
	.eqv print_int10, 1
	.eqv read_int,5
	.eqv print_string, 4
	.eqv FALSE, 0
	.eqv TRUE, 1
	.eqv SIZE, 10
str: 	.asciiz "introuza um valor: \n"
str2: 	.asciiz ";"
	.align 2
lista:	.space 40 	# 4*10
	
	.text
	.globl main
	
main:
	li $t3, SIZE
	sll $t3, $t3, 2		#t3=SIZE*4
	la $t0, lista
	addu $t3, $t3, $t0	#t3=SIZE+lista
	
for:	bge $t0, $t3, do
	la $a0, str		
	li $v0,print_string
	syscall
	li $v0, read_int	#$v0= read_int();
	syscall
	sw $v0, 0($t0)		#lista[p]= $v0
	addi $t0, $t0, 4	#p++
	j for
do:     la $t6,lista
	li $t4, FALSE
	li $t5, 0
	li $t3, SIZE
	subu $t2,$t3 ,1		# t2=size-1
for2:	bge $t5, $t2,endo

if:	sll $t7, $t5, 2
	addu $t7, $t7, $t6
	lw  $t8, 0($t7)
	lw  $t9, 4($t7)
	ble $t8, $t9, endif
	sw  $t8,4($t7)		#t8 = lista[i+1]
	sw  $t9,0($t7)		#t9= lista[i]
	li  $t4, TRUE
endif:  addu $t5, $t5, 1	#i++
	j for2
endo:   beq $t4, TRUE,do
	
	li $t5, 0		##########

impr:	bge $t5, SIZE, end	#o i inicial é 0 
	sll $t2,$t5,2 		# $t2 = i*4		#0*4=0
	addu $t2,$t2, $t6 	# $t2 = &lista[i]
	lw  $t1, 0($t2)		#1º iteraçao : array[0]
	move  $a0, $t1
	li  $v0, print_int10
	syscall
	la $a0, str2
	li $v0, print_string
	syscall
	add $t5,$t5,1		#i++
	j impr
end:    jr $ra

	
	
