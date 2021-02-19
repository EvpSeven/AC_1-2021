#$t0 - soma
#$t1 - value
#$t2 - i

.data
str1 : .asciiz "Introduza um numero : "
str2 : .asciiz "Valor ignorado \n  "
str3 : .asciiz " A soma dos positivos é : "


.text 
.globl main
main: li $t0,0
li $t2,0
for:bge $t2,5,endfor
la $a0,str1
li $v0,4
syscall
li $v0,5
syscall
ori $t1,$v0,0
if:
ble $t1,0,else
add $t0,$t0,$t1
else:
la $a0,str2
li $v0,4
syscall
addi $t2,$t2,1 
j for
endfor:la $a0,str3
li $v0,4 #load immediate, value 4 to $v0
syscall
or $a0,$0,$t0
li $v0,1
syscall

jr $ra
