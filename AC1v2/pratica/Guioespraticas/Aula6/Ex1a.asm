#o argumento da fun�ao � passado em $a0
#o resultado � devolvido em $v0
# sub-rotina terminal: nao devem seer usados registos $sx
#$t1=len
strlen: li $t1,0
while:  lb $t0,0($a0)
	addiu $a0,$a0,1
	beq   $t0, '\0', endw
	addi $t1, $t1, 1
	j while
endw:   move $v0, $t1
	jr $ra
	
