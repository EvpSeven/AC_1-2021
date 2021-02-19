#digit= $t1
#rest= $v0
	.data
	.eqv print_int10, 1
str:	.asciiz "2016 e 2020 sao anos bissextos"
	.text
	.globl main
main:	subu $sp, $sp, -4		#guardar espaço na stack
	sw   $ra, 0($sp)		#salvaguarda do ra
	la $a0, str
	jal atoi
	move $a0, $v0
	li $v0, print_int10
	syscall 
	lw   $ra, 0($sp)		#retoma  ra
	addiu $sp, $sp, 4		#repoe espaço na stack
	jr $ra
#-------------------------------------------------------------------
atoi: li $v0, 0

while:lb $t0, 0($a0)
      blt $t0,'0', endw
      bgt $t0, '9', endw
      subu $t1, $t0, '0'		#digit= s+'0'
      addiu $a0, $a0, 1			#s++
      mul $v0, $v0, 10
      addu $v0, $v0, $t1		#res= 10*res+digit
      j while
endw: jr $ra