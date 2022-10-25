#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>


int displayPcOpCodeParamHex1(int pc, unsigned char opcode){
    printf("%04x %02x           ",pc,opcode);
    return 1;
}

int displayPcOpCodeParamHex2(int pc, unsigned char opcode, unsigned char param1){
    printf("%04x %02x %02x        ",pc,opcode, param1);
    return 2;
}

int displayPcOpCodeParamHex3(int pc, unsigned char opcode, unsigned char param1, unsigned char param2){
    printf("%04x %02x %02x %02x     ",pc,opcode, param1,param2);
    return 3;
}

int Disassemble8080(unsigned char *codebuffer, int pc){
    unsigned char *code = &codebuffer[pc]; 
    int oplength = 1;
    switch(*code){
        case 0x00: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0x01: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LXI     B,#$%02x%02x",code[2],code[1]); break;
        case 0x02: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("STAX    B");break;
        case 0x03: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INX     B");break;
        case 0x04: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR     B");break;
        case 0x05: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR     B");break;
        case 0x06: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI     B,#$%02x",code[1]); break;
        case 0x07: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RLC");break;
        case 0x08: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0x09: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DAD     B");break;
        case 0x0a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("LDAX    B");break;
        case 0x0b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCX     B");break;
        case 0x0c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR     C");break;
        case 0x0d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR     C");break;
        case 0x0e: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI     C,#$%02x",code[1]); break;
        case 0x0f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RRC");break;
        case 0x10: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0x11: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LXI     D,#$%02x%02x",code[2],code[1]);break;
        case 0x12: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("STAX    D");break;
        case 0x13: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INX     D");break;
        case 0x14: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR     D");break;
        case 0x15: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR     D");break;
        case 0x16: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI     D,#$%02x",code[1]);break;
        case 0x17: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RAL");break;
        case 0x18: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0x19: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DAD     D");break;
        case 0x1a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("LDAX    D");break;
        case 0x1b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCX     D");break;
        case 0x1c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR     E");break;
        case 0x1d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR     E");break;
        case 0x1e: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI     E,#$%02x",code[1]);break;
        case 0x1f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RAR");break;
        case 0x20: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0x21: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LXI     H,#$%02x%02x",code[2],code[1]);break;
        case 0x22: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("SHLD    $%02x%02x",code[2],code[1]);break;
        case 0x23: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INX     H");break;
        case 0x24: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR     H");break;
        case 0x25: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR     H");break;
        case 0x26: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI     H,#$%02x",code[1]);break;
        case 0x27: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DAA");break;
        case 0x28: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0x29: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DAD     H");break;
        case 0x2a: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LHLD    $%02x%02x",code[2],code[1]);break;
        case 0x2b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCX     H");break;
        case 0x2c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR     L");break;
        case 0x2d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR     L");break;
        case 0x2e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MVI     L,#$%02x",code[1]);break;
        case 0x2f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMA");break;
        case 0x30: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0x31: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LXI     SP,#$%02x%02x",code[2],code[1]);break;
        case 0x32: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("STA     $%02x%02x",code[2],code[1]);break;
        case 0x33: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INX     SP");break;
        case 0x34: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR     M");break;
        case 0x35: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR     M");break;
        case 0x36: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI     M,#$%02x",code[1]);break;
        case 0x37: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("STC");break;
        case 0x38: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0x39: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DAD     SP");break;
        case 0x3a: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LDA     $%02x%02x",code[2],code[1]);break;
        case 0x3b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCX     SP");break;
        case 0x3c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR     A");break;
        case 0x3d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR     A");break;
        case 0x3e: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI     A,#$%02x",code[1]);break;
        case 0x3f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMC");break;
        case 0x40: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     B,B");break;
        case 0x41: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     B,C");break;
        case 0x42: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     B,D");break;
        case 0x43: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     B,E");break;
        case 0x44: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     B,H");break;
        case 0x45: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     B,L");break;
        case 0x46: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     B,M");break;
        case 0x47: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     B,A");break;
        case 0x48: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     C,B");break;
        case 0x49: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     C,C");break;
        case 0x4a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     C,D");break;
        case 0x4b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     C,E");break;
        case 0x4c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     C,H");break;
        case 0x4d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     C,L");break;
        case 0x4e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     C,M");break;
        case 0x4f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     C,A");break;
        case 0x50: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     D,B");break;
        case 0x51: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     D,C");break;
        case 0x52: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     D,D");break;
        case 0x53: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     D,E");break;
        case 0x54: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     D,H");break;
        case 0x55: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     D,L");break;
        case 0x56: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     D,M");break;
        case 0x57: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     D,A");break;
        case 0x58: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     E,B");break;
        case 0x59: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     E,C");break;
        case 0x5a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     E,D");break;
        case 0x5b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     E,E");break;
        case 0x5c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     E,H");break;
        case 0x5d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     E,L");break;
        case 0x5e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     E,M");break;
        case 0x5f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     E,A");break;
        case 0x60: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     H,B");break;
        case 0x61: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     H,C");break;
        case 0x62: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     H,D");break;
        case 0x63: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     H,E");break;
        case 0x64: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     H,H");break;
        case 0x65: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     H,L");break;
        case 0x66: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     H,M");break;
        case 0x67: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     H,A");break;
        case 0x68: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     L,B");break;
        case 0x69: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     L,C");break;
        case 0x6a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     L,D");break;
        case 0x6b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     L,E");break;
        case 0x6c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     L,H");break;
        case 0x6d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     L,L");break;
        case 0x6e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     L,M");break;
        case 0x6f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     L,A");break;
        case 0x70: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     M,B");break;
        case 0x71: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     M,C");break;
        case 0x72: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     M,D");break;
        case 0x73: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     M,E");break;
        case 0x74: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     M,H");break;
        case 0x75: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     M,L");break;
        case 0x76: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("HLT");break;
        case 0x77: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     M,A");break;
        case 0x78: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     A,B");break;
        case 0x79: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     A,C");break;
        case 0x7a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     A,D");break;
        case 0x7b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     A,E");break;
        case 0x7c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     A,H");break;
        case 0x7d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     A,L");break;
        case 0x7e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     A,M");break;
        case 0x7f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV     A,A");break;
        case 0x80: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD     B");break;
        case 0x81: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD     C");break;
        case 0x82: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD     D");break;
        case 0x83: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD     E");break;
        case 0x84: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD     H");break;
        case 0x85: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD     L");break;
        case 0x86: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD     M");break;
        case 0x87: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD     A");break;
        case 0x88: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC     B");break;
        case 0x89: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC     C");break;
        case 0x8a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC     D");break;
        case 0x8b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC     E");break;
        case 0x8c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC     H");break;
        case 0x8d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC     L");break;
        case 0x8e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC     M");break;
        case 0x8f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC     A");break;
        case 0x90: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB     B");break;
        case 0x91: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB     C");break;
        case 0x92: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB     D");break;
        case 0x93: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB     E");break;
        case 0x94: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB     H");break;
        case 0x95: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB     L");break;
        case 0x96: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB     M");break;
        case 0x97: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB     A");break;
        case 0x98: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB     B");break;
        case 0x99: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB     C");break;
        case 0x9a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB     D");break;
        case 0x9b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB     E");break;
        case 0x9c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB     H");break;
        case 0x9d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB     L");break;
        case 0x9e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB     M");break;
        case 0x9f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB     A");break;
        case 0xa0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA     B");break;
        case 0xa1: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA     C");break;
        case 0xa2: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA     D");break;
        case 0xa3: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA     E");break;
        case 0xa4: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA     H");break;
        case 0xa5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA     L");break;
        case 0xa6: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA     M");break;
        case 0xa7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA     A");break;
        case 0xa8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA     B");break;
        case 0xa9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA     C");break;
        case 0xaa: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA     D");break;
        case 0xab: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA     E");break;
        case 0xac: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA     H");break;
        case 0xad: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA     L");break;
        case 0xae: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA     M");break;
        case 0xaf: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA     A");break;
        case 0xb0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA     B");break;
        case 0xb1: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA     C");break;
        case 0xb2: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA     D");break;
        case 0xb3: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA     E");break;
        case 0xb4: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA     H");break;
        case 0xb5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA     L");break;
        case 0xb6: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA     M");break;
        case 0xb7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA     A");break;
        case 0xb8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP     B");break;
        case 0xb9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP     C");break;
        case 0xba: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP     D");break;
        case 0xbb: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP     E");break;
        case 0xbc: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP     H");break;
        case 0xbd: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP     L");break;
        case 0xbe: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP     M");break;
        case 0xbf: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP     A");break;
        case 0xc0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RNZ");break;
        case 0xc1: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("POP     B");break;
        case 0xc2: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JNZ     $%02x%02x",code[2],code[1]);break;
        case 0xc3: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JMP     $%02x%02x",code[2],code[1]);break;
        case 0xc4: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CNZ     $%02x%02x",code[2],code[1]);break;
        case 0xc5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("PUSH    B");break;
        case 0xc6: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("ADI     #$%02x",code[1]);break;
        case 0xc7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST     0");break;
        case 0xc8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RZ");break;
        case 0xc9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RET");break;
        case 0xca: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JZ      $%02x%02x",code[2],code[1]);break;
        case 0xcb: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0xcc: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CZ      $%02x%02x",code[2],code[1]);break;
        case 0xcd: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CALL    $%02x%02x",code[2],code[1]);break;
        case 0xce: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("ACI     #$%02x",code[1]);break;
        case 0xcf: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST     1");break;
        case 0xd0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RNC");break;
        case 0xd1: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("POP     D");break;
        case 0xd2: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JNC     $%02x%02x",code[2],code[1]);break;
        case 0xd3: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("OUT     #$%02x",code[1]);break;
        case 0xd4: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CNC     $%02x%02x",code[2],code[1]);break;;
        case 0xd5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("PUSH    D");break;
        case 0xd6: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("SUI     #$%02x",code[1]);break;
        case 0xd7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST     2");break;
        case 0xd8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RC");break;
        case 0xd9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0xda: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JC      $%02x%02x",code[2],code[1]);break;
        case 0xdb: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("IN      #$%02x",code[1]);break;
        case 0xdc: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CC      $%02x%02x",code[2],code[1]);break;
        case 0xdd: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0xde: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("SBI     #$%02x",code[1]);break;
        case 0xdf: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST     3");break;
        case 0xe0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RPO");break;
        case 0xe1: oplength = displayPcOpCodeParamHex1(pc,code[0]); printf("POP     H");break;
        case 0xe2: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("SBI     #$%02x",code[1]);break;
        case 0xe3: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XTHL");break;
        case 0xe4: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CPO     $%02x%02x",code[2],code[1]);break;
        case 0xe5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("PUSH    H");break;
        case 0xe6: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("ANI     #$%02x",code[1]);break;
        case 0xe7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST     4");break;
        case 0xe8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RPE");break;
        case 0xe9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("PCHL");break;
        case 0xea: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JPE     $%02x%02x",code[2],code[1]);break;
        case 0xeb: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XCHG");break;
        case 0xec: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CPE     $%02x%02x",code[2],code[1]);break;
        case 0xed: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0xee: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("XRI     #$%02x",code[1]);break;
        case 0xef: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST     5");break;
        case 0xf0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RP");break;
        case 0xf1: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("POP     PSW");break;
        case 0xf2: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JP      $%02x%02x",code[2],code[1]);break;
        case 0xf3: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DI");break;
        case 0xf4: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CP      $%02x%02x",code[2],code[1]);break;
        case 0xf5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("PUSH    PSW");break;
        case 0xf6: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("ORI     D8,%02x",code[1]);break;
        case 0xf7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST     6");break;
        case 0xf8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RM");break;
        case 0xf9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SPHL");break;
        case 0xfa: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JM      $%02x%02x",code[2],code[1]);break;
        case 0xfb: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("EI");break;
        case 0xfc: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CM      $%02x%02x",code[2],code[1]);break;
        case 0xfd: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP");break;
        case 0xfe: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("CPI     #$%02x",code[1]);break;
        case 0xff: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST     7");break;
    }
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
		pc += Disassemble8080(buffer, pc);
		printf ("\n");
	}
	return 0;
}