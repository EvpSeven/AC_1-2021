	.data
	.text
	.globl main

main:   ori $t0,$0,3      #inicializar x=2
	ori $t1,$0,-8     #inicializar o b como b=-8
	add $t2,$t0,$t0   #colocar no registo $t2 = 2x
	add $t2,$t2,$t1   #colocar no registo $t2 = 2x-8
	jr $ra