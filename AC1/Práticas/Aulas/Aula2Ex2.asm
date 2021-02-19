	.data
	.text
	.globl	main
main:	li $t0, 0x000A 	   # instrução virtual (decomposta
			   # em duas instruções nativas)
	sll $t2, $t0, 1    # shift left logical
	srl $t3, $t0, 1    # shift right logical
	sra $t4, $t0, 1    # shift right arithmetic
	xor $t3,$t0, $t3   # código de gray
			   
	or $t1, $0, $t0	   # passar de gray para binário (num = gray)
	
	srl $t5, $t1, 4    # (num >> 4)
	xor $t1, $t1, $t5  # num = num ^ (num >> 4)
	
	srl $t6, $t1, 2    # (num >> 2)
	xor $t1, $t1, $t6  # num = num ^ (num >> 2)
	
	srl $t7, $t1, 1    # (num >> 1)
	xor $t1, $t1, $t7  # num = num ^ (num >> 1)
	
	or $t2, $0, $t1    # bin = num
	
	jr $ra             # fim do programa
	
