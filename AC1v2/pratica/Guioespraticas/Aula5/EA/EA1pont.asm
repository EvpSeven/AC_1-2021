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
endf:	la $t3,array		#p=array
	li $t5, SIZE
	sll $t5,$t5,2
	addu $t5, $t5, $t3	#$t5=SIZE*4+ARRAY
	
for2:	bge $t3, $t5, end	#for(p=array, p<SIZE*4+ARRAY
	
 	addi $t1, $t0, 1	#j=+1
for3:	bge  $t1, $t5,endf2
	lw   $t6, 0($t0)	#$t6=listai[]
	lw   $t7, 0($t1)	#$t7=lista[j]
if:	ble  $t6,$t7,endf3
	sw   $t7, 0($t0)
	sw   $t6, 0($t1)
endf3:  addi $t1, $t1, 4	#j++
	j for3
endf2:	addi $t0,$t0,4		#i++
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