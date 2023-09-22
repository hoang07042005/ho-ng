#include <stdio.h>

int div(int a, int b);
int sum(int c, int d);

int main(){
	int result1 = div(4, 2);
	printf("\nThuong la: %d", result1);
	int result2 = sum(3,4);
	printf("\nTong la: %d", result2);
	int num1, num2;
	printf("\nPlease enter first value: ");
	scanf("%d", num1);
	printf("\nPlease enter second vallue: ");
	scanf("%d", num2);
	return 0;
}

int div(int a, int b){
	printf("\n\n Thuc hien tinh chia: \n");
	printf("so hang a = %d\n", a);
	printf("so hang b = %d\n", b);
	return (a / b);
}

int sum(int c, int d){
	printf("\n\n Thuc hien tinh cong: \n");
	printf("so hang c = %d\n", c);
	printf("so hang d = %d\n", d);
	return c + d;
}
