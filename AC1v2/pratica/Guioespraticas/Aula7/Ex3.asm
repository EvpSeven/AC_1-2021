#dividendo== $a0=$s0
#divisor=$a1=$s1
#dividendo $t0
#dividor	$t1
#bit  $t2
#quociente $t3
#resto $t4
#i  $t5
	.data
	.eqv print_int10, 1
	.text
	.globl main
main:	addi $sp, $sp ,-4
	sw $ra, 0($sp)
	li $a0, 10
	li $a1, 2
	jal divi
	move $a0, $v0
	li $v0, print_int10
	syscall
	lw $ra, 0($sp)
	addi $sp, $sp ,4
	jr $ra
#--------------------------
divi:	
	sll $t1, $a1,16		#diviso=divisor<<16
	andi $t0, $a0, 0xFFFF
	sll $t0, $a0,1		#dividendo= (dividendo & 0xFFFF) <<1;
	li $t5, 0 		#i=0
	
for_div: bge $t5, 16, endf_div
	 li $t2,0		#bit=0
	 
if:	 blt $t0, $t1, endif
	 subu $t0, $t0, $t1	#dividendo =dividendo-divisor
	 li $t2,1		#bit=1
endif:	 sll $t0, $t0, 1	#dividendo<<1
	 or $t0, $t0, $t2	#dividendo= dividendo<<1|bit
	 addi $t5, $t5,1	#i++
	 j for_div
endf_div:  srl $t4, $t0, 1	#dividendo>>1
	   andi $t4, $t4, 0xFFFF0000	#resto= dividendo>>1& 0xFFFF0000
	   andi $t3, $t0,0xFFFF		#quacient= dividendo $ 0xFFFF;
	   or $t6, $t4, $t3		#resto|quociente
	   move $v0, $t6		#return resto|quociente
	   jr $ra
	   



	
	
	