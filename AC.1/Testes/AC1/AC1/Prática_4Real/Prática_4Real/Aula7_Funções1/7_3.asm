#Julio
.eqv STR_MAX_SIZE 30			#Lw = palavras/numeros
.eqv BUF_MAX_SIZE 33			#lb =letra
	.data
str:  .asciiz "String too long! \n"
buf:  .space BUF_MAX_SIZE
str1: .asciiz  "Passei aqui "
	.text
	.globl main
main:	
	subiu $sp, $sp, 4
	sw $ra, 0($sp)		#a0 = arg introduzidos
				#a1 = argv
if:
	bne $a0, 1, endif  # i 
	
	lw $a0, 0($a1)
	jal strlen

if1:
	bgt $v0, STR_MAX_SIZE, else

	la $a0, buf
	lw $a1, 0($a1)     #argv[0]
	jal strcpy
	
	la $a0, buf	 #print_buf
	li $v0, 4
	syscall
	
	j endif
	
else:
	la $a0, str	#print_str
	li $v0, 4
	syscall

	li $v0, 1	#return 1
	
	j end

endif:
	li $v0, 1

end:	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra
	
#Função String_Copy
strcpy:
	li $t0, 0 #i = 0
	#a0 = dst
	#a1 = src
do:
	addu $t1, $a0, $t0  #dst
	addu $t2, $a1, $t0  #src
	
	lb $t3, 0($t2) 	#src[i]
	sb $t3, 0($t1)  #dst[i]
	
	addiu $t0, $t0, 1 #i++
	
	bne $t3, '\0', do
	
	move $v0, $a0   #return dst

#função string_length		
strlen:

	li $t0, 0	#leng = 0

while:
	lb $t1, 0($a0)

	
	beq $t1, '\0', endwhile
	addiu $t0, $t0, 1
	addiu $a0, $a0, 1
	
	j while
	
endwhile:
	move $v0, $t0

	jr $ra
	
	

	
