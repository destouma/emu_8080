#include <stdint.h>

#define MEMORY_SIZE 0x10000

typedef struct StatusRegister {    
    uint8_t    s:1;                     // sign
    uint8_t    z:1;                     // zero
    uint8_t    pad1:1;                  // unused  
    uint8_t    ac:1;                    // auxiliary carry  
    uint8_t    pad2:1;                  // unused  
    uint8_t    p:1;                     // parity
    uint8_t    pad3:1;                  // unused  
    uint8_t    cy:1;                    // carry 
} StatusRegister ;

typedef struct State8080 {    
    uint8_t    a;                       // accumulator
    struct     StatusRegister  flags;   // Status register flags 
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
} State8080;

// Dissasembler
int displayPcOpCodeParamHex1(int pc, unsigned char opcode);
int displayPcOpCodeParamHex2(int pc, unsigned char opcode, unsigned char param1);
int displayPcOpCodeParamHex3(int pc, unsigned char opcode, unsigned char param1, unsigned char param2);
int disassemble8080(unsigned char *codebuffer, int pc);

// Emulator
void logicFlagsA(State8080 *state);
int parity(int x, int size);
void unimplementedInstruction(State8080* state);
int emulate8080(State8080* state);
State8080* init8080(void);
void readFileIntoMemoryAt(State8080* state, char* filename, uint32_t offset);