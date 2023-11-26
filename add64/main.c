#include <stdio.h>

long long add_64(wchar_t* number1, wchar_t* number2);
int buffer = 21;

int main()
{
	wchar_t number1[21], number2[21];
	fgetws(&number1, buffer, stdin);
	fgetws(&number2, buffer, stdin);
	long long result = add_64(number1, number2);
	printf("%I64d", result);
}