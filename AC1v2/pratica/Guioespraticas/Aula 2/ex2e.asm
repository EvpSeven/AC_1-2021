	.data
	.text
	.globl main
main:	li $t0, 2
	or $t1, $0, $t0		#num = gray
	
	srl $t4, $t1, 4		#(num>>4);
	xor $t1, $t1, $t4	#num=gray^(num>>4);
	
	srl $t5, $t1, 2		#(num>>4);
	xor $t1, $t1, $t5	#num=gray^(num>>2);
				
	srl $t6, $t1, 1		#(num>>1);
	xor $t1, $t1, $t6 	#num=gray^(num>>1);
	
	or $t2, $t0, $t1	#bin =num;
	jr $ra 			#fim
				