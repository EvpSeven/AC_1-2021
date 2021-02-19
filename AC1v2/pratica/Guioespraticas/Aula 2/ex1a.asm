

	.data   #info deve ser armazenada numa zona de dados
	
	.text # o que vem a seguir sao instruçoes que devem ser codificadas em codigo maquina
	.globl	main  #
main:	ori $t0, $0, 0x1234	#subst val1 e val2 por 
	ori $t1, $0, 0xF0F0	#valores de entrada desejados
	
	and $t2, $t0, $t1	#$t5 = $t0 ^ $t1 
	or  $t3,  $t0, $t1	#$t5 = $t0 | $t1 
	nor $t4, $t0, $t1	#$t5 = $t0 ~ $t1 
	xor $t5, $t0, $t1	#$t5 = $t0 ^ $t1 
	jr  $ra 			#fim