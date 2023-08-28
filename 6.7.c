#include <stdio.h>
void main()
{
	int a;
	float d;
	char ch, name[40];
	printf("Please enter the data\n");
	sacnf("%d %f %c %s", &a, &d, &ch, name);
	printf("\nThe values accepted are: %d, %f, %c, %s", a, d, ch, name);
}
