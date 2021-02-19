	.data
	.eqv shift,4
	.text
	.globl main
	
main:   ori $t0,$0,0x862A5C1B
	sll $t2,$t0,shift
	srl $t3,$t0,shift
	sra $t4,$t0,shift
	jr $ra
