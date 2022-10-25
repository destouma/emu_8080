0000 00           NOP
0001 00           NOP
0002 00           NOP
0003 c3 d4 18     JMP     $18d4
0006 00           NOP
0007 00           NOP
0008 f5           PUSH    PSW
0009 c5           PUSH    B
000a d5           PUSH    D
000b e5           PUSH    H
000c c3 8c 00     JMP     $008c
000f 00           NOP
0010 f5           PUSH    PSW
0011 c5           PUSH    B
0012 d5           PUSH    D
0013 e5           PUSH    H
0014 3e 80        MVI     A,#$80
0016 32 72 20     STA     $2072
0019 21 c0 20     LXI     H,#$20c0
001c 35           DCR     M
001d cd cd 17     CALL    $17cd
0020 db 01        IN      #$01
0022 0f           RRC
0023 da 67 00     JC      $0067
0026 3a ea 20     LDA     $20ea
0029 a7           ANA     A
002a ca 42 00     JZ      $0042
002d 3a eb 20     LDA     $20eb
0030 fe 99        CPI     #$99
0032 ca 3e 00     JZ      $003e
0035 c6 01        ADI     #$01
0037 27           DAA
0038 32 eb 20     STA     $20eb
003b cd 47 19     CALL    $1947
003e af           XRA     A
003f 32 ea 20     STA     $20ea
0042 3a e9 20     LDA     $20e9
0045 a7           ANA     A
0046 ca 82 00     JZ      $0082
0049 3a ef 20     LDA     $20ef
004c a7           ANA     A
004d c2 6f 00     JNZ     $006f
0050 3a eb 20     LDA     $20eb
0053 a7           ANA     A
0054 c2 5d 00     JNZ     $005d
0057 cd bf 0a     CALL    $0abf
005a c3 82 00     JMP     $0082
005d 3a 93 20     LDA     $2093
0060 a7           ANA     A
0061 c2 82 00     JNZ     $0082
0064 c3 65 07     JMP     $0765
0067 3e 01        MVI     A,#$01
0069 32 ea 20     STA     $20ea
006c c3 3f 00     JMP     $003f
006f cd 40 17     CALL    $1740
0072 3a 32 20     LDA     $2032
0075 32 80 20     STA     $2080
0078 cd 00 01     CALL    $0100
007b cd 48 02     CALL    $0248
007e cd 13 09     CALL    $0913
0081 00           NOP
0082 e1           POP     H
0083 d1           POP     D
0084 c1           POP     B
0085 f1           POP     PSW
0086 fb           EI
0087 c9           RET
0088 00           NOP
0089 00           NOP
008a 00           NOP
008b 00           NOP
008c af           XRA     A
008d 32 72 20     STA     $2072
0090 3a e9 20     LDA     $20e9
0093 a7           ANA     A
0094 ca 82 00     JZ      $0082
0097 3a ef 20     LDA     $20ef
009a a7           ANA     A
009b c2 a5 00     JNZ     $00a5
009e 3a c1 20     LDA     $20c1
00a1 0f           RRC
00a2 d2 82 00     JNC     $0082
00a5 21 20 20     LXI     H,#$2020
00a8 cd 4b 02     CALL    $024b
00ab cd 41 01     CALL    $0141
00ae c3 82 00     JMP     $0082
00b1 cd 86 08     CALL    $0886
00b4 e5           PUSH    H
00b5 7e           MOV     A,M
00b6 23           INX     H
00b7 66           MOV     H,M
00b8 6f           MOV     L,A
00b9 22 09 20     SHLD    $2009
00bc 22 0b 20     SHLD    $200b
00bf e1           POP     H
00c0 2b           DCX     H
00c1 7e           MOV     A,M
00c2 fe 03        CPI     #$03
00c4 c2 c8 00     JNZ     $00c8
00c7 3d           DCR     A
00c8 32 08 20     STA     $2008
00cb fe fe        CPI     #$fe
00cd 3e 00        MVI     A,#$00
00cf c2 d3 00     JNZ     $00d3
00d2 3c           INR     A
00d3 32 0d 20     STA     $200d
00d6 c9           RET
00d7 3e 02        MVI     A,#$02
00d9 32 fb 21     STA     $21fb
00dc 32 fb 22     STA     $22fb
00df c3 e4 08     JMP     $08e4
00e2 00           NOP
00e3 00           NOP
00e4 00           NOP
00e5 00           NOP
00e6 00           NOP
00e7 00           NOP
00e8 00           NOP
00e9 00           NOP
00ea 00           NOP
00eb 00           NOP
00ec 00           NOP
00ed 00           NOP
00ee 00           NOP
00ef 00           NOP
00f0 00           NOP
00f1 00           NOP
00f2 00           NOP
00f3 00           NOP
00f4 00           NOP
00f5 00           NOP
00f6 00           NOP
00f7 00           NOP
00f8 00           NOP
00f9 00           NOP
00fa 00           NOP
00fb 00           NOP
00fc 00           NOP
00fd 00           NOP
00fe 00           NOP
00ff 00           NOP
0100 21 02 20     LXI     H,#$2002
0103 7e           MOV     A,M
0104 a7           ANA     A
0105 c2 38 15     JNZ     $1538
0108 e5           PUSH    H
0109 3a 06 20     LDA     $2006
010c 6f           MOV     L,A
010d 3a 67 20     LDA     $2067
0110 67           MOV     H,A
0111 7e           MOV     A,M
0112 a7           ANA     A
0113 e1           POP     H
0114 ca 36 01     JZ      $0136
0117 23           INX     H
0118 23           INX     H
0119 7e           MOV     A,M
011a 23           INX     H
011b 46           MOV     B,M
011c e6 fe        ANI     #$fe
011e 07           RLC
011f 07           RLC
0120 07           RLC
0121 5f           MOV     E,A
0122 16 00        MVI     D,#$00
0124 21 00 1c     LXI     H,#$1c00
0127 19           DAD     D
0128 eb           XCHG
0129 78           MOV     A,B
012a a7           ANA     A
012b c4 3b 01     CNZ     $013b
012e 2a 0b 20     LHLD    $200b
0131 06 10        MVI     B,#$10
0133 cd d3 15     CALL    $15d3
0136 af           XRA     A
0137 32 00 20     STA     $2000
013a c9           RET
013b 21 30 00     LXI     H,#$0030
013e 19           DAD     D
013f eb           XCHG
0140 c9           RET
0141 3a 68 20     LDA     $2068
0144 a7           ANA     A
0145 c8           RZ
0146 3a 00 20     LDA     $2000
0149 a7           ANA     A
014a c0           RNZ
014b 3a 67 20     LDA     $2067
014e 67           MOV     H,A
014f 3a 06 20     LDA     $2006
0152 16 02        MVI     D,#$02
0154 3c           INR     A
0155 fe 37        CPI     #$37
0157 cc a1 01     CZ      $01a1
015a 6f           MOV     L,A
015b 46           MOV     B,M
015c 05           DCR     B
015d c2 54 01     JNZ     $0154
0160 32 06 20     STA     $2006
0163 cd 7a 01     CALL    $017a
0166 61           MOV     H,C
0167 22 0b 20     SHLD    $200b
016a 7d           MOV     A,L
016b fe 28        CPI     #$28
016d da 71 19     JC      $1971
0170 7a           MOV     A,D
0171 32 04 20     STA     $2004
0174 3e 01        MVI     A,#$01
0176 32 00 20     STA     $2000
0179 c9           RET
017a 16 00        MVI     D,#$00
017c 7d           MOV     A,L
017d 21 09 20     LXI     H,#$2009
0180 46           MOV     B,M
0181 23           INX     H
0182 4e           MOV     C,M
0183 fe 0b        CPI     #$0b
0185 fa 94 01     JM      $0194
0188 de 0b        SBI     #$0b
018a 5f           MOV     E,A
018b 78           MOV     A,B
018c c6 10        ADI     #$10
018e 47           MOV     B,A
018f 7b           MOV     A,E
0190 14           INR     D
0191 c3 83 01     JMP     $0183
0194 68           MOV     L,B
0195 a7           ANA     A
0196 c8           RZ
0197 5f           MOV     E,A
0198 79           MOV     A,C
0199 c6 10        ADI     #$10
019b 4f           MOV     C,A
019c 7b           MOV     A,E
019d 3d           DCR     A
019e c3 95 01     JMP     $0195
01a1 15           DCR     D
01a2 ca cd 01     JZ      $01cd
01a5 21 06 20     LXI     H,#$2006
01a8 36 00        MVI     M,#$00
01aa 23           INX     H
01ab 4e           MOV     C,M
01ac 36 00        MVI     M,#$00
01ae cd d9 01     CALL    $01d9
01b1 21 05 20     LXI     H,#$2005
01b4 7e           MOV     A,M
01b5 3c           INR     A
01b6 e6 01        ANI     #$01
01b8 77           MOV     M,A
01b9 af           XRA     A
01ba 21 67 20     LXI     H,#$2067
01bd 66           MOV     H,M
01be c9           RET
01bf 00           NOP
01c0 21 00 21     LXI     H,#$2100
01c3 06 37        MVI     B,#$37
01c5 36 01        MVI     M,#$01
01c7 23           INX     H
01c8 05           DCR     B
01c9 c2 c5 01     JNZ     $01c5
01cc c9           RET
01cd e1           POP     H
01ce c9           RET
01cf 3e 01        MVI     A,#$01
01d1 06 e0        MVI     B,#$e0
01d3 21 02 24     LXI     H,#$2402
01d6 c3 cc 14     JMP     $14cc
01d9 23           INX     H
01da 46           MOV     B,M
01db 23           INX     H
01dc 79           MOV     A,C
01dd 86           ADD     M
01de 77           MOV     M,A
01df 23           INX     H
01e0 78           MOV     A,B
01e1 86           ADD     M
01e2 77           MOV     M,A
01e3 c9           RET
01e4 06 c0        MVI     B,#$c0
01e6 11 00 1b     LXI     D,#$1b00
01e9 21 00 20     LXI     H,#$2000
01ec c3 32 1a     JMP     $1a32
01ef 21 42 21     LXI     H,#$2142
01f2 c3 f8 01     JMP     $01f8
01f5 21 42 22     LXI     H,#$2242
01f8 0e 04        MVI     C,#$04
01fa 11 20 1d     LXI     D,#$1d20
01fd d5           PUSH    D
01fe 06 2c        MVI     B,#$2c
0200 cd 32 1a     CALL    $1a32
0203 d1           POP     D
0204 0d           DCR     C
0205 c2 fd 01     JNZ     $01fd
0208 c9           RET
0209 3e 01        MVI     A,#$01
020b c3 1b 02     JMP     $021b
020e 3e 01        MVI     A,#$01
0210 c3 14 02     JMP     $0214
0213 af           XRA     A
0214 11 42 22     LXI     D,#$2242
0217 c3 1e 02     JMP     $021e
021a af           XRA     A
021b 11 42 21     LXI     D,#$2142
021e 32 81 20     STA     $2081
0221 01 02 16     LXI     B,#$1602
0224 21 06 28     LXI     H,#$2806
0227 3e 04        MVI     A,#$04
0229 f5           PUSH    PSW
022a c5           PUSH    B
022b 3a 81 20     LDA     $2081
022e a7           ANA     A
022f c2 42 02     JNZ     $0242
0232 cd 69 1a     CALL    $1a69
0235 c1           POP     B
0236 f1           POP     PSW
0237 3d           DCR     A
0238 c8           RZ
0239 d5           PUSH    D
023a 11 e0 02     LXI     D,#$02e0
023d 19           DAD     D
023e d1           POP     D
023f c3 29 02     JMP     $0229
0242 cd 7c 14     CALL    $147c
0245 c3 35 02     JMP     $0235
0248 21 10 20     LXI     H,#$2010
024b 7e           MOV     A,M
024c fe ff        CPI     #$ff
024e c8           RZ
024f fe fe        CPI     #$fe
0251 ca 81 02     JZ      $0281
0254 23           INX     H
0255 46           MOV     B,M
0256 4f           MOV     C,A
0257 b0           ORA     B
0258 79           MOV     A,C
0259 c2 77 02     JNZ     $0277
025c 23           INX     H
025d 7e           MOV     A,M
025e a7           ANA     A
025f c2 88 02     JNZ     $0288
0262 23           INX     H
0263 5e           MOV     E,M
0264 23           INX     H
0265 56           MOV     D,M
0266 e5           PUSH    H
0267 eb           XCHG
0268 e5           PUSH    H
0269 21 6f 02     LXI     H,#$026f
026c e3           XTHL
026d d5           PUSH    D
026e e9           PCHL
026f e1           POP     H
0270 11 0c 00     LXI     D,#$000c
0273 19           DAD     D
0274 c3 4b 02     JMP     $024b
0277 05           DCR     B
0278 04           INR     B
0279 c2 7d 02     JNZ     $027d
027c 3d           DCR     A
027d 05           DCR     B
027e 70           MOV     M,B
027f 2b           DCX     H
0280 77           MOV     M,A
0281 11 10 00     LXI     D,#$0010
0284 19           DAD     D
0285 c3 4b 02     JMP     $024b
0288 35           DCR     M
0289 2b           DCX     H
028a 2b           DCX     H
028b c3 81 02     JMP     $0281
028e e1           POP     H
028f 23           INX     H
0290 7e           MOV     A,M
0291 fe ff        CPI     #$ff
0293 ca 3b 03     JZ      $033b
0296 23           INX     H
0297 35           DCR     M
0298 c0           RNZ
0299 47           MOV     B,A
029a af           XRA     A
029b 32 68 20     STA     $2068
029e 32 69 20     STA     $2069
02a1 3e 30        MVI     A,#$30
02a3 32 6a 20     STA     $206a
02a6 78           MOV     A,B
02a7 36 05        MVI     M,#$05
02a9 23           INX     H
02aa 35           DCR     M
02ab c2 9b 03     JNZ     $039b
02ae 2a 1a 20     LHLD    $201a
02b1 06 10        MVI     B,#$10
02b3 cd 24 14     CALL    $1424
02b6 21 10 20     LXI     H,#$2010
02b9 11 10 1b     LXI     D,#$1b10
02bc 06 10        MVI     B,#$10
02be cd 32 1a     CALL    $1a32
02c1 06 00        MVI     B,#$00
02c3 cd dc 19     CALL    $19dc
02c6 3a 6d 20     LDA     $206d
02c9 a7           ANA     A
02ca c0           RNZ
02cb 3a ef 20     LDA     $20ef
02ce a7           ANA     A
02cf c8           RZ
02d0 31 00 24     LXI     SP,#$2400
02d3 fb           EI
02d4 cd d7 19     CALL    $19d7
02d7 cd 2e 09     CALL    $092e
02da a7           ANA     A
02db ca 6d 16     JZ      $166d
02de cd e7 18     CALL    $18e7
02e1 7e           MOV     A,M
02e2 a7           ANA     A
02e3 ca 2c 03     JZ      $032c
02e6 3a ce 20     LDA     $20ce
02e9 a7           ANA     A
02ea ca 2c 03     JZ      $032c
02ed 3a 67 20     LDA     $2067
02f0 f5           PUSH    PSW
02f1 0f           RRC
02f2 da 32 03     JC      $0332
02f5 cd 0e 02     CALL    $020e
02f8 cd 78 08     CALL    $0878
02fb 73           MOV     M,E
02fc 23           INX     H
02fd 72           MOV     M,D
02fe 2b           DCX     H
02ff 2b           DCX     H
0300 70           MOV     M,B
0301 00           NOP
0302 cd e4 01     CALL    $01e4
0305 f1           POP     PSW
0306 0f           RRC
0307 3e 21        MVI     A,#$21
0309 06 00        MVI     B,#$00
030b d2 12 03     JNC     $0312
030e 06 20        MVI     B,#$20
0310 3e 22        MVI     A,#$22
0312 32 67 20     STA     $2067
0315 cd b6 0a     CALL    $0ab6
0318 af           XRA     A
0319 32 11 20     STA     $2011
031c 78           MOV     A,B
031d d3 05        OUT     #$05
031f 3c           INR     A
0320 32 98 20     STA     $2098
0323 cd d6 09     CALL    $09d6
0326 cd 7f 1a     CALL    $1a7f
0329 c3 f9 07     JMP     $07f9
032c cd 7f 1a     CALL    $1a7f
032f c3 17 08     JMP     $0817
0332 cd 09 02     CALL    $0209
0335 c3 f8 02     JMP     $02f8
0338 00           NOP
0339 00           NOP
033a 00           NOP
033b 21 68 20     LXI     H,#$2068
033e 36 01        MVI     M,#$01
0340 23           INX     H
0341 7e           MOV     A,M
0342 a7           ANA     A
0343 c3 b0 03     JMP     $03b0
0346 00           NOP
0347 2b           DCX     H
0348 36 01        MVI     M,#$01
034a 3a 1b 20     LDA     $201b
034d 47           MOV     B,A
034e 3a ef 20     LDA     $20ef
0351 a7           ANA     A
0352 c2 63 03     JNZ     $0363
0355 3a 1d 20     LDA     $201d
0358 0f           RRC
0359 da 81 03     JC      $0381
035c 0f           RRC
035d da 8e 03     JC      $038e
0360 c3 6f 03     JMP     $036f
0363 cd c0 17     CALL    $17c0
0366 07           RLC
0367 07           RLC
0368 da 81 03     JC      $0381
036b 07           RLC
036c da 8e 03     JC      $038e
036f 21 18 20     LXI     H,#$2018
0372 cd 3b 1a     CALL    $1a3b
0375 cd 47 1a     CALL    $1a47
0378 cd 39 14     CALL    $1439
037b 3e 00        MVI     A,#$00
037d 32 12 20     STA     $2012
0380 c9           RET
0381 78           MOV     A,B
0382 fe d9        CPI     #$d9
0384 ca 6f 03     JZ      $036f
0387 3c           INR     A
0388 32 1b 20     STA     $201b
038b c3 6f 03     JMP     $036f
038e 78           MOV     A,B
038f fe 30        CPI     #$30
0391 ca 6f 03     JZ      $036f
0394 3d           DCR     A
0395 32 1b 20     STA     $201b
0398 c3 6f 03     JMP     $036f
039b 3c           INR     A
039c e6 01        ANI     #$01
039e 32 15 20     STA     $2015
03a1 07           RLC
03a2 07           RLC
03a3 07           RLC
03a4 07           RLC
03a5 21 70 1c     LXI     H,#$1c70
03a8 85           ADD     L
03a9 6f           MOV     L,A
03aa 22 18 20     SHLD    $2018
03ad c3 6f 03     JMP     $036f
03b0 c2 4a 03     JNZ     $034a
03b3 23           INX     H
03b4 35           DCR     M
03b5 c2 4a 03     JNZ     $034a
03b8 c3 46 03     JMP     $0346
03bb 11 2a 20     LXI     D,#$202a
03be cd 06 1a     CALL    $1a06
03c1 e1           POP     H
03c2 d0           RNC
03c3 23           INX     H
03c4 7e           MOV     A,M
03c5 a7           ANA     A
03c6 c8           RZ
03c7 fe 01        CPI     #$01
03c9 ca fa 03     JZ      $03fa
03cc fe 02        CPI     #$02
03ce ca 0a 04     JZ      $040a
03d1 23           INX     H
03d2 fe 03        CPI     #$03
03d4 c2 2a 04     JNZ     $042a
03d7 35           DCR     M
03d8 ca 36 04     JZ      $0436
03db 7e           MOV     A,M
03dc fe 0f        CPI     #$0f
03de c0           RNZ
03df e5           PUSH    H
03e0 cd 30 04     CALL    $0430
03e3 cd 52 14     CALL    $1452
03e6 e1           POP     H
03e7 23           INX     H
03e8 34           INR     M
03e9 23           INX     H
03ea 23           INX     H
03eb 35           DCR     M
03ec 35           DCR     M
03ed 23           INX     H
03ee 35           DCR     M
03ef 35           DCR     M
03f0 35           DCR     M
03f1 23           INX     H
03f2 36 08        MVI     M,#$08
03f4 cd 30 04     CALL    $0430
03f7 c3 00 14     JMP     $1400
03fa 3c           INR     A
03fb 77           MOV     M,A
03fc 3a 1b 20     LDA     $201b
03ff c6 08        ADI     #$08
0401 32 2a 20     STA     $202a
0404 cd 30 04     CALL    $0430
0407 c3 00 14     JMP     $1400
040a cd 30 04     CALL    $0430
040d d5           PUSH    D
040e e5           PUSH    H
040f c5           PUSH    B
0410 cd 52 14     CALL    $1452
0413 c1           POP     B
0414 e1           POP     H
0415 d1           POP     D
0416 3a 2c 20     LDA     $202c
0419 85           ADD     L
041a 6f           MOV     L,A
041b 32 29 20     STA     $2029
041e cd 91 14     CALL    $1491
0421 3a 61 20     LDA     $2061
0424 a7           ANA     A
0425 c8           RZ
0426 32 02 20     STA     $2002
0429 c9           RET
042a fe 05        CPI     #$05
042c c8           RZ
042d c3 36 04     JMP     $0436
0430 21 27 20     LXI     H,#$2027
0433 c3 3b 1a     JMP     $1a3b
0436 cd 30 04     CALL    $0430
0439 cd 52 14     CALL    $1452
043c 21 25 20     LXI     H,#$2025
043f 11 25 1b     LXI     D,#$1b25
0442 06 07        MVI     B,#$07
0444 cd 32 1a     CALL    $1a32
0447 2a 8d 20     LHLD    $208d
044a 2c           INR     L
044b 7d           MOV     A,L
044c fe 63        CPI     #$63
044e da 53 04     JC      $0453
0451 2e           MVI     L,#$54
0452 54           MOV     D,H
0453 22 8d 20     SHLD    $208d
0456 2a 8f 20     LHLD    $208f
0459 2c           INR     L
045a 22 8f 20     SHLD    $208f
045d 3a 84 20     LDA     $2084
0460 a7           ANA     A
0461 c0           RNZ
0462 7e           MOV     A,M
0463 e6 01        ANI     #$01
0465 01 29 02     LXI     B,#$0229
0468 c2 6e 04     JNZ     $046e
046b 01 e0 fe     LXI     B,#$fee0
046e 21 8a 20     LXI     H,#$208a
0471 71           MOV     M,C
0472 23           INX     H
0473 23           INX     H
0474 70           MOV     M,B
0475 c9           RET
0476 e1           POP     H
0477 3a 32 1b     LDA     $1b32
047a 32 32 20     STA     $2032
047d 2a 38 20     LHLD    $2038
0480 7d           MOV     A,L
0481 b4           ORA     H
0482 c2 8a 04     JNZ     $048a
0485 2b           DCX     H
0486 22 38 20     SHLD    $2038
0489 c9           RET
048a 11 35 20     LXI     D,#$2035
048d 3e f9        MVI     A,#$f9
048f cd 50 05     CALL    $0550
0492 3a 46 20     LDA     $2046
0495 32 70 20     STA     $2070
0498 3a 56 20     LDA     $2056
049b 32 71 20     STA     $2071
049e cd 63 05     CALL    $0563
04a1 3a 78 20     LDA     $2078
04a4 a7           ANA     A
04a5 21 35 20     LXI     H,#$2035
04a8 c2 5b 05     JNZ     $055b
04ab 11 30 1b     LXI     D,#$1b30
04ae 21 30 20     LXI     H,#$2030
04b1 06 10        MVI     B,#$10
04b3 c3 32 1a     JMP     $1a32
04b6 e1           POP     H
04b7 3a 6e 20     LDA     $206e
04ba a7           ANA     A
04bb c0           RNZ
04bc 3a 80 20     LDA     $2080
04bf fe 01        CPI     #$01
04c1 c0           RNZ
04c2 11 45 20     LXI     D,#$2045
04c5 3e ed        MVI     A,#$ed
04c7 cd 50 05     CALL    $0550
04ca 3a 36 20     LDA     $2036
04cd 32 70 20     STA     $2070
04d0 3a 56 20     LDA     $2056
04d3 32 71 20     STA     $2071
04d6 cd 63 05     CALL    $0563
04d9 3a 76 20     LDA     $2076
04dc fe 10        CPI     #$10
04de da e7 04     JC      $04e7
04e1 3a 48 1b     LDA     $1b48
04e4 32 76 20     STA     $2076
04e7 3a 78 20     LDA     $2078
04ea a7           ANA     A
04eb 21 45 20     LXI     H,#$2045
04ee c2 5b 05     JNZ     $055b
04f1 11 40 1b     LXI     D,#$1b40
04f4 21 40 20     LXI     H,#$2040
04f7 06 10        MVI     B,#$10
04f9 cd 32 1a     CALL    $1a32
04fc 3a 82 20     LDA     $2082
04ff 3d           DCR     A
0500 c2 08 05     JNZ     $0508
0503 3e 01        MVI     A,#$01
0505 32 6e 20     STA     $206e
0508 2a 76 20     LHLD    $2076
050b c3 7e 06     JMP     $067e
050e e1           POP     H
050f 11 55 20     LXI     D,#$2055
0512 3e db        MVI     A,#$db
0514 cd 50 05     CALL    $0550
0517 3a 46 20     LDA     $2046
051a 32 70 20     STA     $2070
051d 3a 36 20     LDA     $2036
0520 32 71 20     STA     $2071
0523 cd 63 05     CALL    $0563
0526 3a 76 20     LDA     $2076
0529 fe 15        CPI     #$15
052b da 34 05     JC      $0534
052e 3a 58 1b     LDA     $1b58
0531 32 76 20     STA     $2076
0534 3a 78 20     LDA     $2078
0537 a7           ANA     A
0538 21 55 20     LXI     H,#$2055
053b c2 5b 05     JNZ     $055b
053e 11 50 1b     LXI     D,#$1b50
0541 21 50 20     LXI     H,#$2050
0544 06 10        MVI     B,#$10
0546 cd 32 1a     CALL    $1a32
0549 2a 76 20     LHLD    $2076
054c 22 58 20     SHLD    $2058
054f c9           RET
0550 32 7f 20     STA     $207f
0553 21 73 20     LXI     H,#$2073
0556 06 0b        MVI     B,#$0b
0558 c3 32 1a     JMP     $1a32
055b 11 73 20     LXI     D,#$2073
055e 06 0b        MVI     B,#$0b
0560 c3 32 1a     JMP     $1a32
0563 21 73 20     LXI     H,#$2073
0566 7e           MOV     A,M
0567 e6 80        ANI     #$80
0569 c2 c1 05     JNZ     $05c1
056c 3a c1 20     LDA     $20c1
056f fe 04        CPI     #$04
0571 3a 69 20     LDA     $2069
0574 ca b7 05     JZ      $05b7
0577 a7           ANA     A
0578 c8           RZ
0579 23           INX     H
057a 36 00        MVI     M,#$00
057c 3a 70 20     LDA     $2070
057f a7           ANA     A
0580 ca 89 05     JZ      $0589
0583 47           MOV     B,A
0584 3a cf 20     LDA     $20cf
0587 b8           CMP     B
0588 d0           RNC
0589 3a 71 20     LDA     $2071
058c a7           ANA     A
058d ca 96 05     JZ      $0596
0590 47           MOV     B,A
0591 3a cf 20     LDA     $20cf
0594 b8           CMP     B
0595 d0           RNC
0596 23           INX     H
0597 7e           MOV     A,M
0598 a7           ANA     A
0599 ca 1b 06     JZ      $061b
059c 2a 76 20     LHLD    $2076
059f 4e           MOV     C,M
05a0 23           INX     H
05a1 00           NOP
05a2 22 76 20     SHLD    $2076
05a5 cd 2f 06     CALL    $062f
05a8 d0           RNC
05a9 cd 7a 01     CALL    $017a
05ac 79           MOV     A,C
05ad c6 07        ADI     #$07
05af 67           MOV     H,A
05b0 7d           MOV     A,L
05b1 d6 0a        SUI     #$0a
05b3 6f           MOV     L,A
05b4 22 7b 20     SHLD    $207b
05b7 21 73 20     LXI     H,#$2073
05ba 7e           MOV     A,M
05bb f6 80        ORI     D8,80
05bd 77           MOV     M,A
05be 23           INX     H
05bf 34           INR     M
05c0 c9           RET
05c1 11 7c 20     LXI     D,#$207c
05c4 cd 06 1a     CALL    $1a06
05c7 d0           RNC
05c8 23           INX     H
05c9 7e           MOV     A,M
05ca e6 01        ANI     #$01
05cc c2 44 06     JNZ     $0644
05cf 23           INX     H
05d0 34           INR     M
05d1 cd 75 06     CALL    $0675
05d4 3a 79 20     LDA     $2079
05d7 c6 03        ADI     #$03
05d9 21 7f 20     LXI     H,#$207f
05dc be           CMP     M
05dd da e2 05     JC      $05e2
05e0 d6 0c        SUI     #$0c
05e2 32 79 20     STA     $2079
05e5 3a 7b 20     LDA     $207b
05e8 47           MOV     B,A
05e9 3a 7e 20     LDA     $207e
05ec 80           ADD     B
05ed 32 7b 20     STA     $207b
05f0 cd 6c 06     CALL    $066c
05f3 3a 7b 20     LDA     $207b
05f6 fe 15        CPI     #$15
05f8 da 12 06     JC      $0612
05fb 3a 61 20     LDA     $2061
05fe a7           ANA     A
05ff c8           RZ
0600 3a 7b 20     LDA     $207b
0603 fe 1e        CPI     #$1e
0605 da 12 06     JC      $0612
0608 fe 27        CPI     #$27
060a 00           NOP
060b d2 12 06     JNC     $0612
060e 97           SUB     A
060f 32 15 20     STA     $2015
0612 3a 73 20     LDA     $2073
0615 f6 01        ORI     D8,01
0617 32 73 20     STA     $2073
061a c9           RET
061b 3a 1b 20     LDA     $201b
061e c6 08        ADI     #$08
0620 67           MOV     H,A
0621 cd 6f 15     CALL    $156f
0624 79           MOV     A,C
0625 fe 0c        CPI     #$0c
0627 da a5 05     JC      $05a5
062a 0e 0b        MVI     C,#$0b
062c c3 a5 05     JMP     $05a5
062f 0d           DCR     C
0630 3a 67 20     LDA     $2067
0633 67           MOV     H,A
0634 69           MOV     L,C
0635 16 05        MVI     D,#$05
0637 7e           MOV     A,M
0638 a7           ANA     A
0639 37           STC
063a c0           RNZ
063b 7d           MOV     A,L
063c c6 0b        ADI     #$0b
063e 6f           MOV     L,A
063f 15           DCR     D
0640 c2 37 06     JNZ     $0637
0643 c9           RET
0644 21 78 20     LXI     H,#$2078
0647 35           DCR     M
0648 7e           MOV     A,M
0649 fe 03        CPI     #$03
064b c2 67 06     JNZ     $0667
064e cd 75 06     CALL    $0675
0651 21 dc 1c     LXI     H,#$1cdc
0654 22 79 20     SHLD    $2079
0657 21 7c 20     LXI     H,#$207c
065a 35           DCR     M
065b 35           DCR     M
065c 2b           DCX     H
065d 35           DCR     M
065e 35           DCR     M
065f 3e 06        MVI     A,#$06
0661 32 7d 20     STA     $207d
0664 c3 6c 06     JMP     $066c
0667 a7           ANA     A
0668 c0           RNZ
0669 c3 75 06     JMP     $0675
066c 21 79 20     LXI     H,#$2079
066f cd 3b 1a     CALL    $1a3b
0672 c3 91 14     JMP     $1491
0675 21 79 20     LXI     H,#$2079
0678 cd 3b 1a     CALL    $1a3b
067b c3 52 14     JMP     $1452
067e 22 48 20     SHLD    $2048
0681 c9           RET
0682 e1           POP     H
0683 3a 80 20     LDA     $2080
0686 fe 02        CPI     #$02
0688 c0           RNZ
0689 21 83 20     LXI     H,#$2083
068c 7e           MOV     A,M
068d a7           ANA     A
068e ca 0f 05     JZ      $050f
0691 3a 56 20     LDA     $2056
0694 a7           ANA     A
0695 c2 0f 05     JNZ     $050f
0698 23           INX     H
0699 7e           MOV     A,M
069a a7           ANA     A
069b c2 ab 06     JNZ     $06ab
069e 3a 82 20     LDA     $2082
06a1 fe 08        CPI     #$08
06a3 da 0f 05     JC      $050f
06a6 36 01        MVI     M,#$01
06a8 cd 3c 07     CALL    $073c
06ab 11 8a 20     LXI     D,#$208a
06ae cd 06 1a     CALL    $1a06
06b1 d0           RNC
06b2 21 85 20     LXI     H,#$2085
06b5 7e           MOV     A,M
06b6 a7           ANA     A
06b7 c2 d6 06     JNZ     $06d6
06ba 21 8a 20     LXI     H,#$208a
06bd 7e           MOV     A,M
06be 23           INX     H
06bf 23           INX     H
06c0 86           ADD     M
06c1 32 8a 20     STA     $208a
06c4 cd 3c 07     CALL    $073c
06c7 21 8a 20     LXI     H,#$208a
06ca 7e           MOV     A,M
06cb fe 28        CPI     #$28
06cd da f9 06     JC      $06f9
06d0 fe e1        CPI     #$e1
06d2 d2 f9 06     JNC     $06f9
06d5 c9           RET
06d6 06 fe        MVI     B,#$fe
06d8 cd dc 19     CALL    $19dc
06db 23           INX     H
06dc 35           DCR     M
06dd 7e           MOV     A,M
06de fe 1f        CPI     #$1f
06e0 ca 4b 07     JZ      $074b
06e3 fe 18        CPI     #$18
06e5 ca 0c 07     JZ      $070c
06e8 a7           ANA     A
06e9 c0           RNZ
06ea 06 ef        MVI     B,#$ef
06ec 21 98 20     LXI     H,#$2098
06ef 7e           MOV     A,M
06f0 a0           ANA     B
06f1 77           MOV     M,A
06f2 e6 20        ANI     #$20
06f4 d3 05        OUT     #$05
06f6 00           NOP
06f7 00           NOP
06f8 00           NOP
06f9 cd 42 07     CALL    $0742
06fc cd cb 14     CALL    $14cb
06ff 21 83 20     LXI     H,#$2083
0702 06 0a        MVI     B,#$0a
0704 cd 5f 07     CALL    $075f
0707 06 fe        MVI     B,#$fe
0709 c3 dc 19     JMP     $19dc
070c 3e 01        MVI     A,#$01
070e 32 f1 20     STA     $20f1
0711 2a 8d 20     LHLD    $208d
0714 46           MOV     B,M
0715 0e 04        MVI     C,#$04
0717 21 50 1d     LXI     H,#$1d50
071a 11 4c 1d     LXI     D,#$1d4c
071d 1a           LDAX    D
071e b8           CMP     B
071f ca 28 07     JZ      $0728
0722 23           INX     H
0723 13           INX     D
0724 0d           DCR     C
0725 c2 1d 07     JNZ     $071d
0728 7e           MOV     A,M
0729 32 87 20     STA     $2087
072c 26 00        MVI     H,#$00
072e 68           MOV     L,B
072f 29           DAD     H
0730 29           DAD     H
0731 29           DAD     H
0732 29           DAD     H
0733 22 f2 20     SHLD    $20f2
0736 cd 42 07     CALL    $0742
0739 c3 f1 08     JMP     $08f1
073c cd 42 07     CALL    $0742
073f c3 39 14     JMP     $1439
0742 21 87 20     LXI     H,#$2087
0745 cd 3b 1a     CALL    $1a3b
0748 c3 47 1a     JMP     $1a47
074b 06 10        MVI     B,#$10
074d 21 98 20     LXI     H,#$2098
0750 7e           MOV     A,M
0751 b0           ORA     B
0752 77           MOV     M,A
0753 cd 70 17     CALL    $1770
0756 21 7c 1d     LXI     H,#$1d7c
0759 22 87 20     SHLD    $2087
075c c3 3c 07     JMP     $073c
075f 11 83 1b     LXI     D,#$1b83
0762 c3 32 1a     JMP     $1a32
0765 3e 01        MVI     A,#$01
0767 32 93 20     STA     $2093
076a 31 00 24     LXI     SP,#$2400
076d fb           EI
076e cd 79 19     CALL    $1979
0771 cd d6 09     CALL    $09d6
0774 21 13 30     LXI     H,#$3013
0777 11 f3 1f     LXI     D,#$1ff3
077a 0e 04        MVI     C,#$04
077c cd f3 08     CALL    $08f3
077f 3a eb 20     LDA     $20eb
0782 3d           DCR     A
0783 21 10 28     LXI     H,#$2810
0786 0e 14        MVI     C,#$14
0788 c2 57 08     JNZ     $0857
078b 11 cf 1a     LXI     D,#$1acf
078e cd f3 08     CALL    $08f3
0791 db 01        IN      #$01
0793 e6 04        ANI     #$04
0795 ca 7f 07     JZ      $077f
0798 06 99        MVI     B,#$99
079a af           XRA     A
079b 32 ce 20     STA     $20ce
079e 3a eb 20     LDA     $20eb
07a1 80           ADD     B
07a2 27           DAA
07a3 32 eb 20     STA     $20eb
07a6 cd 47 19     CALL    $1947
07a9 21 00 00     LXI     H,#$0000
07ac 22 f8 20     SHLD    $20f8
07af 22 fc 20     SHLD    $20fc
07b2 cd 25 19     CALL    $1925
07b5 cd 2b 19     CALL    $192b
07b8 cd d7 19     CALL    $19d7
07bb 21 01 01     LXI     H,#$0101
07be 7c           MOV     A,H
07bf 32 ef 20     STA     $20ef
07c2 22 e7 20     SHLD    $20e7
07c5 22 e5 20     SHLD    $20e5
07c8 cd 56 19     CALL    $1956
07cb cd ef 01     CALL    $01ef
07ce cd f5 01     CALL    $01f5
07d1 cd d1 08     CALL    $08d1
07d4 32 ff 21     STA     $21ff
07d7 32 ff 22     STA     $22ff
07da cd d7 00     CALL    $00d7
07dd af           XRA     A
07de 32 fe 21     STA     $21fe
07e1 32 fe 22     STA     $22fe
07e4 cd c0 01     CALL    $01c0
07e7 cd 04 19     CALL    $1904
07ea 21 78 38     LXI     H,#$3878
07ed 22 fc 21     SHLD    $21fc
07f0 22 fc 22     SHLD    $22fc
07f3 cd e4 01     CALL    $01e4
07f6 cd 7f 1a     CALL    $1a7f
07f9 cd 8d 08     CALL    $088d
07fc cd d6 09     CALL    $09d6
07ff 00           NOP
0800 af           XRA     A
0801 32 c1 20     STA     $20c1
0804 cd cf 01     CALL    $01cf
0807 3a 67 20     LDA     $2067
080a 0f           RRC
080b da 72 08     JC      $0872
080e cd 13 02     CALL    $0213
0811 cd cf 01     CALL    $01cf
0814 cd b1 00     CALL    $00b1
0817 cd d1 19     CALL    $19d1
081a 06 20        MVI     B,#$20
081c cd fa 18     CALL    $18fa
081f cd 18 16     CALL    $1618
0822 cd 0a 19     CALL    $190a
0825 cd f3 15     CALL    $15f3
0828 cd 88 09     CALL    $0988
082b 3a 82 20     LDA     $2082
082e a7           ANA     A
082f ca ef 09     JZ      $09ef
0832 cd 0e 17     CALL    $170e
0835 cd 35 09     CALL    $0935
0838 cd d8 08     CALL    $08d8
083b cd 2c 17     CALL    $172c
083e cd 59 0a     CALL    $0a59
0841 ca 49 08     JZ      $0849
0844 06 04        MVI     B,#$04
0846 cd fa 18     CALL    $18fa
0849 cd 75 17     CALL    $1775
084c d3 06        OUT     #$06
084e cd 04 18     CALL    $1804
0851 c3 1f 08     JMP     $081f
0854 00           NOP
0855 00           NOP
0856 00           NOP
0857 11 ba 1a     LXI     D,#$1aba
085a cd f3 08     CALL    $08f3
085d 06 98        MVI     B,#$98
085f db 01        IN      #$01
0861 0f           RRC
0862 0f           RRC
0863 da 6d 08     JC      $086d
0866 0f           RRC
0867 da 98 07     JC      $0798
086a c3 7f 07     JMP     $077f
086d 3e 01        MVI     A,#$01
086f c3 9b 07     JMP     $079b
0872 cd 1a 02     CALL    $021a
0875 c3 14 08     JMP     $0814
0878 3a 08 20     LDA     $2008
087b 47           MOV     B,A
087c 2a 09 20     LHLD    $2009
087f eb           XCHG
0880 c3 86 08     JMP     $0886
0883 00           NOP
0884 00           NOP
0885 00           NOP
0886 3a 67 20     LDA     $2067
0889 67           MOV     H,A
088a 2e           MVI     L,#$fc
088b fc c9 21     CM      $21c9
088e 11 2b 11     LXI     D,#$112b
0891 70           MOV     M,B
0892 1b           DCX     D
0893 0e 0e        MVI     C,#$0e
0895 cd f3 08     CALL    $08f3
0898 3a 67 20     LDA     $2067
089b 0f           RRC
089c 3e 1c        MVI     A,#$1c
089e 21 11 37     LXI     H,#$3711
08a1 d4 ff 08     CNC     $08ff
08a4 3e b0        MVI     A,#$b0
08a6 32 c0 20     STA     $20c0
08a9 3a c0 20     LDA     $20c0
08ac a7           ANA     A
08ad c8           RZ
08ae e6 04        ANI     #$04
08b0 c2 bc 08     JNZ     $08bc
08b3 cd ca 09     CALL    $09ca
08b6 cd 31 19     CALL    $1931
08b9 c3 a9 08     JMP     $08a9
08bc 06 20        MVI     B,#$20
08be 21 1c 27     LXI     H,#$271c
08c1 3a 67 20     LDA     $2067
08c4 0f           RRC
08c5 da cb 08     JC      $08cb
08c8 21 1c 39     LXI     H,#$391c
08cb cd cb 14     CALL    $14cb
08ce c3 a9 08     JMP     $08a9
08d1 db 02        IN      #$02
08d3 e6 03        ANI     #$03
08d5 c6 03        ADI     #$03
08d7 c9           RET
08d8 3a 82 20     LDA     $2082
08db fe 09        CPI     #$09
08dd d0           RNC
08de 3e fb        MVI     A,#$fb
08e0 32 7e 20     STA     $207e
08e3 c9           RET
08e4 3a ce 20     LDA     $20ce
08e7 a7           ANA     A
08e8 c0           RNZ
08e9 21 1c 39     LXI     H,#$391c
08ec 06 20        MVI     B,#$20
08ee c3 cb 14     JMP     $14cb
08f1 0e 03        MVI     C,#$03
08f3 1a           LDAX    D
08f4 d5           PUSH    D
08f5 cd ff 08     CALL    $08ff
08f8 d1           POP     D
08f9 13           INX     D
08fa 0d           DCR     C
08fb c2 f3 08     JNZ     $08f3
08fe c9           RET
08ff 11 00 1e     LXI     D,#$1e00
0902 e5           PUSH    H
0903 26 00        MVI     H,#$00
0905 6f           MOV     L,A
0906 29           DAD     H
0907 29           DAD     H
0908 29           DAD     H
0909 19           DAD     D
090a eb           XCHG
090b e1           POP     H
090c 06 08        MVI     B,#$08
090e d3 06        OUT     #$06
0910 c3 39 14     JMP     $1439
0913 3a 09 20     LDA     $2009
0916 fe 78        CPI     #$78
0918 d0           RNC
0919 2a 91 20     LHLD    $2091
091c 7d           MOV     A,L
091d b4           ORA     H
091e c2 29 09     JNZ     $0929
0921 21 00 06     LXI     H,#$0600
0924 3e 01        MVI     A,#$01
0926 32 83 20     STA     $2083
0929 2b           DCX     H
092a 22 91 20     SHLD    $2091
092d c9           RET
092e cd 11 16     CALL    $1611
0931 2e           MVI     L,#$ff
0932 ff           RST     7
0933 7e           MOV     A,M
0934 c9           RET
0935 cd 10 19     CALL    $1910
0938 2b           DCX     H
0939 2b           DCX     H
093a 7e           MOV     A,M
093b a7           ANA     A
093c c8           RZ
093d 06 15        MVI     B,#$15
093f db 02        IN      #$02
0941 e6 08        ANI     #$08
0943 ca 48 09     JZ      $0948
0946 06 10        MVI     B,#$10
0948 cd ca 09     CALL    $09ca
094b 23           INX     H
094c 7e           MOV     A,M
094d b8           CMP     B
094e d8           RC
094f cd 2e 09     CALL    $092e
0952 34           INR     M
0953 7e           MOV     A,M
0954 f5           PUSH    PSW
0955 21 01 25     LXI     H,#$2501
0958 24           INR     H
0959 24           INR     H
095a 3d           DCR     A
095b c2 58 09     JNZ     $0958
095e 06 10        MVI     B,#$10
0960 11 60 1c     LXI     D,#$1c60
0963 cd 39 14     CALL    $1439
0966 f1           POP     PSW
0967 3c           INR     A
0968 cd 8b 1a     CALL    $1a8b
096b cd 10 19     CALL    $1910
096e 2b           DCX     H
096f 2b           DCX     H
0970 36 00        MVI     M,#$00
0972 3e ff        MVI     A,#$ff
0974 32 99 20     STA     $2099
0977 06 10        MVI     B,#$10
0979 c3 fa 18     JMP     $18fa
097c 21 a0 1d     LXI     H,#$1da0
097f fe 02        CPI     #$02
0981 d8           RC
0982 23           INX     H
0983 fe 04        CPI     #$04
0985 d8           RC
0986 23           INX     H
0987 c9           RET
0988 cd ca 09     CALL    $09ca
098b 3a f1 20     LDA     $20f1
098e a7           ANA     A
098f c8           RZ
0990 af           XRA     A
0991 32 f1 20     STA     $20f1
0994 e5           PUSH    H
0995 2a f2 20     LHLD    $20f2
0998 eb           XCHG
0999 e1           POP     H
099a 7e           MOV     A,M
099b 83           ADD     E
099c 27           DAA
099d 77           MOV     M,A
099e 5f           MOV     E,A
099f 23           INX     H
09a0 7e           MOV     A,M
09a1 8a           ADC     D
09a2 27           DAA
09a3 77           MOV     M,A
09a4 57           MOV     D,A
09a5 23           INX     H
09a6 7e           MOV     A,M
09a7 23           INX     H
09a8 66           MOV     H,M
09a9 6f           MOV     L,A
09aa c3 ad 09     JMP     $09ad
09ad 7a           MOV     A,D
09ae cd b2 09     CALL    $09b2
09b1 7b           MOV     A,E
09b2 d5           PUSH    D
09b3 f5           PUSH    PSW
09b4 0f           RRC
09b5 0f           RRC
09b6 0f           RRC
09b7 0f           RRC
09b8 e6 0f        ANI     #$0f
09ba cd c5 09     CALL    $09c5
09bd f1           POP     PSW
09be e6 0f        ANI     #$0f
09c0 cd c5 09     CALL    $09c5
09c3 d1           POP     D
09c4 c9           RET
09c5 c6 1a        ADI     #$1a
09c7 c3 ff 08     JMP     $08ff
09ca 3a 67 20     LDA     $2067
09cd 0f           RRC
09ce 21 f8 20     LXI     H,#$20f8
09d1 d8           RC
09d2 21 fc 20     LXI     H,#$20fc
09d5 c9           RET
09d6 21 02 24     LXI     H,#$2402
09d9 36 00        MVI     M,#$00
09db 23           INX     H
09dc 7d           MOV     A,L
09dd e6 1f        ANI     #$1f
09df fe 1c        CPI     #$1c
09e1 da e8 09     JC      $09e8
09e4 11 06 00     LXI     D,#$0006
09e7 19           DAD     D
09e8 7c           MOV     A,H
09e9 fe 40        CPI     #$40
09eb da d9 09     JC      $09d9
09ee c9           RET
09ef cd 3c 0a     CALL    $0a3c
09f2 af           XRA     A
09f3 32 e9 20     STA     $20e9
09f6 cd d6 09     CALL    $09d6
09f9 3a 67 20     LDA     $2067
09fc f5           PUSH    PSW
09fd cd e4 01     CALL    $01e4
0a00 f1           POP     PSW
0a01 32 67 20     STA     $2067
0a04 3a 67 20     LDA     $2067
0a07 67           MOV     H,A
0a08 e5           PUSH    H
0a09 2e           MVI     L,#$fe
0a0a fe 7e        CPI     #$7e
0a0c e6 07        ANI     #$07
0a0e 3c           INR     A
0a0f 77           MOV     M,A
0a10 21 a2 1d     LXI     H,#$1da2
0a13 23           INX     H
0a14 3d           DCR     A
0a15 c2 13 0a     JNZ     $0a13
0a18 7e           MOV     A,M
0a19 e1           POP     H
0a1a 2e           MVI     L,#$fc
0a1b fc 77 23     CM      $2377
0a1e 36 38        MVI     M,#$38
0a20 7c           MOV     A,H
0a21 0f           RRC
0a22 da 33 0a     JC      $0a33
0a25 3e 21        MVI     A,#$21
0a27 32 98 20     STA     $2098
0a2a cd f5 01     CALL    $01f5
0a2d cd 04 19     CALL    $1904
0a30 c3 04 08     JMP     $0804
0a33 cd ef 01     CALL    $01ef
0a36 cd c0 01     CALL    $01c0
0a39 c3 04 08     JMP     $0804
0a3c cd 59 0a     CALL    $0a59
0a3f c2 52 0a     JNZ     $0a52
0a42 3e 30        MVI     A,#$30
0a44 32 c0 20     STA     $20c0
0a47 3a c0 20     LDA     $20c0
0a4a a7           ANA     A
0a4b c8           RZ
0a4c cd 59 0a     CALL    $0a59
0a4f ca 47 0a     JZ      $0a47
0a52 cd 59 0a     CALL    $0a59
0a55 c2 52 0a     JNZ     $0a52
0a58 c9           RET
0a59 3a 15 20     LDA     $2015
0a5c fe ff        CPI     #$ff
0a5e c9           RET
0a5f 3a ef 20     LDA     $20ef
0a62 a7           ANA     A
0a63 ca 7c 0a     JZ      $0a7c
0a66 48           MOV     C,B
0a67 06 08        MVI     B,#$08
0a69 cd fa 18     CALL    $18fa
0a6c 41           MOV     B,C
0a6d 78           MOV     A,B
0a6e cd 7c 09     CALL    $097c
0a71 7e           MOV     A,M
0a72 21 f3 20     LXI     H,#$20f3
0a75 36 00        MVI     M,#$00
0a77 2b           DCX     H
0a78 77           MOV     M,A
0a79 2b           DCX     H
0a7a 36 01        MVI     M,#$01
0a7c 21 62 20     LXI     H,#$2062
0a7f c9           RET
0a80 3e 02        MVI     A,#$02
0a82 32 c1 20     STA     $20c1
0a85 d3 06        OUT     #$06
0a87 3a cb 20     LDA     $20cb
0a8a a7           ANA     A
0a8b ca 85 0a     JZ      $0a85
0a8e af           XRA     A
0a8f 32 c1 20     STA     $20c1
0a92 c9           RET
0a93 d5           PUSH    D
0a94 1a           LDAX    D
0a95 cd ff 08     CALL    $08ff
0a98 d1           POP     D
0a99 3e 07        MVI     A,#$07
0a9b 32 c0 20     STA     $20c0
0a9e 3a c0 20     LDA     $20c0
0aa1 3d           DCR     A
0aa2 c2 9e 0a     JNZ     $0a9e
0aa5 13           INX     D
0aa6 0d           DCR     C
0aa7 c2 93 0a     JNZ     $0a93
0aaa c9           RET
0aab 21 50 20     LXI     H,#$2050
0aae c3 4b 02     JMP     $024b
0ab1 3e 40        MVI     A,#$40
0ab3 c3 d7 0a     JMP     $0ad7
0ab6 3e 80        MVI     A,#$80
0ab8 c3 d7 0a     JMP     $0ad7
0abb e1           POP     H
0abc c3 72 00     JMP     $0072
0abf 3a c1 20     LDA     $20c1
0ac2 0f           RRC
0ac3 da bb 0a     JC      $0abb
0ac6 0f           RRC
0ac7 da 68 18     JC      $1868
0aca 0f           RRC
0acb da ab 0a     JC      $0aab
0ace c9           RET
0acf 21 14 2b     LXI     H,#$2b14
0ad2 0e 0f        MVI     C,#$0f
0ad4 c3 93 0a     JMP     $0a93
0ad7 32 c0 20     STA     $20c0
0ada 3a c0 20     LDA     $20c0
0add a7           ANA     A
0ade c2 da 0a     JNZ     $0ada
0ae1 c9           RET
0ae2 21 c2 20     LXI     H,#$20c2
0ae5 06 0c        MVI     B,#$0c
0ae7 c3 32 1a     JMP     $1a32
0aea af           XRA     A
0aeb d3 03        OUT     #$03
0aed d3 05        OUT     #$05
0aef cd 82 19     CALL    $1982
0af2 fb           EI
0af3 cd b1 0a     CALL    $0ab1
0af6 3a ec 20     LDA     $20ec
0af9 a7           ANA     A
0afa 21 17 30     LXI     H,#$3017
0afd 0e 04        MVI     C,#$04
0aff c2 e8 0b     JNZ     $0be8
0b02 11 fa 1c     LXI     D,#$1cfa
0b05 cd 93 0a     CALL    $0a93
0b08 11 af 1d     LXI     D,#$1daf
0b0b cd cf 0a     CALL    $0acf
0b0e cd b1 0a     CALL    $0ab1
0b11 cd 15 18     CALL    $1815
0b14 cd b6 0a     CALL    $0ab6
0b17 3a ec 20     LDA     $20ec
0b1a a7           ANA     A
0b1b c2 4a 0b     JNZ     $0b4a
0b1e 11 95 1a     LXI     D,#$1a95
0b21 cd e2 0a     CALL    $0ae2
0b24 cd 80 0a     CALL    $0a80
0b27 11 b0 1b     LXI     D,#$1bb0
0b2a cd e2 0a     CALL    $0ae2
0b2d cd 80 0a     CALL    $0a80
0b30 cd b1 0a     CALL    $0ab1
0b33 11 c9 1f     LXI     D,#$1fc9
0b36 cd e2 0a     CALL    $0ae2
0b39 cd 80 0a     CALL    $0a80
0b3c cd b1 0a     CALL    $0ab1
0b3f 21 b7 33     LXI     H,#$33b7
0b42 06 0a        MVI     B,#$0a
0b44 cd cb 14     CALL    $14cb
0b47 cd b6 0a     CALL    $0ab6
0b4a cd d6 09     CALL    $09d6
0b4d 3a ff 21     LDA     $21ff
0b50 a7           ANA     A
0b51 c2 5d 0b     JNZ     $0b5d
0b54 cd d1 08     CALL    $08d1
0b57 32 ff 21     STA     $21ff
0b5a cd 7f 1a     CALL    $1a7f
0b5d cd e4 01     CALL    $01e4
0b60 cd c0 01     CALL    $01c0
0b63 cd ef 01     CALL    $01ef
0b66 cd 1a 02     CALL    $021a
0b69 3e 01        MVI     A,#$01
0b6b 32 c1 20     STA     $20c1
0b6e cd cf 01     CALL    $01cf
0b71 cd 18 16     CALL    $1618
0b74 cd f1 0b     CALL    $0bf1
0b77 d3 06        OUT     #$06
0b79 cd 59 0a     CALL    $0a59
0b7c ca 71 0b     JZ      $0b71
0b7f af           XRA     A
0b80 32 25 20     STA     $2025
0b83 cd 59 0a     CALL    $0a59
0b86 c2 83 0b     JNZ     $0b83
0b89 af           XRA     A
0b8a 32 c1 20     STA     $20c1
0b8d cd b1 0a     CALL    $0ab1
0b90 cd 88 19     CALL    $1988
0b93 0e 0c        MVI     C,#$0c
0b95 21 11 2c     LXI     H,#$2c11
0b98 11 90 1f     LXI     D,#$1f90
0b9b cd f3 08     CALL    $08f3
0b9e 3a ec 20     LDA     $20ec
0ba1 fe 00        CPI     #$00
0ba3 c2 ae 0b     JNZ     $0bae
0ba6 21 11 33     LXI     H,#$3311
0ba9 3e 02        MVI     A,#$02
0bab cd ff 08     CALL    $08ff
0bae 01 9c 1f     LXI     B,#$1f9c
0bb1 cd 56 18     CALL    $1856
0bb4 cd 4c 18     CALL    $184c
0bb7 db 02        IN      #$02
0bb9 07           RLC
0bba da c3 0b     JC      $0bc3
0bbd 01 a0 1f     LXI     B,#$1fa0
0bc0 cd 3a 18     CALL    $183a
0bc3 cd b6 0a     CALL    $0ab6
0bc6 3a ec 20     LDA     $20ec
0bc9 fe 00        CPI     #$00
0bcb c2 da 0b     JNZ     $0bda
0bce 11 d5 1f     LXI     D,#$1fd5
0bd1 cd e2 0a     CALL    $0ae2
0bd4 cd 80 0a     CALL    $0a80
0bd7 cd 9e 18     CALL    $189e
0bda 21 ec 20     LXI     H,#$20ec
0bdd 7e           MOV     A,M
0bde 3c           INR     A
0bdf e6 01        ANI     #$01
0be1 77           MOV     M,A
0be2 cd d6 09     CALL    $09d6
0be5 c3 df 18     JMP     $18df
0be8 11 ab 1d     LXI     D,#$1dab
0beb cd 93 0a     CALL    $0a93
0bee c3 0b 0b     JMP     $0b0b
0bf1 cd 0a 19     CALL    $190a
0bf4 c3 9a 19     JMP     $199a
0bf7 13           INX     D
0bf8 00           NOP
0bf9 08           NOP
0bfa 13           INX     D
0bfb 0e 26        MVI     C,#$26
0bfd 02           STAX    B
0bfe 0e 0f        MVI     C,#$0f
0c00 00           NOP
0c01 00           NOP
0c02 00           NOP
0c03 00           NOP
0c04 00           NOP
0c05 00           NOP
0c06 00           NOP
0c07 00           NOP
0c08 00           NOP
0c09 00           NOP
0c0a 00           NOP
0c0b 00           NOP
0c0c 00           NOP
0c0d 00           NOP
0c0e 00           NOP
0c0f 00           NOP
0c10 00           NOP
0c11 00           NOP
0c12 00           NOP
0c13 00           NOP
0c14 00           NOP
0c15 00           NOP
0c16 00           NOP
0c17 00           NOP
0c18 00           NOP
0c19 00           NOP
0c1a 00           NOP
0c1b 00           NOP
0c1c 00           NOP
0c1d 00           NOP
0c1e 00           NOP
0c1f 00           NOP
0c20 00           NOP
0c21 00           NOP
0c22 00           NOP
0c23 00           NOP
0c24 00           NOP
0c25 00           NOP
0c26 00           NOP
0c27 00           NOP
0c28 00           NOP
0c29 00           NOP
0c2a 00           NOP
0c2b 00           NOP
0c2c 00           NOP
0c2d 00           NOP
0c2e 00           NOP
0c2f 00           NOP
0c30 00           NOP
0c31 00           NOP
0c32 00           NOP
0c33 00           NOP
0c34 00           NOP
0c35 00           NOP
0c36 00           NOP
0c37 00           NOP
0c38 00           NOP
0c39 00           NOP
0c3a 00           NOP
0c3b 00           NOP
0c3c 00           NOP
0c3d 00           NOP
0c3e 00           NOP
0c3f 00           NOP
0c40 00           NOP
0c41 00           NOP
0c42 00           NOP
0c43 00           NOP
0c44 00           NOP
0c45 00           NOP
0c46 00           NOP
0c47 00           NOP
0c48 00           NOP
0c49 00           NOP
0c4a 00           NOP
0c4b 00           NOP
0c4c 00           NOP
0c4d 00           NOP
0c4e 00           NOP
0c4f 00           NOP
0c50 00           NOP
0c51 00           NOP
0c52 00           NOP
0c53 00           NOP
0c54 00           NOP
0c55 00           NOP
0c56 00           NOP
0c57 00           NOP
0c58 00           NOP
0c59 00           NOP
0c5a 00           NOP
0c5b 00           NOP
0c5c 00           NOP
0c5d 00           NOP
0c5e 00           NOP
0c5f 00           NOP
0c60 00           NOP
0c61 00           NOP
0c62 00           NOP
0c63 00           NOP
0c64 00           NOP
0c65 00           NOP
0c66 00           NOP
0c67 00           NOP
0c68 00           NOP
0c69 00           NOP
0c6a 00           NOP
0c6b 00           NOP
0c6c 00           NOP
0c6d 00           NOP
0c6e 00           NOP
0c6f 00           NOP
0c70 00           NOP
0c71 00           NOP
0c72 00           NOP
0c73 00           NOP
0c74 00           NOP
0c75 00           NOP
0c76 00           NOP
0c77 00           NOP
0c78 00           NOP
0c79 00           NOP
0c7a 00           NOP
0c7b 00           NOP
0c7c 00           NOP
0c7d 00           NOP
0c7e 00           NOP
0c7f 00           NOP
0c80 00           NOP
0c81 00           NOP
0c82 00           NOP
0c83 00           NOP
0c84 00           NOP
0c85 00           NOP
0c86 00           NOP
0c87 00           NOP
0c88 00           NOP
0c89 00           NOP
0c8a 00           NOP
0c8b 00           NOP
0c8c 00           NOP
0c8d 00           NOP
0c8e 00           NOP
0c8f 00           NOP
0c90 00           NOP
0c91 00           NOP
0c92 00           NOP
0c93 00           NOP
0c94 00           NOP
0c95 00           NOP
0c96 00           NOP
0c97 00           NOP
0c98 00           NOP
0c99 00           NOP
0c9a 00           NOP
0c9b 00           NOP
0c9c 00           NOP
0c9d 00           NOP
0c9e 00           NOP
0c9f 00           NOP
0ca0 00           NOP
0ca1 00           NOP
0ca2 00           NOP
0ca3 00           NOP
0ca4 00           NOP
0ca5 00           NOP
0ca6 00           NOP
0ca7 00           NOP
0ca8 00           NOP
0ca9 00           NOP
0caa 00           NOP
0cab 00           NOP
0cac 00           NOP
0cad 00           NOP
0cae 00           NOP
0caf 00           NOP
0cb0 00           NOP
0cb1 00           NOP
0cb2 00           NOP
0cb3 00           NOP
0cb4 00           NOP
0cb5 00           NOP
0cb6 00           NOP
0cb7 00           NOP
0cb8 00           NOP
0cb9 00           NOP
0cba 00           NOP
0cbb 00           NOP
0cbc 00           NOP
0cbd 00           NOP
0cbe 00           NOP
0cbf 00           NOP
0cc0 00           NOP
0cc1 00           NOP
0cc2 00           NOP
0cc3 00           NOP
0cc4 00           NOP
0cc5 00           NOP
0cc6 00           NOP
0cc7 00           NOP
0cc8 00           NOP
0cc9 00           NOP
0cca 00           NOP
0ccb 00           NOP
0ccc 00           NOP
0ccd 00           NOP
0cce 00           NOP
0ccf 00           NOP
0cd0 00           NOP
0cd1 00           NOP
0cd2 00           NOP
0cd3 00           NOP
0cd4 00           NOP
0cd5 00           NOP
0cd6 00           NOP
0cd7 00           NOP
0cd8 00           NOP
0cd9 00           NOP
0cda 00           NOP
0cdb 00           NOP
0cdc 00           NOP
0cdd 00           NOP
0cde 00           NOP
0cdf 00           NOP
0ce0 00           NOP
0ce1 00           NOP
0ce2 00           NOP
0ce3 00           NOP
0ce4 00           NOP
0ce5 00           NOP
0ce6 00           NOP
0ce7 00           NOP
0ce8 00           NOP
0ce9 00           NOP
0cea 00           NOP
0ceb 00           NOP
0cec 00           NOP
0ced 00           NOP
0cee 00           NOP
0cef 00           NOP
0cf0 00           NOP
0cf1 00           NOP
0cf2 00           NOP
0cf3 00           NOP
0cf4 00           NOP
0cf5 00           NOP
0cf6 00           NOP
0cf7 00           NOP
0cf8 00           NOP
0cf9 00           NOP
0cfa 00           NOP
0cfb 00           NOP
0cfc 00           NOP
0cfd 00           NOP
0cfe 00           NOP
0cff 00           NOP
0d00 00           NOP
0d01 00           NOP
0d02 00           NOP
0d03 00           NOP
0d04 00           NOP
0d05 00           NOP
0d06 00           NOP
0d07 00           NOP
0d08 00           NOP
0d09 00           NOP
0d0a 00           NOP
0d0b 00           NOP
0d0c 00           NOP
0d0d 00           NOP
0d0e 00           NOP
0d0f 00           NOP
0d10 00           NOP
0d11 00           NOP
0d12 00           NOP
0d13 00           NOP
0d14 00           NOP
0d15 00           NOP
0d16 00           NOP
0d17 00           NOP
0d18 00           NOP
0d19 00           NOP
0d1a 00           NOP
0d1b 00           NOP
0d1c 00           NOP
0d1d 00           NOP
0d1e 00           NOP
0d1f 00           NOP
0d20 00           NOP
0d21 00           NOP
0d22 00           NOP
0d23 00           NOP
0d24 00           NOP
0d25 00           NOP
0d26 00           NOP
0d27 00           NOP
0d28 00           NOP
0d29 00           NOP
0d2a 00           NOP
0d2b 00           NOP
0d2c 00           NOP
0d2d 00           NOP
0d2e 00           NOP
0d2f 00           NOP
0d30 00           NOP
0d31 00           NOP
0d32 00           NOP
0d33 00           NOP
0d34 00           NOP
0d35 00           NOP
0d36 00           NOP
0d37 00           NOP
0d38 00           NOP
0d39 00           NOP
0d3a 00           NOP
0d3b 00           NOP
0d3c 00           NOP
0d3d 00           NOP
0d3e 00           NOP
0d3f 00           NOP
0d40 00           NOP
0d41 00           NOP
0d42 00           NOP
0d43 00           NOP
0d44 00           NOP
0d45 00           NOP
0d46 00           NOP
0d47 00           NOP
0d48 00           NOP
0d49 00           NOP
0d4a 00           NOP
0d4b 00           NOP
0d4c 00           NOP
0d4d 00           NOP
0d4e 00           NOP
0d4f 00           NOP
0d50 00           NOP
0d51 00           NOP
0d52 00           NOP
0d53 00           NOP
0d54 00           NOP
0d55 00           NOP
0d56 00           NOP
0d57 00           NOP
0d58 00           NOP
0d59 00           NOP
0d5a 00           NOP
0d5b 00           NOP
0d5c 00           NOP
0d5d 00           NOP
0d5e 00           NOP
0d5f 00           NOP
0d60 00           NOP
0d61 00           NOP
0d62 00           NOP
0d63 00           NOP
0d64 00           NOP
0d65 00           NOP
0d66 00           NOP
0d67 00           NOP
0d68 00           NOP
0d69 00           NOP
0d6a 00           NOP
0d6b 00           NOP
0d6c 00           NOP
0d6d 00           NOP
0d6e 00           NOP
0d6f 00           NOP
0d70 00           NOP
0d71 00           NOP
0d72 00           NOP
0d73 00           NOP
0d74 00           NOP
0d75 00           NOP
0d76 00           NOP
0d77 00           NOP
0d78 00           NOP
0d79 00           NOP
0d7a 00           NOP
0d7b 00           NOP
0d7c 00           NOP
0d7d 00           NOP
0d7e 00           NOP
0d7f 00           NOP
0d80 00           NOP
0d81 00           NOP
0d82 00           NOP
0d83 00           NOP
0d84 00           NOP
0d85 00           NOP
0d86 00           NOP
0d87 00           NOP
0d88 00           NOP
0d89 00           NOP
0d8a 00           NOP
0d8b 00           NOP
0d8c 00           NOP
0d8d 00           NOP
0d8e 00           NOP
0d8f 00           NOP
0d90 00           NOP
0d91 00           NOP
0d92 00           NOP
0d93 00           NOP
0d94 00           NOP
0d95 00           NOP
0d96 00           NOP
0d97 00           NOP
0d98 00           NOP
0d99 00           NOP
0d9a 00           NOP
0d9b 00           NOP
0d9c 00           NOP
0d9d 00           NOP
0d9e 00           NOP
0d9f 00           NOP
0da0 00           NOP
0da1 00           NOP
0da2 00           NOP
0da3 00           NOP
0da4 00           NOP
0da5 00           NOP
0da6 00           NOP
0da7 00           NOP
0da8 00           NOP
0da9 00           NOP
0daa 00           NOP
0dab 00           NOP
0dac 00           NOP
0dad 00           NOP
0dae 00           NOP
0daf 00           NOP
0db0 00           NOP
0db1 00           NOP
0db2 00           NOP
0db3 00           NOP
0db4 00           NOP
0db5 00           NOP
0db6 00           NOP
0db7 00           NOP
0db8 00           NOP
0db9 00           NOP
0dba 00           NOP
0dbb 00           NOP
0dbc 00           NOP
0dbd 00           NOP
0dbe 00           NOP
0dbf 00           NOP
0dc0 00           NOP
0dc1 00           NOP
0dc2 00           NOP
0dc3 00           NOP
0dc4 00           NOP
0dc5 00           NOP
0dc6 00           NOP
0dc7 00           NOP
0dc8 00           NOP
0dc9 00           NOP
0dca 00           NOP
0dcb 00           NOP
0dcc 00           NOP
0dcd 00           NOP
0dce 00           NOP
0dcf 00           NOP
0dd0 00           NOP
0dd1 00           NOP
0dd2 00           NOP
0dd3 00           NOP
0dd4 00           NOP
0dd5 00           NOP
0dd6 00           NOP
0dd7 00           NOP
0dd8 00           NOP
0dd9 00           NOP
0dda 00           NOP
0ddb 00           NOP
0ddc 00           NOP
0ddd 00           NOP
0dde 00           NOP
0ddf 00           NOP
0de0 00           NOP
0de1 00           NOP
0de2 00           NOP
0de3 00           NOP
0de4 00           NOP
0de5 00           NOP
0de6 00           NOP
0de7 00           NOP
0de8 00           NOP
0de9 00           NOP
0dea 00           NOP
0deb 00           NOP
0dec 00           NOP
0ded 00           NOP
0dee 00           NOP
0def 00           NOP
0df0 00           NOP
0df1 00           NOP
0df2 00           NOP
0df3 00           NOP
0df4 00           NOP
0df5 00           NOP
0df6 00           NOP
0df7 00           NOP
0df8 00           NOP
0df9 00           NOP
0dfa 00           NOP
0dfb 00           NOP
0dfc 00           NOP
0dfd 00           NOP
0dfe 00           NOP
0dff 00           NOP
0e00 00           NOP
0e01 00           NOP
0e02 00           NOP
0e03 00           NOP
0e04 00           NOP
0e05 00           NOP
0e06 00           NOP
0e07 00           NOP
0e08 00           NOP
0e09 00           NOP
0e0a 00           NOP
0e0b 00           NOP
0e0c 00           NOP
0e0d 00           NOP
0e0e 00           NOP
0e0f 00           NOP
0e10 00           NOP
0e11 00           NOP
0e12 00           NOP
0e13 00           NOP
0e14 00           NOP
0e15 00           NOP
0e16 00           NOP
0e17 00           NOP
0e18 00           NOP
0e19 00           NOP
0e1a 00           NOP
0e1b 00           NOP
0e1c 00           NOP
0e1d 00           NOP
0e1e 00           NOP
0e1f 00           NOP
0e20 00           NOP
0e21 00           NOP
0e22 00           NOP
0e23 00           NOP
0e24 00           NOP
0e25 00           NOP
0e26 00           NOP
0e27 00           NOP
0e28 00           NOP
0e29 00           NOP
0e2a 00           NOP
0e2b 00           NOP
0e2c 00           NOP
0e2d 00           NOP
0e2e 00           NOP
0e2f 00           NOP
0e30 00           NOP
0e31 00           NOP
0e32 00           NOP
0e33 00           NOP
0e34 00           NOP
0e35 00           NOP
0e36 00           NOP
0e37 00           NOP
0e38 00           NOP
0e39 00           NOP
0e3a 00           NOP
0e3b 00           NOP
0e3c 00           NOP
0e3d 00           NOP
0e3e 00           NOP
0e3f 00           NOP
0e40 00           NOP
0e41 00           NOP
0e42 00           NOP
0e43 00           NOP
0e44 00           NOP
0e45 00           NOP
0e46 00           NOP
0e47 00           NOP
0e48 00           NOP
0e49 00           NOP
0e4a 00           NOP
0e4b 00           NOP
0e4c 00           NOP
0e4d 00           NOP
0e4e 00           NOP
0e4f 00           NOP
0e50 00           NOP
0e51 00           NOP
0e52 00           NOP
0e53 00           NOP
0e54 00           NOP
0e55 00           NOP
0e56 00           NOP
0e57 00           NOP
0e58 00           NOP
0e59 00           NOP
0e5a 00           NOP
0e5b 00           NOP
0e5c 00           NOP
0e5d 00           NOP
0e5e 00           NOP
0e5f 00           NOP
0e60 00           NOP
0e61 00           NOP
0e62 00           NOP
0e63 00           NOP
0e64 00           NOP
0e65 00           NOP
0e66 00           NOP
0e67 00           NOP
0e68 00           NOP
0e69 00           NOP
0e6a 00           NOP
0e6b 00           NOP
0e6c 00           NOP
0e6d 00           NOP
0e6e 00           NOP
0e6f 00           NOP
0e70 00           NOP
0e71 00           NOP
0e72 00           NOP
0e73 00           NOP
0e74 00           NOP
0e75 00           NOP
0e76 00           NOP
0e77 00           NOP
0e78 00           NOP
0e79 00           NOP
0e7a 00           NOP
0e7b 00           NOP
0e7c 00           NOP
0e7d 00           NOP
0e7e 00           NOP
0e7f 00           NOP
0e80 00           NOP
0e81 00           NOP
0e82 00           NOP
0e83 00           NOP
0e84 00           NOP
0e85 00           NOP
0e86 00           NOP
0e87 00           NOP
0e88 00           NOP
0e89 00           NOP
0e8a 00           NOP
0e8b 00           NOP
0e8c 00           NOP
0e8d 00           NOP
0e8e 00           NOP
0e8f 00           NOP
0e90 00           NOP
0e91 00           NOP
0e92 00           NOP
0e93 00           NOP
0e94 00           NOP
0e95 00           NOP
0e96 00           NOP
0e97 00           NOP
0e98 00           NOP
0e99 00           NOP
0e9a 00           NOP
0e9b 00           NOP
0e9c 00           NOP
0e9d 00           NOP
0e9e 00           NOP
0e9f 00           NOP
0ea0 00           NOP
0ea1 00           NOP
0ea2 00           NOP
0ea3 00           NOP
0ea4 00           NOP
0ea5 00           NOP
0ea6 00           NOP
0ea7 00           NOP
0ea8 00           NOP
0ea9 00           NOP
0eaa 00           NOP
0eab 00           NOP
0eac 00           NOP
0ead 00           NOP
0eae 00           NOP
0eaf 00           NOP
0eb0 00           NOP
0eb1 00           NOP
0eb2 00           NOP
0eb3 00           NOP
0eb4 00           NOP
0eb5 00           NOP
0eb6 00           NOP
0eb7 00           NOP
0eb8 00           NOP
0eb9 00           NOP
0eba 00           NOP
0ebb 00           NOP
0ebc 00           NOP
0ebd 00           NOP
0ebe 00           NOP
0ebf 00           NOP
0ec0 00           NOP
0ec1 00           NOP
0ec2 00           NOP
0ec3 00           NOP
0ec4 00           NOP
0ec5 00           NOP
0ec6 00           NOP
0ec7 00           NOP
0ec8 00           NOP
0ec9 00           NOP
0eca 00           NOP
0ecb 00           NOP
0ecc 00           NOP
0ecd 00           NOP
0ece 00           NOP
0ecf 00           NOP
0ed0 00           NOP
0ed1 00           NOP
0ed2 00           NOP
0ed3 00           NOP
0ed4 00           NOP
0ed5 00           NOP
0ed6 00           NOP
0ed7 00           NOP
0ed8 00           NOP
0ed9 00           NOP
0eda 00           NOP
0edb 00           NOP
0edc 00           NOP
0edd 00           NOP
0ede 00           NOP
0edf 00           NOP
0ee0 00           NOP
0ee1 00           NOP
0ee2 00           NOP
0ee3 00           NOP
0ee4 00           NOP
0ee5 00           NOP
0ee6 00           NOP
0ee7 00           NOP
0ee8 00           NOP
0ee9 00           NOP
0eea 00           NOP
0eeb 00           NOP
0eec 00           NOP
0eed 00           NOP
0eee 00           NOP
0eef 00           NOP
0ef0 00           NOP
0ef1 00           NOP
0ef2 00           NOP
0ef3 00           NOP
0ef4 00           NOP
0ef5 00           NOP
0ef6 00           NOP
0ef7 00           NOP
0ef8 00           NOP
0ef9 00           NOP
0efa 00           NOP
0efb 00           NOP
0efc 00           NOP
0efd 00           NOP
0efe 00           NOP
0eff 00           NOP
0f00 00           NOP
0f01 00           NOP
0f02 00           NOP
0f03 00           NOP
0f04 00           NOP
0f05 00           NOP
0f06 00           NOP
0f07 00           NOP
0f08 00           NOP
0f09 00           NOP
0f0a 00           NOP
0f0b 00           NOP
0f0c 00           NOP
0f0d 00           NOP
0f0e 00           NOP
0f0f 00           NOP
0f10 00           NOP
0f11 00           NOP
0f12 00           NOP
0f13 00           NOP
0f14 00           NOP
0f15 00           NOP
0f16 00           NOP
0f17 00           NOP
0f18 00           NOP
0f19 00           NOP
0f1a 00           NOP
0f1b 00           NOP
0f1c 00           NOP
0f1d 00           NOP
0f1e 00           NOP
0f1f 00           NOP
0f20 00           NOP
0f21 00           NOP
0f22 00           NOP
0f23 00           NOP
0f24 00           NOP
0f25 00           NOP
0f26 00           NOP
0f27 00           NOP
0f28 00           NOP
0f29 00           NOP
0f2a 00           NOP
0f2b 00           NOP
0f2c 00           NOP
0f2d 00           NOP
0f2e 00           NOP
0f2f 00           NOP
0f30 00           NOP
0f31 00           NOP
0f32 00           NOP
0f33 00           NOP
0f34 00           NOP
0f35 00           NOP
0f36 00           NOP
0f37 00           NOP
0f38 00           NOP
0f39 00           NOP
0f3a 00           NOP
0f3b 00           NOP
0f3c 00           NOP
0f3d 00           NOP
0f3e 00           NOP
0f3f 00           NOP
0f40 00           NOP
0f41 00           NOP
0f42 00           NOP
0f43 00           NOP
0f44 00           NOP
0f45 00           NOP
0f46 00           NOP
0f47 00           NOP
0f48 00           NOP
0f49 00           NOP
0f4a 00           NOP
0f4b 00           NOP
0f4c 00           NOP
0f4d 00           NOP
0f4e 00           NOP
0f4f 00           NOP
0f50 00           NOP
0f51 00           NOP
0f52 00           NOP
0f53 00           NOP
0f54 00           NOP
0f55 00           NOP
0f56 00           NOP
0f57 00           NOP
0f58 00           NOP
0f59 00           NOP
0f5a 00           NOP
0f5b 00           NOP
0f5c 00           NOP
0f5d 00           NOP
0f5e 00           NOP
0f5f 00           NOP
0f60 00           NOP
0f61 00           NOP
0f62 00           NOP
0f63 00           NOP
0f64 00           NOP
0f65 00           NOP
0f66 00           NOP
0f67 00           NOP
0f68 00           NOP
0f69 00           NOP
0f6a 00           NOP
0f6b 00           NOP
0f6c 00           NOP
0f6d 00           NOP
0f6e 00           NOP
0f6f 00           NOP
0f70 00           NOP
0f71 00           NOP
0f72 00           NOP
0f73 00           NOP
0f74 00           NOP
0f75 00           NOP
0f76 00           NOP
0f77 00           NOP
0f78 00           NOP
0f79 00           NOP
0f7a 00           NOP
0f7b 00           NOP
0f7c 00           NOP
0f7d 00           NOP
0f7e 00           NOP
0f7f 00           NOP
0f80 00           NOP
0f81 00           NOP
0f82 00           NOP
0f83 00           NOP
0f84 00           NOP
0f85 00           NOP
0f86 00           NOP
0f87 00           NOP
0f88 00           NOP
0f89 00           NOP
0f8a 00           NOP
0f8b 00           NOP
0f8c 00           NOP
0f8d 00           NOP
0f8e 00           NOP
0f8f 00           NOP
0f90 00           NOP
0f91 00           NOP
0f92 00           NOP
0f93 00           NOP
0f94 00           NOP
0f95 00           NOP
0f96 00           NOP
0f97 00           NOP
0f98 00           NOP
0f99 00           NOP
0f9a 00           NOP
0f9b 00           NOP
0f9c 00           NOP
0f9d 00           NOP
0f9e 00           NOP
0f9f 00           NOP
0fa0 00           NOP
0fa1 00           NOP
0fa2 00           NOP
0fa3 00           NOP
0fa4 00           NOP
0fa5 00           NOP
0fa6 00           NOP
0fa7 00           NOP
0fa8 00           NOP
0fa9 00           NOP
0faa 00           NOP
0fab 00           NOP
0fac 00           NOP
0fad 00           NOP
0fae 00           NOP
0faf 00           NOP
0fb0 00           NOP
0fb1 00           NOP
0fb2 00           NOP
0fb3 00           NOP
0fb4 00           NOP
0fb5 00           NOP
0fb6 00           NOP
0fb7 00           NOP
0fb8 00           NOP
0fb9 00           NOP
0fba 00           NOP
0fbb 00           NOP
0fbc 00           NOP
0fbd 00           NOP
0fbe 00           NOP
0fbf 00           NOP
0fc0 00           NOP
0fc1 00           NOP
0fc2 00           NOP
0fc3 00           NOP
0fc4 00           NOP
0fc5 00           NOP
0fc6 00           NOP
0fc7 00           NOP
0fc8 00           NOP
0fc9 00           NOP
0fca 00           NOP
0fcb 00           NOP
0fcc 00           NOP
0fcd 00           NOP
0fce 00           NOP
0fcf 00           NOP
0fd0 00           NOP
0fd1 00           NOP
0fd2 00           NOP
0fd3 00           NOP
0fd4 00           NOP
0fd5 00           NOP
0fd6 00           NOP
0fd7 00           NOP
0fd8 00           NOP
0fd9 00           NOP
0fda 00           NOP
0fdb 00           NOP
0fdc 00           NOP
0fdd 00           NOP
0fde 00           NOP
0fdf 00           NOP
0fe0 00           NOP
0fe1 00           NOP
0fe2 00           NOP
0fe3 00           NOP
0fe4 00           NOP
0fe5 00           NOP
0fe6 00           NOP
0fe7 00           NOP
0fe8 00           NOP
0fe9 00           NOP
0fea 00           NOP
0feb 00           NOP
0fec 00           NOP
0fed 00           NOP
0fee 00           NOP
0fef 00           NOP
0ff0 00           NOP
0ff1 00           NOP
0ff2 00           NOP
0ff3 00           NOP
0ff4 00           NOP
0ff5 00           NOP
0ff6 00           NOP
0ff7 00           NOP
0ff8 00           NOP
0ff9 00           NOP
0ffa 00           NOP
0ffb 00           NOP
0ffc 00           NOP
0ffd 00           NOP
0ffe 00           NOP
0fff 00           NOP
1000 00           NOP
1001 00           NOP
1002 00           NOP
1003 00           NOP
1004 00           NOP
1005 00           NOP
1006 00           NOP
1007 00           NOP
1008 00           NOP
1009 00           NOP
100a 00           NOP
100b 00           NOP
100c 00           NOP
100d 00           NOP
100e 00           NOP
100f 00           NOP
1010 00           NOP
1011 00           NOP
1012 00           NOP
1013 00           NOP
1014 00           NOP
1015 00           NOP
1016 00           NOP
1017 00           NOP
1018 00           NOP
1019 00           NOP
101a 00           NOP
101b 00           NOP
101c 00           NOP
101d 00           NOP
101e 00           NOP
101f 00           NOP
1020 00           NOP
1021 00           NOP
1022 00           NOP
1023 00           NOP
1024 00           NOP
1025 00           NOP
1026 00           NOP
1027 00           NOP
1028 00           NOP
1029 00           NOP
102a 00           NOP
102b 00           NOP
102c 00           NOP
102d 00           NOP
102e 00           NOP
102f 00           NOP
1030 00           NOP
1031 00           NOP
1032 00           NOP
1033 00           NOP
1034 00           NOP
1035 00           NOP
1036 00           NOP
1037 00           NOP
1038 00           NOP
1039 00           NOP
103a 00           NOP
103b 00           NOP
103c 00           NOP
103d 00           NOP
103e 00           NOP
103f 00           NOP
1040 00           NOP
1041 00           NOP
1042 00           NOP
1043 00           NOP
1044 00           NOP
1045 00           NOP
1046 00           NOP
1047 00           NOP
1048 00           NOP
1049 00           NOP
104a 00           NOP
104b 00           NOP
104c 00           NOP
104d 00           NOP
104e 00           NOP
104f 00           NOP
1050 00           NOP
1051 00           NOP
1052 00           NOP
1053 00           NOP
1054 00           NOP
1055 00           NOP
1056 00           NOP
1057 00           NOP
1058 00           NOP
1059 00           NOP
105a 00           NOP
105b 00           NOP
105c 00           NOP
105d 00           NOP
105e 00           NOP
105f 00           NOP
1060 00           NOP
1061 00           NOP
1062 00           NOP
1063 00           NOP
1064 00           NOP
1065 00           NOP
1066 00           NOP
1067 00           NOP
1068 00           NOP
1069 00           NOP
106a 00           NOP
106b 00           NOP
106c 00           NOP
106d 00           NOP
106e 00           NOP
106f 00           NOP
1070 00           NOP
1071 00           NOP
1072 00           NOP
1073 00           NOP
1074 00           NOP
1075 00           NOP
1076 00           NOP
1077 00           NOP
1078 00           NOP
1079 00           NOP
107a 00           NOP
107b 00           NOP
107c 00           NOP
107d 00           NOP
107e 00           NOP
107f 00           NOP
1080 00           NOP
1081 00           NOP
1082 00           NOP
1083 00           NOP
1084 00           NOP
1085 00           NOP
1086 00           NOP
1087 00           NOP
1088 00           NOP
1089 00           NOP
108a 00           NOP
108b 00           NOP
108c 00           NOP
108d 00           NOP
108e 00           NOP
108f 00           NOP
1090 00           NOP
1091 00           NOP
1092 00           NOP
1093 00           NOP
1094 00           NOP
1095 00           NOP
1096 00           NOP
1097 00           NOP
1098 00           NOP
1099 00           NOP
109a 00           NOP
109b 00           NOP
109c 00           NOP
109d 00           NOP
109e 00           NOP
109f 00           NOP
10a0 00           NOP
10a1 00           NOP
10a2 00           NOP
10a3 00           NOP
10a4 00           NOP
10a5 00           NOP
10a6 00           NOP
10a7 00           NOP
10a8 00           NOP
10a9 00           NOP
10aa 00           NOP
10ab 00           NOP
10ac 00           NOP
10ad 00           NOP
10ae 00           NOP
10af 00           NOP
10b0 00           NOP
10b1 00           NOP
10b2 00           NOP
10b3 00           NOP
10b4 00           NOP
10b5 00           NOP
10b6 00           NOP
10b7 00           NOP
10b8 00           NOP
10b9 00           NOP
10ba 00           NOP
10bb 00           NOP
10bc 00           NOP
10bd 00           NOP
10be 00           NOP
10bf 00           NOP
10c0 00           NOP
10c1 00           NOP
10c2 00           NOP
10c3 00           NOP
10c4 00           NOP
10c5 00           NOP
10c6 00           NOP
10c7 00           NOP
10c8 00           NOP
10c9 00           NOP
10ca 00           NOP
10cb 00           NOP
10cc 00           NOP
10cd 00           NOP
10ce 00           NOP
10cf 00           NOP
10d0 00           NOP
10d1 00           NOP
10d2 00           NOP
10d3 00           NOP
10d4 00           NOP
10d5 00           NOP
10d6 00           NOP
10d7 00           NOP
10d8 00           NOP
10d9 00           NOP
10da 00           NOP
10db 00           NOP
10dc 00           NOP
10dd 00           NOP
10de 00           NOP
10df 00           NOP
10e0 00           NOP
10e1 00           NOP
10e2 00           NOP
10e3 00           NOP
10e4 00           NOP
10e5 00           NOP
10e6 00           NOP
10e7 00           NOP
10e8 00           NOP
10e9 00           NOP
10ea 00           NOP
10eb 00           NOP
10ec 00           NOP
10ed 00           NOP
10ee 00           NOP
10ef 00           NOP
10f0 00           NOP
10f1 00           NOP
10f2 00           NOP
10f3 00           NOP
10f4 00           NOP
10f5 00           NOP
10f6 00           NOP
10f7 00           NOP
10f8 00           NOP
10f9 00           NOP
10fa 00           NOP
10fb 00           NOP
10fc 00           NOP
10fd 00           NOP
10fe 00           NOP
10ff 00           NOP
1100 00           NOP
1101 00           NOP
1102 00           NOP
1103 00           NOP
1104 00           NOP
1105 00           NOP
1106 00           NOP
1107 00           NOP
1108 00           NOP
1109 00           NOP
110a 00           NOP
110b 00           NOP
110c 00           NOP
110d 00           NOP
110e 00           NOP
110f 00           NOP
1110 00           NOP
1111 00           NOP
1112 00           NOP
1113 00           NOP
1114 00           NOP
1115 00           NOP
1116 00           NOP
1117 00           NOP
1118 00           NOP
1119 00           NOP
111a 00           NOP
111b 00           NOP
111c 00           NOP
111d 00           NOP
111e 00           NOP
111f 00           NOP
1120 00           NOP
1121 00           NOP
1122 00           NOP
1123 00           NOP
1124 00           NOP
1125 00           NOP
1126 00           NOP
1127 00           NOP
1128 00           NOP
1129 00           NOP
112a 00           NOP
112b 00           NOP
112c 00           NOP
112d 00           NOP
112e 00           NOP
112f 00           NOP
1130 00           NOP
1131 00           NOP
1132 00           NOP
1133 00           NOP
1134 00           NOP
1135 00           NOP
1136 00           NOP
1137 00           NOP
1138 00           NOP
1139 00           NOP
113a 00           NOP
113b 00           NOP
113c 00           NOP
113d 00           NOP
113e 00           NOP
113f 00           NOP
1140 00           NOP
1141 00           NOP
1142 00           NOP
1143 00           NOP
1144 00           NOP
1145 00           NOP
1146 00           NOP
1147 00           NOP
1148 00           NOP
1149 00           NOP
114a 00           NOP
114b 00           NOP
114c 00           NOP
114d 00           NOP
114e 00           NOP
114f 00           NOP
1150 00           NOP
1151 00           NOP
1152 00           NOP
1153 00           NOP
1154 00           NOP
1155 00           NOP
1156 00           NOP
1157 00           NOP
1158 00           NOP
1159 00           NOP
115a 00           NOP
115b 00           NOP
115c 00           NOP
115d 00           NOP
115e 00           NOP
115f 00           NOP
1160 00           NOP
1161 00           NOP
1162 00           NOP
1163 00           NOP
1164 00           NOP
1165 00           NOP
1166 00           NOP
1167 00           NOP
1168 00           NOP
1169 00           NOP
116a 00           NOP
116b 00           NOP
116c 00           NOP
116d 00           NOP
116e 00           NOP
116f 00           NOP
1170 00           NOP
1171 00           NOP
1172 00           NOP
1173 00           NOP
1174 00           NOP
1175 00           NOP
1176 00           NOP
1177 00           NOP
1178 00           NOP
1179 00           NOP
117a 00           NOP
117b 00           NOP
117c 00           NOP
117d 00           NOP
117e 00           NOP
117f 00           NOP
1180 00           NOP
1181 00           NOP
1182 00           NOP
1183 00           NOP
1184 00           NOP
1185 00           NOP
1186 00           NOP
1187 00           NOP
1188 00           NOP
1189 00           NOP
118a 00           NOP
118b 00           NOP
118c 00           NOP
118d 00           NOP
118e 00           NOP
118f 00           NOP
1190 00           NOP
1191 00           NOP
1192 00           NOP
1193 00           NOP
1194 00           NOP
1195 00           NOP
1196 00           NOP
1197 00           NOP
1198 00           NOP
1199 00           NOP
119a 00           NOP
119b 00           NOP
119c 00           NOP
119d 00           NOP
119e 00           NOP
119f 00           NOP
11a0 00           NOP
11a1 00           NOP
11a2 00           NOP
11a3 00           NOP
11a4 00           NOP
11a5 00           NOP
11a6 00           NOP
11a7 00           NOP
11a8 00           NOP
11a9 00           NOP
11aa 00           NOP
11ab 00           NOP
11ac 00           NOP
11ad 00           NOP
11ae 00           NOP
11af 00           NOP
11b0 00           NOP
11b1 00           NOP
11b2 00           NOP
11b3 00           NOP
11b4 00           NOP
11b5 00           NOP
11b6 00           NOP
11b7 00           NOP
11b8 00           NOP
11b9 00           NOP
11ba 00           NOP
11bb 00           NOP
11bc 00           NOP
11bd 00           NOP
11be 00           NOP
11bf 00           NOP
11c0 00           NOP
11c1 00           NOP
11c2 00           NOP
11c3 00           NOP
11c4 00           NOP
11c5 00           NOP
11c6 00           NOP
11c7 00           NOP
11c8 00           NOP
11c9 00           NOP
11ca 00           NOP
11cb 00           NOP
11cc 00           NOP
11cd 00           NOP
11ce 00           NOP
11cf 00           NOP
11d0 00           NOP
11d1 00           NOP
11d2 00           NOP
11d3 00           NOP
11d4 00           NOP
11d5 00           NOP
11d6 00           NOP
11d7 00           NOP
11d8 00           NOP
11d9 00           NOP
11da 00           NOP
11db 00           NOP
11dc 00           NOP
11dd 00           NOP
11de 00           NOP
11df 00           NOP
11e0 00           NOP
11e1 00           NOP
11e2 00           NOP
11e3 00           NOP
11e4 00           NOP
11e5 00           NOP
11e6 00           NOP
11e7 00           NOP
11e8 00           NOP
11e9 00           NOP
11ea 00           NOP
11eb 00           NOP
11ec 00           NOP
11ed 00           NOP
11ee 00           NOP
11ef 00           NOP
11f0 00           NOP
11f1 00           NOP
11f2 00           NOP
11f3 00           NOP
11f4 00           NOP
11f5 00           NOP
11f6 00           NOP
11f7 00           NOP
11f8 00           NOP
11f9 00           NOP
11fa 00           NOP
11fb 00           NOP
11fc 00           NOP
11fd 00           NOP
11fe 00           NOP
11ff 00           NOP
1200 00           NOP
1201 00           NOP
1202 00           NOP
1203 00           NOP
1204 00           NOP
1205 00           NOP
1206 00           NOP
1207 00           NOP
1208 00           NOP
1209 00           NOP
120a 00           NOP
120b 00           NOP
120c 00           NOP
120d 00           NOP
120e 00           NOP
120f 00           NOP
1210 00           NOP
1211 00           NOP
1212 00           NOP
1213 00           NOP
1214 00           NOP
1215 00           NOP
1216 00           NOP
1217 00           NOP
1218 00           NOP
1219 00           NOP
121a 00           NOP
121b 00           NOP
121c 00           NOP
121d 00           NOP
121e 00           NOP
121f 00           NOP
1220 00           NOP
1221 00           NOP
1222 00           NOP
1223 00           NOP
1224 00           NOP
1225 00           NOP
1226 00           NOP
1227 00           NOP
1228 00           NOP
1229 00           NOP
122a 00           NOP
122b 00           NOP
122c 00           NOP
122d 00           NOP
122e 00           NOP
122f 00           NOP
1230 00           NOP
1231 00           NOP
1232 00           NOP
1233 00           NOP
1234 00           NOP
1235 00           NOP
1236 00           NOP
1237 00           NOP
1238 00           NOP
1239 00           NOP
123a 00           NOP
123b 00           NOP
123c 00           NOP
123d 00           NOP
123e 00           NOP
123f 00           NOP
1240 00           NOP
1241 00           NOP
1242 00           NOP
1243 00           NOP
1244 00           NOP
1245 00           NOP
1246 00           NOP
1247 00           NOP
1248 00           NOP
1249 00           NOP
124a 00           NOP
124b 00           NOP
124c 00           NOP
124d 00           NOP
124e 00           NOP
124f 00           NOP
1250 00           NOP
1251 00           NOP
1252 00           NOP
1253 00           NOP
1254 00           NOP
1255 00           NOP
1256 00           NOP
1257 00           NOP
1258 00           NOP
1259 00           NOP
125a 00           NOP
125b 00           NOP
125c 00           NOP
125d 00           NOP
125e 00           NOP
125f 00           NOP
1260 00           NOP
1261 00           NOP
1262 00           NOP
1263 00           NOP
1264 00           NOP
1265 00           NOP
1266 00           NOP
1267 00           NOP
1268 00           NOP
1269 00           NOP
126a 00           NOP
126b 00           NOP
126c 00           NOP
126d 00           NOP
126e 00           NOP
126f 00           NOP
1270 00           NOP
1271 00           NOP
1272 00           NOP
1273 00           NOP
1274 00           NOP
1275 00           NOP
1276 00           NOP
1277 00           NOP
1278 00           NOP
1279 00           NOP
127a 00           NOP
127b 00           NOP
127c 00           NOP
127d 00           NOP
127e 00           NOP
127f 00           NOP
1280 00           NOP
1281 00           NOP
1282 00           NOP
1283 00           NOP
1284 00           NOP
1285 00           NOP
1286 00           NOP
1287 00           NOP
1288 00           NOP
1289 00           NOP
128a 00           NOP
128b 00           NOP
128c 00           NOP
128d 00           NOP
128e 00           NOP
128f 00           NOP
1290 00           NOP
1291 00           NOP
1292 00           NOP
1293 00           NOP
1294 00           NOP
1295 00           NOP
1296 00           NOP
1297 00           NOP
1298 00           NOP
1299 00           NOP
129a 00           NOP
129b 00           NOP
129c 00           NOP
129d 00           NOP
129e 00           NOP
129f 00           NOP
12a0 00           NOP
12a1 00           NOP
12a2 00           NOP
12a3 00           NOP
12a4 00           NOP
12a5 00           NOP
12a6 00           NOP
12a7 00           NOP
12a8 00           NOP
12a9 00           NOP
12aa 00           NOP
12ab 00           NOP
12ac 00           NOP
12ad 00           NOP
12ae 00           NOP
12af 00           NOP
12b0 00           NOP
12b1 00           NOP
12b2 00           NOP
12b3 00           NOP
12b4 00           NOP
12b5 00           NOP
12b6 00           NOP
12b7 00           NOP
12b8 00           NOP
12b9 00           NOP
12ba 00           NOP
12bb 00           NOP
12bc 00           NOP
12bd 00           NOP
12be 00           NOP
12bf 00           NOP
12c0 00           NOP
12c1 00           NOP
12c2 00           NOP
12c3 00           NOP
12c4 00           NOP
12c5 00           NOP
12c6 00           NOP
12c7 00           NOP
12c8 00           NOP
12c9 00           NOP
12ca 00           NOP
12cb 00           NOP
12cc 00           NOP
12cd 00           NOP
12ce 00           NOP
12cf 00           NOP
12d0 00           NOP
12d1 00           NOP
12d2 00           NOP
12d3 00           NOP
12d4 00           NOP
12d5 00           NOP
12d6 00           NOP
12d7 00           NOP
12d8 00           NOP
12d9 00           NOP
12da 00           NOP
12db 00           NOP
12dc 00           NOP
12dd 00           NOP
12de 00           NOP
12df 00           NOP
12e0 00           NOP
12e1 00           NOP
12e2 00           NOP
12e3 00           NOP
12e4 00           NOP
12e5 00           NOP
12e6 00           NOP
12e7 00           NOP
12e8 00           NOP
12e9 00           NOP
12ea 00           NOP
12eb 00           NOP
12ec 00           NOP
12ed 00           NOP
12ee 00           NOP
12ef 00           NOP
12f0 00           NOP
12f1 00           NOP
12f2 00           NOP
12f3 00           NOP
12f4 00           NOP
12f5 00           NOP
12f6 00           NOP
12f7 00           NOP
12f8 00           NOP
12f9 00           NOP
12fa 00           NOP
12fb 00           NOP
12fc 00           NOP
12fd 00           NOP
12fe 00           NOP
12ff 00           NOP
1300 00           NOP
1301 00           NOP
1302 00           NOP
1303 00           NOP
1304 00           NOP
1305 00           NOP
1306 00           NOP
1307 00           NOP
1308 00           NOP
1309 00           NOP
130a 00           NOP
130b 00           NOP
130c 00           NOP
130d 00           NOP
130e 00           NOP
130f 00           NOP
1310 00           NOP
1311 00           NOP
1312 00           NOP
1313 00           NOP
1314 00           NOP
1315 00           NOP
1316 00           NOP
1317 00           NOP
1318 00           NOP
1319 00           NOP
131a 00           NOP
131b 00           NOP
131c 00           NOP
131d 00           NOP
131e 00           NOP
131f 00           NOP
1320 00           NOP
1321 00           NOP
1322 00           NOP
1323 00           NOP
1324 00           NOP
1325 00           NOP
1326 00           NOP
1327 00           NOP
1328 00           NOP
1329 00           NOP
132a 00           NOP
132b 00           NOP
132c 00           NOP
132d 00           NOP
132e 00           NOP
132f 00           NOP
1330 00           NOP
1331 00           NOP
1332 00           NOP
1333 00           NOP
1334 00           NOP
1335 00           NOP
1336 00           NOP
1337 00           NOP
1338 00           NOP
1339 00           NOP
133a 00           NOP
133b 00           NOP
133c 00           NOP
133d 00           NOP
133e 00           NOP
133f 00           NOP
1340 00           NOP
1341 00           NOP
1342 00           NOP
1343 00           NOP
1344 00           NOP
1345 00           NOP
1346 00           NOP
1347 00           NOP
1348 00           NOP
1349 00           NOP
134a 00           NOP
134b 00           NOP
134c 00           NOP
134d 00           NOP
134e 00           NOP
134f 00           NOP
1350 00           NOP
1351 00           NOP
1352 00           NOP
1353 00           NOP
1354 00           NOP
1355 00           NOP
1356 00           NOP
1357 00           NOP
1358 00           NOP
1359 00           NOP
135a 00           NOP
135b 00           NOP
135c 00           NOP
135d 00           NOP
135e 00           NOP
135f 00           NOP
1360 00           NOP
1361 00           NOP
1362 00           NOP
1363 00           NOP
1364 00           NOP
1365 00           NOP
1366 00           NOP
1367 00           NOP
1368 00           NOP
1369 00           NOP
136a 00           NOP
136b 00           NOP
136c 00           NOP
136d 00           NOP
136e 00           NOP
136f 00           NOP
1370 00           NOP
1371 00           NOP
1372 00           NOP
1373 00           NOP
1374 00           NOP
1375 00           NOP
1376 00           NOP
1377 00           NOP
1378 00           NOP
1379 00           NOP
137a 00           NOP
137b 00           NOP
137c 00           NOP
137d 00           NOP
137e 00           NOP
137f 00           NOP
1380 00           NOP
1381 00           NOP
1382 00           NOP
1383 00           NOP
1384 00           NOP
1385 00           NOP
1386 00           NOP
1387 00           NOP
1388 00           NOP
1389 00           NOP
138a 00           NOP
138b 00           NOP
138c 00           NOP
138d 00           NOP
138e 00           NOP
138f 00           NOP
1390 00           NOP
1391 00           NOP
1392 00           NOP
1393 00           NOP
1394 00           NOP
1395 00           NOP
1396 00           NOP
1397 00           NOP
1398 00           NOP
1399 00           NOP
139a 00           NOP
139b 00           NOP
139c 00           NOP
139d 00           NOP
139e 00           NOP
139f 00           NOP
13a0 00           NOP
13a1 00           NOP
13a2 00           NOP
13a3 00           NOP
13a4 00           NOP
13a5 00           NOP
13a6 00           NOP
13a7 00           NOP
13a8 00           NOP
13a9 00           NOP
13aa 00           NOP
13ab 00           NOP
13ac 00           NOP
13ad 00           NOP
13ae 00           NOP
13af 00           NOP
13b0 00           NOP
13b1 00           NOP
13b2 00           NOP
13b3 00           NOP
13b4 00           NOP
13b5 00           NOP
13b6 00           NOP
13b7 00           NOP
13b8 00           NOP
13b9 00           NOP
13ba 00           NOP
13bb 00           NOP
13bc 00           NOP
13bd 00           NOP
13be 00           NOP
13bf 00           NOP
13c0 00           NOP
13c1 00           NOP
13c2 00           NOP
13c3 00           NOP
13c4 00           NOP
13c5 00           NOP
13c6 00           NOP
13c7 00           NOP
13c8 00           NOP
13c9 00           NOP
13ca 00           NOP
13cb 00           NOP
13cc 00           NOP
13cd 00           NOP
13ce 00           NOP
13cf 00           NOP
13d0 00           NOP
13d1 00           NOP
13d2 00           NOP
13d3 00           NOP
13d4 00           NOP
13d5 00           NOP
13d6 00           NOP
13d7 00           NOP
13d8 00           NOP
13d9 00           NOP
13da 00           NOP
13db 00           NOP
13dc 00           NOP
13dd 00           NOP
13de 00           NOP
13df 00           NOP
13e0 00           NOP
13e1 00           NOP
13e2 00           NOP
13e3 00           NOP
13e4 00           NOP
13e5 00           NOP
13e6 00           NOP
13e7 00           NOP
13e8 00           NOP
13e9 00           NOP
13ea 00           NOP
13eb 00           NOP
13ec 00           NOP
13ed 00           NOP
13ee 00           NOP
13ef 00           NOP
13f0 00           NOP
13f1 00           NOP
13f2 00           NOP
13f3 00           NOP
13f4 00           NOP
13f5 00           NOP
13f6 00           NOP
13f7 00           NOP
13f8 00           NOP
13f9 00           NOP
13fa 00           NOP
13fb 00           NOP
13fc 00           NOP
13fd 00           NOP
13fe 00           NOP
13ff 00           NOP
1400 00           NOP
1401 cd 74 14     CALL    $1474
1404 00           NOP
1405 c5           PUSH    B
1406 e5           PUSH    H
1407 1a           LDAX    D
1408 d3 04        OUT     #$04
140a db 03        IN      #$03
140c b6           ORA     M
140d 77           MOV     M,A
140e 23           INX     H
140f 13           INX     D
1410 af           XRA     A
1411 d3 04        OUT     #$04
1413 db 03        IN      #$03
1415 b6           ORA     M
1416 77           MOV     M,A
1417 e1           POP     H
1418 01 20 00     LXI     B,#$0020
141b 09           DAD     B
141c c1           POP     B
141d 05           DCR     B
141e c2 05 14     JNZ     $1405
1421 c9           RET
1422 00           NOP
1423 00           NOP
1424 cd 74 14     CALL    $1474
1427 c5           PUSH    B
1428 e5           PUSH    H
1429 af           XRA     A
142a 77           MOV     M,A
142b 23           INX     H
142c 77           MOV     M,A
142d 23           INX     H
142e e1           POP     H
142f 01 20 00     LXI     B,#$0020
1432 09           DAD     B
1433 c1           POP     B
1434 05           DCR     B
1435 c2 27 14     JNZ     $1427
1438 c9           RET
1439 c5           PUSH    B
143a 1a           LDAX    D
143b 77           MOV     M,A
143c 13           INX     D
143d 01 20 00     LXI     B,#$0020
1440 09           DAD     B
1441 c1           POP     B
1442 05           DCR     B
1443 c2 39 14     JNZ     $1439
1446 c9           RET
1447 00           NOP
1448 00           NOP
1449 00           NOP
144a 00           NOP
144b 00           NOP
144c 00           NOP
144d 00           NOP
144e 00           NOP
144f 00           NOP
1450 00           NOP
1451 00           NOP
1452 cd 74 14     CALL    $1474
1455 c5           PUSH    B
1456 e5           PUSH    H
1457 1a           LDAX    D
1458 d3 04        OUT     #$04
145a db 03        IN      #$03
145c 2f           CMA
145d a6           ANA     M
145e 77           MOV     M,A
145f 23           INX     H
1460 13           INX     D
1461 af           XRA     A
1462 d3 04        OUT     #$04
1464 db 03        IN      #$03
1466 2f           CMA
1467 a6           ANA     M
1468 77           MOV     M,A
1469 e1           POP     H
146a 01 20 00     LXI     B,#$0020
146d 09           DAD     B
146e c1           POP     B
146f 05           DCR     B
1470 c2 55 14     JNZ     $1455
1473 c9           RET
1474 7d           MOV     A,L
1475 e6 07        ANI     #$07
1477 d3 02        OUT     #$02
1479 c3 47 1a     JMP     $1a47
147c c5           PUSH    B
147d e5           PUSH    H
147e 7e           MOV     A,M
147f 12           STAX    D
1480 13           INX     D
1481 23           INX     H
1482 0d           DCR     C
1483 c2 7e 14     JNZ     $147e
1486 e1           POP     H
1487 01 20 00     LXI     B,#$0020
148a 09           DAD     B
148b c1           POP     B
148c 05           DCR     B
148d c2 7c 14     JNZ     $147c
1490 c9           RET
1491 cd 74 14     CALL    $1474
1494 af           XRA     A
1495 32 61 20     STA     $2061
1498 c5           PUSH    B
1499 e5           PUSH    H
149a 1a           LDAX    D
149b d3 04        OUT     #$04
149d db 03        IN      #$03
149f f5           PUSH    PSW
14a0 a6           ANA     M
14a1 ca a9 14     JZ      $14a9
14a4 3e 01        MVI     A,#$01
14a6 32 61 20     STA     $2061
14a9 f1           POP     PSW
14aa b6           ORA     M
14ab 77           MOV     M,A
14ac 23           INX     H
14ad 13           INX     D
14ae af           XRA     A
14af d3 04        OUT     #$04
14b1 db 03        IN      #$03
14b3 f5           PUSH    PSW
14b4 a6           ANA     M
14b5 ca bd 14     JZ      $14bd
14b8 3e 01        MVI     A,#$01
14ba 32 61 20     STA     $2061
14bd f1           POP     PSW
14be b6           ORA     M
14bf 77           MOV     M,A
14c0 e1           POP     H
14c1 01 20 00     LXI     B,#$0020
14c4 09           DAD     B
14c5 c1           POP     B
14c6 05           DCR     B
14c7 c2 98 14     JNZ     $1498
14ca c9           RET
14cb af           XRA     A
14cc c5           PUSH    B
14cd 77           MOV     M,A
14ce 01 20 00     LXI     B,#$0020
14d1 09           DAD     B
14d2 c1           POP     B
14d3 05           DCR     B
14d4 c2 cc 14     JNZ     $14cc
14d7 c9           RET
14d8 3a 25 20     LDA     $2025
14db fe 05        CPI     #$05
14dd c8           RZ
14de fe 02        CPI     #$02
14e0 c0           RNZ
14e1 3a 29 20     LDA     $2029
14e4 fe d8        CPI     #$d8
14e6 47           MOV     B,A
14e7 d2 30 15     JNC     $1530
14ea 3a 02 20     LDA     $2002
14ed a7           ANA     A
14ee c8           RZ
14ef 78           MOV     A,B
14f0 fe ce        CPI     #$ce
14f2 d2 79 15     JNC     $1579
14f5 c6 06        ADI     #$06
14f7 47           MOV     B,A
14f8 3a 09 20     LDA     $2009
14fb fe 90        CPI     #$90
14fd d2 04 15     JNC     $1504
1500 b8           CMP     B
1501 d2 30 15     JNC     $1530
1504 68           MOV     L,B
1505 cd 62 15     CALL    $1562
1508 3a 2a 20     LDA     $202a
150b 67           MOV     H,A
150c cd 6f 15     CALL    $156f
150f 22 64 20     SHLD    $2064
1512 3e 05        MVI     A,#$05
1514 32 25 20     STA     $2025
1517 cd 81 15     CALL    $1581
151a 7e           MOV     A,M
151b a7           ANA     A
151c ca 30 15     JZ      $1530
151f 36 00        MVI     M,#$00
1521 cd 5f 0a     CALL    $0a5f
1524 cd 3b 1a     CALL    $1a3b
1527 cd d3 15     CALL    $15d3
152a 3e 10        MVI     A,#$10
152c 32 03 20     STA     $2003
152f c9           RET
1530 3e 03        MVI     A,#$03
1532 32 25 20     STA     $2025
1535 c3 4a 15     JMP     $154a
1538 21 03 20     LXI     H,#$2003
153b 35           DCR     M
153c c0           RNZ
153d 2a 64 20     LHLD    $2064
1540 06 10        MVI     B,#$10
1542 cd 24 14     CALL    $1424
1545 3e 04        MVI     A,#$04
1547 32 25 20     STA     $2025
154a af           XRA     A
154b 32 02 20     STA     $2002
154e 06 f7        MVI     B,#$f7
1550 c3 dc 19     JMP     $19dc
1553 00           NOP
1554 0e 00        MVI     C,#$00
1556 bc           CMP     H
1557 d4 90 15     CNC     $1590
155a bc           CMP     H
155b d0           RNC
155c c6 10        ADI     #$10
155e 0c           INR     C
155f c3 5a 15     JMP     $155a
1562 3a 09 20     LDA     $2009
1565 65           MOV     H,L
1566 cd 54 15     CALL    $1554
1569 41           MOV     B,C
156a 05           DCR     B
156b de 10        SBI     #$10
156d 6f           MOV     L,A
156e c9           RET
156f 3a 0a 20     LDA     $200a
1572 cd 54 15     CALL    $1554
1575 de 10        SBI     #$10
1577 67           MOV     H,A
1578 c9           RET
1579 3e 01        MVI     A,#$01
157b 32 85 20     STA     $2085
157e c3 45 15     JMP     $1545
1581 78           MOV     A,B
1582 07           RLC
1583 07           RLC
1584 07           RLC
1585 80           ADD     B
1586 80           ADD     B
1587 80           ADD     B
1588 81           ADD     C
1589 3d           DCR     A
158a 6f           MOV     L,A
158b 3a 67 20     LDA     $2067
158e 67           MOV     H,A
158f c9           RET
1590 0c           INR     C
1591 c6 10        ADI     #$10
1593 fa 90 15     JM      $1590
1596 c9           RET
1597 3a 0d 20     LDA     $200d
159a a7           ANA     A
159b c2 b7 15     JNZ     $15b7
159e 21 a4 3e     LXI     H,#$3ea4
15a1 cd c5 15     CALL    $15c5
15a4 d0           RNC
15a5 06 fe        MVI     B,#$fe
15a7 3e 01        MVI     A,#$01
15a9 32 0d 20     STA     $200d
15ac 78           MOV     A,B
15ad 32 08 20     STA     $2008
15b0 3a 0e 20     LDA     $200e
15b3 32 07 20     STA     $2007
15b6 c9           RET
15b7 21 24 25     LXI     H,#$2524
15ba cd c5 15     CALL    $15c5
15bd d0           RNC
15be cd f1 18     CALL    $18f1
15c1 af           XRA     A
15c2 c3 a9 15     JMP     $15a9
15c5 06 17        MVI     B,#$17
15c7 7e           MOV     A,M
15c8 a7           ANA     A
15c9 c2 6b 16     JNZ     $166b
15cc 23           INX     H
15cd 05           DCR     B
15ce c2 c7 15     JNZ     $15c7
15d1 c9           RET
15d2 00           NOP
15d3 cd 74 14     CALL    $1474
15d6 e5           PUSH    H
15d7 c5           PUSH    B
15d8 e5           PUSH    H
15d9 1a           LDAX    D
15da d3 04        OUT     #$04
15dc db 03        IN      #$03
15de 77           MOV     M,A
15df 23           INX     H
15e0 13           INX     D
15e1 af           XRA     A
15e2 d3 04        OUT     #$04
15e4 db 03        IN      #$03
15e6 77           MOV     M,A
15e7 e1           POP     H
15e8 01 20 00     LXI     B,#$0020
15eb 09           DAD     B
15ec c1           POP     B
15ed 05           DCR     B
15ee c2 d7 15     JNZ     $15d7
15f1 e1           POP     H
15f2 c9           RET
15f3 cd 11 16     CALL    $1611
15f6 01 00 37     LXI     B,#$3700
15f9 7e           MOV     A,M
15fa a7           ANA     A
15fb ca ff 15     JZ      $15ff
15fe 0c           INR     C
15ff 23           INX     H
1600 05           DCR     B
1601 c2 f9 15     JNZ     $15f9
1604 79           MOV     A,C
1605 32 82 20     STA     $2082
1608 fe 01        CPI     #$01
160a c0           RNZ
160b 21 6b 20     LXI     H,#$206b
160e 36 01        MVI     M,#$01
1610 c9           RET
1611 2e           MVI     L,#$00
1612 00           NOP
1613 3a 67 20     LDA     $2067
1616 67           MOV     H,A
1617 c9           RET
1618 3a 15 20     LDA     $2015
161b fe ff        CPI     #$ff
161d c0           RNZ
161e 21 10 20     LXI     H,#$2010
1621 7e           MOV     A,M
1622 23           INX     H
1623 46           MOV     B,M
1624 b0           ORA     B
1625 c0           RNZ
1626 3a 25 20     LDA     $2025
1629 a7           ANA     A
162a c0           RNZ
162b 3a ef 20     LDA     $20ef
162e a7           ANA     A
162f ca 52 16     JZ      $1652
1632 3a 2d 20     LDA     $202d
1635 a7           ANA     A
1636 c2 48 16     JNZ     $1648
1639 cd c0 17     CALL    $17c0
163c e6 10        ANI     #$10
163e c8           RZ
163f 3e 01        MVI     A,#$01
1641 32 25 20     STA     $2025
1644 32 2d 20     STA     $202d
1647 c9           RET
1648 cd c0 17     CALL    $17c0
164b e6 10        ANI     #$10
164d c0           RNZ
164e 32 2d 20     STA     $202d
1651 c9           RET
1652 21 25 20     LXI     H,#$2025
1655 36 01        MVI     M,#$01
1657 2a ed 20     LHLD    $20ed
165a 23           INX     H
165b 7d           MOV     A,L
165c fe 7e        CPI     #$7e
165e da 63 16     JC      $1663
1661 2e           MVI     L,#$74
1662 74           MOV     M,H
1663 22 ed 20     SHLD    $20ed
1666 7e           MOV     A,M
1667 32 1d 20     STA     $201d
166a c9           RET
166b 37           STC
166c c9           RET
166d af           XRA     A
166e cd 8b 1a     CALL    $1a8b
1671 cd 10 19     CALL    $1910
1674 36 00        MVI     M,#$00
1676 cd ca 09     CALL    $09ca
1679 23           INX     H
167a 11 f5 20     LXI     D,#$20f5
167d 1a           LDAX    D
167e be           CMP     M
167f 1b           DCX     D
1680 2b           DCX     H
1681 1a           LDAX    D
1682 ca 8b 16     JZ      $168b
1685 d2 98 16     JNC     $1698
1688 c3 8f 16     JMP     $168f
168b be           CMP     M
168c d2 98 16     JNC     $1698
168f 7e           MOV     A,M
1690 12           STAX    D
1691 13           INX     D
1692 23           INX     H
1693 7e           MOV     A,M
1694 12           STAX    D
1695 cd 50 19     CALL    $1950
1698 3a ce 20     LDA     $20ce
169b a7           ANA     A
169c ca c9 16     JZ      $16c9
169f 21 03 28     LXI     H,#$2803
16a2 11 a6 1a     LXI     D,#$1aa6
16a5 0e 14        MVI     C,#$14
16a7 cd 93 0a     CALL    $0a93
16aa 25           DCR     H
16ab 25           DCR     H
16ac 06 1b        MVI     B,#$1b
16ae 3a 67 20     LDA     $2067
16b1 0f           RRC
16b2 da b7 16     JC      $16b7
16b5 06 1c        MVI     B,#$1c
16b7 78           MOV     A,B
16b8 cd ff 08     CALL    $08ff
16bb cd b1 0a     CALL    $0ab1
16be cd e7 18     CALL    $18e7
16c1 7e           MOV     A,M
16c2 a7           ANA     A
16c3 ca c9 16     JZ      $16c9
16c6 c3 ed 02     JMP     $02ed
16c9 21 18 2d     LXI     H,#$2d18
16cc 11 a6 1a     LXI     D,#$1aa6
16cf 0e 0a        MVI     C,#$0a
16d1 cd 93 0a     CALL    $0a93
16d4 cd b6 0a     CALL    $0ab6
16d7 cd d6 09     CALL    $09d6
16da af           XRA     A
16db 32 ef 20     STA     $20ef
16de d3 05        OUT     #$05
16e0 cd d1 19     CALL    $19d1
16e3 c3 89 0b     JMP     $0b89
16e6 31 00 24     LXI     SP,#$2400
16e9 fb           EI
16ea af           XRA     A
16eb 32 15 20     STA     $2015
16ee cd d8 14     CALL    $14d8
16f1 06 04        MVI     B,#$04
16f3 cd fa 18     CALL    $18fa
16f6 cd 59 0a     CALL    $0a59
16f9 c2 ee 16     JNZ     $16ee
16fc cd d7 19     CALL    $19d7
16ff 21 01 27     LXI     H,#$2701
1702 cd fa 19     CALL    $19fa
1705 af           XRA     A
1706 cd 8b 1a     CALL    $1a8b
1709 06 fb        MVI     B,#$fb
170b c3 6b 19     JMP     $196b
170e cd ca 09     CALL    $09ca
1711 23           INX     H
1712 7e           MOV     A,M
1713 11 b8 1c     LXI     D,#$1cb8
1716 21 a1 1a     LXI     H,#$1aa1
1719 0e 04        MVI     C,#$04
171b 47           MOV     B,A
171c 1a           LDAX    D
171d b8           CMP     B
171e d2 27 17     JNC     $1727
1721 23           INX     H
1722 13           INX     D
1723 0d           DCR     C
1724 c2 1c 17     JNZ     $171c
1727 7e           MOV     A,M
1728 32 cf 20     STA     $20cf
172b c9           RET
172c 3a 25 20     LDA     $2025
172f fe 00        CPI     #$00
1731 c2 39 17     JNZ     $1739
1734 06 fd        MVI     B,#$fd
1736 c3 dc 19     JMP     $19dc
1739 06 02        MVI     B,#$02
173b c3 fa 18     JMP     $18fa
173e 00           NOP
173f 00           NOP
1740 21 9b 20     LXI     H,#$209b
1743 35           DCR     M
1744 cc 6d 17     CZ      $176d
1747 3a 68 20     LDA     $2068
174a a7           ANA     A
174b ca 6d 17     JZ      $176d
174e 21 96 20     LXI     H,#$2096
1751 35           DCR     M
1752 c0           RNZ
1753 21 98 20     LXI     H,#$2098
1756 7e           MOV     A,M
1757 d3 05        OUT     #$05
1759 3a 82 20     LDA     $2082
175c a7           ANA     A
175d ca 6d 17     JZ      $176d
1760 2b           DCX     H
1761 7e           MOV     A,M
1762 2b           DCX     H
1763 77           MOV     M,A
1764 2b           DCX     H
1765 36 01        MVI     M,#$01
1767 3e 04        MVI     A,#$04
1769 32 9b 20     STA     $209b
176c c9           RET
176d 3a 98 20     LDA     $2098
1770 e6 30        ANI     #$30
1772 d3 05        OUT     #$05
1774 c9           RET
1775 3a 95 20     LDA     $2095
1778 a7           ANA     A
1779 ca aa 17     JZ      $17aa
177c 21 11 1a     LXI     H,#$1a11
177f 11 21 1a     LXI     D,#$1a21
1782 3a 82 20     LDA     $2082
1785 be           CMP     M
1786 d2 8e 17     JNC     $178e
1789 23           INX     H
178a 13           INX     D
178b c3 85 17     JMP     $1785
178e 1a           LDAX    D
178f 32 97 20     STA     $2097
1792 21 98 20     LXI     H,#$2098
1795 7e           MOV     A,M
1796 e6 30        ANI     #$30
1798 47           MOV     B,A
1799 7e           MOV     A,M
179a e6 0f        ANI     #$0f
179c 07           RLC
179d fe 10        CPI     #$10
179f c2 a4 17     JNZ     $17a4
17a2 3e 01        MVI     A,#$01
17a4 b0           ORA     B
17a5 77           MOV     M,A
17a6 af           XRA     A
17a7 32 95 20     STA     $2095
17aa 21 99 20     LXI     H,#$2099
17ad 35           DCR     M
17ae c0           RNZ
17af 06 ef        MVI     B,#$ef
17b1 c3 dc 19     JMP     $19dc
17b4 06 ef        MVI     B,#$ef
17b6 21 98 20     LXI     H,#$2098
17b9 7e           MOV     A,M
17ba a0           ANA     B
17bb 77           MOV     M,A
17bc d3 05        OUT     #$05
17be c9           RET
17bf 00           NOP
17c0 3a 67 20     LDA     $2067
17c3 0f           RRC
17c4 d2 ca 17     JNC     $17ca
17c7 db 01        IN      #$01
17c9 c9           RET
17ca db 02        IN      #$02
17cc c9           RET
17cd db 02        IN      #$02
17cf e6 04        ANI     #$04
17d1 c8           RZ
17d2 3a 9a 20     LDA     $209a
17d5 a7           ANA     A
17d6 c0           RNZ
17d7 31 00 24     LXI     SP,#$2400
17da 06 04        MVI     B,#$04
17dc cd d6 09     CALL    $09d6
17df 05           DCR     B
17e0 c2 dc 17     JNZ     $17dc
17e3 3e 01        MVI     A,#$01
17e5 32 9a 20     STA     $209a
17e8 cd d7 19     CALL    $19d7
17eb fb           EI
17ec 11 bc 1c     LXI     D,#$1cbc
17ef 21 16 30     LXI     H,#$3016
17f2 0e 04        MVI     C,#$04
17f4 cd 93 0a     CALL    $0a93
17f7 cd b1 0a     CALL    $0ab1
17fa af           XRA     A
17fb 32 9a 20     STA     $209a
17fe 32 93 20     STA     $2093
1801 c3 c9 16     JMP     $16c9
1804 21 84 20     LXI     H,#$2084
1807 7e           MOV     A,M
1808 a7           ANA     A
1809 ca 07 07     JZ      $0707
180c 23           INX     H
180d 7e           MOV     A,M
180e a7           ANA     A
180f c0           RNZ
1810 06 01        MVI     B,#$01
1812 c3 fa 18     JMP     $18fa
1815 21 10 28     LXI     H,#$2810
1818 11 a3 1c     LXI     D,#$1ca3
181b 0e 15        MVI     C,#$15
181d cd f3 08     CALL    $08f3
1820 3e 0a        MVI     A,#$0a
1822 32 6c 20     STA     $206c
1825 01 be 1d     LXI     B,#$1dbe
1828 cd 56 18     CALL    $1856
182b da 37 18     JC      $1837
182e cd 44 18     CALL    $1844
1831 c3 28 18     JMP     $1828
1834 cd b1 0a     CALL    $0ab1
1837 01 cf 1d     LXI     B,#$1dcf
183a cd 56 18     CALL    $1856
183d d8           RC
183e cd 4c 18     CALL    $184c
1841 c3 3a 18     JMP     $183a
1844 c5           PUSH    B
1845 06 10        MVI     B,#$10
1847 cd 39 14     CALL    $1439
184a c1           POP     B
184b c9           RET
184c c5           PUSH    B
184d 3a 6c 20     LDA     $206c
1850 4f           MOV     C,A
1851 cd 93 0a     CALL    $0a93
1854 c1           POP     B
1855 c9           RET
1856 0a           LDAX    B
1857 fe ff        CPI     #$ff
1859 37           STC
185a c8           RZ
185b 6f           MOV     L,A
185c 03           INX     B
185d 0a           LDAX    B
185e 67           MOV     H,A
185f 03           INX     B
1860 0a           LDAX    B
1861 5f           MOV     E,A
1862 03           INX     B
1863 0a           LDAX    B
1864 57           MOV     D,A
1865 03           INX     B
1866 a7           ANA     A
1867 c9           RET
1868 21 c2 20     LXI     H,#$20c2
186b 34           INR     M
186c 23           INX     H
186d 4e           MOV     C,M
186e cd d9 01     CALL    $01d9
1871 47           MOV     B,A
1872 3a ca 20     LDA     $20ca
1875 b8           CMP     B
1876 ca 98 18     JZ      $1898
1879 3a c2 20     LDA     $20c2
187c e6 04        ANI     #$04
187e 2a cc 20     LHLD    $20cc
1881 c2 88 18     JNZ     $1888
1884 11 30 00     LXI     D,#$0030
1887 19           DAD     D
1888 22 c7 20     SHLD    $20c7
188b 21 c5 20     LXI     H,#$20c5
188e cd 3b 1a     CALL    $1a3b
1891 eb           XCHG
1892 c3 d3 15     JMP     $15d3
1895 00           NOP
1896 00           NOP
1897 00           NOP
1898 3e 01        MVI     A,#$01
189a 32 cb 20     STA     $20cb
189d c9           RET
189e 21 50 20     LXI     H,#$2050
18a1 11 c0 1b     LXI     D,#$1bc0
18a4 06 10        MVI     B,#$10
18a6 cd 32 1a     CALL    $1a32
18a9 3e 02        MVI     A,#$02
18ab 32 80 20     STA     $2080
18ae 3e ff        MVI     A,#$ff
18b0 32 7e 20     STA     $207e
18b3 3e 04        MVI     A,#$04
18b5 32 c1 20     STA     $20c1
18b8 3a 55 20     LDA     $2055
18bb e6 01        ANI     #$01
18bd ca b8 18     JZ      $18b8
18c0 3a 55 20     LDA     $2055
18c3 e6 01        ANI     #$01
18c5 c2 c0 18     JNZ     $18c0
18c8 21 11 33     LXI     H,#$3311
18cb 3e 26        MVI     A,#$26
18cd 00           NOP
18ce cd ff 08     CALL    $08ff
18d1 c3 b6 0a     JMP     $0ab6
18d4 31 00 24     LXI     SP,#$2400
18d7 06 00        MVI     B,#$00
18d9 cd e6 01     CALL    $01e6
18dc cd 56 19     CALL    $1956
18df 3e 08        MVI     A,#$08
18e1 32 cf 20     STA     $20cf
18e4 c3 ea 0a     JMP     $0aea
18e7 3a 67 20     LDA     $2067
18ea 21 e7 20     LXI     H,#$20e7
18ed 0f           RRC
18ee d0           RNC
18ef 23           INX     H
18f0 c9           RET
18f1 06 02        MVI     B,#$02
18f3 3a 82 20     LDA     $2082
18f6 3d           DCR     A
18f7 c0           RNZ
18f8 04           INR     B
18f9 c9           RET
18fa 3a 94 20     LDA     $2094
18fd b0           ORA     B
18fe 32 94 20     STA     $2094
1901 d3 03        OUT     #$03
1903 c9           RET
1904 21 00 22     LXI     H,#$2200
1907 c3 c3 01     JMP     $01c3
190a cd d8 14     CALL    $14d8
190d c3 97 15     JMP     $1597
1910 21 e7 20     LXI     H,#$20e7
1913 3a 67 20     LDA     $2067
1916 0f           RRC
1917 d8           RC
1918 23           INX     H
1919 c9           RET
191a 0e 1c        MVI     C,#$1c
191c 21 1e 24     LXI     H,#$241e
191f 11 e4 1a     LXI     D,#$1ae4
1922 c3 f3 08     JMP     $08f3
1925 21 f8 20     LXI     H,#$20f8
1928 c3 31 19     JMP     $1931
192b 21 fc 20     LXI     H,#$20fc
192e c3 31 19     JMP     $1931
1931 5e           MOV     E,M
1932 23           INX     H
1933 56           MOV     D,M
1934 23           INX     H
1935 7e           MOV     A,M
1936 23           INX     H
1937 66           MOV     H,M
1938 6f           MOV     L,A
1939 c3 ad 09     JMP     $09ad
193c 0e 07        MVI     C,#$07
193e 21 01 35     LXI     H,#$3501
1941 11 a9 1f     LXI     D,#$1fa9
1944 c3 f3 08     JMP     $08f3
1947 3a eb 20     LDA     $20eb
194a 21 01 3c     LXI     H,#$3c01
194d c3 b2 09     JMP     $09b2
1950 21 f4 20     LXI     H,#$20f4
1953 c3 31 19     JMP     $1931
1956 cd 5c 1a     CALL    $1a5c
1959 cd 1a 19     CALL    $191a
195c cd 25 19     CALL    $1925
195f cd 2b 19     CALL    $192b
1962 cd 50 19     CALL    $1950
1965 cd 3c 19     CALL    $193c
1968 c3 47 19     JMP     $1947
196b cd dc 19     CALL    $19dc
196e c3 71 16     JMP     $1671
1971 3e 01        MVI     A,#$01
1973 32 6d 20     STA     $206d
1976 c3 e6 16     JMP     $16e6
1979 cd d7 19     CALL    $19d7
197c cd 47 19     CALL    $1947
197f c3 3c 19     JMP     $193c
1982 32 c1 20     STA     $20c1
1985 c9           RET
1986 8b           ADC     E
1987 19           DAD     D
1988 c3 d6 09     JMP     $09d6
198b 21 03 28     LXI     H,#$2803
198e 11 be 19     LXI     D,#$19be
1991 0e 13        MVI     C,#$13
1993 c3 f3 08     JMP     $08f3
1996 00           NOP
1997 00           NOP
1998 00           NOP
1999 00           NOP
199a 3a 1e 20     LDA     $201e
199d a7           ANA     A
199e c2 ac 19     JNZ     $19ac
19a1 db 01        IN      #$01
19a3 e6 76        ANI     #$76
19a5 d6 72        SUI     #$72
19a7 c0           RNZ
19a8 3c           INR     A
19a9 32 1e 20     STA     $201e
19ac db 01        IN      #$01
19ae e6 76        ANI     #$76
19b0 fe 34        CPI     #$34
19b2 c0           RNZ
19b3 21 1b 2e     LXI     H,#$2e1b
19b6 11 f7 0b     LXI     D,#$0bf7
19b9 0e 09        MVI     C,#$09
19bb c3 f3 08     JMP     $08f3
19be 28           NOP
19bf 13           INX     D
19c0 00           NOP
19c1 08           NOP
19c2 13           INX     D
19c3 0e 26        MVI     C,#$26
19c5 02           STAX    B
19c6 0e 11        MVI     C,#$11
19c8 0f           RRC
19c9 0e 11        MVI     C,#$11
19cb 00           NOP
19cc 13           INX     D
19cd 08           NOP
19ce 0e 0d        MVI     C,#$0d
19d0 28           NOP
19d1 3e 01        MVI     A,#$01
19d3 32 e9 20     STA     $20e9
19d6 c9           RET
19d7 af           XRA     A
19d8 c3 d3 19     JMP     $19d3
19db 00           NOP
19dc 3a 94 20     LDA     $2094
19df a0           ANA     B
19e0 32 94 20     STA     $2094
19e3 d3 03        OUT     #$03
19e5 c9           RET
19e6 21 01 27     LXI     H,#$2701
19e9 ca fa 19     JZ      $19fa
19ec 11 60 1c     LXI     D,#$1c60
19ef 06 10        MVI     B,#$10
19f1 4f           MOV     C,A
19f2 cd 39 14     CALL    $1439
19f5 79           MOV     A,C
19f6 3d           DCR     A
19f7 c2 ec 19     JNZ     $19ec
19fa 06 10        MVI     B,#$10
19fc cd cb 14     CALL    $14cb
19ff 7c           MOV     A,H
1a00 fe 35        CPI     #$35
1a02 c2 fa 19     JNZ     $19fa
1a05 c9           RET
1a06 21 72 20     LXI     H,#$2072
1a09 46           MOV     B,M
1a0a 1a           LDAX    D
1a0b e6 80        ANI     #$80
1a0d a8           XRA     B
1a0e c0           RNZ
1a0f 37           STC
1a10 c9           RET
1a11 32 2b 24     STA     $242b
1a14 1c           INR     E
1a15 16 11        MVI     D,#$11
1a17 0d           DCR     C
1a18 0a           LDAX    B
1a19 08           NOP
1a1a 07           RLC
1a1b 06 05        MVI     B,#$05
1a1d 04           INR     B
1a1e 03           INX     B
1a1f 02           STAX    B
1a20 01 34 2e     LXI     B,#$2e34
1a23 27           DAA
1a24 22 1c 18     SHLD    $181c
1a27 15           DCR     D
1a28 13           INX     D
1a29 10           NOP
1a2a 0e 0d        MVI     C,#$0d
1a2c 0c           INR     C
1a2d 0b           DCX     B
1a2e 09           DAD     B
1a2f 07           RLC
1a30 05           DCR     B
1a31 ff           RST     7
1a32 1a           LDAX    D
1a33 77           MOV     M,A
1a34 23           INX     H
1a35 13           INX     D
1a36 05           DCR     B
1a37 c2 32 1a     JNZ     $1a32
1a3a c9           RET
1a3b 5e           MOV     E,M
1a3c 23           INX     H
1a3d 56           MOV     D,M
1a3e 23           INX     H
1a3f 7e           MOV     A,M
1a40 23           INX     H
1a41 4e           MOV     C,M
1a42 23           INX     H
1a43 46           MOV     B,M
1a44 61           MOV     H,C
1a45 6f           MOV     L,A
1a46 c9           RET
1a47 c5           PUSH    B
1a48 06 03        MVI     B,#$03
1a4a 7c           MOV     A,H
1a4b 1f           RAR
1a4c 67           MOV     H,A
1a4d 7d           MOV     A,L
1a4e 1f           RAR
1a4f 6f           MOV     L,A
1a50 05           DCR     B
1a51 c2 4a 1a     JNZ     $1a4a
1a54 7c           MOV     A,H
1a55 e6 3f        ANI     #$3f
1a57 f6 20        ORI     D8,20
1a59 67           MOV     H,A
1a5a c1           POP     B
1a5b c9           RET
1a5c 21 00 24     LXI     H,#$2400
1a5f 36 00        MVI     M,#$00
1a61 23           INX     H
1a62 7c           MOV     A,H
1a63 fe 40        CPI     #$40
1a65 c2 5f 1a     JNZ     $1a5f
1a68 c9           RET
1a69 c5           PUSH    B
1a6a e5           PUSH    H
1a6b 1a           LDAX    D
1a6c b6           ORA     M
1a6d 77           MOV     M,A
1a6e 13           INX     D
1a6f 23           INX     H
1a70 0d           DCR     C
1a71 c2 6b 1a     JNZ     $1a6b
1a74 e1           POP     H
1a75 01 20 00     LXI     B,#$0020
1a78 09           DAD     B
1a79 c1           POP     B
1a7a 05           DCR     B
1a7b c2 69 1a     JNZ     $1a69
1a7e c9           RET
1a7f cd 2e 09     CALL    $092e
1a82 a7           ANA     A
1a83 c8           RZ
1a84 f5           PUSH    PSW
1a85 3d           DCR     A
1a86 77           MOV     M,A
1a87 cd e6 19     CALL    $19e6
1a8a f1           POP     PSW
1a8b 21 01 25     LXI     H,#$2501
1a8e e6 0f        ANI     #$0f
1a90 c3 c5 09     JMP     $09c5
1a93 00           NOP
1a94 00           NOP
1a95 00           NOP
1a96 00           NOP
1a97 ff           RST     7
1a98 b8           CMP     B
1a99 fe 20        CPI     #$20
1a9b 1c           INR     E
1a9c 10           NOP
1a9d 9e           SBB     M
1a9e 00           NOP
1a9f 20           NOP
1aa0 1c           INR     E
1aa1 30           NOP
1aa2 10           NOP
1aa3 0b           DCX     B
1aa4 08           NOP
1aa5 07           RLC
1aa6 06 00        MVI     B,#$00
1aa8 0c           INR     C
1aa9 04           INR     B
1aaa 26 0e        MVI     H,#$0e
1aac 15           DCR     D
1aad 04           INR     B
1aae 11 26 26     LXI     D,#$2626
1ab1 0f           RRC
1ab2 0b           DCX     B
1ab3 00           NOP
1ab4 18           NOP
1ab5 04           INR     B
1ab6 11 24 26     LXI     D,#$2624
1ab9 25           DCR     H
1aba 1b           DCX     D
1abb 26 0e        MVI     H,#$0e
1abd 11 26 1c     LXI     D,#$1c26
1ac0 0f           RRC
1ac1 0b           DCX     B
1ac2 00           NOP
1ac3 18           NOP
1ac4 04           INR     B
1ac5 11 12 26     LXI     D,#$2612
1ac8 01 14 13     LXI     B,#$1314
1acb 13           INX     D
1acc 0e 0d        MVI     C,#$0d
1ace 26 0e        MVI     H,#$0e
1ad0 0d           DCR     C
1ad1 0b           DCX     B
1ad2 18           NOP
1ad3 26 1b        MVI     H,#$1b
1ad5 0f           RRC
1ad6 0b           DCX     B
1ad7 00           NOP
1ad8 18           NOP
1ad9 04           INR     B
1ada 11 26 26     LXI     D,#$2626
1add 01 14 13     LXI     B,#$1314
1ae0 13           INX     D
1ae1 0e 0d        MVI     C,#$0d
1ae3 26 26        MVI     H,#$26
1ae5 12           STAX    D
1ae6 02           STAX    B
1ae7 0e 11        MVI     C,#$11
1ae9 04           INR     B
1aea 24           INR     H
1aeb 1b           DCX     D
1aec 25           DCR     H
1aed 26 07        MVI     H,#$07
1aef 08           NOP
1af0 3f           CMC
1af1 12           STAX    D
1af2 02           STAX    B
1af3 0e 11        MVI     C,#$11
1af5 04           INR     B
1af6 26 12        MVI     H,#$12
1af8 02           STAX    B
1af9 0e 11        MVI     C,#$11
1afb 04           INR     B
1afc 24           INR     H
1afd 1c           INR     E
1afe 25           DCR     H
1aff 26 01        MVI     H,#$01
1b01 00           NOP
1b02 00           NOP
1b03 10           NOP
1b04 00           NOP
1b05 00           NOP
1b06 00           NOP
1b07 00           NOP
1b08 02           STAX    B
1b09 78           MOV     A,B
1b0a 38           NOP
1b0b 78           MOV     A,B
1b0c 38           NOP
1b0d 00           NOP
1b0e f8           RM
1b0f 00           NOP
1b10 00           NOP
1b11 80           ADD     B
1b12 00           NOP
1b13 8e           ADC     M
1b14 02           STAX    B
1b15 ff           RST     7
1b16 05           DCR     B
1b17 0c           INR     C
1b18 60           MOV     H,B
1b19 1c           INR     E
1b1a 20           NOP
1b1b 30           NOP
1b1c 10           NOP
1b1d 01 00 00     LXI     B,#$0000
1b20 00           NOP
1b21 00           NOP
1b22 00           NOP
1b23 bb           CMP     E
1b24 03           INX     B
1b25 00           NOP
1b26 10           NOP
1b27 90           SUB     B
1b28 1c           INR     E
1b29 28           NOP
1b2a 30           NOP
1b2b 01 04 00     LXI     B,#$0004
1b2e ff           RST     7
1b2f ff           RST     7
1b30 00           NOP
1b31 00           NOP
1b32 02           STAX    B
1b33 76           HLT
1b34 04           INR     B
1b35 00           NOP
1b36 00           NOP
1b37 00           NOP
1b38 00           NOP
1b39 00           NOP
1b3a 04           INR     B
1b3b ee 1c        XRI     #$1c
1b3d 00           NOP
1b3e 00           NOP
1b3f 03           INX     B
1b40 00           NOP
1b41 00           NOP
1b42 00           NOP
1b43 b6           ORA     M
1b44 04           INR     B
1b45 00           NOP
1b46 00           NOP
1b47 01 00 1d     LXI     B,#$1d00
1b4a 04           INR     B
1b4b e2 1c        SBI     #$1c
1b4d 00           NOP
1b4e 00           NOP
1b4f 03           INX     B
1b50 00           NOP
1b51 00           NOP
1b52 00           NOP
1b53 82           ADD     D
1b54 06 00        MVI     B,#$00
1b56 00           NOP
1b57 01 06 1d     LXI     B,#$1d06
1b5a 04           INR     B
1b5b d0           RNC
1b5c 1c           INR     E
1b5d 00           NOP
1b5e 00           NOP
1b5f 03           INX     B
1b60 ff           RST     7
1b61 00           NOP
1b62 c0           RNZ
1b63 1c           INR     E
1b64 00           NOP
1b65 00           NOP
1b66 10           NOP
1b67 21 01 00     LXI     H,#$0001
1b6a 30           NOP
1b6b 00           NOP
1b6c 12           STAX    D
1b6d 00           NOP
1b6e 00           NOP
1b6f 00           NOP
1b70 0f           RRC
1b71 0b           DCX     B
1b72 00           NOP
1b73 18           NOP
1b74 26 0f        MVI     H,#$0f
1b76 0b           DCX     B
1b77 00           NOP
1b78 18           NOP
1b79 04           INR     B
1b7a 11 24 1b     LXI     D,#$1b24
1b7d 25           DCR     H
1b7e fc 00 01     CM      $0100
1b81 ff           RST     7
1b82 ff           RST     7
1b83 00           NOP
1b84 00           NOP
1b85 00           NOP
1b86 20           NOP
1b87 64           MOV     H,H
1b88 1d           DCR     E
1b89 d0           RNC
1b8a 29           DAD     H
1b8b 18           NOP
1b8c 02           STAX    B
1b8d 54           MOV     D,H
1b8e 1d           DCR     E
1b8f 00           NOP
1b90 08           NOP
1b91 00           NOP
1b92 06 00        MVI     B,#$00
1b94 00           NOP
1b95 01 40 00     LXI     B,#$0040
1b98 01 00 00     LXI     B,#$0000
1b9b 10           NOP
1b9c 9e           SBB     M
1b9d 00           NOP
1b9e 20           NOP
1b9f 1c           INR     E
1ba0 00           NOP
1ba1 03           INX     B
1ba2 04           INR     B
1ba3 78           MOV     A,B
1ba4 14           INR     D
1ba5 13           INX     D
1ba6 08           NOP
1ba7 1a           LDAX    D
1ba8 3d           DCR     A
1ba9 68           MOV     L,B
1baa fc fc 68     CM      $68fc
1bad 3d           DCR     A
1bae 1a           LDAX    D
1baf 00           NOP
1bb0 00           NOP
1bb1 00           NOP
1bb2 01 b8 98     LXI     B,#$98b8
1bb5 a0           ANA     B
1bb6 1b           DCX     D
1bb7 10           NOP
1bb8 ff           RST     7
1bb9 00           NOP
1bba a0           ANA     B
1bbb 1b           DCX     D
1bbc 00           NOP
1bbd 00           NOP
1bbe 00           NOP
1bbf 00           NOP
1bc0 00           NOP
1bc1 10           NOP
1bc2 00           NOP
1bc3 0e 05        MVI     C,#$05
1bc5 00           NOP
1bc6 00           NOP
1bc7 00           NOP
1bc8 00           NOP
1bc9 00           NOP
1bca 07           RLC
1bcb d0           RNC
1bcc 1c           INR     E
1bcd c8           RZ
1bce 9b           SBB     E
1bcf 03           INX     B
1bd0 00           NOP
1bd1 00           NOP
1bd2 03           INX     B
1bd3 04           INR     B
1bd4 78           MOV     A,B
1bd5 14           INR     D
1bd6 0b           DCX     B
1bd7 19           DAD     D
1bd8 3a 6d fa     LDA     $fa6d
1bdb fa 6d 3a     JM      $3a6d
1bde 19           DAD     D
1bdf 00           NOP
1be0 00           NOP
1be1 00           NOP
1be2 00           NOP
1be3 00           NOP
1be4 00           NOP
1be5 00           NOP
1be6 00           NOP
1be7 00           NOP
1be8 00           NOP
1be9 01 00 00     LXI     B,#$0000
1bec 01 74 1f     LXI     B,#$1f74
1bef 00           NOP
1bf0 80           ADD     B
1bf1 00           NOP
1bf2 00           NOP
1bf3 00           NOP
1bf4 00           NOP
1bf5 00           NOP
1bf6 1c           INR     E
1bf7 2f           CMA
1bf8 00           NOP
1bf9 00           NOP
1bfa 1c           INR     E
1bfb 27           DAA
1bfc 00           NOP
1bfd 00           NOP
1bfe 1c           INR     E
1bff 39           DAD     SP
1c00 00           NOP
1c01 00           NOP
1c02 39           DAD     SP
1c03 79           MOV     A,C
1c04 7a           MOV     A,D
1c05 6e           MOV     L,M
1c06 ec fa fa     CPE     $fafa
1c09 ec 6e 7a     CPE     $7a6e
1c0c 79           MOV     A,C
1c0d 39           DAD     SP
1c0e 00           NOP
1c0f 00           NOP
1c10 00           NOP
1c11 00           NOP
1c12 00           NOP
1c13 78           MOV     A,B
1c14 1d           DCR     E
1c15 be           CMP     M
1c16 6c           MOV     L,H
1c17 3c           INR     A
1c18 3c           INR     A
1c19 3c           INR     A
1c1a 6c           MOV     L,H
1c1b be           CMP     M
1c1c 1d           DCR     E
1c1d 78           MOV     A,B
1c1e 00           NOP
1c1f 00           NOP
1c20 00           NOP
1c21 00           NOP
1c22 00           NOP
1c23 00           NOP
1c24 19           DAD     D
1c25 3a 6d fa     LDA     $fa6d
1c28 fa 6d 3a     JM      $3a6d
1c2b 19           DAD     D
1c2c 00           NOP
1c2d 00           NOP
1c2e 00           NOP
1c2f 00           NOP
1c30 00           NOP
1c31 00           NOP
1c32 38           NOP
1c33 7a           MOV     A,D
1c34 7f           MOV     A,A
1c35 6d           MOV     L,L
1c36 ec fa fa     CPE     $fafa
1c39 ec 6d 7f     CPE     $7f6d
1c3c 7a           MOV     A,D
1c3d 38           NOP
1c3e 00           NOP
1c3f 00           NOP
1c40 00           NOP
1c41 00           NOP
1c42 00           NOP
1c43 0e 18        MVI     C,#$18
1c45 be           CMP     M
1c46 6d           MOV     L,L
1c47 3d           DCR     A
1c48 3c           INR     A
1c49 3d           DCR     A
1c4a 6d           MOV     L,L
1c4b be           CMP     M
1c4c 18           NOP
1c4d 0e 00        MVI     C,#$00
1c4f 00           NOP
1c50 00           NOP
1c51 00           NOP
1c52 00           NOP
1c53 00           NOP
1c54 1a           LDAX    D
1c55 3d           DCR     A
1c56 68           MOV     L,B
1c57 fc fc 68     CM      $68fc
1c5a 3d           DCR     A
1c5b 1a           LDAX    D
1c5c 00           NOP
1c5d 00           NOP
1c5e 00           NOP
1c5f 00           NOP
1c60 00           NOP
1c61 00           NOP
1c62 0f           RRC
1c63 1f           RAR
1c64 1f           RAR
1c65 1f           RAR
1c66 1f           RAR
1c67 7f           MOV     A,A
1c68 ff           RST     7
1c69 7f           MOV     A,A
1c6a 1f           RAR
1c6b 1f           RAR
1c6c 1f           RAR
1c6d 1f           RAR
1c6e 0f           RRC
1c6f 00           NOP
1c70 00           NOP
1c71 04           INR     B
1c72 01 13 03     LXI     B,#$0313
1c75 07           RLC
1c76 b3           ORA     E
1c77 0f           RRC
1c78 2f           CMA
1c79 03           INX     B
1c7a 2f           CMA
1c7b 49           MOV     C,C
1c7c 04           INR     B
1c7d 03           INX     B
1c7e 00           NOP
1c7f 01 40 08     LXI     B,#$0840
1c82 05           DCR     B
1c83 a3           ANA     E
1c84 0a           LDAX    B
1c85 03           INX     B
1c86 5b           MOV     E,E
1c87 0f           RRC
1c88 27           DAA
1c89 27           DAA
1c8a 0b           DCX     B
1c8b 4b           MOV     C,E
1c8c 40           MOV     B,B
1c8d 84           ADD     H
1c8e 11 48 0f     LXI     D,#$0f48
1c91 99           SBB     C
1c92 3c           INR     A
1c93 7e           MOV     A,M
1c94 3d           DCR     A
1c95 bc           CMP     H
1c96 3e 7c        MVI     A,#$7c
1c98 99           SBB     C
1c99 27           DAA
1c9a 1b           DCX     D
1c9b 1a           LDAX    D
1c9c 26 0f        MVI     H,#$0f
1c9e 0e 08        MVI     C,#$08
1ca0 0d           DCR     C
1ca1 13           INX     D
1ca2 12           STAX    D
1ca3 28           NOP
1ca4 12           STAX    D
1ca5 02           STAX    B
1ca6 0e 11        MVI     C,#$11
1ca8 04           INR     B
1ca9 26 00        MVI     H,#$00
1cab 03           INX     B
1cac 15           DCR     D
1cad 00           NOP
1cae 0d           DCR     C
1caf 02           STAX    B
1cb0 04           INR     B
1cb1 26 13        MVI     H,#$13
1cb3 00           NOP
1cb4 01 0b 04     LXI     B,#$040b
1cb7 28           NOP
1cb8 02           STAX    B
1cb9 10           NOP
1cba 20           NOP
1cbb 30           NOP
1cbc 13           INX     D
1cbd 08           NOP
1cbe 0b           DCX     B
1cbf 13           INX     D
1cc0 00           NOP
1cc1 08           NOP
1cc2 49           MOV     C,C
1cc3 22 14 81     SHLD    $8114
1cc6 42           MOV     B,D
1cc7 00           NOP
1cc8 42           MOV     B,D
1cc9 81           ADD     C
1cca 14           INR     D
1ccb 22 49 08     SHLD    $0849
1cce 00           NOP
1ccf 00           NOP
1cd0 44           MOV     B,H
1cd1 aa           XRA     D
1cd2 10           NOP
1cd3 88           ADC     B
1cd4 54           MOV     D,H
1cd5 22 10 aa     SHLD    $aa10
1cd8 44           MOV     B,H
1cd9 22 54 88     SHLD    $8854
1cdc 4a           MOV     C,D
1cdd 15           DCR     D
1cde be           CMP     M
1cdf 3f           CMC
1ce0 5e           MOV     E,M
1ce1 25           DCR     H
1ce2 04           INR     B
1ce3 fc 04 10     CM      $1004
1ce6 fc 10 20     CM      $2010
1ce9 fc 20 80     CM      $8020
1cec fc 80 00     CM      $0080
1cef fe 00        CPI     #$00
1cf1 24           INR     H
1cf2 fe 12        CPI     #$12
1cf4 00           NOP
1cf5 fe 00        CPI     #$00
1cf7 48           MOV     C,B
1cf8 fe 90        CPI     #$90
1cfa 0f           RRC
1cfb 0b           DCX     B
1cfc 00           NOP
1cfd 29           DAD     H
1cfe 00           NOP
1cff 00           NOP
1d00 01 07 01     LXI     B,#$0107
1d03 01 01 04     LXI     B,#$0401
1d06 0b           DCX     B
1d07 01 06 03     LXI     B,#$0306
1d0a 01 01 0b     LXI     B,#$0b01
1d0d 09           DAD     B
1d0e 02           STAX    B
1d0f 08           NOP
1d10 02           STAX    B
1d11 0b           DCX     B
1d12 04           INR     B
1d13 07           RLC
1d14 0a           LDAX    B
1d15 05           DCR     B
1d16 02           STAX    B
1d17 05           DCR     B
1d18 04           INR     B
1d19 06 07        MVI     B,#$07
1d1b 08           NOP
1d1c 0a           LDAX    B
1d1d 06 0a        MVI     B,#$0a
1d1f 03           INX     B
1d20 ff           RST     7
1d21 0f           RRC
1d22 ff           RST     7
1d23 1f           RAR
1d24 ff           RST     7
1d25 3f           CMC
1d26 ff           RST     7
1d27 7f           MOV     A,A
1d28 ff           RST     7
1d29 ff           RST     7
1d2a fc ff f8     CM      $f8ff
1d2d ff           RST     7
1d2e f0           RP
1d2f ff           RST     7
1d30 f0           RP
1d31 ff           RST     7
1d32 f0           RP
1d33 ff           RST     7
1d34 f0           RP
1d35 ff           RST     7
1d36 f0           RP
1d37 ff           RST     7
1d38 f0           RP
1d39 ff           RST     7
1d3a f0           RP
1d3b ff           RST     7
1d3c f8           RM
1d3d ff           RST     7
1d3e fc ff ff     CM      $ffff
1d41 ff           RST     7
1d42 ff           RST     7
1d43 ff           RST     7
1d44 ff           RST     7
1d45 7f           MOV     A,A
1d46 ff           RST     7
1d47 3f           CMC
1d48 ff           RST     7
1d49 1f           RAR
1d4a ff           RST     7
1d4b 0f           RRC
1d4c 05           DCR     B
1d4d 10           NOP
1d4e 15           DCR     D
1d4f 30           NOP
1d50 94           SUB     H
1d51 97           SUB     A
1d52 9a           SBB     D
1d53 9d           SBB     L
1d54 10           NOP
1d55 05           DCR     B
1d56 05           DCR     B
1d57 10           NOP
1d58 15           DCR     D
1d59 10           NOP
1d5a 10           NOP
1d5b 05           DCR     B
1d5c 30           NOP
1d5d 10           NOP
1d5e 10           NOP
1d5f 10           NOP
1d60 05           DCR     B
1d61 15           DCR     D
1d62 10           NOP
1d63 05           DCR     B
1d64 00           NOP
1d65 00           NOP
1d66 00           NOP
1d67 00           NOP
1d68 04           INR     B
1d69 0c           INR     C
1d6a 1e 37        MVI     E,#$37
1d6c 3e 7c        MVI     A,#$7c
1d6e 74           MOV     M,H
1d6f 7e           MOV     A,M
1d70 7e           MOV     A,M
1d71 74           MOV     M,H
1d72 7c           MOV     A,H
1d73 3e 37        MVI     A,#$37
1d75 1e 0c        MVI     E,#$0c
1d77 04           INR     B
1d78 00           NOP
1d79 00           NOP
1d7a 00           NOP
1d7b 00           NOP
1d7c 00           NOP
1d7d 22 00 a5     SHLD    $a500
1d80 40           MOV     B,B
1d81 08           NOP
1d82 98           SBB     B
1d83 3d           DCR     A
1d84 b6           ORA     M
1d85 3c           INR     A
1d86 36 1d        MVI     M,#$1d
1d88 10           NOP
1d89 48           MOV     C,B
1d8a 62           MOV     H,D
1d8b b6           ORA     M
1d8c 1d           DCR     E
1d8d 98           SBB     B
1d8e 08           NOP
1d8f 42           MOV     B,D
1d90 90           SUB     B
1d91 08           NOP
1d92 00           NOP
1d93 00           NOP
1d94 26 1f        MVI     H,#$1f
1d96 1a           LDAX    D
1d97 1b           DCX     D
1d98 1a           LDAX    D
1d99 1a           LDAX    D
1d9a 1b           DCX     D
1d9b 1f           RAR
1d9c 1a           LDAX    D
1d9d 1d           DCR     E
1d9e 1a           LDAX    D
1d9f 1a           LDAX    D
1da0 10           NOP
1da1 20           NOP
1da2 30           NOP
1da3 60           MOV     H,B
1da4 50           MOV     D,B
1da5 48           MOV     C,B
1da6 48           MOV     C,B
1da7 48           MOV     C,B
1da8 40           MOV     B,B
1da9 40           MOV     B,B
1daa 40           MOV     B,B
1dab 0f           RRC
1dac 0b           DCX     B
1dad 00           NOP
1dae 18           NOP
1daf 12           STAX    D
1db0 0f           RRC
1db1 00           NOP
1db2 02           STAX    B
1db3 04           INR     B
1db4 26 26        MVI     H,#$26
1db6 08           NOP
1db7 0d           DCR     C
1db8 15           DCR     D
1db9 00           NOP
1dba 03           INX     B
1dbb 04           INR     B
1dbc 11 12 0e     LXI     D,#$0e12
1dbf 2c           INR     L
1dc0 68           MOV     L,B
1dc1 1d           DCR     E
1dc2 0c           INR     C
1dc3 2c           INR     L
1dc4 20           NOP
1dc5 1c           INR     E
1dc6 0a           LDAX    B
1dc7 2c           INR     L
1dc8 40           MOV     B,B
1dc9 1c           INR     E
1dca 08           NOP
1dcb 2c           INR     L
1dcc 00           NOP
1dcd 1c           INR     E
1dce ff           RST     7
1dcf 0e 2e        MVI     C,#$2e
1dd1 e0           RPO
1dd2 1d           DCR     E
1dd3 0c           INR     C
1dd4 2e           MVI     L,#$ea
1dd5 ea 1d 0a     JPE     $0a1d
1dd8 2e           MVI     L,#$f4
1dd9 f4 1d 08     CP      $081d
1ddc 2e           MVI     L,#$99
1ddd 99           SBB     C
1dde 1c           INR     E
1ddf ff           RST     7
1de0 27           DAA
1de1 38           NOP
1de2 26 0c        MVI     H,#$0c
1de4 18           NOP
1de5 12           STAX    D
1de6 13           INX     D
1de7 04           INR     B
1de8 11 18 27     LXI     D,#$2718
1deb 1d           DCR     E
1dec 1a           LDAX    D
1ded 26 0f        MVI     H,#$0f
1def 0e 08        MVI     C,#$08
1df1 0d           DCR     C
1df2 13           INX     D
1df3 12           STAX    D
1df4 27           DAA
1df5 1c           INR     E
1df6 1a           LDAX    D
1df7 26 0f        MVI     H,#$0f
1df9 0e 08        MVI     C,#$08
1dfb 0d           DCR     C
1dfc 13           INX     D
1dfd 12           STAX    D
1dfe 00           NOP
1dff 00           NOP
1e00 00           NOP
1e01 1f           RAR
1e02 24           INR     H
1e03 44           MOV     B,H
1e04 24           INR     H
1e05 1f           RAR
1e06 00           NOP
1e07 00           NOP
1e08 00           NOP
1e09 7f           MOV     A,A
1e0a 49           MOV     C,C
1e0b 49           MOV     C,C
1e0c 49           MOV     C,C
1e0d 36 00        MVI     M,#$00
1e0f 00           NOP
1e10 00           NOP
1e11 3e 41        MVI     A,#$41
1e13 41           MOV     B,C
1e14 41           MOV     B,C
1e15 22 00 00     SHLD    $0000
1e18 00           NOP
1e19 7f           MOV     A,A
1e1a 41           MOV     B,C
1e1b 41           MOV     B,C
1e1c 41           MOV     B,C
1e1d 3e 00        MVI     A,#$00
1e1f 00           NOP
1e20 00           NOP
1e21 7f           MOV     A,A
1e22 49           MOV     C,C
1e23 49           MOV     C,C
1e24 49           MOV     C,C
1e25 41           MOV     B,C
1e26 00           NOP
1e27 00           NOP
1e28 00           NOP
1e29 7f           MOV     A,A
1e2a 48           MOV     C,B
1e2b 48           MOV     C,B
1e2c 48           MOV     C,B
1e2d 40           MOV     B,B
1e2e 00           NOP
1e2f 00           NOP
1e30 00           NOP
1e31 3e 41        MVI     A,#$41
1e33 41           MOV     B,C
1e34 45           MOV     B,L
1e35 47           MOV     B,A
1e36 00           NOP
1e37 00           NOP
1e38 00           NOP
1e39 7f           MOV     A,A
1e3a 08           NOP
1e3b 08           NOP
1e3c 08           NOP
1e3d 7f           MOV     A,A
1e3e 00           NOP
1e3f 00           NOP
1e40 00           NOP
1e41 00           NOP
1e42 41           MOV     B,C
1e43 7f           MOV     A,A
1e44 41           MOV     B,C
1e45 00           NOP
1e46 00           NOP
1e47 00           NOP
1e48 00           NOP
1e49 02           STAX    B
1e4a 01 01 01     LXI     B,#$0101
1e4d 7e           MOV     A,M
1e4e 00           NOP
1e4f 00           NOP
1e50 00           NOP
1e51 7f           MOV     A,A
1e52 08           NOP
1e53 14           INR     D
1e54 22 41 00     SHLD    $0041
1e57 00           NOP
1e58 00           NOP
1e59 7f           MOV     A,A
1e5a 01 01 01     LXI     B,#$0101
1e5d 01 00 00     LXI     B,#$0000
1e60 00           NOP
1e61 7f           MOV     A,A
1e62 20           NOP
1e63 18           NOP
1e64 20           NOP
1e65 7f           MOV     A,A
1e66 00           NOP
1e67 00           NOP
1e68 00           NOP
1e69 7f           MOV     A,A
1e6a 10           NOP
1e6b 08           NOP
1e6c 04           INR     B
1e6d 7f           MOV     A,A
1e6e 00           NOP
1e6f 00           NOP
1e70 00           NOP
1e71 3e 41        MVI     A,#$41
1e73 41           MOV     B,C
1e74 41           MOV     B,C
1e75 3e 00        MVI     A,#$00
1e77 00           NOP
1e78 00           NOP
1e79 7f           MOV     A,A
1e7a 48           MOV     C,B
1e7b 48           MOV     C,B
1e7c 48           MOV     C,B
1e7d 30           NOP
1e7e 00           NOP
1e7f 00           NOP
1e80 00           NOP
1e81 3e 41        MVI     A,#$41
1e83 45           MOV     B,L
1e84 42           MOV     B,D
1e85 3d           DCR     A
1e86 00           NOP
1e87 00           NOP
1e88 00           NOP
1e89 7f           MOV     A,A
1e8a 48           MOV     C,B
1e8b 4c           MOV     C,H
1e8c 4a           MOV     C,D
1e8d 31 00 00     LXI     SP,#$0000
1e90 00           NOP
1e91 32 49 49     STA     $4949
1e94 49           MOV     C,C
1e95 26 00        MVI     H,#$00
1e97 00           NOP
1e98 00           NOP
1e99 40           MOV     B,B
1e9a 40           MOV     B,B
1e9b 7f           MOV     A,A
1e9c 40           MOV     B,B
1e9d 40           MOV     B,B
1e9e 00           NOP
1e9f 00           NOP
1ea0 00           NOP
1ea1 7e           MOV     A,M
1ea2 01 01 01     LXI     B,#$0101
1ea5 7e           MOV     A,M
1ea6 00           NOP
1ea7 00           NOP
1ea8 00           NOP
1ea9 7c           MOV     A,H
1eaa 02           STAX    B
1eab 01 02 7c     LXI     B,#$7c02
1eae 00           NOP
1eaf 00           NOP
1eb0 00           NOP
1eb1 7f           MOV     A,A
1eb2 02           STAX    B
1eb3 0c           INR     C
1eb4 02           STAX    B
1eb5 7f           MOV     A,A
1eb6 00           NOP
1eb7 00           NOP
1eb8 00           NOP
1eb9 63           MOV     H,E
1eba 14           INR     D
1ebb 08           NOP
1ebc 14           INR     D
1ebd 63           MOV     H,E
1ebe 00           NOP
1ebf 00           NOP
1ec0 00           NOP
1ec1 60           MOV     H,B
1ec2 10           NOP
1ec3 0f           RRC
1ec4 10           NOP
1ec5 60           MOV     H,B
1ec6 00           NOP
1ec7 00           NOP
1ec8 00           NOP
1ec9 43           MOV     B,E
1eca 45           MOV     B,L
1ecb 49           MOV     C,C
1ecc 51           MOV     D,C
1ecd 61           MOV     H,C
1ece 00           NOP
1ecf 00           NOP
1ed0 00           NOP
1ed1 3e 45        MVI     A,#$45
1ed3 49           MOV     C,C
1ed4 51           MOV     D,C
1ed5 3e 00        MVI     A,#$00
1ed7 00           NOP
1ed8 00           NOP
1ed9 00           NOP
1eda 21 7f 01     LXI     H,#$017f
1edd 00           NOP
1ede 00           NOP
1edf 00           NOP
1ee0 00           NOP
1ee1 23           INX     H
1ee2 45           MOV     B,L
1ee3 49           MOV     C,C
1ee4 49           MOV     C,C
1ee5 31 00 00     LXI     SP,#$0000
1ee8 00           NOP
1ee9 42           MOV     B,D
1eea 41           MOV     B,C
1eeb 49           MOV     C,C
1eec 59           MOV     E,C
1eed 66           MOV     H,M
1eee 00           NOP
1eef 00           NOP
1ef0 00           NOP
1ef1 0c           INR     C
1ef2 14           INR     D
1ef3 24           INR     H
1ef4 7f           MOV     A,A
1ef5 04           INR     B
1ef6 00           NOP
1ef7 00           NOP
1ef8 00           NOP
1ef9 72           MOV     M,D
1efa 51           MOV     D,C
1efb 51           MOV     D,C
1efc 51           MOV     D,C
1efd 4e           MOV     C,M
1efe 00           NOP
1eff 00           NOP
1f00 00           NOP
1f01 1e 29        MVI     E,#$29
1f03 49           MOV     C,C
1f04 49           MOV     C,C
1f05 46           MOV     B,M
1f06 00           NOP
1f07 00           NOP
1f08 00           NOP
1f09 40           MOV     B,B
1f0a 47           MOV     B,A
1f0b 48           MOV     C,B
1f0c 50           MOV     D,B
1f0d 60           MOV     H,B
1f0e 00           NOP
1f0f 00           NOP
1f10 00           NOP
1f11 36 49        MVI     M,#$49
1f13 49           MOV     C,C
1f14 49           MOV     C,C
1f15 36 00        MVI     M,#$00
1f17 00           NOP
1f18 00           NOP
1f19 31 49 49     LXI     SP,#$4949
1f1c 4a           MOV     C,D
1f1d 3c           INR     A
1f1e 00           NOP
1f1f 00           NOP
1f20 00           NOP
1f21 08           NOP
1f22 14           INR     D
1f23 22 41 00     SHLD    $0041
1f26 00           NOP
1f27 00           NOP
1f28 00           NOP
1f29 00           NOP
1f2a 41           MOV     B,C
1f2b 22 14 08     SHLD    $0814
1f2e 00           NOP
1f2f 00           NOP
1f30 00           NOP
1f31 00           NOP
1f32 00           NOP
1f33 00           NOP
1f34 00           NOP
1f35 00           NOP
1f36 00           NOP
1f37 00           NOP
1f38 00           NOP
1f39 14           INR     D
1f3a 14           INR     D
1f3b 14           INR     D
1f3c 14           INR     D
1f3d 14           INR     D
1f3e 00           NOP
1f3f 00           NOP
1f40 00           NOP
1f41 22 14 7f     SHLD    $7f14
1f44 14           INR     D
1f45 22 00 00     SHLD    $0000
1f48 00           NOP
1f49 03           INX     B
1f4a 04           INR     B
1f4b 78           MOV     A,B
1f4c 04           INR     B
1f4d 03           INX     B
1f4e 00           NOP
1f4f 00           NOP
1f50 24           INR     H
1f51 1b           DCX     D
1f52 26 0e        MVI     H,#$0e
1f54 11 26 1c     LXI     D,#$1c26
1f57 26 0f        MVI     H,#$0f
1f59 0b           DCX     B
1f5a 00           NOP
1f5b 18           NOP
1f5c 04           INR     B
1f5d 11 12 25     LXI     D,#$2512
1f60 26 26        MVI     H,#$26
1f62 28           NOP
1f63 1b           DCX     D
1f64 26 0f        MVI     H,#$0f
1f66 0b           DCX     B
1f67 00           NOP
1f68 18           NOP
1f69 04           INR     B
1f6a 11 26 26     LXI     D,#$2626
1f6d 1b           DCX     D
1f6e 26 02        MVI     H,#$02
1f70 0e 08        MVI     C,#$08
1f72 0d           DCR     C
1f73 26 01        MVI     H,#$01
1f75 01 00 00     LXI     B,#$0000
1f78 01 00 02     LXI     B,#$0200
1f7b 01 00 02     LXI     B,#$0200
1f7e 01 00 60     LXI     B,#$6000
1f81 10           NOP
1f82 0f           RRC
1f83 10           NOP
1f84 60           MOV     H,B
1f85 30           NOP
1f86 18           NOP
1f87 1a           LDAX    D
1f88 3d           DCR     A
1f89 68           MOV     L,B
1f8a fc fc 68     CM      $68fc
1f8d 3d           DCR     A
1f8e 1a           LDAX    D
1f8f 00           NOP
1f90 08           NOP
1f91 0d           DCR     C
1f92 12           STAX    D
1f93 04           INR     B
1f94 11 13 26     LXI     D,#$2613
1f97 26 02        MVI     H,#$02
1f99 0e 08        MVI     C,#$08
1f9b 0d           DCR     C
1f9c 0d           DCR     C
1f9d 2a 50 1f     LHLD    $1f50
1fa0 0a           LDAX    B
1fa1 2a 62 1f     LHLD    $1f62
1fa4 07           RLC
1fa5 2a e1 1f     LHLD    $1fe1
1fa8 ff           RST     7
1fa9 02           STAX    B
1faa 11 04 03     LXI     D,#$0304
1fad 08           NOP
1fae 13           INX     D
1faf 26 00        MVI     H,#$00
1fb1 60           MOV     H,B
1fb2 10           NOP
1fb3 0f           RRC
1fb4 10           NOP
1fb5 60           MOV     H,B
1fb6 38           NOP
1fb7 19           DAD     D
1fb8 3a 6d fa     LDA     $fa6d
1fbb fa 6d 3a     JM      $3a6d
1fbe 19           DAD     D
1fbf 00           NOP
1fc0 00           NOP
1fc1 20           NOP
1fc2 40           MOV     B,B
1fc3 4d           MOV     C,L
1fc4 50           MOV     D,B
1fc5 20           NOP
1fc6 00           NOP
1fc7 00           NOP
1fc8 00           NOP
1fc9 00           NOP
1fca 00           NOP
1fcb ff           RST     7
1fcc b8           CMP     B
1fcd ff           RST     7
1fce 80           ADD     B
1fcf 1f           RAR
1fd0 10           NOP
1fd1 97           SUB     A
1fd2 00           NOP
1fd3 80           ADD     B
1fd4 1f           RAR
1fd5 00           NOP
1fd6 00           NOP
1fd7 01 d0 22     LXI     B,#$22d0
1fda 20           NOP
1fdb 1c           INR     E
1fdc 10           NOP
1fdd 94           SUB     H
1fde 00           NOP
1fdf 20           NOP
1fe0 1c           INR     E
1fe1 28           NOP
1fe2 1c           INR     E
1fe3 26 0f        MVI     H,#$0f
1fe5 0b           DCX     B
1fe6 00           NOP
1fe7 18           NOP
1fe8 04           INR     B
1fe9 11 12 26     LXI     D,#$2612
1fec 1c           INR     E
1fed 26 02        MVI     H,#$02
1fef 0e 08        MVI     C,#$08
1ff1 0d           DCR     C
1ff2 12           STAX    D
1ff3 0f           RRC
1ff4 14           INR     D
1ff5 12           STAX    D
1ff6 07           RLC
1ff7 26 00        MVI     H,#$00
1ff9 08           NOP
1ffa 08           NOP
1ffb 08           NOP
1ffc 08           NOP
1ffd 08           NOP
1ffe 00           NOP
1fff 00           NOP
