	.data
	
	.text
	.globl main
main:   ori $v0, $0, 5    # chamada do intruçao read_int (nº 5)
	syscall
	or  $t0, $0, $v0  #$t0 =  $vo ( valor lido do teclado (x))
	
	ori $t2, $0, 8 # $t2 = 8
	add $t1, $t0, $t0 # $t1 = $t0 + $t0 = x + x = 2 * x
	sub $t1, $t1, $t2 # $t1 = $t1 - $t2 = y = 2 * x - 8
	
	or  $a0, $0, $t1 # copia o registo $t5 para o registo $a0 ($a0 = y)
	ori $v0, $0, 1  # chamada da instuçao print_int10()
	syscall
	
	jr  $ra		#fim do programa
	