	.data
	str1:.asciiz"So para chatear \n"
	str2:.asciiz"AC1 - aulas praticas"
	.eqv print_string,4
	.text
	.globl main

main:   la $a0,str1
	ori $v0,$0,print_string
	syscall
	la $a0,str2
	syscall
	jr $ra