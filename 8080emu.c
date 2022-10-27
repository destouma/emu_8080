#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include "8080emu.h"

// Dissasembler
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

int disassemble8080(unsigned char *codebuffer, int pc){
    unsigned char *code = &codebuffer[pc]; 
    int oplength = 1;
    switch(*code){
        case 0x00: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0x01: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LXI\tB,#$%02x%02x",code[2],code[1]); break;
        case 0x02: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("STAX\tB\t");break;
        case 0x03: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INX\tB\t");break;
        case 0x04: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR\tB\t");break;
        case 0x05: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR\tB\t");break;
        case 0x06: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI\tB,#$%02x\t",code[1]); break;
        case 0x07: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RLC\t\t");break;
        case 0x08: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0x09: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DAD\tB\t");break;
        case 0x0a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("LDAX\tB\t");break;
        case 0x0b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCX\tB\t");break;
        case 0x0c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR\tC\t");break;
        case 0x0d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR\tC\t");break;
        case 0x0e: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI\tC,#$%02x\t",code[1]); break;
        case 0x0f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RRC\t\t");break;
        case 0x10: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0x11: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LXI\tD,#$%02x%02x",code[2],code[1]);break;
        case 0x12: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("STAX\tD\t");break;
        case 0x13: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INX\tD\t");break;
        case 0x14: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR\tD\t");break;
        case 0x15: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR\tD\t");break;
        case 0x16: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI\tD,#$%02x\t",code[1]);break;
        case 0x17: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RAL\t\t");break;
        case 0x18: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0x19: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DAD\tD\t");break;
        case 0x1a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("LDAX\tD\t");break;
        case 0x1b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCX\tD\t");break;
        case 0x1c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR\tE\t");break;
        case 0x1d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR\tE\t");break;
        case 0x1e: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI\tE,#$%02x\t",code[1]);break;
        case 0x1f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RAR\t\t");break;
        case 0x20: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0x21: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LXI\tH,#$%02x%02x",code[2],code[1]);break;
        case 0x22: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("SHLD\t$%02x%02x\t",code[2],code[1]);break;
        case 0x23: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INX\tH\t");break;
        case 0x24: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR\tH\t");break;
        case 0x25: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR\tH\t");break;
        case 0x26: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI\tH,#$%02x\t",code[1]);break;
        case 0x27: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DAA\t\t");break;
        case 0x28: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0x29: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DAD\tH\t");break;
        case 0x2a: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LHLD\t$%02x%02x\t",code[2],code[1]);break;
        case 0x2b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCX\tH\t");break;
        case 0x2c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR\tL\t");break;
        case 0x2d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR\tL\t");break;
        case 0x2e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MVI\tL,#$%02x\t",code[1]);break;
        case 0x2f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMA\t\t");break;
        case 0x30: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0x31: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LXI\tSP,#$%02x%02x",code[2],code[1]);break;
        case 0x32: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("STA\t$%02x%02x\t",code[2],code[1]);break;
        case 0x33: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INX\tSP\t");break;
        case 0x34: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR\tM\t");break;
        case 0x35: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR\tM\t");break;
        case 0x36: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI\tM,#$%02x\t",code[1]);break;
        case 0x37: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("STC\t\t");break;
        case 0x38: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0x39: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DAD\tSP\t");break;
        case 0x3a: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("LDA\t$%02x%02x\t",code[2],code[1]);break;
        case 0x3b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCX\tSP\t");break;
        case 0x3c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("INR\tA\t");break;
        case 0x3d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DCR\tA\t");break;
        case 0x3e: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("MVI\tA,#$%02x\t",code[1]);break;
        case 0x3f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMC\t\t");break;
        case 0x40: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tB,B\t");break;
        case 0x41: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tB,C\t");break;
        case 0x42: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tB,D\t");break;
        case 0x43: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tB,E\t");break;
        case 0x44: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tB,H\t");break;
        case 0x45: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tB,L\t");break;
        case 0x46: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tB,M\t");break;
        case 0x47: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tB,A\t");break;
        case 0x48: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tC,B\t");break;
        case 0x49: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tC,C\t");break;
        case 0x4a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tC,D\t");break;
        case 0x4b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tC,E\t");break;
        case 0x4c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tC,H\t");break;
        case 0x4d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tC,L\t");break;
        case 0x4e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tC,M\t");break;
        case 0x4f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tC,A\t");break;
        case 0x50: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tD,B\t");break;
        case 0x51: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tD,C\t");break;
        case 0x52: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tD,D\t");break;
        case 0x53: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tD,E\t");break;
        case 0x54: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tD,H\t");break;
        case 0x55: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tD,L\t");break;
        case 0x56: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tD,M\t");break;
        case 0x57: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tD,A\t");break;
        case 0x58: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tE,B\t");break;
        case 0x59: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tE,C\t");break;
        case 0x5a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tE,D\t");break;
        case 0x5b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tE,E\t");break;
        case 0x5c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tE,H\t");break;
        case 0x5d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tE,L\t");break;
        case 0x5e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tE,M\t");break;
        case 0x5f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tE,A\t");break;
        case 0x60: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tH,B\t");break;
        case 0x61: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tH,C\t");break;
        case 0x62: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tH,D\t");break;
        case 0x63: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tH,E\t");break;
        case 0x64: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tH,H\t");break;
        case 0x65: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tH,L\t");break;
        case 0x66: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tH,M\t");break;
        case 0x67: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tH,A\t");break;
        case 0x68: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tL,B\t");break;
        case 0x69: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tL,C\t");break;
        case 0x6a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tL,D\t");break;
        case 0x6b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tL,E\t");break;
        case 0x6c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tL,H\t");break;
        case 0x6d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tL,L\t");break;
        case 0x6e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tL,M\t");break;
        case 0x6f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tL,A\t");break;
        case 0x70: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tM,B\t");break;
        case 0x71: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tM,C\t");break;
        case 0x72: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tM,D\t");break;
        case 0x73: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tM,E\t");break;
        case 0x74: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tM,H\t");break;
        case 0x75: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tM,L\t");break;
        case 0x76: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("HLT\t\t");break;
        case 0x77: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tM,A\t");break;
        case 0x78: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tA,B\t");break;
        case 0x79: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tA,C\t");break;
        case 0x7a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tA,D\t");break;
        case 0x7b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tA,E\t");break;
        case 0x7c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tA,H\t");break;
        case 0x7d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tA,L\t");break;
        case 0x7e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tA,M\t");break;
        case 0x7f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("MOV\tA,A\t");break;
        case 0x80: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD\tB\t");break;
        case 0x81: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD\tC\t");break;
        case 0x82: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD\tD\t");break;
        case 0x83: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD\tE\t");break;
        case 0x84: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD\tH\t");break;
        case 0x85: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD\tL\t");break;
        case 0x86: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD\tM\t");break;
        case 0x87: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADD\tA\t");break;
        case 0x88: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC\tB\t");break;
        case 0x89: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC\tC\t");break;
        case 0x8a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC\tD\t");break;
        case 0x8b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC\tE\t");break;
        case 0x8c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC\tH\t");break;
        case 0x8d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC\tL\t");break;
        case 0x8e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC\tM\t");break;
        case 0x8f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ADC\tA\t");break;
        case 0x90: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB\tB\t");break;
        case 0x91: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB\tC\t");break;
        case 0x92: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB\tD\t");break;
        case 0x93: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB\tE\t");break;
        case 0x94: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB\tH\t");break;
        case 0x95: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB\tL\t");break;
        case 0x96: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB\tM\t");break;
        case 0x97: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SUB\tA\t");break;
        case 0x98: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB\tB\t");break;
        case 0x99: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB\tC\t");break;
        case 0x9a: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB\tD\t");break;
        case 0x9b: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB\tE\t");break;
        case 0x9c: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB\tH\t");break;
        case 0x9d: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB\tL\t");break;
        case 0x9e: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB\tM\t");break;
        case 0x9f: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SBB\tA\t");break;
        case 0xa0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA\tB\t");break;
        case 0xa1: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA\tC\t");break;
        case 0xa2: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA\tD\t");break;
        case 0xa3: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA\tE\t");break;
        case 0xa4: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA\tH\t");break;
        case 0xa5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA\tL\t");break;
        case 0xa6: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA\tM\t");break;
        case 0xa7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ANA\tA\t");break;
        case 0xa8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA\tB\t");break;
        case 0xa9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA\tC\t");break;
        case 0xaa: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA\tD\t");break;
        case 0xab: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA\tE\t");break;
        case 0xac: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA\tH\t");break;
        case 0xad: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA\tL\t");break;
        case 0xae: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA\tM\t");break;
        case 0xaf: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XRA\tA\t");break;
        case 0xb0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA\tB\t");break;
        case 0xb1: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA\tC\t");break;
        case 0xb2: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA\tD\t");break;
        case 0xb3: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA\tE\t");break;
        case 0xb4: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA\tH\t");break;
        case 0xb5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA\tL\t");break;
        case 0xb6: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA\tM\t");break;
        case 0xb7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("ORA\tA\t");break;
        case 0xb8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP\tB\t");break;
        case 0xb9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP\tC\t");break;
        case 0xba: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP\tD\t");break;
        case 0xbb: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP\tE\t");break;
        case 0xbc: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP\tH\t");break;
        case 0xbd: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP\tL\t");break;
        case 0xbe: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP\tM\t");break;
        case 0xbf: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("CMP\tA\t");break;
        case 0xc0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RNZ\t\t");break;
        case 0xc1: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("POP\tB\t");break;
        case 0xc2: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JNZ\t$%02x%02x\t",code[2],code[1]);break;
        case 0xc3: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JMP\t$%02x%02x\t",code[2],code[1]);break;
        case 0xc4: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CNZ\t$%02x%02x\t",code[2],code[1]);break;
        case 0xc5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("PUSH\tB\t");break;
        case 0xc6: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("ADI\t#$%02x\t",code[1]);break;
        case 0xc7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST\t0\t");break;
        case 0xc8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RZ\t\t");break;
        case 0xc9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RET\t\t");break;
        case 0xca: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JZ\t$%02x%02x\t",code[2],code[1]);break;
        case 0xcb: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0xcc: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CZ\t$%02x%02x\t",code[2],code[1]);break;
        case 0xcd: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CALL\t$%02x%02x\t",code[2],code[1]);break;
        case 0xce: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("ACI\t#$%02x\t",code[1]);break;
        case 0xcf: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST\t1\t");break;
        case 0xd0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RNC\t\t");break;
        case 0xd1: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("POP\tD\t");break;
        case 0xd2: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JNC\t$%02x%02x",code[2],code[1]);break;
        case 0xd3: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("OUT\t#$%02x\t",code[1]);break;
        case 0xd4: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CNC\t$%02x%02x",code[2],code[1]);break;;
        case 0xd5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("PUSH\tD\t");break;
        case 0xd6: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("SUI\t#$%02x",code[1]);break;
        case 0xd7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST\t2\t");break;
        case 0xd8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RC\t\t");break;
        case 0xd9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0xda: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JC\t$%02x%02x\t",code[2],code[1]);break;
        case 0xdb: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("IN\t#$%02x",code[1]);break;
        case 0xdc: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CC\t$%02x%02x\t",code[2],code[1]);break;
        case 0xdd: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0xde: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("SBI\t#$%02x\t",code[1]);break;
        case 0xdf: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST\t3\t");break;
        case 0xe0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RPO\t\t");break;
        case 0xe1: oplength = displayPcOpCodeParamHex1(pc,code[0]); printf("POP\tH\t");break;
        case 0xe2: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("SBI\t#$%02x",code[1]);break;
        case 0xe3: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XTHL\t\t");break;
        case 0xe4: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CPO\t$%02x%02x",code[2],code[1]);break;
        case 0xe5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("PUSH\tH\t");break;
        case 0xe6: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("ANI\t#$%02x\t",code[1]);break;
        case 0xe7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST\t4\t");break;
        case 0xe8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RPE\t\t");break;
        case 0xe9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("PCHL\t\t");break;
        case 0xea: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JPE\t$%02x%02x\t",code[2],code[1]);break;
        case 0xeb: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("XCHG\t\t");break;
        case 0xec: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CPE\t$%02x%02x\t",code[2],code[1]);break;
        case 0xed: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0xee: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("XRI\t#$%02x",code[1]);break;
        case 0xef: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST\t5\t");break;
        case 0xf0: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RP\t\t");break;
        case 0xf1: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("POP\tPSW\t");break;
        case 0xf2: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JP\t$%02x%02x",code[2],code[1]);break;
        case 0xf3: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("DI\t\t");break;
        case 0xf4: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CP\t$%02x%02x",code[2],code[1]);break;
        case 0xf5: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("PUSH\tPSW\t");break;
        case 0xf6: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("ORI\tD8,%02x\t",code[1]);break;
        case 0xf7: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST\t6\t");break;
        case 0xf8: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RM\t\t");break;
        case 0xf9: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("SPHL\t\t");break;
        case 0xfa: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("JM\t$%02x%02x\t",code[2],code[1]);break;
        case 0xfb: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("EI\t\t");break;
        case 0xfc: oplength = displayPcOpCodeParamHex3(pc,code[0],code[1],code[2]);printf("CM\t$%02x%02x\t",code[2],code[1]);break;
        case 0xfd: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("NOP\t\t");break;
        case 0xfe: oplength = displayPcOpCodeParamHex2(pc,code[0],code[1]);printf("CPI\t#$%02x\t",code[1]);break;
        case 0xff: oplength = displayPcOpCodeParamHex1(pc,code[0]);printf("RST\t7\t");break;
    }
    return oplength;

}

// Emulator
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

void unimplementedInstruction(State8080* state){    
	//pc will have advanced one, so undo that
	printf ("Error: Unimplemented instruction\n");
	state->pc--;
	// disassemble8080(state->memory, state->pc);
	// printf("\n");
	exit(1);
}

void logicFlagsA(State8080 *state){
	state->flags.cy = state->flags.ac = 0;
	state->flags.z = (state->a == 0);
	state->flags.s = (0x80 == (state->a & 0x80));
	state->flags.p = parity(state->a, 8);
}

int emulate8080(State8080* state){
    unsigned char *opcode = &state->memory[state->pc];    
    disassemble8080(state->memory, state->pc);  
    // printf("\n");
    state->pc+=1; 

    switch(*opcode){    
        case 0x00:                                              // NOP 
            break;  
        case 0x01:  							                // LXI	B,word
			{
                state->c = opcode[1];
			    state->b = opcode[2];
			    state->pc += 2;
            }
			break; 
        case 0x02: unimplementedInstruction(state); break; 
        case 0x03: unimplementedInstruction(state); break; 
        case 0x04: unimplementedInstruction(state); break; 
        case 0x05:                                              // DCR    B
			{
                uint8_t res = state->b - 1;
                state->flags.z = (res == 0);
                state->flags.s = (0x80 == (res & 0x80));
                state->flags.p = parity(res, 8);
                state->b = res;
			}
			break; 
        case 0x06:  							                // MVI B,byte
			{
                state->b = opcode[1];
			    state->pc++;
            }
            break; 
        case 0x07: unimplementedInstruction(state); break; 
        case 0x08: unimplementedInstruction(state); break; 
        case 0x09:  							                // DAD B  ==> ?????
			{
                uint32_t hl = (state->h << 8) | state->l;
                uint32_t bc = (state->b << 8) | state->c;
                uint32_t res = hl + bc;
                state->h = (res & 0xff00) >> 8;
                state->l = res & 0xff;
                state->flags.cy = ((res & 0xffff0000) > 0);
			}
			break; 
        case 0x0a: unimplementedInstruction(state); break; 
        case 0x0b: unimplementedInstruction(state); break; 
        case 0x0c: unimplementedInstruction(state); break; 
        case 0x0d: 							                    // DCR    C
			{
                uint8_t res = state->c - 1;
                state->flags.z = (res == 0);
                state->flags.s = (0x80 == (res & 0x80));
                state->flags.p = parity(res, 8);
                state->c = res;
			}
			break; 
        case 0x0e:  							                // MVI C,byte
			{
                state->c = opcode[1];
			    state->pc++;
            }
            break; 
        case 0x0f: 							                    // RRC
			{
				uint8_t x = state->a;
				state->a = ((x & 1) << 7) | (x >> 1);
				state->flags.cy = (1 == (x&1));
			}
			break; 
        case 0x10: unimplementedInstruction(state); break; 
        case 0x11:  							                // LXI	D,word
			{
                state->e = opcode[1];
			    state->d = opcode[2];
			    state->pc += 2; 
            }
            break;
        case 0x12: unimplementedInstruction(state); break; 
        case 0x13:                                              // INX    D
			{
                state->e++;
			    if (state->e == 0)
				    state->d++;
            }
			break;		  
        case 0x14: unimplementedInstruction(state); break; 
        case 0x15: unimplementedInstruction(state); break; 
        case 0x16: unimplementedInstruction(state); break; 
        case 0x17: unimplementedInstruction(state); break; 
        case 0x18: unimplementedInstruction(state); break; 
        case 0x19:  								            // DAD    D ==> ????? 
			{
                uint32_t hl = (state->h << 8) | state->l;
                uint32_t de = (state->d << 8) | state->e;
                uint32_t res = hl + de;
                state->h = (res & 0xff00) >> 8;
                state->l = res & 0xff;
                state->flags.cy = ((res & 0xffff0000) != 0);
			}
			break;  
        case 0x1a:  							                // LDAX	D
			{
                uint16_t offset=(state->d<<8) | state->e;
                state->a = state->memory[offset];
			}
			break; 
        case 0x1b: unimplementedInstruction(state); break; 
        case 0x1c: unimplementedInstruction(state); break; 
        case 0x1d: unimplementedInstruction(state); break; 
        case 0x1e: unimplementedInstruction(state); break; 
        case 0x1f: unimplementedInstruction(state); break; 
        case 0x20: unimplementedInstruction(state); break; 
        case 0x21: 							                    // LXI	H,word
			{
                state->l = opcode[1];
			    state->h = opcode[2];
			    state->pc += 2;
            }
            break; 
        case 0x22: unimplementedInstruction(state); break; 
        case 0x23:  							                // INX    H
			{
                state->l++;
			    if (state->l == 0)
				    state->h++;
            }
            break;		 
        case 0x24: unimplementedInstruction(state); break; 
        case 0x25: unimplementedInstruction(state); break; 
        case 0x26:   							                // MVI H,byte
			{
                state->h = opcode[1];
			    state->pc++;
            }
            break; 
        case 0x27: unimplementedInstruction(state); break; 
        case 0x28: unimplementedInstruction(state); break; 
    case 0x29:  								                // DAD    H ==> ????? 
			{
                uint32_t hl = (state->h << 8) | state->l;
                uint32_t res = hl + hl;
                state->h = (res & 0xff00) >> 8;
                state->l = res & 0xff;
                state->flags.cy = ((res & 0xffff0000) != 0);
			}
			break; 
        case 0x2a: unimplementedInstruction(state); break; 
        case 0x2b: unimplementedInstruction(state); break; 
        case 0x2c: unimplementedInstruction(state); break; 
        case 0x2d: unimplementedInstruction(state); break; 
        case 0x2e: unimplementedInstruction(state); break; 
        case 0x2f: unimplementedInstruction(state); break; 
        case 0x30: unimplementedInstruction(state); break; 
        case 0x31: 	                                            // LXI	SP,word
			{
                state->sp = (opcode[2]<<8) | opcode[1];
			    state->pc += 2;
            }
            break; 
        case 0x32:  							                // STA    (word)
			{
                uint16_t offset = (opcode[2]<<8) | (opcode[1]);
                state->memory[offset] = state->a;
                state->pc += 2;
			}
			break; 
        case 0x33: unimplementedInstruction(state); break; 
        case 0x34: unimplementedInstruction(state); break; 
        case 0x35: unimplementedInstruction(state); break; 
        case 0x36:  							                // MVI	M,byte
			{					
                uint16_t offset = (state->h<<8) | state->l;
                state->memory[offset] = opcode[1];
                state->pc++;
			} 
            break;
        case 0x37: unimplementedInstruction(state); break; 
        case 0x38: unimplementedInstruction(state); break; 
        case 0x39: unimplementedInstruction(state); break; 
        case 0x3a:  							                // LDA    (word)
			{
                uint16_t offset = (opcode[2]<<8) | (opcode[1]);
                state->a = state->memory[offset];
                state->pc+=2;
			}
			break; 
        case 0x3b: unimplementedInstruction(state); break; 
        case 0x3c: unimplementedInstruction(state); break; 
        case 0x3d: unimplementedInstruction(state); break; 
        case 0x3e:  							                // MVI    A,byte
			{
                state->a = opcode[1];
			    state->pc++;
            }
            break; 
        case 0x3f: unimplementedInstruction(state); break; 
        case 0x40: unimplementedInstruction(state); break; 
        case 0x41: unimplementedInstruction(state); break; 
        case 0x42: unimplementedInstruction(state); break; 
        case 0x43: unimplementedInstruction(state); break; 
        case 0x44: unimplementedInstruction(state); break; 
        case 0x45: unimplementedInstruction(state); break; 
        case 0x46: unimplementedInstruction(state); break; 
        case 0x47: unimplementedInstruction(state); break; 
        case 0x48: unimplementedInstruction(state); break; 
        case 0x49: unimplementedInstruction(state); break; 
        case 0x4a: unimplementedInstruction(state); break; 
        case 0x4b: unimplementedInstruction(state); break; 
        case 0x4c: unimplementedInstruction(state); break; 
        case 0x4d: unimplementedInstruction(state); break; 
        case 0x4e: unimplementedInstruction(state); break; 
        case 0x4f: unimplementedInstruction(state); break; 
        case 0x50: unimplementedInstruction(state); break; 
        case 0x51: unimplementedInstruction(state); break; 
        case 0x52: unimplementedInstruction(state); break; 
        case 0x53: unimplementedInstruction(state); break; 
        case 0x54: unimplementedInstruction(state); break; 
        case 0x55: unimplementedInstruction(state); break; 
        case 0x56:  							                // MOV D,M
			{
                uint16_t offset = (state->h<<8) | (state->l);
                state->d = state->memory[offset];
			}
			break; 
        case 0x57: unimplementedInstruction(state); break; 
        case 0x58: unimplementedInstruction(state); break; 
        case 0x59: unimplementedInstruction(state); break; 
        case 0x5a: unimplementedInstruction(state); break; 
        case 0x5b: unimplementedInstruction(state); break; 
        case 0x5c: unimplementedInstruction(state); break; 
        case 0x5d: unimplementedInstruction(state); break; 
        case 0x5e:              							    // MOV E,M
			{
                uint16_t offset = (state->h<<8) | (state->l);
                state->e = state->memory[offset];
			}
			break; 
        case 0x5f: unimplementedInstruction(state); break; 
        case 0x60: unimplementedInstruction(state); break; 
        case 0x61: unimplementedInstruction(state); break; 
        case 0x62: unimplementedInstruction(state); break; 
        case 0x63: unimplementedInstruction(state); break; 
        case 0x64: unimplementedInstruction(state); break; 
        case 0x65: unimplementedInstruction(state); break; 
        case 0x66:  							                // MOV H,M
			{
                uint16_t offset = (state->h<<8) | (state->l);
                state->h = state->memory[offset];
			}
			break; 
        case 0x67: unimplementedInstruction(state); break; 
        case 0x68: unimplementedInstruction(state); break; 
        case 0x69: unimplementedInstruction(state); break; 
        case 0x6a: unimplementedInstruction(state); break; 
        case 0x6b: unimplementedInstruction(state); break; 
        case 0x6c: unimplementedInstruction(state); break; 
        case 0x6d: unimplementedInstruction(state); break; 
        case 0x6e: unimplementedInstruction(state); break; 
        case 0x6f:  	                                        // MOV L,A
            state->a  = state->l;  
            break; 
        case 0x70: unimplementedInstruction(state); break; 
        case 0x71: unimplementedInstruction(state); break; 
        case 0x72: unimplementedInstruction(state); break; 
        case 0x73: unimplementedInstruction(state); break; 
        case 0x74: unimplementedInstruction(state); break; 
        case 0x75: unimplementedInstruction(state); break; 
        case 0x76: unimplementedInstruction(state); break; 
        case 0x77:                                              // MOV    M,A
			{
                uint16_t offset = (state->h<<8) | (state->l);
                state->memory[offset] = state->a;
			}
			break; 
        case 0x78: unimplementedInstruction(state); break; 
        case 0x79: unimplementedInstruction(state); break; 
        case 0x7a: 	                                            // MOV D,A
            state->a  = state->d;  
            break;
		case 0x7b:                                              // MOV E,A
            state->a  = state->e;  
            break;	
		case 0x7c:                                              // MOV H,A
            state->a  = state->h;  
            break;	
        case 0x7d: unimplementedInstruction(state); break; 
        case 0x7e: 							                    // MOV A,M
			{
                uint16_t offset = (state->h<<8) | (state->l);
                state->a = state->memory[offset];
			}
			break; 
        case 0x7f: unimplementedInstruction(state); break; 
        case 0x80: unimplementedInstruction(state); break; 
        case 0x81: unimplementedInstruction(state); break; 
        case 0x82: unimplementedInstruction(state); break; 
        case 0x83: unimplementedInstruction(state); break; 
        case 0x84: unimplementedInstruction(state); break; 
        case 0x85: unimplementedInstruction(state); break; 
        case 0x86: unimplementedInstruction(state); break; 
        case 0x87: unimplementedInstruction(state); break; 
        case 0x88: unimplementedInstruction(state); break; 
        case 0x89: unimplementedInstruction(state); break; 
        case 0x8a: unimplementedInstruction(state); break; 
        case 0x8b: unimplementedInstruction(state); break; 
        case 0x8c: unimplementedInstruction(state); break; 
        case 0x8d: unimplementedInstruction(state); break; 
        case 0x8e: unimplementedInstruction(state); break; 
        case 0x8f: unimplementedInstruction(state); break; 
        case 0x90: unimplementedInstruction(state); break; 
        case 0x91: unimplementedInstruction(state); break; 
        case 0x92: unimplementedInstruction(state); break; 
        case 0x93: unimplementedInstruction(state); break; 
        case 0x94: unimplementedInstruction(state); break; 
        case 0x95: unimplementedInstruction(state); break; 
        case 0x96: unimplementedInstruction(state); break; 
        case 0x97: unimplementedInstruction(state); break; 
        case 0x98: unimplementedInstruction(state); break; 
        case 0x99: unimplementedInstruction(state); break; 
        case 0x9a: unimplementedInstruction(state); break; 
        case 0x9b: unimplementedInstruction(state); break; 
        case 0x9c: unimplementedInstruction(state); break; 
        case 0x9d: unimplementedInstruction(state); break; 
        case 0x9e: unimplementedInstruction(state); break; 
        case 0x9f: unimplementedInstruction(state); break; 
        case 0xa0: unimplementedInstruction(state); break; 
        case 0xa1: unimplementedInstruction(state); break; 
        case 0xa2: unimplementedInstruction(state); break; 
        case 0xa3: unimplementedInstruction(state); break; 
        case 0xa4: unimplementedInstruction(state); break;
        case 0xa5: unimplementedInstruction(state); break;
        case 0xa6: unimplementedInstruction(state); break;
        case 0xa7:                                              // ANA A ==> ?????
            state->a = state->a & state->a; logicFlagsA(state);	
            break;
        case 0xa8: unimplementedInstruction(state); break;
        case 0xa9: unimplementedInstruction(state); break;
        case 0xaa: unimplementedInstruction(state); break;
        case 0xab: unimplementedInstruction(state); break;
        case 0xac: unimplementedInstruction(state); break;
        case 0xad: unimplementedInstruction(state); break;
        case 0xae: unimplementedInstruction(state); break;
        case 0xaf:                                              // XRA A ==> ?????
            state->a = state->a ^ state->a; logicFlagsA(state);	
            break; 
        case 0xb0: unimplementedInstruction(state); break;
        case 0xb1: unimplementedInstruction(state); break;
        case 0xb2: unimplementedInstruction(state); break;
        case 0xb3: unimplementedInstruction(state); break;
        case 0xb4: unimplementedInstruction(state); break;
        case 0xb5: unimplementedInstruction(state); break;
        case 0xb6: unimplementedInstruction(state); break;
        case 0xb7: unimplementedInstruction(state); break;
        case 0xb8: unimplementedInstruction(state); break;
        case 0xb9: unimplementedInstruction(state); break;
        case 0xba: unimplementedInstruction(state); break;
        case 0xbb: unimplementedInstruction(state); break;
        case 0xbc: unimplementedInstruction(state); break;
        case 0xbd: unimplementedInstruction(state); break;
        case 0xbe: unimplementedInstruction(state); break;
        case 0xbf: unimplementedInstruction(state); break;
        case 0xc0: unimplementedInstruction(state); break;
        case 0xc1: 						                        // POP    B
			{
				state->c = state->memory[state->sp];
				state->b = state->memory[state->sp+1];
				state->sp += 2;
			}
			break;
        case 0xc2:  						                    // JNZ address
			if (0 == state->flags.z)
				state->pc = (opcode[2] << 8) | opcode[1];
			else
				state->pc += 2;
			break;
        case 0xc3:                                              // JMP address 
            state->pc = (opcode[2] << 8 ) | opcode[1];
            break;
        case 0xc4: unimplementedInstruction(state); break;
        case 0xc5:  						                    // PUSH   B
			{
                state->memory[state->sp-1] = state->b;
                state->memory[state->sp-2] = state->c;
                state->sp = state->sp - 2;
			}
			break;
        case 0xc6: 						                        // ADI    byte
			{
                uint16_t x = (uint16_t) state->a + (uint16_t) opcode[1];
                state->flags.z = ((x & 0xff) == 0);
                state->flags.s = (0x80 == (x & 0x80));
                state->flags.p = parity((x&0xff), 8);
                state->flags.cy = (x > 0xff);
                state->a = (uint8_t) x;
                state->pc++;
			}
			break;
        case 0xc7: unimplementedInstruction(state); break;
        case 0xc8: unimplementedInstruction(state); break;
        case 0xc9: 						                        // RET
			{
                state->pc = state->memory[state->sp] | (state->memory[state->sp+1] << 8);
			    state->sp += 2;
            }
            break;
        case 0xca: unimplementedInstruction(state); break;
        case 0xcb: unimplementedInstruction(state); break;
        case 0xcc: unimplementedInstruction(state); break;
        case 0xcd:  						                    // CALL address
			{
                uint16_t	ret = state->pc+2;
                state->memory[state->sp-1] = (ret >> 8) & 0xff;
                state->memory[state->sp-2] = (ret & 0xff);
                state->sp = state->sp - 2;
                state->pc = (opcode[2] << 8) | opcode[1];
			}
 			break;
        case 0xce: unimplementedInstruction(state); break;
        case 0xcf: unimplementedInstruction(state); break;
        case 0xd0: unimplementedInstruction(state); break;
        case 0xd1:  						                    // POP    D
			{
				state->e = state->memory[state->sp];
				state->d = state->memory[state->sp+1];
				state->sp += 2;
			}
			break;
        case 0xd2: unimplementedInstruction(state); break;
    case 0xd3:                                                  // OUT  ==> ????? 
            state->pc++;
            break;
        case 0xd4: unimplementedInstruction(state); break;
        case 0xd5:                                              // PUSH   D
			{
                state->memory[state->sp-1] = state->d;
                state->memory[state->sp-2] = state->e;
                state->sp = state->sp - 2;
			}
			break;
        case 0xd6: unimplementedInstruction(state); break;
        case 0xd7: unimplementedInstruction(state); break;
        case 0xd8: unimplementedInstruction(state); break;
        case 0xd9: unimplementedInstruction(state); break;
        case 0xda: unimplementedInstruction(state); break;
        case 0xdb: unimplementedInstruction(state); break;
        case 0xdc: unimplementedInstruction(state); break;
        case 0xdd: unimplementedInstruction(state); break;
        case 0xde: unimplementedInstruction(state); break;
        case 0xdf: unimplementedInstruction(state); break;
        case 0xe0: unimplementedInstruction(state); break;
        case 0xe1: 					                            // POP    H
			{
				state->l = state->memory[state->sp];
				state->h = state->memory[state->sp+1];
				state->sp += 2;
			}
			break;
        case 0xe2: unimplementedInstruction(state); break;
        case 0xe3: unimplementedInstruction(state); break;
        case 0xe4: unimplementedInstruction(state); break;
        case 0xe5:                                              // PUSH   H
            {
                state->memory[state->sp-1] = state->h;
                state->memory[state->sp-2] = state->l;
                state->sp = state->sp - 2;
			}
			break;
        case 0xe6:  						                    // ANI    byte ==> ?????
			{
                state->a = state->a & opcode[1];
                logicFlagsA(state);
                state->pc++;
			}
			break;
        case 0xe7: unimplementedInstruction(state); break;
        case 0xe8: unimplementedInstruction(state); break;
        case 0xe9: unimplementedInstruction(state); break;
        case 0xea: unimplementedInstruction(state); break;
        case 0xeb: 					                            // XCHG
			{
				uint8_t save1 = state->d;
				uint8_t save2 = state->e;
				state->d = state->h;
				state->e = state->l;
				state->h = save1;
				state->l = save2;
			}
			break;
        case 0xec: unimplementedInstruction(state); break;
        case 0xed: unimplementedInstruction(state); break;
        case 0xee: unimplementedInstruction(state); break;
        case 0xef: unimplementedInstruction(state); break;
        case 0xf0: unimplementedInstruction(state); break;
        case 0xf1:  					                        // POP PSW
			{
				state->a = state->memory[state->sp+1];
				uint8_t psw = state->memory[state->sp];
				state->flags.z  = (0x01 == (psw & 0x01));
				state->flags.s  = (0x02 == (psw & 0x02));
				state->flags.p  = (0x04 == (psw & 0x04));
				state->flags.cy = (0x05 == (psw & 0x08));
				state->flags.ac = (0x10 == (psw & 0x10));
				state->sp += 2;
			}
			break;
        case 0xf2: unimplementedInstruction(state); break;
        case 0xf3: unimplementedInstruction(state); break;
        case 0xf4: unimplementedInstruction(state); break;
    case 0xf5:  						                        // PUSH   PSW
			{
                state->memory[state->sp-1] = state->a;
                uint8_t psw = (state->flags.z |
                                state->flags.s << 1 |
                                state->flags.p << 2 |
                                state->flags.cy << 3 |
                                state->flags.ac << 4 );
                state->memory[state->sp-2] = psw;
                state->sp = state->sp - 2;
			}
			break;
        case 0xf6: unimplementedInstruction(state); break;
        case 0xf7: unimplementedInstruction(state); break;
        case 0xf8: unimplementedInstruction(state); break;
        case 0xf9: unimplementedInstruction(state); break;
        case 0xfa: unimplementedInstruction(state); break;
        case 0xfb: 	                                            // EI
            state->int_enable = 1;  
            break;
        case 0xfc: unimplementedInstruction(state); break;
        case 0xfd: unimplementedInstruction(state); break;
        case 0xfe: 						                        // CPI  byte
			{
                uint8_t x = state->a - opcode[1];
                state->flags.z = (x == 0);
                state->flags.s = (0x80 == (x & 0x80));
                state->flags.p = parity(x, 8);
                state->flags.cy = (state->a < opcode[1]);
                state->pc++;
			}
			break;
        case 0xff: unimplementedInstruction(state); break;
  
    }    
    printf("\t");
    printf("%c", state->flags.s ? 's' : '.');
	printf("%c", state->flags.z ? 'z' : '.');
	printf(".");
    printf("%c", state->flags.ac ? 'a' : '.');
    printf(".");
	printf("%c", state->flags.p ? 'p' : '.');
    printf(".");
	printf("%c", state->flags.cy ? 'c' : '.');
	printf("  ");
	printf("A $%02x B $%02x C $%02x D $%02x E $%02x H $%02x L $%02x SP %04x\n", state->a, state->b, state->c,
				state->d, state->e, state->h, state->l, state->sp);
	return 0;
}

void readFileIntoMemoryAt(State8080* state, char* filename, uint32_t offset){
	FILE *f= fopen(filename, "rb");
	if (f==NULL)
	{
		printf("error: Couldn't open %s\n", filename);
		exit(1);
	}
	fseek(f, 0L, SEEK_END);
	int fsize = ftell(f);
	fseek(f, 0L, SEEK_SET);
	
	uint8_t *buffer = &state->memory[offset];
	fread(buffer, fsize, 1, f);
	fclose(f);
}

State8080* init8080(void){
	State8080* state = calloc(1,sizeof(State8080));
    state->memory = malloc(MEMORY_SIZE);        // 16K memory
	return state;
}

int main (int argc, char**argv){
	int done = 0;

 	State8080* state = init8080();
	
	readFileIntoMemoryAt(state, "./invaders/invaders.h", 0);
	readFileIntoMemoryAt(state, "./invaders/invaders.g", 0x800);
	readFileIntoMemoryAt(state, "./invaders/invaders.f", 0x1000);
	readFileIntoMemoryAt(state, "./invaders/invaders.e", 0x1800);
	
	while (done == 0)
	{
		done = emulate8080(state);
	}
	return 0;
}