	.data
str1:	.asciiz "So para chatear"
str2:	.asciiz "AC1 - P"
	.eqv	print_string, 4    # substitui print_string por 4
				   # (associar um nome a um valor"
	.text
	.globl	main
main:	la $a0, str2		   # instrução virtual, decomposta pelo
		    		   # assembler em 2 instruções nativas
	ori $v0, $0, print_string  # $v0 = 4
	syscall			   # print_string(str2);
	jr $ra
