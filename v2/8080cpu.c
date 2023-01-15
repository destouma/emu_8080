#include <stdint.h>
#include "8080status.h"
#include "8080cpu.h"

int parity(int x, int size){
	int i;
	int p = 0;
	x = (x & ((1<<size)-1));
	for (i=0; i<size; i++)
	{
		if (x & 0x1) p++;
		x = x >> 1;
	}
	return (0 == (p & 0x1));
}

void unimplementedInstruction(Cpu8080 *state){    
	printf ("Error: Unimplemented instruction\n");
	state->pc--;
	exit(1);
}

void logicFlagsA(Cpu8080 *state){
	state->flags.cy = state->flags.ac = 0;
	state->flags.z = (state->a == 0);
	state->flags.s = (0x80 == (state->a & 0x80));
	state->flags.p = parity(state->a, 8);
}

int emulate8080(Cpu8080* state){
}