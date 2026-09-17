.segment "PRG26": absolute
Script1D_Squishy:
    SETBANK     #$22                        ; 26A000/2822
    ONPOSITION  $D9BB                       ; 26A002/21BBD9
    SPRITEMAP   L_32888F                     ; 26A005/1A8F8832
    ASMCALL     $84A4                       ; 26A009/D0A484 // Store VAR1 in $0784[self]
    ASMCALL     $8851                       ; 26A00C/D05188 // Face towards Kirby
    MOV         REG,VAR0                    ; 26A00F/1E00
    MOV         VAR2,REG                    ; 26A011/1D02
    MOV         VAR0,#$02                   ; 26A013/0D0002
    MOV         REG,VAR2                    ; 26A016/1E02
    TABLEJMP    #3                          ; 26A018/0F03
    .word       L_26A02A                    ; 26A01A/2AA0
    .word       L_26A1E7                    ; 26A01C/E7A1
    .word       L_26A29F                    ; 26A01E/9FA2
L_26A020:
    ONTICK      $26A0BD                     ; 26A020/08BDA026
    ZEROVEL                                 ; 26A024/38
    MOV         VAR3,#$64                   ; 26A025/0D0364
    SETPOSE     #$05, WAIT #10              ; 26A028/5A05
L_26A02A:
    MOV         VAR3,#$64                   ; 26A02A/0D0364
    ONTICK      $26A0BD                     ; 26A02D/08BDA026
    ASMCALL     $8B7F                       ; 26A031/D07F8B // Unknown ASM $228B7F
    .word       $A04A                       ; 26A034/4AA0
L_26A036:
    ASMCALL     $8BED                       ; 26A036/D0ED8B // Unknown ASM $228BED
    .word       $A048                       ; 26A039/48A0
    MOV         VAR2,REG                    ; 26A03B/1D02
L_26A03D:
    ASMCALL     $8829                       ; 26A03D/D02988 // Set pose to 0 (respect facing)
    WAIT        VAR2                        ; 26A040/1F02
L_26A042:
    INC2POSE                                ; 26A042/90
    WAIT        VAR2                        ; 26A043/1F02
L_26A045:
    A_JMP       L_26A03D                    ; 26A045/173DA0

; CODE OR DATA -- $26A048 .. $26A04E
incbinRange "../split/prg/bank26.bin", $0048, $004E

L_26A04E:
    ONTICK      $26A0F4                     ; 26A04E/08F4A026
    A_JMP       L_26A036                    ; 26A052/1736A0

L_26A055:
    ASMCALL     $DE4B                       ; 26A055/D04BDE // Play sound effect
    .byte       $0D                         ; 26A058/0D
    ONTICK      $26A10B                     ; 26A059/080BA126
    ASMCALL     $8851                       ; 26A05D/D05188 // Face towards Kirby
    ASMCALL     $E26A                       ; 26A060/D06AE2 // Set X velocity (respect facing)
    .word       $00C0                       ; 26A063/C000
    SETYVEL     #$FD00                      ; 26A065/C000FD
    A_JMP       L_26A036                    ; 26A068/1736A0

; CODE OR DATA -- $26A06B .. $26A1E7
incbinRange "../split/prg/bank26.bin", $006B, $01E7

L_26A1E7:
    ASMCALL     $A276                       ; 26A1E7/D076A2
    ONTICK      $26A232                     ; 26A1EA/0832A226
    ASMCALL     $8851                       ; 26A1EE/D05188 // Face towards Kirby
    SETPOSE     #$04                        ; 26A1F1/5004
    ASMCALL     $E26A                       ; 26A1F3/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 26A1F6/8000
    SETYVEL     #$FC00                      ; 26A1F8/C000FC
    HALT                                    ; 26A1FB/09

L_26A1FC:
    ONTICK      $26A251                     ; 26A1FC/0851A226
    SETPOSE     #$04                        ; 26A200/5004
    ASMCALL     $8851                       ; 26A202/D05188 // Face towards Kirby
    ASMCALL     $E26A                       ; 26A205/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 26A208/8000
    SETYVEL     #$FC00, WAIT #8             ; 26A20A/C800FC
L_26A20D:
    SETYVEL     #$FE00, WAIT #8             ; 26A20D/C800FE
L_26A210:
    SETYVEL     #$FF00, WAIT #8             ; 26A210/C800FF
L_26A213:
    SETYVEL     #$FF80, WAIT #8             ; 26A213/C880FF
L_26A216:
    SETYVEL     #$0080, WAIT #8             ; 26A216/C88000
L_26A219:
    SETYVEL     #$0100, WAIT #8             ; 26A219/C80001
L_26A21C:
    SETYVEL     #$0200, WAIT #8             ; 26A21C/C80002
L_26A21F:
    SETYVEL     #$0400                      ; 26A21F/C00004
    ONTICK      $26A259                     ; 26A222/0859A226
    HALT                                    ; 26A226/09

L_26A227:
    ONTICK      $26A251                     ; 26A227/0851A226
    ZEROVEL                                 ; 26A22B/38
    SETPOSE     #$05, WAIT #8               ; 26A22C/5805
L_26A22E:
    SETYVEL     #$FC00                      ; 26A22E/C000FC
    HALT                                    ; 26A231/09

; CODE OR DATA -- $26A232 .. $26A29F
incbinRange "../split/prg/bank26.bin", $0232, $029F

L_26A29F:
    ONTICK      $26A31C                     ; 26A29F/081CA326
    ZEROVEL                                 ; 26A2A3/38
    SETPOSE     #$05, WAIT #8               ; 26A2A4/5805
L_26A2A6:
    ONTICK      $26A2E0                     ; 26A2A6/08E0A226
    ASMCALL     $A398                       ; 26A2AA/D098A3
    DECPOSE                                 ; 26A2AD/80
    ASMCALL     $8851                       ; 26A2AE/D05188 // Face towards Kirby
    ASMCALL     $8B7F                       ; 26A2B1/D07F8B // Unknown ASM $228B7F
    .word       $A2BE                       ; 26A2B4/BEA2
    SETYVEL     #$FD80                      ; 26A2B6/C080FD
    ASMCALL     $DE4B                       ; 26A2B9/D04BDE // Play sound effect
    .byte       $0D                         ; 26A2BC/0D
    HALT                                    ; 26A2BD/09

; CODE OR DATA -- $26A2BE .. $26A3C9
incbinRange "../split/prg/bank26.bin", $02BE, $03C9

Script1E_BirdEnemy:
    SETBANK     #$22                        ; 26A3C9/2822
    ONPOSITION  $D9BB                       ; 26A3CB/21BBD9
    ASMCALL     $84A4                       ; 26A3CE/D0A484 // Store VAR1 in $0784[self]
    SPRITEMAP   L_32889F                     ; 26A3D1/1A9F8832
    ASMCALL     $A493                       ; 26A3D5/D093A4
    JEQ         L_26A7F5                    ; 26A3D8/0AF5A7
    SPRITEMAP   L_32888F                     ; 26A3DB/1A8F8832
    ASMCALL     $8851                       ; 26A3DF/D05188 // Face towards Kirby
    MOV         VAR0,#$02                   ; 26A3E2/0D0002
    MOV         REG,VAR2                    ; 26A3E5/1E02
    TABLEJMP    #3                          ; 26A3E7/0F03
    .word       L_26A3EF                    ; 26A3E9/EFA3
    .word       L_26A4A6                    ; 26A3EB/A6A4
    .word       L_26A625                    ; 26A3ED/25A6
L_26A3EF:
    ZEROVEL                                 ; 26A3EF/38
    ONTICK      $26A446                     ; 26A3F0/0846A426
    ASMCALL     $8C53                       ; 26A3F4/D0538C // Set pose (respect facing)
    .byte       $06                         ; 26A3F7/06
    WAIT        #24                         ; 26A3F8/0618
L_26A3FA:
    ASMCALL     $8851                       ; 26A3FA/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 26A3FD/D0538C // Set pose (respect facing)
    .byte       $06                         ; 26A400/06
    WAIT        #24                         ; 26A401/0618
L_26A403:
    ASMCALL     $DE4B                       ; 26A403/D04BDE // Play sound effect
    .byte       $0D                         ; 26A406/0D
    ONTICK      $26A427                     ; 26A407/0827A426
    SETYVEL     #$FE00                      ; 26A40B/C000FE
    LOOP        #4                          ; 26A40E/0104
        ASMCALL     $8C53, WAIT #4              ; 26A410/D4538C // Set pose (respect facing)
        .byte       $08                         ; 26A413/08
L_26A414:
        INC2POSE    WAIT #4                     ; 26A414/94
L_26A415:
    ENDLOOP                                 ; 26A415/02
    ASMCALL     $8C53                       ; 26A416/D0538C // Set pose (respect facing)
    .byte       $08                         ; 26A419/08
    HALT                                    ; 26A41A/09

; CODE OR DATA -- $26A41B .. $26A4A6
incbinRange "../split/prg/bank26.bin", $041B, $04A6

L_26A4A6:
    ONTICK      $26A50B                     ; 26A4A6/080BA526
    ZEROVEL                                 ; 26A4AA/38
    ASMCALL     $8851                       ; 26A4AB/D05188 // Face towards Kirby
    ASMCALL     $8C53, WAIT #15             ; 26A4AE/DF538C // Set pose (respect facing)
    .byte       $06                         ; 26A4B1/06
    ASMCALL     $8851                       ; 26A4B2/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 26A4B5/D0538C // Set pose (respect facing)
    .byte       $06                         ; 26A4B8/06
    ASMCALL     $A5E4                       ; 26A4B9/D0E4A5
    TABLEJMP    #5                          ; 26A4BC/0F05
    .word       L_26A4C8                    ; 26A4BE/C8A4
    .word       L_26A4C8                    ; 26A4C0/C8A4
    .word       L_26A4C8                    ; 26A4C2/C8A4
    .word       L_26A4D7                    ; 26A4C4/D7A4
    .word       L_26A4E0                    ; 26A4C6/E0A4
L_26A4C8:
    ASMCALL     $DE4B                       ; 26A4C8/D04BDE // Play sound effect
    .byte       $0D                         ; 26A4CB/0D
    ONTICK      $26A55C                     ; 26A4CC/085CA526
    ASMCALL     $A5F9                       ; 26A4D0/D0F9A5
    SETYVEL     #$FE80                      ; 26A4D3/C080FE
    HALT                                    ; 26A4D6/09

L_26A4D7:
    ONTICK      $26A59A                     ; 26A4D7/089AA526
    WAIT        #32                         ; 26A4DB/0620
    A_JMP       L_26A4A6                    ; 26A4DD/17A6A4

L_26A4E0:
    ONTICK      $26A59A                     ; 26A4E0/089AA526
    WAIT        #64                         ; 26A4E4/0640
    A_JMP       L_26A4A6                    ; 26A4E6/17A6A4

; CODE OR DATA -- $26A4E9 .. $26A625
incbinRange "../split/prg/bank26.bin", $04E9, $0625

L_26A625:
    ONTICK      $26A64F                     ; 26A625/084FA626
    MOV         VAR2,#$08                   ; 26A629/0D0208
L_26A62C:
    ASMCALL     $8851                       ; 26A62C/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 26A62F/D0538C // Set pose (respect facing)
    .byte       $0A                         ; 26A632/0A
    SETYVEL     #$FF00, WAIT #8             ; 26A633/C800FF
L_26A636:
    DEC2POSE                                ; 26A636/A0
    SETYVEL     #$FF80, WAIT #8             ; 26A637/C880FF
L_26A63A:
    ZEROVEL                                 ; 26A63A/38
    SETYVEL     #$0080, WAIT #8             ; 26A63B/C88000
L_26A63E:
    INC2POSE                                ; 26A63E/90
    SETYVEL     #$0100, WAIT #8             ; 26A63F/C80001
L_26A642:
    DEC2POSE                                ; 26A642/A0
    SETYVEL     #$0080, WAIT #8             ; 26A643/C88000
L_26A646:
    ZEROVEL                                 ; 26A646/38
    INC2POSE    WAIT #8                     ; 26A647/98
L_26A648:
    DEC2POSE                                ; 26A648/A0
    SETYVEL     #$FF80, WAIT #8             ; 26A649/C880FF
L_26A64C:
    A_JMP       L_26A62C                    ; 26A64C/172CA6

; CODE OR DATA -- $26A64F .. $26A66C
incbinRange "../split/prg/bank26.bin", $064F, $066C

Script1F_Glunk:
    SETBANK     #$22                        ; 26A66C/2822
    ONPOSITION  $D9BB                       ; 26A66E/21BBD9
    SPRITEMAP   L_32888F                     ; 26A671/1A8F8832
    ASMCALL     $84A4                       ; 26A675/D0A484 // Store VAR1 in $0784[self]
    MOV         REG,VAR0                    ; 26A678/1E00
    JNE         L_26A7BC                    ; 26A67A/0BBCA7
    ASMCALL     $A7A9                       ; 26A67D/D0A9A7
    MOV         VAR0,#$02                   ; 26A680/0D0002
    MOV         REG,VAR1                    ; 26A683/1E01
    MOV         VAR2,REG                    ; 26A685/1D02
    ONTICK      $26A6F4                     ; 26A687/08F4A626
L_26A68B:
    ASMCALL     $8BED                       ; 26A68B/D0ED8B // Unknown ASM $228BED
    .word       $A6BD                       ; 26A68E/BDA6
    LOOP        REG                         ; 26A690/22
        SETPOSE     #$0C                        ; 26A691/500C
        WAIT        #24                         ; 26A693/0618
L_26A695:
        INCPOSE     WAIT #15                    ; 26A695/7F
L_26A696:
        INCPOSE                                 ; 26A696/70
        WAIT        #24                         ; 26A697/0618
L_26A699:
        DECPOSE     WAIT #15                    ; 26A699/8F
L_26A69A:
    ENDLOOP                                 ; 26A69A/02
    ASMCALL     $8BED                       ; 26A69B/D0ED8B // Unknown ASM $228BED
    .word       $A6BF                       ; 26A69E/BFA6
    LOOP        REG                         ; 26A6A0/22
        MOV         REG,VAR2                    ; 26A6A1/1E02
        JEQ         L_26A6B5                    ; 26A6A3/0AB5A6
        ASMCALL     $DE4B                       ; 26A6A6/D04BDE // Play sound effect
        .byte       $23                         ; 26A6A9/23
        ASMCALL     $DED0                       ; 26A6AA/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $09                         ; 26A6AD/09
        .byte       $12                         ; 26A6AE/12
        .byte       $1F                         ; 26A6AF/1F
        .byte       $00                         ; 26A6B0/00
        .byte       $00                         ; 26A6B1/00
        .byte       $00                         ; 26A6B2/00
        .byte       $01                         ; 26A6B3/01
        .byte       $00                         ; 26A6B4/00
L_26A6B5:
        SETPOSE     #$0C, WAIT #4               ; 26A6B5/540C
L_26A6B7:
        INCPOSE     WAIT #2                     ; 26A6B7/72
L_26A6B8:
        INCPOSE     WAIT #6                     ; 26A6B8/76
L_26A6B9:
    ENDLOOP                                 ; 26A6B9/02
    A_JMP       L_26A68B                    ; 26A6BA/178BA6

; CODE OR DATA -- $26A6BD .. $26A7BC
incbinRange "../split/prg/bank26.bin", $06BD, $07BC

L_26A7BC:
    SPRITEMAP   L_308C96                     ; 26A7BC/1A968C30
    ONTICK      $26A7CE                     ; 26A7C0/08CEA726
    SETYVEL     #$FA00                      ; 26A7C4/C000FA
    SETPOSE     #$00, WAIT #2               ; 26A7C7/5200
L_26A7C9:
    INCPOSE     WAIT #2                     ; 26A7C9/72
L_26A7CA:
    SETPOSE     #$00, WAIT #2               ; 26A7CA/5200
L_26A7CC:
    INCPOSE     WAIT #2                     ; 26A7CC/72
L_26A7CD:
    END                                     ; 26A7CD/00

; CODE OR DATA -- $26A7CE .. $26A7E9
incbinRange "../split/prg/bank26.bin", $07CE, $07E9

Script38_BrontoBurt:
    SETBANK     #$22                        ; 26A7E9/2822
    ONPOSITION  $D9BB                       ; 26A7EB/21BBD9
    ASMCALL     $84A4                       ; 26A7EE/D0A484 // Store VAR1 in $0784[self]
    SPRITEMAP   L_309C24                     ; 26A7F1/1A249C30
L_26A7F5:
    MOV         REG,VAR0                    ; 26A7F5/1E00
    MOV         VAR2,REG                    ; 26A7F7/1D02
    MOV         REG,VAR1                    ; 26A7F9/1E01
    MOV         VAR3,REG                    ; 26A7FB/1D03
    MOV         VAR0,#$02                   ; 26A7FD/0D0002
    ASMCALL     $8851                       ; 26A800/D05188 // Face towards Kirby
    MOV         REG,VAR2                    ; 26A803/1E02
    TABLEJMP    #6                          ; 26A805/0F06
    .word       L_26AA8D                    ; 26A807/8DAA
    .word       L_26AA83                    ; 26A809/83AA
    .word       L_26A9A3                    ; 26A80B/A3A9
    .word       L_26A95B                    ; 26A80D/5BA9
    .word       L_26A8BA                    ; 26A80F/BAA8
    .word       L_26A813                    ; 26A811/13A8
L_26A813:
    ONTICK      $26AADE                     ; 26A813/08DEAA26
    MOV         VAR5,#$00                   ; 26A817/0D0500
    ASMCALL     $8851                       ; 26A81A/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 26A81D/D02988 // Set pose to 0 (respect facing)
    ADDPOSE     #2                          ; 26A820/6002
L_26A822:
    WAIT        #1                          ; 26A822/0601
L_26A824:
    MOV         REG,VAR5                    ; 26A824/1E05
    JEQ         L_26A822                    ; 26A826/0A22A8
    ASMCALL     $8829                       ; 26A829/D02988 // Set pose to 0 (respect facing)
    SETYVEL     #$FD00, WAIT #4             ; 26A82C/C400FD
L_26A82F:
    ADDPOSE     #2                          ; 26A82F/6002
    SETYVEL     #$FE00, WAIT #4             ; 26A831/C400FE
L_26A834:
    ADDPOSE     #-2, WAIT #4                ; 26A834/64FE
L_26A836:
    ADDPOSE     #2                          ; 26A836/6002
    SETYVEL     #$FF00, WAIT #8             ; 26A838/C800FF
L_26A83B:
    WAIT        #8                          ; 26A83B/0608
L_26A83D:
    ADDPOSE     #-2                         ; 26A83D/60FE
    SETYVEL     #$FF80, WAIT #8             ; 26A83F/C880FF
L_26A842:
    SETYVEL     #$0080                      ; 26A842/C08000
    ADDPOSE     #2                          ; 26A845/6002
    MOV         REG,VAR2                    ; 26A847/1E02
    JNE         L_26A889                    ; 26A849/0B89A8
    WAIT        #16                         ; 26A84C/0610
    ADDPOSE     #-2                         ; 26A84E/60FE
    WAIT        #16                         ; 26A850/0610
    ADDPOSE     #2                          ; 26A852/6002
    WAIT        #16                         ; 26A854/0610
    ADDPOSE     #-2                         ; 26A856/60FE
    ZEROVEL                                 ; 26A858/38
    ASMCALL     $8851                       ; 26A859/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 26A85C/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $E26A                       ; 26A85F/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 26A862/0001
    WAIT        #4                          ; 26A864/0604
    ADDPOSE     #2                          ; 26A866/6002
    WAIT        #4                          ; 26A868/0604
    ADDPOSE     #-2                         ; 26A86A/60FE
    WAIT        #2                          ; 26A86C/0602
    ASMCALL     $E26A                       ; 26A86E/D06AE2 // Set X velocity (respect facing)
    .word       $0200                       ; 26A871/0002
    WAIT        #2                          ; 26A873/0602
    ADDPOSE     #-2                         ; 26A875/60FE
    WAIT        #4                          ; 26A877/0604
    ADDPOSE     #2                          ; 26A879/6002
    WAIT        #4                          ; 26A87B/0604
    ASMCALL     $E26A                       ; 26A87D/D06AE2 // Set X velocity (respect facing)
    .word       $0300                       ; 26A880/0003
L_26A882:
    ADDPOSE     #-2, WAIT #4                ; 26A882/64FE
    ADDPOSE     #2, WAIT #4                 ; 26A884/6402
    A_JMP       L_26A882                    ; 26A886/1782A8

L_26A889:
    WAIT        #16                         ; 26A889/0610
L_26A88B:
    ADDPOSE     #-2                         ; 26A88B/60FE
    WAIT        #16                         ; 26A88D/0610
L_26A88F:
    ADDPOSE     #2                          ; 26A88F/6002
    ZEROVEL                                 ; 26A891/38
    ASMCALL     $8851                       ; 26A892/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 26A895/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $E26A                       ; 26A898/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 26A89B/0001
    WAIT        #4                          ; 26A89D/0604
L_26A89F:
    ADDPOSE     #2                          ; 26A89F/6002
    WAIT        #2                          ; 26A8A1/0602
L_26A8A3:
    ASMCALL     $E26A, WAIT #2              ; 26A8A3/D26AE2 // Set X velocity (respect facing)
    .word       $0200                       ; 26A8A6/0002
L_26A8A8:
    ADDPOSE     #-2, WAIT #4                ; 26A8A8/64FE
L_26A8AA:
    ADDPOSE     #2                          ; 26A8AA/6002
    ASMCALL     $E26A                       ; 26A8AC/D06AE2 // Set X velocity (respect facing)
    .word       $0300                       ; 26A8AF/0003
L_26A8B1:
    WAIT        #4                          ; 26A8B1/0604
L_26A8B3:
    ADDPOSE     #-2, WAIT #4                ; 26A8B3/64FE
L_26A8B5:
    ADDPOSE     #2                          ; 26A8B5/6002
    A_JMP       L_26A8B1                    ; 26A8B7/17B1A8

L_26A8BA:
    ONTICK      $26AB2F                     ; 26A8BA/082FAB26
    ASMCALL     $8851                       ; 26A8BE/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 26A8C1/D02988 // Set pose to 0 (respect facing)
    MOV         VAR4,#$00                   ; 26A8C4/0D0400
    MOV         VAR5,#$00                   ; 26A8C7/0D0500
    MOV         VAR6,#$01                   ; 26A8CA/0D0601
    MOV         REG,VAR6                    ; 26A8CD/1E06
    TABLEJMP    #3                          ; 26A8CF/0F03
    .word       L_26A8D9                    ; 26A8D1/D9A8
    .word       L_26A8F6                    ; 26A8D3/F6A8
    .word       L_26A92F                    ; 26A8D5/2FA9
    .word       L_26A93E                    ; 26A8D7/3EA9
L_26A8D9:
    ASMCALL     $8829, WAIT #4              ; 26A8D9/D42988 // Set pose to 0 (respect facing)
L_26A8DC:
    MOV         REG,VAR6                    ; 26A8DC/1E06
    TABLEJMP    #4                          ; 26A8DE/0F04
    .word       L_26A8E8                    ; 26A8E0/E8A8
    .word       L_26A8F6                    ; 26A8E2/F6A8
    .word       L_26A92F                    ; 26A8E4/2FA9
    .word       L_26A93E                    ; 26A8E6/3EA9
L_26A8E8:
    ADDPOSE     #2, WAIT #4                 ; 26A8E8/6402
L_26A8EA:
    MOV         REG,VAR6                    ; 26A8EA/1E06
    TABLEJMP    #4                          ; 26A8EC/0F04
    .word       L_26A8D9                    ; 26A8EE/D9A8
    .word       L_26A8F6                    ; 26A8F0/F6A8
    .word       L_26A92F                    ; 26A8F2/2FA9
    .word       L_26A93E                    ; 26A8F4/3EA9
L_26A8F6:
    ASMCALL     $8829, WAIT #4              ; 26A8F6/D42988 // Set pose to 0 (respect facing)
L_26A8F9:
    MOV         REG,VAR6                    ; 26A8F9/1E06
    TABLEJMP    #4                          ; 26A8FB/0F04
    .word       L_26A8D9                    ; 26A8FD/D9A8
    .word       L_26A905                    ; 26A8FF/05A9
    .word       L_26A92F                    ; 26A901/2FA9
    .word       L_26A93E                    ; 26A903/3EA9
L_26A905:
    WAIT        #4                          ; 26A905/0604
L_26A907:
    MOV         REG,VAR6                    ; 26A907/1E06
    TABLEJMP    #4                          ; 26A909/0F04
    .word       L_26A8D9                    ; 26A90B/D9A8
    .word       L_26A913                    ; 26A90D/13A9
    .word       L_26A92F                    ; 26A90F/2FA9
    .word       L_26A93E                    ; 26A911/3EA9
L_26A913:
    ADDPOSE     #2, WAIT #4                 ; 26A913/6402
L_26A915:
    MOV         REG,VAR6                    ; 26A915/1E06
    TABLEJMP    #4                          ; 26A917/0F04
    .word       L_26A8D9                    ; 26A919/D9A8
    .word       L_26A921                    ; 26A91B/21A9
    .word       L_26A92F                    ; 26A91D/2FA9
    .word       L_26A93E                    ; 26A91F/3EA9
L_26A921:
    WAIT        #4                          ; 26A921/0604
L_26A923:
    MOV         REG,VAR6                    ; 26A923/1E06
    TABLEJMP    #4                          ; 26A925/0F04
    .word       L_26A8D9                    ; 26A927/D9A8
    .word       L_26A8F6                    ; 26A929/F6A8
    .word       L_26A92F                    ; 26A92B/2FA9
    .word       L_26A93E                    ; 26A92D/3EA9
L_26A92F:
    ASMCALL     $8829, WAIT #4              ; 26A92F/D42988 // Set pose to 0 (respect facing)
L_26A932:
    MOV         REG,VAR6                    ; 26A932/1E06
    TABLEJMP    #4                          ; 26A934/0F04
    .word       L_26A8D9                    ; 26A936/D9A8
    .word       L_26A8F6                    ; 26A938/F6A8
    .word       L_26A92F                    ; 26A93A/2FA9
    .word       L_26A93E                    ; 26A93C/3EA9
L_26A93E:
    ASMCALL     $8851                       ; 26A93E/D05188 // Face towards Kirby
    ASMCALL     $90BA                       ; 26A941/D0BA90 // VAR1 = -VAR1 (invert facing?)
    ASMCALL     $8829                       ; 26A944/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $E26A                       ; 26A947/D06AE2 // Set X velocity (respect facing)
    .word       $0066                       ; 26A94A/6600
    ONTICK      $26AB24                     ; 26A94C/0824AB26
L_26A950:
    WAIT        #4                          ; 26A950/0604
L_26A952:
    ADDPOSE     #2                          ; 26A952/6002
    WAIT        #4                          ; 26A954/0604
L_26A956:
    ADDPOSE     #-2                         ; 26A956/60FE
    A_JMP       L_26A950                    ; 26A958/1750A9

L_26A95B:
    ONTICK      $26ABB9                     ; 26A95B/08B9AB26
    ASMCALL     $917C                       ; 26A95F/D07C91
    ASMCALL     $ABD9                       ; 26A962/D0D9AB
    MOV         VAR3,#$00                   ; 26A965/0D0300
    MOV         VAR4,#$00                   ; 26A968/0D0400
L_26A96B:
    ASMCALL     $8829                       ; 26A96B/D02988 // Set pose to 0 (respect facing)
    LOOP        #8                          ; 26A96E/0108
        WAIT        #1                          ; 26A970/0601
L_26A972:
        MOV         REG,VAR3                    ; 26A972/1E03
        BREAKNE     L_26A987                    ; 26A974/1587A9
    ENDLOOP                                 ; 26A977/02
    ADDPOSE     #2                          ; 26A978/6002
L_26A97A:
    LOOP        #8                          ; 26A97A/0108
        WAIT        #1                          ; 26A97C/0601
L_26A97E:
        MOV         REG,VAR3                    ; 26A97E/1E03
        BREAKNE     L_26A996                    ; 26A980/1596A9
    ENDLOOP                                 ; 26A983/02
    A_JMP       L_26A96B                    ; 26A984/176BA9

L_26A987:
    ASMCALL     $8829                       ; 26A987/D02988 // Set pose to 0 (respect facing)
    LOOP        #4                          ; 26A98A/0104
        WAIT        #1                          ; 26A98C/0601
L_26A98E:
        MOV         REG,VAR3                    ; 26A98E/1E03
        BREAKEQ     L_26A96B                    ; 26A990/146BA9
    ENDLOOP                                 ; 26A993/02
    ADDPOSE     #2                          ; 26A994/6002
L_26A996:
    LOOP        #4                          ; 26A996/0104
        WAIT        #1                          ; 26A998/0601
L_26A99A:
        MOV         REG,VAR3                    ; 26A99A/1E03
        BREAKEQ     L_26A97A                    ; 26A99C/147AA9
    ENDLOOP                                 ; 26A99F/02
    A_JMP       L_26A987                    ; 26A9A0/1787A9

L_26A9A3:
    ONTICK      $26AC00                     ; 26A9A3/0800AC26
    ASMCALL     $AC24                       ; 26A9A7/D024AC
    MOV         VAR5,#$00                   ; 26A9AA/0D0500
    ASMCALL     $8851                       ; 26A9AD/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 26A9B0/D02988 // Set pose to 0 (respect facing)
L_26A9B3:
    WAIT        #1                          ; 26A9B3/0601
L_26A9B5:
    MOV         REG,VAR5                    ; 26A9B5/1E05
    JEQ         L_26A9B3                    ; 26A9B7/0AB3A9
    MOV         REG,VAR2                    ; 26A9BA/1E02
    JNE         L_26AA22                    ; 26A9BC/0B22AA
    ASMCALL     $8829                       ; 26A9BF/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $9340, WAIT #4              ; 26A9C2/D44093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF00                       ; 26A9C5/00FF
    .word       $0400                       ; 26A9C7/0004
    ASMCALL     $9340                       ; 26A9C9/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FE00                       ; 26A9CC/00FE
    .word       $0300                       ; 26A9CE/0003
    ADDPOSE     #2, WAIT #4                 ; 26A9D0/6402
    ASMCALL     $9340                       ; 26A9D2/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FD00                       ; 26A9D5/00FD
    .word       $0200                       ; 26A9D7/0002
    ADDPOSE     #-2, WAIT #4                ; 26A9D9/64FE
    ASMCALL     $9340                       ; 26A9DB/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FE00                       ; 26A9DE/00FE
    .word       $FF80                       ; 26A9E0/80FF
    ADDPOSE     #2, WAIT #4                 ; 26A9E2/6402
    ASMCALL     $9340                       ; 26A9E4/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF00                       ; 26A9E7/00FF
    .word       $FF00                       ; 26A9E9/00FF
    ADDPOSE     #-2, WAIT #4                ; 26A9EB/64FE
    ADDPOSE     #2, WAIT #4                 ; 26A9ED/6402
    ASMCALL     $9340                       ; 26A9EF/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF80                       ; 26A9F2/80FF
    .word       $FE00                       ; 26A9F4/00FE
    ADDPOSE     #-2, WAIT #4                ; 26A9F6/64FE
    ASMCALL     $9340, WAIT #4              ; 26A9F8/D44093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0100                       ; 26A9FB/0001
    .word       $FD00                       ; 26A9FD/00FD
    ASMCALL     $9340, WAIT #4              ; 26A9FF/D44093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0140                       ; 26AA02/4001
    .word       $FE00                       ; 26AA04/00FE
    ASMCALL     $9340, WAIT #4              ; 26AA06/D44093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0140                       ; 26AA09/4001
    .word       $FF00                       ; 26AA0B/00FF
    ASMCALL     $9340, WAIT #4              ; 26AA0D/D44093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0140                       ; 26AA10/4001
    .word       $FF80                       ; 26AA12/80FF
    ASMCALL     $9340                       ; 26AA14/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0140                       ; 26AA17/4001
    .word       $0080                       ; 26AA19/8000
    ADDPOSE     #2                          ; 26AA1B/6002
    WAIT        #16                         ; 26AA1D/0610
    A_JMP       L_26AA8D                    ; 26AA1F/178DAA

L_26AA22:
    ASMCALL     $8829                       ; 26AA22/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $9340, WAIT #3              ; 26AA25/D34093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF00                       ; 26AA28/00FF
    .word       $0400                       ; 26AA2A/0004
L_26AA2C:
    ASMCALL     $9340                       ; 26AA2C/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FE00                       ; 26AA2F/00FE
    .word       $0300                       ; 26AA31/0003
    ADDPOSE     #2, WAIT #3                 ; 26AA33/6302
L_26AA35:
    ASMCALL     $9340                       ; 26AA35/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FD00                       ; 26AA38/00FD
    .word       $0200                       ; 26AA3A/0002
    ADDPOSE     #-2, WAIT #3                ; 26AA3C/63FE
L_26AA3E:
    ASMCALL     $9340                       ; 26AA3E/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FE00                       ; 26AA41/00FE
    .word       $FF80                       ; 26AA43/80FF
    ADDPOSE     #2, WAIT #3                 ; 26AA45/6302
L_26AA47:
    ASMCALL     $9340                       ; 26AA47/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF00                       ; 26AA4A/00FF
    .word       $FF00                       ; 26AA4C/00FF
    ADDPOSE     #-2, WAIT #3                ; 26AA4E/63FE
L_26AA50:
    ADDPOSE     #2, WAIT #3                 ; 26AA50/6302
L_26AA52:
    ASMCALL     $9340                       ; 26AA52/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF80                       ; 26AA55/80FF
    .word       $FE00                       ; 26AA57/00FE
    ADDPOSE     #-2, WAIT #3                ; 26AA59/63FE
L_26AA5B:
    ASMCALL     $9340, WAIT #3              ; 26AA5B/D34093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0100                       ; 26AA5E/0001
    .word       $FD00                       ; 26AA60/00FD
L_26AA62:
    ASMCALL     $9340, WAIT #3              ; 26AA62/D34093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0140                       ; 26AA65/4001
    .word       $FE00                       ; 26AA67/00FE
L_26AA69:
    ASMCALL     $9340, WAIT #3              ; 26AA69/D34093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0140                       ; 26AA6C/4001
    .word       $FF00                       ; 26AA6E/00FF
L_26AA70:
    ASMCALL     $9340, WAIT #3              ; 26AA70/D34093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0140                       ; 26AA73/4001
    .word       $FF80                       ; 26AA75/80FF
L_26AA77:
    ASMCALL     $9340                       ; 26AA77/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0140                       ; 26AA7A/4001
    .word       $0080                       ; 26AA7C/8000
    ADDPOSE     #2, WAIT #11                ; 26AA7E/6B02
L_26AA80:
    A_JMP       L_26AA83                    ; 26AA80/1783AA

L_26AA83:
    ONTICK      $26AC81                     ; 26AA83/0881AC26
    ASMCALL     $AD30                       ; 26AA87/D030AD
    A_JMP       L_26AA94                    ; 26AA8A/1794AA

L_26AA8D:
    ONTICK      $26ACF8                     ; 26AA8D/08F8AC26
    ASMCALL     $AD3B                       ; 26AA91/D03BAD
L_26AA94:
    ASMCALL     $8B7F                       ; 26AA94/D07F8B // Unknown ASM $228B7F
    .word       $AADA                       ; 26AA97/DAAA
    MOV         VAR4,#$04                   ; 26AA99/0D0404
    MOV         VAR5,#$28                   ; 26AA9C/0D0528
L_26AA9F:
    ASMCALL     $8829                       ; 26AA9F/D02988 // Set pose to 0 (respect facing)
    WAIT        #1                          ; 26AAA2/0601
L_26AAA4:
    MOV         REG,VAR6                    ; 26AAA4/1E06
    JNE         L_26AA9F                    ; 26AAA6/0B9FAA
    WAIT        #1                          ; 26AAA9/0601
L_26AAAB:
    MOV         REG,VAR6                    ; 26AAAB/1E06
    JNE         L_26AA9F                    ; 26AAAD/0B9FAA
    WAIT        #1                          ; 26AAB0/0601
L_26AAB2:
    MOV         REG,VAR6                    ; 26AAB2/1E06
    JNE         L_26AA9F                    ; 26AAB4/0B9FAA
    WAIT        #1                          ; 26AAB7/0601
L_26AAB9:
    MOV         REG,VAR6                    ; 26AAB9/1E06
    JNE         L_26AA9F                    ; 26AABB/0B9FAA
    ADDPOSE     #2                          ; 26AABE/6002
    WAIT        #1                          ; 26AAC0/0601
L_26AAC2:
    MOV         REG,VAR6                    ; 26AAC2/1E06
    JNE         L_26AA9F                    ; 26AAC4/0B9FAA
    WAIT        #1                          ; 26AAC7/0601
L_26AAC9:
    MOV         REG,VAR6                    ; 26AAC9/1E06
    JNE         L_26AA9F                    ; 26AACB/0B9FAA
    WAIT        #1                          ; 26AACE/0601
L_26AAD0:
    MOV         REG,VAR6                    ; 26AAD0/1E06
    JNE         L_26AA9F                    ; 26AAD2/0B9FAA
    WAIT        #1                          ; 26AAD5/0601
L_26AAD7:
    A_JMP       L_26AA9F                    ; 26AAD7/179FAA

; CODE OR DATA -- $26AADA .. $26B084
incbinRange "../split/prg/bank26.bin", $0ADA, $1084

Script39_Gordo:
    SETBANK     #$22                        ; 26B084/2822
    ONPOSITION  $D9BB                       ; 26B086/21BBD9
    ASMCALL     $84A4                       ; 26B089/D0A484 // Store VAR1 in $0784[self]
    MOV         REG,VAR0                    ; 26B08C/1E00
    MOV         VAR2,REG                    ; 26B08E/1D02
    MOV         REG,VAR1                    ; 26B090/1E01
    MOV         VAR3,REG                    ; 26B092/1D03
    MOV         VAR0,#$02                   ; 26B094/0D0002
    MOV         VAR5,#$FF                   ; 26B097/0D05FF
    MOV         VAR6,#$01                   ; 26B09A/0D0601
    MOV         REG,#$00                    ; 26B09D/1B00
    ASMCALL     $96B9                       ; 26B09F/D0B996 // Unknown ASM $2296B9
    .word       $B16D                       ; 26B0A2/6DB1
    SPRITEMAP   L_309C50                     ; 26B0A4/1A509C30
    ASMCALL     $8851                       ; 26B0A8/D05188 // Face towards Kirby
    MOV         REG,VAR2                    ; 26B0AB/1E02
    TABLEJMP    #4                          ; 26B0AD/0F04
    .word       L_26B11A                    ; 26B0AF/1AB1
    .word       L_26B0FE                    ; 26B0B1/FEB0
    .word       L_26B0E2                    ; 26B0B3/E2B0
    .word       L_26B0B7                    ; 26B0B5/B7B0
L_26B0B7:
    ONTICK      $26B15B                     ; 26B0B7/085BB126
L_26B0BB:
    SETYVEL     #$FF80                      ; 26B0BB/C080FF
    WAIT        #16                         ; 26B0BE/0610
L_26B0C0:
    SETYVEL     #$FF40                      ; 26B0C0/C040FF
    WAIT        #96                         ; 26B0C3/0660
L_26B0C5:
    SETYVEL     #$FF80                      ; 26B0C5/C080FF
    WAIT        #16                         ; 26B0C8/0610
L_26B0CA:
    ZEROVEL                                 ; 26B0CA/38
    WAIT        #16                         ; 26B0CB/0610
L_26B0CD:
    SETYVEL     #$0080                      ; 26B0CD/C08000
    WAIT        #16                         ; 26B0D0/0610
L_26B0D2:
    SETYVEL     #$00C0                      ; 26B0D2/C0C000
    WAIT        #96                         ; 26B0D5/0660
L_26B0D7:
    SETYVEL     #$0080                      ; 26B0D7/C08000
    WAIT        #16                         ; 26B0DA/0610
L_26B0DC:
    ZEROVEL                                 ; 26B0DC/38
    WAIT        #16                         ; 26B0DD/0610
L_26B0DF:
    A_JMP       L_26B0BB                    ; 26B0DF/17BBB0

L_26B0E2:
    ONTICK      $26B12D                     ; 26B0E2/082DB126
    ASMCALL     $8B7F                       ; 26B0E6/D07F8B // Unknown ASM $228B7F
    .word       $B0FA                       ; 26B0E9/FAB0
L_26B0EB:
    SETYVEL     #$FF00, WAIT #2             ; 26B0EB/C200FF
L_26B0EE:
    SETYVEL     #$FF80, WAIT #2             ; 26B0EE/C280FF
L_26B0F1:
    SETYVEL     #$0080, WAIT #2             ; 26B0F1/C28000
L_26B0F4:
    SETYVEL     #$0100, WAIT #2             ; 26B0F4/C20001
L_26B0F7:
    A_JMP       L_26B0EB                    ; 26B0F7/17EBB0

; CODE OR DATA -- $26B0FA .. $26B0FE
incbinRange "../split/prg/bank26.bin", $10FA, $10FE

L_26B0FE:
    ONTICK      $26B144                     ; 26B0FE/0844B126
    ASMCALL     $8BC0                       ; 26B102/D0C08B // Unknown ASM $228BC0
    .word       $B116                       ; 26B105/16B1
L_26B107:
    SETXVEL     #$FF00, WAIT #2             ; 26B107/B200FF
L_26B10A:
    SETXVEL     #$FF80, WAIT #2             ; 26B10A/B280FF
L_26B10D:
    SETXVEL     #$0080, WAIT #2             ; 26B10D/B28000
L_26B110:
    SETXVEL     #$0100, WAIT #2             ; 26B110/B20001
L_26B113:
    A_JMP       L_26B107                    ; 26B113/1707B1

; CODE OR DATA -- $26B116 .. $26B11A
incbinRange "../split/prg/bank26.bin", $1116, $111A

L_26B11A:
    ONTICK      $26B15B                     ; 26B11A/085BB126
L_26B11E:
    SETYVEL     #$FFC0, WAIT #8             ; 26B11E/C8C0FF
L_26B121:
    SETYVEL     #$FF80, WAIT #8             ; 26B121/C880FF
L_26B124:
    SETYVEL     #$0080, WAIT #8             ; 26B124/C88000
L_26B127:
    SETYVEL     #$0040, WAIT #8             ; 26B127/C84000
L_26B12A:
    A_JMP       L_26B11E                    ; 26B12A/171EB1

; CODE OR DATA -- $26B12D .. $26B243
incbinRange "../split/prg/bank26.bin", $112D, $1243

Script3A_Pengi:
    SETBANK     #$22                        ; 26B243/2822
    ONPOSITION  $D9BB                       ; 26B245/21BBD9
    ASMCALL     $84A4                       ; 26B248/D0A484 // Store VAR1 in $0784[self]
    MOV         REG,VAR0                    ; 26B24B/1E00
    TABLEJMP    #2                          ; 26B24D/0F02
    .word       L_26B253                    ; 26B24F/53B2
    .word       L_26B44A                    ; 26B251/4AB4
L_26B253:
    MOV         VAR0,#$02                   ; 26B253/0D0002
    SPRITEMAP   L_3285E6                     ; 26B256/1AE68532
    ASMCALL     $8851                       ; 26B25A/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 26B25D/D02988 // Set pose to 0 (respect facing)
    MOV         REG,VAR1                    ; 26B260/1E01
    MOV         VAR2,REG                    ; 26B262/1D02
    MOV         VAR0,#$02                   ; 26B264/0D0002
    ONTICK      $26B327                     ; 26B267/0827B326
    MOV         VAR3,#$00                   ; 26B26B/0D0300
    MOV         VAR4,#$00                   ; 26B26E/0D0400
    MOV         VAR5,#$00                   ; 26B271/0D0500
    MOV         VAR6,#$00                   ; 26B274/0D0600
    ASMCALL     $962E                       ; 26B277/D02E96
    JEQ         L_26B28C                    ; 26B27A/0A8CB2
    MOV         VAR4,#$03                   ; 26B27D/0D0403
    MOV         VAR3,#$00                   ; 26B280/0D0300
    MOV         VAR5,#$00                   ; 26B283/0D0500
    MOV         VAR6,#$F0                   ; 26B286/0D06F0
    A_JMP       L_26B2E8                    ; 26B289/17E8B2

L_26B28C:
    ASMCALL     $8851                       ; 26B28C/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 26B28F/D02988 // Set pose to 0 (respect facing)
    WAIT        #1                          ; 26B292/0601
L_26B294:
    MOV         REG,VAR4                    ; 26B294/1E04
    TABLEJMP    #4                          ; 26B296/0F04
    .word       L_26B28C                    ; 26B298/8CB2
    .word       L_26B2A0                    ; 26B29A/A0B2
    .word       L_26B2A0                    ; 26B29C/A0B2
    .word       L_26B2E8                    ; 26B29E/E8B2
L_26B2A0:
    ADDPOSE     #2                          ; 26B2A0/6002
    ASMCALL     $8B7F                       ; 26B2A2/D07F8B // Unknown ASM $228B7F
    .word       $B2D6                       ; 26B2A5/D6B2
    ASMCALL     $8BE4                       ; 26B2A7/D0E48B // Unknown ASM $228BE4
    .word       $B2E2                       ; 26B2AA/E2B2
L_26B2AC:
    ASMCALL     $8B7F                       ; 26B2AC/D07F8B // Unknown ASM $228B7F
    .word       $B2DA                       ; 26B2AF/DAB2
    ASMCALL     $8BE4                       ; 26B2B1/D0E48B // Unknown ASM $228BE4
    .word       $B2E4                       ; 26B2B4/E4B2
L_26B2B6:
    ASMCALL     $8B7F                       ; 26B2B6/D07F8B // Unknown ASM $228B7F
    .word       $B2DE                       ; 26B2B9/DEB2
    ASMCALL     $8BE4                       ; 26B2BB/D0E48B // Unknown ASM $228BE4
    .word       $B2E6                       ; 26B2BE/E6B2
L_26B2C0:
    SETXVEL     #$0000                      ; 26B2C0/B00000
L_26B2C3:
    WAIT        #1                          ; 26B2C3/0601
L_26B2C5:
    MOV         REG,VAR4                    ; 26B2C5/1E04
    TABLEJMP    #3                          ; 26B2C7/0F03
    .word       L_26B2CF                    ; 26B2C9/CFB2
    .word       L_26B2CF                    ; 26B2CB/CFB2
    .word       L_26B2C3                    ; 26B2CD/C3B2
L_26B2CF:
    MOV         VAR4,#$00                   ; 26B2CF/0D0400
    ZEROVEL                                 ; 26B2D2/38
    A_JMP       L_26B28C                    ; 26B2D3/178CB2

; CODE OR DATA -- $26B2D6 .. $26B2E8
incbinRange "../split/prg/bank26.bin", $12D6, $12E8

L_26B2E8:
    ASMCALL     $8851                       ; 26B2E8/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 26B2EB/D02988 // Set pose to 0 (respect facing)
    WAIT        #16                         ; 26B2EE/0610
L_26B2F0:
    ADDPOSE     #4                          ; 26B2F0/6004
    WAIT        #51                         ; 26B2F2/0633
L_26B2F4:
    ASMCALL     $8829                       ; 26B2F4/D02988 // Set pose to 0 (respect facing)
    ADDPOSE     #6                          ; 26B2F7/6006
    MOV         VAR3,#$00                   ; 26B2F9/0D0300
    MOV         VAR5,#$00                   ; 26B2FC/0D0500
    ASMCALL     $DE4B                       ; 26B2FF/D04BDE // Play sound effect
    .byte       $44                         ; 26B302/44
    LOOP        #24                         ; 26B303/0118
        ASMCALL     $DED0, WAIT #2              ; 26B305/D2D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $09                         ; 26B308/09
        .byte       $12                         ; 26B309/12
        .byte       $3A                         ; 26B30A/3A
        .byte       $00                         ; 26B30B/00
        .byte       $00                         ; 26B30C/00
        .byte       $00                         ; 26B30D/00
        .byte       $01                         ; 26B30E/01
        .byte       $00                         ; 26B30F/00
L_26B310:
        ADDPOSE     #2, WAIT #2                 ; 26B310/6202
L_26B312:
        ADDPOSE     #-2, WAIT #2                ; 26B312/62FE
L_26B314:
        ADDPOSE     #2, WAIT #2                 ; 26B314/6202
L_26B316:
        ADDPOSE     #-2                         ; 26B316/60FE
    ENDLOOP                                 ; 26B318/02
    WAIT        #32                         ; 26B319/0620
L_26B31B:
    MOV         VAR3,#$00                   ; 26B31B/0D0300
    MOV         VAR4,#$00                   ; 26B31E/0D0400
    MOV         VAR5,#$00                   ; 26B321/0D0500
    A_JMP       L_26B28C                    ; 26B324/178CB2

; CODE OR DATA -- $26B327 .. $26B44A
incbinRange "../split/prg/bank26.bin", $1327, $144A

L_26B44A:
    SPRITEMAP   L_3285FA                     ; 26B44A/1AFA8532
    ONTICK      $26B46A                     ; 26B44E/086AB426
    ASMCALL     $8C05                       ; 26B452/D0058C // Unknown ASM $228C05
    .byte       $0C                         ; 26B455/0C
    ASMCALL     $B472                       ; 26B456/D072B4
    SETZPOS     #$00FF                      ; 26B459/3AFF00
    ONTICK      $26B46A                     ; 26B45C/086AB426
    SETPOSE     #$00, WAIT #1               ; 26B460/5100
L_26B462:
    SETZPOS     #$0000                      ; 26B462/3A0000
    LOOP        #7                          ; 26B465/0107
        INCPOSE     WAIT #1                     ; 26B467/71
L_26B468:
    ENDLOOP                                 ; 26B468/02
    END                                     ; 26B469/00

; CODE OR DATA -- $26B46A .. $26B4BD
incbinRange "../split/prg/bank26.bin", $146A, $14BD

Script3B_Chilly:
    SETBANK     #$22                        ; 26B4BD/2822
    ONPOSITION  $D9BB                       ; 26B4BF/21BBD9
    MOV         REG,VAR0                    ; 26B4C2/1E00
    TABLEJMP    #2                          ; 26B4C4/0F02
    .word       L_26B4CA                    ; 26B4C6/CAB4
    .word       L_26B66B                    ; 26B4C8/6BB6
L_26B4CA:
    ASMCALL     $84A4                       ; 26B4CA/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 26B4CD/0D0002
    MOV         VAR4,#$00                   ; 26B4D0/0D0400
    MOV         VAR6,#$00                   ; 26B4D3/0D0600
    ONTICK      $26B5D0                     ; 26B4D6/08D0B526
    ASMCALL     $8851                       ; 26B4DA/D05188 // Face towards Kirby
    MOV         REG,#$04                    ; 26B4DD/1B04
    ASMCALL     $C8DD                       ; 26B4DF/D0DDC8
    TABLEJMP    #4                          ; 26B4E2/0F04
    .word       L_26B4EC                    ; 26B4E4/ECB4
    .word       L_26B526                    ; 26B4E6/26B5
    .word       L_26B51C                    ; 26B4E8/1CB5
    .word       L_26B4EC                    ; 26B4EA/ECB4
L_26B4EC:
    MOV         VAR3,#$00                   ; 26B4EC/0D0300
    SPRITEMAP   L_32868D                     ; 26B4EF/1A8D8632
    ASMCALL     $8851                       ; 26B4F3/D05188 // Face towards Kirby
    LOOP        #4                          ; 26B4F6/0104
        ASMCALL     $8829, WAIT #3              ; 26B4F8/D32988 // Set pose to 0 (respect facing)
L_26B4FB:
        ADDPOSE     #2, WAIT #12                ; 26B4FB/6C02
L_26B4FD:
        ADDPOSE     #2, WAIT #3                 ; 26B4FD/6302
L_26B4FF:
        ASMCALL     $90BA                       ; 26B4FF/D0BA90 // VAR1 = -VAR1 (invert facing?)
    ENDLOOP                                 ; 26B502/02
    ASMCALL     $90BA                       ; 26B503/D0BA90 // VAR1 = -VAR1 (invert facing?)
L_26B506:
    MOV         VAR3,#$01                   ; 26B506/0D0301
    ASMCALL     $B644                       ; 26B509/D044B6
    JNE         L_26B51C                    ; 26B50C/0B1CB5
    ASMCALL     $90BA                       ; 26B50F/D0BA90 // VAR1 = -VAR1 (invert facing?)
    ASMCALL     $8829, WAIT #3              ; 26B512/D32988 // Set pose to 0 (respect facing)
    ADDPOSE     #2, WAIT #12                ; 26B515/6C02
    ADDPOSE     #2, WAIT #3                 ; 26B517/6302
    A_JMP       L_26B506                    ; 26B519/1706B5

L_26B51C:
    MOV         VAR3,#$02                   ; 26B51C/0D0302
    SPRITEMAP   L_328699                     ; 26B51F/1A998632
    A_JSR       L_26B557                    ; 26B523/1857B5
L_26B526:
    MOV         VAR3,#$03                   ; 26B526/0D0303
    ZEROVEL                                 ; 26B529/38
    SPRITEMAP   L_3286BD                     ; 26B52A/1ABD8632
    ASMCALL     $8851                       ; 26B52E/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 26B531/D02988 // Set pose to 0 (respect facing)
    LOOP        #15                         ; 26B534/010F
        WAIT        #2                          ; 26B536/0602
L_26B538:
        ADDPOSE     #2, WAIT #2                 ; 26B538/6202
L_26B53A:
        ADDPOSE     #-2                         ; 26B53A/60FE
    ENDLOOP                                 ; 26B53C/02
    MOV         VAR5,#$01                   ; 26B53D/0D0501
    ASMCALL     $DED0                       ; 26B540/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 26B543/09
    .byte       $12                         ; 26B544/12
    .byte       $3B                         ; 26B545/3B
    .byte       $00                         ; 26B546/00
    .byte       $00                         ; 26B547/00
    .byte       $00                         ; 26B548/00
    .byte       $01                         ; 26B549/01
    .byte       $00                         ; 26B54A/00
    LOOP        #64                         ; 26B54B/0140
        WAIT        #2                          ; 26B54D/0602
L_26B54F:
        ADDPOSE     #2, WAIT #2                 ; 26B54F/6202
L_26B551:
        ADDPOSE     #-2                         ; 26B551/60FE
    ENDLOOP                                 ; 26B553/02
    A_JMP       L_26B4EC                    ; 26B554/17ECB4

L_26B557:
    ASMCALL     $927C                       ; 26B557/D07C92 // Get $0784[self]
    JNE         L_26B58B                    ; 26B55A/0B8BB5
    LOOP        #4                          ; 26B55D/0104
        ASMCALL     $8851                       ; 26B55F/D05188 // Face towards Kirby
        ASMCALL     $8829, WAIT #8              ; 26B562/D82988 // Set pose to 0 (respect facing)
L_26B565:
        ADDPOSE     #2, WAIT #8                 ; 26B565/6802
L_26B567:
        ADDPOSE     #2, WAIT #8                 ; 26B567/6802
L_26B569:
        ASMCALL     $E26A                       ; 26B569/D06AE2 // Set X velocity (respect facing)
        .word       $0300                       ; 26B56C/0003
        ADDPOSE     #2, WAIT #2                 ; 26B56E/6202
L_26B570:
        ASMCALL     $E26A                       ; 26B570/D06AE2 // Set X velocity (respect facing)
        .word       $0200                       ; 26B573/0002
        ADDPOSE     #2, WAIT #2                 ; 26B575/6202
L_26B577:
        ASMCALL     $E26A                       ; 26B577/D06AE2 // Set X velocity (respect facing)
        .word       $0100                       ; 26B57A/0001
        ADDPOSE     #2, WAIT #2                 ; 26B57C/6202
L_26B57E:
        ASMCALL     $E26A                       ; 26B57E/D06AE2 // Set X velocity (respect facing)
        .word       $0080                       ; 26B581/8000
        ADDPOSE     #2, WAIT #2                 ; 26B583/6202
L_26B585:
        ADDPOSE     #2, WAIT #12                ; 26B585/6C02
L_26B587:
        ADDPOSE     #2, WAIT #8                 ; 26B587/6802
L_26B589:
    ENDLOOP                                 ; 26B589/02
    A_RTS                                   ; 26B58A/19

L_26B58B:
    LOOP        #3                          ; 26B58B/0103
        ASMCALL     $8851                       ; 26B58D/D05188 // Face towards Kirby
        ASMCALL     $8829, WAIT #6              ; 26B590/D62988 // Set pose to 0 (respect facing)
L_26B593:
        ADDPOSE     #2, WAIT #6                 ; 26B593/6602
L_26B595:
        ADDPOSE     #2, WAIT #6                 ; 26B595/6602
L_26B597:
        ASMCALL     $E26A                       ; 26B597/D06AE2 // Set X velocity (respect facing)
        .word       $0400                       ; 26B59A/0004
        ADDPOSE     #2, WAIT #3                 ; 26B59C/6302
L_26B59E:
        ASMCALL     $E26A                       ; 26B59E/D06AE2 // Set X velocity (respect facing)
        .word       $0200                       ; 26B5A1/0002
        ADDPOSE     #2, WAIT #3                 ; 26B5A3/6302
L_26B5A5:
        ASMCALL     $E26A                       ; 26B5A5/D06AE2 // Set X velocity (respect facing)
        .word       $0100                       ; 26B5A8/0001
        ADDPOSE     #2, WAIT #3                 ; 26B5AA/6302
L_26B5AC:
        ASMCALL     $E26A                       ; 26B5AC/D06AE2 // Set X velocity (respect facing)
        .word       $0080                       ; 26B5AF/8000
        ADDPOSE     #2, WAIT #3                 ; 26B5B1/6302
L_26B5B3:
        ADDPOSE     #2, WAIT #12                ; 26B5B3/6C02
L_26B5B5:
        ADDPOSE     #2, WAIT #6                 ; 26B5B5/6602
L_26B5B7:
    ENDLOOP                                 ; 26B5B7/02
    A_RTS                                   ; 26B5B8/19

; CODE OR DATA -- $26B5B9 .. $26B66B
incbinRange "../split/prg/bank26.bin", $15B9, $166B

L_26B66B:
    SPRITEMAP   L_3286C5                     ; 26B66B/1AC58632
    ONTICK      $26B697                     ; 26B66F/0897B626
    ASMCALL     $DE4B                       ; 26B673/D04BDE // Play sound effect
    .byte       $44                         ; 26B676/44
    MOV         VAR3,#$00                   ; 26B677/0D0300
    A_JSR       L_26B68D                    ; 26B67A/188DB6
    LOOP        #16                         ; 26B67D/0110
        A_JSR       L_26B686                    ; 26B67F/1886B6
    ENDLOOP                                 ; 26B682/02
    A_JSR       L_26B68D                    ; 26B683/188DB6
L_26B686:
    SETPOSE     #$00, WAIT #1               ; 26B686/5100
L_26B688:
    LOOP        #9                          ; 26B688/0109
        INCPOSE     WAIT #1                     ; 26B68A/71
L_26B68B:
    ENDLOOP                                 ; 26B68B/02
    A_RTS                                   ; 26B68C/19

L_26B68D:
    LOOP        #2                          ; 26B68D/0102
        SETPOSE     #$00, WAIT #2               ; 26B68F/5200
L_26B691:
        LOOP        #9                          ; 26B691/0109
            INCPOSE     WAIT #1                     ; 26B693/71
L_26B694:
        ENDLOOP                                 ; 26B694/02
    ENDLOOP                                 ; 26B695/02
    A_RTS                                   ; 26B696/19

; CODE OR DATA -- $26B697 .. $26B6D2
incbinRange "../split/prg/bank26.bin", $1697, $16D2

Script0C:
    SETBANK     #$22                        ; 26B6D2/2822
    ONPOSITION  $D9BB                       ; 26B6D4/21BBD9
    ENDTICK                                 ; 26B6D7/0E
    SETZPOS     #$00FF                      ; 26B6D8/3AFF00
    SPRITEMAP   L_3085E8                     ; 26B6DB/1AE88530
    SETPOSE     #$00                        ; 26B6DF/5000
    LOOP        #48                         ; 26B6E1/0130
        INCPOSE     WAIT #1                     ; 26B6E3/71
    ENDLOOP                                 ; 26B6E4/02
    END                                     ; 26B6E5/00

Script3C_Togezo:
    SETBANK     #$22                        ; 26B6E6/2822
    ONPOSITION  $D9BB                       ; 26B6E8/21BBD9
    ASMCALL     $84A4                       ; 26B6EB/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 26B6EE/0D0002
    ASMCALL     $8851                       ; 26B6F1/D05188 // Face towards Kirby
    MOV         VAR2,#$00                   ; 26B6F4/0D0200
    MOV         VAR3,#$00                   ; 26B6F7/0D0300
    MOV         VAR4,#$00                   ; 26B6FA/0D0400
    MOV         VAR5,#$00                   ; 26B6FD/0D0500
    MOV         VAR6,#$00                   ; 26B700/0D0600
    MOV         VAR7,#$00                   ; 26B703/0D0700
    ASMCALL     $962E                       ; 26B706/D02E96
    JEQ         L_26B70F                    ; 26B709/0A0FB7
    MOV         VAR3,#$02                   ; 26B70C/0D0302
L_26B70F:
    ONTICK      $26B7C1                     ; 26B70F/08C1B726
    SPRITEMAP   L_3287AB                     ; 26B713/1AAB8732
    MOV         REG,VAR3                    ; 26B717/1E03
    TABLEJMP    #5                          ; 26B719/0F05
    .word       L_26B725                    ; 26B71B/25B7
    .word       L_26B762                    ; 26B71D/62B7
    .word       L_26B73A                    ; 26B71F/3AB7
    .word       L_26B741                    ; 26B721/41B7
    .word       L_26B74B                    ; 26B723/4BB7
L_26B725:
    ASMCALL     $B787                       ; 26B725/D087B7
    ASMCALL     $B795                       ; 26B728/D095B7
    ASMCALL     $8851                       ; 26B72B/D05188 // Face towards Kirby
    ASMCALL     $E26A                       ; 26B72E/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 26B731/8000
L_26B733:
    ASMCALL     $8829, WAIT #13             ; 26B733/DD2988 // Set pose to 0 (respect facing)
L_26B736:
    INC2POSE    WAIT #13                    ; 26B736/9D
L_26B737:
    A_JMP       L_26B733                    ; 26B737/1733B7

L_26B73A:
    ZEROVEL                                 ; 26B73A/38
    SETYVEL     #$FD00                      ; 26B73B/C000FD
    A_JMP       L_26B752                    ; 26B73E/1752B7

L_26B741:
    ASMCALL     $DE4B                       ; 26B741/D04BDE // Play sound effect
    .byte       $4C                         ; 26B744/4C
    SETYVEL     #$FE00                      ; 26B745/C000FE
    A_JMP       L_26B752                    ; 26B748/1752B7

L_26B74B:
    ASMCALL     $DE4B                       ; 26B74B/D04BDE // Play sound effect
    .byte       $4C                         ; 26B74E/4C
    SETYVEL     #$FF00                      ; 26B74F/C000FF
L_26B752:
    SPRITEMAP   L_3287B3                     ; 26B752/1AB38732
    ASMCALL     $8851                       ; 26B756/D05188 // Face towards Kirby
L_26B759:
    ASMCALL     $8829, WAIT #3              ; 26B759/D32988 // Set pose to 0 (respect facing)
L_26B75C:
    INC2POSE    WAIT #3                     ; 26B75C/93
L_26B75D:
    INC2POSE    WAIT #3                     ; 26B75D/93
L_26B75E:
    INC2POSE    WAIT #3                     ; 26B75E/93
L_26B75F:
    A_JMP       L_26B759                    ; 26B75F/1759B7

L_26B762:
    SPRITEMAP   L_3287B3                     ; 26B762/1AB38732
    MOV         VAR4,#$3C                   ; 26B766/0D043C
    MOV         VAR5,#$00                   ; 26B769/0D0500
    MOV         VAR6,#$96                   ; 26B76C/0D0696
    ASMCALL     $B7A3                       ; 26B76F/D0A3B7
    ASMCALL     $DE4B                       ; 26B772/D04BDE // Play sound effect
    .byte       $3B                         ; 26B775/3B
L_26B776:
    ASMCALL     $9591                       ; 26B776/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $00                         ; 26B779/00
    .byte       $80                         ; 26B77A/80
    .byte       $01                         ; 26B77B/01
    .byte       $04                         ; 26B77C/04
    .byte       $04                         ; 26B77D/04
    ASMCALL     $8829, WAIT #1              ; 26B77E/D12988 // Set pose to 0 (respect facing)
L_26B781:
    INC2POSE    WAIT #1                     ; 26B781/91
L_26B782:
    INC2POSE    WAIT #1                     ; 26B782/91
L_26B783:
    INC2POSE    WAIT #1                     ; 26B783/91
L_26B784:
    A_JMP       L_26B776                    ; 26B784/1776B7

; CODE OR DATA -- $26B787 .. $26B99B
incbinRange "../split/prg/bank26.bin", $1787, $199B

L_26B99B:
    SETBANK     #$22                        ; 26B99B/2822
    SETZPOS     #$00FF                      ; 26B99D/3AFF00
    SPRITEMAP   L_308B84                     ; 26B9A0/1A848B30
    MOV         REG,VAR0                    ; 26B9A4/1E00
    TABLEJMP    #3                          ; 26B9A6/0F03
    .word       L_26B9AE                    ; 26B9A8/AEB9
    .word       L_26B9B9                    ; 26B9AA/B9B9
    .word       L_26B9C4                    ; 26B9AC/C4B9
L_26B9AE:
    MOV         REG,VAR3                    ; 26B9AE/1E03
    LOOP        REG                         ; 26B9B0/22
        ASMCALL     $B9EA                       ; 26B9B1/D0EAB9
        SETPOSE     #$00, WAIT #2               ; 26B9B4/5200
L_26B9B6:
        INCPOSE     WAIT #2                     ; 26B9B6/72
L_26B9B7:
    ENDLOOP                                 ; 26B9B7/02
    END                                     ; 26B9B8/00

L_26B9B9:
    MOV         REG,VAR3                    ; 26B9B9/1E03
    LOOP        REG                         ; 26B9BB/22
        ASMCALL     $BA17                       ; 26B9BC/D017BA
        SETPOSE     #$00, WAIT #2               ; 26B9BF/5200
L_26B9C1:
        INCPOSE     WAIT #2                     ; 26B9C1/72
L_26B9C2:
    ENDLOOP                                 ; 26B9C2/02
    END                                     ; 26B9C3/00

L_26B9C4:
    ONTICK      $26B9D4                     ; 26B9C4/08D4B926
L_26B9C8:
    ASMCALL     $BA17                       ; 26B9C8/D017BA
    SETPOSE     #$00, WAIT #2               ; 26B9CB/5200
L_26B9CD:
    INCPOSE     WAIT #2                     ; 26B9CD/72
L_26B9CE:
    MOV         REG,VAR3                    ; 26B9CE/1E03
    JEQ         L_26B9C8                    ; 26B9D0/0AC8B9
    END                                     ; 26B9D3/00

; CODE OR DATA -- $26B9D4 .. $26BA73
incbinRange "../split/prg/bank26.bin", $19D4, $1A73

Script40_Scarfy:
    SETBANK     #$22                        ; 26BA73/2822
    ONPOSITION  $D9BB                       ; 26BA75/21BBD9
    SPRITEMAP   L_32880B                     ; 26BA78/1A0B8832
    MOV         REG,VAR0                    ; 26BA7C/1E00
    MOV         VAR2,REG                    ; 26BA7E/1D02
    ASMCALL     $84A4                       ; 26BA80/D0A484 // Store VAR1 in $0784[self]
    ASMCALL     $8851                       ; 26BA83/D05188 // Face towards Kirby
    MOV         VAR0,#$02                   ; 26BA86/0D0002
    MOV         VAR3,#$05                   ; 26BA89/0D0305
    MOV         REG,VAR2                    ; 26BA8C/1E02
    TABLEJMP    #5                          ; 26BA8E/0F05
    .word       L_26BA9A                    ; 26BA90/9ABA
    .word       L_26BBBE                    ; 26BA92/BEBB
    .word       L_26BBD0                    ; 26BA94/D0BB
    .word       L_26BBE2                    ; 26BA96/E2BB
    .word       L_26BBF4                    ; 26BA98/F4BB
L_26BA9A:
    MOV         VAR3,#$00                   ; 26BA9A/0D0300
    ONTICK      $26BC85                     ; 26BA9D/0885BC26
    MOV         REG,#$00                    ; 26BAA1/1B00
    ASMCALL     $96B9                       ; 26BAA3/D0B996 // Unknown ASM $2296B9
    .word       $BD3B                       ; 26BAA6/3BBD
    SETYVEL     #$FF00, WAIT #4             ; 26BAA8/C400FF
L_26BAAB:
    SETYVEL     #$FF20, WAIT #1             ; 26BAAB/C120FF
L_26BAAE:
    SETYVEL     #$FF40, WAIT #1             ; 26BAAE/C140FF
L_26BAB1:
    SETYVEL     #$FF58, WAIT #1             ; 26BAB1/C158FF
L_26BAB4:
    SETYVEL     #$FF70, WAIT #1             ; 26BAB4/C170FF
L_26BAB7:
    SETYVEL     #$FF90, WAIT #1             ; 26BAB7/C190FF
L_26BABA:
    SETYVEL     #$FFA8, WAIT #1             ; 26BABA/C1A8FF
L_26BABD:
    SETYVEL     #$FFC0, WAIT #1             ; 26BABD/C1C0FF
L_26BAC0:
    SETYVEL     #$FFE0, WAIT #1             ; 26BAC0/C1E0FF
L_26BAC3:
    SETYVEL     #$0020, WAIT #1             ; 26BAC3/C12000
L_26BAC6:
    SETYVEL     #$0040, WAIT #1             ; 26BAC6/C14000
L_26BAC9:
    SETYVEL     #$0058, WAIT #1             ; 26BAC9/C15800
L_26BACC:
    SETYVEL     #$0070, WAIT #1             ; 26BACC/C17000
L_26BACF:
    SETYVEL     #$0090, WAIT #1             ; 26BACF/C19000
L_26BAD2:
    SETYVEL     #$00A8, WAIT #1             ; 26BAD2/C1A800
L_26BAD5:
    SETYVEL     #$00C0, WAIT #1             ; 26BAD5/C1C000
L_26BAD8:
    SETYVEL     #$00E0, WAIT #1             ; 26BAD8/C1E000
L_26BADB:
    SETYVEL     #$0100, WAIT #8             ; 26BADB/C80001
L_26BADE:
    SETYVEL     #$00E0, WAIT #1             ; 26BADE/C1E000
L_26BAE1:
    SETYVEL     #$00C0, WAIT #1             ; 26BAE1/C1C000
L_26BAE4:
    SETYVEL     #$00A8, WAIT #1             ; 26BAE4/C1A800
L_26BAE7:
    SETYVEL     #$0090, WAIT #1             ; 26BAE7/C19000
L_26BAEA:
    SETYVEL     #$0070, WAIT #1             ; 26BAEA/C17000
L_26BAED:
    SETYVEL     #$0058, WAIT #1             ; 26BAED/C15800
L_26BAF0:
    SETYVEL     #$0040, WAIT #1             ; 26BAF0/C14000
L_26BAF3:
    SETYVEL     #$0020, WAIT #1             ; 26BAF3/C12000
L_26BAF6:
    SETYVEL     #$FFE0, WAIT #1             ; 26BAF6/C1E0FF
L_26BAF9:
    SETYVEL     #$FFC0, WAIT #1             ; 26BAF9/C1C0FF
L_26BAFC:
    SETYVEL     #$FFA8, WAIT #1             ; 26BAFC/C1A8FF
L_26BAFF:
    SETYVEL     #$FF90, WAIT #1             ; 26BAFF/C190FF
L_26BB02:
    SETYVEL     #$FF70, WAIT #1             ; 26BB02/C170FF
L_26BB05:
    SETYVEL     #$FF58, WAIT #1             ; 26BB05/C158FF
L_26BB08:
    SETYVEL     #$FF40, WAIT #1             ; 26BB08/C140FF
L_26BB0B:
    SETYVEL     #$FF20, WAIT #1             ; 26BB0B/C120FF
L_26BB0E:
    SETYVEL     #$FF00, WAIT #8             ; 26BB0E/C800FF
L_26BB11:
    SETYVEL     #$FF20, WAIT #1             ; 26BB11/C120FF
L_26BB14:
    SETYVEL     #$FF40, WAIT #1             ; 26BB14/C140FF
L_26BB17:
    SETYVEL     #$FF58, WAIT #1             ; 26BB17/C158FF
L_26BB1A:
    SETYVEL     #$FF70, WAIT #1             ; 26BB1A/C170FF
L_26BB1D:
    SETYVEL     #$FF90, WAIT #1             ; 26BB1D/C190FF
L_26BB20:
    SETYVEL     #$FFA8, WAIT #1             ; 26BB20/C1A8FF
L_26BB23:
    SETYVEL     #$FFC0, WAIT #1             ; 26BB23/C1C0FF
L_26BB26:
    SETYVEL     #$FFE0, WAIT #1             ; 26BB26/C1E0FF
L_26BB29:
    A_JMP       L_26BAC3                    ; 26BB29/17C3BA

L_26BB2C:
    MOV         VAR3,#$00                   ; 26BB2C/0D0300
    ONTICK      $26BC85                     ; 26BB2F/0885BC26
    MOV         REG,#$00                    ; 26BB33/1B00
    ASMCALL     $96B9                       ; 26BB35/D0B996 // Unknown ASM $2296B9
    .word       $BD3B                       ; 26BB38/3BBD
    SETYVEL     #$0100, WAIT #4             ; 26BB3A/C40001
L_26BB3D:
    SETYVEL     #$00E0, WAIT #1             ; 26BB3D/C1E000
L_26BB40:
    SETYVEL     #$00C0, WAIT #1             ; 26BB40/C1C000
L_26BB43:
    SETYVEL     #$00A8, WAIT #1             ; 26BB43/C1A800
L_26BB46:
    SETYVEL     #$0090, WAIT #1             ; 26BB46/C19000
L_26BB49:
    SETYVEL     #$0070, WAIT #1             ; 26BB49/C17000
L_26BB4C:
    SETYVEL     #$0058, WAIT #1             ; 26BB4C/C15800
L_26BB4F:
    SETYVEL     #$0040, WAIT #1             ; 26BB4F/C14000
L_26BB52:
    SETYVEL     #$0020, WAIT #1             ; 26BB52/C12000
L_26BB55:
    A_JMP       L_26BAF6                    ; 26BB55/17F6BA

L_26BB58:
    MOV         VAR3,#$01                   ; 26BB58/0D0301
    ONTICK      $26BC85                     ; 26BB5B/0885BC26
    ZEROVEL                                 ; 26BB5F/38
    ASMCALL     $80FC                       ; 26BB60/D0FC80
    ASMCALL     $9066                       ; 26BB63/D06690
    ASMCALL     $90C8                       ; 26BB66/D0C890
    LOOP        #4                          ; 26BB69/0104
        ASMCALL     $9084, WAIT #2              ; 26BB6B/D28490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
        .word       $02C0                       ; 26BB6E/C002
L_26BB70:
        ASMCALL     $90C8                       ; 26BB70/D0C890
        ASMCALL     $9084, WAIT #2              ; 26BB73/D28490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
        .word       $0200                       ; 26BB76/0002
L_26BB78:
        ASMCALL     $90C8                       ; 26BB78/D0C890
    ENDLOOP                                 ; 26BB7B/02
    SPRITEMAP   L_328813                     ; 26BB7C/1A138832
    MOV         REG,#$07                    ; 26BB80/1B07
    ASMCALL     $96B9                       ; 26BB82/D0B996 // Unknown ASM $2296B9
    .word       $BD3B                       ; 26BB85/3BBD
    LOOP        #4                          ; 26BB87/0104
        ASMCALL     $9084, WAIT #2              ; 26BB89/D28490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
        .word       $02C0                       ; 26BB8C/C002
L_26BB8E:
        ASMCALL     $90C8                       ; 26BB8E/D0C890
        ASMCALL     $9084, WAIT #2              ; 26BB91/D28490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
        .word       $0200                       ; 26BB94/0002
L_26BB96:
        ASMCALL     $90C8                       ; 26BB96/D0C890
    ENDLOOP                                 ; 26BB99/02
    ZEROVEL                                 ; 26BB9A/38
    MOV         VAR3,#$02                   ; 26BB9B/0D0302
    ASMCALL     $8851                       ; 26BB9E/D05188 // Face towards Kirby
    HALT                                    ; 26BBA1/09

L_26BBA2:
    ZEROVEL                                 ; 26BBA2/38
    MOV         VAR3,#$04                   ; 26BBA3/0D0304
    ONTICK      $26BC85                     ; 26BBA6/0885BC26
    MOV         REG,#$10                    ; 26BBAA/1B10
    ASMCALL     $96B9                       ; 26BBAC/D0B996 // Unknown ASM $2296B9
    .word       $BD3B                       ; 26BBAF/3BBD
    LOOP        #6                          ; 26BBB1/0106
        SETXVEL     #$0200, WAIT #2             ; 26BBB3/B20002
L_26BBB6:
        SETXVEL     #$FE00, WAIT #2             ; 26BBB6/B200FE
L_26BBB9:
    ENDLOOP                                 ; 26BBB9/02
    JML         $228180                     ; 26BBBA/03808122

L_26BBBE:
    MOV         VAR4,#$00                   ; 26BBBE/0D0400
    MOV         VAR5,#$03                   ; 26BBC1/0D0503
    MOV         VAR6,#$40                   ; 26BBC4/0D0640
    MOV         VAR7,#$00                   ; 26BBC7/0D0700
    A_JSR       L_26BC06                    ; 26BBCA/1806BC
    A_JMP       L_26BB2C                    ; 26BBCD/172CBB

L_26BBD0:
    MOV         VAR4,#$00                   ; 26BBD0/0D0400
    MOV         VAR5,#$03                   ; 26BBD3/0D0503
    MOV         VAR6,#$D0                   ; 26BBD6/0D06D0
    MOV         VAR7,#$00                   ; 26BBD9/0D0700
    A_JSR       L_26BC06                    ; 26BBDC/1806BC
    A_JMP       L_26BB2C                    ; 26BBDF/172CBB

L_26BBE2:
    MOV         VAR4,#$00                   ; 26BBE2/0D0400
    MOV         VAR5,#$FD                   ; 26BBE5/0D05FD
    MOV         VAR6,#$40                   ; 26BBE8/0D0640
    MOV         VAR7,#$C0                   ; 26BBEB/0D07C0
    A_JSR       L_26BC06                    ; 26BBEE/1806BC
    A_JMP       L_26BA9A                    ; 26BBF1/179ABA

L_26BBF4:
    MOV         VAR4,#$00                   ; 26BBF4/0D0400
    MOV         VAR5,#$FD                   ; 26BBF7/0D05FD
    MOV         VAR6,#$D0                   ; 26BBFA/0D06D0
    MOV         VAR7,#$C0                   ; 26BBFD/0D07C0
    A_JSR       L_26BC06                    ; 26BC00/1806BC
    A_JMP       L_26BA9A                    ; 26BC03/179ABA

L_26BC06:
    SETPOSE     #$FF                        ; 26BC06/50FF
L_26BC08:
    ASMCALL     $BC24, WAIT #1              ; 26BC08/D124BC
L_26BC0B:
    JEQ         L_26BC08                    ; 26BC0B/0A08BC
    MOV         REG,#$00                    ; 26BC0E/1B00
    ASMCALL     $96B9                       ; 26BC10/D0B996 // Unknown ASM $2296B9
    .word       $BD3B                       ; 26BC13/3BBD
    ONTICK      $26BC85                     ; 26BC15/0885BC26
    ASMCALL     $BC46                       ; 26BC19/D046BC
L_26BC1C:
    ASMCALL     $BC37, WAIT #1              ; 26BC1C/D137BC // Check if Y distance from Kirby is less than 4
L_26BC1F:
    JEQ         L_26BC1C                    ; 26BC1F/0A1CBC
    ZEROVEL                                 ; 26BC22/38
    A_RTS                                   ; 26BC23/19

; CODE OR DATA -- $26BC24 .. $27A000
incbinRange "../split/prg/bank26.bin", $1C24, $2000