#Mapa de registos
#t0= res
#t1= i
#t2=mdor
#t3= mdo
	.data
str1:	.asciiz "Introdua 2 numeros"
str2:	.asciiz "resultado"
	.eqv print_int10, 1
	.eqv print_string, 4
	.eqv read_int, 5
	.text
	.globl main
main: 	li $v0, print_string
	la $a0, str1
	syscall
	li $v0, read_int
	syscall
	move $t4, $v0
	andi $t2, $t4, 0x0F
	li $v0, read_int
	syscall
	move $t5, $v0
	andi $t3, $t5, 0x0F
	li   $t1, 0
	li   $t0, 0
while:  beq $t2,0, endw
	bge $t1, 4,endw
	addi $t1, $t1, 1
if:	andi $t5, $t2, 0x00000001
	beq  $t5, 0, endif
	addu $t0, $t0, $t3
endif:	sll $t3,$t3,1
	srl $t2,$t2,1
	j while
endw:	li $v0, print_string
	la $a0, str2
	syscall
	li $v0, print_int10
	move $a0, $t0
	syscall
	jr $ra