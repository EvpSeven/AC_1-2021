	.data
	
buf:	.space 11
str:	.asciiz "String too long: \n"
	.text
	.globl main
main:
	subu $sp,$sp,8
	sw $ra,0($sp)
	sw $s0,4($sp)

	move $s0,$a1

if:	
	bne $a0,1,endIf
	
if1:	
	lw $a0,0($s0)
	jal strlen
	
	bgt $v0,10,else	# if(strlen(argv[0]) <= STR_MAX_SIZE)

	la $a0,buf	# envia 1 argumento = buf;
	lw $a1,0($s0)	# envia 2 argumento = argv[0];
	jal strcpy
	
	move $a0,$v0
	li $v0,4
	syscall
	
	j endIf
else:
	la $a0,str	# print_str("String too long. Nothing done!\n");
	li $v0,4
	syscall
	
	li $v0,1	# return 1
	
endIf:	
	li $v0,0	# return 0

	lw $ra,0($sp)
	lw $s0,4($sp)
	addu $sp,$sp,8
	
	jr $ra
	

strcpy:	
	li $t2,0		# i=0;
	
do:	
	addu $t0,$a0,$t2	# $t0=&dst[i];
	addu $t1,$a1,$t2	# $t1=&src[i];
		
	lb $t5,0($t1)		# $t5=src[i]
	sb $t5,0($t0)

	
	addi $t2,$t2,1			
	bne $t5,'\0',do		# while(src[i++] != '\0');
	
	move $v0,$a0
	
	jr $ra
	
strlen:	
	subu $sp,$sp,4
	sw $ra,0($sp)
	
	li $t0,0		# int len=0;
	
while:	lb $t1,0($a0)		# $t1=*s;
	addi $a0,$a0,1		# s++;
	beq $t1,'\0',endW	# while(*s++ != '\0');
	addi $t0,$t0,1		# len++;
	j while
	
endW:	move $v0,$t0		# return len;
	
	lw $ra,0($sp)
	addu $sp,$sp,4
	
	jr $ra
	
	
	
	
	
	
