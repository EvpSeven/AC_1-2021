
	.data   #info deve ser armazenada numa zona de dados
	
	.text # o que vem a seguir sao instru�oes que devem ser codificadas em codigo maquina
	.globl	main  #
main:	li $t0, 0x12345678	#instru�ao virtual decomposta
				#em 2 instru�oes nativas 
	sll $t2, $t0, 1		#t2 = t0 << 1
	srl  $t3,  $t0, 1	#t3 = t0 << 1
	sra $t4, $t0, 1		# t4= t0 >> 1
	
	jr  $ra 			#fim