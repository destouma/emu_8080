#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>

int Emulate8080(unsigned char *codebuffer, int pc){
    int oplength = 1;
    printf("%04x ", pc);
	return oplength;
}

int main (int argc, char**argv){
	FILE *f= fopen(argv[1], "rb");
	if (f==NULL)
	{
		printf("error: %s file not found\n", argv[1]);
		exit(1);
	}
	
	//Get the file size
	fseek(f, 0L, SEEK_END);
	int fsize = ftell(f);
	fseek(f, 0L, SEEK_SET);

	unsigned char *buffer=malloc(fsize);
	fread(buffer, fsize, 1, f);
	fclose(f);

	int pc = 0;
	while (pc < fsize)
	{
		pc += Emulate8080(buffer, pc);
		printf ("\n");
	}
	return 0;
}