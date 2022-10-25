Usefull resources
-----------------

* Emulator tutorial: 
  * http://www.emulator101.com/
* Spaces invaders code explained: 
  * http://computerarcheology.com/Arcade/SpaceInvaders/Code.html
* 8080 Assembler
  * [8080 Programmers Manual](./document/8080%20Programmers%20Manual.pdf)
* Space invaders ROM:
  * [invaders.e](invaders.e)
  * [invaders.f](invaders.f)
  * [invaders.g](invaders.g)
  * [invaders.h](invaders.h)
* 8080 CPU diag adm and bin
  * [cupdiag.asm](cpudiag.asm)
  * [cpudiag.bin](cpudiag.bin)


invaders.bin creation: (in invaders folder)
```
$ cat invaders.h > invaders
$ cat invaders.g >> invaders
$ cat invaders.f >> invaders
$ cat invaders.e >> invaders
```

To build 8080 Disassembler and Emulator : (in root folder)
```
$ make clean
$ make all
```

To run the Disassemblenr : (in root folder)
```
$ ./8080dis ./invaders/invaders.bin
```

output
```
0000 NOP
0001 NOP
0002 NOP
0003 JMP     $18d4
0006 NOP
0007 NOP
0008 PUSH    PSW
0009 PUSH    B
000a PUSH    D
000b PUSH    H
000c JMP     $008c
000f NOP
0010 PUSH    PSW
0011 PUSH    B
0012 PUSH    D
0013 PUSH    H
0014 MVI     A,#$80

......

1fe8 INR     B
1fe9 LXI     D,#$2612
1fec INR     E
1fed MVI     H,#$02
1fef MVI     C,#$08
1ff1 DCR     C
1ff2 STAX    D
1ff3 RRC
1ff4 INR     D
1ff5 STAX    D
1ff6 RLC
1ff7 MVI     H,#$00
1ff9 NOP
1ffa NOP
1ffb NOP
1ffc NOP
1ffd NOP
1ffe NOP
1fff NOP
```