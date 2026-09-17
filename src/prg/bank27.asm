.segment "PRG27": absolute
Script22_PoppyBrosSr:
    MOV         $0043,#$EE                  ; 27A000/114300EE
    SPRITEMAP   L_3786CA                     ; 27A004/1ACA8637
    MOV         REG,VAR0                    ; 27A008/1E00
    JNE         L_27A4D3                    ; 27A00A/0BD3A4
    MOV         REG,#$1E                    ; 27A00D/1B1E
    ASMCALL_l   $228470                     ; 27A00F/26708422
    ONPOSITION  $D97D                       ; 27A013/217DD9
    MOV         VAR5,#$00                   ; 27A016/0D0500
    MOV         VAR6,#$05                   ; 27A019/0D0605
L_27A01C:
    ASMCALL     $A46A                       ; 27A01C/D06AA4
    TABLEJMP    #5                          ; 27A01F/0F05
    .word       L_27A0CA                    ; 27A021/CAA0
    .word       L_27A0A3                    ; 27A023/A3A0
    .word       L_27A02B                    ; 27A025/2BA0
    .word       L_27A05D                    ; 27A027/5DA0
    .word       L_27A034                    ; 27A029/34A0
L_27A02B:
    MOV         VAR3,#$06                   ; 27A02B/0D0306
    MOV         VAR2,#$82                   ; 27A02E/0D0282
    A_JMP       L_27A037                    ; 27A031/1737A0

L_27A034:
    ASMCALL     $A3B3                       ; 27A034/D0B3A3
L_27A037:
    SETYVEL     #$FEE0                      ; 27A037/C0E0FE
    ASMCALL     $A3D6                       ; 27A03A/D0D6A3
    TABLEJMP    #3                          ; 27A03D/0F03
    .word       L_27A045                    ; 27A03F/45A0
    .word       L_27A051                    ; 27A041/51A0
    .word       L_27A01C                    ; 27A043/1CA0
L_27A045:
    ONTICK      $27A1E9                     ; 27A045/08E9A127
    ASMCALL     $E26A                       ; 27A049/D06AE2 // Set X velocity (respect facing)
    .word       $00C0                       ; 27A04C/C000
    A_JMP       L_27A104                    ; 27A04E/1704A1

L_27A051:
    ONTICK      $27A1FC                     ; 27A051/08FCA127
    ASMCALL     $8CAA                       ; 27A055/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF40                       ; 27A058/40FF
    A_JMP       L_27A112                    ; 27A05A/1712A1

L_27A05D:
    ONTICK      $27A220                     ; 27A05D/0820A227
    MOV         VAR2,#$00                   ; 27A061/0D0200
    ZEROVEL                                 ; 27A064/38
    SETYVEL     #$FD00                      ; 27A065/C000FD
    ASMCALL     $8851                       ; 27A068/D05188 // Face towards Kirby
    ASMCALL     $A414                       ; 27A06B/D014A4
    ASMCALL     $8C53, WAIT #4              ; 27A06E/D4538C // Set pose (respect facing)
    .byte       $0E                         ; 27A071/0E
L_27A072:
    INC2POSE    WAIT #4                     ; 27A072/94
L_27A073:
    INC2POSE    WAIT #4                     ; 27A073/94
L_27A074:
    INC2POSE    WAIT #4                     ; 27A074/94
L_27A075:
    INC2POSE    WAIT #4                     ; 27A075/94
L_27A076:
    INC2POSE    WAIT #4                     ; 27A076/94
L_27A077:
    ASMCALL     $A438                       ; 27A077/D038A4
    LOOP        REG                         ; 27A07A/22
        ASMCALL     $8C53, WAIT #2              ; 27A07B/D2538C // Set pose (respect facing)
        .byte       $1A                         ; 27A07E/1A
L_27A07F:
        INC2POSE    WAIT #2                     ; 27A07F/92
L_27A080:
    ENDLOOP                                 ; 27A080/02
    ADDPOSE     #-4, WAIT #1                ; 27A081/61FC
L_27A083:
    DEC2POSE    WAIT #1                     ; 27A083/A1
L_27A084:
    DEC2POSE    WAIT #1                     ; 27A084/A1
L_27A085:
    ASMCALL     $8C71                       ; 27A085/D0718C // Unknown ASM $228C71
    .byte       $22                         ; 27A088/22
    .byte       $01                         ; 27A089/01
    .byte       $00                         ; 27A08A/00
    ASMCALL     $8EFB                       ; 27A08B/D0FB8E // Unknown ASM $228EFB
    .byte       $4E                         ; 27A08E/4E
    ONTICK      $27A22E                     ; 27A08F/082EA227
    ADDPOSE     #14, WAIT #1                ; 27A093/610E
L_27A095:
    DEC2POSE    WAIT #1                     ; 27A095/A1
L_27A096:
    DEC2POSE                                ; 27A096/A0
    WAIT        #32                         ; 27A097/0620
L_27A099:
    MOV         REG,VAR2                    ; 27A099/1E02
    JNE         L_27A01C                    ; 27A09B/0B1CA0
    ONTICK      $27A248                     ; 27A09E/0848A227
    HALT                                    ; 27A0A2/09

L_27A0A3:
    ASMCALL     $8851                       ; 27A0A3/D05188 // Face towards Kirby
    ONTICK      $27A25F                     ; 27A0A6/085FA227
    MOV         VAR3,#$0A                   ; 27A0AA/0D030A
    ASMCALL     $E26A                       ; 27A0AD/D06AE2 // Set X velocity (respect facing)
    .word       $0140                       ; 27A0B0/4001
    SETYVEL     #$FEC0                      ; 27A0B2/C0C0FE
    A_JMP       L_27A104                    ; 27A0B5/1704A1

L_27A0B8:
    ONTICK      $27A281                     ; 27A0B8/0881A227
    MOV         VAR3,#$0A                   ; 27A0BC/0D030A
    ASMCALL     $8CAA                       ; 27A0BF/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FEC0                       ; 27A0C2/C0FE
    SETYVEL     #$FE80                      ; 27A0C4/C080FE
    A_JMP       L_27A112                    ; 27A0C7/1712A1

L_27A0CA:
    ONTICK      $27A2A1                     ; 27A0CA/08A1A227
    MOV         VAR3,#$0E                   ; 27A0CE/0D030E
    ASMCALL     $E26A                       ; 27A0D1/D06AE2 // Set X velocity (respect facing)
    .word       $0280                       ; 27A0D4/8002
    SETYVEL     #$FE40                      ; 27A0D6/C040FE
    A_JMP       L_27A104                    ; 27A0D9/1704A1

L_27A0DC:
    ONTICK      $27A2D6                     ; 27A0DC/08D6A227
    MOV         VAR3,#$0E                   ; 27A0E0/0D030E
    ASMCALL     $8CAA                       ; 27A0E3/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FD80                       ; 27A0E6/80FD
    SETYVEL     #$FE40                      ; 27A0E8/C040FE
    A_JMP       L_27A112                    ; 27A0EB/1712A1

L_27A0EE:
    ONTICK      $27A2D6                     ; 27A0EE/08D6A227
    ZEROVEL                                 ; 27A0F2/38
    SETYVEL     #$FE00                      ; 27A0F3/C000FE
    ASMCALL     $8C53                       ; 27A0F6/D0538C // Set pose (respect facing)
    .byte       $06                         ; 27A0F9/06
    WAIT        #20                         ; 27A0FA/0614
L_27A0FC:
    INC2POSE                                ; 27A0FC/90
    WAIT        #20                         ; 27A0FD/0614
L_27A0FF:
    INC2POSE                                ; 27A0FF/90
    WAIT        #20                         ; 27A100/0614
L_27A102:
    INC2POSE                                ; 27A102/90
    HALT                                    ; 27A103/09

L_27A104:
    ASMCALL     $8C53                       ; 27A104/D0538C // Set pose (respect facing)
    .byte       $0C                         ; 27A107/0C
    WAIT        VAR3                        ; 27A108/1F03
L_27A10A:
    DEC2POSE                                ; 27A10A/A0
    WAIT        VAR3                        ; 27A10B/1F03
L_27A10D:
    DEC2POSE                                ; 27A10D/A0
    WAIT        VAR3                        ; 27A10E/1F03
L_27A110:
    DEC2POSE                                ; 27A110/A0
    HALT                                    ; 27A111/09

L_27A112:
    ASMCALL     $8C53                       ; 27A112/D0538C // Set pose (respect facing)
    .byte       $06                         ; 27A115/06
    WAIT        VAR3                        ; 27A116/1F03
L_27A118:
    INC2POSE                                ; 27A118/90
    WAIT        VAR3                        ; 27A119/1F03
L_27A11B:
    INC2POSE                                ; 27A11B/90
    WAIT        VAR3                        ; 27A11C/1F03
L_27A11E:
    INC2POSE                                ; 27A11E/90
    HALT                                    ; 27A11F/09

L_27A120:
    ASMCALL     $E6E8                       ; 27A120/D0E8E6
    ASMCALL     $8FC6                       ; 27A123/D0C68F // Unknown ASM $228FC6
    .byte       $0B                         ; 27A126/0B
    ASMCALL     $859F                       ; 27A127/D09F85 // Unknown ASM $22859F
    .word       $0018                       ; 27A12A/1800
    ASMCALL     $8EFB                       ; 27A12C/D0FB8E // Unknown ASM $228EFB
    .byte       $40                         ; 27A12F/40
    ONDRAW      $DA89                       ; 27A130/2089DA
    MOV         VAR0,#$00                   ; 27A133/0D0000
    ONTICK      $27A2F1                     ; 27A136/08F1A227
    ASMCALL     $8851                       ; 27A13A/D05188 // Face towards Kirby
    ASMCALL     $8CAA                       ; 27A13D/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF00                       ; 27A140/00FF
    SETYVEL     #$FD00                      ; 27A142/C000FD
    ASMCALL     $8C53                       ; 27A145/D0538C // Set pose (respect facing)
    .byte       $24                         ; 27A148/24
    HALT                                    ; 27A149/09

L_27A14A:
    ASMCALL     $9591                       ; 27A14A/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 27A14D/01
    .byte       $00                         ; 27A14E/00
    .byte       $08                         ; 27A14F/08
    .byte       $F8                         ; 27A150/F8
    .byte       $0A                         ; 27A151/0A
    ONTICK      $27A313                     ; 27A152/0813A327
    MOV         VAR2,#$20                   ; 27A156/0D0220
    ZEROVEL                                 ; 27A159/38
    ASMCALL     $8CAA                       ; 27A15A/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF80                       ; 27A15D/80FF
    SETYVEL     #$FF00                      ; 27A15F/C000FF
    ASMCALL     $859F                       ; 27A162/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 27A165/0C00
    HALT                                    ; 27A167/09

L_27A168:
    ONTICK      $27A348                     ; 27A168/0848A327
    ZEROVEL                                 ; 27A16C/38
    WAIT        #200                        ; 27A16D/06C8
    ONTICK      $27A353                     ; 27A16F/0853A327
    MOV         VAR2,#$32                   ; 27A173/0D0232
    ZEROVEL                                 ; 27A176/38
    HALT                                    ; 27A177/09

; CODE OR DATA -- $27A178 .. $27A4D3
incbinRange "../split/prg/bank27.bin", $0178, $04D3

L_27A4D3:
    SETBANK     #$22                        ; 27A4D3/2822
    ONPOSITION  $D97D                       ; 27A4D5/217DD9
    ASMCALL     $84AD                       ; 27A4D8/D0AD84 // Copy $0784[self.parent] to $0784[self]
    MOV         VAR0,#$01                   ; 27A4DB/0D0001
    ASMCALL     $8C05                       ; 27A4DE/D0058C // Unknown ASM $228C05
    .byte       $10                         ; 27A4E1/10
    ONTICK      $27A4F5                     ; 27A4E2/08F5A427
    ASMCALL     $A564                       ; 27A4E6/D064A5
    MOV         VAR3,#$03                   ; 27A4E9/0D0303
L_27A4EC:
    ASMCALL     $8829, WAIT #2              ; 27A4EC/D22988 // Set pose to 0 (respect facing)
L_27A4EF:
    INC2POSE    WAIT #1                     ; 27A4EF/91
L_27A4F0:
    INC2POSE    WAIT #2                     ; 27A4F0/92
L_27A4F1:
    DEC2POSE    WAIT #1                     ; 27A4F1/A1
L_27A4F2:
    A_JMP       L_27A4EC                    ; 27A4F2/17ECA4

; CODE OR DATA -- $27A4F5 .. $27A8FF
incbinRange "../split/prg/bank27.bin", $04F5, $08FF

L_27A8FF:
    ASMCALL     $A921                       ; 27A8FF/D021A9
    LOOP        REG                         ; 27A902/22
        ASMCALL     $DE4B                       ; 27A903/D04BDE // Play sound effect
        .byte       $12                         ; 27A906/12
        ASMCALL     $A914                       ; 27A907/D014A9
        WAIT        #6                          ; 27A90A/0606
L_27A90C:
        ASMCALL     $DE4B                       ; 27A90C/D04BDE // Play sound effect
        .byte       $12                         ; 27A90F/12
        WAIT        #6                          ; 27A910/0606
L_27A912:
    ENDLOOP                                 ; 27A912/02
    ENDTASK                                 ; 27A913/0C

; CODE OR DATA -- $27A914 .. $27A952
incbinRange "../split/prg/bank27.bin", $0914, $0952

Script30_MetaKnightCallMinions:
    SETBANK     #$22                        ; 27A952/2822
    MOV         $0796,#$FF                  ; 27A954/119607FF
    OR          $62A3,#$80                  ; 27A958/16A3620180
    TASK        L_27A8FF                    ; 27A95D/07FFA8
    A_JSR       L_27AAA3                    ; 27A960/18A3AA
    A_AND       $62A3,#$7F                  ; 27A963/16A362007F
    MOV         $0043,#$EE                  ; 27A968/114300EE
    ONTICK      $27A979                     ; 27A96C/0879A927
    MOV         $0796,#$00                  ; 27A970/11960700
    ASMCALL     $A5BE                       ; 27A974/D0BEA5
L_27A977:
    HALT                                    ; 27A977/09

; CODE OR DATA -- $27A978 .. $27AAA3
incbinRange "../split/prg/bank27.bin", $0978, $0AA3

L_27AAA3:
    MOV         $0043,#$A4                  ; 27AAA3/114300A4
    SPRITEMAP   L_318000                     ; 27AAA7/1A008031
    ONTICK      $27AAF0                     ; 27AAAB/08F0AA27
    MOV         VAR7,#$00                   ; 27AAAF/0D0700
    SETPOSE     #$00                        ; 27AAB2/5000
    WAIT        #48                         ; 27AAB4/0630
L_27AAB6:
    SETPOSE     #$01, WAIT #4               ; 27AAB6/5401
L_27AAB8:
    SETPOSE     #$02, WAIT #4               ; 27AAB8/5402
L_27AABA:
    SETPOSE     #$03, WAIT #4               ; 27AABA/5403
L_27AABC:
    SETPOSE     #$04, WAIT #4               ; 27AABC/5404
L_27AABE:
    SETPOSE     #$09                        ; 27AABE/5009
    WAIT        #32                         ; 27AAC0/0620
L_27AAC2:
    SETPOSE     #$1D, WAIT #1               ; 27AAC2/511D
L_27AAC4:
    SETPOSE     #$1B, WAIT #1               ; 27AAC4/511B
L_27AAC6:
    SETPOSE     #$19                        ; 27AAC6/5019
    WAIT        #32                         ; 27AAC8/0620
L_27AACA:
    SETPOSE     #$1B, WAIT #1               ; 27AACA/511B
L_27AACC:
    SETPOSE     #$1D, WAIT #1               ; 27AACC/511D
L_27AACE:
    SETPOSE     #$1F, WAIT #1               ; 27AACE/511F
L_27AAD0:
    SETPOSE     #$21, WAIT #1               ; 27AAD0/5121
L_27AAD2:
    SETPOSE     #$76, WAIT #1               ; 27AAD2/5176
L_27AAD4:
    SETPOSE     #$77, WAIT #4               ; 27AAD4/5477
L_27AAD6:
    SETPOSE     #$78, WAIT #4               ; 27AAD6/5478
L_27AAD8:
    SETPOSE     #$76                        ; 27AAD8/5076
    WAIT        #48                         ; 27AADA/0630
L_27AADC:
    SETPOSE     #$2B, WAIT #8               ; 27AADC/582B
L_27AADE:
    SETPOSE     #$33, WAIT #8               ; 27AADE/5833
L_27AAE0:
    SETPOSE     #$35, WAIT #2               ; 27AAE0/5235
L_27AAE2:
    SETXVEL     #$0200                      ; 27AAE2/B00002
    SETYVEL     #$FA00                      ; 27AAE5/C000FA
L_27AAE8:
    WAIT        #1                          ; 27AAE8/0601
L_27AAEA:
    MOV         REG,VAR7                    ; 27AAEA/1E07
    JEQ         L_27AAE8                    ; 27AAEC/0AE8AA
    A_RTS                                   ; 27AAEF/19

; CODE OR DATA -- $27AAF0 .. $27AB18
incbinRange "../split/prg/bank27.bin", $0AF0, $0B18

Script33_CutterMinion:
    SPRITEMAP   L_3094C9                     ; 27AB18/1AC99430
    ONTICK      $27ACC7                     ; 27AB1C/08C7AC27
    MOV         VAR6,#$FF                   ; 27AB20/0D06FF
    MOV         REG,#$06                    ; 27AB23/1B06
    ASMCALL_l   $27BB72                     ; 27AB25/2672BB27
    TABLEJMP    #4                          ; 27AB29/0F04
    .word       L_27ABE7                    ; 27AB2B/E7AB
    .word       L_27ABB1                    ; 27AB2D/B1AB
    .word       L_27AB74                    ; 27AB2F/74AB
    .word       L_27AB33                    ; 27AB31/33AB
L_27AB33:
    MOV         VAR3,#$05                   ; 27AB33/0D0305
    ASMCALL     $BBAE                       ; 27AB36/D0AEBB
    ASMCALL     $9084                       ; 27AB39/D08490
    END                                     ; 27AB3C/00

; CODE OR DATA -- $27AB3D .. $27AB41
incbinRange "../split/prg/bank27.bin", $0B3D, $0B41

L_27AB41:
    INC2POSE    WAIT #4                     ; 27AB41/94
L_27AB42:
    INC2POSE    WAIT #4                     ; 27AB42/94
L_27AB43:
    INC2POSE    WAIT #6                     ; 27AB43/96
L_27AB44:
    INC2POSE    WAIT #4                     ; 27AB44/94
L_27AB45:
    INC2POSE    WAIT #4                     ; 27AB45/94
L_27AB46:
    ADDPOSE     #-10, WAIT #2               ; 27AB46/62F6
L_27AB48:
    ASMCALL     $9084                       ; 27AB48/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0100                       ; 27AB4B/0001
    WAIT        #4                          ; 27AB4D/0604
L_27AB4F:
    INC2POSE    WAIT #6                     ; 27AB4F/96
L_27AB50:
    ASMCALL     $9084                       ; 27AB50/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0080                       ; 27AB53/8000
    WAIT        #6                          ; 27AB55/0606
L_27AB57:
    INC2POSE    WAIT #2                     ; 27AB57/92
L_27AB58:
    ASMCALL     $9084                       ; 27AB58/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0040                       ; 27AB5B/4000
    WAIT        #8                          ; 27AB5D/0608
L_27AB5F:
    MOV         VAR3,#$00                   ; 27AB5F/0D0300
    MOV         VAR8,#$5A                   ; 27AB62/0D085A
    MOV         VAR9,#$00                   ; 27AB65/0D0900
    SPRITEMAP   L_3094C9                     ; 27AB68/1AC99430
    ASMCALL     $9084                       ; 27AB6C/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0080                       ; 27AB6F/8000
    A_JMP       L_27AC19                    ; 27AB71/1719AC

L_27AB74:
    MOV         VAR3,#$05                   ; 27AB74/0D0305
    ASMCALL     $BBAE                       ; 27AB77/D0AEBB
    ASMCALL     $9084                       ; 27AB7A/D08490
    END                                     ; 27AB7D/00

; CODE OR DATA -- $27AB7E .. $27AB82
incbinRange "../split/prg/bank27.bin", $0B7E, $0B82

L_27AB82:
    INC2POSE    WAIT #4                     ; 27AB82/94
L_27AB83:
    INC2POSE    WAIT #4                     ; 27AB83/94
L_27AB84:
    INC2POSE    WAIT #6                     ; 27AB84/96
L_27AB85:
    INC2POSE    WAIT #4                     ; 27AB85/94
L_27AB86:
    ASMCALL     $9084                       ; 27AB86/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0100                       ; 27AB89/0001
    INC2POSE    WAIT #8                     ; 27AB8B/98
L_27AB8C:
    ADDPOSE     #-10, WAIT #2               ; 27AB8C/62F6
L_27AB8E:
    ASMCALL     $9084                       ; 27AB8E/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0080                       ; 27AB91/8000
    WAIT        #8                          ; 27AB93/0608
L_27AB95:
    ASMCALL     $9084                       ; 27AB95/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0040                       ; 27AB98/4000
    WAIT        #8                          ; 27AB9A/0608
L_27AB9C:
    MOV         VAR3,#$00                   ; 27AB9C/0D0300
    MOV         VAR8,#$5A                   ; 27AB9F/0D085A
    MOV         VAR9,#$00                   ; 27ABA2/0D0900
    SPRITEMAP   L_3094C9                     ; 27ABA5/1AC99430
    ASMCALL     $9084                       ; 27ABA9/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0080                       ; 27ABAC/8000
    A_JMP       L_27AC17                    ; 27ABAE/1717AC

L_27ABB1:
    MOV         VAR3,#$06                   ; 27ABB1/0D0306
    ASMCALL     $BBAE                       ; 27ABB4/D0AEBB
    SPRITEMAP   L_3094E1                     ; 27ABB7/1AE19430
L_27ABBB:
    ZEROVEL                                 ; 27ABBB/38
    ASMCALL     $9075                       ; 27ABBC/D07590 // Set pose to 0 (1 if MSB of VAR4 is set)
    ASMCALL     $BCD5                       ; 27ABBF/D0D5BC // UNK
    .byte       $31                         ; 27ABC2/31
    .byte       $00                         ; 27ABC3/00
    .byte       $00                         ; 27ABC4/00
    .byte       $00                         ; 27ABC5/00
    WAIT        #17                         ; 27ABC6/0611
L_27ABC8:
    ASMCALL     $DE4B                       ; 27ABC8/D04BDE // Play sound effect
    .byte       $3A                         ; 27ABCB/3A
    ASMCALL     $9084                       ; 27ABCC/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0400                       ; 27ABCF/0004
    INC2POSE    WAIT #2                     ; 27ABD1/92
L_27ABD2:
    ASMCALL     $9084                       ; 27ABD2/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0300                       ; 27ABD5/0003
    INC2POSE    WAIT #2                     ; 27ABD7/92
L_27ABD8:
    ASMCALL     $9084                       ; 27ABD8/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0200                       ; 27ABDB/0002
    INC2POSE    WAIT #2                     ; 27ABDD/92
L_27ABDE:
    ZEROVEL                                 ; 27ABDE/38
    INC2POSE    WAIT #15                    ; 27ABDF/9F
L_27ABE0:
    INC2POSE    WAIT #2                     ; 27ABE0/92
L_27ABE1:
    INC2POSE    WAIT #2                     ; 27ABE1/92
L_27ABE2:
    INC2POSE    WAIT #2                     ; 27ABE2/92
L_27ABE3:
    INC2POSE    WAIT #15                    ; 27ABE3/9F
L_27ABE4:
    A_JMP       L_27ABBB                    ; 27ABE4/17BBAB

L_27ABE7:
    MOV         VAR9,#$00                   ; 27ABE7/0D0900
    ASMCALL     $BD9E                       ; 27ABEA/D09EBD
    JNE         L_27AC00                    ; 27ABED/0B00AC
    MOV         VAR3,#$03                   ; 27ABF0/0D0303
    ASMCALL     $BBAE                       ; 27ABF3/D0AEBB
    ASMCALL     $9075                       ; 27ABF6/D07590
    SPRITEMAP   L_3094C9                     ; 27ABF9/1AC99430
    A_JMP       L_27AC15                    ; 27ABFD/1715AC

L_27AC00:
    MOV         VAR3,#$00                   ; 27AC00/0D0300
    MOV         VAR8,#$5A                   ; 27AC03/0D085A
    SPRITEMAP   L_3094C9                     ; 27AC06/1AC99430
    ASMCALL     $BBCA                       ; 27AC0A/D0CABB
    ASMCALL     $90C8                       ; 27AC0D/D0C890
    ASMCALL     $9084                       ; 27AC10/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0080                       ; 27AC13/8000
L_27AC15:
    WAIT        #10                         ; 27AC15/060A
L_27AC17:
    INC2POSE    WAIT #8                     ; 27AC17/98
L_27AC18:
    INC2POSE    WAIT #8                     ; 27AC18/98
L_27AC19:
    INC2POSE    WAIT #10                    ; 27AC19/9A
L_27AC1A:
    INC2POSE    WAIT #8                     ; 27AC1A/98
L_27AC1B:
    INC2POSE    WAIT #8                     ; 27AC1B/98
L_27AC1C:
    ADDPOSE     #-10                        ; 27AC1C/60F6
    A_JMP       L_27AC15                    ; 27AC1E/1715AC

L_27AC21:
    ZEROVEL                                 ; 27AC21/38
    MOV         VAR3,#$01                   ; 27AC22/0D0301
    SPRITEMAP   L_3094E1                     ; 27AC25/1AE19430
    ASMCALL     $BBCA                       ; 27AC29/D0CABB
    ASMCALL     $BCD5                       ; 27AC2C/D0D5BC // UNK
    .byte       $31                         ; 27AC2F/31
    .byte       $00                         ; 27AC30/00
    .byte       $00                         ; 27AC31/00
    .byte       $00                         ; 27AC32/00
    WAIT        #17                         ; 27AC33/0611
L_27AC35:
    ASMCALL     $DE4B                       ; 27AC35/D04BDE // Play sound effect
    .byte       $3A                         ; 27AC38/3A
    ASMCALL     $9084                       ; 27AC39/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0400                       ; 27AC3C/0004
    INC2POSE    WAIT #2                     ; 27AC3E/92
L_27AC3F:
    ASMCALL     $9084                       ; 27AC3F/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0300                       ; 27AC42/0003
    INC2POSE    WAIT #2                     ; 27AC44/92
L_27AC45:
    ASMCALL     $9084                       ; 27AC45/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0200                       ; 27AC48/0002
    INC2POSE    WAIT #2                     ; 27AC4A/92
L_27AC4B:
    ZEROVEL                                 ; 27AC4B/38
    INC2POSE    WAIT #15                    ; 27AC4C/9F
L_27AC4D:
    INC2POSE    WAIT #2                     ; 27AC4D/92
L_27AC4E:
    INC2POSE    WAIT #2                     ; 27AC4E/92
L_27AC4F:
    INC2POSE    WAIT #2                     ; 27AC4F/92
L_27AC50:
    INC2POSE    WAIT #15                    ; 27AC50/9F
L_27AC51:
    ASMCALL     $BBF0                       ; 27AC51/D0F0BB
    A_JMP       L_27AC00                    ; 27AC54/1700AC

L_27AC57:
    ZEROVEL                                 ; 27AC57/38
    MOV         VAR3,#$02                   ; 27AC58/0D0302
    SPRITEMAP   L_309505                     ; 27AC5B/1A059530
    ASMCALL     $BBCA                       ; 27AC5F/D0CABB
    WAIT        #32                         ; 27AC62/0620
L_27AC64:
    ASMCALL     $BCD5                       ; 27AC64/D0D5BC // UNK
    .byte       $31                         ; 27AC67/31
    .byte       $01                         ; 27AC68/01
    .byte       $00                         ; 27AC69/00
    .byte       $00                         ; 27AC6A/00
    INC2POSE    WAIT #1                     ; 27AC6B/91
L_27AC6C:
    INC2POSE    WAIT #1                     ; 27AC6C/91
L_27AC6D:
    INC2POSE    WAIT #1                     ; 27AC6D/91
L_27AC6E:
    INC2POSE    WAIT #3                     ; 27AC6E/93
L_27AC6F:
    INC2POSE                                ; 27AC6F/90
    WAIT        #64                         ; 27AC70/0640
L_27AC72:
    A_JMP       L_27AC00                    ; 27AC72/1700AC

L_27AC75:
    ZEROVEL                                 ; 27AC75/38
    MOV         VAR3,#$03                   ; 27AC76/0D0303
    SPRITEMAP   L_309505                     ; 27AC79/1A059530
    ASMCALL     $BBCA                       ; 27AC7D/D0CABB
    ASMCALL     $DE4B                       ; 27AC80/D04BDE // Play sound effect
    .byte       $0D                         ; 27AC83/0D
    SETYVEL     #$FD00                      ; 27AC84/C000FD
    WAIT        #32                         ; 27AC87/0620
L_27AC89:
    ASMCALL     $BCD5                       ; 27AC89/D0D5BC // UNK
    .byte       $31                         ; 27AC8C/31
    .byte       $01                         ; 27AC8D/01
    .byte       $00                         ; 27AC8E/00
    .byte       $00                         ; 27AC8F/00
    INC2POSE    WAIT #1                     ; 27AC90/91
L_27AC91:
    INC2POSE    WAIT #1                     ; 27AC91/91
L_27AC92:
    INC2POSE    WAIT #1                     ; 27AC92/91
L_27AC93:
    INC2POSE    WAIT #3                     ; 27AC93/93
    INC2POSE                                ; 27AC94/90
    WAIT        #48                         ; 27AC95/0630
    HALT                                    ; 27AC97/09

L_27AC98:
    ZEROVEL                                 ; 27AC98/38
    MOV         VAR3,#$04                   ; 27AC99/0D0304
    SPRITEMAP   L_309505                     ; 27AC9C/1A059530
    ASMCALL     $BBDC                       ; 27ACA0/D0DCBB
    WAIT        #32                         ; 27ACA3/0620
    ASMCALL     $BCD5                       ; 27ACA5/D0D5BC // UNK
    .byte       $31                         ; 27ACA8/31
    .byte       $01                         ; 27ACA9/01
    .byte       $00                         ; 27ACAA/00
    .byte       $00                         ; 27ACAB/00
    INC2POSE    WAIT #1                     ; 27ACAC/91
    INC2POSE    WAIT #1                     ; 27ACAD/91
    INC2POSE    WAIT #1                     ; 27ACAE/91
    INC2POSE    WAIT #3                     ; 27ACAF/93
    INC2POSE                                ; 27ACB0/90
    WAIT        #32                         ; 27ACB1/0620
    ASMCALL     $DE4B                       ; 27ACB3/D04BDE // Play sound effect
    .byte       $0D                         ; 27ACB6/0D
    SETYVEL     #$FD80                      ; 27ACB7/C080FD
    MOV         VAR3,#$03                   ; 27ACBA/0D0303
    INC2POSE    WAIT #6                     ; 27ACBD/96
    INC2POSE    WAIT #6                     ; 27ACBE/96
    ASMCALL     $84DB                       ; 27ACBF/D0DB84 // Flip sprite horizontally (actually toggle LSB of pose)
    INC2POSE    WAIT #6                     ; 27ACC2/96
    INC2POSE    WAIT #6                     ; 27ACC3/96
    DEC2POSE    WAIT #6                     ; 27ACC4/A6
    DEC2POSE    WAIT #6                     ; 27ACC5/A6
    HALT                                    ; 27ACC6/09

; CODE OR DATA -- $27ACC7 .. $27AE11
incbinRange "../split/prg/bank27.bin", $0CC7, $0E11

Script32_MaceMinion:
    ONTICK      $27AF08                     ; 27AE11/0808AF27
    MOV         VAR6,#$FF                   ; 27AE15/0D06FF
    MOV         REG,#$08                    ; 27AE18/1B08
    ASMCALL_l   $27BB72                     ; 27AE1A/2672BB27
    TABLEJMP    #3                          ; 27AE1E/0F03
    .word       L_27AE7E                    ; 27AE20/7EAE
    .word       L_27AE5D                    ; 27AE22/5DAE
    .word       L_27AE26                    ; 27AE24/26AE
L_27AE26:
    ASMCALL     $BBAE                       ; 27AE26/D0AEBB
    SPRITEMAP   L_309120                     ; 27AE29/1A209130
    MOV         VAR3,#$03                   ; 27AE2D/0D0303
    ASMCALL     $9084                       ; 27AE30/D08490
    END                                     ; 27AE33/00

; CODE OR DATA -- $27AE34 .. $27AE3C
incbinRange "../split/prg/bank27.bin", $0E34, $0E3C

L_27AE3C:
    ASMCALL     $DE4B                       ; 27AE3C/D04BDE // Play sound effect
    .byte       $23                         ; 27AE3F/23
    ASMCALL     $9075, WAIT #1              ; 27AE40/D17590 // Set pose to 0 (1 if MSB of VAR4 is set)
L_27AE43:
    INC2POSE    WAIT #1                     ; 27AE43/91
L_27AE44:
    INC2POSE    WAIT #1                     ; 27AE44/91
L_27AE45:
    INC2POSE    WAIT #1                     ; 27AE45/91
L_27AE46:
    INC2POSE    WAIT #1                     ; 27AE46/91
L_27AE47:
    INC2POSE    WAIT #4                     ; 27AE47/94
L_27AE48:
    INC2POSE    WAIT #1                     ; 27AE48/91
L_27AE49:
    INC2POSE    WAIT #1                     ; 27AE49/91
L_27AE4A:
    INC2POSE    WAIT #1                     ; 27AE4A/91
L_27AE4B:
    INC2POSE    WAIT #1                     ; 27AE4B/91
L_27AE4C:
    ASMCALL     $DE4B                       ; 27AE4C/D04BDE // Play sound effect
    .byte       $23                         ; 27AE4F/23
    INC2POSE    WAIT #1                     ; 27AE50/91
L_27AE51:
    INC2POSE    WAIT #1                     ; 27AE51/91
L_27AE52:
    INC2POSE    WAIT #1                     ; 27AE52/91
L_27AE53:
    INC2POSE    WAIT #1                     ; 27AE53/91
L_27AE54:
    INC2POSE    WAIT #1                     ; 27AE54/91
L_27AE55:
    INC2POSE    WAIT #4                     ; 27AE55/94
L_27AE56:
    INC2POSE    WAIT #1                     ; 27AE56/91
L_27AE57:
    INC2POSE    WAIT #1                     ; 27AE57/91
L_27AE58:
    INC2POSE    WAIT #1                     ; 27AE58/91
L_27AE59:
    INC2POSE    WAIT #1                     ; 27AE59/91
L_27AE5A:
    A_JMP       L_27AE3C                    ; 27AE5A/173CAE

L_27AE5D:
    ASMCALL     $BBAE                       ; 27AE5D/D0AEBB
L_27AE60:
    SPRITEMAP   L_309182                     ; 27AE60/1A829130
    MOV         VAR3,#$02                   ; 27AE64/0D0302
    ASMCALL     $9084                       ; 27AE67/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0040                       ; 27AE6A/4000
    ASMCALL     $9075, WAIT #12             ; 27AE6C/DC7590 // Set pose to 0 (1 if MSB of VAR4 is set)
L_27AE6F:
    INC2POSE    WAIT #8                     ; 27AE6F/98
L_27AE70:
    INC2POSE    WAIT #8                     ; 27AE70/98
L_27AE71:
    INC2POSE    WAIT #12                    ; 27AE71/9C
L_27AE72:
    INC2POSE    WAIT #8                     ; 27AE72/98
L_27AE73:
    INC2POSE    WAIT #8                     ; 27AE73/98
L_27AE74:
    ZEROVEL                                 ; 27AE74/38
    ASMCALL     $BBCA                       ; 27AE75/D0CABB
    A_JSR       L_27AE96                    ; 27AE78/1896AE
    A_JMP       L_27AE60                    ; 27AE7B/1760AE

L_27AE7E:
    ASMCALL     $BBAE                       ; 27AE7E/D0AEBB
L_27AE81:
    SPRITEMAP   L_309108                     ; 27AE81/1A089130
    MOV         VAR3,#$00                   ; 27AE85/0D0300
    ASMCALL     $9075                       ; 27AE88/D07590 // Set pose to 0 (1 if MSB of VAR4 is set)
    WAIT        #32                         ; 27AE8B/0620
L_27AE8D:
    INC2POSE                                ; 27AE8D/90
    WAIT        #32                         ; 27AE8E/0620
L_27AE90:
    A_JSR       L_27AE96                    ; 27AE90/1896AE
    A_JMP       L_27AE81                    ; 27AE93/1781AE

L_27AE96:
    SPRITEMAP   L_309110                     ; 27AE96/1A109130
    ASMCALL     $9075, WAIT #4              ; 27AE9A/D47590 // Set pose to 0 (1 if MSB of VAR4 is set)
L_27AE9D:
    INC2POSE    WAIT #4                     ; 27AE9D/94
L_27AE9E:
    INC2POSE    WAIT #4                     ; 27AE9E/94
L_27AE9F:
    INC2POSE    WAIT #15                    ; 27AE9F/9F
L_27AEA0:
    ASMCALL     $BCD5                       ; 27AEA0/D0D5BC // UNK
    .byte       $31                         ; 27AEA3/31
    .byte       $03                         ; 27AEA4/03
    .byte       $00                         ; 27AEA5/00
    .byte       $00                         ; 27AEA6/00
    A_JSR       L_27AEE7                    ; 27AEA7/18E7AE
    INC2POSE    WAIT #1                     ; 27AEAA/91
L_27AEAB:
    INC2POSE    WAIT #1                     ; 27AEAB/91
L_27AEAC:
    A_JSR       L_27AEE7                    ; 27AEAC/18E7AE
    INC2POSE    WAIT #1                     ; 27AEAF/91
L_27AEB0:
    INC2POSE    WAIT #1                     ; 27AEB0/91
L_27AEB1:
    A_JSR       L_27AEE7                    ; 27AEB1/18E7AE
    INC2POSE                                ; 27AEB4/90
    INC2POSE                                ; 27AEB5/90
    INC2POSE    WAIT #1                     ; 27AEB6/91
L_27AEB7:
    SPRITEMAP   L_309174                     ; 27AEB7/1A749130
    ASMCALL     $9066                       ; 27AEBB/D06690
    ASMCALL     $9075, WAIT #2              ; 27AEBE/D27590 // Set pose to 0 (1 if MSB of VAR4 is set)
L_27AEC1:
    INC2POSE    WAIT #2                     ; 27AEC1/92
L_27AEC2:
    ASMCALL     $BCD5                       ; 27AEC2/D0D5BC // UNK
    .byte       $31                         ; 27AEC5/31
    .byte       $02                         ; 27AEC6/02
    .byte       $00                         ; 27AEC7/00
    .byte       $00                         ; 27AEC8/00
    WAIT        #69                         ; 27AEC9/0645
L_27AECB:
    MOV         VAR3,#$01                   ; 27AECB/0D0301
    INC2POSE                                ; 27AECE/90
    ASMCALL     $9084, WAIT #2              ; 27AECF/D28490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $FC00                       ; 27AED2/00FC
L_27AED4:
    ASMCALL     $9084, WAIT #2              ; 27AED4/D28490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $FE00                       ; 27AED7/00FE
L_27AED9:
    ASMCALL     $9084, WAIT #2              ; 27AED9/D28490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0200                       ; 27AEDC/0002
L_27AEDE:
    ASMCALL     $9084, WAIT #2              ; 27AEDE/D28490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0400                       ; 27AEE1/0004
L_27AEE3:
    ZEROVEL                                 ; 27AEE3/38
    WAIT        #16                         ; 27AEE4/0610
L_27AEE6:
    A_RTS                                   ; 27AEE6/19

L_27AEE7:
    SPRITEMAP   L_309120                     ; 27AEE7/1A209130
    ASMCALL     $DE4B                       ; 27AEEB/D04BDE // Play sound effect
    .byte       $23                         ; 27AEEE/23
    ASMCALL     $9075, WAIT #1              ; 27AEEF/D17590 // Set pose to 0 (1 if MSB of VAR4 is set)
L_27AEF2:
    INC2POSE    WAIT #1                     ; 27AEF2/91
L_27AEF3:
    INC2POSE    WAIT #1                     ; 27AEF3/91
L_27AEF4:
    INC2POSE    WAIT #1                     ; 27AEF4/91
L_27AEF5:
    INC2POSE    WAIT #1                     ; 27AEF5/91
L_27AEF6:
    INC2POSE    WAIT #4                     ; 27AEF6/94
L_27AEF7:
    INC2POSE    WAIT #1                     ; 27AEF7/91
L_27AEF8:
    INC2POSE    WAIT #1                     ; 27AEF8/91
L_27AEF9:
    INC2POSE    WAIT #1                     ; 27AEF9/91
L_27AEFA:
    INC2POSE    WAIT #1                     ; 27AEFA/91
L_27AEFB:
    ASMCALL     $DE4B                       ; 27AEFB/D04BDE // Play sound effect
    .byte       $23                         ; 27AEFE/23
    INC2POSE    WAIT #1                     ; 27AEFF/91
L_27AF00:
    INC2POSE    WAIT #1                     ; 27AF00/91
L_27AF01:
    INC2POSE    WAIT #1                     ; 27AF01/91
L_27AF02:
    INC2POSE    WAIT #1                     ; 27AF02/91
L_27AF03:
    INC2POSE    WAIT #1                     ; 27AF03/91
L_27AF04:
    INC2POSE    WAIT #4                     ; 27AF04/94
L_27AF05:
    INC2POSE    WAIT #1                     ; 27AF05/91
L_27AF06:
    INC2POSE    WAIT #1                     ; 27AF06/91
L_27AF07:
    A_RTS                                   ; 27AF07/19

; CODE OR DATA -- $27AF08 .. $27AFFE
incbinRange "../split/prg/bank27.bin", $0F08, $0FFE

Script35_TridentMinion:
    ONTICK      $27B1E5                     ; 27AFFE/08E5B127
    SPRITEMAP   L_30987B                     ; 27B002/1A7B9830
    MOV         VAR6,#$FF                   ; 27B006/0D06FF
    MOV         REG,#$06                    ; 27B009/1B06
    ASMCALL_l   $27BB72                     ; 27B00B/2672BB27
    TABLEJMP    #4                          ; 27B00F/0F04
    .word       L_27B143                    ; 27B011/43B1
    .word       L_27B095                    ; 27B013/95B0
    .word       L_27B059                    ; 27B015/59B0
    .word       L_27B019                    ; 27B017/19B0
L_27B019:
    MOV         VAR3,#$06                   ; 27B019/0D0306
    MOV         VAR9,#$00                   ; 27B01C/0D0900
    ASMCALL     $BBAE                       ; 27B01F/D0AEBB
    MOV         REG,VAR4                    ; 27B022/1E04
    MOV         VAR8,REG                    ; 27B024/1D08
    ASMCALL     $9084                       ; 27B026/D08490
    END                                     ; 27B029/00

; CODE OR DATA -- $27B02A .. $27B02E
incbinRange "../split/prg/bank27.bin", $102A, $102E

L_27B02E:
    INC2POSE    WAIT #4                     ; 27B02E/94
L_27B02F:
    INC2POSE    WAIT #4                     ; 27B02F/94
L_27B030:
    INC2POSE    WAIT #6                     ; 27B030/96
L_27B031:
    INC2POSE    WAIT #4                     ; 27B031/94
L_27B032:
    INC2POSE    WAIT #4                     ; 27B032/94
L_27B033:
    ADDPOSE     #-10, WAIT #2               ; 27B033/62F6
L_27B035:
    ASMCALL     $9084                       ; 27B035/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0100                       ; 27B038/0001
    WAIT        #4                          ; 27B03A/0604
L_27B03C:
    INC2POSE    WAIT #6                     ; 27B03C/96
L_27B03D:
    ASMCALL     $9084                       ; 27B03D/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0080                       ; 27B040/8000
    WAIT        #6                          ; 27B042/0606
L_27B044:
    INC2POSE    WAIT #2                     ; 27B044/92
L_27B045:
    ASMCALL     $9084                       ; 27B045/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0040                       ; 27B048/4000
    WAIT        #8                          ; 27B04A/0608
L_27B04C:
    MOV         VAR3,#$00                   ; 27B04C/0D0300
    MOV         REG,VAR8                    ; 27B04F/1E08
    MOV         VAR4,REG                    ; 27B051/1D04
    MOV         VAR8,#$3C                   ; 27B053/0D083C
    A_JMP       L_27B152                    ; 27B056/1752B1

L_27B059:
    MOV         VAR3,#$06                   ; 27B059/0D0306
    MOV         VAR9,#$00                   ; 27B05C/0D0900
    ASMCALL     $BBAE                       ; 27B05F/D0AEBB
    MOV         REG,VAR4                    ; 27B062/1E04
    MOV         VAR8,REG                    ; 27B064/1D08
    ASMCALL     $9084                       ; 27B066/D08490
    END                                     ; 27B069/00

; CODE OR DATA -- $27B06A .. $27B06E
incbinRange "../split/prg/bank27.bin", $106A, $106E

L_27B06E:
    INC2POSE    WAIT #4                     ; 27B06E/94
L_27B06F:
    INC2POSE    WAIT #4                     ; 27B06F/94
L_27B070:
    INC2POSE    WAIT #6                     ; 27B070/96
L_27B071:
    INC2POSE    WAIT #4                     ; 27B071/94
L_27B072:
    ASMCALL     $9084                       ; 27B072/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0100                       ; 27B075/0001
    INC2POSE    WAIT #8                     ; 27B077/98
L_27B078:
    ADDPOSE     #-10, WAIT #2               ; 27B078/62F6
L_27B07A:
    ASMCALL     $9084                       ; 27B07A/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0080                       ; 27B07D/8000
    WAIT        #8                          ; 27B07F/0608
L_27B081:
    ASMCALL     $9084                       ; 27B081/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0040                       ; 27B084/4000
    WAIT        #8                          ; 27B086/0608
L_27B088:
    MOV         VAR3,#$00                   ; 27B088/0D0300
    MOV         REG,VAR8                    ; 27B08B/1E08
    MOV         VAR4,REG                    ; 27B08D/1D04
    MOV         VAR8,#$3C                   ; 27B08F/0D083C
    A_JMP       L_27B152                    ; 27B092/1752B1

L_27B095:
    MOV         VAR3,#$05                   ; 27B095/0D0305
    ASMCALL     $BBAE                       ; 27B098/D0AEBB
    MOV         REG,VAR4                    ; 27B09B/1E04
    MOV         VAR8,REG                    ; 27B09D/1D08
    ASMCALL     $9084                       ; 27B09F/D08490
    END                                     ; 27B0A2/00

; CODE OR DATA -- $27B0A3 .. $27B0A7
incbinRange "../split/prg/bank27.bin", $10A3, $10A7

L_27B0A7:
    INC2POSE    WAIT #4                     ; 27B0A7/94
L_27B0A8:
    INC2POSE    WAIT #4                     ; 27B0A8/94
L_27B0A9:
    INC2POSE    WAIT #2                     ; 27B0A9/92
L_27B0AA:
    ASMCALL     $9084                       ; 27B0AA/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0100                       ; 27B0AD/0001
    WAIT        #8                          ; 27B0AF/0608
L_27B0B1:
    INC2POSE    WAIT #2                     ; 27B0B1/92
L_27B0B2:
    ASMCALL     $9084                       ; 27B0B2/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0080                       ; 27B0B5/8000
    WAIT        #8                          ; 27B0B7/0608
L_27B0B9:
    ASMCALL     $9084                       ; 27B0B9/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0040                       ; 27B0BC/4000
    WAIT        #8                          ; 27B0BE/0608
L_27B0C0:
    ZEROVEL                                 ; 27B0C0/38
    MOV         REG,VAR8                    ; 27B0C1/1E08
    MOV         VAR4,REG                    ; 27B0C3/1D04
    MOV         VAR8,#$78                   ; 27B0C5/0D0878
    MOV         VAR9,#$00                   ; 27B0C8/0D0900
L_27B0CB:
    SPRITEMAP   L_30987B                     ; 27B0CB/1A7B9830
    ASMCALL     $9075                       ; 27B0CF/D07590 // Set pose to 0 (1 if MSB of VAR4 is set)
    LOOP        #3                          ; 27B0D2/0103
        WAIT        #8                          ; 27B0D4/0608
L_27B0D6:
        INC2POSE    WAIT #6                     ; 27B0D6/96
L_27B0D7:
        INC2POSE    WAIT #6                     ; 27B0D7/96
L_27B0D8:
        INC2POSE    WAIT #8                     ; 27B0D8/98
L_27B0D9:
        INC2POSE    WAIT #6                     ; 27B0D9/96
L_27B0DA:
        INC2POSE    WAIT #6                     ; 27B0DA/96
L_27B0DB:
        ADDPOSE     #-10                        ; 27B0DB/60F6
    ENDLOOP                                 ; 27B0DD/02
    SPRITEMAP   L_309893                     ; 27B0DE/1A939830
    ASMCALL     $BBCA, WAIT #4              ; 27B0E2/D4CABB
L_27B0E5:
    INC2POSE    WAIT #4                     ; 27B0E5/94
L_27B0E6:
    LOOP        #3                          ; 27B0E6/0103
        INC2POSE    WAIT #2                     ; 27B0E8/92
L_27B0E9:
        INC2POSE    WAIT #2                     ; 27B0E9/92
L_27B0EA:
        ADDPOSE     #-4                         ; 27B0EA/60FC
    ENDLOOP                                 ; 27B0EC/02
    ADDPOSE     #4                          ; 27B0ED/6004
    INC2POSE    WAIT #1                     ; 27B0EF/91
L_27B0F0:
    INC2POSE    WAIT #1                     ; 27B0F0/91
L_27B0F1:
    ASMCALL     $B12C                       ; 27B0F1/D02CB1
    TABLEJSR    #7                          ; 27B0F4/1007
    .word       L_27B10C                    ; 27B0F6/0CB1
    .word       L_27B114                    ; 27B0F8/14B1
    .word       L_27B11C                    ; 27B0FA/1CB1
    .word       L_27B10C                    ; 27B0FC/0CB1
    .word       L_27B114                    ; 27B0FE/14B1
    .word       L_27B11C                    ; 27B100/1CB1
    .word       L_27B124                    ; 27B102/24B1
    INC2POSE    WAIT #1                     ; 27B104/91
L_27B105:
    INC2POSE    WAIT #4                     ; 27B105/94
L_27B106:
    INC2POSE                                ; 27B106/90
    WAIT        #16                         ; 27B107/0610
L_27B109:
    A_JMP       L_27B0CB                    ; 27B109/17CBB0

L_27B10C:
    ASMCALL     $BCD5                       ; 27B10C/D0D5BC // UNK
    .byte       $31                         ; 27B10F/31
    .byte       $04                         ; 27B110/04
    .byte       $00                         ; 27B111/00
    .byte       $01                         ; 27B112/01
    A_RTS                                   ; 27B113/19

L_27B114:
    ASMCALL     $BCD5                       ; 27B114/D0D5BC // UNK
    .byte       $31                         ; 27B117/31
    .byte       $04                         ; 27B118/04
    .byte       $00                         ; 27B119/00
    .byte       $02                         ; 27B11A/02
    A_RTS                                   ; 27B11B/19

L_27B11C:
    ASMCALL     $BCD5                       ; 27B11C/D0D5BC // UNK
    .byte       $31                         ; 27B11F/31
    .byte       $04                         ; 27B120/04
    .byte       $00                         ; 27B121/00
    .byte       $03                         ; 27B122/03
    A_RTS                                   ; 27B123/19

L_27B124:
    ASMCALL     $BCD5                       ; 27B124/D0D5BC // UNK
    .byte       $31                         ; 27B127/31
    .byte       $04                         ; 27B128/04
    .byte       $00                         ; 27B129/00
    .byte       $04                         ; 27B12A/04
    A_RTS                                   ; 27B12B/19

; CODE OR DATA -- $27B12C .. $27B143
incbinRange "../split/prg/bank27.bin", $112C, $1143

L_27B143:
    ASMCALL     $BBAE                       ; 27B143/D0AEBB
    ASMCALL     $9075                       ; 27B146/D07590
    MOV         VAR8,#$3C                   ; 27B149/0D083C
    MOV         VAR9,#$00                   ; 27B14C/0D0900
    MOV         VAR3,#$01                   ; 27B14F/0D0301
L_27B152:
    SPRITEMAP   L_30987B                     ; 27B152/1A7B9830
    MOV         REG,VAR9                    ; 27B156/1E09
    JNE         L_27B16F                    ; 27B158/0B6FB1
    ASMCALL     $9084                       ; 27B15B/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0100                       ; 27B15E/0001
    ASMCALL     $9075                       ; 27B160/D07590 // Set pose to 0 (1 if MSB of VAR4 is set)
L_27B163:
    WAIT        #8                          ; 27B163/0608
L_27B165:
    INC2POSE    WAIT #6                     ; 27B165/96
L_27B166:
    INC2POSE    WAIT #6                     ; 27B166/96
L_27B167:
    INC2POSE    WAIT #8                     ; 27B167/98
L_27B168:
    INC2POSE    WAIT #6                     ; 27B168/96
L_27B169:
    INC2POSE    WAIT #6                     ; 27B169/96
L_27B16A:
    ADDPOSE     #-10                        ; 27B16A/60F6
    A_JMP       L_27B163                    ; 27B16C/1763B1

L_27B16F:
    ASMCALL     $9084                       ; 27B16F/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $00C0                       ; 27B172/C000
    ASMCALL     $84E6                       ; 27B174/D0E684
    ASMCALL     $9075                       ; 27B177/D07590 // Set pose to 0 (1 if MSB of VAR4 is set)
    WAIT        #9                          ; 27B17A/0609
L_27B17C:
    INC2POSE    WAIT #7                     ; 27B17C/97
L_27B17D:
    INC2POSE    WAIT #7                     ; 27B17D/97
L_27B17E:
    INC2POSE    WAIT #9                     ; 27B17E/99
L_27B17F:
    INC2POSE    WAIT #7                     ; 27B17F/97
L_27B180:
    INC2POSE    WAIT #7                     ; 27B180/97
L_27B181:
    ADDPOSE     #-10                        ; 27B181/60F6
    A_JMP       L_27B16F                    ; 27B183/176FB1

; CODE OR DATA -- $27B186 .. $27B1A4
incbinRange "../split/prg/bank27.bin", $1186, $11A4

L_27B1A4:
    MOV         VAR3,#$03                   ; 27B1A4/0D0303
    ZEROVEL                                 ; 27B1A7/38
    MOV         VAR9,#$00                   ; 27B1A8/0D0900
    SPRITEMAP   L_309893                     ; 27B1AB/1A939830
    A_JSR       L_27B1CB                    ; 27B1AF/18CBB1
    WAIT        #16                         ; 27B1B2/0610
L_27B1B4:
    MOV         VAR9,#$01                   ; 27B1B4/0D0901
    HALT                                    ; 27B1B7/09

L_27B1B8:
    MOV         VAR3,#$04                   ; 27B1B8/0D0304
    ZEROVEL                                 ; 27B1BB/38
    SPRITEMAP   L_309893                     ; 27B1BC/1A939830
    SETYVEL     #$FD00                      ; 27B1C0/C000FD
    ASMCALL     $DE4B                       ; 27B1C3/D04BDE // Play sound effect
    .byte       $0D                         ; 27B1C6/0D
    A_JSR       L_27B1CB                    ; 27B1C7/18CBB1
    HALT                                    ; 27B1CA/09

L_27B1CB:
    ASMCALL     $BBCA, WAIT #4              ; 27B1CB/D4CABB
L_27B1CE:
    INC2POSE    WAIT #4                     ; 27B1CE/94
L_27B1CF:
    LOOP        #4                          ; 27B1CF/0104
        INC2POSE    WAIT #2                     ; 27B1D1/92
L_27B1D2:
        INC2POSE    WAIT #2                     ; 27B1D2/92
L_27B1D3:
        ADDPOSE     #-4                         ; 27B1D3/60FC
    ENDLOOP                                 ; 27B1D5/02
    ADDPOSE     #4                          ; 27B1D6/6004
    INC2POSE    WAIT #1                     ; 27B1D8/91
L_27B1D9:
    INC2POSE    WAIT #1                     ; 27B1D9/91
L_27B1DA:
    ASMCALL     $BCD5                       ; 27B1DA/D0D5BC // UNK
    .byte       $31                         ; 27B1DD/31
    .byte       $04                         ; 27B1DE/04
    .byte       $00                         ; 27B1DF/00
    .byte       $00                         ; 27B1E0/00
    INC2POSE    WAIT #1                     ; 27B1E1/91
L_27B1E2:
    INC2POSE    WAIT #4                     ; 27B1E2/94
L_27B1E3:
    INC2POSE                                ; 27B1E3/90
    A_RTS                                   ; 27B1E4/19

; CODE OR DATA -- $27B1E5 .. $27B34F
incbinRange "../split/prg/bank27.bin", $11E5, $134F

Script34_SpearMinion:
    ONTICK      $27B49A                     ; 27B34F/089AB427
    MOV         VAR6,#$FF                   ; 27B353/0D06FF
    MOV         REG,#$04                    ; 27B356/1B04
    ASMCALL_l   $27BB72                     ; 27B358/2672BB27
    TABLEJMP    #2                          ; 27B35C/0F02
    .word       L_27B38A                    ; 27B35E/8AB3
    .word       L_27B362                    ; 27B360/62B3
L_27B362:
    SPRITEMAP   L_309705                     ; 27B362/1A059730
    MOV         VAR3,#$06                   ; 27B366/0D0306
    ASMCALL     $BBAE                       ; 27B369/D0AEBB
    ASMCALL     $9084                       ; 27B36C/D08490
    END                                     ; 27B36F/00

; CODE OR DATA -- $27B370 .. $27B382
incbinRange "../split/prg/bank27.bin", $1370, $1382

L_27B382:
    SETPOSE     #$08, WAIT #2               ; 27B382/5208
L_27B384:
    INCPOSE     WAIT #1                     ; 27B384/71
L_27B385:
    INCPOSE     WAIT #1                     ; 27B385/71
L_27B386:
    INCPOSE     WAIT #2                     ; 27B386/72
L_27B387:
    A_JMP       L_27B382                    ; 27B387/1782B3

L_27B38A:
    MOV         VAR3,#$00                   ; 27B38A/0D0300
    SPRITEMAP   L_3096C9                     ; 27B38D/1AC99630
    MOV         VAR8,#$03                   ; 27B391/0D0803
    ASMCALL     $BBCA                       ; 27B394/D0CABB
    ASMCALL     $B62E                       ; 27B397/D02EB6
    ASMCALL     $DE4B                       ; 27B39A/D04BDE // Play sound effect
    .byte       $0D                         ; 27B39D/0D
    A_JMP       L_27B3BD                    ; 27B39E/17BDB3

; CODE OR DATA -- $27B3A1 .. $27B3AB
incbinRange "../split/prg/bank27.bin", $13A1, $13AB

L_27B3AB:
    MOV         VAR3,#$05                   ; 27B3AB/0D0305
    WAIT        #2                          ; 27B3AE/0602
L_27B3B0:
    MOV         VAR3,#$00                   ; 27B3B0/0D0300
    ASMCALL     $BBCA                       ; 27B3B3/D0CABB
    ASMCALL     $B62E                       ; 27B3B6/D02EB6
    ASMCALL     $DE4B                       ; 27B3B9/D04BDE // Play sound effect
    .byte       $0D                         ; 27B3BC/0D
L_27B3BD:
    WAIT        #10                         ; 27B3BD/060A
L_27B3BF:
    INC2POSE    WAIT #15                    ; 27B3BF/9F
L_27B3C0:
    DEC2POSE                                ; 27B3C0/A0
    A_JMP       L_27B3BD                    ; 27B3C1/17BDB3

; CODE OR DATA -- $27B3C4 .. $27B679
incbinRange "../split/prg/bank27.bin", $13C4, $1679

Script31_MinionProjectile:
    SETBANK     #$22                        ; 27B679/2822
    MOV         REG,VAR0                    ; 27B67B/1E00
    TABLEJMP    #14                         ; 27B67D/0F0E
    .word       L_27B6D4                    ; 27B67F/D4B6
    .word       L_27B746                    ; 27B681/46B7
    .word       L_27B814                    ; 27B683/14B8
    .word       L_27B8A0                    ; 27B685/A0B8
    .word       L_27B904                    ; 27B687/04B9
    .word       L_27B9AA                    ; 27B689/AAB9
    .word       L_27BA17                    ; 27B68B/17BA
    .word       L_27BA7C                    ; 27B68D/7CBA
    .word       L_27B6BD                    ; 27B68F/BDB6
    .word       L_27B6BB                    ; 27B691/BBB6
    .word       L_27B6B9                    ; 27B693/B9B6
    .word       L_27B6B7                    ; 27B695/B7B6
    .word       L_27B6B5                    ; 27B697/B5B6
    .word       L_27B69C                    ; 27B699/9CB6
    END                                     ; 27B69B/00

L_27B69C:
    MOV         REG,#$FF                    ; 27B69C/1BFF
    ASMCALL_l   $27BB72                     ; 27B69E/2672BB27
    SPRITEMAP   L_3795BF                     ; 27B6A2/1ABF9537
    SETPOSE     #$00, WAIT #2               ; 27B6A6/5200
L_27B6A8:
    INCPOSE     WAIT #2                     ; 27B6A8/72
L_27B6A9:
    INCPOSE     WAIT #2                     ; 27B6A9/72
L_27B6AA:
    INCPOSE     WAIT #2                     ; 27B6AA/72
L_27B6AB:
    INCPOSE     WAIT #1                     ; 27B6AB/71
L_27B6AC:
    INCPOSE     WAIT #1                     ; 27B6AC/71
L_27B6AD:
    INCPOSE     WAIT #1                     ; 27B6AD/71
L_27B6AE:
    INCPOSE     WAIT #1                     ; 27B6AE/71
L_27B6AF:
    INCPOSE     WAIT #1                     ; 27B6AF/71
L_27B6B0:
    INCPOSE     WAIT #1                     ; 27B6B0/71
L_27B6B1:
    ASMCALL     $B6C9                       ; 27B6B1/D0C9B6
    END                                     ; 27B6B4/00

L_27B6B5:
    WAIT        #60                         ; 27B6B5/063C
L_27B6B7:
    WAIT        #60                         ; 27B6B7/063C
L_27B6B9:
    WAIT        #60                         ; 27B6B9/063C
L_27B6BB:
    WAIT        #30                         ; 27B6BB/061E
L_27B6BD:
    WAIT        #30                         ; 27B6BD/061E
L_27B6BF:
    MOV         REG,#$FF                    ; 27B6BF/1BFF
    ASMCALL_l   $27BB72                     ; 27B6C1/2672BB27
    ASMCALL     $B6C9                       ; 27B6C5/D0C9B6
    END                                     ; 27B6C8/00

; CODE OR DATA -- $27B6C9 .. $27B6D4
incbinRange "../split/prg/bank27.bin", $16C9, $16D4

L_27B6D4:
    ONTICK      $27B6DB                     ; 27B6D4/08DBB627
    WAIT        #58                         ; 27B6D8/063A
L_27B6DA:
    END                                     ; 27B6DA/00

; CODE OR DATA -- $27B6DB .. $27B746
incbinRange "../split/prg/bank27.bin", $16DB, $1746

L_27B746:
    ASMCALL     $DE4B                       ; 27B746/D04BDE // Play sound effect
    .byte       $3F                         ; 27B749/3F
    MOV         VAR0,#$02                   ; 27B74A/0D0002
    SPRITEMAP   L_30952D                     ; 27B74D/1A2D9530
    ONTICK      $27B768                     ; 27B751/0868B727
    ASMCALL     $BCA4                       ; 27B755/D0A4BC
    ASMCALL     $9084                       ; 27B758/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0380                       ; 27B75B/8003
    MOV         VAR3,#$00                   ; 27B75D/0D0300
L_27B760:
    SETPOSE     #$00, WAIT #1               ; 27B760/5100
L_27B762:
    INCPOSE     WAIT #1                     ; 27B762/71
L_27B763:
    INCPOSE     WAIT #1                     ; 27B763/71
L_27B764:
    INCPOSE     WAIT #1                     ; 27B764/71
L_27B765:
    A_JMP       L_27B760                    ; 27B765/1760B7

; CODE OR DATA -- $27B768 .. $27B814
incbinRange "../split/prg/bank27.bin", $1768, $1814

L_27B814:
    SPRITEMAP   L_309180                     ; 27B814/1A809130
    SETPOSE     #$00                        ; 27B818/5000
    ASMCALL     $DE4B                       ; 27B81A/D04BDE // Play sound effect
    .byte       $3E                         ; 27B81D/3E
    ASMCALL     $BCA0                       ; 27B81E/D0A0BC
    ONTICK      $27B853                     ; 27B821/0853B827
    ASMCALL     $9084, WAIT #10             ; 27B825/DA8490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0300                       ; 27B828/0003
L_27B82A:
    ASMCALL     $9084, WAIT #6              ; 27B82A/D68490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0200                       ; 27B82D/0002
L_27B82F:
    ASMCALL     $9084, WAIT #6              ; 27B82F/D68490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0100                       ; 27B832/0001
L_27B834:
    ASMCALL     $9084, WAIT #6              ; 27B834/D68490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0080                       ; 27B837/8000
L_27B839:
    ASMCALL     $9084, WAIT #12             ; 27B839/DC8490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0000                       ; 27B83C/0000
L_27B83E:
    ASMCALL     $9084, WAIT #6              ; 27B83E/D68490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $FF80                       ; 27B841/80FF
L_27B843:
    ASMCALL     $9084, WAIT #6              ; 27B843/D68490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $FF00                       ; 27B846/00FF
L_27B848:
    ASMCALL     $9084, WAIT #6              ; 27B848/D68490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $FE00                       ; 27B84B/00FE
L_27B84D:
    ASMCALL     $9084, WAIT #10             ; 27B84D/DA8490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $FD00                       ; 27B850/00FD
L_27B852:
    END                                     ; 27B852/00

; CODE OR DATA -- $27B853 .. $27B8A0
incbinRange "../split/prg/bank27.bin", $1853, $18A0

L_27B8A0:
    ONTICK      $27B8A8                     ; 27B8A0/08A8B827
    MOV         VAR5,#$00                   ; 27B8A4/0D0500
L_27B8A7:
    HALT                                    ; 27B8A7/09

; CODE OR DATA -- $27B8A8 .. $27B904
incbinRange "../split/prg/bank27.bin", $18A8, $1904

L_27B904:
    MOV         VAR0,#$02                   ; 27B904/0D0002
    ASMCALL     $DE4B                       ; 27B907/D04BDE // Play sound effect
    .byte       $46                         ; 27B90A/46
    SPRITEMAP   L_3098B7                     ; 27B90B/1AB79830
    ONTICK      $27B935                     ; 27B90F/0835B927
    ASMCALL     $BCA4                       ; 27B913/D0A4BC
    ADDYPOS     #-10                        ; 27B916/2DF6FF
    MOV         REG,VAR3                    ; 27B919/1E03
    TABLEJSR    #5                          ; 27B91B/1005
    .word       L_27B989                    ; 27B91D/89B9
    .word       L_27B965                    ; 27B91F/65B9
    .word       L_27B96E                    ; 27B921/6EB9
    .word       L_27B977                    ; 27B923/77B9
    .word       L_27B980                    ; 27B925/80B9
    MOV         VAR8,#$00                   ; 27B927/0D0800
    ASMCALL     $9075                       ; 27B92A/D07590 // Set pose to 0 (1 if MSB of VAR4 is set)
L_27B92D:
    WAIT        #2                          ; 27B92D/0602
L_27B92F:
    INC2POSE    WAIT #2                     ; 27B92F/92
L_27B930:
    ADDPOSE     #-2                         ; 27B930/60FE
    A_JMP       L_27B92D                    ; 27B932/172DB9

; CODE OR DATA -- $27B935 .. $27B965
incbinRange "../split/prg/bank27.bin", $1935, $1965

L_27B965:
    ASMCALL     $9084                       ; 27B965/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0100                       ; 27B968/0001
    SETYVEL     #$FE00                      ; 27B96A/C000FE
    A_RTS                                   ; 27B96D/19

L_27B96E:
    ASMCALL     $9084                       ; 27B96E/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $01A0                       ; 27B971/A001
    SETYVEL     #$FE00                      ; 27B973/C000FE
    A_RTS                                   ; 27B976/19

L_27B977:
    ASMCALL     $9084                       ; 27B977/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0220                       ; 27B97A/2002
    SETYVEL     #$FE00                      ; 27B97C/C000FE
    A_RTS                                   ; 27B97F/19

L_27B980:
    ASMCALL     $9084                       ; 27B980/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0080                       ; 27B983/8000
    SETYVEL     #$FF00                      ; 27B985/C000FF
    A_RTS                                   ; 27B988/19

L_27B989:
    ASMCALL     $9084                       ; 27B989/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0200                       ; 27B98C/0002
    SETYVEL     #$FE00                      ; 27B98E/C000FE
    A_RTS                                   ; 27B991/19

; CODE OR DATA -- $27B992 .. $27B9AA
incbinRange "../split/prg/bank27.bin", $1992, $19AA

L_27B9AA:
    ONTICK      $27B9C4                     ; 27B9AA/08C4B927
    SPRITEMAP   L_30973B                     ; 27B9AE/1A3B9730
    MOV         VAR0,#$02                   ; 27B9B2/0D0002
    ASMCALL     $9075                       ; 27B9B5/D07590 // Set pose to 0 (1 if MSB of VAR4 is set)
    ASMCALL     $BCA4                       ; 27B9B8/D0A4BC
    ASMCALL     $B9E3                       ; 27B9BB/D0E3B9
    ASMCALL     $9084                       ; 27B9BE/D08490 // Set X velocity (velocity is negative if MSB of VAR4 is set)
    .word       $0200                       ; 27B9C1/0002
    HALT                                    ; 27B9C3/09

; CODE OR DATA -- $27B9C4 .. $27BA17
incbinRange "../split/prg/bank27.bin", $19C4, $1A17

L_27BA17:
    ONTICK      $27BA1C                     ; 27BA17/081CBA27
L_27BA1B:
    HALT                                    ; 27BA1B/09

; CODE OR DATA -- $27BA1C .. $27BA7C
incbinRange "../split/prg/bank27.bin", $1A1C, $1A7C

L_27BA7C:
    ONTICK      $27BA81                     ; 27BA7C/0881BA27
    HALT                                    ; 27BA80/09

; CODE OR DATA -- $27BA81 .. $27BB4A
incbinRange "../split/prg/bank27.bin", $1A81, $1B4A

L_27BB4A:
    MOV         VAR6,#$42                   ; 27BB4A/0D0642
    ASMCALL     $BB93                       ; 27BB4D/D093BB
    JML         $228003                     ; 27BB50/03038022

L_27BB54:
    MOV         VAR6,#$42                   ; 27BB54/0D0642
    ASMCALL     $BB93                       ; 27BB57/D093BB
    JML         $228100                     ; 27BB5A/03008122

; CODE OR DATA -- $27BB5E .. $28A000
incbinRange "../split/prg/bank27.bin", $1B5E, $2000