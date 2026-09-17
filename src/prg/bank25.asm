.segment "PRG25": absolute
Script2A_Parasol:
    SETBANK     #$22                        ; 25A000/2822
    ONPOSITION  $D9BB                       ; 25A002/21BBD9
    SPRITEMAP   L_308CA4                     ; 25A005/1AA48C30
    ASMCALL     $A27A                       ; 25A009/D07AA2
    JEQ         L_25A079                    ; 25A00C/0A79A0
L_25A00F:
    ONTICK      $25A0AE                     ; 25A00F/08AEA025
    ASMCALL     $E26A                       ; 25A013/D06AE2 // Set X velocity (respect facing)
    .word       $00C0                       ; 25A016/C000
L_25A018:
    ASMCALL     $8829                       ; 25A018/D02988 // Set pose to 0 (respect facing)
    MOV         REG,VAR3                    ; 25A01B/1E03
    TABLEJMP    #8                          ; 25A01D/0F08
    .word       L_25A031                    ; 25A01F/31A0
    .word       L_25A02F                    ; 25A021/2FA0
    .word       L_25A031                    ; 25A023/31A0
    .word       L_25A02F                    ; 25A025/2FA0
    .word       L_25A037                    ; 25A027/37A0
    .word       L_25A031                    ; 25A029/31A0
    .word       L_25A02F                    ; 25A02B/2FA0
    .word       L_25A037                    ; 25A02D/37A0
L_25A02F:
    ADDPOSE     #4                          ; 25A02F/6004
L_25A031:
    WAIT        #10                         ; 25A031/060A
L_25A033:
    INC2POSE    WAIT #10                    ; 25A033/9A
L_25A034:
    A_JMP       L_25A018                    ; 25A034/1718A0

L_25A037:
    ZEROVEL                                 ; 25A037/38
    ADDPOSE     #8                          ; 25A038/6008
    HALT                                    ; 25A03A/09

L_25A03B:
    ASMCALL     $8851                       ; 25A03B/D05188 // Face towards Kirby
    ONTICK      $25A0E6                     ; 25A03E/08E6A025
    ZEROVEL                                 ; 25A042/38
    SETYVEL     #$0080                      ; 25A043/C08000
L_25A046:
    ASMCALL     $8829                       ; 25A046/D02988 // Set pose to 0 (respect facing)
    MOV         REG,VAR3                    ; 25A049/1E03
    TABLEJMP    #8                          ; 25A04B/0F08
    .word       L_25A05F                    ; 25A04D/5FA0
    .word       L_25A05D                    ; 25A04F/5DA0
    .word       L_25A05F                    ; 25A051/5FA0
    .word       L_25A05D                    ; 25A053/5DA0
    .word       L_25A065                    ; 25A055/65A0
    .word       L_25A05F                    ; 25A057/5FA0
    .word       L_25A05D                    ; 25A059/5DA0
    .word       L_25A065                    ; 25A05B/65A0
L_25A05D:
    ADDPOSE     #4                          ; 25A05D/6004
L_25A05F:
    WAIT        #10                         ; 25A05F/060A
L_25A061:
    INC2POSE    WAIT #10                    ; 25A061/9A
L_25A062:
    A_JMP       L_25A046                    ; 25A062/1746A0

L_25A065:
    ADDPOSE     #8                          ; 25A065/6008
    HALT                                    ; 25A067/09

L_25A068:
    A_JSR       $82EB                       ; 25A068/18EB82
L_25A06B:
    ASMCALL     $DED0                       ; 25A06B/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 25A06E/09
    .byte       $12                         ; 25A06F/12
    .byte       $0D                         ; 25A070/0D
    .byte       $00                         ; 25A071/00
    .byte       $00                         ; 25A072/00
    .byte       $00                         ; 25A073/00
    .byte       $05                         ; 25A074/05
    .byte       $00                         ; 25A075/00
    ASMCALL     $A2AD                       ; 25A076/D0ADA2
L_25A079:
    ADDYPOS     #-16                        ; 25A079/2DF0FF
    SETPOSE     #$0A                        ; 25A07C/500A
    MOV         VAR0,#$01                   ; 25A07E/0D0001
    ASMCALL     $8851                       ; 25A081/D05188 // Face towards Kirby
    ADD         VAR1,#-128                  ; 25A084/13010280
    ASMCALL     $E23C                       ; 25A088/D03CE2 // Unknown ASM $E23C
    .word       $0066                       ; 25A08B/6600
    SETYVEL     #$0000                      ; 25A08D/C00000
    MOV         VAR9,#$20                   ; 25A090/0D0920
    ONTICK      $25A17C                     ; 25A093/087CA125
    HALT                                    ; 25A097/09

L_25A098:
    MOV         VAR3,#$00                   ; 25A098/0D0300
    MOV         VAR2,#$00                   ; 25A09B/0D0200
    ONTICK      $25A1CE                     ; 25A09E/08CEA125
L_25A0A2:
    HALT                                    ; 25A0A2/09

; CODE OR DATA -- $25A0A3 .. $25A2F5
incbinRange "../split/prg/bank25.bin", $00A3, $02F5

Script2B_Knight:
    SETBANK     #$22                        ; 25A2F5/2822
    ONPOSITION  $D9BB                       ; 25A2F7/21BBD9
    SPRITEMAP   L_308D6D                     ; 25A2FA/1A6D8D30
    ASMCALL     $84A4                       ; 25A2FE/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 25A301/0D0002
    ONTICK      $25A585                     ; 25A304/0885A525
    A_JMP       L_25A31A                    ; 25A308/171AA3

L_25A30B:
    ASMCALL     $8851                       ; 25A30B/D05188 // Face towards Kirby
    ASMCALL     $E26A                       ; 25A30E/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 25A311/8000
    ONTICK      $25A41A                     ; 25A313/081AA425
    MOV         VAR2,#$00                   ; 25A317/0D0200
L_25A31A:
    ASMCALL     $8829, WAIT #10             ; 25A31A/DA2988 // Set pose to 0 (respect facing)
L_25A31D:
    INC2POSE    WAIT #8                     ; 25A31D/98
L_25A31E:
    INC2POSE    WAIT #8                     ; 25A31E/98
L_25A31F:
    INC2POSE    WAIT #10                    ; 25A31F/9A
L_25A320:
    DEC2POSE    WAIT #8                     ; 25A320/A8
L_25A321:
    DEC2POSE    WAIT #8                     ; 25A321/A8
L_25A322:
    A_JMP       L_25A31A                    ; 25A322/171AA3

L_25A325:
    ONTICK      $25A44F                     ; 25A325/084FA425
    ZEROVEL                                 ; 25A329/38
    ASMCALL     $8851                       ; 25A32A/D05188 // Face towards Kirby
    MOV         VAR2,#$03                   ; 25A32D/0D0203
    MOV         REG,VAR1                    ; 25A330/1E01
    MOV         VAR5,REG                    ; 25A332/1D05
    MOV         REG,#$04                    ; 25A334/1B04
    ASMCALL     $C8DD                       ; 25A336/D0DDC8
    JEQ         L_25A34D                    ; 25A339/0A4DA3
    A_JSR       L_25A370                    ; 25A33C/1870A3
    MOV         REG,#$04                    ; 25A33F/1B04
    ASMCALL     $C8DD                       ; 25A341/D0DDC8
    JNE         L_25A35E                    ; 25A344/0B5EA3
    A_JSR       L_25A39F                    ; 25A347/189FA3
    A_JMP       L_25A35E                    ; 25A34A/175EA3

L_25A34D:
    A_JSR       L_25A396                    ; 25A34D/1896A3
    MOV         REG,#$04                    ; 25A350/1B04
    ASMCALL     $C8DD                       ; 25A352/D0DDC8
    JNE         L_25A35E                    ; 25A355/0B5EA3
    A_JSR       L_25A379                    ; 25A358/1879A3
    A_JMP       L_25A35E                    ; 25A35B/175EA3

L_25A35E:
    MOV         VAR2,#$5A                   ; 25A35E/0D025A
L_25A361:
    ONTICK      $25A4AB                     ; 25A361/08ABA425
    ASMCALL     $8851                       ; 25A365/D05188 // Face towards Kirby
    ASMCALL     $8CAA                       ; 25A368/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF80                       ; 25A36B/80FF
    A_JMP       L_25A31A                    ; 25A36D/171AA3

L_25A370:
    MOV         VAR3,#$FF                   ; 25A370/0D03FF
    ASMCALL     $8C53                       ; 25A373/D0538C // Set pose (respect facing)
    .byte       $08                         ; 25A376/08
    WAIT        #16                         ; 25A377/0610
L_25A379:
    ASMCALL     $DED0                       ; 25A379/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 25A37C/09
    .byte       $12                         ; 25A37D/12
    .byte       $57                         ; 25A37E/57
    .byte       $00                         ; 25A37F/00
    .byte       $00                         ; 25A380/00
    .byte       $00                         ; 25A381/00
    .byte       $00                         ; 25A382/00
    .byte       $00                         ; 25A383/00
    MOV         VAR3,#$00                   ; 25A384/0D0300
    MOV         VAR6,#$01                   ; 25A387/0D0601
    ASMCALL     $8C53, WAIT #2              ; 25A38A/D2538C // Set pose (respect facing)
    .byte       $0A                         ; 25A38D/0A
L_25A38E:
    INC2POSE    WAIT #2                     ; 25A38E/92
L_25A38F:
    INC2POSE    WAIT #2                     ; 25A38F/92
L_25A390:
    INC2POSE    WAIT #2                     ; 25A390/92
L_25A391:
    INC2POSE    WAIT #2                     ; 25A391/92
L_25A392:
    INC2POSE    WAIT #2                     ; 25A392/92
L_25A393:
    ZEROVEL                                 ; 25A393/38
    INC2POSE    WAIT #2                     ; 25A394/92
L_25A395:
    A_RTS                                   ; 25A395/19

L_25A396:
    MOV         VAR3,#$FF                   ; 25A396/0D03FF
    ASMCALL     $8C53                       ; 25A399/D0538C // Set pose (respect facing)
    .byte       $16                         ; 25A39C/16
    WAIT        #16                         ; 25A39D/0610
L_25A39F:
    ASMCALL     $DED0                       ; 25A39F/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 25A3A2/09
    .byte       $12                         ; 25A3A3/12
    .byte       $57                         ; 25A3A4/57
    .byte       $00                         ; 25A3A5/00
    .byte       $00                         ; 25A3A6/00
    .byte       $00                         ; 25A3A7/00
    .byte       $00                         ; 25A3A8/00
    .byte       $00                         ; 25A3A9/00
    MOV         VAR3,#$00                   ; 25A3AA/0D0300
    MOV         VAR6,#$01                   ; 25A3AD/0D0601
    ASMCALL     $8C53, WAIT #2              ; 25A3B0/D2538C // Set pose (respect facing)
    .byte       $14                         ; 25A3B3/14
L_25A3B4:
    DEC2POSE    WAIT #2                     ; 25A3B4/A2
L_25A3B5:
    DEC2POSE    WAIT #2                     ; 25A3B5/A2
L_25A3B6:
    DEC2POSE    WAIT #2                     ; 25A3B6/A2
L_25A3B7:
    DEC2POSE    WAIT #2                     ; 25A3B7/A2
L_25A3B8:
    DEC2POSE    WAIT #2                     ; 25A3B8/A2
L_25A3B9:
    ZEROVEL                                 ; 25A3B9/38
    DEC2POSE    WAIT #2                     ; 25A3BA/A2
L_25A3BB:
    A_RTS                                   ; 25A3BB/19

L_25A3BC:
    ZEROVEL                                 ; 25A3BC/38
    ONTICK      $25A5AD                     ; 25A3BD/08ADA525
    MOV         REG,#$04                    ; 25A3C1/1B04
    ASMCALL     $C8DD                       ; 25A3C3/D0DDC8
    JNE         L_25A3CF                    ; 25A3C6/0BCFA3
    A_JSR       L_25A379                    ; 25A3C9/1879A3
    A_JMP       L_25A3D2                    ; 25A3CC/17D2A3

L_25A3CF:
    A_JSR       L_25A39F                    ; 25A3CF/189FA3
L_25A3D2:
    MOV         REG,VAR2                    ; 25A3D2/1E02
    JEQ         L_25A30B                    ; 25A3D4/0A0BA3
    A_JMP       L_25A361                    ; 25A3D7/1761A3

; CODE OR DATA -- $25A3DA .. $25A5FF
incbinRange "../split/prg/bank25.bin", $03DA, $05FF

L_25A5FF:
    ASMCALL     $DE4B                       ; 25A5FF/D04BDE // Play sound effect
    .byte       $3A                         ; 25A602/3A
    SETBANK     #$22                        ; 25A603/2822
    ONPOSITION  $D9BB                       ; 25A605/21BBD9
    MOV         VAR0,#$02                   ; 25A608/0D0002
    ONTICK      $25A612                     ; 25A60B/0812A625
    WAIT        #14                         ; 25A60F/060E
L_25A611:
    END                                     ; 25A611/00

; CODE OR DATA -- $25A612 .. $25A69C
incbinRange "../split/prg/bank25.bin", $0612, $069C

Script2C_Slippy:
    SETBANK     #$22                        ; 25A69C/2822
    ONPOSITION  $D9BB                       ; 25A69E/21BBD9
    SPRITEMAP   L_308EED                     ; 25A6A1/1AED8E30
    ASMCALL     $84A4                       ; 25A6A5/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 25A6A8/0D0002
    MOV         VAR7,#$00                   ; 25A6AB/0D0700
    ASMCALL     $8851                       ; 25A6AE/D05188 // Face towards Kirby
    ASMCALL     $A930                       ; 25A6B1/D030A9 // Check if there's water directly below
    JNE         L_25A786                    ; 25A6B4/0B86A7
L_25A6B7:
    ZEROVEL                                 ; 25A6B7/38
    ONTICK      $25A84B                     ; 25A6B8/084BA825
    ASMCALL     $8829                       ; 25A6BC/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $8BE4                       ; 25A6BF/D0E48B // Unknown ASM $228BE4
    .word       $A6FD                       ; 25A6C2/FDA6
L_25A6C4:
    ASMCALL     $8851                       ; 25A6C4/D05188 // Face towards Kirby
    MOV         VAR6,#$10                   ; 25A6C7/0D0610
L_25A6CA:
    ASMCALL     $A966                       ; 25A6CA/D066A9
    TABLEJMP    #5                          ; 25A6CD/0F05
    .word       L_25A714                    ; 25A6CF/14A7
    .word       L_25A735                    ; 25A6D1/35A7
    .word       L_25A70F                    ; 25A6D3/0FA7
    .word       L_25A730                    ; 25A6D5/30A7
    .word       L_25A6FF                    ; 25A6D7/FFA6
    ASMCALL     $A99A                       ; 25A6D9/D09AA9
    ASMCALL     $8BED                       ; 25A6DC/D0ED8B // Unknown ASM $228BED
    .word       $A6FB                       ; 25A6DF/FBA6
    LOOP        REG                         ; 25A6E1/22
        ASMCALL     $8829, WAIT #4              ; 25A6E2/D42988 // Set pose to 0 (respect facing)
L_25A6E5:
        MOV         REG,VAR3                    ; 25A6E5/1E03
        JEQ         L_25A6F0                    ; 25A6E7/0AF0A6
        ASMCALL     $84DB                       ; 25A6EA/D0DB84 // Flip sprite horizontally (actually toggle LSB of pose)
        A_JMP       L_25A6F2                    ; 25A6ED/17F2A6

L_25A6F0:
        ADDPOSE     #4                          ; 25A6F0/6004
L_25A6F2:
        WAIT        #16                         ; 25A6F2/0610
L_25A6F4:
    ENDLOOP                                 ; 25A6F4/02
    MOV         VAR6,#$00                   ; 25A6F5/0D0600
    A_JMP       L_25A6CA                    ; 25A6F8/17CAA6

; CODE OR DATA -- $25A6FB .. $25A6FF
incbinRange "../split/prg/bank25.bin", $06FB, $06FF

L_25A6FF:
    ADD         VAR1,#-128                  ; 25A6FF/13010280
    ASMCALL     $8B7F                       ; 25A703/D07F8B // Unknown ASM $228B7F
    .word       $A73E                       ; 25A706/3EA7
    ADD         VAR1,#-128                  ; 25A708/13010280
    A_JMP       L_25A714                    ; 25A70C/1714A7

L_25A70F:
    ASMCALL     $8B7F                       ; 25A70F/D07F8B // Unknown ASM $228B7F
    .word       $A73E                       ; 25A712/3EA7
L_25A714:
    SETYVEL     #$FB00                      ; 25A714/C000FB
    MOV         VAR5,#$80                   ; 25A717/0D0580
L_25A71A:
    ASMCALL     $DE4B                       ; 25A71A/D04BDE // Play sound effect
    .byte       $0D                         ; 25A71D/0D
    ONTICK      $25A853                     ; 25A71E/0853A825
    ASMCALL     $8C53                       ; 25A722/D0538C // Set pose (respect facing)
    .byte       $02                         ; 25A725/02
L_25A726:
    ASMCALL     $8E74, WAIT #1              ; 25A726/D1748E // Check if Y velocity is negative
L_25A729:
    JNE         L_25A726                    ; 25A729/0B26A7
    DEC2POSE    WAIT #2                     ; 25A72C/A2
L_25A72D:
    ADDPOSE     #4                          ; 25A72D/6004
    HALT                                    ; 25A72F/09

L_25A730:
    ASMCALL     $8B7F                       ; 25A730/D07F8B // Unknown ASM $228B7F
    .word       $A73E                       ; 25A733/3EA7
L_25A735:
    SETYVEL     #$FA00                      ; 25A735/C000FA
    MOV         VAR5,#$40                   ; 25A738/0D0540
    A_JMP       L_25A71A                    ; 25A73B/171AA7

; CODE OR DATA -- $25A73E .. $25A742
incbinRange "../split/prg/bank25.bin", $073E, $0742

L_25A742:
    ASMCALL     $DE4B                       ; 25A742/D04BDE // Play sound effect
    .byte       $0D                         ; 25A745/0D
    ASMCALL     $8851                       ; 25A746/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 25A749/D0538C // Set pose (respect facing)
    .byte       $04                         ; 25A74C/04
    ONTICK      $25A84B                     ; 25A74D/084BA825
    ZEROVEL                                 ; 25A751/38
    SETYVEL     #$0200, WAIT #4             ; 25A752/C40002
L_25A755:
    SETYVEL     #$0100, WAIT #4             ; 25A755/C40001
L_25A758:
    SETYVEL     #$FF00, WAIT #4             ; 25A758/C400FF
L_25A75B:
    SETYVEL     #$FE00, WAIT #4             ; 25A75B/C400FE
L_25A75E:
    ASMCALL     $8B7F                       ; 25A75E/D07F8B // Unknown ASM $228B7F
    .word       $A73E                       ; 25A761/3EA7
    SETYVEL     #$FB00                      ; 25A763/C000FB
    MOV         VAR5,#$40                   ; 25A766/0D0540
    A_JMP       L_25A71A                    ; 25A769/171AA7

L_25A76C:
    ASMCALL     $DE4B                       ; 25A76C/D04BDE // Play sound effect
    .byte       $1F                         ; 25A76F/1F
    MOV         VAR6,#$01                   ; 25A770/0D0601
    ONTICK      $25A8B1                     ; 25A773/08B1A825
    SETYVEL     #$0080                      ; 25A777/C08000
    ASMCALL     $E26A                       ; 25A77A/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 25A77D/8000
    ASMCALL     $8C53                       ; 25A77F/D0538C // Set pose (respect facing)
    .byte       $04                         ; 25A782/04
    WAIT        #40                         ; 25A783/0628
L_25A785:
    DEC2POSE                                ; 25A785/A0
L_25A786:
    ASMCALL     $8C53                       ; 25A786/D0538C // Set pose (respect facing)
    .byte       $02                         ; 25A789/02
L_25A78A:
    ASMCALL     $E23C                       ; 25A78A/D03CE2 // Unknown ASM $E23C
    .word       $0080                       ; 25A78D/8000
    MOV         VAR6,#$01                   ; 25A78F/0D0601
    ONTICK      $25A8B1                     ; 25A792/08B1A825
    ASMCALL     $8BE4                       ; 25A796/D0E48B // Unknown ASM $228BE4
    .word       $A7B6                       ; 25A799/B6A7
L_25A79B:
    MOV         REG,#$04                    ; 25A79B/1B04
    ASMCALL     $C8DD                       ; 25A79D/D0DDC8
    JNE         L_25A7A5                    ; 25A7A0/0BA5A7
    WAIT        #30                         ; 25A7A3/061E
L_25A7A5:
    INC2POSE    WAIT #15                    ; 25A7A5/9F
L_25A7A6:
    MOV         VAR6,#$00                   ; 25A7A6/0D0600
    MOV         REG,#$03                    ; 25A7A9/1B03
    ASMCALL     $C8DD                       ; 25A7AB/D0DDC8
    TABLEJMP    #3                          ; 25A7AE/0F03
    .word       L_25A7B8                    ; 25A7B0/B8A7
    .word       L_25A7E0                    ; 25A7B2/E0A7
    .word       L_25A81C                    ; 25A7B4/1CA8
    SETPOSE     #$38, WAIT #10              ; 25A7B6/5A38
L_25A7B8:
    ZEROVEL                                 ; 25A7B8/38
    ASMCALL     $868D                       ; 25A7B9/D08D86
    ASMCALL     $8C53                       ; 25A7BC/D0538C // Set pose (respect facing)
    .byte       $04                         ; 25A7BF/04
    ASMCALL     $8BE4                       ; 25A7C0/D0E48B // Unknown ASM $228BE4
    .word       $A7DE                       ; 25A7C3/DEA7
L_25A7C5:
    MOV         VAR5,#$00                   ; 25A7C5/0D0500
    ASMCALL     $A93A                       ; 25A7C8/D03AA9
    DEC2POSE                                ; 25A7CB/A0
    ASMCALL     $E23C, WAIT #8              ; 25A7CC/D83CE2 // Unknown ASM $E23C
    .word       $0300                       ; 25A7CF/0003
L_25A7D1:
    ASMCALL     $E23C, WAIT #8              ; 25A7D1/D83CE2 // Unknown ASM $E23C
    .word       $0200                       ; 25A7D4/0002
L_25A7D6:
    ASMCALL     $E23C, WAIT #8              ; 25A7D6/D83CE2 // Unknown ASM $E23C
    .word       $0100                       ; 25A7D9/0001
L_25A7DB:
    A_JMP       L_25A78A                    ; 25A7DB/178AA7

; CODE OR DATA -- $25A7DE .. $25A7E0
incbinRange "../split/prg/bank25.bin", $07DE, $07E0

L_25A7E0:
    A_JSR       L_25A7F1                    ; 25A7E0/18F1A7
L_25A7E3:
    MOV         REG,#$03                    ; 25A7E3/1B03
    ASMCALL     $C8DD                       ; 25A7E5/D0DDC8
    JNE         L_25A78A                    ; 25A7E8/0B8AA7
    A_JSR       L_25A7F1                    ; 25A7EB/18F1A7
    A_JMP       L_25A78A                    ; 25A7EE/178AA7

L_25A7F1:
    ZEROVEL                                 ; 25A7F1/38
    ASMCALL     $868D                       ; 25A7F2/D08D86
    ASMCALL     $8C53                       ; 25A7F5/D0538C // Set pose (respect facing)
    .byte       $04                         ; 25A7F8/04
    ASMCALL     $8BE4                       ; 25A7F9/D0E48B // Unknown ASM $228BE4
    .word       $A81A                       ; 25A7FC/1AA8
L_25A7FE:
    MOV         VAR5,#$08                   ; 25A7FE/0D0508
    ASMCALL     $A93A                       ; 25A801/D03AA9
    DEC2POSE                                ; 25A804/A0
    ASMCALL     $E23C, WAIT #8              ; 25A805/D83CE2 // Unknown ASM $E23C
    .word       $0240                       ; 25A808/4002
L_25A80A:
    ASMCALL     $E23C, WAIT #8              ; 25A80A/D83CE2 // Unknown ASM $E23C
    .word       $0200                       ; 25A80D/0002
L_25A80F:
    ASMCALL     $E23C, WAIT #8              ; 25A80F/D83CE2 // Unknown ASM $E23C
    .word       $0100                       ; 25A812/0001
L_25A814:
    ASMCALL     $E23C, WAIT #15             ; 25A814/DF3CE2 // Unknown ASM $E23C
    .word       $0080                       ; 25A817/8000
L_25A819:
    A_RTS                                   ; 25A819/19

; CODE OR DATA -- $25A81A .. $25A81C
incbinRange "../split/prg/bank25.bin", $081A, $081C

L_25A81C:
    A_JSR       L_25A822                    ; 25A81C/1822A8
    A_JMP       L_25A7E3                    ; 25A81F/17E3A7

L_25A822:
    ZEROVEL                                 ; 25A822/38
    ASMCALL     $868D                       ; 25A823/D08D86
    ASMCALL     $8C53                       ; 25A826/D0538C // Set pose (respect facing)
    .byte       $04                         ; 25A829/04
    ASMCALL     $8BE4                       ; 25A82A/D0E48B // Unknown ASM $228BE4
    .word       $A81A                       ; 25A82D/1AA8
L_25A82F:
    MOV         VAR5,#$10                   ; 25A82F/0D0510
    ASMCALL     $A93A                       ; 25A832/D03AA9
    DEC2POSE                                ; 25A835/A0
    ASMCALL     $E23C, WAIT #8              ; 25A836/D83CE2 // Unknown ASM $E23C
    .word       $0333                       ; 25A839/3303
    ASMCALL     $E23C, WAIT #8              ; 25A83B/D83CE2 // Unknown ASM $E23C
    .word       $02D4                       ; 25A83E/D402
    ASMCALL     $E23C, WAIT #8              ; 25A840/D83CE2 // Unknown ASM $E23C
    .word       $016A                       ; 25A843/6A01
    ASMCALL     $E23C, WAIT #15             ; 25A845/DF3CE2 // Unknown ASM $E23C
    .word       $00B5                       ; 25A848/B500
    A_RTS                                   ; 25A84A/19

; CODE OR DATA -- $25A84B .. $25A9A5
incbinRange "../split/prg/bank25.bin", $084B, $09A5

Script2D_Bubbles:
    SETBANK     #$22                        ; 25A9A5/2822
    ONPOSITION  $D9BB                       ; 25A9A7/21BBD9
    SPRITEMAP   L_308F2F                     ; 25A9AA/1A2F8F30
    ASMCALL     $84A4                       ; 25A9AE/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 25A9B1/0D0002
    ASMCALL     $8851                       ; 25A9B4/D05188 // Face towards Kirby
    MOV         VAR2,#$00                   ; 25A9B7/0D0200
    MOV         VAR3,#$00                   ; 25A9BA/0D0300
    SETPOSE     #$00                        ; 25A9BD/5000
    ONTICK      $25AA47                     ; 25A9BF/0847AA25
    ZEROVEL                                 ; 25A9C3/38
    A_JMP       L_25A9D9                    ; 25A9C4/17D9A9

L_25A9C7:
    ONTICK      $25AA47                     ; 25A9C7/0847AA25
    ASMCALL     $AABC                       ; 25A9CB/D0BCAA
    ASMCALL     $AB12                       ; 25A9CE/D012AB
    TABLEJMP    #3                          ; 25A9D1/0F03
    .word       L_25A9D9                    ; 25A9D3/D9A9
    .word       L_25A9E1                    ; 25A9D5/E1A9
    .word       L_25A9E9                    ; 25A9D7/E9A9
L_25A9D9:
    WAIT        #10                         ; 25A9D9/060A
L_25A9DB:
    ASMCALL     $AB3F                       ; 25A9DB/D03FAB
    A_JMP       L_25A9D9                    ; 25A9DE/17D9A9

L_25A9E1:
    WAIT        #20                         ; 25A9E1/0614
L_25A9E3:
    ASMCALL     $AB3F                       ; 25A9E3/D03FAB
    A_JMP       L_25A9E1                    ; 25A9E6/17E1A9

L_25A9E9:
    HALT                                    ; 25A9E9/09

L_25A9EA:
    ASMCALL     $DE4B                       ; 25A9EA/D04BDE // Play sound effect
    .byte       $0E                         ; 25A9ED/0E
    ZEROVEL                                 ; 25A9EE/38
    ONTICK      $25AAA6                     ; 25A9EF/08A6AA25
    SETPOSE     #$04, WAIT #15              ; 25A9F3/5F04
L_25A9F5:
    ASMCALL     $AB3F                       ; 25A9F5/D03FAB
    A_JMP       L_25A9C7                    ; 25A9F8/17C7A9

L_25A9FB:
    ASMCALL     $DE4B                       ; 25A9FB/D04BDE // Play sound effect
    .byte       $0E                         ; 25A9FE/0E
    ONTICK      $25AAA6                     ; 25A9FF/08A6AA25
    ONMOVE      $D867                       ; 25AA03/2367D8
    ADDYPOS     #-8                         ; 25AA06/2DF8FF
    SETPOSE     #$04, WAIT #15              ; 25AA09/5F04
L_25AA0B:
    ADDYPOS     #8                          ; 25AA0B/2D0800
    ONMOVE      $D864                       ; 25AA0E/2364D8
    ONTICK      $25AA47                     ; 25AA11/0847AA25
    ASMCALL     $AB3F                       ; 25AA15/D03FAB
    TABLEJMP    #3                          ; 25AA18/0F03
    .word       L_25A9D9                    ; 25AA1A/D9A9
    .word       L_25A9E1                    ; 25AA1C/E1A9
    .word       L_25A9E9                    ; 25AA1E/E9A9
L_25AA20:
    ASMCALL     $DE4B                       ; 25AA20/D04BDE // Play sound effect
    .byte       $0E                         ; 25AA23/0E
    ONTICK      $25AAA6                     ; 25AA24/08A6AA25
    ONMOVE      $D867                       ; 25AA28/2367D8
    ASMCALL     $8C19                       ; 25AA2B/D0198C // Unknown ASM $228C19
    .byte       $04                         ; 25AA2E/04
    SETPOSE     #$03, WAIT #15              ; 25AA2F/5F03
L_25AA31:
    ONMOVE      $D864                       ; 25AA31/2364D8
    ASMCALL     $8C05                       ; 25AA34/D0058C // Unknown ASM $228C05
    .byte       $04                         ; 25AA37/04
    ONTICK      $25AA47                     ; 25AA38/0847AA25
    ASMCALL     $AB3F                       ; 25AA3C/D03FAB
    TABLEJMP    #3                          ; 25AA3F/0F03
    .word       L_25A9D9                    ; 25AA41/D9A9
    .word       L_25A9E1                    ; 25AA43/E1A9
    .word       L_25A9E9                    ; 25AA45/E9A9

; CODE OR DATA -- $25AA47 .. $25AB6A
incbinRange "../split/prg/bank25.bin", $0A47, $0B6A

Script2E_Noddy:
    SETBANK     #$22                        ; 25AB6A/2822
    ONPOSITION  $D9BB                       ; 25AB6C/21BBD9
    SPRITEMAP   L_308F62                     ; 25AB6F/1A628F30
    ASMCALL     $84A4                       ; 25AB73/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 25AB76/0D0002
L_25AB79:
    ZEROVEL                                 ; 25AB79/38
    ASMCALL     $8851                       ; 25AB7A/D05188 // Face towards Kirby
    ONTICK      $25ABEB                     ; 25AB7D/08EBAB25
    ASMCALL     $AD63                       ; 25AB81/D063AD
    ASMCALL     $8B7F                       ; 25AB84/D07F8B // Unknown ASM $228B7F
    .word       $AB9A                       ; 25AB87/9AAB
L_25AB89:
    ASMCALL     $8829                       ; 25AB89/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $8BE4                       ; 25AB8C/D0E48B // Unknown ASM $228BE4
    .word       $AB9E                       ; 25AB8F/9EAB
L_25AB91:
    INC2POSE                                ; 25AB91/90
    ASMCALL     $8BE4                       ; 25AB92/D0E48B // Unknown ASM $228BE4
    .word       $AB9E                       ; 25AB95/9EAB
L_25AB97:
    A_JMP       L_25AB89                    ; 25AB97/1789AB

; CODE OR DATA -- $25AB9A .. $25ABAE
incbinRange "../split/prg/bank25.bin", $0B9A, $0BAE

L_25ABAE:
    ONTICK      $25AC23                     ; 25ABAE/0823AC25
    ZEROVEL                                 ; 25ABB2/38
    MOV         VAR2,#$E0                   ; 25ABB3/0D02E0
    MOV         VAR3,#$01                   ; 25ABB6/0D0301
    ASMCALL     $8C53                       ; 25ABB9/D0538C // Set pose (respect facing)
    .byte       $04                         ; 25ABBC/04
L_25ABBD:
    ASMCALL     $DED0                       ; 25ABBD/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 25ABC0/09
    .byte       $12                         ; 25ABC1/12
    .byte       $58                         ; 25ABC2/58
    .byte       $00                         ; 25ABC3/00
    .byte       $00                         ; 25ABC4/00
    .byte       $00                         ; 25ABC5/00
    .byte       $00                         ; 25ABC6/00
    .byte       $00                         ; 25ABC7/00
    WAIT        #64                         ; 25ABC8/0640
L_25ABCA:
    A_JMP       L_25ABBD                    ; 25ABCA/17BDAB

; CODE OR DATA -- $25ABCD .. $25AD71
incbinRange "../split/prg/bank25.bin", $0BCD, $0D71

L_25AD71:
    SETBANK     #$22                        ; 25AD71/2822
    ONPOSITION  $D9BB                       ; 25AD73/21BBD9
    SPRITEMAP   L_308F62                     ; 25AD76/1A628F30
    ASMCALL     $E26A                       ; 25AD7A/D06AE2 // Set X velocity (respect facing)
    .word       $0040                       ; 25AD7D/4000
    SETYVEL     #$FF80                      ; 25AD7F/C080FF
    ASMCALL     $8C53                       ; 25AD82/D0538C // Set pose (respect facing)
    .byte       $06                         ; 25AD85/06
    WAIT        #48                         ; 25AD86/0630
L_25AD88:
    END                                     ; 25AD88/00

Script2F_Starman:
    SETBANK     #$22                        ; 25AD89/2822
    SPRITEMAP   L_308FBE                     ; 25AD8B/1ABE8F30
    ASMCALL     $84A4                       ; 25AD8F/D0A484 // Store VAR1 in $0784[self]
    MOV         REG,VAR0                    ; 25AD92/1E00
    TABLEJMP    #2                          ; 25AD94/0F02
    .word       L_25AEE4                    ; 25AD96/E4AE
    .word       L_25AE35                    ; 25AD98/35AE
    MOV         VAR0,#$02                   ; 25AD9A/0D0002
    ONPOSITION  $D9BB                       ; 25AD9D/21BBD9
    MOV         VAR3,#$06                   ; 25ADA0/0D0306
    MOV         VAR5,#$00                   ; 25ADA3/0D0500
    MOV         VAR6,#$06                   ; 25ADA6/0D0606
    ONTICK      $25ADC3                     ; 25ADA9/08C3AD25
    ASMCALL     $8851                       ; 25ADAD/D05188 // Face towards Kirby
    ASMCALL     $8B7F                       ; 25ADB0/D07F8B // Unknown ASM $228B7F
    .word       $ADBF                       ; 25ADB3/BFAD
    ASMCALL     $8C53                       ; 25ADB5/D0538C // Set pose (respect facing)
    .byte       $08                         ; 25ADB8/08
    HALT                                    ; 25ADB9/09

; CODE OR DATA -- $25ADBA .. $25AE35
incbinRange "../split/prg/bank25.bin", $0DBA, $0E35

L_25AE35:
    MOV         VAR0,#$02                   ; 25AE35/0D0002
    MOV         VAR3,#$D8                   ; 25AE38/0D03D8
    MOV         VAR5,#$00                   ; 25AE3B/0D0500
    MOV         VAR6,#$00                   ; 25AE3E/0D0600
    ONPOSITION  $D9BB                       ; 25AE41/21BBD9
L_25AE44:
    ONTICK      $25AE66                     ; 25AE44/0866AE25
    ASMCALL     $8851                       ; 25AE48/D05188 // Face towards Kirby
    ASMCALL     $8CAA                       ; 25AE4B/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0080                       ; 25AE4E/8000
    ASMCALL     $8C53                       ; 25AE50/D0538C // Set pose (respect facing)
    .byte       $02                         ; 25AE53/02
L_25AE54:
    DEC2POSE    WAIT #15                    ; 25AE54/AF
L_25AE55:
    INC2POSE    WAIT #15                    ; 25AE55/9F
L_25AE56:
    A_JMP       L_25AE54                    ; 25AE56/1754AE

L_25AE59:
    SETYVEL     #$FE00                      ; 25AE59/C000FE
L_25AE5C:
    SETXVEL     #$0000                      ; 25AE5C/B00000
    ONTICK      $25AEC0                     ; 25AE5F/08C0AE25
    SETPOSE     #$0C                        ; 25AE63/500C
    HALT                                    ; 25AE65/09

; CODE OR DATA -- $25AE66 .. $25AEE4
incbinRange "../split/prg/bank25.bin", $0E66, $0EE4

L_25AEE4:
    MOV         VAR3,#$00                   ; 25AEE4/0D0300
    MOV         VAR0,#$02                   ; 25AEE7/0D0002
L_25AEEA:
    ONPOSITION  $D9BB                       ; 25AEEA/21BBD9
    ONTICK      $25AFC4                     ; 25AEED/08C4AF25
    ASMCALL     $8851                       ; 25AEF1/D05188 // Face towards Kirby
    ASMCALL     $8B7F                       ; 25AEF4/D07F8B // Unknown ASM $228B7F
    .word       $AF0A                       ; 25AEF7/0AAF
L_25AEF9:
    ASMCALL     $8829                       ; 25AEF9/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $8BE4                       ; 25AEFC/D0E48B // Unknown ASM $228BE4
    .word       $AF0E                       ; 25AEFF/0EAF
L_25AF01:
    INC2POSE                                ; 25AF01/90
    ASMCALL     $8BE4                       ; 25AF02/D0E48B // Unknown ASM $228BE4
    .word       $AF0E                       ; 25AF05/0EAF
L_25AF07:
    A_JMP       L_25AEF9                    ; 25AF07/17F9AE

; CODE OR DATA -- $25AF0A .. $25AF10
incbinRange "../split/prg/bank25.bin", $0F0A, $0F10

L_25AF10:
    ASMCALL     $DE4B                       ; 25AF10/D04BDE // Play sound effect
    .byte       $45                         ; 25AF13/45
    MOV         VAR5,#$00                   ; 25AF14/0D0500
    ONPOSITION  $D97D                       ; 25AF17/217DD9
    ONTICK      $25AFF4                     ; 25AF1A/08F4AF25
    ASMCALL     $8851                       ; 25AF1E/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 25AF21/D0538C // Set pose (respect facing)
    .byte       $06                         ; 25AF24/06
    ASMCALL     $E26A                       ; 25AF25/D06AE2 // Set X velocity (respect facing)
    .word       $0200                       ; 25AF28/0002
    SETYVEL     #$FE00                      ; 25AF2A/C000FE
    HALT                                    ; 25AF2D/09

L_25AF2E:
    MOV         VAR5,#$01                   ; 25AF2E/0D0501
    ONTICK      $25B075                     ; 25AF31/0875B025
    ONPOSITION  $D9BB                       ; 25AF35/21BBD9
    ZEROVEL                                 ; 25AF38/38
    DECPOSE                                 ; 25AF39/80
    ASMCALL     $B183                       ; 25AF3A/D083B1
    HALT                                    ; 25AF3D/09

L_25AF3E:
    ONTICK      $25B0B3                     ; 25AF3E/08B3B025
    ONPOSITION  $D9BB                       ; 25AF42/21BBD9
    SETXVEL     #$0000                      ; 25AF45/B00000
    SETYVEL     #$0200                      ; 25AF48/C00002
    SETPOSE     #$0D                        ; 25AF4B/500D
    HALT                                    ; 25AF4D/09

L_25AF4E:
    ONTICK      $25AFAE                     ; 25AF4E/08AEAF25
    SETYVEL     #$0000                      ; 25AF52/C00000
    MOV         REG,VAR5                    ; 25AF55/1E05
    JEQ         L_25AF6D                    ; 25AF57/0A6DAF
    ASMCALL     $DED0                       ; 25AF5A/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 25AF5D/09
    .byte       $12                         ; 25AF5E/12
    .byte       $0D                         ; 25AF5F/0D
    .byte       $00                         ; 25AF60/00
    .byte       $00                         ; 25AF61/00
    .byte       $00                         ; 25AF62/00
    .byte       $0A                         ; 25AF63/0A
    .byte       $00                         ; 25AF64/00
    ASMCALL_l   $219952                     ; 25AF65/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 25AF69/00
    .byte       $00                         ; 25AF6A/00
    .byte       $0C                         ; 25AF6B/0C
    .byte       $00                         ; 25AF6C/00
L_25AF6D:
    ONTICK      $25B0E1                     ; 25AF6D/08E1B025
    SETPOSE     #$0C                        ; 25AF71/500C
    SETYVEL     #$FE00                      ; 25AF73/C000FE
    HALT                                    ; 25AF76/09

L_25AF77:
    MOV         REG,VAR3                    ; 25AF77/1E03
    JNE         L_25AF89                    ; 25AF79/0B89AF
    ZEROVEL                                 ; 25AF7C/38
    ONTICK      $25AFAE                     ; 25AF7D/08AEAF25
    WAIT        #60                         ; 25AF81/063C
    MOV         VAR3,#$01                   ; 25AF83/0D0301
    A_JMP       L_25AEEA                    ; 25AF86/17EAAE

L_25AF89:
    ONTICK      $25B0C7                     ; 25AF89/08C7B025
    ASMCALL     $8860                       ; 25AF8D/D06088
    SETPOSE     #$0C                        ; 25AF90/500C
    ASMCALL     $9340                       ; 25AF92/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0066                       ; 25AF95/6600
    .word       $0000                       ; 25AF97/0000
    HALT                                    ; 25AF99/09

L_25AF9A:
    ONTICK      $25B0F5                     ; 25AF9A/08F5B025
    ASMCALL     $8C53                       ; 25AF9E/D0538C // Set pose (respect facing)
    .byte       $08                         ; 25AFA1/08
    SETYVEL     #$0180                      ; 25AFA2/C08001
    HALT                                    ; 25AFA5/09

; CODE OR DATA -- $25AFA6 .. $25B1C7
incbinRange "../split/prg/bank25.bin", $0FA6, $11C7

Script1A_Coconut:
    SPRITEMAP   L_328934                     ; 25B1C7/1A348932
    SETPOSE     #$06                        ; 25B1CB/5006
    ONTICK      $25B1DC                     ; 25B1CD/08DCB125
    MOV         REG,#$02                    ; 25B1D1/1B02
    ASMCALL_l   $228470                     ; 25B1D3/26708422
    JNE         L_25B1DB                    ; 25B1D7/0BDBB1
    INCPOSE                                 ; 25B1DA/70
L_25B1DB:
    HALT                                    ; 25B1DB/09

; CODE OR DATA -- $25B1DC .. $25B241
incbinRange "../split/prg/bank25.bin", $11DC, $1241

Script1B_Coner:
    MOV         REG,#$02                    ; 25B241/1B02
    ASMCALL_l   $228470                     ; 25B243/26708422
    SPRITEMAP   L_328934                     ; 25B247/1A348932
    ASMCALL     $B3A9                       ; 25B24B/D0A9B3
    JNE         L_25B278                    ; 25B24E/0B78B2
L_25B251:
    ZEROVEL                                 ; 25B251/38
    ONTICK      $25B292                     ; 25B252/0892B225
L_25B256:
    MOV         VAR2,#$00                   ; 25B256/0D0200
    MOV         VAR5,#$00                   ; 25B259/0D0500
L_25B25C:
    ASMCALL     $B32E                       ; 25B25C/D02EB3
L_25B25F:
    A_JMP       L_25B25C                    ; 25B25F/175CB2

L_25B262:
    ONTICK      $25B2B5                     ; 25B262/08B5B225
L_25B266:
    ASMCALL     $E26A                       ; 25B266/D06AE2 // Set X velocity (respect facing)
    .word       $0040                       ; 25B269/4000
    ASMCALL     $8C53                       ; 25B26B/D0538C // Set pose (respect facing)
    .byte       $04                         ; 25B26E/04
L_25B26F:
    HALT                                    ; 25B26F/09

; CODE OR DATA -- $25B270 .. $25B278
incbinRange "../split/prg/bank25.bin", $1270, $1278

L_25B278:
    ZEROVEL                                 ; 25B278/38
    ONTICK      $25B2D9                     ; 25B279/08D9B225
    A_JMP       L_25B256                    ; 25B27D/1756B2

L_25B280:
    ASMCALL_l   $219952                     ; 25B280/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 25B284/00
    .byte       $00                         ; 25B285/00
    .byte       $05                         ; 25B286/05
    .byte       $00                         ; 25B287/00
L_25B288:
    SETYVEL     #$0040                      ; 25B288/C04000
    ONTICK      $25B2F5                     ; 25B28B/08F5B225
    A_JMP       L_25B266                    ; 25B28F/1766B2

; CODE OR DATA -- $25B292 .. $25B3BD
incbinRange "../split/prg/bank25.bin", $1292, $13BD

Script48_MrFrosty:
    SETBANK     #$22                        ; 25B3BD/2822
    ONPOSITION  $D97D                       ; 25B3BF/217DD9
    SPRITEMAP   L_318BCD                     ; 25B3C2/1ACD8B31
    ASMCALL     $84A4                       ; 25B3C6/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$14                   ; 25B3C9/0D0014
    MOV         VAR5,#$00                   ; 25B3CC/0D0500
    MOV         VAR6,#$00                   ; 25B3CF/0D0600
    ASMCALL     $8851                       ; 25B3D2/D05188 // Face towards Kirby
L_25B3D5:
    ASMCALL     $8BED                       ; 25B3D5/D0ED8B // Unknown ASM $228BED
    .word       $B3F3                       ; 25B3D8/F3B3
L_25B3DA:
    MOV         VAR2,REG                    ; 25B3DA/1D02
    ONDRAW      $DA89                       ; 25B3DC/2089DA
    ONTICK      $25B73F                     ; 25B3DF/083FB725
    ASMCALL     $8851                       ; 25B3E3/D05188 // Face towards Kirby
    ZEROVEL                                 ; 25B3E6/38
    ASMCALL     $8829                       ; 25B3E7/D02988 // Set pose to 0 (respect facing)
    HALT                                    ; 25B3EA/09

L_25B3EB:
    ASMCALL     $8BED                       ; 25B3EB/D0ED8B // Unknown ASM $228BED
    .word       $B3F5                       ; 25B3EE/F5B3
    A_JMP       L_25B3DA                    ; 25B3F0/17DAB3

; CODE OR DATA -- $25B3F3 .. $25B3F7
incbinRange "../split/prg/bank25.bin", $13F3, $13F7

L_25B3F7:
    ONTICK      $25B7B6                     ; 25B3F7/08B6B725
    A_JMP       L_25B435                    ; 25B3FB/1735B4

L_25B3FE:
    MOV         VAR2,#$A0                   ; 25B3FE/0D02A0
    ASMCALL     $8851                       ; 25B401/D05188 // Face towards Kirby
    ADD         VAR1,#-128                  ; 25B404/13010280
    ASMCALL     $8B7F                       ; 25B408/D07F8B // Unknown ASM $228B7F
    .word       $B449                       ; 25B40B/49B4
    ADD         VAR1,#-128                  ; 25B40D/13010280
    ONTICK      $25B822                     ; 25B411/0822B825
    LOOP        #6                          ; 25B415/0106
        ASMCALL     $8C53, WAIT #2              ; 25B417/D2538C // Set pose (respect facing)
        .byte       $04                         ; 25B41A/04
L_25B41B:
        ADDPOSE     #-2, WAIT #1                ; 25B41B/61FE
L_25B41D:
        ADDPOSE     #4, WAIT #2                 ; 25B41D/6204
L_25B41F:
        ADDPOSE     #-4, WAIT #1                ; 25B41F/61FC
L_25B421:
    ENDLOOP                                 ; 25B421/02
    ONTICK      $25B7D1                     ; 25B422/08D1B725
    ASMCALL     $8B7F                       ; 25B426/D07F8B // Unknown ASM $228B7F
    .word       $B44D                       ; 25B429/4DB4
    ASMCALL     $9591                       ; 25B42B/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $02                         ; 25B42E/02
    .byte       $80                         ; 25B42F/80
    .byte       $00                         ; 25B430/00
    .byte       $00                         ; 25B431/00
    .byte       $0A                         ; 25B432/0A
    MOV         VAR3,REG                    ; 25B433/1D03
L_25B435:
    ASMCALL     $8EFB                       ; 25B435/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 25B438/22
    ONDRAW      $DA89                       ; 25B439/2089DA
    ASMCALL     $8C53, WAIT #2              ; 25B43C/D2538C // Set pose (respect facing)
    .byte       $04                         ; 25B43F/04
L_25B440:
    ADDPOSE     #-2, WAIT #1                ; 25B440/61FE
L_25B442:
    ADDPOSE     #4, WAIT #2                 ; 25B442/6204
L_25B444:
    ADDPOSE     #-4, WAIT #1                ; 25B444/61FC
L_25B446:
    A_JMP       L_25B435                    ; 25B446/1735B4

; CODE OR DATA -- $25B449 .. $25B451
incbinRange "../split/prg/bank25.bin", $1449, $1451

L_25B451:
    ZEROVEL                                 ; 25B451/38
    ASMCALL     $859F                       ; 25B452/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 25B455/0C00
    ADD         VAR1,#-128                  ; 25B457/13010280
    ASMCALL     $E26A                       ; 25B45B/D06AE2 // Set X velocity (respect facing)
    .word       $00C0                       ; 25B45E/C000
    SETYVEL     #$FD00                      ; 25B460/C000FD
    ADD         VAR1,#-128                  ; 25B463/13010280
    ONTICK      $25B839                     ; 25B467/0839B825
    ASMCALL     $8C53                       ; 25B46B/D0538C // Set pose (respect facing)
    .byte       $02                         ; 25B46E/02
    HALT                                    ; 25B46F/09

; CODE OR DATA -- $25B470 .. $25B485
incbinRange "../split/prg/bank25.bin", $1470, $1485

L_25B485:
    ASMCALL     $DED0                       ; 25B485/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 25B488/09
    .byte       $12                         ; 25B489/12
    .byte       $08                         ; 25B48A/08
    .byte       $00                         ; 25B48B/00
    .byte       $08                         ; 25B48C/08
    .byte       $00                         ; 25B48D/00
    .byte       $01                         ; 25B48E/01
    .byte       $00                         ; 25B48F/00
    ASMCALL     $9591                       ; 25B490/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 25B493/01
    .byte       $00                         ; 25B494/00
    .byte       $08                         ; 25B495/08
    .byte       $F8                         ; 25B496/F8
    .byte       $0A                         ; 25B497/0A
    ONTICK      $25B85B                     ; 25B498/085BB825
    ZEROVEL                                 ; 25B49C/38
    MOV         VAR2,#$20                   ; 25B49D/0D0220
    ASMCALL     $8CAA                       ; 25B4A0/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF80                       ; 25B4A3/80FF
    SETYVEL     #$FF00                      ; 25B4A5/C000FF
    ASMCALL     $859F                       ; 25B4A8/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 25B4AB/0C00
    HALT                                    ; 25B4AD/09

L_25B4AE:
    MOV         VAR2,#$1E                   ; 25B4AE/0D021E
    ONTICK      $25B899                     ; 25B4B1/0899B825
    A_JMP       L_25B646                    ; 25B4B5/1746B6

L_25B4B8:
    ASMCALL     $B4C9                       ; 25B4B8/D0C9B4
    ONTICK      $25B8BF                     ; 25B4BB/08BFB825
    ASMCALL     $8851                       ; 25B4BF/D05188 // Face towards Kirby
    ZEROVEL                                 ; 25B4C2/38
    SETYVEL     #$FB00                      ; 25B4C3/C000FB
    A_JMP       L_25B435                    ; 25B4C6/1735B4

; CODE OR DATA -- $25B4C9 .. $25B4DA
incbinRange "../split/prg/bank25.bin", $14C9, $14DA

L_25B4DA:
    ONDRAW      $DA89                       ; 25B4DA/2089DA
    ONTICK      $25B64F                     ; 25B4DD/084FB625
    ASMCALL     $8851                       ; 25B4E1/D05188 // Face towards Kirby
    ASMCALL     $8BED                       ; 25B4E4/D0ED8B // Unknown ASM $228BED
    .word       $B516                       ; 25B4E7/16B5
    LOOP        REG                         ; 25B4E9/22
        SETPOSE     #$12, WAIT #6               ; 25B4EA/5612
L_25B4EC:
        INCPOSE     WAIT #2                     ; 25B4EC/72
L_25B4ED:
        INCPOSE     WAIT #6                     ; 25B4ED/76
L_25B4EE:
        DECPOSE     WAIT #2                     ; 25B4EE/82
L_25B4EF:
    ENDLOOP                                 ; 25B4EF/02
    ONDRAW      $DA89                       ; 25B4F0/2089DA
    ASMCALL     $8EFB                       ; 25B4F3/D0FB8E // Unknown ASM $228EFB
    .byte       $4E                         ; 25B4F6/4E
    ASMCALL     $DED0, WAIT #1              ; 25B4F7/D1D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 25B4FA/09
    .byte       $12                         ; 25B4FB/12
    .byte       $5E                         ; 25B4FC/5E
    .byte       $00                         ; 25B4FD/00
    .byte       $F8                         ; 25B4FE/F8
    .byte       $00                         ; 25B4FF/00
    .byte       $00                         ; 25B500/00
    .byte       $00                         ; 25B501/00
L_25B502:
    MOV         VAR3,REG                    ; 25B502/1D03
    ASMCALL     $8F32                       ; 25B504/D0328F
    JML         $D00305                     ; 25B507/030503D0

; CODE OR DATA -- $25B50B .. $25B531
incbinRange "../split/prg/bank25.bin", $150B, $1531

L_25B531:
    ADDPOSE     #-2                         ; 25B531/60FE
    HALT                                    ; 25B533/09

; CODE OR DATA -- $25B534 .. $25B54F
incbinRange "../split/prg/bank25.bin", $1534, $154F

L_25B54F:
    SETPOSE     #$08, WAIT #4               ; 25B54F/5408
L_25B551:
    INCPOSE     WAIT #4                     ; 25B551/74
L_25B552:
    SETPOSE     #$03, WAIT #4               ; 25B552/5403
L_25B554:
    DECPOSE     WAIT #4                     ; 25B554/84
L_25B555:
    A_JMP       L_25B54F                    ; 25B555/174FB5

L_25B558:
    SETPOSE     #$02, WAIT #4               ; 25B558/5402
L_25B55A:
    INCPOSE     WAIT #4                     ; 25B55A/74
L_25B55B:
    SETPOSE     #$09, WAIT #4               ; 25B55B/5409
L_25B55D:
    DECPOSE     WAIT #4                     ; 25B55D/84
L_25B55E:
    A_JMP       L_25B558                    ; 25B55E/1758B5

; CODE OR DATA -- $25B561 .. $25B573
incbinRange "../split/prg/bank25.bin", $1561, $1573

L_25B573:
    ONDRAW      $DA89                       ; 25B573/2089DA
    ZEROVEL                                 ; 25B576/38
    ASMCALL     $BA83                       ; 25B577/D083BA
    JML         $D00A0A                     ; 25B57A/030A0AD0

; CODE OR DATA -- $25B57E .. $25B59C
incbinRange "../split/prg/bank25.bin", $157E, $159C

L_25B59C:
    ASMCALL     $E26A                       ; 25B59C/D06AE2 // Set X velocity (respect facing)
    .word       $0300                       ; 25B59F/0003
    ADDPOSE     #-2, WAIT #4                ; 25B5A1/64FE
L_25B5A3:
    ZEROVEL                                 ; 25B5A3/38
    ADDPOSE     #2                          ; 25B5A4/6002
    WAIT        #12                         ; 25B5A6/060C
L_25B5A8:
    A_JMP       L_25B3D5                    ; 25B5A8/17D5B3

; CODE OR DATA -- $25B5AB .. $25B5E5
incbinRange "../split/prg/bank25.bin", $15AB, $15E5

L_25B5E5:
    ASMCALL     $E6E8                       ; 25B5E5/D0E8E6
    ASMCALL     $8FC6                       ; 25B5E8/D0C68F // Unknown ASM $228FC6
    .byte       $0D                         ; 25B5EB/0D
    ASMCALL     $859F                       ; 25B5EC/D09F85 // Unknown ASM $22859F
    .word       $0018                       ; 25B5EF/1800
    ASMCALL     $8EFB                       ; 25B5F1/D0FB8E // Unknown ASM $228EFB
    .byte       $40                         ; 25B5F4/40
    ONDRAW      $DA89                       ; 25B5F5/2089DA
    MOV         VAR0,#$00                   ; 25B5F8/0D0000
    ONTICK      $25B96A                     ; 25B5FB/086AB925
    ASMCALL     $8851                       ; 25B5FF/D05188 // Face towards Kirby
    ASMCALL     $8CAA                       ; 25B602/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF00                       ; 25B605/00FF
    SETYVEL     #$FD00                      ; 25B607/C000FD
    ASMCALL     $8C53                       ; 25B60A/D0538C // Set pose (respect facing)
    .byte       $02                         ; 25B60D/02
    HALT                                    ; 25B60E/09

L_25B60F:
    ASMCALL     $DED0                       ; 25B60F/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 25B612/09
    .byte       $12                         ; 25B613/12
    .byte       $08                         ; 25B614/08
    .byte       $00                         ; 25B615/00
    .byte       $08                         ; 25B616/08
    .byte       $00                         ; 25B617/00
    .byte       $01                         ; 25B618/01
    .byte       $00                         ; 25B619/00
    ASMCALL     $9591                       ; 25B61A/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 25B61D/01
    .byte       $00                         ; 25B61E/00
    .byte       $08                         ; 25B61F/08
    .byte       $F8                         ; 25B620/F8
    .byte       $0A                         ; 25B621/0A
    ONTICK      $25B98F                     ; 25B622/088FB925
    MOV         VAR2,#$20                   ; 25B626/0D0220
    ZEROVEL                                 ; 25B629/38
    ASMCALL     $8CAA                       ; 25B62A/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF80                       ; 25B62D/80FF
    SETYVEL     #$FF00                      ; 25B62F/C000FF
    ASMCALL     $8C53                       ; 25B632/D0538C // Set pose (respect facing)
    .byte       $02                         ; 25B635/02
    ASMCALL     $859F                       ; 25B636/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 25B639/0C00
    HALT                                    ; 25B63B/09

L_25B63C:
    ONTICK      $25B653                     ; 25B63C/0853B625
    WAIT        #210                        ; 25B640/06D2
    ONTICK      $25B9CD                     ; 25B642/08CDB925
L_25B646:
    ZEROVEL                                 ; 25B646/38
    MOV         VAR2,#$1E                   ; 25B647/0D021E
    ASMCALL     $8C53                       ; 25B64A/D0538C // Set pose (respect facing)
    .byte       $02                         ; 25B64D/02
    HALT                                    ; 25B64E/09

; CODE OR DATA -- $25B64F .. $25BB43
incbinRange "../split/prg/bank25.bin", $164F, $1B43

L_25BB43:
    SETBANK     #$22                        ; 25BB43/2822
    ONPOSITION  $D97D                       ; 25BB45/217DD9
    SPRITEMAP   L_318BCD                     ; 25BB48/1ACD8B31
    SETPOSE     #$15                        ; 25BB4C/5015
    ONTICK      $25BBAD                     ; 25BB4E/08ADBB25
    SETYVEL     #$FC00                      ; 25BB52/C000FC
    WAIT        #8                          ; 25BB55/0608
L_25BB57:
    SETYVEL     #$FE00                      ; 25BB57/C000FE
    WAIT        #8                          ; 25BB5A/0608
L_25BB5C:
    SETYVEL     #$FF00                      ; 25BB5C/C000FF
    WAIT        #8                          ; 25BB5F/0608
L_25BB61:
    SETYVEL     #$0100                      ; 25BB61/C00001
    WAIT        #8                          ; 25BB64/0608
L_25BB66:
    SETYVEL     #$0200                      ; 25BB66/C00002
    WAIT        #8                          ; 25BB69/0608
L_25BB6B:
    SETYVEL     #$0400                      ; 25BB6B/C00004
    WAIT        #8                          ; 25BB6E/0608
L_25BB70:
    ONTICK      $25BBB5                     ; 25BB70/08B5BB25
    HALT                                    ; 25BB74/09

L_25BB75:
    ASMCALL     $8EFB                       ; 25BB75/D0FB8E // Unknown ASM $228EFB
    .byte       $4E                         ; 25BB78/4E
    ONTICK      $25BBED                     ; 25BB79/08EDBB25
    ASMCALL     $E26A                       ; 25BB7D/D06AE2 // Set X velocity (respect facing)
    .word       $02A0                       ; 25BB80/A002
    SETYVEL     #$FE80, WAIT #4             ; 25BB82/C480FE
L_25BB85:
    ASMCALL     $DED0                       ; 25BB85/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 25BB88/09
    .byte       $12                         ; 25BB89/12
    .byte       $08                         ; 25BB8A/08
    .byte       $00                         ; 25BB8B/00
    .byte       $00                         ; 25BB8C/00
    .byte       $00                         ; 25BB8D/00
    .byte       $01                         ; 25BB8E/01
    .byte       $00                         ; 25BB8F/00
    HALT                                    ; 25BB90/09

; CODE OR DATA -- $25BB91 .. $25BC53
incbinRange "../split/prg/bank25.bin", $1B91, $1C53

Script0A_MuseumDisplay:
    SETBANK     #$22                        ; 25BC53/2822
    ONPOSITION  $D97D                       ; 25BC55/217DD9
    ONTICK      $25BD6A                     ; 25BC58/086ABD25
    ASMCALL     $8851                       ; 25BC5C/D05188 // Face towards Kirby
    ADDXPOS     #8                          ; 25BC5F/2C0800
    MOV         REG,VAR0                    ; 25BC62/1E00
    MOV         VAR2,REG                    ; 25BC64/1D02
    MOV         VAR0,#$01                   ; 25BC66/0D0001
    MOV         REG,VAR2                    ; 25BC69/1E02
    TABLEJMP    #16                         ; 25BC6B/0F10
    .word       SCR0A_Museum00              ; 25BC6D/8DBC
    .word       SCR0A_MuseumLaser           ; 25BC6F/9ABC
    .word       SCR0A_MuseumFire            ; 25BC71/A5BC
    .word       SCR0A_Museum03              ; 25BC73/B0BC
    .word       SCR0A_MuseumSword           ; 25BC75/C1BC
    .word       SCR0A_Museum05              ; 25BC77/D0BC
    .word       SCR0A_Museum06              ; 25BC79/DDBC
    .word       SCR0A_MuseumHiJump          ; 25BC7B/E8BC
    .word       SCR0A_Museum08              ; 25BC7D/05BD
    .word       SCR0A_MuseumTornado         ; 25BC7F/10BD
    .word       SCR0A_MuseumWheel           ; 25BC81/1CBD
    .word       SCR0A_Museum0B              ; 25BC83/27BD
    .word       SCR0A_MuseumStone           ; 25BC85/32BD
    .word       SCR0A_Museum0D              ; 25BC87/42BD
    .word       SCR0A_Museum0E              ; 25BC89/4DBD
    .word       SCR0A_Museum0F              ; 25BC8B/5CBD
SCR0A_Museum00:
    SPRITEMAP   L_3080D5                     ; 25BC8D/1AD58030
L_25BC91:
    ASMCALL     $8829, WAIT #15             ; 25BC91/DF2988 // Set pose to 0 (respect facing)
    INC2POSE    WAIT #8                     ; 25BC94/98
    INC2POSE    WAIT #15                    ; 25BC95/9F
    DEC2POSE    WAIT #8                     ; 25BC96/A8
    A_JMP       L_25BC91                    ; 25BC97/1791BC

SCR0A_MuseumLaser:
    SPRITEMAP   L_308310                     ; 25BC9A/1A108330
L_25BC9E:
    ASMCALL     $8829, WAIT #4              ; 25BC9E/D42988 // Set pose to 0 (respect facing)
L_25BCA1:
    INC2POSE    WAIT #4                     ; 25BCA1/94
L_25BCA2:
    A_JMP       L_25BC9E                    ; 25BCA2/179EBC

SCR0A_MuseumFire:
    SPRITEMAP   L_30850C                     ; 25BCA5/1A0C8530
L_25BCA9:
    ASMCALL     $8829, WAIT #12             ; 25BCA9/DC2988 // Set pose to 0 (respect facing)
L_25BCAC:
    INC2POSE    WAIT #12                    ; 25BCAC/9C
L_25BCAD:
    A_JMP       L_25BCA9                    ; 25BCAD/17A9BC

SCR0A_Museum03:
    SPRITEMAP   L_3083D5                     ; 25BCB0/1AD58330
L_25BCB4:
    LOOP        #2                          ; 25BCB4/0102
        SETPOSE     #$00, WAIT #12              ; 25BCB6/5C00
        INCPOSE     WAIT #12                    ; 25BCB8/7C
    ENDLOOP                                 ; 25BCB9/02
    INCPOSE     WAIT #10                    ; 25BCBA/7A
    INCPOSE     WAIT #10                    ; 25BCBB/7A
    SETPOSE     #$00, WAIT #10              ; 25BCBC/5A00
    A_JMP       L_25BCB4                    ; 25BCBE/17B4BC

SCR0A_MuseumSword:
    SPRITEMAP   L_308D6D                     ; 25BCC1/1A6D8D30
L_25BCC5:
    ASMCALL     $8829, WAIT #10             ; 25BCC5/DA2988 // Set pose to 0 (respect facing)
L_25BCC8:
    INC2POSE    WAIT #8                     ; 25BCC8/98
L_25BCC9:
    INC2POSE    WAIT #8                     ; 25BCC9/98
L_25BCCA:
    INC2POSE    WAIT #10                    ; 25BCCA/9A
L_25BCCB:
    DEC2POSE    WAIT #8                     ; 25BCCB/A8
L_25BCCC:
    DEC2POSE    WAIT #8                     ; 25BCCC/A8
L_25BCCD:
    A_JMP       L_25BCC5                    ; 25BCCD/17C5BC

SCR0A_Museum05:
    SPRITEMAP   L_308F2F                     ; 25BCD0/1A2F8F30
L_25BCD4:
    SETPOSE     #$04, WAIT #6               ; 25BCD4/5604
L_25BCD6:
    SETPOSE     #$00                        ; 25BCD6/5000
    WAIT        #32                         ; 25BCD8/0620
L_25BCDA:
    A_JMP       L_25BCD4                    ; 25BCDA/17D4BC

SCR0A_Museum06:
    SPRITEMAP   L_308F62                     ; 25BCDD/1A628F30
L_25BCE1:
    ASMCALL     $8829, WAIT #8              ; 25BCE1/D82988 // Set pose to 0 (respect facing)
L_25BCE4:
    INC2POSE    WAIT #12                    ; 25BCE4/9C
L_25BCE5:
    A_JMP       L_25BCE1                    ; 25BCE5/17E1BC

SCR0A_MuseumHiJump:
    SPRITEMAP   L_308FBE                     ; 25BCE8/1ABE8F30
L_25BCEC:
    LOOP        #2                          ; 25BCEC/0102
        ASMCALL     $8829, WAIT #12             ; 25BCEE/DC2988 // Set pose to 0 (respect facing)
L_25BCF1:
        INC2POSE    WAIT #12                    ; 25BCF1/9C
L_25BCF2:
    ENDLOOP                                 ; 25BCF2/02
    LOOP        #2                          ; 25BCF3/0102
        ASMCALL     $8C53, WAIT #15             ; 25BCF5/DF538C // Set pose (respect facing)
        .byte       $06                         ; 25BCF8/06
L_25BCF9:
        SETPOSE     #$0C, WAIT #4               ; 25BCF9/540C
L_25BCFB:
        ASMCALL     $8C53, WAIT #15             ; 25BCFB/DF538C // Set pose (respect facing)
        .byte       $07                         ; 25BCFE/07
L_25BCFF:
        SETPOSE     #$0C, WAIT #4               ; 25BCFF/540C
L_25BD01:
    ENDLOOP                                 ; 25BD01/02
    A_JMP       L_25BCEC                    ; 25BD02/17ECBC

SCR0A_Museum08:
    SPRITEMAP   L_309BCC                     ; 25BD05/1ACC9B30
L_25BD09:
    ASMCALL     $8829, WAIT #15             ; 25BD09/DF2988 // Set pose to 0 (respect facing)
    INC2POSE    WAIT #8                     ; 25BD0C/98
    A_JMP       L_25BD09                    ; 25BD0D/1709BD

SCR0A_MuseumTornado:
    SPRITEMAP   L_3284CE                     ; 25BD10/1ACE8432
L_25BD14:
    SETPOSE     #$00, WAIT #8               ; 25BD14/5800
L_25BD16:
    INCPOSE     WAIT #8                     ; 25BD16/78
L_25BD17:
    INCPOSE     WAIT #8                     ; 25BD17/78
L_25BD18:
    INCPOSE     WAIT #8                     ; 25BD18/78
L_25BD19:
    A_JMP       L_25BD14                    ; 25BD19/1714BD

SCR0A_MuseumWheel:
    SPRITEMAP   L_309AA9                     ; 25BD1C/1AA99A30
L_25BD20:
    ASMCALL     $8829, WAIT #2              ; 25BD20/D22988 // Set pose to 0 (respect facing)
L_25BD23:
    INC2POSE    WAIT #2                     ; 25BD23/92
L_25BD24:
    A_JMP       L_25BD20                    ; 25BD24/1720BD

SCR0A_Museum0B:
    SPRITEMAP   L_309108                     ; 25BD27/1A089130
L_25BD2B:
    ASMCALL     $8829, WAIT #12             ; 25BD2B/DC2988 // Set pose to 0 (respect facing)
    INC2POSE    WAIT #12                    ; 25BD2E/9C
    A_JMP       L_25BD2B                    ; 25BD2F/172BBD

SCR0A_MuseumStone:
    SPRITEMAP   L_328526                     ; 25BD32/1A268532
L_25BD36:
    ASMCALL     $8C53                       ; 25BD36/D0538C // Set pose (respect facing)
    .byte       $04                         ; 25BD39/04
    WAIT        #32                         ; 25BD3A/0620
L_25BD3C:
    INC2POSE                                ; 25BD3C/90
    WAIT        #32                         ; 25BD3D/0620
L_25BD3F:
    A_JMP       L_25BD36                    ; 25BD3F/1736BD

SCR0A_Museum0D:
    SPRITEMAP   L_3287AB                     ; 25BD42/1AAB8732
L_25BD46:
    ASMCALL     $8829, WAIT #12             ; 25BD46/DC2988 // Set pose to 0 (respect facing)
    INC2POSE    WAIT #12                    ; 25BD49/9C
    A_JMP       L_25BD46                    ; 25BD4A/1746BD

SCR0A_Museum0E:
    SPRITEMAP   L_3285E6                     ; 25BD4D/1AE68532
L_25BD51:
    ASMCALL     $8829                       ; 25BD51/D02988 // Set pose to 0 (respect facing)
    WAIT        #48                         ; 25BD54/0630
    ADDPOSE     #4, WAIT #8                 ; 25BD56/6804
    INC2POSE    WAIT #12                    ; 25BD58/9C
    A_JMP       L_25BD51                    ; 25BD59/1751BD

SCR0A_Museum0F:
    SPRITEMAP   L_3286D9                     ; 25BD5C/1AD98632
L_25BD60:
    SETPOSE     #$02, WAIT #3               ; 25BD60/5302
    INCPOSE     WAIT #15                    ; 25BD62/7F
    DECPOSE     WAIT #3                     ; 25BD63/83
    DECPOSE     WAIT #3                     ; 25BD64/83
    DECPOSE     WAIT #15                    ; 25BD65/8F
    INCPOSE     WAIT #3                     ; 25BD66/73
    A_JMP       L_25BD60                    ; 25BD67/1760BD

; CODE OR DATA -- $25BD6A .. $26A000
incbinRange "../split/prg/bank25.bin", $1D6A, $2000