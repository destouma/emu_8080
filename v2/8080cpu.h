#include <stdint.h>
#include "8080status.h"

typedef struct Cpu8080 {    
    uint8_t    a;                       // accumulator
    struct     Status8080  flags;   // Status register flags 
    uint8_t    b;                       // BC
    uint8_t    c;                       // BC
    uint8_t    d;                       // DE
    uint8_t    e;                       // DE
    uint8_t    h;                       // HL
    uint8_t    l;                       // HL
    uint16_t   sp;                      // stack pointer   
    uint16_t   pc;                      // program counter 
    uint8_t    *memory;                 // memory
    uint8_t    int_enable;              // enable interrupt
} Cpu8080;

void cpuInit(Cpu8080 *cpu);
void logicFlagsA(Cpu8080 *cpu);
int parity(int x, int size);
void unimplementedInstruction(Cpu8080 *cpu);
int cpuExecute(Cpu8080 *cpu);