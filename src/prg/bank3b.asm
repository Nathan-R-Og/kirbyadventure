.segment "PRG3B": absolute
;^([^ ]* ){2}[^ ]* '

Script66_EggCatcher:
    SETBANK     #$3A                        ; 3BA000/283A
    MOV         REG,VAR1                    ; 3BA002/1E01
    TABLEJMP    #19                         ; 3BA004/0F13
    .word       L_3BA02C                    ; 3BA006/2CA0
    .word       L_3BA170                    ; 3BA008/70A1
    .word       L_3BA301                    ; 3BA00A/01A3
    .word       L_3BA3C3                    ; 3BA00C/C3A3
    .word       L_3BA48F                    ; 3BA00E/8FA4
    .word       L_3BA49B                    ; 3BA010/9BA4
    .word       L_3BA4A9                    ; 3BA012/A9A4
    .word       L_3BA4DE                    ; 3BA014/DEA4
    .word       L_3BA4E8                    ; 3BA016/E8A4
    .word       L_3BA4F2                    ; 3BA018/F2A4
    .word       L_3BA4FC                    ; 3BA01A/FCA4
    .word       L_3BA506                    ; 3BA01C/06A5
    .word       L_3BA510                    ; 3BA01E/10A5
    .word       L_3BA430                    ; 3BA020/30A4
    .word       L_3BA493                    ; 3BA022/93A4
    .word       L_3BA29C                    ; 3BA024/9CA2
    .word       L_3BA05C                    ; 3BA026/5CA0
    .word       L_3BA060                    ; 3BA028/60A0
    .word       L_3BA064                    ; 3BA02A/64A0
L_3BA02C:
    ASMCALL     Delete17Objects                       ; 3BA02C/D01AA5
    ASMCALL     L_3BA52E                       ; 3BA02F/D02EA5
    ASMCALL     Load_Palette                       ; 3BA032/D061DF // Unknown ASM Load_Palette
    .word       B3B_a718                       ; 3BA035/18A7
    .byte       $00                         ; 3BA037/00
    .byte       $20                         ; 3BA038/20
    MOV         VAR1,#$10                   ; 3BA039/0D0110
    LOOP        #3                          ; 3BA03C/0103
        ASMCALL     CreateOBJInSlotBetween, WAIT #1              ; 3BA03E/D1D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $01                         ; 3BA041/01
        .byte       $12                         ; 3BA042/12
        .byte       $66                         ; 3BA043/66
        .byte       $00                         ; 3BA044/00
        .byte       $00                         ; 3BA045/00
        .byte       $00                         ; 3BA046/00
        .byte       $00                         ; 3BA047/00
        .byte       $00                         ; 3BA048/00
        ADD         VAR1,#1                     ; 3BA049/13010201
    ENDLOOP                                 ; 3BA04D/02
    SETXCAMERA       #0                   ; 3BA04E/300000
    SETYCAMERA       #0                   ; 3BA051/310000
    A_JSR       B3A_8027                       ; 3BA054/182780
    ONTICK      B3A_814a                     ; 3BA057/084A813A
    HALT                                    ; 3BA05B/09

L_3BA05C:
    JML         L_3CA0AE                    ; 3BA05C/03AEA03C

L_3BA060:
    JML         L_3CA0BB                    ; 3BA060/03BBA03C

L_3BA064:
    JML         L_3CA0C9                    ; 3BA064/03C9A03C

L_3BA068:
    A_JSR       B3A_8032                       ; 3BA068/183280
    ASMCALL     Delete17Objects                       ; 3BA06B/D01AA5
    ASMCALL     L_3BA577                       ; 3BA06E/D077A5
    WAIT        #30                         ; 3BA071/061E
    ASMCALL     Load_Palette                       ; 3BA073/D061DF // Unknown ASM Load_Palette
    .word       B3B_a738                       ; 3BA076/38A7
    .byte       $00                         ; 3BA078/00
    .byte       $20                         ; 3BA079/20
    SETXCAMERA       #0                   ; 3BA07A/300000
    SETYCAMERA       #0                   ; 3BA07D/310000
    WAIT        #1                          ; 3BA080/0601
    MOV         VAR1,#$00                   ; 3BA082/0D0100
    ASMCALL     B3E_dee1                       ; 3BA085/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $02                         ; 3BA088/02
    .byte       $66                         ; 3BA089/66
    .byte       $00                         ; 3BA08A/00
    .byte       $00                         ; 3BA08B/00
    .byte       $00                         ; 3BA08C/00
    .byte       $00                         ; 3BA08D/00
    .byte       $01                         ; 3BA08E/01
    ASMCALL     B3E_dee1                       ; 3BA08F/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $03                         ; 3BA092/03
    .byte       $66                         ; 3BA093/66
    .byte       $00                         ; 3BA094/00
    .byte       $00                         ; 3BA095/00
    .byte       $00                         ; 3BA096/00
    .byte       $00                         ; 3BA097/00
    .byte       $02                         ; 3BA098/02
    ASMCALL     B3E_dee1                       ; 3BA099/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $04                         ; 3BA09C/04
    .byte       $66                         ; 3BA09D/66
    .byte       $00                         ; 3BA09E/00
    .byte       $00                         ; 3BA09F/00
    .byte       $00                         ; 3BA0A0/00
    .byte       $00                         ; 3BA0A1/00
    .byte       $03                         ; 3BA0A2/03
    MOV         VAR3,#$00                   ; 3BA0A3/0D0300
    LOOP        #3                          ; 3BA0A6/0103
        ASMCALL     B3E_de51, WAIT #1              ; 3BA0A8/D151DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
        .byte       $66                         ; 3BA0AB/66
        .byte       $00                         ; 3BA0AC/00
        .byte       $00                         ; 3BA0AD/00
        .byte       $00                         ; 3BA0AE/00
        .byte       $00                         ; 3BA0AF/00
        .byte       $0E                         ; 3BA0B0/0E
        ADD         VAR3,#1                     ; 3BA0B1/13030201
    ENDLOOP                                 ; 3BA0B5/02
    A_JSR       B3A_8027                       ; 3BA0B6/182780
L_3BA0B9:
    WAIT        #1                          ; 3BA0B9/0601
    MOV         REG,$07B3                   ; 3BA0BB/1CB307
    JEQ         L_3BA0B9                    ; 3BA0BE/0AB9A0
    MOV         VAR7,#$00                   ; 3BA0C1/0D0700
    LOOP        #5                          ; 3BA0C4/0105
        ASMCALL     B3B_a6fc                       ; 3BA0C6/D0FCA6
        WAIT        #16                         ; 3BA0C9/0610
    ENDLOOP                                 ; 3BA0CB/02
L_3BA0CC:
    WAIT        #1                          ; 3BA0CC/0601
    MOV         REG,$07B4                   ; 3BA0CE/1CB407
    JNE         L_3BA0CC                    ; 3BA0D1/0BCCA0
    MOV         VAR7,#$05                   ; 3BA0D4/0D0705
    LOOP        #2                          ; 3BA0D7/0102
        ASMCALL     B3B_a6fc                       ; 3BA0D9/D0FCA6
        WAIT        #16                         ; 3BA0DC/0610
    ENDLOOP                                 ; 3BA0DE/02
    ASMCALL     Load_Palette                       ; 3BA0DF/D061DF // Unknown ASM Load_Palette
    .word       B3B_a85a                       ; 3BA0E2/5AA8
    .byte       $00                         ; 3BA0E4/00
    .byte       $20                         ; 3BA0E5/20
    WAIT        #50                         ; 3BA0E6/0632
    ONTICK      B3A_8128                     ; 3BA0E8/0828813A
    HALT                                    ; 3BA0EC/09

L_3BA0ED:
    WAIT        #1                          ; 3BA0ED/0601
    ASMCALL     B3A_80ed                       ; 3BA0EF/D0ED80
    JEQ         L_3BA0ED                    ; 3BA0F2/0AEDA0
    ASMCALL     B3A_8103                       ; 3BA0F5/D00381
    TABLEJMP    #3                          ; 3BA0F8/0F03
    .word       L_3BA105                    ; 3BA0FA/05A1
    .word       L_3BA118                    ; 3BA0FC/18A1
    .word       L_3BA118                    ; 3BA0FE/18A1
    WAIT        #24                         ; 3BA100/0618
    A_JMP       L_3BA128                    ; 3BA102/1728A1

L_3BA105:
    ASMCALL     Load_Palette                       ; 3BA105/D061DF // Unknown ASM Load_Palette
    .word       B3B_a80e                       ; 3BA108/0EA8
    .byte       $04                         ; 3BA10A/04
    .byte       $18                         ; 3BA10B/18
    WAIT        #24                         ; 3BA10C/0618
    ASMCALL     Load_Palette                       ; 3BA10E/D061DF // Unknown ASM Load_Palette
    .word       B3B_a826                       ; 3BA111/26A8
    .byte       $04                         ; 3BA113/04
    .byte       $0C                         ; 3BA114/0C
    A_JMP       L_3BA128                    ; 3BA115/1728A1

L_3BA118:
    ASMCALL     Load_Palette                       ; 3BA118/D061DF // Unknown ASM Load_Palette
    .word       B3B_a80e                       ; 3BA11B/0EA8
    .byte       $04                         ; 3BA11D/04
    .byte       $18                         ; 3BA11E/18
    WAIT        #24                         ; 3BA11F/0618
    ASMCALL     Load_Palette                       ; 3BA121/D061DF // Unknown ASM Load_Palette
    .word       B3B_a832                       ; 3BA124/32A8
    .byte       $04                         ; 3BA126/04
    .byte       $18                         ; 3BA127/18
L_3BA128:
    MOV         VAR1,#$05                   ; 3BA128/0D0105
    LOOP        #2                          ; 3BA12B/0102
        ASMCALL     CreateOBJInSlotBetween                       ; 3BA12D/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $05                         ; 3BA130/05
        .byte       $0D                         ; 3BA131/0D
        .byte       $66                         ; 3BA132/66
        .byte       $00                         ; 3BA133/00
        .byte       $00                         ; 3BA134/00
        .byte       $00                         ; 3BA135/00
        .byte       $00                         ; 3BA136/00
        .byte       $00                         ; 3BA137/00
        ADD         VAR1,#1                     ; 3BA138/13010201
    ENDLOOP                                 ; 3BA13C/02
    ASMCALL     Load_Palette                       ; 3BA13D/D061DF // Unknown ASM Load_Palette
    .word       B3B_a84e                       ; 3BA140/4EA8
    .byte       $14                         ; 3BA142/14
    .byte       $0C                         ; 3BA143/0C
    ASMCALL     B3A_8113                       ; 3BA144/D01381
    TABLEJMP    #3                          ; 3BA147/0F03
    .word       L_3BA16A                    ; 3BA149/6AA1
    .word       L_3BA16A                    ; 3BA14B/6AA1
    .word       L_3BA166                    ; 3BA14D/66A1
    MOV         VAR1,#$07                   ; 3BA14F/0D0107
    LOOP        #6                          ; 3BA152/0106
        ASMCALL     CreateOBJInSlotBetween                       ; 3BA154/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $05                         ; 3BA157/05
        .byte       $0D                         ; 3BA158/0D
        .byte       $66                         ; 3BA159/66
        .byte       $00                         ; 3BA15A/00
        .byte       $00                         ; 3BA15B/00
        .byte       $00                         ; 3BA15C/00
        .byte       $00                         ; 3BA15D/00
        .byte       $00                         ; 3BA15E/00
        ADD         VAR1,#1                     ; 3BA15F/13010201
    ENDLOOP                                 ; 3BA163/02
    WAIT        #150                        ; 3BA164/0696
L_3BA166:
    WAIT        #150                        ; 3BA166/0696
    WAIT        #150                        ; 3BA168/0696
L_3BA16A:
    WAIT        #150                        ; 3BA16A/0696
    JML         L_3CB9E6                    ; 3BA16C/03E6B93C

L_3BA170:
    ASMCALL     PlayMusic                       ; 3BA170/D045DE // Unknown ASM PlayMusic
    .byte       $13                         ; 3BA173/13
    SPRITEMAP   B3A_8160                     ; 3BA174/1A60813A
    SETXPOS     #$0060                      ; 3BA178/2A6000
    SETYPOS     #$0032                      ; 3BA17B/2B3200
    SETZPOS     #$0080                      ; 3BA17E/3A8000
    LOOP        #3                          ; 3BA181/0103
        SETXVEL     #$FFE0                      ; 3BA183/B0E0FF
        SETYVEL     #$0200                      ; 3BA186/C00002
        SETPOSE     #$00, WAIT #3               ; 3BA189/5300
        SETXVEL     #$FFF0                      ; 3BA18B/B0F0FF
        INCPOSE     WAIT #3                     ; 3BA18E/73
        SETXVEL     #$FFF8                      ; 3BA18F/B0F8FF
        INCPOSE     WAIT #3                     ; 3BA192/73
        SETXVEL     #$0008                      ; 3BA193/B00800
        INCPOSE     WAIT #3                     ; 3BA196/73
        SETXVEL     #$0010                      ; 3BA197/B01000
        INCPOSE     WAIT #3                     ; 3BA19A/73
        SETXVEL     #$0020                      ; 3BA19B/B02000
        INCPOSE     WAIT #3                     ; 3BA19E/73
    ENDLOOP                                 ; 3BA19F/02
    SETYVEL     #$FE00                      ; 3BA1A0/C000FE
    SETPOSE     #$00, WAIT #6               ; 3BA1A3/5600
    SETYVEL     #$FF80, WAIT #6             ; 3BA1A5/C680FF
    SETYVEL     #$FFF0, WAIT #6             ; 3BA1A8/C6F0FF
    SETYVEL     #$0010, WAIT #6             ; 3BA1AB/C61000
    SETYVEL     #$0080, WAIT #6             ; 3BA1AE/C68000
    SETYVEL     #$0200, WAIT #6             ; 3BA1B1/C60002
    ZEROVEL                                 ; 3BA1B4/38
    SETPOSE     #$06                        ; 3BA1B5/5006
    WAIT        #48                         ; 3BA1B7/0630
    SETPOSE     #$0C                        ; 3BA1B9/500C
    SETYVEL     #$FFE0, WAIT #8             ; 3BA1BB/C8E0FF
    SETPOSE     #$00                        ; 3BA1BE/5000
    SETYVEL     #$0020, WAIT #8             ; 3BA1C0/C82000
    ZEROVEL                                 ; 3BA1C3/38
    ADDYPOS     #-4                         ; 3BA1C4/2DFCFF
    SETPOSE     #$07                        ; 3BA1C7/5007
    WAIT        #80                         ; 3BA1C9/0650
    MOV         VAR0,#$00                   ; 3BA1CB/0D0000
    MOV         VAR7,#$00                   ; 3BA1CE/0D0700
    SETPOSE     #$0B                        ; 3BA1D1/500B
    ONTICK      B3A_8059                     ; 3BA1D3/0859803A
    HALT                                    ; 3BA1D7/09

L_3BA1D8:
    SETXPOS     #$0065                      ; 3BA1D8/2A6500
    ONTICK      B3A_8059                     ; 3BA1DB/0859803A
    SETPOSE     #$09                        ; 3BA1DF/5009
    ADDXPOS     #-4                         ; 3BA1E1/2CFCFF
    WAIT        #1                          ; 3BA1E4/0601
    ADDXPOS     #4                          ; 3BA1E6/2C0400
    WAIT        #1                          ; 3BA1E9/0601
    ADDXPOS     #4                          ; 3BA1EB/2C0400
    WAIT        #1                          ; 3BA1EE/0601
    ADDXPOS     #-4                         ; 3BA1F0/2CFCFF
    WAIT        #1                          ; 3BA1F3/0601
    SETPOSE     #$0B                        ; 3BA1F5/500B
    HALT                                    ; 3BA1F7/09

L_3BA1F8:
    SETXPOS     #$0065                      ; 3BA1F8/2A6500
    ONTICK      B3A_8059                     ; 3BA1FB/0859803A
    SETPOSE     #$10, WAIT #1               ; 3BA1FF/5110
    SETPOSE     #$0B, WAIT #1               ; 3BA201/510B
    HALT                                    ; 3BA203/09

L_3BA204:
    SETXPOS     #$0065                      ; 3BA204/2A6500
    SETPOSE     #$08                        ; 3BA207/5008
    ONTICK      B3A_8059                     ; 3BA209/0859803A
    HALT                                    ; 3BA20D/09

L_3BA20E:
    ASMCALL     B3E_de4b                       ; 3BA20E/D04BDE // Play sound effect
L_3BA2011:
    .byte       $02                         ; 3BA211/02
    SETXPOS     #$0065                      ; 3BA212/2A6500
    ONTICK      B3A_8059                     ; 3BA215/0859803A
    ADDXPOS     #-2                         ; 3BA219/2CFEFF
    WAIT        #1                          ; 3BA21C/0601
    ADDXPOS     #2                          ; 3BA21E/2C0200
    WAIT        #1                          ; 3BA221/0601
    ADDXPOS     #2                          ; 3BA223/2C0200
    WAIT        #1                          ; 3BA226/0601
    ADDXPOS     #-2                         ; 3BA228/2CFEFF
    WAIT        #1                          ; 3BA22B/0601
    HALT                                    ; 3BA22D/09

L_3BA22E:
    ASMCALL     B3A_8113                       ; 3BA22E/D01381
    TABLEJMP    #3                          ; 3BA231/0F03
    .word       L_3BA26F                    ; 3BA233/6FA2
    .word       L_3BA26F                    ; 3BA235/6FA2
    .word       L_3BA23D                    ; 3BA237/3DA2
    SETPOSE     #$08                        ; 3BA239/5008
    WAIT        #84                         ; 3BA23B/0654
L_3BA23D:
    SETPOSE     #$07                        ; 3BA23D/5007
    WAIT        #81                         ; 3BA23F/0651
    INC2POSE    WAIT #5                     ; 3BA241/95
    DECPOSE     WAIT #1                     ; 3BA242/81
    ASMCALL     B3A_804a                       ; 3BA243/D04A80
    MOV         VAR1,#$00                   ; 3BA246/0D0100
    ASMCALL     L_3BA3C2                    ; 3BA249/D0C2A3
    MOV         REG,VAR2                    ; 3BA24C/1E02
    LOOP        REG                         ; 3BA24E/22
        ASMCALL     B3E_de51                       ; 3BA24F/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
        .byte       $66                         ; 3BA252/66
        .byte       $00                         ; 3BA253/00
        .byte       $00                         ; 3BA254/00
        .byte       $00                         ; 3BA255/00
        .byte       $00                         ; 3BA256/00
        .byte       $0D                         ; 3BA257/0D
        WAIT        #35                         ; 3BA258/0623
    ENDLOOP                                 ; 3BA25A/02
    TASK        TASK_3BA265                 ; 3BA25B/0765A2
    WAIT        #32                         ; 3BA25E/0620
    SETPOSE     #$09, WAIT #4               ; 3BA260/5409
    SETPOSE     #$07, WAIT #1               ; 3BA262/5107
    HALT                                    ; 3BA264/09

TASK_3BA265:
    LOOP        #4                          ; 3BA265/0104
        ASMCALL     PlayMusic                       ; 3BA267/D045DE // Unknown ASM PlayMusic
        .byte       $25                         ; 3BA26A/25
        WAIT        #35                         ; 3BA26B/0623
    ENDLOOP                                 ; 3BA26D/02
    ENDTASK                                 ; 3BA26E/0C

L_3BA26F:
    MOV         REG,$07B2                   ; 3BA26F/1CB207
    JNE         L_3BA278                    ; 3BA272/0B78A2
    SETPOSE     #$0B, WAIT #2               ; 3BA275/520B
    HALT                                    ; 3BA277/09

L_3BA278:
    MOV         VAR1,#$00                   ; 3BA278/0D0100
    ASMCALL     B3E_de51                       ; 3BA27B/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $66                         ; 3BA27E/66
    .byte       $00                         ; 3BA27F/00
    .byte       $00                         ; 3BA280/00
    .byte       $00                         ; 3BA281/00
    .byte       $00                         ; 3BA282/00
    .byte       $0F                         ; 3BA283/0F
    ONMOVE      AS_Move_ApplyXY_Absolute                       ; 3BA284/2364D8
    ONPOSITION  B3E_d968                       ; 3BA287/2168D9
    TASK        TASK_3BA2BB                 ; 3BA28A/07BBA2
    MOV         VAR0,#$00                   ; 3BA28D/0D0000
    SETPOSE     #$00, WAIT #5               ; 3BA290/5500
    SETPOSE     #$0A, WAIT #2               ; 3BA292/520A
    INCPOSE     WAIT #2                     ; 3BA294/72
    DECPOSE     WAIT #2                     ; 3BA295/82
    INCPOSE     WAIT #2                     ; 3BA296/72
    SETPOSE     #$0D                        ; 3BA297/500D
    WAIT        #16                         ; 3BA299/0610
    HALT                                    ; 3BA29B/09
L_3BA29C:
    ASMCALL     Load_Palette                       ; 3BA29C/D061DF // Unknown ASM Load_Palette
    .word       B3B_a84a                       ; 3BA29F/4AA8
    .byte       $14                         ; 3BA2A1/14
    .byte       $04                         ; 3BA2A2/04
    ASMCALL     B3E_de4b                       ; 3BA2A3/D04BDE // Play sound effect
    .byte       $11                         ; 3BA2A6/11
    ONMOVE      AS_Move_ApplyXY_Absolute                       ; 3BA2A7/2364D8
    ONPOSITION  B3E_d968                       ; 3BA2AA/2168D9
    SPRITEMAP   B3A_825f                     ; 3BA2AD/1A5F823A
    SETPOSE     #$00, WAIT #2               ; 3BA2B1/5200
    INCPOSE     WAIT #2                     ; 3BA2B3/72
    INCPOSE     WAIT #2                     ; 3BA2B4/72
    INCPOSE     WAIT #2                     ; 3BA2B5/72
    INCPOSE     WAIT #2                     ; 3BA2B6/72
    INCPOSE     WAIT #2                     ; 3BA2B7/72
    INCPOSE     WAIT #2                     ; 3BA2B8/72
    INCPOSE     WAIT #2                     ; 3BA2B9/72
    END                                     ; 3BA2BA/00

TASK_3BA2BB:
    UNK37       #$02,#$00                   ; 3BA2BB/370200
    WAIT        #2                          ; 3BA2BE/0602
    LOOP        #2                          ; 3BA2C0/0102
        UNK36       #$02,#$00                   ; 3BA2C2/360200
        UNK37       #$FC,#$FF                   ; 3BA2C5/37FCFF
        WAIT        #2                          ; 3BA2C8/0602
        UNK36       #$FC,#$FF                   ; 3BA2CA/36FCFF
        UNK37       #$04,#$00                   ; 3BA2CD/370400
        WAIT        #2                          ; 3BA2D0/0602
        UNK36       #$04,#$00                   ; 3BA2D2/360400
        UNK37       #$FE,#$FF                   ; 3BA2D5/37FEFF
        WAIT        #2                          ; 3BA2D8/0602
        UNK36       #$FC,#$FF                   ; 3BA2DA/36FCFF
        UNK37       #$00,#$00                   ; 3BA2DD/370000
        WAIT        #2                          ; 3BA2E0/0602
        UNK36       #$04,#$00                   ; 3BA2E2/360400
        UNK37       #$02,#$00                   ; 3BA2E5/370200
        WAIT        #2                          ; 3BA2E8/0602
        UNK36       #$FC,#$FF                   ; 3BA2EA/36FCFF
        UNK37       #$FC,#$FF                   ; 3BA2ED/37FCFF
        WAIT        #2                          ; 3BA2F0/0602
        UNK36       #$02,#$00                   ; 3BA2F2/360200
        UNK37       #$04,#$00                   ; 3BA2F5/370400
        WAIT        #2                          ; 3BA2F8/0602
    ENDLOOP                                 ; 3BA2FA/02
    UNK37       #$FE,#$FF                   ; 3BA2FB/37FEFF
    WAIT        #2                          ; 3BA2FE/0602
    ENDTASK                                 ; 3BA300/0C

L_3BA301:
    SPRITEMAP   B3A_8337                     ; 3BA301/1A37833A
    SETXPOS     #$00C0                      ; 3BA305/2AC000
    SETYPOS     #$0070                      ; 3BA308/2B7000
    SETZPOS     #$0080                      ; 3BA30B/3A8000
    ZEROVEL                                 ; 3BA30E/38
L_3BA30F:
    SETPOSE     #$00, WAIT #1               ; 3BA30F/5100
    MOV         REG,$07B3                   ; 3BA311/1CB307
    JEQ         L_3BA30F                    ; 3BA314/0A0FA3
    MOV         $07B4,#$01                  ; 3BA317/11B40701
    WAIT        #90                         ; 3BA31B/065A
    SETPOSE     #$0A, WAIT #5               ; 3BA31D/550A
    SETYVEL     #$FF00, WAIT #1             ; 3BA31F/C100FF
    SETYVEL     #$FF80, WAIT #1             ; 3BA322/C180FF
    SETYVEL     #$FFE0, WAIT #1             ; 3BA325/C1E0FF
    SETYVEL     #$0020, WAIT #1             ; 3BA328/C12000
    SETYVEL     #$0080, WAIT #1             ; 3BA32B/C18000
    SETYVEL     #$0100, WAIT #1             ; 3BA32E/C10001
    ZEROVEL                                 ; 3BA331/38
    WAIT        #21                         ; 3BA332/0615
    INCPOSE                                 ; 3BA334/70
    WAIT        #48                         ; 3BA335/0630
    MOV         $07B4,#$00                  ; 3BA337/11B40700
    WAIT        #5                          ; 3BA33B/0605
    MOV         VAR3,#$00                   ; 3BA33D/0D0300
    MOV         VAR4,#$00                   ; 3BA340/0D0400
L_3BA343:
    ONTICK      L_3BA646                     ; 3BA343/0846A63B
    SETXVEL     #$0020                      ; 3BA347/B02000
L_3BA34A:
    SETPOSE     #$05, WAIT #3               ; 3BA34A/5305
    DECPOSE     WAIT #1                     ; 3BA34C/81
    A_JMP       L_3BA34A                    ; 3BA34D/174AA3

L_3BA350:
    ZEROVEL                                 ; 3BA350/38
    SETXPOS     #$00C0                      ; 3BA351/2AC000
    SETYPOS     #$0070                      ; 3BA354/2B7000
    SETZPOS     #$0080                      ; 3BA357/3A8000
    MOV         VAR1,#$00                   ; 3BA35A/0D0100
    ASMCALL     CreateOBJInSlotBetween                       ; 3BA35D/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $05                         ; 3BA360/05
    .byte       $0F                         ; 3BA361/0F
    .byte       $66                         ; 3BA362/66
    .byte       $00                         ; 3BA363/00
    .byte       $00                         ; 3BA364/00
    .byte       $00                         ; 3BA365/00
    .byte       $00                         ; 3BA366/00
    .byte       $04                         ; 3BA367/04
    SETPOSE     #$05, WAIT #1               ; 3BA368/5105
    ONTICK      L_3BA646                     ; 3BA36A/0846A63B
    SETPOSE     #$08, WAIT #5               ; 3BA36E/5508
    DEC2POSE    WAIT #5                     ; 3BA370/A5
    INCPOSE     WAIT #5                     ; 3BA371/75
    SETPOSE     #$05, WAIT #2               ; 3BA372/5205
    DECPOSE     WAIT #1                     ; 3BA374/81
    SETPOSE     #$09, WAIT #10              ; 3BA375/5A09
    A_JMP       L_3BA343                    ; 3BA377/1743A3

L_3BA37A:
    ZEROVEL                                 ; 3BA37A/38
    SETPOSE     #$00, WAIT #1               ; 3BA37B/5100
    ASMCALL     B3A_80d9                       ; 3BA37D/D0D980
    JEQ         L_3BA37A                    ; 3BA380/0A7AA3
    ASMCALL     B3A_8113                       ; 3BA383/D01381
    TABLEJMP    #2                          ; 3BA386/0F02
    .word       L_3BA3A7                    ; 3BA388/A7A3
    .word       L_3BA3A7                    ; 3BA38A/A7A3
    SETPOSE     #$00                        ; 3BA38C/5000
    WAIT        #32                         ; 3BA38E/0620
    SETPOSE     #$09, WAIT #2               ; 3BA390/5209
    SETPOSE     #$0D, WAIT #15              ; 3BA392/5F0D
    INCPOSE     WAIT #1                     ; 3BA394/71
    DECPOSE                                 ; 3BA395/80
    WAIT        #52                         ; 3BA396/0634
    LOOP        #3                          ; 3BA398/0103
        SETPOSE     #$0D, WAIT #2               ; 3BA39A/520D
        INCPOSE     WAIT #2                     ; 3BA39C/72
    ENDLOOP                                 ; 3BA39D/02
    LOOP        #4                          ; 3BA39E/0104
        SETPOSE     #$0F, WAIT #15              ; 3BA3A0/5F0F
        INCPOSE     WAIT #15                    ; 3BA3A2/7F
    ENDLOOP                                 ; 3BA3A3/02
    SETPOSE     #$0E, WAIT #15              ; 3BA3A4/5F0E
    HALT                                    ; 3BA3A6/09

L_3BA3A7:
    SETPOSE     #$0A, WAIT #5               ; 3BA3A7/550A
    SETYVEL     #$FE00, WAIT #2             ; 3BA3A9/C200FE
    SETYVEL     #$FEC0, WAIT #2             ; 3BA3AC/C2C0FE
    SETYVEL     #$FF80, WAIT #2             ; 3BA3AF/C280FF
    SETYVEL     #$0080, WAIT #2             ; 3BA3B2/C28000
    SETYVEL     #$0140, WAIT #2             ; 3BA3B5/C24001
    SETYVEL     #$0200, WAIT #2             ; 3BA3B8/C20002
    ZEROVEL                                 ; 3BA3BB/38
    WAIT        #21                         ; 3BA3BC/0615
    INCPOSE                                 ; 3BA3BE/70
    WAIT        #100                        ; 3BA3BF/0664
    HALT                                    ; 3BA3C1/09

L_3BA3C2:
    rts

L_3BA3C3:
    SPRITEMAP   B3A_855e                     ; 3BA3C3/1A5E853A
    SETXPOS     #$0058                      ; 3BA3C7/2A5800
    SETYPOS     #$0099                      ; 3BA3CA/2B9900
    SETZPOS     #$0080                      ; 3BA3CD/3A8000
    SETPOSE     #$FF                        ; 3BA3D0/50FF
    WAIT        #60                         ; 3BA3D2/063C
    SETXVEL     #$FFC0                      ; 3BA3D4/B0C0FF
    SETYVEL     #$FE00                      ; 3BA3D7/C000FE
    SETPOSE     #$00, WAIT #2               ; 3BA3DA/5200
    SETYVEL     #$FEC0, WAIT #2             ; 3BA3DC/C2C0FE
    SETYVEL     #$FF80, WAIT #2             ; 3BA3DF/C280FF
    SETYVEL     #$FFE0, WAIT #2             ; 3BA3E2/C2E0FF
    SETYVEL     #$FFF8, WAIT #2             ; 3BA3E5/C2F8FF
    ZEROVEL                                 ; 3BA3E8/38
    SETPOSE     #$FF                        ; 3BA3E9/50FF
    SETXPOS     #$00A8                      ; 3BA3EB/2AA800
    SETYPOS     #$004F                      ; 3BA3EE/2B4F00
    SETZPOS     #$0001                      ; 3BA3F1/3A0100
    WAIT        #1                          ; 3BA3F4/0601
    MOV         $07B3,#$01                  ; 3BA3F6/11B30701
    WAIT        #1                          ; 3BA3FA/0601
    SETPOSE     #$01                        ; 3BA3FC/5001
    WAIT        #52                         ; 3BA3FE/0634
    WAIT        #16                         ; 3BA400/0610
L_3BA402:
    MOV         REG,$07B4                   ; 3BA402/1CB407
    JEQ         L_3BA40D                    ; 3BA405/0A0DA4
    WAIT        #1                          ; 3BA408/0601
    A_JMP       L_3BA402                    ; 3BA40A/1702A4

L_3BA40D:
    WAIT        #1                          ; 3BA40D/0601
    SETPOSE     #$FF, WAIT #1               ; 3BA40F/51FF
    MOV         REG,$07AF                   ; 3BA411/1CAF07
    TABLEJMP    #2                          ; 3BA414/0F02
    .word       L_3BA40D                    ; 3BA416/0DA4
    .word       $8000                       ; 3BA418/0080
L_3BA41A:
    WAIT        #1                          ; 3BA41A/0601
    ASMCALL     B3A_80ed                       ; 3BA41C/D0ED80
    JEQ         L_3BA41A                    ; 3BA41F/0A1AA4
    ASMCALL     B3A_8113                       ; 3BA422/D01381
    TABLEJMP    #4                          ; 3BA425/0F04
    .word       L_3BA42F                    ; 3BA427/2FA4
    .word       L_3BA42F                    ; 3BA429/2FA4
    .word       L_3BA42F                    ; 3BA42B/2FA4
    .word       L_3BA497                    ; 3BA42D/97A4
L_3BA42F:
    END                                     ; 3BA42F/00

L_3BA430:
    SPRITEMAP   B3A_85de                     ; 3BA430/1ADE853A
    SETXPOS     #$0068                      ; 3BA434/2A6800
    SETYPOS     #$009A                      ; 3BA437/2B9A00
    SETZPOS     #$007F                      ; 3BA43A/3A7F00
    ZEROVEL                                 ; 3BA43D/38
    ASMCALL     PlayMusic                       ; 3BA43E/D045DE // Unknown ASM PlayMusic
    .byte       $25                         ; 3BA441/25
    SETXVEL     #$0080                      ; 3BA442/B08000
    SETYVEL     #$FEC0                      ; 3BA445/C0C0FE
    SETPOSE     #$07, WAIT #5               ; 3BA448/5507
    SETYVEL     #$FF80, WAIT #5             ; 3BA44A/C580FF
    SETYVEL     #$FFF0, WAIT #5             ; 3BA44D/C5F0FF
    SETYVEL     #$0080, WAIT #5             ; 3BA450/C58000
    SETYVEL     #$0140, WAIT #5             ; 3BA453/C54001
    SETYVEL     #$0200, WAIT #5             ; 3BA456/C50002
    SETXVEL     #$0040                      ; 3BA459/B04000
    LOOP        #4                          ; 3BA45C/0104
        SETYVEL     #$FEC0, WAIT #3             ; 3BA45E/C3C0FE
        SETYVEL     #$FF80, WAIT #3             ; 3BA461/C380FF
        SETYVEL     #$FFF0, WAIT #3             ; 3BA464/C3F0FF
        SETPOSE     #$06                        ; 3BA467/5006
        SETYVEL     #$0010, WAIT #3             ; 3BA469/C31000
        SETYVEL     #$0080, WAIT #3             ; 3BA46C/C38000
        SETYVEL     #$0140, WAIT #3             ; 3BA46F/C34001
        INCPOSE                                 ; 3BA472/70
    ENDLOOP                                 ; 3BA473/02
    SETXVEL     #$0010                      ; 3BA474/B01000
    SETPOSE     #$07                        ; 3BA477/5007
    SETYVEL     #$FEC0, WAIT #5             ; 3BA479/C5C0FE
    SETYVEL     #$FF80, WAIT #5             ; 3BA47C/C580FF
    SETYVEL     #$FFF0, WAIT #5             ; 3BA47F/C5F0FF
    ZEROVEL                                 ; 3BA482/38
    SETYVEL     #$0100, WAIT #5             ; 3BA483/C50001
    LOOP        #8                          ; 3BA486/0108
        SETPOSE     #$07, WAIT #1               ; 3BA488/5107
        SETPOSE     #$FF, WAIT #1               ; 3BA48A/51FF
    ENDLOOP                                 ; 3BA48C/02
    ZEROVEL                                 ; 3BA48D/38
    END                                     ; 3BA48E/00

L_3BA48F:
    JML         L_3CBACD                    ; 3BA48F/03CDBA3C

L_3BA493:
    JML         L_3CBB33                    ; 3BA493/0333BB3C

L_3BA497:
    JML         L_3CBB4F                    ; 3BA497/034FBB3C

L_3BA49B:
    ASMCALL     B3A_8113                       ; 3BA49B/D01381
    TABLEJMP    #4                          ; 3BA49E/0F04
    .word       L_3BA4B6                    ; 3BA4A0/B6A4
    .word       L_3BA497                    ; 3BA4A2/97A4
    .word       L_3BA497                    ; 3BA4A4/97A4
    .word       L_3BA4CA                    ; 3BA4A6/CAA4
L_3BA4A8:
    END                                     ; 3BA4A8/00

L_3BA4A9:
    ASMCALL     B3A_8113                       ; 3BA4A9/D01381
    TABLEJMP    #4                          ; 3BA4AC/0F04
    .word       L_3BA4A8                    ; 3BA4AE/A8A4
    .word       L_3BA4C0                    ; 3BA4B0/C0A4
    .word       L_3BA4C0                    ; 3BA4B2/C0A4
    .word       L_3BA4D4                    ; 3BA4B4/D4A4
L_3BA4B6:
    SETXPOS     #$0080                      ; 3BA4B6/2A8000
    SETYPOS     #$0040                      ; 3BA4B9/2B4000
    JML         L_3CB27A                    ; 3BA4BC/037AB23C

L_3BA4C0:
    SETXPOS     #$007E                      ; 3BA4C0/2A7E00
    SETYPOS     #$0040                      ; 3BA4C3/2B4000
    JML         L_3CB28E                    ; 3BA4C6/038EB23C

L_3BA4CA:
    SETXPOS     #$0082                      ; 3BA4CA/2A8200
    SETYPOS     #$0048                      ; 3BA4CD/2B4800
    JML         L_3CB299                    ; 3BA4D0/0399B23C

L_3BA4D4:
    SETXPOS     #$0082                      ; 3BA4D4/2A8200
    SETYPOS     #$0048                      ; 3BA4D7/2B4800
    JML         L_3CB2AE                    ; 3BA4DA/03AEB23C

L_3BA4DE:
    SETXPOS     #$0082                      ; 3BA4DE/2A8200
    SETYPOS     #$0048                      ; 3BA4E1/2B4800
    JML         L_3CB2C3                    ; 3BA4E4/03C3B23C

L_3BA4E8:
    SETXPOS     #$0082                      ; 3BA4E8/2A8200
    SETYPOS     #$0048                      ; 3BA4EB/2B4800
    JML         L_3CB2DA                    ; 3BA4EE/03DAB23C

L_3BA4F2:
    SETXPOS     #$0082                      ; 3BA4F2/2A8200
    SETYPOS     #$0048                      ; 3BA4F5/2B4800
    JML         L_3CB2EE                    ; 3BA4F8/03EEB23C

L_3BA4FC:
    SETXPOS     #$0082                      ; 3BA4FC/2A8200
    SETYPOS     #$0048                      ; 3BA4FF/2B4800
    JML         L_3CB302                    ; 3BA502/0302B33C

L_3BA506:
    SETXPOS     #$0082                      ; 3BA506/2A8200
    SETYPOS     #$0048                      ; 3BA509/2B4800
    JML         L_3CB319                    ; 3BA50C/0319B33C

L_3BA510:
    SETXPOS     #$0082                      ; 3BA510/2A8200
    SETYPOS     #$0048                      ; 3BA513/2B4800
    JML         L_3CB330                    ; 3BA516/0330B33C

;3ba51a
Delete17Objects:
    ldx #17
    @loop:
    ldy OBJ_script,x
    cpy #$ff
    beq @end
    cpx curr_object_slot
    beq @end
    jsr OBJ_Destroy
    @end:
    dex
    bne @loop
    rts

L_3BA52E:
    jsr B3E_c082
    ldx #$80
    stx a:chr_banks
    ldx #$ff
    stx a:chr_banks+2
    ldx #$db
    stx a:chr_banks+3
    ldx #$4d
    stx a:chr_banks+4
    inx
    stx a:chr_banks+5
    lda #$00
    sta a:scroll_type
    lda #.LOBYTE(B3B_a881)
    sta ptr0
    lda #.HIBYTE(B3B_a881)
    sta ptr0+1
    lda #.LOBYTE($68c8)
    sta ptr1
    lda #.HIBYTE($68c8)
    sta ptr1+1
    jsr Decompress
    jsr B3E_c0be
    .addr B3B_a87a
    lda #$06
    ora a:ram_PPUMASK
    sta a:ram_PPUMASK
    lda #$fc
    sta a:$1a2
    jsr B3E_c086
    rts

L_3BA577:
    jsr B3E_c082
    ldx #$5a
    stx a:chr_banks
    ldx #$5c
    stx a:chr_banks+1
    ldx #$00
    stx a:chr_banks+2
    ldx #$61
    stx a:chr_banks+3
    ldx #$5b
    stx a:chr_banks+4
    ldx #$60
    stx a:chr_banks+5
    lda #$00
    sta $051e
    sta MIRROR
    lda #$00
    sta $0180
    lda #.LOBYTE(B3B_a9c1)
    sta ptr0
    lda #.HIBYTE(B3B_a9c1)
    sta ptr0+1
    lda #.LOBYTE($68c8)
    sta ptr1
    lda #.HIBYTE($68c8)
    sta ptr1+1
    jsr Decompress
    jsr B3E_c42b
    jsr B3E_c0be
    .addr B3B_a87a
    jsr B3E_c086
    lda #$06
    ora a:ram_PPUMASK
    sta a:ram_PPUMASK
    lda #$00
    sta $07b4
    sta $07b3
    sta $07b0
    sta $07b1
    sta $07b2
    sta $07af
    sta $07ae
    sta $07ad
    sta $07b7
    sta $07ab
    sta $07ac
    sta $07d4
    sta $07d2
    sta $07de
    ldx $07d1
    lda L_3BA616,x
    sta $07ac
    lda #$0c
    sta $07b6
    lda #$02
    sta $07b5
    jsr L_3BA619
    lda #$77
    sta a:random_number
    sta a:random_number+1
    rts

L_3BA616:
.byte $00, $00, $03

L_3BA619:
    lda #$04
    jsr Rand
    asl a
    asl a
    tax
    lda L_3BA636,x
    sta $07de
    inx
    lda L_3BA636,x
    sta $07df
    inx
    lda L_3BA636,x
    sta $07e0
    rts

L_3BA636:
    .byte $04,$0C,$16,$00,$06,$0E,$18,$00
    .byte $08,$10,$1A,$00,$0A,$12,$19,$00

L_3BA646:
    lda $07af
    beq @L_3BA659
    ldx curr_object_slot
    lda #.BANK(L_3BA37A)
    sta $6031
    lda #.LOBYTE(L_3BA37A)
    ldy #.HIBYTE(L_3BA37A)
    jmp OBJ_TryReplaceScriptPc
    @L_3BA659:
    ldx $07ac
    lda L_3BA6A8,x
    jsr Rand
    bne @exit
    lda #$06
    jsr Rand
    tay
    lda L_3BA6B0,y
    ldx a:curr_object_slot
    sta $6200,x
    ldy #$09
    ldx #$05
    @L_3BA677:
    lda $6128,x
    bmi @L_3BA68A
    dey
    txa
    pha
    tya
    pha
    jsr L_3BA6B7
    pla
    tay
    pla
    tax
    bcc @exit
    @L_3BA68A:
    inx
    cpx #$0f
    bcc @L_3BA677
    tya
    bmi @exit
    ldx curr_object_slot
    lda #$00
    sta $6212,x
    ldx curr_object_slot
    lda #$3b
    sta $6031
    lda #$50
    ldy #$a3
    jmp OBJ_TryReplaceScriptPc
    @exit:
    rts


L_3BA6A8:
incbinRange "../split/prg/bank3b/unk0.bin", $6a8, $6b0

L_3BA6B0:
incbinRange "../split/prg/bank3b/unk0.bin", $6b0, $6b7

L_3BA6B7:
    ldy a:curr_object_slot
    lda $6200,y
    asl a
    asl a
    asl a
B3B_a6c0:
    clc
    adc UNK_796+22
    tay
    lda B3B_a6e4,y
    clc
    adc #$02
    sec
    sbc OBJ_var0,x
    sta tmp0
    lda #0
    sbc #0
    bpl @B3B_a6df
    lda tmp0
    eor #$ff
    sta tmp0
    inc tmp0
    @B3B_a6df:
    lda tmp0
    cmp #$08
    rts

B3B_a6e4:
incbinRange "../split/prg/bank3b/unk0.bin", $6e4, $6fc

B3B_a6fc:
    ldx curr_object_slot
    ldy $6248,x
B3B_a701:
    lda B3B_a758,y
    sta ptr1
    lda B3B_a75f,y
    sta ptr1+1
    lda #$04
    ldy #$18
    jsr B3E_c90e
    ldx curr_object_slot
    inc OBJ_var7,x
    rts

B3B_a718:
incbinRange "../split/prg/bank3b/unk0.bin", $718, $738

B3B_a738:
incbinRange "../split/prg/bank3b/unk0.bin", $738, $758

B3B_a758:
incbinRange "../split/prg/bank3b/unk0.bin", $758, $75f

B3B_a75f:
incbinRange "../split/prg/bank3b/unk0.bin", $75f, $80e

B3B_a80e:
incbinRange "../split/prg/bank3b/unk0.bin", $80e, $826

B3B_a826:
incbinRange "../split/prg/bank3b/unk0.bin", $826, $832

B3B_a832:
incbinRange "../split/prg/bank3b/unk0.bin", $832, $84a

B3B_a84a:
incbinRange "../split/prg/bank3b/unk0.bin", $84a, $84e

B3B_a84e:
incbinRange "../split/prg/bank3b/unk0.bin", $84e, $85a

B3B_a85a:
incbinRange "../split/prg/bank3b/unk0.bin", $85a, $87a

B3B_a87a:
incbinRange "../split/prg/bank3b/unk0.bin", $87a, $881

B3B_a881:
incbinRange "../split/prg/bank3b/unk0.bin", $881, $9c1

B3B_a9c1:
incbinRange "../split/prg/bank3b/unk0.bin", $9c1, $b7f

Script67_CraneFever:
    MOV         REG,VAR1                    ; 3BAB7F/1E01
    TABLEJMP    #16                         ; 3BAB81/0F10
    .word       CraneFever_DrawStartingSplash; 3BAB83/A3AB
    .word       CraneFever_Claw             ; 3BAB85/F4AF
    .word       CraneFever_KirbyPlush       ; 3BAB87/BEAC
    .word       CraneFever_KirbyPlushBig    ; 3BAB89/A2AD
    .word       CraneFever_ButtonFlash                    ; 3BAB8B/7FB1
    .word       CraneFever_Light                    ; 3BAB8D/C3B1
    .word       CraneFever_Finisher                    ; 3BAB8F/59B2
    .word       L_3BB27E                    ; 3BAB91/7EB2
    .word       L_3BB2A7                    ; 3BAB93/A7B2
    .word       L_3BB2DB                    ; 3BAB95/DBB2
    .word       L_3BB22D                    ; 3BAB97/2DB2
    .word       L_3BB243                    ; 3BAB99/43B2
    .word       CraneFever_CreditCount                    ; 3BAB9B/4EB1
    .word       CraneFever_DifficultyStar1  ; 3BAB9D/D6AB
    .word       CraneFever_DifficultyStar2  ; 3BAB9F/DAAB
    .word       CraneFever_DifficultyStar3  ; 3BABA1/DEAB
CraneFever_DrawStartingSplash:
    ;init stuff
    ASMCALL_l   Delete17Objects                     ; 3BABA3/261AA53B
    ASMCALL     CraneFever_LoadStartingSplash       ; 3BABA7/D020B3
    ASMCALL     Load_Palette                     ; 3BABAA/D061DF
    .word       CraneFever_Splash_Palette   ; 3BABAD/20BA
    .byte       $00,$20                         ; 3BABAF/0020

    ;make however many stars based on difficulty
    ;does not actually effect difficulty
    MOV         VAR1,#$0d                   ; 3BABB1/0D010D
    LOOP        #3                          ; 3BABB4/0103
        ASMCALL     CreateOBJInSlotBetween, WAIT #1 ; 3BABB6/D1D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $01                         ; 3BABB9/01
        .byte       $12                         ; 3BABBA/12
        .byte       $67                         ; 3BABBB/67
        .byte       $00                         ; 3BABBC/00
        .byte       $00                         ; 3BABBD/00
        .byte       $00                         ; 3BABBE/00
        .byte       $00                         ; 3BABBF/00
        .byte       $00                         ; 3BABC0/00
        ADD         VAR1,#1                     ; 3BABC1/13010201
    ENDLOOP                                 ; 3BABC5/02

    ;reset camera
    SETXCAMERA    #0                   ; 3BABC6/300000
    SETYCAMERA    #0                   ; 3BABC9/310000

    ;fade in
    A_JSR         CraneFever_FadeDarkIn                    ; 3BABCC/18A8AC
    WAIT        #30                         ; 3BABCF/061E

    ONTICK      L_3BB50D                     ; 3BABD1/080DB53B

    HALT                                    ; 3BABD5/09

;star 1
CraneFever_DifficultyStar1:
    JML         L_3CA0AE                    ; 3BABD6/03AEA03C
;star 2
CraneFever_DifficultyStar2:
    JML         L_3CA0BB                    ; 3BABDA/03BBA03C
;star 3
CraneFever_DifficultyStar3:
    JML         L_3CA0C9                    ; 3BABDE/03C9A03C

CraneFever_AdvanceSplash:
    ;fade out
    A_JSR       CraneFever_FadeDarkOut                    ; 3BABE2/18B3AC

    ;cleanup
    ASMCALL_l   Delete17Objects                     ; 3BABE5/261AA53B
    ASMCALL     L_3BB369                       ; 3BABE9/D069B3
    WAIT        #30                         ; 3BABEC/061E

    ;reset camera
    SETXCAMERA       #0                   ; 3BABEE/300000
    SETYCAMERA       #0                   ; 3BABF1/310000

    MOV         VAR1,#0                   ; 3BABF4/0D0100

    WAIT        #1                          ; 3BABF7/0601
    ;create claw
    ASMCALL     B3E_dee1                       ; 3BABF9/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $02                         ; 3BABFC/02
    .byte       $67                         ; 3BABFD/67
    .byte       $00                         ; 3BABFE/00
    .byte       $00                         ; 3BABFF/00
    .byte       $00                         ; 3BAC00/00
    .byte       $00                         ; 3BAC01/00
    .byte       $01                         ; 3BAC02/01
    ;create kirby small
    ASMCALL     B3E_dee1                       ; 3BAC03/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $03                         ; 3BAC06/03
    .byte       $67                         ; 3BAC07/67
    .byte       $00                         ; 3BAC08/00
    .byte       $00                         ; 3BAC09/00
    .byte       $00                         ; 3BAC0A/00
    .byte       $00                         ; 3BAC0B/00
    .byte       $02                         ; 3BAC0C/02
    ;create kirby big
    ASMCALL     B3E_dee1                       ; 3BAC0D/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $04                         ; 3BAC10/04
    .byte       $67                         ; 3BAC11/67
    .byte       $00                         ; 3BAC12/00
    .byte       $00                         ; 3BAC13/00
    .byte       $00                         ; 3BAC14/00
    .byte       $00                         ; 3BAC15/00
    .byte       $03                         ; 3BAC16/03

    ;make the lights on top of the machine
    MOV         VAR3,#0                   ; 3BAC17/0D0300
    LOOP        #6                          ; 3BAC1A/0106
        ASMCALL     CreateOBJInSlotBetween  ; 3BAC1C/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $07                         ; 3BAC1F/07
        .byte       $11                         ; 3BAC20/11
        .byte       $67                         ; 3BAC21/67
        .byte       $00                         ; 3BAC22/00
        .byte       $00                         ; 3BAC23/00
        .byte       $00                         ; 3BAC24/00
        .byte       $00                         ; 3BAC25/00
        .byte       $05                         ; 3BAC26/05
        WAIT        #1                          ; 3BAC27/0601
        ADD         VAR3,#1                     ; 3BAC29/13030201
    ENDLOOP                                 ; 3BAC2D/02

    ;make the button flasher
    ASMCALL     B3E_dee1                       ; 3BAC2E/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $05                         ; 3BAC31/05
    .byte       $67                         ; 3BAC32/67
    .byte       $00                         ; 3BAC33/00
    .byte       $00                         ; 3BAC34/00
    .byte       $00                         ; 3BAC35/00
    .byte       $00                         ; 3BAC36/00
    .byte       $04                         ; 3BAC37/04

    ;make the credit number sprite
    ASMCALL     B3E_dee1                       ; 3BAC38/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $06                         ; 3BAC3B/06
    .byte       $67                         ; 3BAC3C/67
    .byte       $00                         ; 3BAC3D/00
    .byte       $00                         ; 3BAC3E/00
    .byte       $00                         ; 3BAC3F/00
    .byte       $00                         ; 3BAC40/00
    .byte       $0C                         ; 3BAC41/0C

    A_JSR       CraneFever_FadeDarkIn                    ; 3BAC42/18A8AC


    ;infinite loop until $07c1 != 0
    @halt:
    WAIT        #1                          ; 3BAC45/0601
    MOV         REG,$07C1                   ; 3BAC47/1CC107
    JEQ         @halt                    ; 3BAC4A/0A45AC

    WAIT        #20                         ; 3BAC4D/0614

    ;make the finisher with type 6
    MOV         VAR1,#$06                   ; 3BAC4F/0D0106
    ASMCALL     CreateOBJInSlotBetween                       ; 3BAC52/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $07                         ; 3BAC55/07
    .byte       $11                         ; 3BAC56/11
    .byte       $67                         ; 3BAC57/67
    .byte       $00                         ; 3BAC58/00
    .byte       $00                         ; 3BAC59/00
    .byte       $00                         ; 3BAC5A/00
    .byte       $00                         ; 3BAC5B/00
    .byte       $00                         ; 3BAC5C/00

    ;if $07BD == 0, jump
    MOV         REG,$07BD                   ; 3BAC5D/1CBD07
    JEQ         CraneFever_NoBonus                    ; 3BAC60/0A9AAC

    ;make 7-9
    WAIT        #1                          ; 3BAC63/0601
    MOV         VAR1, #7                   ; 3BAC65/0D0107
    LOOP        #3                          ; 3BAC68/0103
        ASMCALL     CreateOBJInSlotBetween                       ; 3BAC6A/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $07                         ; 3BAC6D/07
        .byte       $11                         ; 3BAC6E/11
        .byte       $67                         ; 3BAC6F/67
        .byte       $00                         ; 3BAC70/00
        .byte       $00                         ; 3BAC71/00
        .byte       $00                         ; 3BAC72/00
        .byte       $00                         ; 3BAC73/00
        .byte       $00                         ; 3BAC74/00
        ADD         VAR1,#1                     ; 3BAC75/13010201
    ENDLOOP                                 ; 3BAC79/02

    ;scroll down
    SETYCAMERAVEL #$200                   ; 3BAC7A/330002
    ONTICK      L_3BB64C                     ; 3BAC7D/084CB63B

    WAIT        #24                         ; 3BAC81/0618

    ASMCALL     Load_Palette                ; 3BAC83/D061DF // Unknown ASM Load_Palette
    .word       CraneFever_Results_Palette ; 3BAC86/60BA
    .byte       4,4                         ; 3BAC88/0404
    HALT                                    ; 3BAC8A/09

L_3BAC8B:
    ZEROCAMERAVEL                           ; 3BAC8B/39
    ASMCALL     Load_Palette                ; 3BAC8C/D061DF // Load_Palette, palette, start_index, entries
    .word       CraneFever_Results_Palette3 ; 3BAC8F/68BA
    .byte       $00, 12                     ; 3BAC91/000C
L_3BAC93:
    ASMCALL     Load_Palette                ; 3BAC93/D061DF // Unknown ASM Load_Palette
    .word       CraneFever_Results_Palette2 ; 3BAC96/64BA
    .byte       $18, 4                      ; 3BAC98/1804

CraneFever_NoBonus:
    ASMCALL     B3E_d968                       ; 3BAC9A/D068D9
    WAIT        #60                         ; 3BAC9D/063C
    WAIT        #90                         ; 3BAC9F/065A
    MOV         VAR1,#$00                   ; 3BACA1/0D0100
    JML         L_3CB9E6                    ; 3BACA4/03E6B93C

CraneFever_FadeDarkIn:
    ;palette_fade = $FC
    MOV         palette_fade,#$FC                  ; 3BACA8/11A201FC

    LOOP        #4                          ; 3BACAC/0104
        ASMCALL     Palette_FadeDarkIn, WAIT #6              ; 3BACAE/D64CC9 // Palette fade (in?) step
    ENDLOOP                                 ; 3BACB1/02
    A_RTS                                     ; 3BACB2/19

CraneFever_FadeDarkOut:
    ;palette_fade = 0
    MOV         palette_fade,#$00                  ; 3BACB3/11A20100

    LOOP        #4                          ; 3BACB7/0104
        ASMCALL     $C996, WAIT #6              ; 3BACB9/D696C9 // Palette fade (out?) step
    ENDLOOP                                 ; 3BACBC/02
    A_RTS                                   ; 3BACBD/19

CraneFever_KirbyPlush:
    MOV         VAR6,#$00                   ; 3BACBE/0D0600
    MOV         VAR4,#$00                   ; 3BACC1/0D0400
    ASMCALL     $B429                       ; 3BACC4/D029B4
    ASMCALL     $B762                       ; 3BACC7/D062B7
    MOV         REG,VAR2                    ; 3BACCA/1E02
    TABLEJSR    #3                          ; 3BACCC/1003
    .word       L_3BACE1                    ; 3BACCE/E1AC
    .word       L_3BAD2E                    ; 3BACD0/2EAD
    .word       L_3BAD66                    ; 3BACD2/66AD
    SETZPOS     #$0080                      ; 3BACD4/3A8000
    ADD         $07B9,#1                    ; 3BACD7/16B9070201
    ONTICK      $3BB9B6                     ; 3BACDC/08B6B93B
    HALT                                    ; 3BACE0/09

L_3BACE1:
    SETXPOS     #$00A8                      ; 3BACE1/2AA800
    SETYPOS     #$0032                      ; 3BACE4/2B3200
    SETZPOS     #$0080                      ; 3BACE7/3A8000
    SETXVEL     #$FE00                      ; 3BACEA/B000FE
    SETYVEL     #$0200                      ; 3BACED/C00002
    SETPOSE     #$00, WAIT #4               ; 3BACF0/5400
    INCPOSE     WAIT #4                     ; 3BACF2/74
    INCPOSE     WAIT #4                     ; 3BACF3/74
    INCPOSE     WAIT #4                     ; 3BACF4/74
    SETXVEL     #$FF00                      ; 3BACF5/B000FF
    SETPOSE     #$00, WAIT #6               ; 3BACF8/5600
    INCPOSE     WAIT #6                     ; 3BACFA/76
    INCPOSE     WAIT #6                     ; 3BACFB/76
    INCPOSE     WAIT #12                    ; 3BACFC/7C
    SETXVEL     #$FF80                      ; 3BACFD/B080FF
    SETYVEL     #$FE00                      ; 3BAD00/C000FE
    SETPOSE     #$00, WAIT #4               ; 3BAD03/5400
    A_JSR         L_3BB220                    ; 3BAD05/1820B2
    SETXVEL     #$0000                      ; 3BAD08/B00000
    SETYVEL     #$FF00                      ; 3BAD0B/C000FF
    SETPOSE     #$03, WAIT #4               ; 3BAD0E/5403
    SETYVEL     #$FF80                      ; 3BAD10/C080FF
    SETPOSE     #$02, WAIT #4               ; 3BAD13/5402
    SETYVEL     #$FFE0                      ; 3BAD15/C0E0FF
    SETPOSE     #$01, WAIT #4               ; 3BAD18/5401
    SETYVEL     #$0020, WAIT #4             ; 3BAD1A/C42000
    SETYVEL     #$0080                      ; 3BAD1D/C08000
    SETPOSE     #$02, WAIT #4               ; 3BAD20/5402
    SETYVEL     #$0100                      ; 3BAD22/C00001
    SETPOSE     #$03, WAIT #4               ; 3BAD25/5403
    SETYVEL     #$0200, WAIT #4             ; 3BAD27/C40002
    ZEROVEL                                 ; 3BAD2A/38
    WAIT        #16                         ; 3BAD2B/0610
    A_RTS                                     ; 3BAD2D/19

L_3BAD2E:
    SETXPOS     #$0098                      ; 3BAD2E/2A9800
    SETYPOS     #$0032                      ; 3BAD31/2B3200
    SETZPOS     #$0080                      ; 3BAD34/3A8000
    SETYVEL     #$0140                      ; 3BAD37/C04001
    SETPOSE     #$00, WAIT #7               ; 3BAD3A/5700
    INCPOSE     WAIT #7                     ; 3BAD3C/77
    INCPOSE     WAIT #7                     ; 3BAD3D/77
    INCPOSE     WAIT #7                     ; 3BAD3E/77
    SETYVEL     #$0200                      ; 3BAD3F/C00002
    SETPOSE     #$00, WAIT #7               ; 3BAD42/5700
    INCPOSE     WAIT #7                     ; 3BAD44/77
    INCPOSE     WAIT #7                     ; 3BAD45/77
    INCPOSE     WAIT #7                     ; 3BAD46/77
    SETPOSE     #$02                        ; 3BAD47/5002
    A_JSR         L_3BB213                    ; 3BAD49/1813B2
    SETYVEL     #$FEC0, WAIT #7             ; 3BAD4C/C7C0FE
    SETYVEL     #$FF80, WAIT #7             ; 3BAD4F/C780FF
    DECPOSE                                 ; 3BAD52/80
    SETYVEL     #$FFF0, WAIT #7             ; 3BAD53/C7F0FF
    SETYVEL     #$0020, WAIT #7             ; 3BAD56/C72000
    DECPOSE                                 ; 3BAD59/80
    SETYVEL     #$00C0, WAIT #7             ; 3BAD5A/C7C000
    SETYVEL     #$0140, WAIT #7             ; 3BAD5D/C74001
    SETPOSE     #$03                        ; 3BAD60/5003
    ZEROVEL                                 ; 3BAD62/38
    WAIT        #16                         ; 3BAD63/0610
    A_RTS                                     ; 3BAD65/19

L_3BAD66:
    SETXPOS     #$00D1                      ; 3BAD66/2AD100
    SETYPOS     #$0032                      ; 3BAD69/2B3200
    SETZPOS     #$0080                      ; 3BAD6C/3A8000
    SETYVEL     #$0200                      ; 3BAD6F/C00002
    LOOP        #2                          ; 3BAD72/0102
        SETPOSE     #$00, WAIT #6               ; 3BAD74/5600
        INCPOSE     WAIT #6                     ; 3BAD76/76
        INCPOSE     WAIT #6                     ; 3BAD77/76
        INCPOSE     WAIT #6                     ; 3BAD78/76
    ENDLOOP                                 ; 3BAD79/02
    A_JSR         L_3BB213                    ; 3BAD7A/1813B2
    SETXVEL     #$FF80                      ; 3BAD7D/B080FF
    SETYVEL     #$FE00                      ; 3BAD80/C000FE
    SETPOSE     #$00, WAIT #6               ; 3BAD83/5600
    SETYVEL     #$FF80                      ; 3BAD85/C080FF
    INCPOSE     WAIT #6                     ; 3BAD88/76
    SETYVEL     #$FFE0                      ; 3BAD89/C0E0FF
    INCPOSE     WAIT #6                     ; 3BAD8C/76
    SETYVEL     #$0080                      ; 3BAD8D/C08000
    INCPOSE     WAIT #6                     ; 3BAD90/76
    SETXVEL     #$FFE0                      ; 3BAD91/B0E0FF
    SETYVEL     #$0100                      ; 3BAD94/C00001
    SETPOSE     #$00, WAIT #6               ; 3BAD97/5600
    SETYVEL     #$0200                      ; 3BAD99/C00002
    SETPOSE     #$03, WAIT #6               ; 3BAD9C/5603
    ZEROVEL                                 ; 3BAD9E/38
    WAIT        #16                         ; 3BAD9F/0610
    A_RTS                                     ; 3BADA1/19

CraneFever_KirbyPlushBig:
    MOV         VAR6,#$01                   ; 3BADA2/0D0601
    MOV         VAR4,#$00                   ; 3BADA5/0D0400
    ASMCALL     $B429                       ; 3BADA8/D029B4
    ASMCALL     $B762                       ; 3BADAB/D062B7
    SETPOSE     #$FF                        ; 3BADAE/50FF
    WAIT        #60                         ; 3BADB0/063C
    MOV         REG,VAR2                    ; 3BADB2/1E02
    TABLEJSR    #3                          ; 3BADB4/1003
    .word       L_3BADC9                    ; 3BADB6/C9AD
    .word       L_3BAE0B                    ; 3BADB8/0BAE
    .word       L_3BAE3A                    ; 3BADBA/3AAE
    SETZPOS     #$0080                      ; 3BADBC/3A8000
    ADD         $07B9,#1                    ; 3BADBF/16B9070201
    ONTICK      $3BB9B6                     ; 3BADC4/08B6B93B
    HALT                                    ; 3BADC8/09

L_3BADC9:
    SETXPOS     #$008E                      ; 3BADC9/2A8E00
    SETYPOS     #$002E                      ; 3BADCC/2B2E00
    SETZPOS     #$0080                      ; 3BADCF/3A8000
    SETXVEL     #$FF00                      ; 3BADD2/B000FF
    SETYVEL     #$0200                      ; 3BADD5/C00002
    SETPOSE     #$00, WAIT #6               ; 3BADD8/5600
    INCPOSE     WAIT #6                     ; 3BADDA/76
    INCPOSE     WAIT #6                     ; 3BADDB/76
    SETYVEL     #$0300                      ; 3BADDC/C00003
    INCPOSE     WAIT #6                     ; 3BADDF/76
    SETPOSE     #$00, WAIT #6               ; 3BADE0/5600
    SETPOSE     #$03, WAIT #6               ; 3BADE2/5603
    A_JSR         L_3BB220                    ; 3BADE4/1820B2
    SETXVEL     #$FFE0                      ; 3BADE7/B0E0FF
    SETYVEL     #$0000                      ; 3BADEA/C00000
    SETPOSE     #$02, WAIT #1               ; 3BADED/5102
    SETXVEL     #$0020, WAIT #1             ; 3BADEF/B12000
    SETXVEL     #$0008                      ; 3BADF2/B00800
    SETYVEL     #$FE00                      ; 3BADF5/C000FE
    SETPOSE     #$01, WAIT #6               ; 3BADF8/5601
    SETYVEL     #$FF80                      ; 3BADFA/C080FF
    SETPOSE     #$00, WAIT #6               ; 3BADFD/5600
    SETYVEL     #$0080, WAIT #6             ; 3BADFF/C68000
    SETYVEL     #$0200                      ; 3BAE02/C00002
    SETPOSE     #$03, WAIT #6               ; 3BAE05/5603
    ZEROVEL                                 ; 3BAE07/38
    WAIT        #16                         ; 3BAE08/0610
    A_RTS                                     ; 3BAE0A/19

L_3BAE0B:
    SETXPOS     #$008C                      ; 3BAE0B/2A8C00
    SETYPOS     #$0030                      ; 3BAE0E/2B3000
    SETZPOS     #$0080                      ; 3BAE11/3A8000
    TASK        TASK_3BAE31                 ; 3BAE14/0731AE
    SETYVEL     #$0140                      ; 3BAE17/C04001
    WAIT        #20                         ; 3BAE1A/0614
    SETYVEL     #$0200                      ; 3BAE1C/C00002
    WAIT        #35                         ; 3BAE1F/0623
    SETYVEL     #$0040, WAIT #5             ; 3BAE21/C54000
    A_JSR         L_3BB213                    ; 3BAE24/1813B2
    SETYVEL     #$FFC0, WAIT #5             ; 3BAE27/C5C0FF
    SETYVEL     #$0040, WAIT #5             ; 3BAE2A/C54000
    ZEROVEL                                 ; 3BAE2D/38
    SETPOSE     #$03, WAIT #15              ; 3BAE2E/5F03
    A_RTS                                     ; 3BAE30/19

TASK_3BAE31:
    LOOP        #3                          ; 3BAE31/0103
        SETPOSE     #$00, WAIT #5               ; 3BAE33/5500
        INCPOSE     WAIT #5                     ; 3BAE35/75
        INCPOSE     WAIT #5                     ; 3BAE36/75
        INCPOSE     WAIT #5                     ; 3BAE37/75
    ENDLOOP                                 ; 3BAE38/02
    ENDTASK                                 ; 3BAE39/0C

L_3BAE3A:
    SETXPOS     #$007A                      ; 3BAE3A/2A7A00
    SETYPOS     #$0030                      ; 3BAE3D/2B3000
    SETZPOS     #$0080                      ; 3BAE40/3A8000
    SETXVEL     #$0200                      ; 3BAE43/B00002
    SETYVEL     #$0100                      ; 3BAE46/C00001
    SETPOSE     #$00, WAIT #6               ; 3BAE49/5600
    INCPOSE     WAIT #6                     ; 3BAE4B/76
    INCPOSE     WAIT #6                     ; 3BAE4C/76
    INCPOSE     WAIT #6                     ; 3BAE4D/76
    SETYVEL     #$0200                      ; 3BAE4E/C00002
    SETPOSE     #$00, WAIT #6               ; 3BAE51/5600
    INCPOSE     WAIT #6                     ; 3BAE53/76
    INCPOSE     WAIT #6                     ; 3BAE54/76
    INCPOSE     WAIT #6                     ; 3BAE55/76
    A_JSR         L_3BB213                    ; 3BAE56/1813B2
    ZEROVEL                                 ; 3BAE59/38
    WAIT        #2                          ; 3BAE5A/0602
    SETXVEL     #$FF80                      ; 3BAE5C/B080FF
    SETYVEL     #$FFE0, WAIT #4             ; 3BAE5F/C4E0FF
    SETYVEL     #$0200                      ; 3BAE62/C00002
    SETPOSE     #$00, WAIT #8               ; 3BAE65/5800
    SETYVEL     #$FFF8                      ; 3BAE67/C0F8FF
    SETPOSE     #$03, WAIT #8               ; 3BAE6A/5803
    SETYVEL     #$0100                      ; 3BAE6C/C00001
    SETPOSE     #$02, WAIT #8               ; 3BAE6F/5802
    SETYVEL     #$FFF8                      ; 3BAE71/C0F8FF
    SETPOSE     #$01, WAIT #8               ; 3BAE74/5801
    SETYVEL     #$0020                      ; 3BAE76/C02000
    SETPOSE     #$00, WAIT #8               ; 3BAE79/5800
    SETPOSE     #$03                        ; 3BAE7B/5003
    ZEROVEL                                 ; 3BAE7D/38
    WAIT        #16                         ; 3BAE7E/0610
    A_RTS                                     ; 3BAE80/19

incbinRange "../split/prg/bank3b/unk0.bin", $E81, $FF4

CraneFever_Claw:
    MOV         VAR0,#0                   ; 3BAFF4/0D0000
    MOV         VAR5,#0                   ; 3BAFF7/0D0500

    ASMCALL     L_3BB6EA                    ; 3BAFFA/D0EAB6
    SPRITEMAP   $3A89C0                     ; 3BAFFD/1AC0893A
    SETPOSE     #$04                        ; 3BB001/5004
    SETXPOS     #$38                      ; 3BB003/2A3800
    SETYPOS     #$58                      ; 3BB006/2B5800
    SETZPOS     #$80                      ; 3BB009/3A8000
    ASMCALL     PlayMusic                       ; 3BB00C/D045DE // Unknown ASM PlayMusic
    .byte       $09                         ; 3BB00F/09
L_3BB010:
    SETPOSE     #$00, WAIT #1               ; 3BB010/5100
    MOV         REG,$07B9                   ; 3BB012/1CB907
    TABLEJMP    #2                          ; 3BB015/0F02
    .word       L_3BB010                    ; 3BB017/10B0
    .word       L_3BB010                    ; 3BB019/10B0
L_3BB01B:
    ASMCALL     $B4EA, WAIT #1              ; 3BB01B/D1EAB4
    JNE         L_3BB024                    ; 3BB01E/0B24B0
    A_JMP         L_3BB01B                    ; 3BB021/171BB0

L_3BB024:
    ASMCALL     PlayMusic                       ; 3BB024/D045DE // Unknown ASM PlayMusic
    .byte       $0A                         ; 3BB027/0A
    SETXVEL     #$0080                      ; 3BB028/B08000
    MOV         REG,$07D1                   ; 3BB02B/1CD107
    TABLEJMP    #3                          ; 3BB02E/0F03
    .word       L_3BB03F                    ; 3BB030/3FB0
    .word       L_3BB036                    ; 3BB032/36B0
    .word       L_3BB03C                    ; 3BB034/3CB0
L_3BB036:
    SETXVEL     #$0100                      ; 3BB036/B00001
    A_JMP         L_3BB03F                    ; 3BB039/173FB0

L_3BB03C:
    SETXVEL     #$0200                      ; 3BB03C/B00002
L_3BB03F:
    ASMCALL     $B4EA, WAIT #1              ; 3BB03F/D1EAB4
    JEQ         L_3BB048                    ; 3BB042/0A48B0
    A_JMP         L_3BB03F                    ; 3BB045/173FB0

L_3BB048:
    ASMCALL     $B3FC                       ; 3BB048/D0FCB3
    MOV         REG,$07D1                   ; 3BB04B/1CD107
    TABLEJMP    #3                          ; 3BB04E/0F03
    .word       L_3BB06C                    ; 3BB050/6CB0
    .word       L_3BB061                    ; 3BB052/61B0
    .word       L_3BB056                    ; 3BB054/56B0
L_3BB056:
    LOOP        #8                          ; 3BB056/0108
        ASMCALL     $B4DE                       ; 3BB058/D0DEB4
        JNE         L_3BB06C                    ; 3BB05B/0B6CB0
        WAIT        #1                          ; 3BB05E/0601
    ENDLOOP                                 ; 3BB060/02
L_3BB061:
    LOOP        #8                          ; 3BB061/0108
        ASMCALL     $B4DE                       ; 3BB063/D0DEB4
        JNE         L_3BB06C                    ; 3BB066/0B6CB0
        WAIT        #1                          ; 3BB069/0601
    ENDLOOP                                 ; 3BB06B/02
L_3BB06C:
    ZEROVEL                                 ; 3BB06C/38
    SETPOSE     #$05, WAIT #5               ; 3BB06D/5505
    INCPOSE     WAIT #5                     ; 3BB06F/75
    DECPOSE     WAIT #5                     ; 3BB070/85
    DECPOSE     WAIT #5                     ; 3BB071/85
    SETPOSE     #$07, WAIT #5               ; 3BB072/5507
    INCPOSE                                 ; 3BB074/70
    WAIT        #21                         ; 3BB075/0615
    SETPOSE     #$04                        ; 3BB077/5004
    WAIT        #61                         ; 3BB079/063D
    DECPOSE     WAIT #8                     ; 3BB07B/88
    DECPOSE                                 ; 3BB07C/80
    WAIT        #51                         ; 3BB07D/0633
    ASMCALL     $B525                       ; 3BB07F/D025B5
    ASMCALL     $B58E                       ; 3BB082/D08EB5
    ONTICK      $3BB7D0                     ; 3BB085/08D0B73B
    SETYVEL     #$0020                      ; 3BB089/C02000
    WAIT        #51                         ; 3BB08C/0633
    SETYVEL     #$0040                      ; 3BB08E/C04000
    WAIT        #48                         ; 3BB091/0630
    SETYVEL     #$0080                      ; 3BB093/C08000
    HALT                                    ; 3BB096/09

incbinRange "../split/prg/bank3b/unk0.bin", $1097, $114E

CraneFever_CreditCount:
    SPRITEMAP   $3A96EE                     ; 3BB14E/1AEE963A
    SETXPOS     #$0068                      ; 3BB152/2A6800
    SETYPOS     #$00C7                      ; 3BB155/2BC700
    ASMCALL     $B420                       ; 3BB158/D020B4
L_3BB15B:
    WAIT        #1                          ; 3BB15B/0601
    ASMCALL     $B4CD                       ; 3BB15D/D0CDB4
    JEQ         L_3BB15B                    ; 3BB160/0A5BB1
L_3BB163:
    WAIT        #1                          ; 3BB163/0601
    ASMCALL     $B4CD                       ; 3BB165/D0CDB4
    JNE         L_3BB163                    ; 3BB168/0B63B1
L_3BB16B:
    WAIT        #1                          ; 3BB16B/0601
    ASMCALL     $B48C                       ; 3BB16D/D08CB4
    JEQ         L_3BB16B                    ; 3BB170/0A6BB1
    WAIT        #53                         ; 3BB173/0635
    ASMCALL     $B420                       ; 3BB175/D020B4
    MOV         REG,$07BB                   ; 3BB178/1CBB07
    JNE         L_3BB15B                    ; 3BB17B/0B5BB1
    HALT                                    ; 3BB17E/09

CraneFever_ButtonFlash:
    SPRITEMAP   $3A963B                     ; 3BB17F/1A3B963A
    SETXPOS     #$0088                      ; 3BB183/2A8800
    SETYPOS     #$00C8                      ; 3BB186/2BC800
L_3BB189:
    SETPOSE     #$FF, WAIT #1               ; 3BB189/51FF
    MOV         REG,$07B9                   ; 3BB18B/1CB907
    TABLEJMP    #2                          ; 3BB18E/0F02
    .word       L_3BB189                    ; 3BB190/89B1
    .word       L_3BB189                    ; 3BB192/89B1
    TASK        TASK_3BB1BD                 ; 3BB194/07BDB1
L_3BB197:
    ASMCALL     $B4CD, WAIT #1              ; 3BB197/D1CDB4
    JNE         L_3BB1A0                    ; 3BB19A/0BA0B1
    A_JMP         L_3BB197                    ; 3BB19D/1797B1

L_3BB1A0:
    ENDLASTTASK                             ; 3BB1A0/12
    SETPOSE     #$01                        ; 3BB1A1/5001
L_3BB1A3:
    ASMCALL     $B4CD, WAIT #1              ; 3BB1A3/D1CDB4
    JEQ         L_3BB1AC                    ; 3BB1A6/0AACB1
    A_JMP         L_3BB1A3                    ; 3BB1A9/17A3B1

L_3BB1AC:
    SETPOSE     #$FF                        ; 3BB1AC/50FF
L_3BB1AE:
    ASMCALL     $B48C, WAIT #1              ; 3BB1AE/D18CB4
    JEQ         L_3BB1AE                    ; 3BB1B1/0AAEB1
    WAIT        #53                         ; 3BB1B4/0635
    MOV         REG,$07BB                   ; 3BB1B6/1CBB07
    JNE         CraneFever_ButtonFlash                    ; 3BB1B9/0B7FB1
    END                                     ; 3BB1BC/00

TASK_3BB1BD:
    SETPOSE     #$00, WAIT #10              ; 3BB1BD/5A00
    INCPOSE     WAIT #10                    ; 3BB1BF/7A
    A_JMP         TASK_3BB1BD                 ; 3BB1C0/17BDB1

CraneFever_Light:
    ASMCALL     $B1D8                       ; 3BB1C3/D0D8B1
    SETYPOS     #$003C                      ; 3BB1C6/2B3C00
    SETZPOS     #$0080                      ; 3BB1C9/3A8000
L_3BB1CC:
    LOOP        #6                          ; 3BB1CC/0106
        SETPOSE     #$00, WAIT #1               ; 3BB1CE/5100
        INCPOSE     WAIT #1                     ; 3BB1D0/71
        INCPOSE     WAIT #1                     ; 3BB1D1/71
    ENDLOOP                                 ; 3BB1D2/02
    SETPOSE     #$FF, WAIT #5               ; 3BB1D3/55FF
    A_JMP         L_3BB1CC                    ; 3BB1D5/17CCB1

incbinRange "../split/prg/bank3b/unk0.bin", $11D8, $1213

L_3BB213:
    MOV         VAR1,#$00                   ; 3BB213/0D0100
    ASMCALL     B3E_de51                       ; 3BB216/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $67                         ; 3BB219/67
    .byte       $F8                         ; 3BB21A/F8
    .byte       $00                         ; 3BB21B/00
    .byte       $00                         ; 3BB21C/00
    .byte       $00                         ; 3BB21D/00
    .byte       $0A                         ; 3BB21E/0A
    A_RTS                                     ; 3BB21F/19

L_3BB220:
    MOV         VAR1,#$00                   ; 3BB220/0D0100
    ASMCALL     B3E_de51                       ; 3BB223/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $67                         ; 3BB226/67
    .byte       $08                         ; 3BB227/08
    .byte       $00                         ; 3BB228/00
    .byte       $00                         ; 3BB229/00
    .byte       $00                         ; 3BB22A/00
    .byte       $0B                         ; 3BB22B/0B
    A_RTS                                     ; 3BB22C/19

L_3BB22D:
    SETZPOS     #$0080                      ; 3BB22D/3A8000
    SPRITEMAP   B3A_855e                     ; 3BB230/1A5E853A
    SETXVEL     #$FF80                      ; 3BB234/B080FF
    SETYVEL     #$FC00                      ; 3BB237/C000FC
    SETPOSE     #$00, WAIT #2               ; 3BB23A/5200
    SETYVEL     #$FE00, WAIT #2             ; 3BB23C/C200FE
    SETYVEL     #$FF00, WAIT #2             ; 3BB23F/C200FF
    END                                     ; 3BB242/00

L_3BB243:
    SETZPOS     #$0080                      ; 3BB243/3A8000
    SPRITEMAP   B3A_855e                     ; 3BB246/1A5E853A
    SETXVEL     #$0080                      ; 3BB24A/B08000
    SETYVEL     #$FC00                      ; 3BB24D/C000FC
    SETPOSE     #$00, WAIT #2               ; 3BB250/5200
    SETYVEL     #$FE00, WAIT #2             ; 3BB252/C200FE
    SETYVEL     #$FF00, WAIT #2             ; 3BB255/C200FF
    END                                     ; 3BB258/00

CraneFever_Finisher:
    MOV         REG,$07BD                   ; 3BB259/1CBD07
    JNE         L_3BB270                    ; 3BB25C/0B70B2
    SETXPOS     #$0080                      ; 3BB25F/2A8000
    SETYPOS     #$0071                      ; 3BB262/2B7100
    SETZPOS     #$0081                      ; 3BB265/3A8100
    ASMCALL     PlayMusic                       ; 3BB268/D045DE // Unknown ASM PlayMusic
    .byte       $2E                         ; 3BB26B/2E
    JML         L_3CB27A                    ; 3BB26C/037AB23C

L_3BB270:
    SETXPOS     #$007E                      ; 3BB270/2A7E00
    SETYPOS     #$0100                      ; 3BB273/2B0001
    ASMCALL     PlayMusic                       ; 3BB276/D045DE // Unknown ASM PlayMusic
    .byte       $30                         ; 3BB279/30
    JML         L_3CB28E                    ; 3BB27A/038EB23C

L_3BB27E:
    SPRITEMAP   $3A9589                     ; 3BB27E/1A89953A
    ASMCALL     $B53B                       ; 3BB282/D03BB5
    SETXPOS     #$0038                      ; 3BB285/2A3800
    SETYPOS     #$0150                      ; 3BB288/2B5001
L_3BB28B:
    WAIT        #1                          ; 3BB28B/0601
    MOV         REG,$07BE                   ; 3BB28D/1CBE07
    JEQ         L_3BB28B                    ; 3BB290/0A8BB2
    WAIT        #100                        ; 3BB293/0664
    SETPOSE     #$00                        ; 3BB295/5000
    MOV         REG,$07C3                   ; 3BB297/1CC307
    TABLEJMP    #2                          ; 3BB29A/0F02
    .word       L_3BB2A4                    ; 3BB29C/A4B2
    .word       L_3BB2A2                    ; 3BB29E/A2B2
    SETPOSE     #$01                        ; 3BB2A0/5001
L_3BB2A2:
    WAIT        #30                         ; 3BB2A2/061E
L_3BB2A4:
    SETPOSE     #$FF                        ; 3BB2A4/50FF
    HALT                                    ; 3BB2A6/09

L_3BB2A7:
    SPRITEMAP   $3A9651                     ; 3BB2A7/1A51963A
    SETXPOS     #$00A8                      ; 3BB2AB/2AA800
    SETYPOS     #$0134                      ; 3BB2AE/2B3401
L_3BB2B1:
    SETPOSE     #$FF, WAIT #1               ; 3BB2B1/51FF
    MOV         REG,$07BE                   ; 3BB2B3/1CBE07
    JEQ         L_3BB2B1                    ; 3BB2B6/0AB1B2
    WAIT        #100                        ; 3BB2B9/0664
    SETPOSE     #$00                        ; 3BB2BB/5000
    MOV         REG,$07C2                   ; 3BB2BD/1CC207
    TABLEJMP    #3                          ; 3BB2C0/0F03
    .word       L_3BB31F                    ; 3BB2C2/1FB3
    .word       L_3BB2CC                    ; 3BB2C4/CCB2
    .word       L_3BB2C8                    ; 3BB2C6/C8B2
L_3BB2C8:
    INCPOSE                                 ; 3BB2C8/70
    ASMCALL     $B417                       ; 3BB2C9/D017B4
L_3BB2CC:
    ASMCALL     $B417                       ; 3BB2CC/D017B4
    MOV         REG,$07C3                   ; 3BB2CF/1CC307
    JNE         L_3BB30C                    ; 3BB2D2/0B0CB3
    SETYPOS     #$013E                      ; 3BB2D5/2B3E01
    A_JMP         L_3BB30C                    ; 3BB2D8/170CB3

L_3BB2DB:
    SPRITEMAP   $3A9651                     ; 3BB2DB/1A51963A
    SETXPOS     #$00A8                      ; 3BB2DF/2AA800
    SETYPOS     #$0154                      ; 3BB2E2/2B5401
L_3BB2E5:
    SETPOSE     #$FF, WAIT #1               ; 3BB2E5/51FF
    MOV         REG,$07BE                   ; 3BB2E7/1CBE07
    JEQ         L_3BB2E5                    ; 3BB2EA/0AE5B2
    WAIT        #130                        ; 3BB2ED/0682
    SETPOSE     #$00                        ; 3BB2EF/5000
    MOV         REG,$07C3                   ; 3BB2F1/1CC307
    TABLEJMP    #3                          ; 3BB2F4/0F03
    .word       L_3BB31F                    ; 3BB2F6/1FB3
    .word       L_3BB300                    ; 3BB2F8/00B3
    .word       L_3BB2FC                    ; 3BB2FA/FCB2
L_3BB2FC:
    INCPOSE                                 ; 3BB2FC/70
    ASMCALL     $B417                       ; 3BB2FD/D017B4
L_3BB300:
    ASMCALL     $B417                       ; 3BB300/D017B4
    MOV         REG,$07C2                   ; 3BB303/1CC207
    JNE         L_3BB30C                    ; 3BB306/0B0CB3
    SETYPOS     #$013E                      ; 3BB309/2B3E01
L_3BB30C:
    ASMCALL     B3E_de4b                       ; 3BB30C/D04BDE // Play sound effect
    .byte       $16                         ; 3BB30F/16
L_3BB310:
    SPRITEMAP   $3A9651                     ; 3BB310/1A51963A
    WAIT        #2                          ; 3BB314/0602
    SPRITEMAP   $3A9655                     ; 3BB316/1A55963A
    WAIT        #2                          ; 3BB31A/0602
    A_JMP         L_3BB310                    ; 3BB31C/1710B3

L_3BB31F:
    END                                     ; 3BB31F/00

;load splash screen
CraneFever_LoadStartingSplash:
    jsr B3E_c082
    ldx #$80
    stx a:chr_banks
    ldx #$ff
    stx a:chr_banks+2
    ldx #$db
    stx a:chr_banks+3
    ldx #$4d
    stx a:chr_banks+4
    inx
    stx a:chr_banks+5
    lda #0
    sta a:scroll_type
    lda #.LOBYTE(CraneFever_Splash_Tiles)
    sta ptr0
    lda #.HIBYTE(CraneFever_Splash_Tiles)
    sta ptr0+1
    lda #.LOBYTE(map_screen_0)
    sta ptr1
    lda #.HIBYTE(map_screen_0)
    sta ptr1+1
    jsr Decompress
    jsr B3E_c0be
    .addr CraneFever_Splash_draw_rect
    jsr B3E_c086
    lda #$fc
    sta $01a2
    lda #$06
    ora a:ram_PPUMASK
    sta a:ram_PPUMASK
    rts

L_3BB369: ; 3BB369
    jsr B3E_c082
    lda #0
    sta $051e
    jsr $c42f
    ldx #$64
    stx a:chr_banks
    ldx #0
    stx a:chr_banks+2
    ldx #$66
    stx a:chr_banks+3
    inx
    stx a:chr_banks+4
    ldx #$60
    stx a:chr_banks+5
    lda #$00
    sta $0180
    lda #$ce
    sta ptr0
    lda #$bb
    sta ptr0+1
    lda #$c8
    sta ptr1
    lda #$68
    sta ptr1+1
    jsr Decompress
    jsr B3E_c0be
    .addr CraneFever_Splash_draw_rect
    jsr B3E_c0be
    .addr CraneFever_Splash_draw_rect2
    jsr B3E_c086
    lda #$fc
    sta $01a2
    lda #$06
    ora a:ram_PPUMASK
    sta a:ram_PPUMASK
    jsr $b3ed
    lda #$00
    sta $07b9
    sta $07ba
    sta $07bc
    sta $07bd
    sta $07be
    sta $07c1
    sta $07c2
    sta $07c3
    sta $07c4
    sta $07c5
    sta $07d4
    sta $07d2
    lda #$02
    sta $07bb
    rts

incbinRange "../split/prg/bank3b/unk0.bin", $13ed, $150d

L_3BB50D:
    lda a:pad_press
    and #PAD_A | PAD_B
    beq @exit
    ldx curr_object_slot
    ldx curr_object_slot
    lda #.BANK(CraneFever_AdvanceSplash)
    sta script_bank
    lda #.LOBYTE(CraneFever_AdvanceSplash)
    ldy #.HIBYTE(CraneFever_AdvanceSplash)
    jmp OBJ_TryReplaceScriptPc
    @exit:
    rts


incbinRange "../split/prg/bank3b/unk0.bin", $1525, $164c

L_3BB64C:
    lda camera_vel_y
    clc
    adc camera_y_frac
    sta camera_y_frac
    ldy #0
    lda camera_vel_y+1
    bpl @not_16bit
    dey
    @not_16bit:
    adc camera_y
    sta camera_y
    tya
    adc camera_y+1
    sta camera_y+1
    lda camera_y+1
    bne @exit
    lda camera_y
    cmp #$a0
    bcs L_3BB66E
    @exit:
    rts

L_3BB66E:
    lda #$01
    sta $07be
    ldx curr_object_slot
    ldx curr_object_slot
    lda #.BANK(L_3BAC8B)
    sta $6031
    lda #.LOBYTE(L_3BAC8B)
    ldy #.HIBYTE(L_3BAC8B)
    jmp OBJ_TryReplaceScriptPc

incbinRange "../split/prg/bank3b/unk0.bin", $1683, $16ea

L_3BB6EA:
    lda #5
    jsr Rand
    asl a
    asl a
    tax
    lda L_3BB705,x
    sta $07bf
    lda L_3BB705+1,x
    sta OBJ_var2+3
    lda L_3BB705+2,x
    sta OBJ_var2+4
    rts

L_3BB705:
.byte 0,1,2,0
.byte 0,2,1,0
.byte 1,0,2,0
.byte 1,2,0,0
.byte 2,0,1,0
.byte 2,1,0,0

incbinRange "../split/prg/bank3b/unk0.bin", $171d, $1762

B3B_b762:
    ldx curr_object_slot
    lda OBJ_var6,x
    cmp #$01
    beq B3B_b778
    ldy #$00
    lda OBJ_var2,x
    cmp #$02
    bne B3B_b780
    iny
    jmp $b780
B3B_b778:
    ldy #$02
    lda OBJ_var2,x
    beq B3B_b780
    iny
B3B_b780:
    tya
    sta OBJ_var7,x
    rts
B3B_b785:
    ldy #$00
    ldx curr_object_slot
    lda OBJ_store_y_lo,x
    cmp #$58
    bpl B3B_b79e
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$04
    ldy #$b1
    jmp OBJ_TryReplaceScriptPc
B3B_b79e:
    rts
B3B_b79f:
    lda OBJ_store_y_lo+2
    cmp #$58
    bcc B3B_b7a7
    rts
B3B_b7a7:
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$2f
    ldy #$af
    jmp OBJ_TryReplaceScriptPc
.byte $AC,$02,$62,$B9,$C6,$62,$8D,$14
.byte $62,$A9,$FF,$99,$C6,$62,$60
B3B_b7c6:
    ldy OBJ_var3+2
    lda OBJ_var4+2
    sta OBJ_pose,y
    rts
B3B_b7d0:
    ldy OBJ_var3+2
    ldx OBJ_var7,y
    lda OBJ_store_y_lo+2
    clc
    adc $b7f3,x
    cmp OBJ_store_y_lo,y
    bmi B3B_b7f2
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$97
    ldy #$b0
    jmp OBJ_TryReplaceScriptPc
B3B_b7f2:
    rts
.byte $18,$1C,$18,$1C
B3B_b7f7:
    ldy OBJ_var0+2
    lda $b888,y
    beq B3B_b834
    cmp #$01
    beq B3B_b856
    cmp #$02
    beq B3B_b878
    lda #$09
    ldx UNK_796+36
    cpx #$00
    beq B3B_b812
    lda #$0b
B3B_b812:
    sta OBJ_pose+2
    ldx OBJ_var3+2
    lda OBJ_pose,x
    sta OBJ_var4+2
    tay
    iny
    tya
    sta OBJ_pose,x
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$af
    ldy #$b0
    jmp OBJ_TryReplaceScriptPc
B3B_b834:
    ldx OBJ_var3+2
    ldy OBJ_var7,x
    lda $b88e,y
    sta OBJ_var7+2
    jsr $b898
    inc UNK_796+38
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$9c
    ldy #$b0
    jmp OBJ_TryReplaceScriptPc
B3B_b856:
    ldx OBJ_var3+2
    ldy OBJ_var7,x
    lda $b892,y
    sta OBJ_var7+2
    jsr $b898
    inc UNK_796+38
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$bf
    ldy #$b0
    jmp OBJ_TryReplaceScriptPc
B3B_b878:
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$e8
    ldy #$b0
    jmp OBJ_TryReplaceScriptPc
.byte $00,$01,$03,$03,$03,$02,$00,$01
.byte $02,$03,$07,$04,$0D,$0A,$0B,$09
B3B_b898:
    ldy #$00
    ldx OBJ_var3+2
    lda OBJ_var6,x
    cmp #$01
    beq B3B_b8a5
    iny
B3B_b8a5:
    tya
    sta OBJ_var6+2
    rts
B3B_b8aa:
    ldy OBJ_var3+2
    ldx OBJ_var4,y
    ldy curr_object_slot
    lda $b8c5,x
    sta OBJ_spritemap_lo,y
    lda $b8c7,x
    sta OBJ_spritemap_hi,y
    lda $b8c9,x
    sta OBJ_spritemap_bank,y
    rts
.byte $0F,$2F,$8D,$8D,$3A,$3A
B3B_b8cb:
    ldx #$02
    ldy #$01
    lda #$c0
    sta OBJ_spritemap_lo,x
    iny
    lda #$89
    sta OBJ_spritemap_hi,x
    iny
    lda #$3a
    sta OBJ_spritemap_bank,x
    rts
B3B_b8e1:
    lda OBJ_var0+2
    beq B3B_b930
    ldx curr_object_slot
    lda OBJ_store_x_lo,x
    cmp #$68
    bcc B3B_b930
    pha
    ldy OBJ_var6,x
    ldx $b5db,y
    pla
    sec
    sbc OBJ_store_x_lo,x
    bcs B3B_b902
    eor #$ff
    clc
    adc #$01
B3B_b902:
    cmp #$16
    bcc B3B_b930
    ldx curr_object_slot
    ldy #$ff
B3B_b90a:
    iny
    lda OBJ_store_x_lo,x
    cmp $b9ac,y
    bmi B3B_b90a
    tya
    sta OBJ_var5,x
    ldy OBJ_var0+2
    beq B3B_b930
    sty UNK_0
    lda UNK_796+59
    asl a
    asl a
    asl a
    clc
    adc UNK_0
    tay
    lda $b994,y
    jsr Rand
    beq B3B_b946
B3B_b930:
    jsr $b48c
    beq B3B_b945
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$90
    ldy #$ae
    jmp OBJ_TryReplaceScriptPc
B3B_b945:
    rts
B3B_b946:
    lda OBJ_store_x_lo,x
    cmp #$38
    bcs B3B_b955
    lda #$00
    sta UNK_796+47
    jmp $b930
B3B_b955:
    jsr $b8cb
    ldx curr_object_slot
    ldy #$04
    lda OBJ_var6,x
    beq B3B_b962
    dey
B3B_b962:
    tya
    sta OBJ_pose+2
    lda #$00
    sta UNK_796+38
    sta UNK_796+46
    ldy OBJ_var5,x
    ldx curr_object_slot
    lda $b9b1,y
    beq B3B_b986
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$98
    ldy #$af
    jmp OBJ_TryReplaceScriptPc
B3B_b986:
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$38
    ldy #$af
    jmp OBJ_TryReplaceScriptPc
.byte $00,$28,$1E,$14,$0A,$05,$00,$00
.byte $00,$1E,$14,$0A,$05,$02,$00,$00
.byte $00,$14,$0A,$05,$02,$02,$00,$00
.byte $D6,$BE,$8C,$7D,$00,$00,$01,$00
.byte $01,$00
B3B_b9b6:
    ldx curr_object_slot
    lda UNK_796+37
    beq B3B_b9fd
    lda OBJ_var3+2
    cmp curr_object_slot
    bne B3B_b9ec
    lda UNK_796+38
    beq B3B_b9ec
    lda OBJ_var0+2
    cmp #$01
    beq B3B_b9de
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$bd
    ldy #$ae
    jmp OBJ_TryReplaceScriptPc
B3B_b9de:
    ldx curr_object_slot
    lda #$3b
    sta script_bank
    lda #$da
    ldy #$ae
    jmp OBJ_TryReplaceScriptPc
B3B_b9ec:
    lda OBJ_store_x_lo,x
    sec
    sbc OBJ_store_x_lo+2
    bpl B3B_b9fa
    eor #$ff
    clc
    adc #$01
B3B_b9fa:
    sta OBJ_var3,x
B3B_b9fd:
    rts
B3B_b9fe:
    lda UNK_796+38
    beq B3B_ba1f
    ldx OBJ_var3+2
    inc UNK_796+39
    ldy OBJ_var6,x
    iny
    lda UNK_796+37
    cmp #$01
    beq B3B_ba1b
    tya
    sta UNK_796+44
    jmp $ba1f
B3B_ba1b:
    tya
    sta UNK_796+45
B3B_ba1f:
    rts

CraneFever_Splash_Palette:
.byte $36,$35,$25,$15
.byte $36,$30,$26,$0F
.byte $36,$30,$13,$0F
.byte $36,$30,$23,$0F
.byte $36,$35,$25,$15
.byte $33,$30,$27,$0F
.byte $36,$30,$13,$0F
.byte $36,$30,$23,$0F

.byte $23,$35,$25,$07
.byte $23,$26,$24,$38
.byte $23,$30,$38,$07
.byte $23,$35,$24,$0F
.byte $23,$35,$25,$0F
.byte $23,$30,$37,$17
.byte $23,$38,$24,$0F
.byte $23,$30,$00,$0F

CraneFever_Results_Palette:
.byte $0F,$26,$16,$38
CraneFever_Results_Palette2:
.byte $23,$30,$00,$0F
CraneFever_Results_Palette3:
.byte $0F,$25,$15,$0F
.byte $0F,$16,$06,$27
.byte $0F,$25,$25,$0F

CraneFever_Splash_draw_rect:
;0, 2, 3, 1, 4
.byte 3
.addr $2000 ;ppu addr
.byte 32,32 ;width, height
.addr map_screen_0 ;write location?

CraneFever_Splash_draw_rect2:
.byte 3
.addr $2800 ;ppu addr
.byte 32,32 ;width, height
.addr map_screen_5+$40 ;write location?

.charmap $61, $40 ;a
.charmap $62, $41 ;b
.charmap $63, $42 ;c
.charmap $64, $43 ;d
.charmap $65, $44 ;e
.charmap $66, $45 ;f
.charmap $67, $46 ;g
.charmap $68, $47 ;h
.charmap $69, $48 ;i
.charmap $6A, $49 ;j
.charmap $6B, $4A ;k
.charmap $6C, $4B ;l
.charmap $6D, $4C ;m
.charmap $6E, $4D ;n
.charmap $6F, $4E ;o
.charmap $70, $4F ;p
.charmap $71, $50 ;q
.charmap $72, $51 ;r
.charmap $73, $52 ;s
.charmap $74, $53 ;t
.charmap $75, $54 ;u
.charmap $76, $55 ;v
.charmap $77, $56 ;w
.charmap $78, $57 ;x
.charmap $79, $58 ;y
.charmap $7A, $59 ;z
.charmap $41, $5A ;A
.charmap $42, $5B ;B
.charmap $43, $5C ;C
.charmap $44, $5D ;D
.charmap $45, $5E ;E
.charmap $46, $5F ;F
.charmap $47, $60 ;G
.charmap $48, $61 ;H
.charmap $49, $62 ;I
.charmap $4A, $63 ;J
.charmap $4B, $64 ;K
.charmap $4C, $65 ;L
.charmap $4D, $66 ;M
.charmap $4E, $67 ;N
.charmap $4F, $68 ;O
.charmap $50, $69 ;P
.charmap $51, $6A ;Q
.charmap $52, $6B ;R
.charmap $53, $6C ;S
.charmap $54, $6D ;T
.charmap $55, $6E ;U
.charmap $56, $6F ;V
.charmap $57, $70 ;W
.charmap $58, $71 ;X
.charmap $59, $72 ;Y
.charmap $5A, $73 ;Z
.charmap $21, $74 ;!
.charmap $27, $75 ;'
.charmap $2E, $77 ;.
.charmap $20, $FC ;" "

CraneFever_Splash_Tiles:
.incbin "../split/CraneFever_Splash_Tiles.bin"


.incbin "../split/prg/bank3b/unk1c20.bin"