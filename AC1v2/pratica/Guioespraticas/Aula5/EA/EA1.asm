#Mapa de registos
#$t0 =i
#$t1=j
#$t3=p
	.data
	.eqv SIZE, 10
	.eqv print_int10, 1
	.eqv read_int,5
	.eqv print_string, 4
str: 	.asciiz "introuza um valor: \n"
str2: 	.asciiz ";"
array:	.align 2
	.space 40
	.text
	.globl main
main: 	li $t2, SIZE
	sll $t2, $t2, 2		#t2=SIZE*4
	la $t3, array
	addu $t2, $t2,$t3	#t2=SIZE*4+array
for:	bge $t3, $t2, endf
	li $v0, read_int
	syscall
	sw $v0,0($t3)		#array[p]=read_int
	addi $t3, $t3, 4	#p++
	j for
endf:	li $t5, SIZE
	subu $t5, $t5, 1
	li $t0,0
for2:	bge $t0, $t5, end
 	addi $t1, $t0, 1	#j=i+1
for3:	bge  $t1, SIZE,endf2
	la $t4, array	
	sll $t8, $t0, 2		#i*4
	addu $t8, $t8,$t4	#$t8 =i*4+lista
	sll $t9, $t1, 2		#j*4
	addu $t9,$t9,$t4	#j*4+lista
	lw   $t6, 0($t8)	#$t6=[listai*4+lista]
	lw   $t7, 0($t9)	#$t7=[listaj*4+lista]
if:	ble  $t6,$t7,endf3
	sw   $t7, 0($t8)
	sw   $t6, 0($t9)
endf3:  addi $t1, $t1, 1	#i++
	j for3
endf2:	addi $t0,$t0,1		#j++
	j for2
end:	la $t0,0		#i=0
imp:  	bge $t0, SIZE, eimp
	sll $t3, $t0, 2		#i*4
	addu $t8, $t3,$t4	#$t8 =i*4+lista
	lw  $t6, 0($t8)
	move $a0, $t6
	li $v0, print_int10
	syscall
	la $a0, str2
	li $v0, print_string
	syscall
	addi $t0, $t0, 1
	j imp
eimp:   jr $ra