.segment "PRG24": absolute
Script0E_WaddleDee:
    SETBANK     #$22                        ; 24A000/2822
    MOV         REG,VAR0                    ; 24A002/1E00
    MOV         VAR6,REG                    ; 24A004/1D06
    ONPOSITION  $D9BB                       ; 24A006/21BBD9
    SPRITEMAP   $308000                     ; 24A009/1A008030
    ASMCALL     $84A4                       ; 24A00D/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 24A010/0D0002
    ASMCALL     $8851                       ; 24A013/D05188 // Face towards Kirby
    MOV         VAR2,#$50                   ; 24A016/0D0250
L_24A019:
    ZEROVEL                                 ; 24A019/38
    ONTICK      $24A078                     ; 24A01A/0878A024
    ASMCALL     $8B61                       ; 24A01E/D0618B // Unknown ASM $228B61
    .addr       $A062                       ; 24A021/62A0
    ASMCALL     $8BED                       ; 24A023/D0ED8B // Unknown ASM $228BED
    .addr       $A074                       ; 24A026/74A0
    MOV         VAR5,REG                    ; 24A028/1D05
L_24A02A:
    ASMCALL     $8829                       ; 24A02A/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $8BE4                       ; 24A02D/D0E48B // Unknown ASM $228BE4
    .addr       $A070                       ; 24A030/70A0
L_24A032:
    INC2POSE                                ; 24A032/90
    ASMCALL     $8BE4                       ; 24A033/D0E48B // Unknown ASM $228BE4
    .addr       $A070                       ; 24A036/70A0
L_24A038:
    A_JMP       L_24A02A                    ; 24A038/172AA0

L_24A03B:
    ONTICK      $24A0DD                     ; 24A03B/08DDA024
    A_JMP       L_24A02A                    ; 24A03F/172AA0

L_24A042:
    ASMCALL     $DE4B                       ; 24A042/D04BDE // Play sound effect
    .byte       $0D                         ; 24A045/0D
    ONTICK      $24A133                     ; 24A046/0833A124
    ONMOVE      $D867                       ; 24A04A/2367D8
    LOOP        #2                          ; 24A04D/0102
        ASMCALL     $8829, WAIT #4              ; 24A04F/D42988 // Set pose to 0 (respect facing)
L_24A052:
        INC2POSE    WAIT #4                     ; 24A052/94
L_24A053:
    ENDLOOP                                 ; 24A053/02
    ONMOVE      $D864                       ; 24A054/2364D8
    ONTICK      $24A0DD                     ; 24A057/08DDA024
    SETYVEL     #$FD80                      ; 24A05B/C080FD
    ASMCALL     $8829                       ; 24A05E/D02988 // Set pose to 0 (respect facing)
    HALT                                    ; 24A061/09

; CODE OR DATA -- $24A062 .. $24A149
incbinRange "../split/prg/bank24.bin", $0062, $0149

Script0F_WaddleDoo:
    SETBANK     #$22                        ; 24A149/2822
    ONPOSITION  $D9BB                       ; 24A14B/21BBD9
    SPRITEMAP   $30802C                     ; 24A14E/1A2C8030
    ASMCALL     $84A4                       ; 24A152/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 24A155/0D0002
    ASMCALL     $8851                       ; 24A158/D05188 // Face towards Kirby
    ZEROVEL                                 ; 24A15B/38
    MOV         VAR2,#$0F                   ; 24A15C/0D020F
    A_JMP       L_24A165                    ; 24A15F/1765A1

L_24A162:
    MOV         VAR2,#$50                   ; 24A162/0D0250
L_24A165:
    ONTICK      $24A1E6                     ; 24A165/08E6A124
    ASMCALL     $8B7F                       ; 24A169/D07F8B // Unknown ASM $228B7F
    .addr       $A062                       ; 24A16C/62A0
L_24A16E:
    ASMCALL     $8829                       ; 24A16E/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $8BE4                       ; 24A171/D0E48B // Unknown ASM $228BE4
    .addr       $A070                       ; 24A174/70A0
L_24A176:
    INC2POSE                                ; 24A176/90
    ASMCALL     $8BE4                       ; 24A177/D0E48B // Unknown ASM $228BE4
    .addr       $A070                       ; 24A17A/70A0
L_24A17C:
    A_JMP       L_24A16E                    ; 24A17C/176EA1

L_24A17F:
    MOV         REG,VAR2                    ; 24A17F/1E02
    TABLEJMP    #2                          ; 24A181/0F02
    .word       L_24A1C3                    ; 24A183/C3A1
    .word       L_24A1D9                    ; 24A185/D9A1
    ONTICK      $24A277                     ; 24A187/0877A224
    ZEROVEL                                 ; 24A18B/38
    ASMCALL     $8BED                       ; 24A18C/D0ED8B // Unknown ASM $228BED
    .word       $A1BB                       ; 24A18F/BBA1
    LOOP        REG                         ; 24A191/22
        ASMCALL     $8829, WAIT #2              ; 24A192/D22988 // Set pose to 0 (respect facing)
L_24A195:
        ADDPOSE     #4, WAIT #2                 ; 24A195/6204
L_24A197:
    ENDLOOP                                 ; 24A197/02
    ASMCALL     $8829                       ; 24A198/D02988 // Set pose to 0 (respect facing)
    MOV         VAR2,#$00                   ; 24A19B/0D0200
    ASMCALL     $8BED                       ; 24A19E/D0ED8B // Unknown ASM $228BED
    .word       $A1BF                       ; 24A1A1/BFA1
    LOOP        REG                         ; 24A1A3/22
        ASMCALL     $DED0                       ; 24A1A4/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $09                         ; 24A1A7/09
        .byte       $12                         ; 24A1A8/12
        .byte       $50                         ; 24A1A9/50
        .byte       $00                         ; 24A1AA/00
        .byte       $00                         ; 24A1AB/00
        .byte       $00                         ; 24A1AC/00
        .byte       $00                         ; 24A1AD/00
        .byte       $00                         ; 24A1AE/00
        ASMCALL     $DE4B, WAIT #2              ; 24A1AF/D24BDE // Play sound effect
        .byte       $1D                         ; 24A1B2/1D
L_24A1B3:
        ADD         VAR2,#1                     ; 24A1B3/13020201
    ENDLOOP                                 ; 24A1B7/02
    A_JMP       L_24A162                    ; 24A1B8/1762A1

; CODE OR DATA -- $24A1BB .. $24A1C3
incbinRange "../split/prg/bank24.bin", $01BB, $01C3

L_24A1C3:
    ASMCALL     $DE4B                       ; 24A1C3/D04BDE // Play sound effect
    .byte       $0D                         ; 24A1C6/0D
    ONTICK      $24A222                     ; 24A1C7/0822A224
    SETYVEL     #$FD80                      ; 24A1CB/C080FD
    LOOP        #3                          ; 24A1CE/0103
        ASMCALL     $8829, WAIT #4              ; 24A1D0/D42988 // Set pose to 0 (respect facing)
L_24A1D3:
        INC2POSE    WAIT #4                     ; 24A1D3/94
L_24A1D4:
    ENDLOOP                                 ; 24A1D4/02
    ASMCALL     $8829                       ; 24A1D5/D02988 // Set pose to 0 (respect facing)
    HALT                                    ; 24A1D8/09

L_24A1D9:
    MOV         VAR2,#$1E                   ; 24A1D9/0D021E
    A_JMP       L_24A165                    ; 24A1DC/1765A1

L_24A1DF:
    ONTICK      $24A28D                     ; 24A1DF/088DA224
    A_JMP       L_24A16E                    ; 24A1E3/176EA1

; CODE OR DATA -- $24A1E6 .. $24A2B2
incbinRange "../split/prg/bank24.bin", $01E6, $02B2

L_24A2B2:
    SETBANK     #$22                        ; 24A2B2/2822
    ONPOSITION  $D9BB                       ; 24A2B4/21BBD9
    SPRITEMAP   $3082EC                     ; 24A2B7/1AEC8230
    ASMCALL     $84AD                       ; 24A2BB/D0AD84 // Copy $0784[self.parent] to $0784[self]
    ONTICK      $24A2D4                     ; 24A2BE/08D4A224
    MOV         VAR0,#$01                   ; 24A2C2/0D0001
    ASMCALL     $A2EE                       ; 24A2C5/D0EEA2
    ASMCALL     $E23C                       ; 24A2C8/D03CE2 // Unknown ASM $E23C
    .word       $0800                       ; 24A2CB/0008
    LOOP        #3                          ; 24A2CD/0103
        SETPOSE     #$00, WAIT #1               ; 24A2CF/5100
L_24A2D1:
        INCPOSE     WAIT #1                     ; 24A2D1/71
L_24A2D2:
    ENDLOOP                                 ; 24A2D2/02
    END                                     ; 24A2D3/00

; CODE OR DATA -- $24A2D4 .. $24A325
incbinRange "../split/prg/bank24.bin", $02D4, $0325

Script10_Shotzo:
    ASMCALL_l   $228470                     ; 24A325/26708422
    MOV         VAR5,REG                    ; 24A329/1D05
    JEQ         L_24A331                    ; 24A32B/0A31A3
    ASMCALL     $A3AF                       ; 24A32E/D0AFA3
L_24A331:
    SPRITEMAP   $30806E                     ; 24A331/1A6E8030
    MOV         VAR6,#$00                   ; 24A335/0D0600
    ASMCALL     $A507                       ; 24A338/D007A5
L_24A33B:
    MOV         REG,VAR5                    ; 24A33B/1E05
    JNE         L_24A384                    ; 24A33D/0B84A3
    ASMCALL     $A4AE                       ; 24A340/D0AEA4 // Unknown ASM $24A4AE
    .byte       $00                         ; 24A343/00
    ZEROVEL                                 ; 24A344/38
L_24A345:
    MOV         VAR3,#$00                   ; 24A345/0D0300
    ASMCALL     $A4AE                       ; 24A348/D0AEA4 // Unknown ASM $24A4AE
    .byte       $00                         ; 24A34B/00
L_24A34C:
    ONTICK      $24A538                     ; 24A34C/0838A524
    ASMCALL     $8BE4                       ; 24A350/D0E48B
    .addr $a4aa
L_24A355:
    ASMCALL     $A444                       ; 24A355/D044A4
    JNE         L_24A345                    ; 24A358/0B45A3
    MOV         REG,VAR3                    ; 24A35B/1E03
    JNE         L_24A345                    ; 24A35D/0B45A3
    ONTICK      $24A524                     ; 24A360/0824A524
    ASMCALL     $DED0                       ; 24A364/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 24A367/09
    .byte       $12                         ; 24A368/12
    .byte       $51                         ; 24A369/51
    .byte       $00                         ; 24A36A/00
    .byte       $00                         ; 24A36B/00
    .byte       $00                         ; 24A36C/00
    .byte       $00                         ; 24A36D/00
    .byte       $00                         ; 24A36E/00
    MOV         VAR3,#$00                   ; 24A36F/0D0300
    LOOP        #4                          ; 24A372/0104
        ASMCALL     $A3C3, WAIT #2              ; 24A374/D2C3A3
L_24A377:
    ENDLOOP                                 ; 24A377/02
    ZEROVEL                                 ; 24A378/38
    MOV         VAR3,#$01                   ; 24A379/0D0301
    A_JMP       L_24A34C                    ; 24A37C/174CA3

L_24A37F:
    ONTICK      $24A553                     ; 24A37F/0853A524
    HALT                                    ; 24A383/09

L_24A384:
    ASMCALL     $A4AE                       ; 24A384/D0AEA4 // Unknown ASM $24A4AE
    .byte       $00                         ; 24A387/00
    ONTICK      $24A538                     ; 24A388/0838A524
    WAIT        #100                        ; 24A38C/0664
L_24A38E:
    ONTICK      $24A524                     ; 24A38E/0824A524
    LOOP        #3                          ; 24A392/0103
        ASMCALL     $DED0                       ; 24A394/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $09                         ; 24A397/09
        .byte       $12                         ; 24A398/12
        .byte       $51                         ; 24A399/51
        .byte       $00                         ; 24A39A/00
        .byte       $00                         ; 24A39B/00
        .byte       $00                         ; 24A39C/00
        .byte       $01                         ; 24A39D/01
        .byte       $00                         ; 24A39E/00
        MOV         VAR3,#$00                   ; 24A39F/0D0300
        LOOP        #4                          ; 24A3A2/0104
            ASMCALL     $A3C3, WAIT #2              ; 24A3A4/D2C3A3
L_24A3A7:
        ENDLOOP                                 ; 24A3A7/02
        ZEROVEL                                 ; 24A3A8/38
        WAIT        #7                          ; 24A3A9/0607
L_24A3AB:
    ENDLOOP                                 ; 24A3AB/02
    A_JMP       L_24A384                    ; 24A3AC/1784A3

; CODE OR DATA -- $24A3AF .. $24A592
incbinRange "../split/prg/bank24.bin", $03AF, $0592

Script51_CannonBall:
    ASMCALL     $DE4B                       ; 24A592/D04BDE // Play sound effect
    .byte       $1C                         ; 24A595/1C
    SETBANK     #$22                        ; 24A596/2822
    ONPOSITION  $D9BB                       ; 24A598/21BBD9
    ASMCALL     $84AD                       ; 24A59B/D0AD84 // Copy $0784[self.parent] to $0784[self]
    ASMCALL     $A4CA                       ; 24A59E/D0CAA4 // Unknown ASM $24A4CA
    .word       $A64B                       ; 24A5A1/4BA6
    SPRITEMAP   $3082EC                     ; 24A5A3/1AEC8230
    SETPOSE     #$02, WAIT #2               ; 24A5A7/5202
L_24A5A9:
    INCPOSE     WAIT #2                     ; 24A5A9/72
L_24A5AA:
    SPRITEMAP   $3080AB                     ; 24A5AA/1AAB8030
    MOV         REG,VAR0                    ; 24A5AE/1E00
    JNE         L_24A5C5                    ; 24A5B0/0BC5A5
    MOV         VAR0,#$01                   ; 24A5B3/0D0001
    ASMCALL     $A638                       ; 24A5B6/D038A6
    ONTICK      $24A5FD                     ; 24A5B9/08FDA524
    ASMCALL     $8B61                       ; 24A5BD/D0618B
    ADDPOSE     #-90, WAIT #11              ; 24A5C0/6BA6
    A_JMP       L_24A5D4                    ; 24A5C2/17D4A5

L_24A5C5:
    MOV         VAR0,#$01                   ; 24A5C5/0D0001
    MOV         VAR2,#$26                   ; 24A5C8/0D0226
    ONTICK      $24A5FD                     ; 24A5CB/08FDA524
    ASMCALL     $E23C                       ; 24A5CF/D03CE2 // Unknown ASM $E23C
    .word       $0400                       ; 24A5D2/0004
L_24A5D4:
    SETPOSE     #$00, WAIT #1               ; 24A5D4/5100
L_24A5D6:
    LOOP        #5                          ; 24A5D6/0105
        INCPOSE     WAIT #1                     ; 24A5D8/71
L_24A5D9:
    ENDLOOP                                 ; 24A5D9/02
    A_JMP       L_24A5D4                    ; 24A5DA/17D4A5

L_24A5DD:
    ASMCALL     $DE4B                       ; 24A5DD/D04BDE // Play sound effect
    .byte       $0E                         ; 24A5E0/0E
    SETZPOS     #$00FF                      ; 24A5E1/3AFF00
    SPRITEMAP   $308B7A                     ; 24A5E4/1A7A8B30
    ASMCALL     $8542                       ; 24A5E8/D04285
    SETPOSE     #$05, WAIT #2               ; 24A5EB/5205
L_24A5ED:
    INCPOSE     WAIT #2                     ; 24A5ED/72
L_24A5EE:
    END                                     ; 24A5EE/00

L_24A5EF:
    ASMCALL     $DE4B                       ; 24A5EF/D04BDE // Play sound effect
    .byte       $0E                         ; 24A5F2/0E
    SETZPOS     #$0080                      ; 24A5F3/3A8000
    SPRITEMAP   $308B7A                     ; 24A5F6/1A7A8B30
    SETPOSE     #$04, WAIT #4               ; 24A5FA/5404
L_24A5FC:
    END                                     ; 24A5FC/00

; CODE OR DATA -- $24A5FD .. $24A673
incbinRange "../split/prg/bank24.bin", $05FD, $0673

Script11_Sparky:
    SETBANK     #$22                        ; 24A673/2822
    ONPOSITION  $D9BB                       ; 24A675/21BBD9
    SPRITEMAP   $3080D5                     ; 24A678/1AD58030
    ASMCALL     $84A4                       ; 24A67C/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 24A67F/0D0002
    ASMCALL     $8851                       ; 24A682/D05188 // Face towards Kirby
    ASMCALL     $DFDF                       ; 24A685/D0DFDF // Unknown ASM $DFDF
    .byte       $04                         ; 24A688/04
    JEQ         L_24A728                    ; 24A689/0A28A7
L_24A68C:
    ZEROVEL                                 ; 24A68C/38
    ASMCALL     $8851                       ; 24A68D/D05188
    ASMCALL     $A832                       ; 24A690/D032A8
    MOV         VAR6,REG                    ; 24A693/1D06
    TABLEJMP    #3                          ; 24A695/0F03
    .word       L_24A69D                    ; 24A697/9DA6
    .word       L_24A69D                    ; 24A699/9DA6
    .word       L_24A728                    ; 24A69B/28A7
L_24A69D:
    ONTICK      $24A812                     ; 24A69D/0812A824
    ZEROVEL                                 ; 24A6A1/38
    ASMCALL     $8C53                       ; 24A6A2/D0538C
    ENDLOOP                                 ; 24A6A5/02
    ASMCALL     $8BE4                       ; 24A6A6/D0E48B
    .addr $A6E6
L_24A6AB:
    MOV         REG,VAR6                    ; 24A6AB/1E06
    JEQ         L_24A6B5                    ; 24A6AD/0AB5A6
    ASMCALL     $8B7F                       ; 24A6B0/D07F8B
    .addr $A6E2
L_24A6B5:
    DEC2POSE                                ; 24A6B5/A0
    ASMCALL     $A6F0                       ; 24A6B6/D0F0A6
L_24A6B9:
    ASMCALL     $DE4B                       ; 24A6B9/D04BDE // Play sound effect
    .byte       $0D                         ; 24A6BC/0D
    MOV         VAR7,#$00                   ; 24A6BD/0D0700
    MOV         VAR9,#$00                   ; 24A6C0/0D0900
    ONTICK      $24A77C                     ; 24A6C3/087CA724
L_24A6C7:
    WAIT        #1                          ; 24A6C7/0601
L_24A6C9:
    MOV         REG,VAR3                    ; 24A6C9/1E03
    JNE         L_24A6C7                    ; 24A6CB/0BC7A6
    SETYVEL     #$0000                      ; 24A6CE/C00000
    ONTICK      $24A812                     ; 24A6D1/0812A824
    ADDPOSE     #4                          ; 24A6D5/6004
    ASMCALL     $A712                       ; 24A6D7/D012A7
    ASMCALL     $8BE4                       ; 24A6DA/D0E48B
    .addr $A6E8

L_24A6DF:
    A_JMP       L_24A68C                    ; 24A6DF/178CA6

; CODE OR DATA -- $24A6E2 .. $24A71F
incbinRange "../split/prg/bank24.bin", $06E2, $071F

L_24A71F:
    ASMCALL     $8829                       ; 24A71F/D02988
    MOV         VAR3,#$15                   ; 24A722/0D0315
    A_JMP       L_24A6B9                    ; 24A725/17B9A6

L_24A728:
    ONTICK      $24A80C                     ; 24A728/080CA824
    ZEROVEL                                 ; 24A72C/38
    ASMCALL     $8829, WAIT #8              ; 24A72D/D82988
L_24A730:
    INC2POSE    WAIT #8                     ; 24A730/98
L_24A731:
    SETPOSE     #$06                        ; 24A731/5006
    LOOP        #15                         ; 24A733/010F
        SETPOSE     #$06, WAIT #1               ; 24A735/5106
L_24A737:
        INCPOSE     WAIT #1                     ; 24A737/71
L_24A738:
        ASMCALL     $DED0, WAIT #1              ; 24A738/D1D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $09                         ; 24A73B/09
        .byte       $12                         ; 24A73C/12
        .byte       $52                         ; 24A73D/52
        .byte       $00                         ; 24A73E/00
        .byte       $00                         ; 24A73F/00
        .byte       $00                         ; 24A740/00
        .byte       $02                         ; 24A741/02
        .byte       $00                         ; 24A742/00
L_24A743:
        SETPOSE     #$06, WAIT #1               ; 24A743/5106
L_24A745:
        ASMCALL     $DED0                       ; 24A745/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $09                         ; 24A748/09
        .byte       $12                         ; 24A749/12
        .byte       $52                         ; 24A74A/52
        .byte       $00                         ; 24A74B/00
        .byte       $00                         ; 24A74C/00
        .byte       $00                         ; 24A74D/00
        .byte       $02                         ; 24A74E/02
        .byte       $00                         ; 24A74F/00
        INCPOSE     WAIT #2                     ; 24A750/72
L_24A751:
        ASMCALL     $DED0                       ; 24A751/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $09                         ; 24A754/09
        .byte       $12                         ; 24A755/12
        .byte       $52                         ; 24A756/52
        .byte       $00                         ; 24A757/00
        .byte       $00                         ; 24A758/00
        .byte       $00                         ; 24A759/00
        .byte       $02                         ; 24A75A/02
        .byte       $00                         ; 24A75B/00
    ENDLOOP                                 ; 24A75C/02
    SETPOSE     #$06, WAIT #8               ; 24A75D/5806
L_24A75F:
    ASMCALL     $8829, WAIT #8              ; 24A75F/D82988
L_24A762:
    INC2POSE    WAIT #8                     ; 24A762/98
L_24A763:
    A_JMP       L_24A68C                    ; 24A763/178CA6

; CODE OR DATA -- $24A766 .. $24A857
incbinRange "../split/prg/bank24.bin", $0766, $0857

L_24A857:
    ASMCALL     $DE4B                       ; 24A857/D04BDE // Play sound effect
    .byte       $39                         ; 24A85A/39
    SPRITEMAP   $30812D                     ; 24A85B/1A2D8130
    ASMCALL     $A86A                       ; 24A85F/D06AA8
    ASMCALL     $E23C                       ; 24A862/D03CE2 // Unknown ASM $E23C
    .word       $0200                       ; 24A865/0002
    SETPOSE     #$00, WAIT #4               ; 24A867/5400
L_24A869:
    END                                     ; 24A869/00

; CODE OR DATA -- $24A86A .. $24A8C2
incbinRange "../split/prg/bank24.bin", $086A, $08C2

Script12_PoppyBrosJr:
    SETBANK     #$22                        ; 24A8C2/2822
    MOV         VAR6,#$00                   ; 24A8C4/0D0600
    MOV         REG,VAR0                    ; 24A8C7/1E00
    JNE         L_24A92A                    ; 24A8C9/0B2AA9
    ASMCALL     $84A4                       ; 24A8CC/D0A484 // Store VAR1 in $0784[self]
    ASMCALL     $8851                       ; 24A8CF/D05188 // Face towards Kirby
    ONPOSITION  $D9BB                       ; 24A8D2/21BBD9
    SPRITEMAP   $308138                     ; 24A8D5/1A388130
    MOV         VAR2,#$00                   ; 24A8D9/0D0200
    MOV         VAR3,#$00                   ; 24A8DC/0D0300
    MOV         VAR6,#$00                   ; 24A8DF/0D0600
    MOV         VAR0,#$02                   ; 24A8E2/0D0002
L_24A8E5:
    ZEROVEL                                 ; 24A8E5/38
    ONTICK      $24A952                     ; 24A8E6/0852A924
    ASMCALL     $DE4B                       ; 24A8EA/D04BDE // Play sound effect
    .byte       $0E                         ; 24A8ED/0E
    ASMCALL     $8829, WAIT #2              ; 24A8EE/D22988 // Set pose to 0 (respect facing)
L_24A8F1:
    ONTICK      $24A968                     ; 24A8F1/0868A924
    ASMCALL     $DE4B                       ; 24A8F5/D04BDE // Play sound effect
    .byte       $0D                         ; 24A8F8/0D
    ASMCALL     $8B7F                       ; 24A8F9/D07F8B // Unknown ASM $228B7F
    .addr       $A06A                       ; 24A8FC/6AA0
    SETYVEL     #$FF33                      ; 24A8FE/C033FF
    MOV         VAR7,#$00                   ; 24A901/0D0700
    MOV         VAR9,#$00                   ; 24A904/0D0900
    LOOP        #6                          ; 24A907/0106
        WAIT        #1                          ; 24A909/0601
L_24A90B:
        MOV         REG,VAR6                    ; 24A90B/1E06
        BREAKNE     L_24A91C                    ; 24A90D/151CA9
    ENDLOOP                                 ; 24A910/02
    INC2POSE                                ; 24A911/90
L_24A912:
    WAIT        #1                          ; 24A912/0601
L_24A914:
    MOV         REG,VAR6                    ; 24A914/1E06
    JEQ         L_24A912                    ; 24A916/0A12A9
    A_JMP       L_24A91D                    ; 24A919/171DA9

L_24A91C:
    INC2POSE                                ; 24A91C/90
L_24A91D:
    SETYVEL     #$0000, WAIT #6             ; 24A91D/C60000
L_24A920:
    ASMCALL     $8B7F                       ; 24A920/D07F8B // Unknown ASM $228B7F
    .addr       $A06A                       ; 24A923/6AA0
L_24A925:
    DEC2POSE    WAIT #6                     ; 24A925/A6
L_24A926:
    INC2POSE    WAIT #10                    ; 24A926/9A
L_24A927:
    A_JMP       L_24A925                    ; 24A927/1725A9

L_24A92A:
    ASMCALL     $84AD                       ; 24A92A/D0AD84 // Copy $0784[self.parent] to $0784[self]
    ASMCALL     $8851                       ; 24A92D/D05188 // Face towards Kirby
    ONPOSITION  $D9BB                       ; 24A930/21BBD9
    SPRITEMAP   $308138                     ; 24A933/1A388130
    MOV         VAR2,#$00                   ; 24A937/0D0200
    MOV         VAR3,#$00                   ; 24A93A/0D0300
    MOV         VAR6,#$00                   ; 24A93D/0D0600
    MOV         VAR0,#$02                   ; 24A940/0D0002
    MOV         VAR8,#$1E                   ; 24A943/0D081E
    ONTICK      $24AA77                     ; 24A946/0877AA24
    SETYVEL     #$FE00                      ; 24A94A/C000FE
    ASMCALL     $8829, WAIT #8              ; 24A94D/D82988 // Set pose to 0 (respect facing)
L_24A950:
    INC2POSE                                ; 24A950/90
    HALT                                    ; 24A951/09

; CODE OR DATA -- $24A952 .. $24AAA4
incbinRange "../split/prg/bank24.bin", $0952, $0AA4

Script13_PoppyBrosApple:
    SETBANK     #$22                        ; 24AAA4/2822
    ONPOSITION  $D9BB                       ; 24AAA6/21BBD9
    SPRITEMAP   $308164                     ; 24AAA9/1A648130
    ASMCALL     $84A4                       ; 24AAAD/D0A484 // Store VAR1 in $0784[self]
    ASMCALL     $8851                       ; 24AAB0/D05188 // Face towards Kirby
    MOV         VAR0,#$02                   ; 24AAB3/0D0002
    MOV         VAR3,#$00                   ; 24AAB6/0D0300
L_24AAB9:
    ONTICK      $24AB4F                     ; 24AAB9/084FAB24
    ZEROVEL                                 ; 24AABD/38
    ASMCALL     $8B7F                       ; 24AABE/D07F8B // Unknown ASM $228B7F
    .addr       $A06A                       ; 24AAC1/6AA0
L_24AAC3:
    ASMCALL     $8829                       ; 24AAC3/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $8BE4                       ; 24AAC6/D0E48B // Unknown ASM $228BE4
    .addr       $ABB5                       ; 24AAC9/B5AB
L_24AACB:
    INC2POSE                                ; 24AACB/90
    ASMCALL     $8BE4                       ; 24AACC/D0E48B // Unknown ASM $228BE4
    .addr       $ABB5                       ; 24AACF/B5AB
L_24AAD1:
    INC2POSE                                ; 24AAD1/90
    ASMCALL     $8BE4                       ; 24AAD2/D0E48B // Unknown ASM $228BE4
    .addr       $ABB5                       ; 24AAD5/B5AB
L_24AAD7:
    INC2POSE                                ; 24AAD7/90
    ASMCALL     $8BE4                       ; 24AAD8/D0E48B // Unknown ASM $228BE4
    .addr       $ABB5                       ; 24AADB/B5AB
L_24AADD:
    A_JMP       L_24AAC3                    ; 24AADD/17C3AA

L_24AAE0:
    ONTICK      $24AB8D                     ; 24AAE0/088DAB24
    A_JMP       L_24AAC3                    ; 24AAE4/17C3AA

L_24AAE7:
    MOV         REG,VAR3                    ; 24AAE7/1E03
    JNE         L_24AAFA                    ; 24AAE9/0BFAAA
    ASMCALL     $DED0                       ; 24AAEC/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 24AAEF/09
    .byte       $12                         ; 24AAF0/12
    .byte       $15                         ; 24AAF1/15
    .byte       $00                         ; 24AAF2/00
    .byte       $02                         ; 24AAF3/02
    .byte       $00                         ; 24AAF4/00
    .byte       $00                         ; 24AAF5/00
    .byte       $00                         ; 24AAF6/00
    A_JMP       L_24AB05                    ; 24AAF7/1705AB

L_24AAFA:
    ASMCALL     $DED0                       ; 24AAFA/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 24AAFD/09
    .byte       $12                         ; 24AAFE/12
    .byte       $15                         ; 24AAFF/15
    .byte       $00                         ; 24AB00/00
    .byte       $02                         ; 24AB01/02
    .byte       $00                         ; 24AB02/00
    .byte       $01                         ; 24AB03/01
    .byte       $00                         ; 24AB04/00
L_24AB05:
    SPRITEMAP   $308138                     ; 24AB05/1A388130
    ASMCALL     $8829                       ; 24AB09/D02988 // Set pose to 0 (respect facing)
    A_RTS                                   ; 24AB0C/19

L_24AB0D:
    ASMCALL     $AB16                       ; 24AB0D/D016AB
    A_JSR       L_24AAE7                    ; 24AB10/18E7AA
    A_JMP       $8003                       ; 24AB13/170380

; CODE OR DATA -- $24AB16 .. $24AB20
incbinRange "../split/prg/bank24.bin", $0B16, $0B20

L_24AB20:
    ASMCALL     $DED0                       ; 24AB20/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 24AB23/09
    .byte       $12                         ; 24AB24/12
    .byte       $12                         ; 24AB25/12
    .byte       $00                         ; 24AB26/00
    .byte       $F2                         ; 24AB27/F2
    .byte       $00                         ; 24AB28/00
    .byte       $01                         ; 24AB29/01
    .byte       $00                         ; 24AB2A/00
    ADDYPOS     #2                          ; 24AB2B/2D0200
    MOV         REG,VAR3                    ; 24AB2E/1E03
    JNE         L_24AB3A                    ; 24AB30/0B3AAB
    SPRITEMAP   $308294                     ; 24AB33/1A948230
    A_JMP       L_24AB3E                    ; 24AB37/173EAB

L_24AB3A:
    SPRITEMAP   $3082C0                     ; 24AB3A/1AC08230
L_24AB3E:
    ASMCALL     $8829                       ; 24AB3E/D02988 // Set pose to 0 (respect facing)
    A_JMP       $8100                       ; 24AB41/170081

; CODE OR DATA -- $24AB44 .. $24ABB8
incbinRange "../split/prg/bank24.bin", $0B44, $0BB8

Script14_PoppyBrosTomato:
    SETBANK     #$22                        ; 24ABB8/2822
    ONPOSITION  $D9BB                       ; 24ABBA/21BBD9
    SPRITEMAP   $3081FC                     ; 24ABBD/1AFC8130
    ASMCALL     $84A4                       ; 24ABC1/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 24ABC4/0D0002
    ASMCALL     $8851                       ; 24ABC7/D05188 // Face towards Kirby
    MOV         VAR3,#$01                   ; 24ABCA/0D0301
    A_JMP       L_24AAB9                    ; 24ABCD/17B9AA

L_24ABD0:
    SETBANK     #$22                        ; 24ABD0/2822
    MOV         REG,VAR0                    ; 24ABD2/1E00
    MOV         VAR5,REG                    ; 24ABD4/1D05
    JNE         L_24ABE0                    ; 24ABD6/0BE0AB
    SPRITEMAP   $308294                     ; 24ABD9/1A948230
    A_JMP       L_24ABE4                    ; 24ABDD/17E4AB

L_24ABE0:
    SPRITEMAP   $3082C0                     ; 24ABE0/1AC08230
L_24ABE4:
    MOV         VAR0,#$02                   ; 24ABE4/0D0002
    ONPOSITION  $D9BB                       ; 24ABE7/21BBD9
    ASMCALL     $8851                       ; 24ABEA/D05188 // Face towards Kirby
    ADD         VAR1,#-128                  ; 24ABED/13010280
    ONTICK      $24AC22                     ; 24ABF1/0822AC24
    ASMCALL     $E23C                       ; 24ABF5/D03CE2 // Unknown ASM $E23C
    .word       $0080                       ; 24ABF8/8000
    SETYVEL     #$FE00                      ; 24ABFA/C000FE
    SETPOSE     #$00                        ; 24ABFD/5000
    MOV         VAR2,#$00                   ; 24ABFF/0D0200
    HALT                                    ; 24AC02/09

L_24AC03:
    ONTICK      $24AC49                     ; 24AC03/0849AC24
    SETYVEL     #$FF00                      ; 24AC07/C000FF
    HALT                                    ; 24AC0A/09

; CODE OR DATA -- $24AC0B .. $24ACA9
incbinRange "../split/prg/bank24.bin", $0C0B, $0CA9

Script16_LaserBall:
    SETBANK     #$22                        ; 24ACA9/2822
    ONPOSITION  $D9BB                       ; 24ACAB/21BBD9
    SPRITEMAP   $308310                     ; 24ACAE/1A108330
    ASMCALL     $84A4                       ; 24ACB2/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 24ACB5/0D0002
    ASMCALL     $8851                       ; 24ACB8/D05188 // Face towards Kirby
    ONTICK      $24AD37                     ; 24ACBB/0837AD24
    ZEROVEL                                 ; 24ACBF/38
    MOV         VAR2,#$10                   ; 24ACC0/0D0210
L_24ACC3:
    ASMCALL     $8829, WAIT #3              ; 24ACC3/D32988 // Set pose to 0 (respect facing)
L_24ACC6:
    INC2POSE    WAIT #3                     ; 24ACC6/93
L_24ACC7:
    A_JMP       L_24ACC3                    ; 24ACC7/17C3AC

L_24ACCA:
    ZEROVEL                                 ; 24ACCA/38
    ONTICK      $24ADEE                     ; 24ACCB/08EEAD24
    MOV         VAR2,#$38                   ; 24ACCF/0D0238
    MOV         VAR3,#$02                   ; 24ACD2/0D0302
    A_JMP       L_24ACC3                    ; 24ACD5/17C3AC

L_24ACD8:
    ZEROVEL                                 ; 24ACD8/38
    ONTICK      $24AE6B                     ; 24ACD9/086BAE24
    SETPOSE     #$0A, WAIT #2               ; 24ACDD/520A
L_24ACDF:
    INCPOSE     WAIT #2                     ; 24ACDF/72
L_24ACE0:
    INCPOSE     WAIT #2                     ; 24ACE0/72
L_24ACE1:
    INCPOSE     WAIT #2                     ; 24ACE1/72
L_24ACE2:
    ASMCALL     $8BED                       ; 24ACE2/D0ED8B // Unknown ASM $228BED
    .word       $AD34                       ; 24ACE5/34AD
    LOOP        REG                         ; 24ACE7/22
        ASMCALL     $8C53, WAIT #2              ; 24ACE8/D2538C // Set pose (respect facing)
        .byte       $04                         ; 24ACEB/04
L_24ACEC:
        SETPOSE     #$0A, WAIT #2               ; 24ACEC/520A
L_24ACEE:
        SETPOSE     #$0E, WAIT #1               ; 24ACEE/510E
L_24ACF0:
        ASMCALL     $8C53, WAIT #2              ; 24ACF0/D2538C // Set pose (respect facing)
        .byte       $06                         ; 24ACF3/06
L_24ACF4:
        SETPOSE     #$0B, WAIT #2               ; 24ACF4/520B
L_24ACF6:
        SETPOSE     #$0E, WAIT #1               ; 24ACF6/510E
L_24ACF8:
    ENDLOOP                                 ; 24ACF8/02
    MOV         VAR3,#$03                   ; 24ACF9/0D0303
L_24ACFC:
    ASMCALL     $DED0                       ; 24ACFC/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 24ACFF/09
    .byte       $12                         ; 24AD00/12
    .byte       $53                         ; 24AD01/53
    .byte       $00                         ; 24AD02/00
    .byte       $00                         ; 24AD03/00
    .byte       $00                         ; 24AD04/00
    .byte       $00                         ; 24AD05/00
    .byte       $00                         ; 24AD06/00
    SETPOSE     #$0A, WAIT #6               ; 24AD07/560A
L_24AD09:
    SETPOSE     #$0E, WAIT #6               ; 24AD09/560E
L_24AD0B:
    ASMCALL     $8C53, WAIT #6              ; 24AD0B/D6538C // Set pose (respect facing)
    .byte       $08                         ; 24AD0E/08
L_24AD0F:
    ADD         VAR3,#-1                    ; 24AD0F/130302FF
    JEQ         L_24AD1E                    ; 24AD13/0A1EAD
    MOV         REG,#$02                    ; 24AD16/1B02
    ASMCALL     $C8DD                       ; 24AD18/D0DDC8
    JEQ         L_24ACFC                    ; 24AD1B/0AFCAC
L_24AD1E:
    ASMCALL     $8851                       ; 24AD1E/D05188 // Face towards Kirby
    ADD         VAR1,#-128                  ; 24AD21/13010280
    ASMCALL     $E23C                       ; 24AD25/D03CE2 // Unknown ASM $E23C
    .word       $0066                       ; 24AD28/6600
    SETYVEL     #$0000                      ; 24AD2A/C00000
    ONTICK      $24AE73                     ; 24AD2D/0873AE24
    A_JMP       L_24ACC3                    ; 24AD31/17C3AC

; CODE OR DATA -- $24AD34 .. $24AEA1
incbinRange "../split/prg/bank24.bin", $0D34, $0EA1

L_24AEA1:
    ASMCALL     $DE4B                       ; 24AEA1/D04BDE // Play sound effect
    .byte       $42                         ; 24AEA4/42
    SETBANK     #$22                        ; 24AEA5/2822
    ONPOSITION  $D9BB                       ; 24AEA7/21BBD9
    SPRITEMAP   $3083B5                     ; 24AEAA/1AB58330
    ASMCALL     $AEEB                       ; 24AEAE/D0EBAE // Move object 8 pixels forward
    ONTICK      $24AED1                     ; 24AEB1/08D1AE24
    MOV         REG,VAR0                    ; 24AEB5/1E00
    JNE         L_24AEC9                    ; 24AEB7/0BC9AE
    MOV         VAR0,#$01                   ; 24AEBA/0D0001
    SETPOSE     #$00, WAIT #2               ; 24AEBD/5200
L_24AEBF:
    DECPOSE     WAIT #1                     ; 24AEBF/81
L_24AEC0:
    INCPOSE     WAIT #1                     ; 24AEC0/71
L_24AEC1:
    ASMCALL     $E23C                       ; 24AEC1/D03CE2 // Unknown ASM $E23C
    .word       $0800                       ; 24AEC4/0008
    INCPOSE     WAIT #1                     ; 24AEC6/71
L_24AEC7:
    INCPOSE                                 ; 24AEC7/70
    HALT                                    ; 24AEC8/09

L_24AEC9:
    MOV         VAR0,#$01                   ; 24AEC9/0D0001
    SETPOSE     #$00                        ; 24AECC/5000
    A_JMP       L_24AEC1                    ; 24AECE/17C1AE

; CODE OR DATA -- $24AED1 .. $24AF08
incbinRange "../split/prg/bank24.bin", $0ED1, $0F08

L_24AF08:
    SETBANK     #$22                        ; 24AF08/2822
    ONPOSITION  $D9BB                       ; 24AF0A/21BBD9
    SPRITEMAP   $30844E                     ; 24AF0D/1A4E8430
    ASMCALL     $AF21                       ; 24AF11/D021AF
    ASMCALL     $8C05                       ; 24AF14/D0058C // Unknown ASM $228C05
    .byte       $06                         ; 24AF17/06
    ASMCALL     $E23C                       ; 24AF18/D03CE2 // Unknown ASM $E23C
    .word       $0400                       ; 24AF1B/0004
    SETPOSE     #$00, WAIT #1               ; 24AF1D/5100
L_24AF1F:
    INCPOSE     WAIT #1                     ; 24AF1F/71
L_24AF20:
    END                                     ; 24AF20/00

; CODE OR DATA -- $24AF21 .. $24AF44
incbinRange "../split/prg/bank24.bin", $0F21, $0F44

Script18_Blipper:
    SETBANK     #$22                        ; 24AF44/2822
    ONPOSITION  $D9BB                       ; 24AF46/21BBD9
    SPRITEMAP   $30845C                     ; 24AF49/1A5C8430
    ASMCALL     $84A4                       ; 24AF4D/D0A484 // Store VAR1 in $0784[self]
    ASMCALL     $8851                       ; 24AF50/D05188 // Face towards Kirby
    MOV         REG,VAR0                    ; 24AF53/1E00
    MOV         VAR6,REG                    ; 24AF55/1D06
    TABLEJMP    #4                          ; 24AF57/0F04
    .word       L_24AF61                    ; 24AF59/61AF
    .word       L_24B111                    ; 24AF5B/11B1
    .word       L_24B152                    ; 24AF5D/52B1
    .word       L_24B1CA                    ; 24AF5F/CAB1
L_24AF61:
    MOV         VAR0,#$02                   ; 24AF61/0D0002
    MOV         VAR2,#$00                   ; 24AF64/0D0200
    MOV         VAR3,#$00                   ; 24AF67/0D0300
L_24AF6A:
    ONTICK      $24AF9F                     ; 24AF6A/089FAF24
L_24AF6E:
    ASMCALL     $8829, WAIT #6              ; 24AF6E/D62988 // Set pose to 0 (respect facing)
L_24AF71:
    ASMCALL     $8C53, WAIT #8              ; 24AF71/D8538C // Set pose (respect facing)
    .byte       $02                         ; 24AF74/02
L_24AF75:
    INC2POSE    WAIT #4                     ; 24AF75/94
L_24AF76:
    A_JMP       L_24AF6E                    ; 24AF76/176EAF

L_24AF79:
    ONTICK      $24AFD9                     ; 24AF79/08D9AF24
L_24AF7D:
    ASMCALL     $8829                       ; 24AF7D/D02988 // Set pose to 0 (respect facing)
    WAIT        #32                         ; 24AF80/0620
L_24AF82:
    ASMCALL     $8C53, WAIT #5              ; 24AF82/D5538C // Set pose (respect facing)
    .byte       $02                         ; 24AF85/02
L_24AF86:
    A_JMP       L_24AF7D                    ; 24AF86/177DAF

; CODE OR DATA -- $24AF89 .. $24B111
incbinRange "../split/prg/bank24.bin", $0F89, $1111

L_24B111:
    MOV         VAR0,#$02                   ; 24B111/0D0002
L_24B114:
    ONTICK      $24B130                     ; 24B114/0830B124
    ASMCALL     $E26A                       ; 24B118/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 24B11B/8000
L_24B11D:
    ASMCALL     $8829                       ; 24B11D/D02988 // Set pose to 0 (respect facing)
    SETYVEL     #$0080, WAIT #10            ; 24B120/CA8000
L_24B123:
    INC2POSE                                ; 24B123/90
    SETYVEL     #$0040, WAIT #10            ; 24B124/CA4000
L_24B127:
    SETYVEL     #$FF80, WAIT #10            ; 24B127/CA80FF
L_24B12A:
    SETYVEL     #$FFC0, WAIT #10            ; 24B12A/CAC0FF
L_24B12D:
    A_JMP       L_24B11D                    ; 24B12D/171DB1

; CODE OR DATA -- $24B130 .. $24B152
incbinRange "../split/prg/bank24.bin", $1130, $1152

L_24B152:
    MOV         VAR0,#$02                   ; 24B152/0D0002
    ASMCALL     $B1AB                       ; 24B155/D0ABB1 // Get sign of Y distance from Kirby
    JNE         L_24B177                    ; 24B158/0B77B1
L_24B15B:
    ONTICK      $24B18D                     ; 24B15B/088DB124
    LOOP        #3                          ; 24B15F/0103
        SETYVEL     #$FF80                      ; 24B161/C080FF
        SETXVEL     #$FF80                      ; 24B164/B080FF
        SETPOSE     #$04, WAIT #8               ; 24B167/5804
        SETXVEL     #$0040                      ; 24B169/B04000
        DEC2POSE    WAIT #15                    ; 24B16C/AF
        SETXVEL     #$0080                      ; 24B16D/B08000
        SETPOSE     #$05, WAIT #8               ; 24B170/5805
        SETXVEL     #$FFC0                      ; 24B172/B0C0FF
        DEC2POSE    WAIT #15                    ; 24B175/AF
    ENDLOOP                                 ; 24B176/02
L_24B177:
    ONTICK      $24B18D                     ; 24B177/088DB124
    SETXVEL     #$0000                      ; 24B17B/B00000
    SETYVEL     #$0080                      ; 24B17E/C08000
    SETPOSE     #$07                        ; 24B181/5007
    WAIT        #138                        ; 24B183/068A
    ZEROVEL                                 ; 24B185/38
    ADDPOSE     #-3, WAIT #2                ; 24B186/62FD
    INCPOSE     WAIT #2                     ; 24B188/72
    DEC2POSE    WAIT #2                     ; 24B189/A2
    A_JMP       L_24B15B                    ; 24B18A/175BB1

; CODE OR DATA -- $24B18D .. $24B1CA
incbinRange "../split/prg/bank24.bin", $118D, $11CA

L_24B1CA:
    MOV         VAR0,#$02                   ; 24B1CA/0D0002
    MOV         VAR3,#$01                   ; 24B1CD/0D0301
L_24B1D0:
    ONTICK      $24B232                     ; 24B1D0/0832B224
    MOV         VAR2,#$C0                   ; 24B1D4/0D02C0
    ASMCALL     $E26A                       ; 24B1D7/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 24B1DA/8000
L_24B1DC:
    ASMCALL     $8829, WAIT #10             ; 24B1DC/DA2988 // Set pose to 0 (respect facing)
L_24B1DF:
    INC2POSE                                ; 24B1DF/90
    WAIT        #30                         ; 24B1E0/061E
    A_JMP       L_24B1DC                    ; 24B1E2/17DCB1

L_24B1E5:
    ASMCALL     $8851                       ; 24B1E5/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 24B1E8/D0538C // Set pose (respect facing)
    .byte       $04                         ; 24B1EB/04
    ONTICK      $24AF97                     ; 24B1EC/0897AF24
    SETXVEL     #$0000                      ; 24B1F0/B00000
    SETYVEL     #$0200, WAIT #2             ; 24B1F3/C20002
L_24B1F6:
    SETYVEL     #$0100, WAIT #4             ; 24B1F6/C40001
L_24B1F9:
    SETYVEL     #$FF00, WAIT #4             ; 24B1F9/C400FF
L_24B1FC:
    SETYVEL     #$FE00, WAIT #2             ; 24B1FC/C200FE
L_24B1FF:
    ONTICK      $24B229                     ; 24B1FF/0829B224
    MOV         VAR3,#$5A                   ; 24B203/0D035A
    ASMCALL     $8B7F                       ; 24B206/D07F8B // Unknown ASM $228B7F
    .addr       $B225                       ; 24B209/25B2
    SETYVEL     #$FC00                      ; 24B20B/C000FC
L_24B20E:
    ASMCALL     $8E74, WAIT #1              ; 24B20E/D1748E // Check if Y velocity is negative
L_24B211:
    JNE         L_24B20E                    ; 24B211/0B0EB2
    INC2POSE                                ; 24B214/90
L_24B215:
    ASMCALL     $B2D4, WAIT #1              ; 24B215/D1D4B2
L_24B218:
    JEQ         L_24B215                    ; 24B218/0A15B2
    ASMCALL     $B2DE                       ; 24B21B/D0DEB2
    ASMCALL     $DE4B                       ; 24B21E/D04BDE // Play sound effect
    .byte       $1F                         ; 24B221/1F
    A_JMP       L_24B1D0                    ; 24B222/17D0B1

; CODE OR DATA -- $24B225 .. $24B2EC
incbinRange "../split/prg/bank24.bin", $1225, $12EC

Script19_Bounder:
    SETBANK     #$22                        ; 24B2EC/2822
    ONPOSITION  $D9BB                       ; 24B2EE/21BBD9
    SPRITEMAP   $3084B4                     ; 24B2F1/1AB48430
    MOV         VAR0,#$02                   ; 24B2F5/0D0002
    MOV         VAR2,#$78                   ; 24B2F8/0D0278
    MOV         VAR6,#$00                   ; 24B2FB/0D0600
    ASMCALL     $B467                       ; 24B2FE/D067B4
    JNE         L_24B3BA                    ; 24B301/0BBAB3
L_24B304:
    ONTICK      $24B4F8                     ; 24B304/08F8B424
    ZEROVEL                                 ; 24B308/38
    ASMCALL     $8851                       ; 24B309/D05188 // Face towards Kirby
    ASMCALL     $E26A                       ; 24B30C/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 24B30F/0001
    MOV         VAR5,#$10                   ; 24B311/0D0510
    MOV         VAR6,#$00                   ; 24B314/0D0600
L_24B317:
    ASMCALL     $8829, WAIT #8              ; 24B317/D82988 // Set pose to 0 (respect facing)
L_24B31A:
    INC2POSE    WAIT #8                     ; 24B31A/98
L_24B31B:
    A_JMP       L_24B317                    ; 24B31B/1717B3

L_24B31E:
    ONTICK      $24B4F8                     ; 24B31E/08F8B424
    ASMCALL     $8860                       ; 24B322/D06088
    ASMCALL     $E26A                       ; 24B325/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 24B328/0001
    MOV         VAR5,#$10                   ; 24B32A/0D0510
    MOV         VAR6,#$01                   ; 24B32D/0D0601
L_24B330:
    ASMCALL     $8829, WAIT #8              ; 24B330/D82988 // Set pose to 0 (respect facing)
L_24B333:
    INC2POSE    WAIT #8                     ; 24B333/98
L_24B334:
    A_JMP       L_24B330                    ; 24B334/1730B3

L_24B337:
    ZEROVEL                                 ; 24B337/38
    ONTICK      $24B564                     ; 24B338/0864B524
    ASMCALL     $8851                       ; 24B33C/D05188 // Face towards Kirby
    ASMCALL     $8C53, WAIT #4              ; 24B33F/D4538C // Set pose (respect facing)
    .byte       $02                         ; 24B342/02
L_24B343:
    ASMCALL     $DE4B                       ; 24B343/D04BDE // Play sound effect
    .byte       $41                         ; 24B346/41
    ASMCALL     $DED0                       ; 24B347/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 24B34A/09
    .byte       $12                         ; 24B34B/12
    .byte       $55                         ; 24B34C/55
    .byte       $00                         ; 24B34D/00
    .byte       $03                         ; 24B34E/03
    .byte       $00                         ; 24B34F/00
    .byte       $00                         ; 24B350/00
    .byte       $00                         ; 24B351/00
    INC2POSE    WAIT #4                     ; 24B352/94
L_24B353:
    DEC2POSE    WAIT #8                     ; 24B353/A8
L_24B354:
    DEC2POSE                                ; 24B354/A0
    WAIT        #24                         ; 24B355/0618
L_24B357:
    MOV         VAR2,#$78                   ; 24B357/0D0278
    A_JMP       L_24B304                    ; 24B35A/1704B3

L_24B35D:
    ONTICK      $24B564                     ; 24B35D/0864B524
    ZEROVEL                                 ; 24B361/38
    ASMCALL     $E26A                       ; 24B362/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 24B365/0001
    ASMCALL     $8829, WAIT #10             ; 24B367/DA2988 // Set pose to 0 (respect facing)
L_24B36A:
    A_JMP       L_24B304                    ; 24B36A/1704B3

L_24B36D:
    ONTICK      $24B564                     ; 24B36D/0864B524
    WAIT        #7                          ; 24B371/0607
L_24B373:
    ZEROVEL                                 ; 24B373/38
    ASMCALL     $8C53                       ; 24B374/D0538C // Set pose (respect facing)
    .byte       $04                         ; 24B377/04
    SETYVEL     #$0200, WAIT #2             ; 24B378/C20002
L_24B37B:
    MOV         VAR6,#$01                   ; 24B37B/0D0601
    ONTICK      $24B48B                     ; 24B37E/088BB424
    LOOP        #3                          ; 24B382/0103
        ASMCALL     $8C53                       ; 24B384/D0538C // Set pose (respect facing)
        .byte       $04                         ; 24B387/04
        SETYVEL     #$0200, WAIT #4             ; 24B388/C40002
L_24B38B:
        INC2POSE                                ; 24B38B/90
        SETYVEL     #$0100, WAIT #4             ; 24B38C/C40001
L_24B38F:
        DEC2POSE                                ; 24B38F/A0
        SETYVEL     #$0080, WAIT #4             ; 24B390/C48000
L_24B393:
        INC2POSE                                ; 24B393/90
        SETYVEL     #$0040, WAIT #4             ; 24B394/C44000
L_24B397:
    ENDLOOP                                 ; 24B397/02
    A_JMP       L_24B3BA                    ; 24B398/17BAB3

L_24B39B:
    MOV         VAR6,#$00                   ; 24B39B/0D0600
    ONTICK      $24B48B                     ; 24B39E/088BB424
    ZEROVEL                                 ; 24B3A2/38
    LOOP        #3                          ; 24B3A3/0103
        ASMCALL     $883F                       ; 24B3A5/D03F88 // Set pose to 0 (1 if MSB of VAR2 is set)
        ADDPOSE     #4                          ; 24B3A8/6004
        SETYVEL     #$FE00, WAIT #4             ; 24B3AA/C400FE
L_24B3AD:
        INC2POSE                                ; 24B3AD/90
        SETYVEL     #$FF00, WAIT #4             ; 24B3AE/C400FF
L_24B3B1:
        DEC2POSE                                ; 24B3B1/A0
        SETYVEL     #$FF80, WAIT #4             ; 24B3B2/C480FF
L_24B3B5:
        INC2POSE                                ; 24B3B5/90
        SETYVEL     #$FFC0, WAIT #4             ; 24B3B6/C4C0FF
L_24B3B9:
    ENDLOOP                                 ; 24B3B9/02
L_24B3BA:
    ONTICK      $24B564                     ; 24B3BA/0864B524
    ZEROVEL                                 ; 24B3BE/38
    ASMCALL     $883F                       ; 24B3BF/D03F88 // Set pose to 0 (1 if MSB of VAR2 is set)
    ADDPOSE     #4                          ; 24B3C2/6004
    WAIT        #29                         ; 24B3C4/061D
L_24B3C6:
    ONTICK      $24B48B                     ; 24B3C6/088BB424
    WAIT        #1                          ; 24B3CA/0601
L_24B3CC:
    ASMCALL     $B5E8                       ; 24B3CC/D0E8B5
    TABLEJMP    #5                          ; 24B3CF/0F05
    .word       L_24B3DB                    ; 24B3D1/DBB3
    .word       L_24B3F5                    ; 24B3D3/F5B3
    .word       L_24B410                    ; 24B3D5/10B4
    .word       L_24B423                    ; 24B3D7/23B4
    .word       L_24B3BA                    ; 24B3D9/BAB3
L_24B3DB:
    MOV         VAR6,#$00                   ; 24B3DB/0D0600
    ONTICK      $24B48B                     ; 24B3DE/088BB424
    ASMCALL     $883F                       ; 24B3E2/D03F88 // Set pose to 0 (1 if MSB of VAR2 is set)
    ADDPOSE     #4                          ; 24B3E5/6004
    SETYVEL     #$FF00, WAIT #10            ; 24B3E7/CA00FF
L_24B3EA:
    SETYVEL     #$FF80, WAIT #6             ; 24B3EA/C680FF
L_24B3ED:
    SETYVEL     #$FFC0, WAIT #6             ; 24B3ED/C6C0FF
L_24B3F0:
    ZEROVEL                                 ; 24B3F0/38
    INC2POSE    WAIT #6                     ; 24B3F1/96
L_24B3F2:
    A_JMP       L_24B3CC                    ; 24B3F2/17CCB3

L_24B3F5:
    MOV         VAR6,#$01                   ; 24B3F5/0D0601
    ONTICK      $24B48B                     ; 24B3F8/088BB424
    ASMCALL     $883F                       ; 24B3FC/D03F88 // Set pose to 0 (1 if MSB of VAR2 is set)
    ADDPOSE     #6                          ; 24B3FF/6006
    SETYVEL     #$0100, WAIT #10            ; 24B401/CA0001
L_24B404:
    SETYVEL     #$0080, WAIT #6             ; 24B404/C68000
L_24B407:
    SETYVEL     #$0040, WAIT #6             ; 24B407/C64000
L_24B40A:
    ZEROVEL                                 ; 24B40A/38
    WAIT        #6                          ; 24B40B/0606
L_24B40D:
    A_JMP       L_24B3CC                    ; 24B40D/17CCB3

L_24B410:
    ONTICK      $24B57A                     ; 24B410/087AB524
    ASMCALL     $883F                       ; 24B414/D03F88 // Set pose to 0 (1 if MSB of VAR2 is set)
    ADDPOSE     #6                          ; 24B417/6006
    ADD         VAR1,#-128                  ; 24B419/13010280
    ASMCALL     $E26A                       ; 24B41D/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 24B420/8000
    HALT                                    ; 24B422/09

L_24B423:
    ASMCALL     $868D                       ; 24B423/D08D86
    ASMCALL     $B61C                       ; 24B426/D01CB6
    JEQ         L_24B3BA                    ; 24B429/0ABAB3
    ONTICK      $24B564                     ; 24B42C/0864B524
    ZEROVEL                                 ; 24B430/38
    LOOP        #8                          ; 24B431/0108
        ASMCALL     $E26A, WAIT #2              ; 24B433/D26AE2 // Set X velocity (respect facing)
        .word       $FF00                       ; 24B436/00FF
L_24B438:
        ASMCALL     $E26A, WAIT #2              ; 24B438/D26AE2 // Set X velocity (respect facing)
        .word       $0100                       ; 24B43B/0001
L_24B43D:
    ENDLOOP                                 ; 24B43D/02
    ASMCALL     $E26A                       ; 24B43E/D06AE2 // Set X velocity (respect facing)
    .word       $0200                       ; 24B441/0002
    ASMCALL     $883F                       ; 24B443/D03F88 // Set pose to 0 (1 if MSB of VAR2 is set)
    ASMCALL     $B627                       ; 24B446/D027B6
    ASMCALL     $DE4B                       ; 24B449/D04BDE // Play sound effect
    .byte       $0D                         ; 24B44C/0D
    ONTICK      $24B5B5                     ; 24B44D/08B5B524
    ADDPOSE     #4, WAIT #10                ; 24B451/6A04
L_24B453:
    INC2POSE                                ; 24B453/90
    ASMCALL     $84DB                       ; 24B454/D0DB84 // Flip sprite horizontally (actually toggle LSB of pose)
    HALT                                    ; 24B457/09

; CODE OR DATA -- $24B458 .. $24B711
incbinRange "../split/prg/bank24.bin", $1458, $1711

L_24B711:
    SETBANK     #$22                        ; 24B711/2822
    ONPOSITION  $D9BB                       ; 24B713/21BBD9
    SPRITEMAP   $308B82                     ; 24B716/1A828B30
    ASMCALL     $84AD                       ; 24B71A/D0AD84 // Copy $0784[self.parent] to $0784[self]
    MOV         VAR0,#$01                   ; 24B71D/0D0001
    ASMCALL     $B748                       ; 24B720/D048B7 // Move object 6 pixels forward
    ONTICK      $24B73E                     ; 24B723/083EB724
    SETPOSE     #$00                        ; 24B727/5000
    ASMCALL     $E26A                       ; 24B729/D06AE2 // Set X velocity (respect facing)
    .word       $0180                       ; 24B72C/8001
    SETYVEL     #$FD00                      ; 24B72E/C000FD
    HALT                                    ; 24B731/09

; CODE OR DATA -- $24B732 .. $24B765
incbinRange "../split/prg/bank24.bin", $1732, $1765

Script29_HotHead:
    SETBANK     #$22                        ; 24B765/2822
    ONPOSITION  $D9BB                       ; 24B767/21BBD9
    SPRITEMAP   $30850C                     ; 24B76A/1A0C8530
    ASMCALL     $84A4                       ; 24B76E/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 24B771/0D0002
    ASMCALL     $8851                       ; 24B774/D05188 // Face towards Kirby
    ASMCALL     $DFDF                       ; 24B777/D0DFDF // Unknown ASM $DFDF
    .byte       $04                         ; 24B77A/04
    JEQ         L_24B79C                    ; 24B77B/0A9CB7
L_24B77E:
    MOV         VAR2,#$5A                   ; 24B77E/0D025A
    MOV         VAR3,#$00                   ; 24B781/0D0300
L_24B784:
    ASMCALL     $E26A                       ; 24B784/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 24B787/8000
    ONTICK      $24B809                     ; 24B789/0809B824
L_24B78D:
    ASMCALL     $8829, WAIT #13             ; 24B78D/DD2988 // Set pose to 0 (respect facing)
L_24B790:
    INC2POSE    WAIT #13                    ; 24B790/9D
L_24B791:
    A_JMP       L_24B78D                    ; 24B791/178DB7

L_24B794:
    ZEROVEL                                 ; 24B794/38
    ONTICK      $24B862                     ; 24B795/0862B824
    A_JMP       L_24B78D                    ; 24B799/178DB7

L_24B79C:
    ASMCALL     $8851                       ; 24B79C/D05188 // Face towards Kirby
    ZEROVEL                                 ; 24B79F/38
    ONTICK      $24B88C                     ; 24B7A0/088CB824
    LOOP        #3                          ; 24B7A4/0103
        ASMCALL     $8C53, WAIT #4              ; 24B7A6/D4538C // Set pose (respect facing)
        .byte       $04                         ; 24B7A9/04
L_24B7AA:
        INC2POSE    WAIT #4                     ; 24B7AA/94
L_24B7AB:
    ENDLOOP                                 ; 24B7AB/02
    ASMCALL     $B8C3                       ; 24B7AC/D0C3B8
    TABLEJMP    #3                          ; 24B7AF/0F03
    .word       L_24B7B7                    ; 24B7B1/B7B7
    .word       L_24B7EB                    ; 24B7B3/EBB7
    .word       L_24B77E                    ; 24B7B5/7EB7
L_24B7B7:
    LOOP        #6                          ; 24B7B7/0106
        MOV         VAR3,#$00                   ; 24B7B9/0D0300
        LOOP        #5                          ; 24B7BC/0105
            ASMCALL     $DED0                       ; 24B7BE/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
            .byte       $09                         ; 24B7C1/09
            .byte       $12                         ; 24B7C2/12
            .byte       $56                         ; 24B7C3/56
            .byte       $00                         ; 24B7C4/00
            .byte       $00                         ; 24B7C5/00
            .byte       $00                         ; 24B7C6/00
            .byte       $00                         ; 24B7C7/00
            .byte       $00                         ; 24B7C8/00
            ASMCALL     $E26A                       ; 24B7C9/D06AE2 // Set X velocity (respect facing)
            .word       $0200                       ; 24B7CC/0002
            ASMCALL     $8C53, WAIT #2              ; 24B7CE/D2538C // Set pose (respect facing)
            .byte       $08                         ; 24B7D1/08
L_24B7D2:
            ADD         VAR1,#-128                  ; 24B7D2/13010280
            ASMCALL     $E26A                       ; 24B7D6/D06AE2 // Set X velocity (respect facing)
            .word       $0200                       ; 24B7D9/0002
            ADD         VAR1,#-128                  ; 24B7DB/13010280
            INC2POSE    WAIT #2                     ; 24B7DF/92
L_24B7E0:
            ADD         VAR3,#1                     ; 24B7E0/13030201
        ENDLOOP                                 ; 24B7E4/02
    ENDLOOP                                 ; 24B7E5/02
    ZEROVEL                                 ; 24B7E6/38
    DEC2POSE    WAIT #15                    ; 24B7E7/AF
L_24B7E8:
    A_JMP       L_24B77E                    ; 24B7E8/177EB7

L_24B7EB:
    ASMCALL     $DED0                       ; 24B7EB/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 24B7EE/09
    .byte       $12                         ; 24B7EF/12
    .byte       $56                         ; 24B7F0/56
    .byte       $00                         ; 24B7F1/00
    .byte       $00                         ; 24B7F2/00
    .byte       $00                         ; 24B7F3/00
    .byte       $01                         ; 24B7F4/01
    .byte       $00                         ; 24B7F5/00
    LOOP        #6                          ; 24B7F6/0106
        ASMCALL     $8C53                       ; 24B7F8/D0538C // Set pose (respect facing)
        .byte       $08                         ; 24B7FB/08
        SETXVEL     #$0200, WAIT #2             ; 24B7FC/B20002
L_24B7FF:
        INC2POSE                                ; 24B7FF/90
        SETXVEL     #$FE00, WAIT #2             ; 24B800/B200FE
L_24B803:
    ENDLOOP                                 ; 24B803/02
    ZEROVEL                                 ; 24B804/38
    DEC2POSE    WAIT #15                    ; 24B805/AF
L_24B806:
    A_JMP       L_24B77E                    ; 24B806/177EB7

; CODE OR DATA -- $24B809 .. $24B8E7
incbinRange "../split/prg/bank24.bin", $1809, $18E7

L_24B8E7:
    ASMCALL     $DE4B                       ; 24B8E7/D04BDE // Play sound effect
    .byte       $1E                         ; 24B8EA/1E
    SETBANK     #$22                        ; 24B8EB/2822
    ONPOSITION  $D9BB                       ; 24B8ED/21BBD9
    SPRITEMAP   $308590                     ; 24B8F0/1A908530
    ASMCALL     $84AD                       ; 24B8F4/D0AD84 // Copy $0784[self.parent] to $0784[self]
    ASMCALL     $8829                       ; 24B8F7/D02988 // Set pose to 0 (respect facing)
    MOV         REG,VAR0                    ; 24B8FA/1E00
    JNE         L_24B912                    ; 24B8FC/0B12B9
    SETZPOS     #$00FF                      ; 24B8FF/3AFF00
    ONTICK      $24B939                     ; 24B902/0839B924
    MOV         VAR0,#$02                   ; 24B906/0D0002
    ASMCALL     $B983                       ; 24B909/D083B9
    ASMCALL     $E23C, WAIT #8              ; 24B90C/D83CE2 // Unknown ASM $E23C
    .word       $0400                       ; 24B90F/0004
L_24B911:
    END                                     ; 24B911/00

L_24B912:
    SETZPOS     #$00FF                      ; 24B912/3AFF00
    ONTICK      $24B954                     ; 24B915/0854B924
    MOV         VAR0,#$02                   ; 24B919/0D0002
    ASMCALL     $B9CA                       ; 24B91C/D0CAB9
    ASMCALL     $E23C                       ; 24B91F/D03CE2 // Unknown ASM $E23C
    .word       $0300                       ; 24B922/0003
    MOV         VAR2,#$00                   ; 24B924/0D0200
L_24B927:
    ASMCALL     $DED0, WAIT #4              ; 24B927/D4D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 24B92A/09
    .byte       $12                         ; 24B92B/12
    .byte       $54                         ; 24B92C/54
    .byte       $00                         ; 24B92D/00
    .byte       $00                         ; 24B92E/00
    .byte       $00                         ; 24B92F/00
    .byte       $00                         ; 24B930/00
    .byte       $80                         ; 24B931/80
L_24B932:
    ADD         VAR2,#1                     ; 24B932/13020201
    A_JMP       L_24B927                    ; 24B936/1727B9

; CODE OR DATA -- $24B939 .. $24B9FC
incbinRange "../split/prg/bank24.bin", $1939, $19FC

L_24B9FC:
    SETBANK     #$22                        ; 24B9FC/2822
    ONDRAW      $DA89                       ; 24B9FE/2089DA
    MOV         REG,VAR0                    ; 24BA01/1E00
    TABLEJMP    #15                         ; 24BA03/0F0F
    .word       $8100                       ; 24BA05/0081
    .word       $8144                       ; 24BA07/4481
    .word       $818B                       ; 24BA09/8B81
    .word       $81D4                       ; 24BA0B/D481
    .word       $82DC                       ; 24BA0D/DC82
    .word       $8103                       ; 24BA0F/0381
    .word       $8147                       ; 24BA11/4781
    .word       $8192                       ; 24BA13/9281
    .word       $81D7                       ; 24BA15/D781
    .word       $82DF                       ; 24BA17/DF82
    .word       $8180                       ; 24BA19/8081
    .word       $8172                       ; 24BA1B/7281
    .word       $8230                       ; 24BA1D/3082
    .word       $8162                       ; 24BA1F/6281
    .word       $81DB                       ; 24BA21/DB81
    ASMCALL_l   $219952                     ; 24BA23/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 24BA27/00
    .byte       $00                         ; 24BA28/00
    .byte       $05                         ; 24BA29/05
    .byte       $00                         ; 24BA2A/00
    ONTICK      $24BA43                     ; 24BA2B/0843BA24
    ONPOSITION  $D9BB                       ; 24BA2F/21BBD9
    ZEROVEL                                 ; 24BA32/38
    SETYVEL     #$0040                      ; 24BA33/C04000
    MOV         VAR0,#$01                   ; 24BA36/0D0001
    HALT                                    ; 24BA39/09

L_24BA3A:
    ZEROVEL                                 ; 24BA3A/38
    MOV         VAR3,#$1E                   ; 24BA3B/0D031E
    ONTICK      $24BA65                     ; 24BA3E/0865BA24
    HALT                                    ; 24BA42/09

; CODE OR DATA -- $24BA43 .. $24BA80
incbinRange "../split/prg/bank24.bin", $1A43, $1A80

L_24BA80:
    SETBANK     #$22                        ; 24BA80/2822
    MOV         REG,VAR0                    ; 24BA82/1E00
    TABLEJMP    #3                          ; 24BA84/0F03
    .word       L_24BABB                    ; 24BA86/BBBA
    .word       L_24BB11                    ; 24BA88/11BB
    .word       L_24BB29                    ; 24BA8A/29BB
    DEC2POSE    WAIT #13                    ; 24BA8C/AD

incbinRange "../split/prg/bank24.bin", $1a8d, $1Abb

L_24BABB:
    SPRITEMAP   $308B7A                     ; 24BABB/1A7A8B30
    SETZPOS     #$0080                      ; 24BABF/3A8000
    ASMCALL     $BAC8, WAIT #2              ; 24BAC2/D2C8BA
L_24BAC5:
    SETPOSE     #$07, WAIT #2               ; 24BAC5/5207
L_24BAC7:
    END                                     ; 24BAC7/00

; CODE OR DATA -- $24BAC8 .. $24BB11
incbinRange "../split/prg/bank24.bin", $1AC8, $1B11

L_24BB11:
    SPRITEMAP   $308B7A                     ; 24BB11/1A7A8B30
    SETZPOS     #$0080                      ; 24BB15/3A8000
    ASMCALL     $BB1E, WAIT #2              ; 24BB18/D21EBB
L_24BB1B:
    SETPOSE     #$07, WAIT #2               ; 24BB1B/5207
L_24BB1D:
    END                                     ; 24BB1D/00

; CODE OR DATA -- $24BB1E .. $24BB29
incbinRange "../split/prg/bank24.bin", $1B1E, $1B29

L_24BB29:
    ASMCALL_l   $219952                     ; 24BB29/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 24BB2D/00
    .byte       $00                         ; 24BB2E/00
    .byte       $05                         ; 24BB2F/05
    .byte       $00                         ; 24BB30/00
    END                                     ; 24BB31/00

; CODE OR DATA -- $24BB32 .. $25A000
incbinRange "../split/prg/bank24.bin", $1B32, $2000