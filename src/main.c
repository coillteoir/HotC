#include <time.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <sys/stat.h>

int main(int argc, char **argv)
{
	time_t currTime = 0;

	char command[50] = "sh hot.sh ";
	strncat(command, argv[1], sizeof(command));
	puts(command);
	while(1)
	{
		struct stat tmp;
		int status;
		
		status = stat(argv[1], &tmp);
		if (currTime < tmp.st_mtime)
		{
			currTime = tmp.st_mtime;
			system(command);
		}
		sleep(1);
	}
	return 0;
}
