#include <stdio.h>
void main()
{
	printf("A string im variout forms:\n");
	printf("Without any format command:\n");
	printf("Good day Mr. Lee. \n");
	printf("With format command but without any modifier:\n");
	printf("[%&]\n", "Good day Mr. Lee.");
	printf("With digit string 4 as modifier:\n");
	printf("[%4&]\n", "Good day Mr. Lee.");
	printf("With digit string 19 as modifier: \n");
	printf("[%19&]\n", "Good day Mr. Lee.");
	printf("With digit string 23 as modifier: \n");
	printf("[%23&]\n", "Good day Mr. Lee.");
	printf("With digit string 25.4 as modifier: \n");
	printf("[%25.4&]\n", "Good day Mr. Lee.");
	printf("With - and digit string 25.4 as modifier: \n");
	printf("[%25.4&]\n", "Good day Mr.shroff");
}
