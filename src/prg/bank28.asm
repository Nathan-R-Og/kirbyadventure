.segment "PRG28": absolute
L_28A000:
    SETBANK     #$22                        ; 28A000/2822
    ONPOSITION  $D97D                       ; 28A002/217DD9
    SPRITEMAP   $3284A2                     ; 28A005/1AA28432
    ASMCALL     $A0FA                       ; 28A009/D0FAA0
    MOV         VAR2,#$02                   ; 28A00C/0D0202
    MOV         VAR5,#$00                   ; 28A00F/0D0500
    MOV         VAR6,#$04                   ; 28A012/0D0604
    SETPOSE     #$00                        ; 28A015/5000
    SETXVEL     #$FF80                      ; 28A017/B080FF
    SETYVEL     #$FA00                      ; 28A01A/C000FA
    MOV         VAR3,#$01                   ; 28A01D/0D0301
    ONTICK      $28A089                     ; 28A020/0889A028
L_28A024:
    WAIT        #1                          ; 28A024/0601
L_28A026:
    MOV         REG,VAR3                    ; 28A026/1E03
    JNE         L_28A024                    ; 28A028/0B24A0
    ZEROVEL                                 ; 28A02B/38
    ENDTICK                                 ; 28A02C/0E
    SETPOSE     #$FF, WAIT #10              ; 28A02D/5AFF
L_28A02F:
    SETPOSE     #$00                        ; 28A02F/5000
    ASMCALL     $A074                       ; 28A031/D074A0
    ONPOSITION  $D9BB                       ; 28A034/21BBD9
    MOV         VAR3,#$15                   ; 28A037/0D0315
    ONTICK      $28A089                     ; 28A03A/0889A028
L_28A03E:
    WAIT        #1                          ; 28A03E/0601
L_28A040:
    MOV         REG,VAR3                    ; 28A040/1E03
    JNE         L_28A03E                    ; 28A042/0B3EA0
    SETYVEL     #$FE00                      ; 28A045/C000FE
    MOV         VAR3,#$15                   ; 28A048/0D0315
L_28A04B:
    WAIT        #1                          ; 28A04B/0601
    MOV         REG,VAR3                    ; 28A04D/1E03
    JNE         L_28A04B                    ; 28A04F/0B4BA0
    SETYVEL     #$FF00                      ; 28A052/C000FF
    MOV         VAR3,#$15                   ; 28A055/0D0315
L_28A058:
    WAIT        #1                          ; 28A058/0601
    MOV         REG,VAR3                    ; 28A05A/1E03
    JNE         L_28A058                    ; 28A05C/0B58A0
    SETYVEL     #$FF80                      ; 28A05F/C080FF
    MOV         VAR3,#$15                   ; 28A062/0D0315
L_28A065:
    WAIT        #1                          ; 28A065/0601
    MOV         REG,VAR3                    ; 28A067/1E03
    JNE         L_28A065                    ; 28A069/0B65A0
    ZEROVEL                                 ; 28A06C/38
    SETPOSE     #$03                        ; 28A06D/5003
    ONTICK      $28A0E9                     ; 28A06F/08E9A028
    HALT                                    ; 28A073/09

; CODE OR DATA -- $28A074 .. $28A102
incbinRange "../split/prg/bank28.bin", $0074, $0102

Script26_MetaKnightCandy:
    MOV         $0043,#$A2                  ; 28A102/114300A2
    SETBANK     #$22                        ; 28A106/2822
    SETZPOS     #$00C1                      ; 28A108/3AC100
    ONPOSITION  $D97D                       ; 28A10B/217DD9
    SPRITEMAP   $328422                     ; 28A10E/1A228432
    ASMCALL     $A150                       ; 28A112/D050A1
    SETXVEL     #$0140                      ; 28A115/B04001
    SETYVEL     #$FB00                      ; 28A118/C000FB
    SETPOSE     #$00                        ; 28A11B/5000
    MOV         VAR3,#$30                   ; 28A11D/0D0330
    ONTICK      $28A175                     ; 28A120/0875A128
L_28A124:
    WAIT        #1                          ; 28A124/0601
L_28A126:
    MOV         REG,VAR3                    ; 28A126/1E03
    JNE         L_28A124                    ; 28A128/0B24A1
    ZEROVEL                                 ; 28A12B/38
    ENDTICK                                 ; 28A12C/0E
    WAIT        #4                          ; 28A12D/0604
L_28A12F:
    INCPOSE     WAIT #3                     ; 28A12F/73
L_28A130:
    INCPOSE     WAIT #3                     ; 28A130/73
L_28A131:
    INCPOSE                                 ; 28A131/70
    WAIT        #20                         ; 28A132/0614
L_28A134:
    INCPOSE     WAIT #2                     ; 28A134/72
L_28A135:
    ASMCALL     $DED0                       ; 28A135/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28A138/09
    .byte       $12                         ; 28A139/12
    .byte       $27                         ; 28A13A/27
    .byte       $FA                         ; 28A13B/FA
    .byte       $08                         ; 28A13C/08
    .byte       $00                         ; 28A13D/00
    .byte       $00                         ; 28A13E/00
    .byte       $00                         ; 28A13F/00
    INCPOSE                                 ; 28A140/70
    WAIT        #21                         ; 28A141/0615
L_28A143:
    INCPOSE     WAIT #2                     ; 28A143/72
L_28A144:
    INCPOSE                                 ; 28A144/70
    WAIT        #32                         ; 28A145/0620
L_28A147:
    ONPOSITION  $D9BB                       ; 28A147/21BBD9
L_28A14A:
    ASMCALL     $851C, WAIT #1              ; 28A14A/D11C85 // Apply gravity constant 0x15, with terminal velocity 3.0 px/f
L_28A14D:
    A_JMP       L_28A14A                    ; 28A14D/174AA1

; CODE OR DATA -- $28A150 .. $28A1D8
incbinRange "../split/prg/bank28.bin", $0150, $01D8

L_28A1D8:
    SETBANK     #$22                        ; 28A1D8/2822
    ONPOSITION  $D97D                       ; 28A1DA/217DD9
    ONTICK      $28A1E2                     ; 28A1DD/08E2A128
L_28A1E1:
    HALT                                    ; 28A1E1/09

; CODE OR DATA -- $28A1E2 .. $28A26E
incbinRange "../split/prg/bank28.bin", $01E2, $026E

L_28A26E:
    SPRITEMAP   $328934                     ; 28A26E/1A348932
    ONPOSITION  $D9BB                       ; 28A272/21BBD9
    MOV         VAR0,#$02                   ; 28A275/0D0002
    MOV         VAR5,#$00                   ; 28A278/0D0500
    ASMCALL     $8C53                       ; 28A27B/D0538C // Set pose (respect facing)
    .byte       $06                         ; 28A27E/06
    MOV         REG,VAR1                    ; 28A27F/1E01
    A_AND       REG,#$80                    ; 28A281/250080
    JEQ         L_28A28A                    ; 28A284/0A8AA2
    ADDXPOS     #-36                        ; 28A287/2CDCFF
L_28A28A:
    ONTICK      $28A2C1                     ; 28A28A/08C1A228
    ASMCALL     $9340                       ; 28A28E/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0180                       ; 28A291/8001
    .word       $FE20                       ; 28A293/20FE
    MOV         VAR3,#$15                   ; 28A295/0D0315
L_28A298:
    WAIT        #1                          ; 28A298/0601
L_28A29A:
    MOV         REG,VAR5                    ; 28A29A/1E05
    JNE         L_28A2BE                    ; 28A29C/0BBEA2
    MOV         REG,VAR3                    ; 28A29F/1E03
    JNE         L_28A298                    ; 28A2A1/0B98A2
    ASMCALL     $DE4B                       ; 28A2A4/D04BDE // Play sound effect
    .byte       $0E                         ; 28A2A7/0E
    ASMCALL     $9340                       ; 28A2A8/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $00C0                       ; 28A2AB/C000
    .word       $FEE0                       ; 28A2AD/E0FE
    MOV         VAR3,#$15                   ; 28A2AF/0D0315
L_28A2B2:
    WAIT        #1                          ; 28A2B2/0601
    MOV         REG,VAR5                    ; 28A2B4/1E05
    JNE         L_28A2BE                    ; 28A2B6/0BBEA2
    MOV         REG,VAR3                    ; 28A2B9/1E03
    JNE         L_28A2B2                    ; 28A2BB/0BB2A2
L_28A2BE:
    A_JMP       $8180                       ; 28A2BE/178081

; CODE OR DATA -- $28A2C1 .. $28A2EE
incbinRange "../split/prg/bank28.bin", $02C1, $02EE

Script4C_Bonkers:
    SETBANK     #$22                        ; 28A2EE/2822
    MOV         REG,VAR0                    ; 28A2F0/1E00
    JNE         L_28A26E                    ; 28A2F2/0B6EA2
    SPRITEMAP   $328000                     ; 28A2F5/1A008032
    ONPOSITION  $DA09                       ; 28A2F9/2109DA
    ASMCALL     $84A4                       ; 28A2FC/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$1B                   ; 28A2FF/0D001B
    ASMCALL     $8851                       ; 28A302/D05188 // Face towards Kirby
    ASMCALL     $DED0                       ; 28A305/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28A308/09
    .byte       $12                         ; 28A309/12
    .byte       $5F                         ; 28A30A/5F
    .byte       $00                         ; 28A30B/00
    .byte       $00                         ; 28A30C/00
    .byte       $00                         ; 28A30D/00
    .byte       $00                         ; 28A30E/00
    .byte       $00                         ; 28A30F/00
    MOV         VAR2,#$04                   ; 28A310/0D0204
    MOV         VAR5,#$02                   ; 28A313/0D0502
    MOV         VAR8,#$00                   ; 28A316/0D0800
    MOV         VAR3,#$00                   ; 28A319/0D0300
    MOV         VAR9,#$01                   ; 28A31C/0D0901
L_28A31F:
    MOV         REG,VAR9                    ; 28A31F/1E09
    TABLEJMP    #11                         ; 28A321/0F0B
    .word       L_28A6AF                    ; 28A323/AFA6
    .word       L_28A438                    ; 28A325/38A4
    .word       L_28A779                    ; 28A327/79A7
    .word       L_28A72F                    ; 28A329/2FA7
    .word       L_28A63F                    ; 28A32B/3FA6
    .word       L_28A4F6                    ; 28A32D/F6A4
    .word       L_28A5BF                    ; 28A32F/BFA5
    .word       L_28A54B                    ; 28A331/4BA5
    .word       L_28A58D                    ; 28A333/8DA5
    .word       L_28A467                    ; 28A335/67A4
    .word       L_28A4D2                    ; 28A337/D2A4

incbinRange "../split/prg/bank28.bin", $339, $438

L_28A438:
        ASMCALL     $A43E                       ; 28A438/D03EA4
        A_JMP       L_28A31F                    ; 28A43B/171FA3

; CODE OR DATA -- $28A43E .. $28A467
incbinRange "../split/prg/bank28.bin", $043E, $0467

L_28A467:
        ASMCALL     $859F                       ; 28A467/D09F85 // Unknown ASM $22859F
        .word       $0018                       ; 28A46A/1800
        ASMCALL     $8FC6                       ; 28A46C/D0C68F // Unknown ASM $228FC6
        .byte       $0C                         ; 28A46F/0C
        ONTICK      $28A339                     ; 28A470/0839A328
        ASMCALL     $8851                       ; 28A474/D05188 // Face towards Kirby
        ASMCALL     $DE4B                       ; 28A477/D04BDE // Play sound effect
        .byte       $40                         ; 28A47A/40
        MOV         VAR0,#$00                   ; 28A47B/0D0000
        MOV         VAR8,#$20                   ; 28A47E/0D0820
        ASMCALL     $8829                       ; 28A481/D02988 // Set pose to 0 (respect facing)
        ASMCALL     $9340                       ; 28A484/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
        .word       $FF00                       ; 28A487/00FF
        .word       $FD00                       ; 28A489/00FD
        MOV         VAR3,#$1A                   ; 28A48B/0D031A
L_28A48E:
        ASMCALL     $8E74, WAIT #1              ; 28A48E/D1748E // Check if Y velocity is negative
L_28A491:
        JNE         L_28A48E                    ; 28A491/0B8EA4
        MOV         VAR8,#$00                   ; 28A494/0D0800
        A_JSR       L_28A76A                    ; 28A497/186AA7
        ASMCALL     $DED0                       ; 28A49A/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $09                         ; 28A49D/09
        .byte       $12                         ; 28A49E/12
        .byte       $08                         ; 28A49F/08
        .byte       $00                         ; 28A4A0/00
        .byte       $0A                         ; 28A4A1/0A
        .byte       $00                         ; 28A4A2/00
        .byte       $01                         ; 28A4A3/01
        .byte       $00                         ; 28A4A4/00
        ASMCALL_l   $22859F                     ; 28A4A5/269F8522 // Unknown ASM $22859F
        .word       $000C                       ; 28A4A9/0C00
        ASMCALL     $9591                       ; 28A4AB/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
        .byte       $01                         ; 28A4AE/01
        .byte       $00                         ; 28A4AF/00
        .byte       $08                         ; 28A4B0/08
        .byte       $08                         ; 28A4B1/08
        .byte       $09                         ; 28A4B2/09
        ASMCALL     $E26A                       ; 28A4B3/D06AE2 // Set X velocity (respect facing)
        .word       $FF80                       ; 28A4B6/80FF
        WAIT        #30                         ; 28A4B8/061E
L_28A4BA:
        ZEROVEL                                 ; 28A4BA/38
        WAIT        #170                        ; 28A4BB/06AA
        ASMCALL     $859F                       ; 28A4BD/D09F85 // Unknown ASM $22859F
        .word       $0018                       ; 28A4C0/1800
        LOOP        #10                         ; 28A4C2/010A
            SETYVEL     #$FF00, WAIT #2             ; 28A4C4/C200FF
            SETYVEL     #$0100, WAIT #2             ; 28A4C7/C20001
        ENDLOOP                                 ; 28A4CA/02
        ONDRAW      $DA89                       ; 28A4CB/2089DA
        ZEROVEL                                 ; 28A4CE/38
        A_JMP       $8162                       ; 28A4CF/176281

L_28A4D2:
        ONTICK      $28A339                     ; 28A4D2/0839A328
        ASMCALL     $859F                       ; 28A4D6/D09F85 // Unknown ASM $22859F
        .word       $0015                       ; 28A4D9/1500
        ASMCALL     $9340                       ; 28A4DB/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
        .word       $FF00                       ; 28A4DE/00FF
        .word       $FD00                       ; 28A4E0/00FD
        MOV         VAR3,#$25                   ; 28A4E2/0D0325
        A_JSR       L_28A767                    ; 28A4E5/1867A7
        WAIT        #16                         ; 28A4E8/0610
        LOOP        #10                         ; 28A4EA/010A
            SETYVEL     #$FF00, WAIT #2             ; 28A4EC/C200FF
            SETYVEL     #$0100, WAIT #2             ; 28A4EF/C20001
        ENDLOOP                                 ; 28A4F2/02
        A_JMP       L_28A438                    ; 28A4F3/1738A4

L_28A4F6:
        ONTICK      $28A339                     ; 28A4F6/0839A328
        ZEROVEL                                 ; 28A4FA/38
        ASMCALL     $8851                       ; 28A4FB/D05188 // Face towards Kirby
        ASMCALL     $A538                       ; 28A4FE/D038A5
        JEQ         L_28A51A                    ; 28A501/0A1AA5
        ASMCALL     $DE4B                       ; 28A504/D04BDE // Play sound effect
        .byte       $17                         ; 28A507/17
        ASMCALL     $8C53                       ; 28A508/D0538C // Set pose (respect facing)
        .byte       $18                         ; 28A50B/18
        MOV         VAR3,#$20                   ; 28A50C/0D0320
        SETYVEL     #$FE00                      ; 28A50F/C000FE
        ASMCALL     $E26A                       ; 28A512/D06AE2 // Set X velocity (respect facing)
        .word       $FF00                       ; 28A515/00FF
        A_JSR       L_28A76A                    ; 28A517/186AA7
L_28A51A:
        ASMCALL     $8C53                       ; 28A51A/D0538C // Set pose (respect facing)
        .byte       $1A                         ; 28A51D/1A
        LOOP        #4                          ; 28A51E/0104
            DEC2POSE    WAIT #10                    ; 28A520/AA
L_28A521:
            INC2POSE    WAIT #6                     ; 28A521/96
L_28A522:
        ENDLOOP                                 ; 28A522/02
        ASMCALL     $DED0                       ; 28A523/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $09                         ; 28A526/09
        .byte       $12                         ; 28A527/12
        .byte       $4C                         ; 28A528/4C
        .byte       $12                         ; 28A529/12
        .byte       $08                         ; 28A52A/08
        .byte       $00                         ; 28A52B/00
        .byte       $01                         ; 28A52C/01
        .byte       $00                         ; 28A52D/00
        INC2POSE                                ; 28A52E/90
        WAIT        #48                         ; 28A52F/0630
L_28A531:
        ADDPOSE     #-22, WAIT #4               ; 28A531/64EA
L_28A533:
        DEC2POSE    WAIT #4                     ; 28A533/A4
L_28A534:
        DEC2POSE    WAIT #4                     ; 28A534/A4
L_28A535:
        A_JMP       L_28A438                    ; 28A535/1738A4

; CODE OR DATA -- $28A538 .. $28A54B
incbinRange "../split/prg/bank28.bin", $0538, $054B

L_28A54B:
        ONTICK      $28A339                     ; 28A54B/0839A328
        ZEROVEL                                 ; 28A54F/38
        ASMCALL     $8851                       ; 28A550/D05188 // Face towards Kirby
        ASMCALL     $8C53, WAIT #8              ; 28A553/D8538C // Set pose (respect facing)
        .byte       $08                         ; 28A556/08
        SETYVEL     #$FC00                      ; 28A557/C000FC
        MOV         VAR3,#$25                   ; 28A55A/0D0325
        ASMCALL     $DE4B                       ; 28A55D/D04BDE // Play sound effect
        .byte       $17                         ; 28A560/17
        INC2POSE                                ; 28A561/90
L_28A562:
        ASMCALL     $8E74, WAIT #1              ; 28A562/D1748E // Check if Y velocity is negative
        JNE         L_28A562                    ; 28A565/0B62A5
        ASMCALL     $8EFB                       ; 28A568/D0FB8E // Unknown ASM $228EFB
        .byte       $46                         ; 28A56B/46
        LOOP        #6                          ; 28A56C/0106
            INC2POSE    WAIT #1                     ; 28A56E/91
        ENDLOOP                                 ; 28A56F/02
        A_JSR       L_28A76A                    ; 28A570/186AA7
        ASMCALL     $A623                       ; 28A573/D023A6
        SETYVEL     #$0000, WAIT #8             ; 28A576/C80000
        SETYVEL     #$FDC0                      ; 28A579/C0C0FD
        MOV         VAR3,#$25                   ; 28A57C/0D0325
        WAIT        #15                         ; 28A57F/060F
        LOOP        #5                          ; 28A581/0105
            DEC2POSE    WAIT #1                     ; 28A583/A1
        ENDLOOP                                 ; 28A584/02
        A_JSR       L_28A76A                    ; 28A585/186AA7
        ADDPOSE     #-4, WAIT #15               ; 28A588/6FFC
        A_JMP       L_28A438                    ; 28A58A/1738A4

L_28A58D:
        ONTICK      $28A406                     ; 28A58D/0806A428
        ZEROVEL                                 ; 28A591/38
        ASMCALL     $8851                       ; 28A592/D05188 // Face towards Kirby
        ASMCALL     $8C53, WAIT #15             ; 28A595/DF538C // Set pose (respect facing)
        .byte       $0A                         ; 28A598/0A
L_28A599:
        ASMCALL     $8EFB                       ; 28A599/D0FB8E // Unknown ASM $228EFB
        .byte       $46                         ; 28A59C/46
        A_JSR       L_28A618                    ; 28A59D/1818A6
        ASMCALL     $A623                       ; 28A5A0/D023A6
        WAIT        #4                          ; 28A5A3/0604
L_28A5A5:
        LOOP        #6                          ; 28A5A5/0106
            DEC2POSE    WAIT #1                     ; 28A5A7/A1
L_28A5A8:
        ENDLOOP                                 ; 28A5A8/02
        LOOP        #2                          ; 28A5A9/0102
            WAIT        #4                          ; 28A5AB/0604
L_28A5AD:
            A_JSR       L_28A618                    ; 28A5AD/1818A6
            WAIT        #4                          ; 28A5B0/0604
L_28A5B2:
            LOOP        #6                          ; 28A5B2/0106
                DEC2POSE    WAIT #1                     ; 28A5B4/A1
L_28A5B5:
            ENDLOOP                                 ; 28A5B5/02
        ENDLOOP                                 ; 28A5B6/02
        WAIT        #15                         ; 28A5B7/060F
L_28A5B9:
        MOV         VAR5,#$02                   ; 28A5B9/0D0502
        A_JMP       L_28A438                    ; 28A5BC/1738A4

L_28A5BF:
        MOV         REG,VAR5                    ; 28A5BF/1E05
        JEQ         L_28A5F5                    ; 28A5C1/0AF5A5
        ASMCALL     $A601                       ; 28A5C4/D001A6
        JNE         L_28A5FB                    ; 28A5C7/0BFBA5
        ONTICK      $28A406                     ; 28A5CA/0806A428
        ZEROVEL                                 ; 28A5CE/38
        ASMCALL     $8851                       ; 28A5CF/D05188 // Face towards Kirby
        ASMCALL     $8C53, WAIT #15             ; 28A5D2/DF538C // Set pose (respect facing)
        .byte       $0A                         ; 28A5D5/0A
L_28A5D6:
        ASMCALL     $8EFB                       ; 28A5D6/D0FB8E // Unknown ASM $228EFB
        .byte       $46                         ; 28A5D9/46
        A_JSR       L_28A618                    ; 28A5DA/1818A6
        ASMCALL     $A623                       ; 28A5DD/D023A6
        WAIT        #32                         ; 28A5E0/0620
L_28A5E2:
        LOOP        #5                          ; 28A5E2/0105
            DEC2POSE    WAIT #1                     ; 28A5E4/A1
L_28A5E5:
        ENDLOOP                                 ; 28A5E5/02
        DEC2POSE    WAIT #15                    ; 28A5E6/AF
L_28A5E7:
        ASMCALL     $DFDF                       ; 28A5E7/D0DFDF // Unknown ASM $DFDF
        .byte       $04                         ; 28A5EA/04
        JEQ         L_28A5F5                    ; 28A5EB/0AF5A5
        ADD         VAR5,#-1                    ; 28A5EE/130502FF
        A_JMP       L_28A438                    ; 28A5F2/1738A4

L_28A5F5:
        MOV         VAR9,#$08                   ; 28A5F5/0D0908
        A_JMP       L_28A31F                    ; 28A5F8/171FA3

L_28A5FB:
        MOV         VAR9,#$07                   ; 28A5FB/0D0907
        A_JMP       L_28A31F                    ; 28A5FE/171FA3

; CODE OR DATA -- $28A601 .. $28A618
incbinRange "../split/prg/bank28.bin", $0601, $0618

L_28A618:
        LOOP        #6                          ; 28A618/0106
            INC2POSE    WAIT #1                     ; 28A61A/91
L_28A61B:
        ENDLOOP                                 ; 28A61B/02
        ASMCALL_l   $22859F                     ; 28A61C/269F8522 // Unknown ASM $22859F
        .word       $0015                       ; 28A620/1500
    A_RTS                                   ; 28A622/19

; CODE OR DATA -- $28A623 .. $28A63F
incbinRange "../split/prg/bank28.bin", $0623, $063F

L_28A63F:
    ONTICK      $28A406                     ; 28A63F/0806A428
    ZEROVEL                                 ; 28A643/38
    ASMCALL     $8851                       ; 28A644/D05188 // Face towards Kirby
    ASMCALL     $E26A                       ; 28A647/D06AE2 // Set X velocity (respect facing)
    .word       $FF80                       ; 28A64A/80FF
    ASMCALL     $8C53, WAIT #2              ; 28A64C/D2538C // Set pose (respect facing)
    .byte       $16                         ; 28A64F/16
L_28A650:
    LOOP        #5                          ; 28A650/0105
        DEC2POSE    WAIT #2                     ; 28A652/A2
L_28A653:
    ENDLOOP                                 ; 28A653/02
    DEC2POSE    WAIT #8                     ; 28A654/A8
L_28A655:
    INC2POSE    WAIT #8                     ; 28A655/98
L_28A656:
    ZEROVEL                                 ; 28A656/38
    WAIT        #20                         ; 28A657/0614
L_28A659:
    ASMCALL     $8B7F                       ; 28A659/D07F8B // Unknown ASM $228B7F
    .word       $A67B                       ; 28A65C/7BA6
    MOV         VAR6,#$03                   ; 28A65E/0D0603
    ASMCALL     $A67F                       ; 28A661/D07FA6
    LOOP        REG                         ; 28A664/22
        ASMCALL     $9591                       ; 28A665/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
        .byte       $01                         ; 28A668/01
        .byte       $80                         ; 28A669/80
        .byte       $01                         ; 28A66A/01
        .byte       $08                         ; 28A66B/08
        .byte       $0C                         ; 28A66C/0C
        ASMCALL     $A6D5                       ; 28A66D/D0D5A6
L_28A670:
        ASMCALL     $DE4B                       ; 28A670/D04BDE // Play sound effect
        .byte       $22                         ; 28A673/22
    ENDLOOP                                 ; 28A674/02
    MOV         VAR9,#$06                   ; 28A675/0D0906
    A_JMP       L_28A31F                    ; 28A678/171FA3

; CODE OR DATA -- $28A67B .. $28A6AF
incbinRange "../split/prg/bank28.bin", $067B, $06AF

L_28A6AF:
    ONTICK      $28A406                     ; 28A6AF/0806A428
    ZEROVEL                                 ; 28A6B3/38
    ASMCALL     $8851                       ; 28A6B4/D05188 // Face towards Kirby
    ASMCALL     $8B7F                       ; 28A6B7/D07F8B // Unknown ASM $228B7F
    .word       $A6D1                       ; 28A6BA/D1A6
    MOV         VAR6,#$03                   ; 28A6BC/0D0603
    ASMCALL     $DFDF                       ; 28A6BF/D0DFDF // Unknown ASM $DFDF
    .byte       $05                         ; 28A6C2/05
    ADD         REG,#4                      ; 28A6C3/250204
    LOOP        REG                         ; 28A6C6/22
        ASMCALL     $8851                       ; 28A6C7/D05188 // Face towards Kirby
        ASMCALL     $A6D5                       ; 28A6CA/D0D5A6
L_28A6CD:
    ENDLOOP                                 ; 28A6CD/02
    A_JMP       L_28A438                    ; 28A6CE/1738A4

; CODE OR DATA -- $28A6D1 .. $28A72F
incbinRange "../split/prg/bank28.bin", $06D1, $072F

L_28A72F:
    ONTICK      $28A339                     ; 28A72F/0839A328
    ZEROVEL                                 ; 28A733/38
    ASMCALL     $8851                       ; 28A734/D05188 // Face towards Kirby
    ASMCALL     $8C53, WAIT #8              ; 28A737/D8538C // Set pose (respect facing)
    .byte       $08                         ; 28A73A/08
L_28A73B:
    ASMCALL     $DE4B                       ; 28A73B/D04BDE // Play sound effect
    .byte       $17                         ; 28A73E/17
    ASMCALL     $DFDF                       ; 28A73F/D0DFDF // Unknown ASM $DFDF
    .byte       $02                         ; 28A742/02
    JNE         L_28A748                    ; 28A743/0B48A7
    MOV         REG,#$03                    ; 28A746/1B03
L_28A748:
    LOOP        REG                         ; 28A748/22
        MOV         VAR3,#$50                   ; 28A749/0D0350
        SETYVEL     #$FB00                      ; 28A74C/C000FB
        A_JSR       L_28A75D                    ; 28A74F/185DA7
        ASMCALL     $8851                       ; 28A752/D05188 // Face towards Kirby
    ENDLOOP                                 ; 28A755/02
    ADDPOSE     #8, WAIT #15                ; 28A756/6F08
L_28A758:
    ADDPOSE     #-4, WAIT #15               ; 28A758/6FFC
L_28A75A:
    A_JMP       L_28A438                    ; 28A75A/1738A4

L_28A75D:
    ASMCALL     $8C53                       ; 28A75D/D0538C // Set pose (respect facing)
    .byte       $02                         ; 28A760/02
    ASMCALL     $8E74, WAIT #1              ; 28A761/D1748E // Check if Y velocity is negative
L_28A764:
    JNE         L_28A75D                    ; 28A764/0B5DA7
L_28A767:
    ASMCALL     $8829                       ; 28A767/D02988 // Set pose to 0 (respect facing)
L_28A76A:
    WAIT        #1                          ; 28A76A/0601
L_28A76C:
    MOV         REG,VAR3                    ; 28A76C/1E03
    JNE         L_28A76A                    ; 28A76E/0B6AA7
    ZEROVEL                                 ; 28A771/38
    ASMCALL_l   $22859F                     ; 28A772/269F8522 // Unknown ASM $22859F
    .word       $0015                       ; 28A776/1500
    A_RTS                                   ; 28A778/19

L_28A779:
    ONTICK      $28A339                     ; 28A779/0839A328
    ZEROVEL                                 ; 28A77D/38
    ASMCALL     $8851                       ; 28A77E/D05188 // Face towards Kirby
    ASMCALL     $8C53, WAIT #8              ; 28A781/D8538C // Set pose (respect facing)
    .byte       $08                         ; 28A784/08
L_28A785:
    SETYVEL     #$FA00                      ; 28A785/C000FA
    ASMCALL     $8B7F                       ; 28A788/D07F8B // Unknown ASM $228B7F
    .word       $A79E                       ; 28A78B/9EA7
    MOV         VAR3,#$50                   ; 28A78D/0D0350
    ASMCALL     $DE4B                       ; 28A790/D04BDE // Play sound effect
    .byte       $17                         ; 28A793/17
    A_JSR       L_28A75D                    ; 28A794/185DA7
    ADDPOSE     #8, WAIT #15                ; 28A797/6F08
L_28A799:
    ADDPOSE     #-4, WAIT #15               ; 28A799/6FFC
L_28A79B:
    A_JMP       L_28A438                    ; 28A79B/1738A4

; CODE OR DATA -- $28A79E .. $28A7A2
incbinRange "../split/prg/bank28.bin", $079E, $07A2

Script25_Bomber:
    SETBANK     #$22                        ; 28A7A2/2822
    ONPOSITION  $D9BB                       ; 28A7A4/21BBD9
    SPRITEMAP   $379342                     ; 28A7A7/1A429337
    ASMCALL     $84A4                       ; 28A7AB/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$01                   ; 28A7AE/0D0001
    MOV         VAR6,#$00                   ; 28A7B1/0D0600
    ONTICK      $28A86B                     ; 28A7B4/086BA828
    ASMCALL     $8851                       ; 28A7B8/D05188 // Face towards Kirby
    SETYVEL     #$0000                      ; 28A7BB/C00000
    ASMCALL     $8CAA                       ; 28A7BE/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $004D                       ; 28A7C1/4D00
L_28A7C3:
    ASMCALL     $8829                       ; 28A7C3/D02988 // Set pose to 0 (respect facing)
    WAIT        #20                         ; 28A7C6/0614
L_28A7C8:
    INC2POSE                                ; 28A7C8/90
    WAIT        #20                         ; 28A7C9/0614
L_28A7CB:
    DEC2POSE                                ; 28A7CB/A0
    WAIT        #20                         ; 28A7CC/0614
L_28A7CE:
    ADDPOSE     #4                          ; 28A7CE/6004
    WAIT        #20                         ; 28A7D0/0614
L_28A7D2:
    A_JMP       L_28A7C3                    ; 28A7D2/17C3A7

L_28A7D5:
    ZEROVEL                                 ; 28A7D5/38
    MOV         REG,VAR6                    ; 28A7D6/1E06
    JEQ         L_28A7E4                    ; 28A7D8/0AE4A7
    ONTICK      $28A8D9                     ; 28A7DB/08D9A828
    LOOP        #11                         ; 28A7DF/010B
        DEC2POSE    WAIT #2                     ; 28A7E1/A2
L_28A7E2:
        INC2POSE    WAIT #2                     ; 28A7E2/92
L_28A7E3:
    ENDLOOP                                 ; 28A7E3/02
L_28A7E4:
    ONTICK      $28A8A9                     ; 28A7E4/08A9A828
    INC2POSE    WAIT #4                     ; 28A7E8/94
L_28A7E9:
    INC2POSE    WAIT #4                     ; 28A7E9/94
L_28A7EA:
    DEC2POSE    WAIT #4                     ; 28A7EA/A4
L_28A7EB:
    A_JMP       L_28A7E9                    ; 28A7EB/17E9A7

L_28A7EE:
    ENDTICK                                 ; 28A7EE/0E
    ZEROVEL                                 ; 28A7EF/38
    ASMCALL     $DFE5                       ; 28A7F0/D0E5DF // Freeze all objects
    ONPOSITION  $D97D                       ; 28A7F3/217DD9
    LOOP        #4                          ; 28A7F6/0104
        ADDPOSE     #-4, WAIT #2                ; 28A7F8/62FC
L_28A7FA:
        ADDPOSE     #4, WAIT #2                 ; 28A7FA/6204
L_28A7FC:
    ENDLOOP                                 ; 28A7FC/02
    ASMCALL_l   $219952                     ; 28A7FD/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 28A801/00
    .byte       $00                         ; 28A802/00
    .byte       $0C                         ; 28A803/0C
    .byte       $00                         ; 28A804/00
    ASMCALL     $DED0                       ; 28A805/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28A808/09
    .byte       $12                         ; 28A809/12
    .byte       $0D                         ; 28A80A/0D
    .byte       $00                         ; 28A80B/00
    .byte       $00                         ; 28A80C/00
    .byte       $00                         ; 28A80D/00
    .byte       $0B                         ; 28A80E/0B
    .byte       $00                         ; 28A80F/00
    ASMCALL_l   $2199EA                     ; 28A810/26EA9921 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 28A814/00
    .byte       $00                         ; 28A815/00
    .byte       $07                         ; 28A816/07
    .byte       $00                         ; 28A817/00
    ASMCALL     $DFFB                       ; 28A818/D0FBDF // Unfreeze all objects
    MOV         VAR2,#$18                   ; 28A81B/0D0218
    DECPOSE                                 ; 28A81E/80
    ONTICK      $28A82B                     ; 28A81F/082BA828
L_28A823:
    WAIT        #1                          ; 28A823/0601
L_28A825:
    MOV         REG,VAR2                    ; 28A825/1E02
    JNE         L_28A823                    ; 28A827/0B23A8
    END                                     ; 28A82A/00

; CODE OR DATA -- $28A82B .. $28A8EF
incbinRange "../split/prg/bank28.bin", $082B, $08EF

Script28_UFO:
    SETBANK     #$22                        ; 28A8EF/2822
    ONPOSITION  $D9BB                       ; 28A8F1/21BBD9
    SPRITEMAP   $3285A4                     ; 28A8F4/1AA48532
    MOV         VAR0,#$02                   ; 28A8F8/0D0002
    ASMCALL     $84A4                       ; 28A8FB/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR6,#$00                   ; 28A8FE/0D0600
    MOV         VAR5,#$00                   ; 28A901/0D0500
    ASMCALL     $8851                       ; 28A904/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 28A907/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $DE4B                       ; 28A90A/D04BDE // Play sound effect
    .byte       $24                         ; 28A90D/24
L_28A90E:
    ONTICK      $28AAE6                     ; 28A90E/08E6AA28
    ASMCALL     $8BED                       ; 28A912/D0ED8B // Unknown ASM $228BED
    .word       $A989                       ; 28A915/89A9
    JNE         L_28A921                    ; 28A917/0B21A9
    ASMCALL     $DE4B                       ; 28A91A/D04BDE // Play sound effect
    .byte       $23                         ; 28A91D/23
    A_JMP       L_28A953                    ; 28A91E/1753A9

L_28A921:
    LOOP        REG                         ; 28A921/22
        SETPOSE     #$00                        ; 28A922/5000
        SETXVEL     #$0080                      ; 28A924/B08000
        SETYVEL     #$0020, WAIT #15            ; 28A927/CF2000
L_28A92A:
        SETPOSE     #$03                        ; 28A92A/5003
        SETXVEL     #$0100                      ; 28A92C/B00001
        SETYVEL     #$0000, WAIT #8             ; 28A92F/C80000
L_28A932:
        SETPOSE     #$02                        ; 28A932/5002
        SETXVEL     #$0080                      ; 28A934/B08000
        SETYVEL     #$FFE0, WAIT #8             ; 28A937/C8E0FF
L_28A93A:
        SETPOSE     #$01                        ; 28A93A/5001
        SETXVEL     #$FF80                      ; 28A93C/B080FF
        SETYVEL     #$0020, WAIT #15            ; 28A93F/CF2000
L_28A942:
        SETPOSE     #$02                        ; 28A942/5002
        SETXVEL     #$FF00                      ; 28A944/B000FF
        SETYVEL     #$0000, WAIT #8             ; 28A947/C80000
L_28A94A:
        SETPOSE     #$03                        ; 28A94A/5003
        SETXVEL     #$FF80                      ; 28A94C/B080FF
        SETYVEL     #$FFE0, WAIT #8             ; 28A94F/C8E0FF
L_28A952:
    ENDLOOP                                 ; 28A952/02
L_28A953:
    ZEROVEL                                 ; 28A953/38
    ONTICK      $28A98C                     ; 28A954/088CA928
    HALT                                    ; 28A958/09

L_28A959:
    ONTICK      $28AA09                     ; 28A959/0809AA28
    ASMCALL     $E23C                       ; 28A95D/D03CE2 // Unknown ASM $E23C
    .word       $0400                       ; 28A960/0004
    HALT                                    ; 28A962/09

L_28A963:
    ONTICK      $28AAE6                     ; 28A963/08E6AA28
    ZEROVEL                                 ; 28A967/38
    ASMCALL     $8851                       ; 28A968/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 28A96B/D02988 // Set pose to 0 (respect facing)
    LOOP        #4                          ; 28A96E/0104
        WAIT        #2                          ; 28A970/0602
L_28A972:
        ADDPOSE     #4, WAIT #2                 ; 28A972/6204
L_28A974:
        ADDPOSE     #-4                         ; 28A974/60FC
    ENDLOOP                                 ; 28A976/02
    ASMCALL     $DED0                       ; 28A977/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28A97A/09
    .byte       $12                         ; 28A97B/12
    .byte       $53                         ; 28A97C/53
    .byte       $00                         ; 28A97D/00
    .byte       $00                         ; 28A97E/00
    .byte       $00                         ; 28A97F/00
    .byte       $01                         ; 28A980/01
    .byte       $00                         ; 28A981/00
    WAIT        #32                         ; 28A982/0620
L_28A984:
    ONTICK      $28A98C                     ; 28A984/088CA928
    HALT                                    ; 28A988/09

; CODE OR DATA -- $28A989 .. $28AAEE
incbinRange "../split/prg/bank28.bin", $0989, $0AEE

Script45_MrShineAndMrBright:
    MOV         $0043,#$A6                  ; 28AAEE/114300A6
    SETBANK     #$22                        ; 28AAF2/2822
    SPRITEMAP   $319218                     ; 28AAF4/1A189231
    ONPOSITION  $D97D                       ; 28AAF8/217DD9
    MOV         REG,VAR0                    ; 28AAFB/1E00
    TABLEJMP    #4                          ; 28AAFD/0F04
    .word       L_28AB07                    ; 28AAFF/07AB
    .word       L_28AB96                    ; 28AB01/96AB
    .word       L_28ADC0                    ; 28AB03/C0AD
    .word       L_28AB84                    ; 28AB05/84AB
L_28AB07:
    ASMCALL     $BB1D                       ; 28AB07/D01DBB
    ASMCALL     $DED0                       ; 28AB0A/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28AB0D/09
    .byte       $12                         ; 28AB0E/12
    .byte       $45                         ; 28AB0F/45
    .byte       $00                         ; 28AB10/00
    .byte       $00                         ; 28AB11/00
    .byte       $00                         ; 28AB12/00
    .byte       $01                         ; 28AB13/01
    .byte       $00                         ; 28AB14/00
    MOV         VAR2,REG                    ; 28AB15/1D02
    ASMCALL     $DED0                       ; 28AB17/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28AB1A/09
    .byte       $12                         ; 28AB1B/12
    .byte       $45                         ; 28AB1C/45
    .byte       $00                         ; 28AB1D/00
    .byte       $00                         ; 28AB1E/00
    .byte       $00                         ; 28AB1F/00
    .byte       $02                         ; 28AB20/02
    .byte       $00                         ; 28AB21/00
    MOV         VAR3,REG                    ; 28AB22/1D03
    ASMCALL     $AFFA                       ; 28AB24/D0FAAF
    MOV         REG,$6601                   ; 28AB27/1C0166
    JNE         L_28AB42                    ; 28AB2A/0B42AB
    LOOP        #2                          ; 28AB2D/0102
        MOV         VAR0,#$00                   ; 28AB2F/0D0000
        LOOP        #10                         ; 28AB32/010A
            ASMCALL     $DE4B                       ; 28AB34/D04BDE // Play sound effect
            .byte       $12                         ; 28AB37/12
            ADD         VAR0,#3                     ; 28AB38/13000203
            WAIT        #6                          ; 28AB3C/0606
L_28AB3E:
        ENDLOOP                                 ; 28AB3E/02
        WAIT        #30                         ; 28AB3F/061E
L_28AB41:
    ENDLOOP                                 ; 28AB41/02
L_28AB42:
    MOV         VAR0,#$1E                   ; 28AB42/0D001E
    WAIT        #50                         ; 28AB45/0632
L_28AB47:
    ASMCALL     $BAA0                       ; 28AB47/D0A0BA
    ONTICK      $28AF86                     ; 28AB4A/0886AF28
L_28AB4E:
    HALT                                    ; 28AB4E/09

L_28AB4F:
    MOV         VAR0,#$00                   ; 28AB4F/0D0000
    ASMCALL     $BB28                       ; 28AB52/D028BB
    ONTICK      $28BC40                     ; 28AB55/0840BC28
    HALT                                    ; 28AB59/09

L_28AB5A:
    ASMCALL     $BBB5                       ; 28AB5A/D0B5BB
    ONTICK      $28BC55                     ; 28AB5D/0855BC28
    HALT                                    ; 28AB61/09

L_28AB62:
    ASMCALL_l   $219952                     ; 28AB62/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 28AB66/00
    .byte       $00                         ; 28AB67/00
    .byte       $0C                         ; 28AB68/0C
    .byte       $00                         ; 28AB69/00
    A_JSR       $83C8                       ; 28AB6A/18C883
    ASMCALL_l   $219952                     ; 28AB6D/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 28AB71/00
    .byte       $00                         ; 28AB72/00
    .byte       $0C                         ; 28AB73/0C
    .byte       $00                         ; 28AB74/00
    A_JSR       $81DF                       ; 28AB75/18DF81
    ASMCALL     $DED0                       ; 28AB78/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28AB7B/09
    .byte       $12                         ; 28AB7C/12
    .byte       $06                         ; 28AB7D/06
    .byte       $00                         ; 28AB7E/00
    .byte       $00                         ; 28AB7F/00
    .byte       $00                         ; 28AB80/00
    .byte       $02                         ; 28AB81/02
    .byte       $00                         ; 28AB82/00
    END                                     ; 28AB83/00

L_28AB84:
    ASMCALL_l   $219952                     ; 28AB84/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 28AB88/00
    .byte       $00                         ; 28AB89/00
    .byte       $0C                         ; 28AB8A/0C
    .byte       $00                         ; 28AB8B/00
    A_JSR       $83CC                       ; 28AB8C/18CC83
    ASMCALL     $8C71                       ; 28AB8F/D0718C // Unknown ASM $228C71
    .byte       $0D                         ; 28AB92/0D
    .byte       $07                         ; 28AB93/07
    .byte       $00                         ; 28AB94/00
    END                                     ; 28AB95/00

L_28AB96:
    MOV         VAR0,#$1E                   ; 28AB96/0D001E
    MOV         REG,#$40                    ; 28AB99/1B40
    ASMCALL     $BA74                       ; 28AB9B/D074BA
    ONTICK      $28B020                     ; 28AB9E/0820B028
L_28ABA2:
    ASMCALL     $8C53, WAIT #8              ; 28ABA2/D8538C // Set pose (respect facing)
    .byte       $00                         ; 28ABA5/00
L_28ABA6:
    INC2POSE    WAIT #8                     ; 28ABA6/98
L_28ABA7:
    A_JMP       L_28ABA2                    ; 28ABA7/17A2AB

L_28ABAA:
    ZEROVEL                                 ; 28ABAA/38
    ASMCALL     $8851                       ; 28ABAB/D05188 // Face towards Kirby
    ASMCALL     $B843                       ; 28ABAE/D043B8
    MOV         VAR3,#$30                   ; 28ABB1/0D0330
    ONTICK      $28B146                     ; 28ABB4/0846B128
    WAIT        #1                          ; 28ABB8/0601
L_28ABBA:
    ONTICK      $28B30D                     ; 28ABBA/080DB328
L_28ABBE:
    ASMCALL     $8829                       ; 28ABBE/D02988 // Set pose to 0 (respect facing)
    WAIT        #8                          ; 28ABC1/0608
L_28ABC3:
    ADDPOSE     #2                          ; 28ABC3/6002
    WAIT        #8                          ; 28ABC5/0608
L_28ABC7:
    A_JMP       L_28ABBE                    ; 28ABC7/17BEAB

L_28ABCA:
    ONTICK      $28B341                     ; 28ABCA/0841B328
    ADDPOSE     #16                         ; 28ABCE/6010
    WAIT        #4                          ; 28ABD0/0604
L_28ABD2:
    ASMCALL     $84DB                       ; 28ABD2/D0DB84 // Flip sprite horizontally (actually toggle LSB of pose)
    WAIT        #4                          ; 28ABD5/0604
L_28ABD7:
    A_JMP       L_28ABBA                    ; 28ABD7/17BAAB

L_28ABDA:
    ONTICK      $28B355                     ; 28ABDA/0855B328
    ASMCALL     $8829                       ; 28ABDE/D02988 // Set pose to 0 (respect facing)
    WAIT        #8                          ; 28ABE1/0608
L_28ABE3:
    ADDPOSE     #2                          ; 28ABE3/6002
    WAIT        #8                          ; 28ABE5/0608
L_28ABE7:
    A_JMP       L_28ABBE                    ; 28ABE7/17BEAB

L_28ABEA:
    ONTICK      $28B049                     ; 28ABEA/0849B028
    ZEROVEL                                 ; 28ABEE/38
    ASMCALL     $8851                       ; 28ABEF/D05188 // Face towards Kirby
    LOOP        #32                         ; 28ABF2/0120
        ASMCALL     $8C53                       ; 28ABF4/D0538C // Set pose (respect facing)
        .byte       $14                         ; 28ABF7/14
        WAIT        #1                          ; 28ABF8/0601
L_28ABFA:
        ADDPOSE     #2, WAIT #1                 ; 28ABFA/6102
L_28ABFC:
    ENDLOOP                                 ; 28ABFC/02
    ASMCALL     $DED0                       ; 28ABFD/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28AC00/09
    .byte       $12                         ; 28AC01/12
    .byte       $5C                         ; 28AC02/5C
    .byte       $00                         ; 28AC03/00
    .byte       $00                         ; 28AC04/00
    .byte       $00                         ; 28AC05/00
    .byte       $00                         ; 28AC06/00
    .byte       $00                         ; 28AC07/00
    ASMCALL     $DE4B                       ; 28AC08/D04BDE // Play sound effect
    .byte       $3E                         ; 28AC0B/3E
    ADDPOSE     #-2                         ; 28AC0C/60FE
    ONTICK      $28B2CC                     ; 28AC0E/08CCB228
    MOV         VAR2,#$0C                   ; 28AC12/0D020C
    WAIT        #13                         ; 28AC15/060D
L_28AC17:
    ZEROVEL                                 ; 28AC17/38
    ONTICK      $28B049                     ; 28AC18/0849B028
    WAIT        #27                         ; 28AC1C/061B
L_28AC1E:
    A_JMP       L_28ABAA                    ; 28AC1E/17AAAB

L_28AC21:
    ASMCALL     $DE4B                       ; 28AC21/D04BDE // Play sound effect
    .byte       $17                         ; 28AC24/17
    ZEROVEL                                 ; 28AC25/38
    ASMCALL     $8851                       ; 28AC26/D05188 // Face towards Kirby
    ASMCALL     $B8B3                       ; 28AC29/D0B3B8
    MOV         VAR2,#$FF                   ; 28AC2C/0D02FF
    ONTICK      $28B39E                     ; 28AC2F/089EB328
    WAIT        #1                          ; 28AC33/0601
L_28AC35:
    ASMCALL     $8C53                       ; 28AC35/D0538C // Set pose (respect facing)
    .byte       $08                         ; 28AC38/08
    WAIT        #8                          ; 28AC39/0608
L_28AC3B:
    ADDPOSE     #2                          ; 28AC3B/6002
    WAIT        #12                         ; 28AC3D/060C
L_28AC3F:
    ADDPOSE     #2, WAIT #6                 ; 28AC3F/6602
L_28AC41:
    ADDPOSE     #4, WAIT #6                 ; 28AC41/6604
L_28AC43:
    ADDPOSE     #2                          ; 28AC43/6002
    WAIT        #12                         ; 28AC45/060C
L_28AC47:
    ADDPOSE     #-2                         ; 28AC47/60FE
    WAIT        #14                         ; 28AC49/060E
L_28AC4B:
    ASMCALL     $DE4B                       ; 28AC4B/D04BDE // Play sound effect
    .byte       $22                         ; 28AC4E/22
    ADDPOSE     #-2, WAIT #2                ; 28AC4F/62FE
L_28AC51:
    ADDPOSE     #-8, WAIT #4                ; 28AC51/64F8
L_28AC53:
    ADDPOSE     #8, WAIT #2                 ; 28AC53/6208
L_28AC55:
    ADDPOSE     #-2, WAIT #2                ; 28AC55/62FE
L_28AC57:
    A_JMP       L_28ABAA                    ; 28AC57/17AAAB

L_28AC5A:
    ASMCALL     $DE4B                       ; 28AC5A/D04BDE // Play sound effect
    .byte       $17                         ; 28AC5D/17
    ZEROVEL                                 ; 28AC5E/38
    ONTICK      $28B15B                     ; 28AC5F/085BB128
    ASMCALL     $8851                       ; 28AC63/D05188 // Face towards Kirby
    ASMCALL     $8CAA                       ; 28AC66/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF00                       ; 28AC69/00FF
    SETYVEL     #$FE00                      ; 28AC6B/C000FE
    ASMCALL     $8C53                       ; 28AC6E/D0538C // Set pose (respect facing)
    .byte       $08                         ; 28AC71/08
    WAIT        #6                          ; 28AC72/0606
L_28AC74:
    ADDPOSE     #2                          ; 28AC74/6002
    WAIT        #8                          ; 28AC76/0608
L_28AC78:
    ADDPOSE     #2                          ; 28AC78/6002
    WAIT        #4                          ; 28AC7A/0604
L_28AC7C:
    ADDPOSE     #4                          ; 28AC7C/6004
    WAIT        #4                          ; 28AC7E/0604
L_28AC80:
    ADDPOSE     #2                          ; 28AC80/6002
    WAIT        #8                          ; 28AC82/0608
L_28AC84:
    ADDPOSE     #-2                         ; 28AC84/60FE
    WAIT        #10                         ; 28AC86/060A
L_28AC88:
    HALT                                    ; 28AC88/09

L_28AC89:
    ZEROVEL                                 ; 28AC89/38
    ONTICK      $28B199                     ; 28AC8A/0899B128
    ASMCALL     $DE4B                       ; 28AC8E/D04BDE // Play sound effect
    .byte       $0C                         ; 28AC91/0C
    ASMCALL     $E26A                       ; 28AC92/D06AE2 // Set X velocity (respect facing)
    .word       $0480                       ; 28AC95/8004
L_28AC97:
    ASMCALL     $8C53                       ; 28AC97/D0538C // Set pose (respect facing)
    .byte       $20                         ; 28AC9A/20
    WAIT        #2                          ; 28AC9B/0602
L_28AC9D:
    ADDPOSE     #2, WAIT #2                 ; 28AC9D/6202
L_28AC9F:
    A_JMP       L_28AC97                    ; 28AC9F/1797AC

L_28ACA2:
    ASMCALL     $859F                       ; 28ACA2/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 28ACA5/0C00
    ONTICK      $28B1B1                     ; 28ACA7/08B1B128
    ASMCALL     $8CAA                       ; 28ACAB/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF80                       ; 28ACAE/80FF
    SETYVEL     #$FE00                      ; 28ACB0/C000FE
L_28ACB3:
    ASMCALL     $8C53                       ; 28ACB3/D0538C // Set pose (respect facing)
    .byte       $18                         ; 28ACB6/18
    WAIT        #2                          ; 28ACB7/0602
L_28ACB9:
    ADDPOSE     #2, WAIT #2                 ; 28ACB9/6202
L_28ACBB:
    A_JMP       L_28ACB3                    ; 28ACBB/17B3AC

L_28ACBE:
    ZEROVEL                                 ; 28ACBE/38
    ONTICK      $28B427                     ; 28ACBF/0827B428
    MOV         VAR2,#$1C                   ; 28ACC3/0D021C
    WAIT        #1                          ; 28ACC6/0601
L_28ACC8:
    ASMCALL     $8851                       ; 28ACC8/D05188 // Face towards Kirby
    LOOP        #2                          ; 28ACCB/0102
        ASMCALL     $8C53                       ; 28ACCD/D0538C // Set pose (respect facing)
        .byte       $10                         ; 28ACD0/10
        WAIT        #8                          ; 28ACD1/0608
L_28ACD3:
        ADDPOSE     #-2, WAIT #4                ; 28ACD3/64FE
L_28ACD5:
        ADDPOSE     #-4, WAIT #4                ; 28ACD5/64FC
L_28ACD7:
        ADDPOSE     #-2, WAIT #4                ; 28ACD7/64FE
L_28ACD9:
        ADDPOSE     #-4, WAIT #4                ; 28ACD9/64FC
L_28ACDB:
        ADDPOSE     #10, WAIT #4                ; 28ACDB/640A
L_28ACDD:
    ENDLOOP                                 ; 28ACDD/02
    A_JMP       L_28ABAA                    ; 28ACDE/17AAAB

L_28ACE1:
    SETZPOS     #$007F                      ; 28ACE1/3A7F00
    ASMCALL     $DE4B                       ; 28ACE4/D04BDE // Play sound effect
    .byte       $17                         ; 28ACE7/17
    ZEROVEL                                 ; 28ACE8/38
    ASMCALL     $B948                       ; 28ACE9/D048B9
    ASMCALL     $8CAA                       ; 28ACEC/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0080                       ; 28ACEF/8000
    SETYVEL     #$FA00                      ; 28ACF1/C000FA
    ONTICK      $28B1D4                     ; 28ACF4/08D4B128
    SETPOSE     #$29                        ; 28ACF8/5029
    WAIT        #8                          ; 28ACFA/0608
L_28ACFC:
    TASK        L_28AD0C                    ; 28ACFC/070CAD
L_28ACFF:
    ASMCALL     $BA6A, WAIT #1              ; 28ACFF/D16ABA
L_28AD02:
    JNE         L_28ACFF                    ; 28AD02/0BFFAC
    ENDLASTTASK                             ; 28AD05/12
L_28AD06:
    SETPOSE     #$25, WAIT #2               ; 28AD06/5225
L_28AD08:
    INCPOSE     WAIT #2                     ; 28AD08/72
L_28AD09:
    A_JMP       L_28AD06                    ; 28AD09/1706AD

L_28AD0C:
    SETPOSE     #$27, WAIT #2               ; 28AD0C/5227
L_28AD0E:
    INCPOSE     WAIT #2                     ; 28AD0E/72
L_28AD0F:
    A_JMP       L_28AD0C                    ; 28AD0F/170CAD

L_28AD12:
    SETZPOS     #$0081                      ; 28AD12/3A8100
    MOV         $078C,#$00                  ; 28AD15/118C0700
    ZEROVEL                                 ; 28AD19/38
    ONTICK      $28B22C                     ; 28AD1A/082CB228
    MOV         $078B,#$00                  ; 28AD1E/118B0700
    MOV         VAR5,#$00                   ; 28AD22/0D0500
    ASMCALL     $B976                       ; 28AD25/D076B9
    JEQ         L_28AD35                    ; 28AD28/0A35AD
    LOOP        #2                          ; 28AD2B/0102
        SETPOSE     #$27, WAIT #2               ; 28AD2D/5227
        INCPOSE     WAIT #2                     ; 28AD2F/72
    ENDLOOP                                 ; 28AD30/02
    SETPOSE     #$24                        ; 28AD31/5024
    WAIT        #8                          ; 28AD33/0608
L_28AD35:
    SETPOSE     #$25, WAIT #2               ; 28AD35/5225
L_28AD37:
    INCPOSE     WAIT #2                     ; 28AD37/72
L_28AD38:
    A_JMP       L_28AD35                    ; 28AD38/1735AD

L_28AD3B:
    MOV         VAR2,#$2D                   ; 28AD3B/0D022D
    MOV         VAR3,#$01                   ; 28AD3E/0D0301
    MOV         $078A,#$0B                  ; 28AD41/118A070B
    ZEROVEL                                 ; 28AD45/38
    ONTICK      $28B26E                     ; 28AD46/086EB228
    MOV         REG,VAR5                    ; 28AD4A/1E05
    JNE         L_28AD59                    ; 28AD4C/0B59AD
L_28AD4F:
    SETPOSE     #$2A                        ; 28AD4F/502A
    WAIT        #8                          ; 28AD51/0608
L_28AD53:
    INCPOSE                                 ; 28AD53/70
    WAIT        #8                          ; 28AD54/0608
L_28AD56:
    A_JMP       L_28AD4F                    ; 28AD56/174FAD

L_28AD59:
    SETPOSE     #$2D                        ; 28AD59/502D
    WAIT        #8                          ; 28AD5B/0608
    DECPOSE                                 ; 28AD5D/80
    WAIT        #16                         ; 28AD5E/0610
    A_JMP       L_28AD59                    ; 28AD60/1759AD

L_28AD63:
    ASMCALL     $B998                       ; 28AD63/D098B9
    JEQ         L_28AD78                    ; 28AD66/0A78AD
    ONTICK      $28B29A                     ; 28AD69/089AB228
L_28AD6D:
    SETPOSE     #$1C, WAIT #2               ; 28AD6D/521C
L_28AD6F:
    SETPOSE     #$2B, WAIT #2               ; 28AD6F/522B
L_28AD71:
    SETPOSE     #$1D, WAIT #2               ; 28AD71/521D
L_28AD73:
    SETPOSE     #$2A, WAIT #2               ; 28AD73/522A
L_28AD75:
    A_JMP       L_28AD6D                    ; 28AD75/176DAD

L_28AD78:
    MOV         VAR2,#$3C                   ; 28AD78/0D023C
    ONTICK      $28B2B6                     ; 28AD7B/08B6B228
    ZEROVEL                                 ; 28AD7F/38
    A_JMP       L_28AD6D                    ; 28AD80/176DAD

L_28AD83:
    MOV         VAR2,#$06                   ; 28AD83/0D0206
    MOV         VAR3,#$14                   ; 28AD86/0D0314
    MOV         $0789,#$00                  ; 28AD89/11890700
    ONTICK      $28B49B                     ; 28AD8D/089BB428
    A_JMP       L_28AD6D                    ; 28AD91/176DAD

; CODE OR DATA -- $28AD94 .. $28ADA7
incbinRange "../split/prg/bank28.bin", $0D94, $0DA7

L_28ADA7:
    MOV         VAR2,#$2D                   ; 28ADA7/0D022D
    MOV         VAR3,#$01                   ; 28ADAA/0D0301
    MOV         $078A,#$FF                  ; 28ADAD/118A07FF
    ONTICK      $28B736                     ; 28ADB1/0836B728
    ZEROVEL                                 ; 28ADB5/38
L_28ADB6:
    SETPOSE     #$2A                        ; 28ADB6/502A
    WAIT        #8                          ; 28ADB8/0608
L_28ADBA:
    INCPOSE                                 ; 28ADBA/70
    WAIT        #8                          ; 28ADBB/0608
L_28ADBD:
    A_JMP       L_28ADB6                    ; 28ADBD/17B6AD

L_28ADC0:
    MOV         VAR0,#$1E                   ; 28ADC0/0D001E
    MOV         REG,#$C0                    ; 28ADC3/1BC0
    ASMCALL     $BA74                       ; 28ADC5/D074BA
    ONTICK      $28B029                     ; 28ADC8/0829B028
    ASMCALL     $8C53                       ; 28ADCC/D0538C // Set pose (respect facing)
    .byte       $2E                         ; 28ADCF/2E
    HALT                                    ; 28ADD0/09

L_28ADD1:
    ZEROVEL                                 ; 28ADD1/38
    ASMCALL     $8851                       ; 28ADD2/D05188 // Face towards Kirby
    ASMCALL     $B843                       ; 28ADD5/D043B8
    ONTICK      $28B146                     ; 28ADD8/0846B128
    WAIT        #1                          ; 28ADDC/0601
L_28ADDE:
    ONTICK      $28B55B                     ; 28ADDE/085BB528
    ASMCALL     $8C53                       ; 28ADE2/D0538C // Set pose (respect facing)
    .byte       $2E                         ; 28ADE5/2E
    HALT                                    ; 28ADE6/09

; CODE OR DATA -- $28ADE7 .. $28ADFC
incbinRange "../split/prg/bank28.bin", $0DE7, $0DFC

L_28ADFC:
    ZEROVEL                                 ; 28ADFC/38
    ONTICK      $28B5A2                     ; 28ADFD/08A2B528
    MOV         VAR2,#$52                   ; 28AE01/0D0252
    ASMCALL     $8851                       ; 28AE04/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 28AE07/D0538C // Set pose (respect facing)
    .byte       $34                         ; 28AE0A/34
    WAIT        #7                          ; 28AE0B/0607
L_28AE0D:
    ADDPOSE     #2                          ; 28AE0D/6002
    WAIT        #34                         ; 28AE0F/0622
    ADDPOSE     #2, WAIT #2                 ; 28AE11/6202
    ADDPOSE     #2, WAIT #2                 ; 28AE13/6202
    ASMCALL     $DED0                       ; 28AE15/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28AE18/09
    .byte       $12                         ; 28AE19/12
    .byte       $5C                         ; 28AE1A/5C
    .byte       $00                         ; 28AE1B/00
    .byte       $00                         ; 28AE1C/00
    .byte       $00                         ; 28AE1D/00
    .byte       $02                         ; 28AE1E/02
    .byte       $00                         ; 28AE1F/00
    ASMCALL     $DE4B                       ; 28AE20/D04BDE // Play sound effect
    .byte       $3F                         ; 28AE23/3F
    ADDPOSE     #2                          ; 28AE24/6002
    WAIT        #38                         ; 28AE26/0626
    A_JMP       L_28ADD1                    ; 28AE28/17D1AD

L_28AE2B:
    ASMCALL     $DE4B                       ; 28AE2B/D04BDE // Play sound effect
    .byte       $17                         ; 28AE2E/17
    ZEROVEL                                 ; 28AE2F/38
    ASMCALL     $8851                       ; 28AE30/D05188 // Face towards Kirby
    ASMCALL     $B8B3                       ; 28AE33/D0B3B8
    MOV         VAR2,#$FF                   ; 28AE36/0D02FF
    ONTICK      $28B653                     ; 28AE39/0853B628
    WAIT        #1                          ; 28AE3D/0601
L_28AE3F:
    ASMCALL     $8C53                       ; 28AE3F/D0538C // Set pose (respect facing)
    .byte       $34                         ; 28AE42/34
    WAIT        #8                          ; 28AE43/0608
L_28AE45:
    ADDPOSE     #-2                         ; 28AE45/60FE
    WAIT        #58                         ; 28AE47/063A
L_28AE49:
    ADDPOSE     #-2                         ; 28AE49/60FE
    ASMCALL     $DE4B                       ; 28AE4B/D04BDE // Play sound effect
    .byte       $22                         ; 28AE4E/22
    WAIT        #8                          ; 28AE4F/0608
L_28AE51:
    A_JMP       L_28ADD1                    ; 28AE51/17D1AD

L_28AE54:
    ASMCALL     $DE4B                       ; 28AE54/D04BDE // Play sound effect
    .byte       $17                         ; 28AE57/17
    ZEROVEL                                 ; 28AE58/38
    ONTICK      $28B15B                     ; 28AE59/085BB128
    ASMCALL     $8851                       ; 28AE5D/D05188 // Face towards Kirby
    ASMCALL     $8CAA                       ; 28AE60/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF00                       ; 28AE63/00FF
    SETYVEL     #$FE00                      ; 28AE65/C000FE
    ASMCALL     $8C53                       ; 28AE68/D0538C // Set pose (respect facing)
    .byte       $34                         ; 28AE6B/34
    WAIT        #8                          ; 28AE6C/0608
L_28AE6E:
    ADDPOSE     #-2                         ; 28AE6E/60FE
    WAIT        #58                         ; 28AE70/063A
    ADDPOSE     #-2                         ; 28AE72/60FE
    WAIT        #8                          ; 28AE74/0608
    HALT                                    ; 28AE76/09

L_28AE77:
    ZEROVEL                                 ; 28AE77/38
    ONTICK      $28B199                     ; 28AE78/0899B128
    ASMCALL     $DE4B                       ; 28AE7C/D04BDE // Play sound effect
    .byte       $0C                         ; 28AE7F/0C
    ASMCALL     $E26A                       ; 28AE80/D06AE2 // Set X velocity (respect facing)
    .word       $0480                       ; 28AE83/8004
    ASMCALL     $8AE7                       ; 28AE85/D0E78A // Get facing as 0 or 1
    JNE         L_28AE96                    ; 28AE88/0B96AE
L_28AE8B:
    SETPOSE     #$47, WAIT #1               ; 28AE8B/5147
    INCPOSE     WAIT #1                     ; 28AE8D/71
    INCPOSE     WAIT #1                     ; 28AE8E/71
    INCPOSE     WAIT #1                     ; 28AE8F/71
    INCPOSE     WAIT #1                     ; 28AE90/71
    INCPOSE     WAIT #1                     ; 28AE91/71
    INCPOSE     WAIT #1                     ; 28AE92/71
    A_JMP       L_28AE8B                    ; 28AE93/178BAE

L_28AE96:
    SETPOSE     #$4D, WAIT #1               ; 28AE96/514D
L_28AE98:
    DECPOSE     WAIT #1                     ; 28AE98/81
L_28AE99:
    DECPOSE     WAIT #1                     ; 28AE99/81
L_28AE9A:
    DECPOSE     WAIT #1                     ; 28AE9A/81
L_28AE9B:
    DECPOSE     WAIT #1                     ; 28AE9B/81
L_28AE9C:
    DECPOSE     WAIT #1                     ; 28AE9C/81
L_28AE9D:
    DECPOSE     WAIT #1                     ; 28AE9D/81
L_28AE9E:
    A_JMP       L_28AE96                    ; 28AE9E/1796AE

L_28AEA1:
    ASMCALL     $859F                       ; 28AEA1/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 28AEA4/0C00
    ONTICK      $28B1B1                     ; 28AEA6/08B1B128
    ASMCALL     $8CAA                       ; 28AEAA/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF80                       ; 28AEAD/80FF
    SETYVEL     #$FE00                      ; 28AEAF/C000FE
L_28AEB2:
    ASMCALL     $8C53                       ; 28AEB2/D0538C // Set pose (respect facing)
    .byte       $3E                         ; 28AEB5/3E
    WAIT        #2                          ; 28AEB6/0602
L_28AEB8:
    ADDPOSE     #2, WAIT #2                 ; 28AEB8/6202
L_28AEBA:
    A_JMP       L_28AEB2                    ; 28AEBA/17B2AE

; CODE OR DATA -- $28AEBD .. $28AEDF
incbinRange "../split/prg/bank28.bin", $0EBD, $0EDF

L_28AEDF:
    SETZPOS     #$007F                      ; 28AEDF/3A7F00
    ASMCALL     $DE4B                       ; 28AEE2/D04BDE // Play sound effect
    .byte       $17                         ; 28AEE5/17
    ZEROVEL                                 ; 28AEE6/38
    ASMCALL     $B948                       ; 28AEE7/D048B9
    ASMCALL     $8CAA                       ; 28AEEA/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0080                       ; 28AEED/8000
    SETYVEL     #$FA00                      ; 28AEEF/C000FA
    ONTICK      $28B1D4                     ; 28AEF2/08D4B128
    ASMCALL     $8C53                       ; 28AEF6/D0538C // Set pose (respect facing)
    .byte       $34                         ; 28AEF9/34
    HALT                                    ; 28AEFA/09

; CODE OR DATA -- $28AEFB .. $28AF1A
incbinRange "../split/prg/bank28.bin", $0EFB, $0F1A

L_28AF1A:
    MOV         VAR2,#$2D                   ; 28AF1A/0D022D
    MOV         VAR3,#$01                   ; 28AF1D/0D0301
L_28AF20:
    MOV         $078A,#$0B                  ; 28AF20/118A070B
    ZEROVEL                                 ; 28AF24/38
    ONTICK      $28B26E                     ; 28AF25/086EB228
    MOV         REG,VAR5                    ; 28AF29/1E05
    JNE         L_28AF3A                    ; 28AF2B/0B3AAF
    ASMCALL     $8AE7                       ; 28AF2E/D0E78A // Get facing as 0 or 1
    JNE         L_28AF37                    ; 28AF31/0B37AF
    SETPOSE     #$45                        ; 28AF34/5045
    HALT                                    ; 28AF36/09

L_28AF37:
    SETPOSE     #$4D                        ; 28AF37/504D
    HALT                                    ; 28AF39/09

L_28AF3A:
    ASMCALL     $8C53                       ; 28AF3A/D0538C // Set pose (respect facing)
    .byte       $50                         ; 28AF3D/50
    WAIT        #8                          ; 28AF3E/0608
L_28AF40:
    ADDPOSE     #-2                         ; 28AF40/60FE
    WAIT        #16                         ; 28AF42/0610
L_28AF44:
    A_JMP       L_28AF3A                    ; 28AF44/173AAF

L_28AF47:
    MOV         $07A5,#$01                  ; 28AF47/11A50701
    ZEROVEL                                 ; 28AF4B/38
    MOV         $0789,#$00                  ; 28AF4C/11890700
    ONTICK      $28B6D4                     ; 28AF50/08D4B628
    MOV         VAR2,#$3C                   ; 28AF54/0D023C
    MOV         REG,VAR5                    ; 28AF57/1E05
    JNE         L_28AF3A                    ; 28AF59/0B3AAF
L_28AF5C:
    HALT                                    ; 28AF5C/09

L_28AF5D:
    ONTICK      $28B4E8                     ; 28AF5D/08E8B428
    MOV         REG,VAR5                    ; 28AF61/1E05
    JNE         L_28AF3A                    ; 28AF63/0B3AAF
    HALT                                    ; 28AF66/09

; CODE OR DATA -- $28AF67 .. $28AF77
incbinRange "../split/prg/bank28.bin", $0F67, $0F77

L_28AF77:
    ASMCALL     $DE4B                       ; 28AF77/D04BDE // Play sound effect
    .byte       $2F                         ; 28AF7A/2F
    ONTICK      $28B778                     ; 28AF7B/0878B728
    ASMCALL     $8C71                       ; 28AF7F/D0718C // Unknown ASM $228C71
    .byte       $45                         ; 28AF82/45
    .byte       $03                         ; 28AF83/03
    .byte       $00                         ; 28AF84/00
L_28AF85:
    HALT                                    ; 28AF85/09

; CODE OR DATA -- $28AF86 .. $28BBF1
incbinRange "../split/prg/bank28.bin", $0F86, $1BF1

L_28BBF1:
    ONTICK      $28BC6A                     ; 28BBF1/086ABC28
    TASK        L_28BC35                    ; 28BBF5/0735BC
L_28BBF8:
    SETPOSE     #$2D, WAIT #8               ; 28BBF8/582D
L_28BBFA:
    DECPOSE     WAIT #15                    ; 28BBFA/8F
L_28BBFB:
    A_JMP       L_28BBF8                    ; 28BBFB/17F8BB

L_28BBFE:
    ONTICK      $28BC6A                     ; 28BBFE/086ABC28
    TASK        L_28BC35                    ; 28BC02/0735BC
L_28BC05:
    ASMCALL     $BD26, WAIT #8              ; 28BC05/D826BD
L_28BC08:
    DEC2POSE    WAIT #15                    ; 28BC08/AF
L_28BC09:
    INC2POSE    WAIT #8                     ; 28BC09/98
L_28BC0A:
    A_JMP       L_28BC08                    ; 28BC0A/1708BC

L_28BC0D:
    MOV         VAR4,#$0C                   ; 28BC0D/0D040C
    ONTICK      $28BCBF                     ; 28BC10/08BFBC28
    TASK        L_28BC27                    ; 28BC14/0727BC
    A_JMP       L_28BBF8                    ; 28BC17/17F8BB

L_28BC1A:
    MOV         VAR4,#$0C                   ; 28BC1A/0D040C
    ONTICK      $28BCBF                     ; 28BC1D/08BFBC28
    TASK        L_28BC27                    ; 28BC21/0727BC
    A_JMP       L_28BC05                    ; 28BC24/1705BC

L_28BC27:
    ASMCALL     $BD14                       ; 28BC27/D014BD
    ASMCALL     $E23C, WAIT #4              ; 28BC2A/D43CE2 // Unknown ASM $E23C
    .word       $0100                       ; 28BC2D/0001
L_28BC2F:
    ASMCALL     $8542, WAIT #2              ; 28BC2F/D24285
    A_JMP       L_28BC27                    ; 28BC32/1727BC

L_28BC35:
    ASMCALL     $BD14                       ; 28BC35/D014BD
    ASMCALL     $E23C, WAIT #1              ; 28BC38/D13CE2 // Unknown ASM $E23C
    .word       $0100                       ; 28BC3B/0001
L_28BC3D:
    A_JMP       L_28BC35                    ; 28BC3D/1735BC

; CODE OR DATA -- $28BC40 .. $28BD3F
incbinRange "../split/prg/bank28.bin", $1C40, $1D3F

Script5C_MrShineAndMrBrightStar:
    SETBANK     #$22                        ; 28BD3F/2822
    ONPOSITION  $D9BB                       ; 28BD41/21BBD9
    SPRITEMAP   $319218                     ; 28BD44/1A189231
    MOV         REG,VAR0                    ; 28BD48/1E00
    TABLEJMP    #6                          ; 28BD4A/0F06
    .word       L_28BD58                    ; 28BD4C/58BD
    .word       L_28BD77                    ; 28BD4E/77BD
    .word       L_28BDAD                    ; 28BD50/ADBD
    .word       L_28BDD3                    ; 28BD52/D3BD
    .word       L_28BDFE                    ; 28BD54/FEBD
    .word       L_28BE29                    ; 28BD56/29BE
L_28BD58:
    ONTICK      $28BE36                     ; 28BD58/0836BE28
    MOV         VAR0,#$02                   ; 28BD5C/0D0002
    ASMCALL     $8C05                       ; 28BD5F/D0058C // Unknown ASM $228C05
    .byte       $10                         ; 28BD62/10
    ASMCALL     $E26A                       ; 28BD63/D06AE2 // Set X velocity (respect facing)
    .word       $0400                       ; 28BD66/0004
L_28BD68:
    ASMCALL     $8C53                       ; 28BD68/D0538C // Set pose (respect facing)
    .byte       $56                         ; 28BD6B/56
    WAIT        #1                          ; 28BD6C/0601
L_28BD6E:
    ADDPOSE     #2, WAIT #1                 ; 28BD6E/6102
L_28BD70:
    ADDPOSE     #2, WAIT #1                 ; 28BD70/6102
L_28BD72:
    SETPOSE     #$FF, WAIT #1               ; 28BD72/51FF
L_28BD74:
    A_JMP       L_28BD68                    ; 28BD74/1768BD

L_28BD77:
    ASMCALL     $BEF1                       ; 28BD77/D0F1BE
    ONTICK      $28BE4E                     ; 28BD7A/084EBE28
    ADDYPOS     #16                         ; 28BD7E/2D1000
    SETPOSE     #$5D                        ; 28BD81/505D
    SETYVEL     #$0600                      ; 28BD83/C00006
    HALT                                    ; 28BD86/09

L_28BD87:
    MOV         VAR1,#$80                   ; 28BD87/0D0180
    ASMCALL     $DED0                       ; 28BD8A/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28BD8D/09
    .byte       $12                         ; 28BD8E/12
    .byte       $5C                         ; 28BD8F/5C
    .byte       $F4                         ; 28BD90/F4
    .byte       $00                         ; 28BD91/00
    .byte       $00                         ; 28BD92/00
    .byte       $04                         ; 28BD93/04
    .byte       $40                         ; 28BD94/40
    ASMCALL     $DED0                       ; 28BD95/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28BD98/09
    .byte       $12                         ; 28BD99/12
    .byte       $5C                         ; 28BD9A/5C
    .byte       $0C                         ; 28BD9B/0C
    .byte       $00                         ; 28BD9C/00
    .byte       $00                         ; 28BD9D/00
    .byte       $04                         ; 28BD9E/04
    .byte       $C0                         ; 28BD9F/C0
    END                                     ; 28BDA0/00

L_28BDA1:
    ASMCALL     $DED0                       ; 28BDA1/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 28BDA4/09
    .byte       $12                         ; 28BDA5/12
    .byte       $5C                         ; 28BDA6/5C
    .byte       $00                         ; 28BDA7/00
    .byte       $00                         ; 28BDA8/00
    .byte       $00                         ; 28BDA9/00
    .byte       $05                         ; 28BDAA/05
    .byte       $00                         ; 28BDAB/00
    END                                     ; 28BDAC/00

L_28BDAD:
    ONTICK      $28BE2E                     ; 28BDAD/082EBE28
    MOV         VAR0,#$02                   ; 28BDB1/0D0002
    ASMCALL     $8C05                       ; 28BDB4/D0058C // Unknown ASM $228C05
    .byte       $10                         ; 28BDB7/10
    ASMCALL     $E26A                       ; 28BDB8/D06AE2 // Set X velocity (respect facing)
    .word       $0400                       ; 28BDBB/0004
    ASMCALL     $8AE7                       ; 28BDBD/D0E78A // Get facing as 0 or 1
    JNE         L_28BDC3                    ; 28BDC0/0BC3BD
L_28BDC3:
    SETPOSE     #$55, WAIT #2               ; 28BDC3/5255
    DECPOSE     WAIT #2                     ; 28BDC5/82
    DECPOSE     WAIT #2                     ; 28BDC6/82
    DECPOSE     WAIT #2                     ; 28BDC7/82
    A_JMP       L_28BDC3                    ; 28BDC8/17C3BD

; CODE OR DATA -- $28BDCB .. $28BDD3
incbinRange "../split/prg/bank28.bin", $1DCB, $1DD3

L_28BDD3:
    ASMCALL     $DE4B                       ; 28BDD3/D04BDE // Play sound effect
    .byte       $4E                         ; 28BDD6/4E
    ONTICK      $28BE3E                     ; 28BDD7/083EBE28
    MOV         VAR0,#$02                   ; 28BDDB/0D0002
    ASMCALL     $BE75                       ; 28BDDE/D075BE
    LOOP        #2                          ; 28BDE1/0102
        SETPOSE     #$5F, WAIT #2               ; 28BDE3/525F
L_28BDE5:
        INCPOSE     WAIT #2                     ; 28BDE5/72
L_28BDE6:
    ENDLOOP                                 ; 28BDE6/02
    SPRITEMAP   $308B7A                     ; 28BDE7/1A7A8B30
    ASMCALL     $BEAB                       ; 28BDEB/D0ABBE
L_28BDEE:
    SETPOSE     #$00                        ; 28BDEE/5000
    WAIT        #8                          ; 28BDF0/0608
L_28BDF2:
    INCPOSE                                 ; 28BDF2/70
    WAIT        #8                          ; 28BDF3/0608
L_28BDF5:
    INCPOSE                                 ; 28BDF5/70
    WAIT        #8                          ; 28BDF6/0608
L_28BDF8:
    INCPOSE                                 ; 28BDF8/70
    WAIT        #8                          ; 28BDF9/0608
L_28BDFB:
    A_JMP       L_28BDEE                    ; 28BDFB/17EEBD

L_28BDFE:
    MOV         VAR0,#$02                   ; 28BDFE/0D0002
    SPRITEMAP   $308B7A                     ; 28BE01/1A7A8B30
    SETZPOS     #$00FF                      ; 28BE05/3AFF00
    ONTICK      $28BE46                     ; 28BE08/0846BE28
    ASMCALL     $E26A                       ; 28BE0C/D06AE2 // Set X velocity (respect facing)
    .word       $0200                       ; 28BE0F/0002
    SETYVEL     #$FE80                      ; 28BE11/C080FE
    SETPOSE     #$00, WAIT #6               ; 28BE14/5600
L_28BE16:
    ASMCALL     $E26A                       ; 28BE16/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 28BE19/8000
    SETYVEL     #$FF80                      ; 28BE1B/C080FF
    INCPOSE     WAIT #5                     ; 28BE1E/75
L_28BE1F:
    INCPOSE     WAIT #5                     ; 28BE1F/75
L_28BE20:
    ZEROVEL                                 ; 28BE20/38
    INCPOSE     WAIT #6                     ; 28BE21/76
L_28BE22:
    SETPOSE     #$00, WAIT #6               ; 28BE22/5600
L_28BE24:
    INCPOSE     WAIT #6                     ; 28BE24/76
L_28BE25:
    ENDTICK                                 ; 28BE25/0E
    SETPOSE     #$04, WAIT #6               ; 28BE26/5604
L_28BE28:
    END                                     ; 28BE28/00

L_28BE29:
    SETPOSE     #$FF, WAIT #2               ; 28BE29/52FF
L_28BE2B:
    SETPOSE     #$5E, WAIT #1               ; 28BE2B/515E
L_28BE2D:
    END                                     ; 28BE2D/00

; CODE OR DATA -- $28BE2E .. $28BF35
incbinRange "../split/prg/bank28.bin", $1E2E, $1F35

L_28BF35:
    ASMCALL     $DE4B                       ; 28BF35/D04BDE // Play sound effect
    .byte       $12                         ; 28BF38/12
    ASMCALL     $BF40, WAIT #8              ; 28BF39/D840BF
L_28BF3C:
    JEQ         L_28BF35                    ; 28BF3C/0A35BF
    A_RTL                                   ; 28BF3F/05

; CODE OR DATA -- $28BF40 .. $29A000
incbinRange "../split/prg/bank28.bin", $1F40, $2000