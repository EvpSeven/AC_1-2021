#$a0= n	
#$a1=b
#$a3=s*
	.data
	.eqv print_string, 4
	.eqv read_int, 5
	.eqv MAX_STR_SIZE,33
str:	.align 2
	.space MAX_STR_SIZE
	.text
	.globl main
main:	addiu $sp, $sp , -8
	sw $ra, 0($sp)
	sw $s0, 4($sp)		#val
read:	li $v0, read_int
	syscall
	move $s0, $v0		#$s0=val
	
	move $a0, $s0
	li $a1, 2
	la $a2, str
	jal itoa
	move $a0, $v0
	li $v0, print_string
	syscall
	li $a0,'\n'
	li $v0, 11
	syscall
	
	move $a0, $s0
	li $a1, 8
	la $a2, str
	jal itoa
	move $a0, $v0
	li $v0, print_string
	syscall
	
	move $a0, $s0
	li $a1, 16
	la $a2, str
	jal itoa
	move $a0, $v0
	li $v0, print_string
	syscall
	
while1:	bnez $s0, read
	li $v0, 0
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addiu $sp, $sp , 8
	jr $ra



#------------------------------------------

itoa:	addiu $sp, $sp , -24
	sw $ra, 0($sp)
	sw $s0, 4($sp)		#digit
	sw $s1, 8($sp)		#n
	sw $s2, 12($sp)		#b
	sw $s3, 16($sp)		#p
	sw $s4, 20($sp)		#s
	
	
	move $s1, $a0		#n	
	move $s2, $a1		#b	
	move $s3, $a2		#p
	move $s4, $a2 		#s=p=$s4
	
do:	rem $s0, $s1, $s2	#digit= n%b;
	div $s1, $s1, $s2	#n=n/b;
	move $a0, $s0		
	jal toascii 
	sb $v0, 0($s3)		#poe toascii(digit) onde $p esta a apontar
	addiu $s3, $s3, 1	#p++
while:	bgt $s1,0, do		#while(n>0)

	sb $0, 0($s3)		#*p='\0'
	
	move $a0, $s4	
	jal strrev
	move $v0, $s4		#return s;
	
	lw $ra, 0($sp)
	lw $s0, 4($sp)		#digit
	lw $s1, 8($sp)		#n
	lw $s2, 12($sp)		#b
	lw $s3, 16($sp)		#p
	lw $s4, 20($sp)		#s
	addiu $sp, $sp , 24
	jr $ra
#---------------------------------------------------------------------------------
#converte o digito "v" para o respetivo codigo ASCII
#$a0=v
toascii:	addu $a0,$a0,'0'	#v+='0';

if:		ble  $a0, '9', end
		addi $a0,$a0,7		#v+=7; //'A'-'9'-
end:		move $v0, $a0		#return v;
		jr $ra
#--------------------------------------------------------------
			
strrev: subu $sp,$sp,16	#reserva espaço na stack
	sw $ra,0($sp)	#salvaguarda do $ra
	sw $s0,4($sp)	#guarda valores dos registos
	sw $s1,8($sp)	#$s0, $s1, $s2
	sw $s2,12($sp)		
	move $s0, $a0	#registo "callee-saved"
	move $s1, $a0	#p1=str
	move $s2, $a0	#p2=str
whilee: 
	lb $t1, 0($s2)  		#$t1=*p2	
	beq $t1, '\0', endw1		#while(*p2!='\0')
	addu $s2, $s2,1			#p2++;
	j whilee
endw1:	subu $s2, $s2, 1		#p2--
while2: bge $s1, $s2, endw2
	move $a0,$s1	#argumento p1
	move $a1,$s2	#argumento p2
	jal exchange
	addu $s1, $s1, 1	#p1++
	subu $s2, $s2, 1	#p2--
	j while2
endw2:	move $v0,$s0 			# return str
	lw $ra,0($sp)  			# repõe endereço de retorno
	lw $s0,4($sp)  			# repõe o valor dos registos
	lw $s1,8($sp)  			# $s0, $s1 e $s2
	lw $s2,12($sp)  			#
	addiu $sp,$sp,16 		# liberta espaço da stack
	jr $ra 				# termina a sub-rotina

exchange: lb $t0, 0($a0) 		#t0= *c1
	  lb $t1, 0($a1)		#t1= *c2
	  sb $t0, 0($a1)		#*c2= *c1
	  sb $t1, 0($a0) 		#*c1=*c2
          jr $ra	
			
				
					
							
