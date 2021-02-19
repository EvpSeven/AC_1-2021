	.data
	.text
	.globl main

main:   ori $v0,$0,5
	syscall    #chamada ao syscall "read_int()"
	or $t0,$0,$v0 #$t0 = $v0 = valor lido do teclado (valor pretendido)
	
	ori $t1,$0,8
	add $t2,$t0,$t0
	sub $t2,$t2,$t1
	ori $v0,$0,1
	or $a0,$0,$t2
	syscall
	
	jr $ra
