int displayPcOpCodeParamHex1(int pc, unsigned char opcode);
int displayPcOpCodeParamHex2(int pc, unsigned char opcode, unsigned char param1);
int displayPcOpCodeParamHex3(int pc, unsigned char opcode, unsigned char param1, unsigned char param2);
int Disassemble8080(unsigned char *codebuffer, int pc);