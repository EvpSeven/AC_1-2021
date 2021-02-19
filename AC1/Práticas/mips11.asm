.data
.text
.globl main
main: li $6, 0xFFFFFFF0
      li $7, 0x00000003
      div $5,$6,$7
      rem $8,$6,$7
      jr $ra