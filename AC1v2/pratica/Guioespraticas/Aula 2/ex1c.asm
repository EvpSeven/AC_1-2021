
	.data   #info deve ser armazenada numa zona de dados
	
	.text # o que vem a seguir sao instruçoes que devem ser codificadas em codigo maquina
	.globl	main  #
main:	ori $t0, $0, 0xE543	#subst val1 e val2 por 

	nor $t1,$0, $t0	#$t1 = $t0 ~ $t1 
	
	jr  $ra 			#fim