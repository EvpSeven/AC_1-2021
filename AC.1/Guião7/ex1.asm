	.data
str:	.asciiz"2016 e 2020 sao anos bissextos"
	.text
	.globl main2,atoi

main2:
	la $a0,str
	subu $sp,$sp,4
	sw $ra,($sp)
	
	jal atoi
	
	lw $ra,($sp)
	addu $sp,$sp,4
	
	move $a0,$v0
	li $v0,1
	syscall
	
	
jr $ra


# Mapa de registos 
# res:      $v0 
# s:        $a0 
# *s:       $t0 
# digit:    $t1 
# Sub-rotina terminal: não devem ser usados registos $sx 
atoi:	li $v0,0
while:	lb $t0, ($a0)
	blt $t0,'0',end_while
	bgt $t0,'9',end_while
	sub $t1,$t0,'0'
	addiu $a0,$a0,1
	mul $v0,$v0,10
	add $v0,$v0,$t1
	j while	
end_while:
	
	jr $ra
