#include "8080state.h"

void logicFlagsA(State8080 *state);
int parity(int x, int size);
void unimplementedInstruction(State8080* state);
int emulate8080(State8080* state);
State8080* init8080(void);