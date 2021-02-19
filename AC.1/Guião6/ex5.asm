	.data
virgula:.asciiz", "
	.align 2
array:	.space 200
str:	.asciiz"Size of array: "
str1:	.asciiz"array["
str2:   .asciiz"] = "
br:	.asciiz"\n"
str3:	.asciiz"Enter the value to be inserted: "
str4:	.asciiz"Enter the position: "
str5:	.asciiz"\nOriginal array: "
str6:	.asciiz"\nModified array: "
	.text
	.globl main
	
main:

	la $a0,str
	li $v0,4
	syscall
	
	li $v0,5
	syscall
	
	li $t0,0
	move $t1,$v0
	la $t3,array
for3:	bge $t0,$t1,end_for3
	
	la $a0,str1
	li $v0,4
	syscall
	
	move $a0,$t0
	li $v0,1
	syscall
	
	la $a0,str2
	li $v0,4
	syscall
	
	li $v0,5
	syscall
	
	sll $t4,$t0,2
	addu $t4,$t4,$t3
	sw $v0,($t4)	

	addu $t0,$t0,1
	j for3
end_for3:
	
	la $a0,str3
	li $v0,4
	syscall
	
	li $v0,5
	syscall
	
	move $s0,$v0
	
	la $a0,str4
	li $v0,4
	syscall
	
	li $v0,5
	syscall
	
	move $s1,$v0
	
	la $a0,str5
	li $v0,4
	syscall
	
	subu $sp,$sp,4
	sw $ra,($sp)
	
	move $a0,$t3
	move $a1,$t1
	jal print_array
	
	move $a0,$t3
	move $a1,$s0
	move $a2,$s1
	move $a3,$t1
	jal insert
	
	la $a0,str6
	li $v0,4
	syscall
	
	move $a0,$t3
	addi $a1,$t1,1
	jal print_array
	
	lw $ra,($sp)
	addu $sp,$sp,4
	
	li $v0,0
	
jr $ra

#################################################################################################################################

insert:
	subu $sp,$sp,12
	sw $t0,($sp)
	sw $t1,4($sp)
	sw $t2,8($sp)
	
	li $t0,0
	
	subu $sp,$sp,16
	sw $a0,($sp)
	sw $a1,4($sp)
	sw $a2,8($sp)
	sw $a3,12($sp)
	
if:	ble $a2,$a3,else
	
	li $v0,1
	
	j end_if
else:	
	sll $a3,$a3,2
	subi $t0,$a3,4
	for1:	blt $t0,$a2,end_for1
		
		
		addu $t1,$a0,$t0
		lw $t2,($t1)
		addu $t1,$t1,4
		sw $t2,($t1)
		subu $t1,$t1,4
		
		subi $t0,$t0,4
		j for1
	end_for1:
	sll $a2,$a2,2
	addu $a2,$a2,$a0
	sw $a1,($a2)
	li $v0,0

end_if:
	lw $a0,($sp)
	lw $a1,4($sp)
	lw $a2,8($sp)
	lw $a3,12($sp)
	addu $sp,$sp,16
	
	lw $t0,($sp)
	lw $t1,4($sp)
	lw $t2,8($sp)
	addu $sp,$sp,12
	
jr $ra

#################################################################################################################################

print_array:

	subu $sp,$sp,8
	sw $t0,($sp)
	sw $t1,4($sp)
	subu $sp,$sp,8
	sw $a0,($sp)
	sw $a1,4($sp)
	
	sll $a1,$a1,2
	addu $t0,$a0,$a1
	
	move $t1,$a0
for2:	bge $t1,$t0,end_for2
	
	lw $a0,($t1)
	li $v0,1
	syscall
	
	la $a0,virgula
	li $v0,4
	syscall
	
	
	addi $t1,$t1,4
	j for2
end_for2:
	
	lw $a0,($sp)
	lw $a1,($sp)
	addu $sp,$sp,8
	
	lw $t0,($sp)
	lw $t1,4($sp)
	addu $sp,$sp,8
jr $ra
	
	