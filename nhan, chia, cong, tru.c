#include <stdio.h>
int sum(int a, int b);
int sub(int a, int b);
int mul(int a, int b);
int div(int a, int b);
int main(){
	int num1, num2;
	printf("\nNhap so thu nhat: ");
	scanf("%d", &num1);
	printf("\nNhap so thu hai: ");
	scanf("%d", &num2);
	
	int result1 = sum(num1, num2);
	printf("\nTong la: %d", result1);
	int result2 = sub(num1, num2);
	printf("\nHieu la: %d", result2);
	int result3 = mul(num1, num2);
	printf("\nTich la: %d", result3);
	int result4 = div(num1, num2);
	printf("\nThuong la: %d", result4);
	return 0;
}
int sum(int a, int b){
	printf("\Thuc hien phep tinh cong: \n");
	return (a + b);
}
int sub(int a, int b){
	printf("\nThuc hien phep tinh tru: \n");
	return (a - b);
}
int mul(int a, int b){
	printf("\nThuc hien phep tinh nhan: \n");
	return (a * b);
}
int div(int a, int b){
	printf("\nThuc hien phep tinh chia: \n");
	return (a / b);
}
