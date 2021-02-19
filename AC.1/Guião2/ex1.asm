	.data
	.text
	.globl main

main:   ori $t0,$0,11
	ori $t1,$0,110
	and $t2,$t0,$t1
	or  $t3,$t0,$t1
	nor $t4,$t0,$t1
	xor $t5,$t0,$t1
	nor $t6,$t0,$t0   #porta NOT $t0
	nor $t7,$t1,$t1   #porta NOT $t1
	
	jr $ra
