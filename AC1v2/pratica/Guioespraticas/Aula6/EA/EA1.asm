#i= $s0
#array_size=$s1
#insert_value= $s2
#insert_pos= $s3
	.data
	.eqv print_int10,1
	.eqv print_string, 4
	.eqv read_int,5
array: 	.align 2
	.space 50
str1:	.asciiz " size of array : "
str2:	.asciiz "array["
str3:	.asciiz "]: "
str4: 	.asciiz "o valor a inserir: "
str5:	.asciiz "posiçao desejada: "
str6:	.asciiz "\nOriginal array: "
str7:	.asciiz "\nModified array: "
str8:	.asciiz ","
	.text
	.globl main
main:	addiu $sp, $sp,-24
	sw $ra, 0($sp)			#reserva espaço na stack
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	sw $s3, 16($sp)
	sw $s4, 20($sp)
	la $t9, array
	li $v0, print_string		#print("Size of array")
	la $a0, str1
	syscall 	
	
	li $v0, read_int
	syscall
	move $s1, $v0			#$s1= array_size
	li $s0, 0			#i=0
	
ler:	bge $s0, $s1, endl
	move $s4, $s0			#$t7=i
	sll $s4,$s4,2			#$t7=i*4
	addu $s4, $s4, $t9		#$t4=*4+array
	
	
	li $v0, print_string		#print("array[")
	la $a0, str2
	syscall 	
	
	li $v0, print_int10		#print("i")
	move $a0, $s0
	syscall 
	li $v0, print_string		#print("[")
	la $a0, str3
	syscall
	
	li $v0, read_int		#read_int()
	syscall
	sw $v0, 0($s4)			#array[ilista]= read_int()
	
	addiu $s0, $s0, 1		#i++
	j ler
	
endl:	li $v0, print_string		#print(volr a inserir)
	la $a0, str4
	syscall
	li $v0, read_int		#read_int()
	syscall
	move $s2, $v0			#insert_value = $s2=read_int
	
	li $v0, print_string		#print(posiçao desejada)
	la $a0, str5
	syscall
	
	li $v0, read_int		#read_int()
	syscall
	move $s3, $v0			#insert_pos = $s3=read_int
	
	li $v0, print_string		#print(array original)
	la $a0, str6
	syscall
	
	la $a0, array
	move $a1, $s1			#
	jal print_array
	
	la $a0, array
	move $a1, $s2			#insert_value=$s2
	move $a2, $s3			#insert_pos= $s3 
	move $a3, $s1			#array_size=$s1
	jal insert
	
	li $v0, print_string		#print(array original)
	la $a0, str7
	syscall
	
	addiu $a1, $s1, 1		#array_size+1
	la $a0, array
	jal print_array
	li $v0, 0			#return=0;
	
	
	lw $ra, 0($sp)			
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	lw $s3, 16($sp)
	lw $s4, 20($sp)
	addiu $sp, $sp,24	#repoe espaço na stack
	jr $ra
	


#insert
#$t0= *array,
#$t1= value
#$t2= pos
#t3= size
#$t4=i*4+array
#$t5=i
#$t6=pos*4+array
insert:
	
if:	ble $a2, $a3, else		#if(pos>size)
	li $v0 1
	jr $ra
else:	subiu $t5, $a3, 1			#$t2=SIZE-1=i
	
	
troca:	blt $t5, $a2, endt		#for(i>=pos)
	sll $t4,$t5, 2			#i*4
	addu $t4, $t4, $a0		#i*4+array		
	lw $t6, 0($t4)			#$t5=array[i+array]
	sw $t6, 4($t4)			#array[i+array+1]=array[i+array]
	sub $t5, $t5, 1			#i--
	j troca
endt:	sll $t6, $a2,2			#pos*4
	addu $t6, $t6, $a0		#$t6=pos*4+array
	sw $a1, 0($t6)			#array[pos]=value
	li $v0, 0			#return 0
	jr $ra
#---------------------------------------------------------------------------
#$t0= *a
#$t1=n
#$t2=p

print_array:	move $t0, $a0
	     	move $t1, $a1
	     	sll $t1, $t1, 2			#n*4	(como se fosse o size)
		addu $t2, $t0, $t1		#p=a+n
for:		bge $t0, $t2, en		#for(a<p)
		lw $a0, 0($t0)
		li $v0, print_int10		#print_int10(*a)
		syscall
		la $a0, str8			#print_string(",")
		li $v0, print_string	
		syscall
		addiu $t0,$t0, 4		#p++
		j for
en:		jr $ra
#--------------------------------------------------
	
	
	
