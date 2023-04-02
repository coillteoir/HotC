#include <stdio.h>

int main()
{
	int x = 0;
	for(int j = 0; j < x; j++)
	{
		for(int i = 0; i < 20; i++)
		{
			printf("%c",33 +  i + j);
		}
		printf("\n");
	}
	return 0;
}
