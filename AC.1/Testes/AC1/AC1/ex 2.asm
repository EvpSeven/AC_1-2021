# $t0 – value
# $t1 – bit
# $t2 - i
 .data
str1: .asciiz "Introduza um numero: "
str2: .asciiz "O valor em binário é"
 .eqv print_string,4
 .eqv read_int,
 .eqv print_char,
 .text
 .globl main
main: la $a0,str1
 li $v0,4 # instrução virtual
 syscall # print_string(str1);
 li $v0,5
syscall
ori $t0,$v0,0
la $a0,str2
li $v0,4
syscall
 li $t2,0 # i = 0
for: bge $t2,32,endfor # while(i < 32) {
 andi $t1,$t0,0x80000000 #
 bnez $t1,else # if(bit == 0)
  la $a0,'0'
 li $v0,11 # instrução virtual
 syscall # print_string(str1);# print_char('0');
else:la $a0,'1'
 li $v0,11 # instrução virtual
 syscall # print_char('1');
 addi $t2,$t2,1
 sll $t0,$t0,1
 j for # }
endfor: #
 jr $ra # fim do programa 
