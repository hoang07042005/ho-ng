#include <stdio.h>
void main(){
	int num , res;
	printf("Enter a number :");
	scanf("%d", &num);
	res = num % 2;
	if (res == 0)
	   printf("Then number is Even");
	else
	printf("Tthe number is odd");
}
