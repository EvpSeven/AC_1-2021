.data
.text

.globl main 

main:  ori $t0,$0,3     # variavel x
       ori $t1,$0,8     # constante 8
       add $t2,$t0,$t0  # 2*x
       add $t2,$t2,$t1  # 2*x+8
       
jr $ra
