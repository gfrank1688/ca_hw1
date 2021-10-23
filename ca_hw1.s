.data
str1:   .string "\n is a perfect square number(Yes = 1/No = 0) " 
num1: .word 16
num2: .word 14

.text 
main:
   lw a0,num1
   jal ra,isPerfectSquare
   la a0,str1
   li a7,4
   ecall
   mv a0,a1
   li a7,1
   ecall  

   lw a0,num2
   jal ra,isPerfectSquare 
   la a0,str1
   li a7,4
   ecall
   mv a0,a1
   li a7,1
   ecall
   li a7,10
   ecall
	
isPerfectSquare:
   addi t0,zero,1
   #add  t2,a0,zero
   mv t2, a0 
   loop: slti t1,t2,1
   bne  t1,zero,exit
   sub  t2,t2,t0
   addi t0,t0,2
   j    loop
exit:
   bne t2,zero,else
   addi a1,zero,1
   ret
else:
   addi a1,zero,0
   ret