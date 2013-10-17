#include <stdio.h>

int main(int argc, char **argv)
{
	int count = 0;

	putchar('\n');
	printf("+----+-----+-----+-----+ FFFFFFFF\n");
	printf("+----+-----+-----+-----+\n");
	printf("+----+-----+-----+-----+");

	char **curr = argv;
	while(*argv)
	{
		char *curr;
		curr = *argv;

		while(*curr)
		{

			if(count % 4 == 0 && count != 0)
			{
				printf(" %p", curr);
			}

			if(count % 4 == 0)
			{	
				putchar('\n');
				printf("+----+-----+-----+-----+");
				putchar('\n');
			}		

			printf("  %c  |", *curr);

			curr++;
			count++;
		}
		argv++;
	}
	
	putchar('\n');
	
	printf("+----+-----+-----+-----+\n");
	printf("+----+-----+-----+-----+\n");
	printf("+----+-----+-----+-----+\n");

	while(*curr)
	{
		printf("+----+-----+-----+-----+\n");
		printf("|      %p      | %p\n", *curr, &curr);
		curr++;
	}

	printf("+----+-----+-----+-----+\n");
	printf("+----+-----+-----+-----+\n");
	printf("+----+-----+-----+-----+ 00000000\n");

	return 0;
}
