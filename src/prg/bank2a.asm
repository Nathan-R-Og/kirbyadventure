.segment "PRG2A": absolute
L_2AA000:
    ONTICK      $2AA005                     ; 2AA000/0805A02A
    HALT                                    ; 2AA004/09

; CODE OR DATA -- $2AA005 .. $2AA031
incbinRange "../split/prg/bank2a.bin", $0005, $0031

Script4D_FireLion:
    MOV         $0043,#$3C                  ; 2AA031/1143003C
    SETBANK     #$22                        ; 2AA035/2822
    ONPOSITION  $DA09                       ; 2AA037/2109DA
    MOV         REG,VAR0                    ; 2AA03A/1E00
    JNE         L_2AA000                    ; 2AA03C/0B00A0
    SPRITEMAP   L_378A5A                     ; 2AA03F/1A5A8A37
    ASMCALL     $84A4                       ; 2AA043/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$1B                   ; 2AA046/0D001B
    MOV         VAR2,#$00                   ; 2AA049/0D0200
    MOV         VAR8,#$00                   ; 2AA04C/0D0800
    MOV         VAR6,#$00                   ; 2AA04F/0D0600
    MOV         VAR3,#$00                   ; 2AA052/0D0300
    MOV         VAR5,#$00                   ; 2AA055/0D0500
    MOV         VAR9,#$00                   ; 2AA058/0D0900
L_2AA05B:
    MOV         REG,VAR9                    ; 2AA05B/1E09
    A_AND       REG,#$0F                    ; 2AA05D/25000F
    TABLEJMP    #15                         ; 2AA060/0F0F
    .word       L_2AA293                    ; 2AA062/93A2
    .word       L_2AA2C1                    ; 2AA064/C1A2
    .word       L_2AA3B8                    ; 2AA066/B8A3
    .word       L_2AA425                    ; 2AA068/25A4
    .word       L_2AA50C                    ; 2AA06A/0CA5
    .word       L_2AA62B                    ; 2AA06C/2BA6
    .word       L_2AA6C7                    ; 2AA06E/C7A6
    .word       L_2AA342                    ; 2AA070/42A3
    .word       L_2AA78C                    ; 2AA072/8CA7
    .word       L_2AA544                    ; 2AA074/44A5
    .word       L_2AA5EF                    ; 2AA076/EFA5
    .word       L_2AA320                    ; 2AA078/20A3
    .word       L_2AA425                    ; 2AA07A/25A4
    .word       L_2AA3B8                    ; 2AA07C/B8A3
    .word       L_2AA3B8                    ; 2AA07E/B8A3

incbinRange "../split/prg/bank2a.bin", $80, $293

L_2AA293:
        ONTICK      $2AA25B                     ; 2AA293/085BA22A
        ASMCALL     $8851                       ; 2AA297/D05188 // Face towards Kirby
        ASMCALL     $8829                       ; 2AA29A/D02988 // Set pose to 0 (respect facing)
        ASMCALL     $8BE4                       ; 2AA29D/D0E48B // Unknown ASM $228BE4
        .word       $A2B0                       ; 2AA2A0/B0A2
L_2AA2A2:
        ASMCALL     $A2B2                       ; 2AA2A2/D0B2A2
L_2AA2A5:
        A_AND       VAR9,#$F0                   ; 2AA2A5/130900F0
        OR          VAR9,#$01                   ; 2AA2A9/13090101
        A_JMP       L_2AA05B                    ; 2AA2AD/175BA0

; CODE OR DATA -- $2AA2B0 .. $2AA2C1
incbinRange "../split/prg/bank2a.bin", $02B0, $02C1

L_2AA2C1:
        ONTICK      $2AA25B                     ; 2AA2C1/085BA22A
        ASMCALL     $8851                       ; 2AA2C5/D05188 // Face towards Kirby
        ASMCALL     $8829                       ; 2AA2C8/D02988 // Set pose to 0 (respect facing)
        MOV         REG,#$1B                    ; 2AA2CB/1B1B
        ASMCALL     $8B24                       ; 2AA2CD/D0248B // Check if REG == (VAR0 >> 1)
        JEQ         L_2AA2DB                    ; 2AA2D0/0ADBA2
        ASMCALL     $8BE4                       ; 2AA2D3/D0E48B // Unknown ASM $228BE4
        .word       $A2E6                       ; 2AA2D6/E6A2
        A_JMP       L_2AA2E0                    ; 2AA2D8/17E0A2

L_2AA2DB:
        ASMCALL     $8BE4                       ; 2AA2DB/D0E48B // Unknown ASM $228BE4
        .word       $A2E8                       ; 2AA2DE/E8A2
L_2AA2E0:
        ASMCALL     $A2EA                       ; 2AA2E0/D0EAA2
        A_JMP       L_2AA05B                    ; 2AA2E3/175BA0

; CODE OR DATA -- $2AA2E6 .. $2AA320
incbinRange "../split/prg/bank2a.bin", $02E6, $0320

L_2AA320:
        ASMCALL     $A326                       ; 2AA320/D026A3
        A_JMP       L_2AA05B                    ; 2AA323/175BA0

; CODE OR DATA -- $2AA326 .. $2AA342
incbinRange "../split/prg/bank2a.bin", $0326, $0342

L_2AA342:
        MOV         VAR2,#$00                   ; 2AA342/0D0200
        ASMCALL     $859F                       ; 2AA345/D09F85 // Unknown ASM $22859F
        .word       $0018                       ; 2AA348/1800
        ASMCALL     $8FC6                       ; 2AA34A/D0C68F // Unknown ASM $228FC6
        .byte       $0D                         ; 2AA34D/0D
        ASMCALL     $8851                       ; 2AA34E/D05188 // Face towards Kirby
        ASMCALL     $DE4B                       ; 2AA351/D04BDE // Play sound effect
        .byte       $40                         ; 2AA354/40
        MOV         VAR5,#$00                   ; 2AA355/0D0500
        MOV         VAR0,#$00                   ; 2AA358/0D0000
        MOV         VAR8,#$20                   ; 2AA35B/0D0820
        ASMCALL     $8C53                       ; 2AA35E/D0538C // Set pose (respect facing)
        .byte       $16                         ; 2AA361/16
        ASMCALL     $9340                       ; 2AA362/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
        .word       $FF00                       ; 2AA365/00FF
        .word       $FD00                       ; 2AA367/00FD
        MOV         VAR3,#$1A                   ; 2AA369/0D031A
        ONTICK      $2AA080                     ; 2AA36C/0880A02A
L_2AA370:
        ASMCALL     $8E74, WAIT #1              ; 2AA370/D1748E // Check if Y velocity is negative
L_2AA373:
        JNE         L_2AA370                    ; 2AA373/0B70A3
        MOV         VAR8,#$00                   ; 2AA376/0D0800
        A_JSR       L_2AA419                    ; 2AA379/1819A4
        INC2POSE                                ; 2AA37C/90
        ASMCALL     $DED0                       ; 2AA37D/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $09                         ; 2AA380/09
        .byte       $12                         ; 2AA381/12
        .byte       $08                         ; 2AA382/08
        .byte       $00                         ; 2AA383/00
        .byte       $0A                         ; 2AA384/0A
        .byte       $00                         ; 2AA385/00
        .byte       $01                         ; 2AA386/01
        .byte       $00                         ; 2AA387/00
        ASMCALL_l   $22859F                     ; 2AA388/269F8522 // Unknown ASM $22859F
        .word       $000C                       ; 2AA38C/0C00
        ASMCALL     $9591                       ; 2AA38E/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
        .byte       $01                         ; 2AA391/01
        .byte       $00                         ; 2AA392/00
        .byte       $08                         ; 2AA393/08
        .byte       $08                         ; 2AA394/08
        .byte       $09                         ; 2AA395/09
        ASMCALL     $E26A                       ; 2AA396/D06AE2 // Set X velocity (respect facing)
        .word       $FF00                       ; 2AA399/00FF
        MOV         VAR5,#$06                   ; 2AA39B/0D0506
        WAIT        #30                         ; 2AA39E/061E
        ZEROVEL                                 ; 2AA3A0/38
        WAIT        #170                        ; 2AA3A1/06AA
        ASMCALL     $859F                       ; 2AA3A3/D09F85 // Unknown ASM $22859F
        .word       $0018                       ; 2AA3A6/1800
        LOOP        #10                         ; 2AA3A8/010A
            SETYVEL     #$FF00, WAIT #2             ; 2AA3AA/C200FF
            SETYVEL     #$0100, WAIT #2             ; 2AA3AD/C20001
        ENDLOOP                                 ; 2AA3B0/02
        ONDRAW      $DA89                       ; 2AA3B1/2089DA
        ZEROVEL                                 ; 2AA3B4/38
        A_JMP       $8162                       ; 2AA3B5/176281

L_2AA3B8:
        ONTICK      $2AA080                     ; 2AA3B8/0880A02A
        ZEROVEL                                 ; 2AA3BC/38
        ASMCALL     $8851                       ; 2AA3BD/D05188 // Face towards Kirby
        ASMCALL     $8829, WAIT #6              ; 2AA3C0/D62988 // Set pose to 0 (respect facing)
L_2AA3C3:
        INC2POSE    WAIT #8                     ; 2AA3C3/98
L_2AA3C4:
        ASMCALL     $DE4B                       ; 2AA3C4/D04BDE // Play sound effect
        .byte       $17                         ; 2AA3C7/17
        ASMCALL     $DFDF                       ; 2AA3C8/D0DFDF // Unknown ASM $DFDF
        .byte       $02                         ; 2AA3CB/02
        JNE         L_2AA3D1                    ; 2AA3CC/0BD1A3
        MOV         REG,#$03                    ; 2AA3CF/1B03
L_2AA3D1:
        LOOP        REG                         ; 2AA3D1/22
            MOV         VAR3,#$50                   ; 2AA3D2/0D0350
            SETYVEL     #$FB00                      ; 2AA3D5/C000FB
            ADDPOSE     #24                         ; 2AA3D8/6018
            A_JSR       L_2AA407                    ; 2AA3DA/1807A4
            ASMCALL_l   $22859F                     ; 2AA3DD/269F8522 // Unknown ASM $22859F
            .word       $0015                       ; 2AA3E1/1500
            ASMCALL     $8851                       ; 2AA3E3/D05188 // Face towards Kirby
            ASMCALL     $8C53                       ; 2AA3E6/D0538C // Set pose (respect facing)
            .byte       $02                         ; 2AA3E9/02
        ENDLOOP                                 ; 2AA3EA/02
        DEC2POSE                                ; 2AA3EB/A0
        WAIT        #24                         ; 2AA3EC/0618
L_2AA3EE:
        MOV         REG,VAR9                    ; 2AA3EE/1E09
        A_AND       REG,#$0F                    ; 2AA3F0/25000F
        ADD         REG,#-14                    ; 2AA3F3/2502F2
        JNE         L_2AA404                    ; 2AA3F6/0B04A4
        A_AND       VAR9,#$F0                   ; 2AA3F9/130900F0
        OR          VAR9,#$06                   ; 2AA3FD/13090106
        A_JMP       L_2AA05B                    ; 2AA401/175BA0

L_2AA404:
        A_JMP       L_2AA320                    ; 2AA404/1720A3

L_2AA407:
        ASMCALL     $8E74, WAIT #1              ; 2AA407/D1748E // Check if Y velocity is negative
L_2AA40A:
        JNE         L_2AA407                    ; 2AA40A/0B07A4
        INC2POSE                                ; 2AA40D/90
        LOOP        #8                          ; 2AA40E/0108
            WAIT        #1                          ; 2AA410/0601
L_2AA412:
            MOV         REG,VAR3                    ; 2AA412/1E03
            BREAKEQ     L_2AA422                    ; 2AA414/1422A4
        ENDLOOP                                 ; 2AA417/02
        INC2POSE                                ; 2AA418/90
L_2AA419:
        WAIT        #1                          ; 2AA419/0601
L_2AA41B:
        MOV         REG,VAR3                    ; 2AA41B/1E03
        JNE         L_2AA419                    ; 2AA41D/0B19A4
        ZEROVEL                                 ; 2AA420/38
    A_RTS                                   ; 2AA421/19

L_2AA422:
    INC2POSE                                ; 2AA422/90
    ZEROVEL                                 ; 2AA423/38
    A_RTS                                   ; 2AA424/19

L_2AA425:
    ONTICK      $2AA25B                     ; 2AA425/085BA22A
    ASMCALL     $8851                       ; 2AA429/D05188 // Face towards Kirby
    ASMCALL     $8C53, WAIT #7              ; 2AA42C/D7538C // Set pose (respect facing)
    .byte       $02                         ; 2AA42F/02
    MOV         VAR6,#$00                   ; 2AA430/0D0600
    LOOP        #2                          ; 2AA433/0102
        MOV         REG,VAR6                    ; 2AA435/1E06
        JEQ         L_2AA441                    ; 2AA437/0A41A4
        MOV         REG,VAR6                    ; 2AA43A/1E06
        MOV         VAR1,REG                    ; 2AA43C/1D01
        A_JMP       L_2AA444                    ; 2AA43E/1744A4

L_2AA441:
        ASMCALL     $8851                       ; 2AA441/D05188 // Face towards Kirby
L_2AA444:
        A_JSR       L_2AA49F                    ; 2AA444/189FA4
    ENDLOOP                                 ; 2AA447/02
    ASMCALL     $A492                       ; 2AA448/D092A4
    JNE         L_2AA466                    ; 2AA44B/0B66A4
    LOOP        #2                          ; 2AA44E/0102
        MOV         REG,VAR6                    ; 2AA450/1E06
        JEQ         L_2AA45C                    ; 2AA452/0A5CA4
        MOV         REG,VAR6                    ; 2AA455/1E06
        MOV         VAR1,REG                    ; 2AA457/1D01
        A_JMP       L_2AA45F                    ; 2AA459/175FA4

L_2AA45C:
        ASMCALL     $8851                       ; 2AA45C/D05188 // Face towards Kirby
L_2AA45F:
        A_JSR       L_2AA49F                    ; 2AA45F/189FA4
    ENDLOOP                                 ; 2AA462/02
    A_JMP       L_2AA2A5                    ; 2AA463/17A5A2

L_2AA466:
    ONTICK      $2AA080                     ; 2AA466/0880A02A
    ASMCALL     $8851                       ; 2AA46A/D05188 // Face towards Kirby
    MOV         VAR3,#$20                   ; 2AA46D/0D0320
    SETYVEL     #$FD00                      ; 2AA470/C000FD
    ASMCALL     $E26A                       ; 2AA473/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 2AA476/0001
    ASMCALL     $8C53                       ; 2AA478/D0538C // Set pose (respect facing)
    .byte       $1A                         ; 2AA47B/1A
    A_JSR       L_2AA407                    ; 2AA47C/1807A4
    ADDPOSE     #-30, WAIT #8               ; 2AA47F/68E2
    MOV         REG,VAR9                    ; 2AA481/1E09
    A_AND       REG,#$0F                    ; 2AA483/25000F
    ADD         REG,#-3                     ; 2AA486/2502FD
    JNE         L_2AA48F                    ; 2AA489/0B8FA4
    A_JMP       L_2AA2A5                    ; 2AA48C/17A5A2

L_2AA48F:
    A_JMP       L_2AA320                    ; 2AA48F/1720A3

; CODE OR DATA -- $2AA492 .. $2AA49F
incbinRange "../split/prg/bank2a.bin", $0492, $049F

L_2AA49F:
    MOV         VAR2,#$01                   ; 2AA49F/0D0201
    MOV         VAR6,#$00                   ; 2AA4A2/0D0600
    ASMCALL     $8B7F                       ; 2AA4A5/D07F8B // Unknown ASM $228B7F
    .word       $A4E5                       ; 2AA4A8/E5A4
    ASMCALL     $8829, WAIT #2              ; 2AA4AA/D22988 // Set pose to 0 (respect facing)
L_2AA4AD:
    ADDPOSE     #4, WAIT #6                 ; 2AA4AD/6604
L_2AA4AF:
    ASMCALL     $8BED                       ; 2AA4AF/D0ED8B // Unknown ASM $228BED
    .word       $A4E3                       ; 2AA4B2/E3A4
    MOV         VAR5,REG                    ; 2AA4B4/1D05
    INC2POSE    WAIT #4                     ; 2AA4B6/94
L_2AA4B7:
    INC2POSE    WAIT #3                     ; 2AA4B7/93
L_2AA4B8:
    ASMCALL     $DE4B                       ; 2AA4B8/D04BDE // Play sound effect
    .byte       $38                         ; 2AA4BB/38
    ASMCALL     $A4E9                       ; 2AA4BC/D0E9A4
    JNE         L_2AA4D6                    ; 2AA4BF/0BD6A4
    MOV         REG,VAR6                    ; 2AA4C2/1E06
    JNE         L_2AA4D6                    ; 2AA4C4/0BD6A4
    ADDPOSE     #-8, WAIT #2                ; 2AA4C7/62F8
L_2AA4C9:
    ASMCALL     $9591                       ; 2AA4C9/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 2AA4CC/01
    .byte       $80                         ; 2AA4CD/80
    .byte       $02                         ; 2AA4CE/02
    .byte       $08                         ; 2AA4CF/08
    .byte       $09                         ; 2AA4D0/09
    INC2POSE    WAIT #7                     ; 2AA4D1/97
L_2AA4D2:
    MOV         VAR2,#$00                   ; 2AA4D2/0D0200
    A_RTS                                   ; 2AA4D5/19

L_2AA4D6:
    ASMCALL     $9591                       ; 2AA4D6/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 2AA4D9/01
    .byte       $80                         ; 2AA4DA/80
    .byte       $04                         ; 2AA4DB/04
    .byte       $08                         ; 2AA4DC/08
    .byte       $09                         ; 2AA4DD/09
    INC2POSE    WAIT #15                    ; 2AA4DE/9F
    MOV         VAR2,#$00                   ; 2AA4DF/0D0200
    A_RTS                                   ; 2AA4E2/19

; CODE OR DATA -- $2AA4E3 .. $2AA50C
incbinRange "../split/prg/bank2a.bin", $04E3, $050C

L_2AA50C:
    ONTICK      $2AA080                     ; 2AA50C/0880A02A
    ZEROVEL                                 ; 2AA510/38
    ASMCALL     $8851                       ; 2AA511/D05188 // Face towards Kirby
    ASMCALL_l   $22859F                     ; 2AA514/269F8522 // Unknown ASM $22859F
    .word       $001E                       ; 2AA518/1E00
    A_JSR       L_2AA5D4                    ; 2AA51A/18D4A5
    MOV         VAR3,#$22                   ; 2AA51D/0D0322
    WAIT        #1                          ; 2AA520/0601
    ASMCALL     $8829, WAIT #8              ; 2AA522/D82988 // Set pose to 0 (respect facing)
    INC2POSE    WAIT #4                     ; 2AA525/94
    MOV         VAR3,#$21                   ; 2AA526/0D0321
    SETYVEL     #$FC00                      ; 2AA529/C000FC
    ADDPOSE     #24                         ; 2AA52C/6018
    ASMCALL     $DE4B                       ; 2AA52E/D04BDE // Play sound effect
    .byte       $17                         ; 2AA531/17
    A_JSR       L_2AA407                    ; 2AA532/1807A4
    ASMCALL     $DE4B                       ; 2AA535/D04BDE // Play sound effect
    .byte       $22                         ; 2AA538/22
    A_AND       VAR9,#$F0                   ; 2AA539/130900F0
    OR          VAR9,#$09                   ; 2AA53D/13090109
    A_JMP       L_2AA05B                    ; 2AA541/175BA0

L_2AA544:
    ONTICK      $2AA080                     ; 2AA544/0880A02A
    ASMCALL     $8829                       ; 2AA548/D02988 // Set pose to 0 (respect facing)
    ZEROVEL                                 ; 2AA54B/38
    MOV         REG,VAR3                    ; 2AA54C/1E03
    ADD         REG,#-33                    ; 2AA54E/2502DF
    JEQ         L_2AA55F                    ; 2AA551/0A5FA5
    MOV         VAR3,#$00                   ; 2AA554/0D0300
    ONDRAW      $DA89                       ; 2AA557/2089DA
    ADDPOSE     #50                         ; 2AA55A/6032
    A_JMP       L_2AA575                    ; 2AA55C/1775A5

L_2AA55F:
    MOV         VAR5,#$20                   ; 2AA55F/0D0520
    ASMCALL     $E26A                       ; 2AA562/D06AE2 // Set X velocity (respect facing)
    .word       $FE00                       ; 2AA565/00FE
    MOV         VAR3,#$00                   ; 2AA567/0D0300
    LOOP        #8                          ; 2AA56A/0108
        ASMCALL     $8ED6, WAIT #1              ; 2AA56C/D1D68E
    ENDLOOP                                 ; 2AA56F/02
    ONDRAW      $DA89                       ; 2AA570/2089DA
    ADDPOSE     #50, WAIT #8                ; 2AA573/6832
L_2AA575:
    ASMCALL_l   $22859F                     ; 2AA575/269F8522 // Unknown ASM $22859F
    .word       $001E                       ; 2AA579/1E00
    MOV         VAR6,#$00                   ; 2AA57B/0D0600
    ZEROVEL                                 ; 2AA57E/38
    ASMCALL     $DE4B                       ; 2AA57F/D04BDE // Play sound effect
    .byte       $36                         ; 2AA582/36
    WAIT        #1                          ; 2AA583/0601
L_2AA585:
    INC2POSE    WAIT #1                     ; 2AA585/91
L_2AA586:
    INC2POSE    WAIT #1                     ; 2AA586/91
L_2AA587:
    INC2POSE    WAIT #1                     ; 2AA587/91
L_2AA588:
    ASMCALL     $E26A                       ; 2AA588/D06AE2 // Set X velocity (respect facing)
    .word       $0300                       ; 2AA58B/0003
    LOOP        #6                          ; 2AA58D/0106
        A_JSR       L_2AA5B6                    ; 2AA58F/18B6A5
    ENDLOOP                                 ; 2AA592/02
L_2AA593:
    ASMCALL     $A5BF                       ; 2AA593/D0BFA5
    JNE         L_2AA59F                    ; 2AA596/0B9FA5
    A_JSR       L_2AA5B6                    ; 2AA599/18B6A5
    A_JMP       L_2AA593                    ; 2AA59C/1793A5

L_2AA59F:
    MOV         VAR5,#$20                   ; 2AA59F/0D0520
    MOV         VAR3,#$20                   ; 2AA5A2/0D0320
    ADDPOSE     #10, WAIT #4                ; 2AA5A5/640A
L_2AA5A7:
    INC2POSE    WAIT #4                     ; 2AA5A7/94
L_2AA5A8:
    INC2POSE    WAIT #4                     ; 2AA5A8/94
L_2AA5A9:
    ADDPOSE     #-62, WAIT #4               ; 2AA5A9/64C2
L_2AA5AB:
    A_JSR       L_2AA419                    ; 2AA5AB/1819A4
    ZEROVEL                                 ; 2AA5AE/38
    ADDPOSE     #-8, WAIT #1                ; 2AA5AF/61F8
L_2AA5B1:
    INC2POSE    WAIT #3                     ; 2AA5B1/93
L_2AA5B2:
    DEC2POSE    WAIT #8                     ; 2AA5B2/A8
L_2AA5B3:
    A_JMP       L_2AA2A5                    ; 2AA5B3/17A5A2

L_2AA5B6:
    INC2POSE    WAIT #1                     ; 2AA5B6/91
L_2AA5B7:
    ADDPOSE     #4, WAIT #1                 ; 2AA5B7/6104
L_2AA5B9:
    DEC2POSE    WAIT #1                     ; 2AA5B9/A1
L_2AA5BA:
    ADDPOSE     #4, WAIT #1                 ; 2AA5BA/6104
L_2AA5BC:
    ADDPOSE     #-8                         ; 2AA5BC/60F8
    A_RTS                                   ; 2AA5BE/19

; CODE OR DATA -- $2AA5BF .. $2AA5D4
incbinRange "../split/prg/bank2a.bin", $05BF, $05D4

L_2AA5D4:
    ASMCALL     $DE4B                       ; 2AA5D4/D04BDE // Play sound effect
    .byte       $17                         ; 2AA5D7/17
    ASMCALL     $8C53                       ; 2AA5D8/D0538C // Set pose (respect facing)
    .byte       $0A                         ; 2AA5DB/0A
    MOV         VAR3,#$20                   ; 2AA5DC/0D0320
    SETYVEL     #$FE00                      ; 2AA5DF/C000FE
    ASMCALL     $E26A                       ; 2AA5E2/D06AE2 // Set X velocity (respect facing)
    .word       $FF00                       ; 2AA5E5/00FF
    A_JSR       L_2AA419                    ; 2AA5E7/1819A4
    ASMCALL     $DE4B                       ; 2AA5EA/D04BDE // Play sound effect
    .byte       $22                         ; 2AA5ED/22
    A_RTS                                   ; 2AA5EE/19

L_2AA5EF:
    ASMCALL_l   $22859F                     ; 2AA5EF/269F8522 // Unknown ASM $22859F
    .word       $0015                       ; 2AA5F3/1500
    ONTICK      $2AA080                     ; 2AA5F5/0880A02A
    ASMCALL     $8C53                       ; 2AA5F9/D0538C // Set pose (respect facing)
    .byte       $16                         ; 2AA5FC/16
    ASMCALL     $9340                       ; 2AA5FD/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF00                       ; 2AA600/00FF
    .word       $FE00                       ; 2AA602/00FE
    MOV         VAR3,#$30                   ; 2AA604/0D0330
L_2AA607:
    ASMCALL     $8E74, WAIT #1              ; 2AA607/D1748E // Check if Y velocity is negative
    JNE         L_2AA607                    ; 2AA60A/0B07A6
    SETXVEL     #$0000                      ; 2AA60D/B00000
    A_JSR       L_2AA419                    ; 2AA610/1819A4
    A_JMP       L_2AA2A5                    ; 2AA613/17A5A2

; CODE OR DATA -- $2AA616 .. $2AA62B
incbinRange "../split/prg/bank2a.bin", $0616, $062B

L_2AA62B:
    ZEROVEL                                 ; 2AA62B/38
    ASMCALL     $8851                       ; 2AA62C/D05188 // Face towards Kirby
    MOV         REG,#$30                    ; 2AA62F/1B30
    ASMCALL     $A616                       ; 2AA631/D016A6
    JNE         L_2AA641                    ; 2AA634/0B41A6
    ONTICK      $2AA080                     ; 2AA637/0880A02A
    A_JSR       L_2AA5D4                    ; 2AA63B/18D4A5
    A_JMP       L_2AA665                    ; 2AA63E/1765A6

L_2AA641:
    ONTICK      $2AA25B                     ; 2AA641/085BA22A
    LOOP        #4                          ; 2AA645/0104
        ASMCALL     $8851                       ; 2AA647/D05188 // Face towards Kirby
        A_JSR       L_2AA49F                    ; 2AA64A/189FA4
        MOV         REG,VAR6                    ; 2AA64D/1E06
        BREAKNE     L_2AA65E                    ; 2AA64F/155EA6
        MOV         REG,#$30                    ; 2AA652/1B30
        ASMCALL     $A616                       ; 2AA654/D016A6
        BREAKEQ     L_2AA665                    ; 2AA657/1465A6
    ENDLOOP                                 ; 2AA65A/02
    A_JMP       L_2AA665                    ; 2AA65B/1765A6

L_2AA65E:
    MOV         REG,VAR6                    ; 2AA65E/1E06
    MOV         VAR1,REG                    ; 2AA660/1D01
    A_JSR       L_2AA49F                    ; 2AA662/189FA4
L_2AA665:
    ONTICK      $2AA080                     ; 2AA665/0880A02A
    ZEROVEL                                 ; 2AA669/38
    ASMCALL     $8851                       ; 2AA66A/D05188 // Face towards Kirby
    ASMCALL     $8829, WAIT #6              ; 2AA66D/D62988 // Set pose to 0 (respect facing)
L_2AA670:
    INC2POSE    WAIT #10                    ; 2AA670/9A
L_2AA671:
    ASMCALL     $DE4B                       ; 2AA671/D04BDE // Play sound effect
    .byte       $17                         ; 2AA674/17
    MOV         VAR3,#$20                   ; 2AA675/0D0320
    SETYVEL     #$FD00                      ; 2AA678/C000FD
    ASMCALL     $E26A                       ; 2AA67B/D06AE2 // Set X velocity (respect facing)
    .word       $00C0                       ; 2AA67E/C000
    ADDPOSE     #24                         ; 2AA680/6018
    A_JSR       L_2AA407                    ; 2AA682/1807A4
    ASMCALL     $DE4B                       ; 2AA685/D04BDE // Play sound effect
    .byte       $22                         ; 2AA688/22
    ASMCALL     $8851                       ; 2AA689/D05188 // Face towards Kirby
    ASMCALL     $8C53, WAIT #8              ; 2AA68C/D8538C // Set pose (respect facing)
    .byte       $20                         ; 2AA68F/20
L_2AA690:
    MOV         REG,VAR1                    ; 2AA690/1E01
    A_AND       REG,#$80                    ; 2AA692/250080
    JNE         L_2AA6A6                    ; 2AA695/0BA6A6
    ASMCALL     $DED0                       ; 2AA698/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2AA69B/09
    .byte       $12                         ; 2AA69C/12
    .byte       $4D                         ; 2AA69D/4D
    .byte       $18                         ; 2AA69E/18
    .byte       $00                         ; 2AA69F/00
    .byte       $00                         ; 2AA6A0/00
    .byte       $01                         ; 2AA6A1/01
    .byte       $00                         ; 2AA6A2/00
    A_JMP       L_2AA6B1                    ; 2AA6A3/17B1A6

L_2AA6A6:
    ASMCALL     $DED0                       ; 2AA6A6/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2AA6A9/09
    .byte       $12                         ; 2AA6AA/12
    .byte       $4D                         ; 2AA6AB/4D
    .byte       $E8                         ; 2AA6AC/E8
    .byte       $00                         ; 2AA6AD/00
    .byte       $00                         ; 2AA6AE/00
    .byte       $01                         ; 2AA6AF/01
    .byte       $00                         ; 2AA6B0/00
L_2AA6B1:
    LOOP        #3                          ; 2AA6B1/0103
        WAIT        #4                          ; 2AA6B3/0604
L_2AA6B5:
        ASMCALL     $DE4B                       ; 2AA6B5/D04BDE // Play sound effect
        .byte       $23                         ; 2AA6B8/23
        INC2POSE    WAIT #1                     ; 2AA6B9/91
L_2AA6BA:
        INC2POSE    WAIT #1                     ; 2AA6BA/91
L_2AA6BB:
        INC2POSE    WAIT #4                     ; 2AA6BB/94
L_2AA6BC:
        ADDPOSE     #-6                         ; 2AA6BC/60FA
    ENDLOOP                                 ; 2AA6BE/02
    ADDPOSE     #6, WAIT #8                 ; 2AA6BF/6806
L_2AA6C1:
    A_JSR       L_2AA5D4                    ; 2AA6C1/18D4A5
    A_JMP       L_2AA2A5                    ; 2AA6C4/17A5A2

L_2AA6C7:
    ZEROVEL                                 ; 2AA6C7/38
    ASMCALL     $8851                       ; 2AA6C8/D05188 // Face towards Kirby
    MOV         REG,#$30                    ; 2AA6CB/1B30
    ASMCALL     $A616                       ; 2AA6CD/D016A6
    JNE         L_2AA6E1                    ; 2AA6D0/0BE1A6
    ONTICK      $2AA25B                     ; 2AA6D3/085BA22A
    OR          VAR1,#$80                   ; 2AA6D7/13010180
    A_JSR       L_2AA49F                    ; 2AA6DB/189FA4
    A_JMP       L_2AA70D                    ; 2AA6DE/170DA7

L_2AA6E1:
    MOV         REG,#$50                    ; 2AA6E1/1B50
    ASMCALL     $A616                       ; 2AA6E3/D016A6
    JEQ         L_2AA70D                    ; 2AA6E6/0A0DA7
    ONTICK      $2AA25B                     ; 2AA6E9/085BA22A
    LOOP        #4                          ; 2AA6ED/0104
        ASMCALL     $8851                       ; 2AA6EF/D05188 // Face towards Kirby
        A_JSR       L_2AA49F                    ; 2AA6F2/189FA4
        MOV         REG,VAR6                    ; 2AA6F5/1E06
        BREAKNE     L_2AA706                    ; 2AA6F7/1506A7
        MOV         REG,#$50                    ; 2AA6FA/1B50
        ASMCALL     $A616                       ; 2AA6FC/D016A6
        BREAKEQ     L_2AA70D                    ; 2AA6FF/140DA7
    ENDLOOP                                 ; 2AA702/02
    A_JMP       L_2AA70D                    ; 2AA703/170DA7

L_2AA706:
    MOV         REG,VAR6                    ; 2AA706/1E06
    MOV         VAR1,REG                    ; 2AA708/1D01
    A_JSR       L_2AA49F                    ; 2AA70A/189FA4
L_2AA70D:
    MOV         VAR2,#$01                   ; 2AA70D/0D0201
    ONTICK      $2AA080                     ; 2AA710/0880A02A
    ZEROVEL                                 ; 2AA714/38
    ASMCALL     $8851                       ; 2AA715/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 2AA718/D02988 // Set pose to 0 (respect facing)
    WAIT        #24                         ; 2AA71B/0618
L_2AA71D:
    INC2POSE    WAIT #8                     ; 2AA71D/98
L_2AA71E:
    ASMCALL     $DE4B                       ; 2AA71E/D04BDE // Play sound effect
    .byte       $17                         ; 2AA721/17
    MOV         VAR3,#$20                   ; 2AA722/0D0320
    SETYVEL     #$FC00                      ; 2AA725/C000FC
    ASMCALL     $E26A                       ; 2AA728/D06AE2 // Set X velocity (respect facing)
    .word       $0200                       ; 2AA72B/0002
    ADDPOSE     #24                         ; 2AA72D/6018
L_2AA72F:
    ASMCALL     $8E74, WAIT #1              ; 2AA72F/D1748E // Check if Y velocity is negative
L_2AA732:
    JNE         L_2AA72F                    ; 2AA732/0B2FA7
    ZEROVEL                                 ; 2AA735/38
    WAIT        #6                          ; 2AA736/0606
L_2AA738:
    INC2POSE    WAIT #6                     ; 2AA738/96
L_2AA739:
    MOV         VAR3,#$01                   ; 2AA739/0D0301
    SETYVEL     #$0600                      ; 2AA73C/C00006
    INC2POSE                                ; 2AA73F/90
L_2AA740:
    WAIT        #1                          ; 2AA740/0601
L_2AA742:
    MOV         REG,VAR3                    ; 2AA742/1E03
    JNE         L_2AA740                    ; 2AA744/0B40A7
    MOV         VAR2,#$00                   ; 2AA747/0D0200
    ASMCALL_l   $22859F                     ; 2AA74A/269F8522 // Unknown ASM $22859F
    .word       $0015                       ; 2AA74E/1500
    ZEROVEL                                 ; 2AA750/38
    ADDPOSE     #-6                         ; 2AA751/60FA
    ASMCALL     $A76D                       ; 2AA753/D06DA7
    ASMCALL     $8BE4                       ; 2AA756/D0E48B // Unknown ASM $228BE4
    .word       $A76B                       ; 2AA759/6BA7
L_2AA75B:
    LOOP        #8                          ; 2AA75B/0108
        SETYVEL     #$FE00, WAIT #1             ; 2AA75D/C100FE
L_2AA760:
        SETYVEL     #$0200, WAIT #1             ; 2AA760/C10002
L_2AA763:
    ENDLOOP                                 ; 2AA763/02
    ZEROVEL                                 ; 2AA764/38
    DEC2POSE    WAIT #4                     ; 2AA765/A4
L_2AA766:
    ADDPOSE     #-22, WAIT #8               ; 2AA766/68EA
L_2AA768:
    A_JMP       L_2AA2A5                    ; 2AA768/17A5A2

; CODE OR DATA -- $2AA76B .. $2AA78C
incbinRange "../split/prg/bank2a.bin", $076B, $078C

L_2AA78C:
    MOV         VAR2,#$00                   ; 2AA78C/0D0200
    MOV         VAR4,#$00                   ; 2AA78F/0D0400
    ZEROVEL                                 ; 2AA792/38
    ASMCALL     $E2F1, WAIT #1              ; 2AA793/D1F1E2 // Unknown ASM $E2F1
    _is_faraddr $29A589                     ; 2AA796/89A529
    ASMCALL     $A7FC                       ; 2AA799/D0FCA7
    ENDTASK                                 ; 2AA79C/0C

; CODE OR DATA -- $2AA79D .. $2AA819
incbinRange "../split/prg/bank2a.bin", $079D, $0819

Script49_GrandWheelie:
    SETBANK     #$22                        ; 2AA819/2822
    MOV         REG,VAR0                    ; 2AA81B/1E00
    TABLEJMP    #2                          ; 2AA81D/0F02
    .word       L_2AA823                    ; 2AA81F/23A8
    .word       L_2AA9EB                    ; 2AA821/EBA9
L_2AA823:
    ONPOSITION  $DA09                       ; 2AA823/2109DA
    ASMCALL     $84A4                       ; 2AA826/D0A484 // Store VAR1 in $0784[self]
    SPRITEMAP   L_338000                     ; 2AA829/1A008033
    ASMCALL     $AB37                       ; 2AA82D/D037AB
    TASK        L_2AAA8F                    ; 2AA830/078FAA
    ONTICK      $2AAB49                     ; 2AA833/0849AB2A
    HALT                                    ; 2AA837/09

L_2AA838:
    ZEROVEL                                 ; 2AA838/38
    ONTICK      $2AAF85                     ; 2AA839/0885AF2A
    WAIT        #1                          ; 2AA83D/0601
L_2AA83F:
    ONTICK      $2AAB8E                     ; 2AA83F/088EAB2A
    ASMCALL     $AB68                       ; 2AA843/D068AB
    JNE         L_2AA850                    ; 2AA846/0B50A8
    TASK        L_2AAA83                    ; 2AA849/0783AA
    TASK        L_2AAA8F                    ; 2AA84C/078FAA
    HALT                                    ; 2AA84F/09

L_2AA850:
    MOV         VAR5,#$00                   ; 2AA850/0D0500
    A_JSR       L_2AAA2F                    ; 2AA853/182FAA
    HALT                                    ; 2AA856/09

L_2AA857:
    ZEROVEL                                 ; 2AA857/38
    ASMCALL     $8851                       ; 2AA858/D05188 // Face towards Kirby
    ONTICK      $2AABAE                     ; 2AA85B/08AEAB2A
    MOV         VAR5,#$01                   ; 2AA85F/0D0501
    A_JSR       L_2AAA32                    ; 2AA862/1832AA
    ASMCALL     $B0AE                       ; 2AA865/D0AEB0
    JNE         L_2AA871                    ; 2AA868/0B71A8
    A_JSR       L_2AA87B                    ; 2AA86B/187BA8
    A_JMP       L_2AA877                    ; 2AA86E/1777A8

L_2AA871:
    LOOP        #3                          ; 2AA871/0103
        A_JSR       L_2AA87B                    ; 2AA873/187BA8
    ENDLOOP                                 ; 2AA876/02
L_2AA877:
    MOV         VAR5,#$FF                   ; 2AA877/0D05FF
    HALT                                    ; 2AA87A/09

L_2AA87B:
    SETYVEL     #$FB00                      ; 2AA87B/C000FB
    A_JSR       L_2AAA24                    ; 2AA87E/1824AA
    ZEROVEL                                 ; 2AA881/38
    A_JSR       L_2AAB07                    ; 2AA882/1807AB
    A_RTS                                   ; 2AA885/19

L_2AA886:
    ZEROVEL                                 ; 2AA886/38
    ONTICK      $2AAF85                     ; 2AA887/0885AF2A
    WAIT        #1                          ; 2AA88B/0601
L_2AA88D:
    ASMCALL     $8851                       ; 2AA88D/D05188 // Face towards Kirby
    ASMCALL     $8EFB                       ; 2AA890/D0FB8E // Unknown ASM $228EFB
    .byte       $4F                         ; 2AA893/4F
    MOV         VAR5,#$02                   ; 2AA894/0D0502
    A_JSR       L_2AAA32                    ; 2AA897/1832AA
    ONTICK      $2AABEA                     ; 2AA89A/08EAAB2A
    MOV         VAR6,#$FF                   ; 2AA89E/0D06FF
    WAIT        #45                         ; 2AA8A1/062D
L_2AA8A3:
    MOV         VAR6,#$01                   ; 2AA8A3/0D0601
    ASMCALL     $AD09                       ; 2AA8A6/D009AD
    ASMCALL     $8CAA                       ; 2AA8A9/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0180                       ; 2AA8AC/8001
    MOV         VAR8,#$FF                   ; 2AA8AE/0D08FF
    ENDLASTTASK                             ; 2AA8B1/12
    ASMCALL     $8C53                       ; 2AA8B2/D0538C // Set pose (respect facing)
    .byte       $03                         ; 2AA8B5/03
L_2AA8B6:
    WAIT        VAR6                        ; 2AA8B6/1F06
L_2AA8B8:
    INC2POSE                                ; 2AA8B8/90
    WAIT        VAR6                        ; 2AA8B9/1F06
L_2AA8BB:
    ASMCALL     $8851                       ; 2AA8BB/D05188 // Face towards Kirby
    INC2POSE                                ; 2AA8BE/90
    WAIT        VAR6                        ; 2AA8BF/1F06
L_2AA8C1:
    INC2POSE                                ; 2AA8C1/90
    WAIT        VAR6                        ; 2AA8C2/1F06
L_2AA8C4:
    ASMCALL     $8851                       ; 2AA8C4/D05188 // Face towards Kirby
    DEC2POSE                                ; 2AA8C7/A0
    DEC2POSE                                ; 2AA8C8/A0
    DEC2POSE                                ; 2AA8C9/A0
    A_JMP       L_2AA8B6                    ; 2AA8CA/17B6A8

L_2AA8CD:
    A_JSR       L_2AAB07                    ; 2AA8CD/1807AB
    TASK        L_2AAAB7                    ; 2AA8D0/07B7AA
    SETYVEL     #$FD00                      ; 2AA8D3/C000FD
    ASMCALL     $8CAA                       ; 2AA8D6/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF00                       ; 2AA8D9/00FF
    ONTICK      $2AACA7                     ; 2AA8DB/08A7AC2A
    MOV         VAR5,#$FF                   ; 2AA8DF/0D05FF
    MOV         VAR6,#$25                   ; 2AA8E2/0D0625
L_2AA8E5:
    WAIT        #1                          ; 2AA8E5/0601
L_2AA8E7:
    MOV         REG,VAR5                    ; 2AA8E7/1E05
    JNE         L_2AA8E5                    ; 2AA8E9/0BE5A8
    ENDLASTTASK                             ; 2AA8EC/12
    TASK        L_2AAACD                    ; 2AA8ED/07CDAA
    A_JSR       L_2AAB01                    ; 2AA8F0/1801AB
    SETYVEL     #$FE00                      ; 2AA8F3/C000FE
    ASMCALL     $8CAA                       ; 2AA8F6/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF80                       ; 2AA8F9/80FF
    MOV         VAR6,#$25                   ; 2AA8FB/0D0625
    A_JSR       L_2AAA24                    ; 2AA8FE/1824AA
    SETYVEL     #$FF00                      ; 2AA901/C000FF
    A_JSR       L_2AAA24                    ; 2AA904/1824AA
    ONTICK      $2AACED                     ; 2AA907/08EDAC2A
    MOV         VAR6,#$1E                   ; 2AA90B/0D061E
    HALT                                    ; 2AA90E/09

L_2AA90F:
    ONTICK      $2AAF85                     ; 2AA90F/0885AF2A
    MOV         VAR5,#$00                   ; 2AA913/0D0500
    A_JSR       L_2AAA5D                    ; 2AA916/185DAA
    ONTICK      $2AAD23                     ; 2AA919/0823AD2A
    MOV         VAR6,#$3C                   ; 2AA91D/0D063C
    HALT                                    ; 2AA920/09

L_2AA921:
    ONTICK      $2AAF85                     ; 2AA921/0885AF2A
    A_JSR       L_2AAA5D                    ; 2AA925/185DAA
    ONTICK      $2AAD46                     ; 2AA928/0846AD2A
    HALT                                    ; 2AA92C/09

L_2AA92D:
    OR          VAR3,#$10                   ; 2AA92D/13030110
    ASMCALL     $84CF                       ; 2AA931/D0CF84
    MOV         VAR5,#$02                   ; 2AA934/0D0502
    A_JSR       L_2AAA4C                    ; 2AA937/184CAA
    MOV         VAR5,#$00                   ; 2AA93A/0D0500
    ONTICK      $2AAD58                     ; 2AA93D/0858AD2A
    WAIT        #30                         ; 2AA941/061E
L_2AA943:
    ENDLASTTASK                             ; 2AA943/12
    ENDLASTTASK                             ; 2AA944/12
    MOV         VAR5,#$02                   ; 2AA945/0D0502
    A_JSR       L_2AAA32                    ; 2AA948/1832AA
    ASMCALL     $8CAA                       ; 2AA94B/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0180                       ; 2AA94E/8001
    MOV         VAR5,#$01                   ; 2AA950/0D0501
    WAIT        #30                         ; 2AA953/061E
L_2AA955:
    ENDLASTTASK                             ; 2AA955/12
    ASMCALL     $84CF                       ; 2AA956/D0CF84
    MOV         VAR5,#$02                   ; 2AA959/0D0502
    A_JSR       L_2AAA4C                    ; 2AA95C/184CAA
    MOV         VAR5,#$00                   ; 2AA95F/0D0500
    WAIT        #30                         ; 2AA962/061E
L_2AA964:
    MOV         VAR5,#$FF                   ; 2AA964/0D05FF
    HALT                                    ; 2AA967/09

L_2AA968:
    ZEROVEL                                 ; 2AA968/38
    ASMCALL     $8EFB                       ; 2AA969/D0FB8E // Unknown ASM $228EFB
    .byte       $17                         ; 2AA96C/17
    ONTICK      $2AAD7F                     ; 2AA96D/087FAD2A
    TASK        L_2AA992                    ; 2AA971/0792A9
    SETYVEL     #$FD00                      ; 2AA974/C000FD
    A_JSR       L_2AAA24                    ; 2AA977/1824AA
    ASMCALL     $8EFB                       ; 2AA97A/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AA97D/22
    SETYVEL     #$FE80                      ; 2AA97E/C080FE
    A_JSR       L_2AAA24                    ; 2AA981/1824AA
    MOV         VAR5,#$80                   ; 2AA984/0D0580
    WAIT        #16                         ; 2AA987/0610
L_2AA989:
    ASMCALL     $ADB4                       ; 2AA989/D0B4AD
    WAIT        #20                         ; 2AA98C/0614
L_2AA98E:
    MOV         VAR5,#$FF                   ; 2AA98E/0D05FF
    HALT                                    ; 2AA991/09

L_2AA992:
    ASMCALL     $8C53, WAIT #4              ; 2AA992/D4538C // Set pose (respect facing)
    .byte       $1B                         ; 2AA995/1B
L_2AA996:
    INC2POSE    WAIT #2                     ; 2AA996/92
L_2AA997:
    INC2POSE    WAIT #1                     ; 2AA997/91
L_2AA998:
    INC2POSE    WAIT #1                     ; 2AA998/91
L_2AA999:
    A_JMP       L_2AA992                    ; 2AA999/1792A9

L_2AA99C:
    MOV         VAR0,#$00                   ; 2AA99C/0D0000
    ASMCALL     $E6E8                       ; 2AA99F/D0E8E6
    ASMCALL     $8FC6                       ; 2AA9A2/D0C68F // Unknown ASM $228FC6
    .byte       $0B                         ; 2AA9A5/0B
    ASMCALL     $859F                       ; 2AA9A6/D09F85 // Unknown ASM $22859F
    .word       $0018                       ; 2AA9A9/1800
    ASMCALL     $8851                       ; 2AA9AB/D05188 // Face towards Kirby
    TASK        L_2AAAB7                    ; 2AA9AE/07B7AA
    ONTICK      $2AADC8                     ; 2AA9B1/08C8AD2A
    A_JSR       L_2AAB0D                    ; 2AA9B5/180DAB
    ENDLASTTASK                             ; 2AA9B8/12
    MOV         VAR5,#$00                   ; 2AA9B9/0D0500
    TASK        L_2AAACD                    ; 2AA9BC/07CDAA
    ASMCALL     $84CF                       ; 2AA9BF/D0CF84
    ONTICK      $2AADF5                     ; 2AA9C2/08F5AD2A
    TASK        L_2AAAE2                    ; 2AA9C6/07E2AA
    A_JSR       L_2AAB2B                    ; 2AA9C9/182BAB
    HALT                                    ; 2AA9CC/09

L_2AA9CD:
    TASK        L_2AAACD                    ; 2AA9CD/07CDAA
    ONTICK      $2AAE20                     ; 2AA9D0/0820AE2A
L_2AA9D4:
    ASMCALL     $DED0                       ; 2AA9D4/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2AA9D7/09
    .byte       $12                         ; 2AA9D8/12
    .byte       $08                         ; 2AA9D9/08
    .byte       $00                         ; 2AA9DA/00
    .byte       $08                         ; 2AA9DB/08
    .byte       $00                         ; 2AA9DC/00
    .byte       $01                         ; 2AA9DD/01
    .byte       $00                         ; 2AA9DE/00
    MOV         VAR6,#$D2                   ; 2AA9DF/0D06D2
L_2AA9E2:
    SETYVEL     #$0080, WAIT #2             ; 2AA9E2/C28000
L_2AA9E5:
    SETYVEL     #$FF80, WAIT #2             ; 2AA9E5/C280FF
L_2AA9E8:
    A_JMP       L_2AA9E2                    ; 2AA9E8/17E2A9

L_2AA9EB:
    ONPOSITION  $D9BB                       ; 2AA9EB/21BBD9
    SPRITEMAP   L_309AA9                     ; 2AA9EE/1AA99A30
    SETZPOS     #$0081                      ; 2AA9F2/3A8100
    ASMCALL     $8851                       ; 2AA9F5/D05188 // Face towards Kirby
    TASK        L_2AAAED                    ; 2AA9F8/07EDAA
    ASMCALL     $8EFB                       ; 2AA9FB/D0FB8E // Unknown ASM $228EFB
    .byte       $1A                         ; 2AA9FE/1A
    MOV         VAR7,#$00                   ; 2AA9FF/0D0700
    ONTICK      $2AAE3E                     ; 2AAA02/083EAE2A
    ZEROVEL                                 ; 2AAA06/38
    ASMCALL     $8BC0                       ; 2AAA07/D0C08B // Unknown ASM $228BC0
    .word       $AA20                       ; 2AAA0A/20AA
    ASMCALL     $8CAA                       ; 2AAA0C/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0180                       ; 2AAA0F/8001
    A_JSR       L_2AAA24                    ; 2AAA11/1824AA
    MOV         VAR5,#$01                   ; 2AAA14/0D0501
    ENDLASTTASK                             ; 2AAA17/12
    TASK        L_2AAAF7                    ; 2AAA18/07F7AA
    ASMCALL     $8EFB                       ; 2AAA1B/D0FB8E // Unknown ASM $228EFB
    .byte       $4F                         ; 2AAA1E/4F
    HALT                                    ; 2AAA1F/09

; CODE OR DATA -- $2AAA20 .. $2AAA24
incbinRange "../split/prg/bank2a.bin", $0A20, $0A24

L_2AAA24:
    MOV         VAR5,#$00                   ; 2AAA24/0D0500
L_2AAA27:
    WAIT        #1                          ; 2AAA27/0601
L_2AAA29:
    MOV         REG,VAR5                    ; 2AAA29/1E05
    JEQ         L_2AAA27                    ; 2AAA2B/0A27AA
    A_RTS                                   ; 2AAA2E/19

L_2AAA2F:
    TASK        L_2AAA83                    ; 2AAA2F/0783AA
L_2AAA32:
    ASMCALL     $8C53                       ; 2AAA32/D0538C // Set pose (respect facing)
    .byte       $03                         ; 2AAA35/03
    MOV         REG,VAR5                    ; 2AAA36/1E05
    TABLEJMP    #3                          ; 2AAA38/0F03
    .word       L_2AAA40                    ; 2AAA3A/40AA
    .word       L_2AAA44                    ; 2AAA3C/44AA
    .word       L_2AAA48                    ; 2AAA3E/48AA
L_2AAA40:
    TASK        L_2AAAAC                    ; 2AAA40/07ACAA
    A_RTS                                   ; 2AAA43/19

L_2AAA44:
    TASK        L_2AAAA1                    ; 2AAA44/07A1AA
    A_RTS                                   ; 2AAA47/19

L_2AAA48:
    TASK        L_2AAA96                    ; 2AAA48/0796AA
    A_RTS                                   ; 2AAA4B/19

L_2AAA4C:
    A_JSR       L_2AAA7B                    ; 2AAA4C/187BAA
    ASMCALL     $8C53                       ; 2AAA4F/D0538C // Set pose (respect facing)
    .byte       $13                         ; 2AAA52/13
    MOV         REG,VAR5                    ; 2AAA53/1E05
    TABLEJMP    #3                          ; 2AAA55/0F03
    .word       L_2AAA6F                    ; 2AAA57/6FAA
    .word       L_2AAA73                    ; 2AAA59/73AA
    .word       L_2AAA77                    ; 2AAA5B/77AA
L_2AAA5D:
    A_JSR       L_2AAA7B                    ; 2AAA5D/187BAA
    ASMCALL     $8C53                       ; 2AAA60/D0538C // Set pose (respect facing)
    .byte       $0B                         ; 2AAA63/0B
    ASMCALL     $AEB7                       ; 2AAA64/D0B7AE
    TABLEJMP    #3                          ; 2AAA67/0F03
    .word       L_2AAA6F                    ; 2AAA69/6FAA
    .word       L_2AAA73                    ; 2AAA6B/73AA
    .word       L_2AAA77                    ; 2AAA6D/77AA
L_2AAA6F:
    TASK        L_2AAAAC                    ; 2AAA6F/07ACAA
    A_RTS                                   ; 2AAA72/19

L_2AAA73:
    TASK        L_2AAAA1                    ; 2AAA73/07A1AA
    A_RTS                                   ; 2AAA76/19

L_2AAA77:
    TASK        L_2AAA96                    ; 2AAA77/0796AA
    A_RTS                                   ; 2AAA7A/19

L_2AAA7B:
    TASK        L_2AAAD7                    ; 2AAA7B/07D7AA
    ASMCALL     $8EFB                       ; 2AAA7E/D0FB8E // Unknown ASM $228EFB
    .byte       $50                         ; 2AAA81/50
    A_RTS                                   ; 2AAA82/19

L_2AAA83:
    ASMCALL     $91A9                       ; 2AAA83/D0A991
L_2AAA86:
    SETXVEL     #$FF00, WAIT #2             ; 2AAA86/B200FF
L_2AAA89:
    SETXVEL     #$0100, WAIT #2             ; 2AAA89/B20001
L_2AAA8C:
    A_JMP       L_2AAA86                    ; 2AAA8C/1786AA

L_2AAA8F:
    SETPOSE     #$00, WAIT #15              ; 2AAA8F/5F00
L_2AAA91:
    INCPOSE     WAIT #15                    ; 2AAA91/7F
L_2AAA92:
    DECPOSE     WAIT #15                    ; 2AAA92/8F
L_2AAA93:
    A_JMP       L_2AAA91                    ; 2AAA93/1791AA

L_2AAA96:
    WAIT        #1                          ; 2AAA96/0601
L_2AAA98:
    INC2POSE    WAIT #1                     ; 2AAA98/91
L_2AAA99:
    INC2POSE    WAIT #1                     ; 2AAA99/91
L_2AAA9A:
    INC2POSE    WAIT #1                     ; 2AAA9A/91
L_2AAA9B:
    DEC2POSE                                ; 2AAA9B/A0
    DEC2POSE                                ; 2AAA9C/A0
    DEC2POSE                                ; 2AAA9D/A0
    A_JMP       L_2AAA96                    ; 2AAA9E/1796AA

L_2AAAA1:
    WAIT        #2                          ; 2AAAA1/0602
L_2AAAA3:
    INC2POSE    WAIT #2                     ; 2AAAA3/92
L_2AAAA4:
    INC2POSE    WAIT #2                     ; 2AAAA4/92
L_2AAAA5:
    INC2POSE    WAIT #2                     ; 2AAAA5/92
L_2AAAA6:
    DEC2POSE                                ; 2AAAA6/A0
    DEC2POSE                                ; 2AAAA7/A0
    DEC2POSE                                ; 2AAAA8/A0
    A_JMP       L_2AAAA1                    ; 2AAAA9/17A1AA

L_2AAAAC:
    WAIT        #4                          ; 2AAAAC/0604
L_2AAAAE:
    INC2POSE    WAIT #4                     ; 2AAAAE/94
L_2AAAAF:
    INC2POSE    WAIT #4                     ; 2AAAAF/94
L_2AAAB0:
    INC2POSE    WAIT #4                     ; 2AAAB0/94
L_2AAAB1:
    DEC2POSE                                ; 2AAAB1/A0
    DEC2POSE                                ; 2AAAB2/A0
    DEC2POSE                                ; 2AAAB3/A0
    A_JMP       L_2AAAAC                    ; 2AAAB4/17ACAA

L_2AAAB7:
    ASMCALL     $8C53, WAIT #8              ; 2AAAB7/D8538C // Set pose (respect facing)
    .byte       $23                         ; 2AAABA/23
L_2AAABB:
    INC2POSE    WAIT #8                     ; 2AAABB/98
L_2AAABC:
    INC2POSE    WAIT #8                     ; 2AAABC/98
L_2AAABD:
    INC2POSE    WAIT #8                     ; 2AAABD/98
L_2AAABE:
    INC2POSE    WAIT #8                     ; 2AAABE/98
L_2AAABF:
    ADD         VAR1,#-128                  ; 2AAABF/13010280
L_2AAAC3:
    ASMCALL     $8C53, WAIT #4              ; 2AAAC3/D4538C // Set pose (respect facing)
    .byte       $2D                         ; 2AAAC6/2D
L_2AAAC7:
    INC2POSE    WAIT #4                     ; 2AAAC7/94
L_2AAAC8:
    INC2POSE    WAIT #4                     ; 2AAAC8/94
L_2AAAC9:
    INC2POSE    WAIT #4                     ; 2AAAC9/94
L_2AAACA:
    A_JMP       L_2AAAC3                    ; 2AAACA/17C3AA

L_2AAACD:
    ASMCALL     $8C53, WAIT #8              ; 2AAACD/D8538C // Set pose (respect facing)
    .byte       $1B                         ; 2AAAD0/1B
L_2AAAD1:
    INC2POSE    WAIT #8                     ; 2AAAD1/98
L_2AAAD2:
    INC2POSE    WAIT #4                     ; 2AAAD2/94
L_2AAAD3:
    INC2POSE    WAIT #4                     ; 2AAAD3/94
L_2AAAD4:
    A_JMP       L_2AAACD                    ; 2AAAD4/17CDAA

L_2AAAD7:
    ASMCALL     $9591, WAIT #8              ; 2AAAD7/D89195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $00                         ; 2AAADA/00
    .byte       $00                         ; 2AAADB/00
    .byte       $01                         ; 2AAADC/01
    .byte       $04                         ; 2AAADD/04
    .byte       $0C                         ; 2AAADE/0C
L_2AAADF:
    A_JMP       L_2AAAD7                    ; 2AAADF/17D7AA

L_2AAAE2:
    ASMCALL     $9591, WAIT #4              ; 2AAAE2/D49195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 2AAAE5/01
    .byte       $00                         ; 2AAAE6/00
    .byte       $01                         ; 2AAAE7/01
    .byte       $08                         ; 2AAAE8/08
    .byte       $0A                         ; 2AAAE9/0A
L_2AAAEA:
    A_JMP       L_2AAAE2                    ; 2AAAEA/17E2AA

L_2AAAED:
    SETPOSE     #$00                        ; 2AAAED/5000
    ASMCALL     $8829, WAIT #4              ; 2AAAEF/D42988 // Set pose to 0 (respect facing)
L_2AAAF2:
    INC2POSE    WAIT #4                     ; 2AAAF2/94
L_2AAAF3:
    DEC2POSE    WAIT #4                     ; 2AAAF3/A4
L_2AAAF4:
    A_JMP       L_2AAAF2                    ; 2AAAF4/17F2AA

L_2AAAF7:
    SETPOSE     #$00                        ; 2AAAF7/5000
    ASMCALL     $8829, WAIT #2              ; 2AAAF9/D22988 // Set pose to 0 (respect facing)
L_2AAAFC:
    INC2POSE    WAIT #2                     ; 2AAAFC/92
L_2AAAFD:
    DEC2POSE    WAIT #2                     ; 2AAAFD/A2
L_2AAAFE:
    A_JMP       L_2AAAFC                    ; 2AAAFE/17FCAA

L_2AAB01:
    ASMCALL     $859F                       ; 2AAB01/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 2AAB04/0C00
    A_RTS                                   ; 2AAB06/19

L_2AAB07:
    ASMCALL     $859F                       ; 2AAB07/D09F85 // Unknown ASM $22859F
    .word       $0015                       ; 2AAB0A/1500
    A_RTS                                   ; 2AAB0C/19

L_2AAB0D:
    ASMCALL     $8EFB                       ; 2AAB0D/D0FB8E // Unknown ASM $228EFB
    .byte       $40                         ; 2AAB10/40
    ASMCALL     $8CAA                       ; 2AAB11/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF00                       ; 2AAB14/00FF
    SETYVEL     #$FD00                      ; 2AAB16/C000FD
    A_JSR       L_2AAA24                    ; 2AAB19/1824AA
    A_JSR       L_2AAB01                    ; 2AAB1C/1801AB
    ASMCALL     $DED0                       ; 2AAB1F/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2AAB22/09
    .byte       $12                         ; 2AAB23/12
    .byte       $08                         ; 2AAB24/08
    .byte       $00                         ; 2AAB25/00
    .byte       $08                         ; 2AAB26/08
    .byte       $00                         ; 2AAB27/00
    .byte       $01                         ; 2AAB28/01
    .byte       $00                         ; 2AAB29/00
    A_RTS                                   ; 2AAB2A/19

L_2AAB2B:
    ASMCALL     $8CAA                       ; 2AAB2B/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF80                       ; 2AAB2E/80FF
    A_JSR       L_2AAB07                    ; 2AAB30/1807AB
    MOV         VAR6,#$20                   ; 2AAB33/0D0620
    A_RTS                                   ; 2AAB36/19

; CODE OR DATA -- $2AAB37 .. $2AB0B3
incbinRange "../split/prg/bank2a.bin", $0B37, $10B3

Script4F_MrTickTock:
    SETBANK     #$22                        ; 2AB0B3/2822
    MOV         REG,VAR0                    ; 2AB0B5/1E00
    TABLEJMP    #3                          ; 2AB0B7/0F03
    .word       L_2AB0BF                    ; 2AB0B9/BFB0
    .word       L_2AB3AD                    ; 2AB0BB/ADB3
    .word       L_2AB3D5                    ; 2AB0BD/D5B3
L_2AB0BF:
    ONPOSITION  $DA09                       ; 2AB0BF/2109DA
    MOV         VAR0,#$19                   ; 2AB0C2/0D0019
    ASMCALL     $84A4                       ; 2AB0C5/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR8,#$FF                   ; 2AB0C8/0D08FF
    SPRITEMAP   L_339E5A                     ; 2AB0CB/1A5A9E33
    ASMCALL     $B401                       ; 2AB0CF/D001B4
    ZEROVEL                                 ; 2AB0D2/38
    ONTICK      $2AB425                     ; 2AB0D3/0825B42A
    HALT                                    ; 2AB0D7/09

L_2AB0D8:
    ZEROVEL                                 ; 2AB0D8/38
    ONTICK      $2AB448                     ; 2AB0D9/0848B42A
    WAIT        #1                          ; 2AB0DD/0601
L_2AB0DF:
    ONTICK      $2AB453                     ; 2AB0DF/0853B42A
    HALT                                    ; 2AB0E3/09

; CODE OR DATA -- $2AB0E4 .. $2AB0ED
incbinRange "../split/prg/bank2a.bin", $10E4, $10ED

L_2AB0ED:
    ZEROVEL                                 ; 2AB0ED/38
    ASMCALL     $B50B                       ; 2AB0EE/D00BB5
    ONTICK      $2AB4EF                     ; 2AB0F1/08EFB42A
    HALT                                    ; 2AB0F5/09

L_2AB0F6:
    MOV         VAR6,#$C8                   ; 2AB0F6/0D06C8
    ASMCALL     $8C53                       ; 2AB0F9/D0538C // Set pose (respect facing)
    .byte       $03                         ; 2AB0FC/03
    ASMCALL     $8CAA                       ; 2AB0FD/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF40                       ; 2AB100/40FF
    ONTICK      $2AB529                     ; 2AB102/0829B52A
    INC2POSE    WAIT #15                    ; 2AB106/9F
L_2AB107:
    ASMCALL     $8EFB                       ; 2AB107/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB10A/22
    DEC2POSE    WAIT #15                    ; 2AB10B/AF
L_2AB10C:
    WAIT        #8                          ; 2AB10C/0608
    ASMCALL     $8EFB                       ; 2AB10E/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB111/22
L_2AB112:
    ASMCALL     $B9C6                       ; 2AB112/D0C6B9
    A_JSR       L_2AB14D                    ; 2AB115/184DB1
    INC2POSE    WAIT #15                    ; 2AB118/9F
    ASMCALL     $8EFB                       ; 2AB119/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB11C/22
    ASMCALL     $B9C6                       ; 2AB11D/D0C6B9
    DEC2POSE    WAIT #15                    ; 2AB120/AF
    ASMCALL     $8EFB                       ; 2AB121/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB124/22
    A_JSR       L_2AB14D                    ; 2AB125/184DB1
    A_JMP       L_2AB112                    ; 2AB128/1712B1

L_2AB12B:
    ONTICK      $2AB529                     ; 2AB12B/0829B52A
    WAIT        #16                         ; 2AB12F/0610
L_2AB131:
    A_JSR       L_2AB14D                    ; 2AB131/184DB1
L_2AB134:
    ASMCALL     $B9C6                       ; 2AB134/D0C6B9
    A_JSR       L_2AB14D                    ; 2AB137/184DB1
    INC2POSE    WAIT #15                    ; 2AB13A/9F
    ASMCALL     $8EFB                       ; 2AB13B/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB13E/22
    ASMCALL     $B9C6                       ; 2AB13F/D0C6B9
    DEC2POSE    WAIT #15                    ; 2AB142/AF
    ASMCALL     $8EFB                       ; 2AB143/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB146/22
    A_JSR       L_2AB14D                    ; 2AB147/184DB1
    A_JMP       L_2AB134                    ; 2AB14A/1734B1

L_2AB14D:
    INC2POSE    WAIT #15                    ; 2AB14D/9F
L_2AB14E:
    ASMCALL     $8EFB                       ; 2AB14E/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB151/22
    DEC2POSE    WAIT #15                    ; 2AB152/AF
    ASMCALL     $8EFB                       ; 2AB153/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB156/22
    INC2POSE    WAIT #15                    ; 2AB157/9F
    ASMCALL     $8EFB                       ; 2AB158/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB15B/22
    DEC2POSE    WAIT #15                    ; 2AB15C/AF
    ASMCALL     $8EFB                       ; 2AB15D/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB160/22
    A_RTS                                   ; 2AB161/19

; CODE OR DATA -- $2AB162 .. $2AB198
incbinRange "../split/prg/bank2a.bin", $1162, $1198

L_2AB198:
    ZEROVEL                                 ; 2AB198/38
    MOV         VAR5,#$FF                   ; 2AB199/0D05FF
    MOV         VAR6,#$FF                   ; 2AB19C/0D06FF
    ASMCALL     $8851                       ; 2AB19F/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 2AB1A2/D0538C // Set pose (respect facing)
    .byte       $07                         ; 2AB1A5/07
    ONTICK      $2AB5BB                     ; 2AB1A6/08BBB52A
    WAIT        #16                         ; 2AB1AA/0610
L_2AB1AC:
    ASMCALL     $8EFB                       ; 2AB1AC/D0FB8E // Unknown ASM $228EFB
    .byte       $17                         ; 2AB1AF/17
    INC2POSE                                ; 2AB1B0/90
    ASMCALL     $8B7F                       ; 2AB1B1/D07F8B // Unknown ASM $228B7F
    .word       $B1C4                       ; 2AB1B4/C4B1
    SETYVEL     #$FB00                      ; 2AB1B6/C000FB
    A_JSR       L_2AAA24                    ; 2AB1B9/1824AA
    A_JSR       L_2AAB07                    ; 2AB1BC/1807AB
    MOV         VAR6,#$20                   ; 2AB1BF/0D0620
    DEC2POSE                                ; 2AB1C2/A0
    HALT                                    ; 2AB1C3/09

; CODE OR DATA -- $2AB1C4 .. $2AB1C8
incbinRange "../split/prg/bank2a.bin", $11C4, $11C8

L_2AB1C8:
    ZEROVEL                                 ; 2AB1C8/38
    MOV         VAR6,#$FF                   ; 2AB1C9/0D06FF
    ONTICK      $2AB603                     ; 2AB1CC/0803B62A
    ASMCALL     $B0AE                       ; 2AB1D0/D0AEB0
    JNE         L_2AB1DC                    ; 2AB1D3/0BDCB1
    A_JSR       L_2AB1E7                    ; 2AB1D6/18E7B1
    A_JMP       L_2AB1E2                    ; 2AB1D9/17E2B1

L_2AB1DC:
    LOOP        #3                          ; 2AB1DC/0103
        A_JSR       L_2AB1E7                    ; 2AB1DE/18E7B1
    ENDLOOP                                 ; 2AB1E1/02
L_2AB1E2:
    DEC2POSE                                ; 2AB1E2/A0
    MOV         VAR6,#$04                   ; 2AB1E3/0D0604
    HALT                                    ; 2AB1E6/09

L_2AB1E7:
    ASMCALL     $8851                       ; 2AB1E7/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 2AB1EA/D0538C // Set pose (respect facing)
    .byte       $07                         ; 2AB1ED/07
    INC2POSE                                ; 2AB1EE/90
    SETYVEL     #$FB00                      ; 2AB1EF/C000FB
    A_JSR       L_2AAA24                    ; 2AB1F2/1824AA
    A_JSR       L_2AAB07                    ; 2AB1F5/1807AB
    A_RTS                                   ; 2AB1F8/19

L_2AB1F9:
    ASMCALL     $B63B                       ; 2AB1F9/D03BB6
    ONTICK      $2AB65B                     ; 2AB1FC/085BB62A
    MOV         REG,VAR5                    ; 2AB200/1E05
    TABLEJMP    #2                          ; 2AB202/0F02
    .word       L_2AB208                    ; 2AB204/08B2
    .word       L_2AB217                    ; 2AB206/17B2
L_2AB208:
    WAIT        #10                         ; 2AB208/060A
L_2AB20A:
    INC2POSE    WAIT #10                    ; 2AB20A/9A
L_2AB20B:
    ASMCALL     $8EFB                       ; 2AB20B/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB20E/22
    DEC2POSE    WAIT #10                    ; 2AB20F/AA
L_2AB210:
    ASMCALL     $8EFB                       ; 2AB210/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB213/22
    A_JMP       L_2AB228                    ; 2AB214/1728B2

L_2AB217:
    WAIT        #8                          ; 2AB217/0608
    INC2POSE    WAIT #8                     ; 2AB219/98
    ASMCALL     $8EFB                       ; 2AB21A/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB21D/22
    DEC2POSE    WAIT #8                     ; 2AB21E/A8
    ASMCALL     $8EFB                       ; 2AB21F/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB222/22
    INC2POSE    WAIT #6                     ; 2AB223/96
    ASMCALL     $8EFB                       ; 2AB224/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB227/22
L_2AB228:
    ZEROVEL                                 ; 2AB228/38
    MOV         VAR6,#$00                   ; 2AB229/0D0600
    ONTICK      $2AB673                     ; 2AB22C/0873B62A
    ASMCALL     $8C53, WAIT #12             ; 2AB230/DC538C // Set pose (respect facing)
    .byte       $03                         ; 2AB233/03
L_2AB234:
    ASMCALL     $8EFB                       ; 2AB234/D0FB8E // Unknown ASM $228EFB
    .byte       $0C                         ; 2AB237/0C
    ASMCALL     $8B7F                       ; 2AB238/D07F8B // Unknown ASM $228B7F
    .word       $B29F                       ; 2AB23B/9FB2
    MOV         REG,VAR5                    ; 2AB23D/1E05
    TABLEJMP    #2                          ; 2AB23F/0F02
    .word       L_2AB245                    ; 2AB241/45B2
    .word       L_2AB24F                    ; 2AB243/4FB2
L_2AB245:
    TASK        L_2AB259                    ; 2AB245/0759B2
    WAIT        #10                         ; 2AB248/060A
L_2AB24A:
    INC2POSE    WAIT #10                    ; 2AB24A/9A
L_2AB24B:
    MOV         VAR6,#$01                   ; 2AB24B/0D0601
    HALT                                    ; 2AB24E/09

L_2AB24F:
    TASK        TASK_2AB266                 ; 2AB24F/0766B2
    WAIT        #8                          ; 2AB252/0608
    INC2POSE    WAIT #8                     ; 2AB254/98
    MOV         VAR6,#$01                   ; 2AB255/0D0601
    HALT                                    ; 2AB258/09

L_2AB259:
    ASMCALL     $9591                       ; 2AB259/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 2AB25C/01
    .byte       $80                         ; 2AB25D/80
    .byte       $01                         ; 2AB25E/01
    .byte       $08                         ; 2AB25F/08
    .byte       $0A                         ; 2AB260/0A
    WAIT        #4                          ; 2AB261/0604
L_2AB263:
    A_JMP       L_2AB259                    ; 2AB263/1759B2

TASK_2AB266:
    ASMCALL     $9591                       ; 2AB266/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 2AB269/01
    .byte       $80                         ; 2AB26A/80
    .byte       $01                         ; 2AB26B/01
    .byte       $08                         ; 2AB26C/08
    .byte       $0A                         ; 2AB26D/0A
    WAIT        #2                          ; 2AB26E/0602
    A_JMP       TASK_2AB266                 ; 2AB270/1766B2

L_2AB273:
    MOV         VAR6,#$60                   ; 2AB273/0D0660
    ASMCALL     $B6AC                       ; 2AB276/D0ACB6
    ONTICK      $2AB6D4                     ; 2AB279/08D4B62A
    MOV         REG,VAR5                    ; 2AB27D/1E05
    TABLEJMP    #2                          ; 2AB27F/0F02
    .word       L_2AB285                    ; 2AB281/85B2
    .word       L_2AB292                    ; 2AB283/92B2
L_2AB285:
    DEC2POSE    WAIT #10                    ; 2AB285/AA
L_2AB286:
    ASMCALL     $8EFB                       ; 2AB286/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB289/22
    INC2POSE    WAIT #10                    ; 2AB28A/9A
L_2AB28B:
    ASMCALL     $8EFB                       ; 2AB28B/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB28E/22
    A_JMP       L_2AB285                    ; 2AB28F/1785B2

L_2AB292:
    DEC2POSE    WAIT #8                     ; 2AB292/A8
    ASMCALL     $8EFB                       ; 2AB293/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB296/22
    INC2POSE    WAIT #8                     ; 2AB297/98
    ASMCALL     $8EFB                       ; 2AB298/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 2AB29B/22
    A_JMP       L_2AB292                    ; 2AB29C/1792B2

; CODE OR DATA -- $2AB29F .. $2AB2A3
incbinRange "../split/prg/bank2a.bin", $129F, $12A3

L_2AB2A3:
    ZEROVEL                                 ; 2AB2A3/38
    ASMCALL     $8EFB                       ; 2AB2A4/D0FB8E // Unknown ASM $228EFB
    .byte       $17                         ; 2AB2A7/17
    ASMCALL     $8C53                       ; 2AB2A8/D0538C // Set pose (respect facing)
    .byte       $09                         ; 2AB2AB/09
    SETYVEL     #$FB00                      ; 2AB2AC/C000FB
    ONTICK      $2AB70D                     ; 2AB2AF/080DB72A
    HALT                                    ; 2AB2B3/09

L_2AB2B4:
    MOV         VAR5,#$FF                   ; 2AB2B4/0D05FF
    MOV         VAR6,#$FF                   ; 2AB2B7/0D06FF
    ONTICK      $2AB770                     ; 2AB2BA/0870B72A
    A_JMP       L_2AB2C9                    ; 2AB2BE/17C9B2

L_2AB2C1:
    ZEROVEL                                 ; 2AB2C1/38
    MOV         VAR5,#$00                   ; 2AB2C2/0D0500
    ONTICK      $2AB81A                     ; 2AB2C5/081AB82A
L_2AB2C9:
    LOOP        #6                          ; 2AB2C9/0106
        SETPOSE     #$0E, WAIT #2               ; 2AB2CB/520E
L_2AB2CD:
        INCPOSE     WAIT #2                     ; 2AB2CD/72
L_2AB2CE:
    ENDLOOP                                 ; 2AB2CE/02
    ASMCALL     $B7D6                       ; 2AB2CF/D0D6B7
    MOV         VAR6,#$78                   ; 2AB2D2/0D0678
    ONTICK      $2AB746                     ; 2AB2D5/0846B72A
L_2AB2D9:
    SETPOSE     #$0E, WAIT #1               ; 2AB2D9/510E
L_2AB2DB:
    INC2POSE    WAIT #1                     ; 2AB2DB/91
L_2AB2DC:
    DECPOSE     WAIT #1                     ; 2AB2DC/81
L_2AB2DD:
    INC2POSE    WAIT #1                     ; 2AB2DD/91
L_2AB2DE:
    A_JMP       L_2AB2D9                    ; 2AB2DE/17D9B2

L_2AB2E1:
    ZEROVEL                                 ; 2AB2E1/38
    ASMCALL     $B7EA, WAIT #4              ; 2AB2E2/D4EAB7
L_2AB2E5:
    INC2POSE                                ; 2AB2E5/90
    SETYVEL     #$FD80                      ; 2AB2E6/C080FD
    A_JSR       L_2AB322                    ; 2AB2E9/1822B3
    ONTICK      $2AB81A                     ; 2AB2EC/081AB82A
    ASMCALL     $B7EA, WAIT #4              ; 2AB2F0/D4EAB7
L_2AB2F3:
    ASMCALL     $8EFB                       ; 2AB2F3/D0FB8E // Unknown ASM $228EFB
    .byte       $17                         ; 2AB2F6/17
    INC2POSE                                ; 2AB2F7/90
    SETYVEL     #$FD80                      ; 2AB2F8/C080FD
    ASMCALL     $8CAA                       ; 2AB2FB/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FEC0                       ; 2AB2FE/C0FE
    A_JSR       L_2AB322                    ; 2AB300/1822B3
    TASK        L_2AB31A                    ; 2AB303/071AB3
    MOV         VAR6,#$64                   ; 2AB306/0D0664
    ONTICK      $2AB750                     ; 2AB309/0850B72A
    WAIT        #16                         ; 2AB30D/0610
L_2AB30F:
    MOV         VAR5,#$FF                   ; 2AB30F/0D05FF
L_2AB312:
    ASMCALL     $B83F                       ; 2AB312/D03FB8
    WAIT        #24                         ; 2AB315/0618
L_2AB317:
    A_JMP       L_2AB312                    ; 2AB317/1712B3

L_2AB31A:
    SETPOSE     #$0E, WAIT #1               ; 2AB31A/510E
L_2AB31C:
    INC2POSE    WAIT #1                     ; 2AB31C/91
L_2AB31D:
    DECPOSE     WAIT #1                     ; 2AB31D/81
L_2AB31E:
    INC2POSE    WAIT #1                     ; 2AB31E/91
L_2AB31F:
    A_JMP       L_2AB31A                    ; 2AB31F/171AB3

L_2AB322:
    ONTICK      $2AB7F2                     ; 2AB322/08F2B72A
    A_JSR       L_2AAA24                    ; 2AB326/1824AA
    ASMCALL     $8EFB                       ; 2AB329/D0FB8E // Unknown ASM $228EFB
    .byte       $05                         ; 2AB32C/05
    A_RTS                                   ; 2AB32D/19

; CODE OR DATA -- $2AB32E .. $2AB36A
incbinRange "../split/prg/bank2a.bin", $132E, $136A

L_2AB36A:
    MOV         VAR0,#$00                   ; 2AB36A/0D0000
    ASMCALL     $8FC6                       ; 2AB36D/D0C68F // Unknown ASM $228FC6
    .byte       $0D                         ; 2AB370/0D
    ASMCALL     $B9D3                       ; 2AB371/D0D3B9
    ASMCALL     $E6E8                       ; 2AB374/D0E8E6
    ASMCALL     $8851                       ; 2AB377/D05188 // Face towards Kirby
    ASMCALL     $859F                       ; 2AB37A/D09F85 // Unknown ASM $22859F
    .word       $0018                       ; 2AB37D/1800
    ASMCALL     $8C53                       ; 2AB37F/D0538C // Set pose (respect facing)
    .byte       $0D                         ; 2AB382/0D
    ONTICK      $2AB930                     ; 2AB383/0830B92A
    A_JSR       L_2AAB0D                    ; 2AB387/180DAB
    ASMCALL     $9591                       ; 2AB38A/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 2AB38D/01
    .byte       $00                         ; 2AB38E/00
    .byte       $08                         ; 2AB38F/08
    .byte       $06                         ; 2AB390/06
    .byte       $0A                         ; 2AB391/0A
    ZEROVEL                                 ; 2AB392/38
    ONTICK      $2AB95B                     ; 2AB393/085BB92A
    A_JSR       L_2AAB2B                    ; 2AB397/182BAB
L_2AB39A:
    SETYVEL     #$0080, WAIT #2             ; 2AB39A/C28000
L_2AB39D:
    SETYVEL     #$FF80, WAIT #2             ; 2AB39D/C280FF
L_2AB3A0:
    A_JMP       L_2AB39A                    ; 2AB3A0/179AB3

L_2AB3A3:
    MOV         VAR6,#$78                   ; 2AB3A3/0D0678
    ONTICK      $2AB98B                     ; 2AB3A6/088BB92A
    A_JMP       L_2AA9D4                    ; 2AB3AA/17D4A9

L_2AB3AD:
    SETZPOS     #$0081                      ; 2AB3AD/3A8100
    SPRITEMAP   L_329E98                     ; 2AB3B0/1A989E32
    TASK        L_2AB3CC                    ; 2AB3B4/07CCB3
    LOOP        #4                          ; 2AB3B7/0104
        SETPOSE     #$00, WAIT #1               ; 2AB3B9/5100
L_2AB3BB:
        INCPOSE     WAIT #1                     ; 2AB3BB/71
L_2AB3BC:
        INCPOSE     WAIT #1                     ; 2AB3BC/71
L_2AB3BD:
        INCPOSE     WAIT #1                     ; 2AB3BD/71
L_2AB3BE:
    ENDLOOP                                 ; 2AB3BE/02
    ONTICK      $2AB7E5                     ; 2AB3BF/08E5B72A
    LOOP        #26                         ; 2AB3C3/011A
        SETPOSE     #$04, WAIT #1               ; 2AB3C5/5104
L_2AB3C7:
        INCPOSE     WAIT #1                     ; 2AB3C7/71
L_2AB3C8:
        INCPOSE     WAIT #1                     ; 2AB3C8/71
L_2AB3C9:
        INCPOSE     WAIT #1                     ; 2AB3C9/71
L_2AB3CA:
    ENDLOOP                                 ; 2AB3CA/02
    END                                     ; 2AB3CB/00

L_2AB3CC:
    ASMCALL     $8EFB                       ; 2AB3CC/D0FB8E // Unknown ASM $228EFB
    .byte       $25                         ; 2AB3CF/25
    WAIT        #3                          ; 2AB3D0/0603
L_2AB3D2:
    A_JMP       L_2AB3CC                    ; 2AB3D2/17CCB3

L_2AB3D5:
    ONPOSITION  $D97D                       ; 2AB3D5/217DD9
    SETZPOS     #$0081                      ; 2AB3D8/3A8100
    SPRITEMAP   L_329EA8                     ; 2AB3DB/1AA89E32
    SETPOSE     #$00                        ; 2AB3DF/5000
    SETYVEL     #$FD00                      ; 2AB3E1/C000FD
    ASMCALL     $8B7F                       ; 2AB3E4/D07F8B // Unknown ASM $228B7F
    .word       $B3F9                       ; 2AB3E7/F9B3
    ASMCALL     $8EFB                       ; 2AB3E9/D0FB8E // Unknown ASM $228EFB
    .byte       $4E                         ; 2AB3EC/4E
    ONTICK      $2AB81F                     ; 2AB3ED/081FB82A
    A_JSR       L_2AAA24                    ; 2AB3F1/1824AA
    ENDTICK                                 ; 2AB3F4/0E
    JML         $228147                     ; 2AB3F5/03478122

; CODE OR DATA -- $2AB3F9 .. $2AB9E6
incbinRange "../split/prg/bank2a.bin", $13F9, $19E6

Script1C_Kabu:
    SETBANK     #$22                        ; 2AB9E6/2822
    ONPOSITION  $D9BB                       ; 2AB9E8/21BBD9
    SPRITEMAP   L_309058                     ; 2AB9EB/1A589030
    ASMCALL     $84A4                       ; 2AB9EF/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR5,#$00                   ; 2AB9F2/0D0500
    MOV         REG,VAR0                    ; 2AB9F5/1E00
    MOV         VAR2,REG                    ; 2AB9F7/1D02
    MOV         VAR0,#$02                   ; 2AB9F9/0D0002
    TABLEJMP    #3                          ; 2AB9FC/0F03
    .word       L_2ABA0B                    ; 2AB9FE/0BBA
    .word       L_2ABC03                    ; 2ABA00/03BC
    .word       L_2ABE2A                    ; 2ABA02/2ABE
L_2ABA04:
    ONTICK      $2ABAF5                     ; 2ABA04/08F5BA2A
    ZEROVEL                                 ; 2ABA08/38
    SETPOSE     #$08, WAIT #15              ; 2ABA09/5F08
L_2ABA0B:
    ONTICK      $2ABAF5                     ; 2ABA0B/08F5BA2A
    ZEROVEL                                 ; 2ABA0F/38
    ASMCALL     $8851                       ; 2ABA10/D05188 // Face towards Kirby
    ASMCALL     $8BED                       ; 2ABA13/D0ED8B // Unknown ASM $228BED
    .word       $BA58                       ; 2ABA16/58BA
    MOV         VAR2,REG                    ; 2ABA18/1D02
    ASMCALL     $DFDF                       ; 2ABA1A/D0DFDF // Unknown ASM $DFDF
    .byte       $03                         ; 2ABA1D/03
    MOV         VAR3,REG                    ; 2ABA1E/1D03
    ADD         VAR3,#1                     ; 2ABA20/13030201
    ASMCALL     $8AE7                       ; 2ABA24/D0E78A // Get facing as 0 or 1
    TABLEJSR    #2                          ; 2ABA27/1002
    .word       L_2ABA48                    ; 2ABA29/48BA
    .word       L_2ABA50                    ; 2ABA2B/50BA
    ONTICK      $2ABAF5                     ; 2ABA2D/08F5BA2A
    SETPOSE     #$08                        ; 2ABA31/5008
    WAIT        VAR2                        ; 2ABA33/1F02
L_2ABA35:
    ASMCALL     $DE4B                       ; 2ABA35/D04BDE // Play sound effect
    .byte       $0D                         ; 2ABA38/0D
    ASMCALL     $BBD5                       ; 2ABA39/D0D5BB
    TABLEJMP    #5                          ; 2ABA3C/0F05
    .word       L_2ABA95                    ; 2ABA3E/95BA
    .word       L_2ABAA2                    ; 2ABA40/A2BA
    .word       L_2ABAB7                    ; 2ABA42/B7BA
    .word       L_2ABACC                    ; 2ABA44/CCBA
    .word       L_2ABAD9                    ; 2ABA46/D9BA
L_2ABA48:
    MOV         REG,VAR3                    ; 2ABA48/1E03
    LOOP        REG                         ; 2ABA4A/22
        A_JSR       L_2ABA77                    ; 2ABA4B/1877BA
    ENDLOOP                                 ; 2ABA4E/02
    A_RTS                                   ; 2ABA4F/19

L_2ABA50:
    MOV         REG,VAR3                    ; 2ABA50/1E03
    LOOP        REG                         ; 2ABA52/22
        A_JSR       L_2ABA86                    ; 2ABA53/1886BA
    ENDLOOP                                 ; 2ABA56/02
    A_RTS                                   ; 2ABA57/19

; CODE OR DATA -- $2ABA58 .. $2ABA5A
incbinRange "../split/prg/bank2a.bin", $1A58, $1A5A

L_2ABA5A:
    ONTICK      $2ABB42                     ; 2ABA5A/0842BB2A
    A_JMP       L_2ABA65                    ; 2ABA5E/1765BA

L_2ABA61:
    ONTICK      $2ABB0E                     ; 2ABA61/080EBB2A
L_2ABA65:
    ASMCALL     $8AE7                       ; 2ABA65/D0E78A // Get facing as 0 or 1
    JNE         L_2ABA71                    ; 2ABA68/0B71BA
L_2ABA6B:
    A_JSR       L_2ABA77                    ; 2ABA6B/1877BA
    A_JMP       L_2ABA6B                    ; 2ABA6E/176BBA

L_2ABA71:
    A_JSR       L_2ABA86                    ; 2ABA71/1886BA
    A_JMP       L_2ABA71                    ; 2ABA74/1771BA

L_2ABA77:
    SETPOSE     #$04                        ; 2ABA77/5004
    WAIT        VAR2                        ; 2ABA79/1F02
L_2ABA7B:
    INC2POSE                                ; 2ABA7B/90
    WAIT        VAR2                        ; 2ABA7C/1F02
L_2ABA7E:
    DECPOSE                                 ; 2ABA7E/80
    WAIT        VAR2                        ; 2ABA7F/1F02
L_2ABA81:
    SETPOSE     #$07                        ; 2ABA81/5007
    WAIT        VAR2                        ; 2ABA83/1F02
L_2ABA85:
    A_RTS                                   ; 2ABA85/19

L_2ABA86:
    SETPOSE     #$04                        ; 2ABA86/5004
    WAIT        VAR2                        ; 2ABA88/1F02
L_2ABA8A:
    SETPOSE     #$07                        ; 2ABA8A/5007
    WAIT        VAR2                        ; 2ABA8C/1F02
L_2ABA8E:
    DEC2POSE                                ; 2ABA8E/A0
    WAIT        VAR2                        ; 2ABA8F/1F02
L_2ABA91:
    INCPOSE                                 ; 2ABA91/70
    WAIT        VAR2                        ; 2ABA92/1F02
L_2ABA94:
    A_RTS                                   ; 2ABA94/19

L_2ABA95:
    ONTICK      $2ABB0E                     ; 2ABA95/080EBB2A
    SETYVEL     #$FD00                      ; 2ABA99/C000FD
    MOV         VAR2,#$04                   ; 2ABA9C/0D0204
    A_JMP       L_2ABA65                    ; 2ABA9F/1765BA

L_2ABAA2:
    ONTICK      $2ABB0E                     ; 2ABAA2/080EBB2A
    SETYVEL     #$FD00                      ; 2ABAA6/C000FD
    ASMCALL     $8851                       ; 2ABAA9/D05188 // Face towards Kirby
    ASMCALL     $E26A                       ; 2ABAAC/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 2ABAAF/0001
    MOV         VAR2,#$02                   ; 2ABAB1/0D0202
    A_JMP       L_2ABA65                    ; 2ABAB4/1765BA

L_2ABAB7:
    ONTICK      $2ABB42                     ; 2ABAB7/0842BB2A
    SETYVEL     #$FD00                      ; 2ABABB/C000FD
    ASMCALL     $8851                       ; 2ABABE/D05188 // Face towards Kirby
    ASMCALL     $8CAA                       ; 2ABAC1/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF00                       ; 2ABAC4/00FF
    MOV         VAR2,#$08                   ; 2ABAC6/0D0208
    A_JMP       L_2ABA65                    ; 2ABAC9/1765BA

L_2ABACC:
    ONTICK      $2ABB0E                     ; 2ABACC/080EBB2A
    SETYVEL     #$FB80                      ; 2ABAD0/C080FB
    MOV         VAR2,#$08                   ; 2ABAD3/0D0208
    A_JMP       L_2ABA65                    ; 2ABAD6/1765BA

L_2ABAD9:
    ONTICK      $2ABB0E                     ; 2ABAD9/080EBB2A
    SETYVEL     #$FB80                      ; 2ABADD/C080FB
    ASMCALL     $8851                       ; 2ABAE0/D05188 // Face towards Kirby
    ASMCALL     $E26A                       ; 2ABAE3/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 2ABAE6/0001
    MOV         VAR2,#$04                   ; 2ABAE8/0D0204
    A_JMP       L_2ABA65                    ; 2ABAEB/1765BA

; CODE OR DATA -- $2ABAEE .. $2ABC03
incbinRange "../split/prg/bank2a.bin", $1AEE, $1C03

L_2ABC03:
    MOV         VAR2,#$08                   ; 2ABC03/0D0208
    ZEROVEL                                 ; 2ABC06/38
    ONTICK      $2ABC84                     ; 2ABC07/0884BC2A
    ASMCALL     $8BED                       ; 2ABC0B/D0ED8B // Unknown ASM $228BED
    .word       $BC25                       ; 2ABC0E/25BC
    MOV         VAR3,REG                    ; 2ABC10/1D03
    A_JMP       L_2ABA65                    ; 2ABC12/1765BA

L_2ABC15:
    MOV         VAR2,#$04                   ; 2ABC15/0D0204
    MOV         VAR3,#$30                   ; 2ABC18/0D0330
    MOV         VAR5,#$07                   ; 2ABC1B/0D0507
    ONTICK      $2ABCB7                     ; 2ABC1E/08B7BC2A
    A_JMP       L_2ABA65                    ; 2ABC22/1765BA

; CODE OR DATA -- $2ABC25 .. $2ABC27
incbinRange "../split/prg/bank2a.bin", $1C25, $1C27

L_2ABC27:
    ONTICK      $2ABCC5                     ; 2ABC27/08C5BC2A
    SETPOSE     #$FF                        ; 2ABC2B/50FF
    ZEROVEL                                 ; 2ABC2D/38
    WAIT        #60                         ; 2ABC2E/063C
L_2ABC30:
    MOV         VAR2,#$3C                   ; 2ABC30/0D023C
L_2ABC33:
    ASMCALL     $BD7A                       ; 2ABC33/D07ABD
    JNE         L_2ABC43                    ; 2ABC36/0B43BC
    WAIT        #1                          ; 2ABC39/0601
L_2ABC3B:
    ADD         VAR2,#-1                    ; 2ABC3B/130202FF
    JNE         L_2ABC33                    ; 2ABC3F/0B33BC
    END                                     ; 2ABC42/00

L_2ABC43:
    MOV         VAR2,#$04                   ; 2ABC43/0D0204
    MOV         VAR3,#$30                   ; 2ABC46/0D0330
    MOV         VAR5,#$00                   ; 2ABC49/0D0500
    ONTICK      $2ABCE8                     ; 2ABC4C/08E8BC2A
    A_JMP       L_2ABA65                    ; 2ABC50/1765BA

L_2ABC53:
    ZEROVEL                                 ; 2ABC53/38
    SETPOSE     #$08                        ; 2ABC54/5008
    ASMCALL     $8BE4                       ; 2ABC56/D0E48B // Unknown ASM $228BE4
    .word       $BC70                       ; 2ABC59/70BC
L_2ABC5B:
    SETYVEL     #$0000                      ; 2ABC5B/C00000
    ASMCALL     $8851                       ; 2ABC5E/D05188 // Face towards Kirby
    ASMCALL     $E26A                       ; 2ABC61/D06AE2 // Set X velocity (respect facing)
    .word       $0300                       ; 2ABC64/0003
    MOV         VAR2,#$01                   ; 2ABC66/0D0201
    ONTICK      $2ABD1C                     ; 2ABC69/081CBD2A
    A_JMP       L_2ABA65                    ; 2ABC6D/1765BA

; CODE OR DATA -- $2ABC70 .. $2ABC72
incbinRange "../split/prg/bank2a.bin", $1C70, $1C72

L_2ABC72:
    ONTICK      $2ABD3B                     ; 2ABC72/083BBD2A
    A_JMP       L_2ABA65                    ; 2ABC76/1765BA

; CODE OR DATA -- $2ABC79 .. $2ABC81
incbinRange "../split/prg/bank2a.bin", $1C79, $1C81

L_2ABC81:
    A_JMP       $8180                       ; 2ABC81/178081

; CODE OR DATA -- $2ABC84 .. $2ABE2A
incbinRange "../split/prg/bank2a.bin", $1C84, $1E2A

L_2ABE2A:
    MOV         VAR2,#$04                   ; 2ABE2A/0D0204
    MOV         VAR6,#$00                   ; 2ABE2D/0D0600
    ASMCALL     $BF9E                       ; 2ABE30/D09EBF
    ONTICK      $2ABE6F                     ; 2ABE33/086FBE2A
L_2ABE37:
    ASMCALL     $8851                       ; 2ABE37/D05188 // Face towards Kirby
    ASMCALL     $8AE7                       ; 2ABE3A/D0E78A // Get facing as 0 or 1
    TABLEJSR    #2                          ; 2ABE3D/1002
    .word       L_2ABA77                    ; 2ABE3F/77BA
    .word       L_2ABA86                    ; 2ABE41/86BA
    A_JMP       L_2ABE37                    ; 2ABE43/1737BE

; CODE OR DATA -- $2ABE46 .. $2BA000
incbinRange "../split/prg/bank2a.bin", $1E46, $2000