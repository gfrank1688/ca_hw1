#include <stdio.h>


bool isPerfectSquare(int num){
    int k = 1;
    while( num > 0)
    {
       num  = num - k;
       k = k +  2;
    }
    return num == 0;	
}

int main(void){
	int number1 = 14 , number2 = 16;
	printf("is %d a perfect square number?%d\n",number1,isPerfectSquare(number1));
	printf("is %d a perfect square number?%d\n",number2,isPerfectSquare(number2));
}