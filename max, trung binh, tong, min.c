#include <stdio.h>
void main(){
	int arr[5];
	int i, max, sum, min, avg;
	for(i = 0; i < 5; i++){
		printf("\n Enter a num:%d:" ,i+1);
		scanf("%d", &arr[i]);
	}
	max = arr[0];
	for(i = 1; i < 5; i++){
		if(arr[i] > max)
		max = arr[i];
	}
	printf("\n Enter largest number: %d", max);
	min = arr[0];
	for(i = 1;i < 5; i++){
		if(arr[i] < min)
		min = arr[i];
	}
	printf("\n Enter smallest number: %d", min);
	for(i = 0,sum = 0; i < 5; i++)
    	sum += arr[i];
    	printf("\n avg %d", sum);
    for(i = 0, avg = 0; i < 5;  i++)
    	avg = arr[i] + avg;
    printf("\n medium %d", avg/i);
    
    printf("In tat ca phan tu cua mang theo chieu dao nguoc: \n\n");
    for(i = 4; i >= 0; i--)
      printf("\n%d ", arr[i]);
}
