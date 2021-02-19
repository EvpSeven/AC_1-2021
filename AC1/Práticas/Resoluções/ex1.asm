# MAPA DE REGISTOS
# $s0 - i
# $s1 - array_size
# $s2 - insert_value
# $s3 - insert_pos
# $s4 - array

.eqv print_string, 4
.eqv print_int10, 1
.eqv read_int, 5

.data
str1:	.asciiz ", "
str2:	.asciiz "Size of array: "
str3:	.asciiz "Enter the value to be inserted: "
str4:	.asciiz "Enter the position: "
str5:	.asciiz "\nOriginal array: "
str6:	.asciiz "\nModified array: "
str7:	.asciiz "array["
str8:	.asciiz "] = "
.align 2
array:	.space	200
.text
.globl main
main:	addiu	$sp, $sp, -4
	sw	$ra, ($sp)
	li	$v0, print_string
	la	$a0, str2
	syscall
	li	$v0, read_int
	syscall
	move	$s1, $v0
	li	$s0, 0
	la	$s4, array
for:
	bge	$s0, $s1, endfor
	
	li	$v0, print_string
	la	$a0, str7
	syscall
	li	$v0, print_int10
	move	$a0, $s0
	syscall
	li	$v0, print_string
	la	$a0, str8
	syscall
	li	$v0, read_int
	syscall
	sll	$s5, $s0, 2
	addu	$s5, $s5, $s4
	sw	$v0, ($s5)
	
	addi	$s0, $s0, 1
	j for
	
endfor:
	li	$v0, print_string
	la	$a0, str3
	syscall
	li	$v0, read_int
	syscall
	move	$s2, $v0
	
	li	$v0, print_string
	la	$a0, str4
	syscall
	li	$v0, read_int
	syscall
	move	$s3, $v0
	
	li	$v0, print_string
	la	$a0, str5
	syscall
	
	la	$a0, array
	move	$a1, $s1
	jal	print_array
	
	la	$a0, array
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s1
	jal	insert
	
	li	$v0, print_string
	la	$a0, str6
	syscall
	
	la	$a0, array
	addi	$a1, $s1, 1
	jal	print_array
	
	li	$v0, 0
	lw	$ra, ($sp)
	addiu	$sp, $sp, 4
	jr	$ra
	
	

	


#--------------------------------------------------------
#insert()
# $t0 - i
# $t2 - array+i

insert:
	addi	$t0, $a3, -1
in_for:
	blt	$t0, $a2, in_endfor
	sll	$t2, $t0, 2
	add	$t2, $t2, $a0
	lw	$t1, ($t2)
	sw	$t1, 4($t2)
	addiu	$t0, $t0, -1
	j	in_for
in_endfor:
	sll	$t3, $a2, 2
	addu	$t2, $a0, $t3
	sw	$a1, ($t2)
	li	$v0, 0
	jr	$ra
	
#--------------------------------------------------------


print_array:
	move	$t1, $a0
	sll	$t2, $a1, 2
	addu	$t0, $t1, $t2
pr_for:
	bge	$t1, $t0, pr_endfor
	li	$v0, print_int10
	lw	$a0, ($t1)
	syscall
	li	$v0, print_string
	la	$a0, str1
	syscall
	addiu	$t1, $t1, 4
	j 	pr_for
pr_endfor:
	jr	$ra
	
#--------------------------------------------------------

	
