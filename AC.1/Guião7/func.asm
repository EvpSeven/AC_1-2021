	.data
char1:	.space 1
	.text
	.globl strrev,toascii,itoa,exchange

#################################################################################################################################
strrev:	subu $sp,$sp,16
	sw   $ra, ($sp)
	sw   $s0,4($sp)
	sw   $s1,8($sp)
	sw   $s2,12($sp)
	
	move $s0,$a0
	move $s1,$a0
	move $s2,$a0
	lb $s3,($s2)
while1:	beq $s3,'\0',end_while1
	addi $s2,$s2,1
	lb $s3,($s2)	
	
	j while1
end_while1:	
	subi $s2,$s2,1
	
while2:	
	bge $s1,$s2,end_while2
	
	move $a0,$s1
	move $a1,$s2
	jal exchange
	addu $s1,$s1,1
	subu $s2,$s2,1
	
	j while2
	
end_while2:

	move $v0,$s0
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	
	addu $sp,$sp,16
	
	jr $ra

#################################################################################################################################
	
exchange:

	subu $sp,$sp,16
	sw   $t0,($sp)
	sw   $t1,4($sp)	
	sw   $t2,8($sp)
	sw   $t3,12($sp)
	
	lb $t0, ($a0)
	lb $t1, ($a1)
	
	move $t3,$t0
	move $t0,$t1
	move $t1,$t3
	
	sb $t0,($a0)
	sb $t1,($a1)	
	
	lw   $t0,($sp)
	lw   $t1,4($sp)	
	lw   $t2,8($sp)
	lw   $t3,12($sp)
	addu $sp,$sp,16	
	
	jr $ra
#################################################################################################################################
strlen: li $t1,0

while3:	lb $t0, ($a0)
	addiu $a0,$a0,1
	beq $t0,'\0',end_while3
	addi $t1,$t1,1
	j while3

end_while3:	
	move $v0,$t1
	jr $ra
		
#################################################################################################################################

toascii:
		
	addi $a0,$a0,'0'

if1:	ble $a0,'9',end_if1
	addi $a0,$a0,'7'
end_if1:
	move $v0,$a0
	
	jr $ra

#################################################################################################################################

itoa:
	subu $sp,$sp,20
	sw   $t0,($sp)
	sw   $t1,4($sp)	
	sw   $t2,8($sp)
	sw   $t3,12($sp)
	sw   $t4,16($sp)
	
	move $t2,$a2
	move $t1,$a1
	move $t0,$a0
	la $t3,char1
do1:	
	rem $t4,$t0,$t1
	sb $t4,($t3)
	
	div $t0,$t0,$t1
	
	subu $sp,$sp,4
	sw $ra,($sp)
	
	move $a0,$t4
	jal toascii
	
	
	
	sb $v0,($t2)
	addu $t2,$t2,1


end_do1: bgtz $t0,do1
	la $t5,'\0'
	sb $t5,($t2)
	
	move $a0,$a2
	
	jal strrev
	
	lw $ra,($sp)
	addu $sp,$sp,4	
	
	move $v0,$a2
	
	lw   $t0,($sp)
	lw   $t1,4($sp)	
	lw   $t2,8($sp)
	lw   $t3,12($sp)
	lw   $t4,16($sp)
	addu $sp,$sp,20	
	
jr $ra

#################################################################################################################################