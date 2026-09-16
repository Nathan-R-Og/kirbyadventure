.segment "PRG29": absolute
Script4A_Bugzzy:
    SETBANK     #$22                        ; 29A000/2822
    MOV         REG,VAR0                    ; 29A002/1E00
    JNE         L_29A664                    ; 29A004/0B64A6
    MOV         VAR0,#$1E                   ; 29A007/0D001E
    SPRITEMAP   $33838A                     ; 29A00A/1A8A8333
    A_JSR       L_29AF71                    ; 29A00E/1871AF
    A_JMP       L_29A156                    ; 29A011/1756A1

L_29A014:
    ONDRAW      $DA89                       ; 29A014/2089DA
    ONTICK      $29A4BA                     ; 29A017/08BAA429
    ASMCALL     $A2E6                       ; 29A01B/D0E6A2
    LOOP        REG                         ; 29A01E/22
        ASMCALL     $8851                       ; 29A01F/D05188 // Face towards Kirby
        ASMCALL     $8829                       ; 29A022/D02988 // Set pose to 0 (respect facing)
        ZEROVEL                                 ; 29A025/38
        WAIT        #10                         ; 29A026/060A
L_29A028:
        ASMCALL     $AE8E                       ; 29A028/D08EAE
        TABLEJMP    #3                          ; 29A02B/0F03
        .word       L_29A033                    ; 29A02D/33A0
        .word       L_29A038                    ; 29A02F/38A0
        .word       L_29A040                    ; 29A031/40A0
L_29A033:
        WAIT        #20                         ; 29A033/0614
L_29A035:
        A_JMP       L_29A048                    ; 29A035/1748A0

L_29A038:
        ASMCALL     $8B7F                       ; 29A038/D07F8B // Unknown ASM $228B7F
        .word       $A059                       ; 29A03B/59A0
        A_JMP       L_29A045                    ; 29A03D/1745A0

L_29A040:
        ASMCALL     $8B7F                       ; 29A040/D07F8B // Unknown ASM $228B7F
        .word       $A05D                       ; 29A043/5DA0
L_29A045:
        ADDPOSE     #0, WAIT #10                ; 29A045/6A00
L_29A047:
        INC2POSE    WAIT #10                    ; 29A047/9A
L_29A048:
    ENDLOOP                                 ; 29A048/02
    ZEROVEL                                 ; 29A049/38
    ASMCALL     $A3B8                       ; 29A04A/D0B8A3
    TABLEJMP    #5                          ; 29A04D/0F05
    .word       L_29A07C                    ; 29A04F/7CA0
    .word       L_29A0E3                    ; 29A051/E3A0
    .word       L_29A140                    ; 29A053/40A1
    .word       L_29A175                    ; 29A055/75A1
    .word       L_29A061                    ; 29A057/61A0
    END                                     ; 29A059/00

; CODE OR DATA -- $29A05A .. $29A061
incbinRange "../split/prg/bank29.bin", $005A, $0061

L_29A061:
    ASMCALL     $8851                       ; 29A061/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 29A064/D0538C // Set pose (respect facing)
    .byte       $08                         ; 29A067/08
    ZEROVEL                                 ; 29A068/38
    WAIT        #30                         ; 29A069/061E
L_29A06B:
    ASMCALL     $8C71                       ; 29A06B/D0718C // Unknown ASM $228C71
    .byte       $4A                         ; 29A06E/4A
    .byte       $01                         ; 29A06F/01
    .byte       $00                         ; 29A070/00
    WAIT        #24                         ; 29A071/0618
L_29A073:
    ASMCALL     $8C71, WAIT #12             ; 29A073/DC718C // Unknown ASM $228C71
    .byte       $4A                         ; 29A076/4A
    .byte       $02                         ; 29A077/02
    .byte       $00                         ; 29A078/00
L_29A079:
    A_JMP       L_29A014                    ; 29A079/1714A0

L_29A07C:
    ONTICK      $29A516                     ; 29A07C/0816A529
    ASMCALL     $8851                       ; 29A080/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 29A083/D0538C // Set pose (respect facing)
    .byte       $10                         ; 29A086/10
    ZEROVEL                                 ; 29A087/38
    ASMCALL     $8BE4                       ; 29A088/D0E48B // Unknown ASM $228BE4
    .word       $A0A2                       ; 29A08B/A2A0
L_29A08D:
    ASMCALL     $8EFB                       ; 29A08D/D0FB8E // Unknown ASM $228EFB
    .byte       $36                         ; 29A090/36
    ASMCALL     $8B7F                       ; 29A091/D07F8B // Unknown ASM $228B7F
    .word       $A0A4                       ; 29A094/A4A0
    INC2POSE                                ; 29A096/90
    WAIT        #42                         ; 29A097/062A
L_29A099:
    ASMCALL     $A41A, WAIT #1              ; 29A099/D11AA4
L_29A09C:
    JNE         L_29A099                    ; 29A09C/0B99A0
    A_JMP       L_29A156                    ; 29A09F/1756A1

; CODE OR DATA -- $29A0A2 .. $29A0A8
incbinRange "../split/prg/bank29.bin", $00A2, $00A8

L_29A0A8:
    ASMCALL     $859F                       ; 29A0A8/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 29A0AB/0C00
    ASMCALL     $9340                       ; 29A0AD/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF00                       ; 29A0B0/00FF
    .word       $FD00                       ; 29A0B2/00FD
    ONTICK      $29A4EF                     ; 29A0B4/08EFA429
    ASMCALL     $8C53, WAIT #8              ; 29A0B8/D8538C // Set pose (respect facing)
    .byte       $0C                         ; 29A0BB/0C
L_29A0BC:
    INC2POSE                                ; 29A0BC/90
    A_JSR       L_29AE6B                    ; 29A0BD/186BAE
    ASMCALL     $859F                       ; 29A0C0/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 29A0C3/0C00
    ASMCALL     $9591                       ; 29A0C5/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 29A0C8/01
    .byte       $00                         ; 29A0C9/00
    .byte       $08                         ; 29A0CA/08
    .byte       $FC                         ; 29A0CB/FC
    .byte       $0A                         ; 29A0CC/0A
    ASMCALL     $9340                       ; 29A0CD/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF80                       ; 29A0D0/80FF
    .word       $0000                       ; 29A0D2/0000
    WAIT        #30                         ; 29A0D4/061E
L_29A0D6:
    ZEROVEL                                 ; 29A0D6/38
    LOOP        #7                          ; 29A0D7/0107
        SETYVEL     #$FF00, WAIT #2             ; 29A0D9/C200FF
L_29A0DC:
        SETYVEL     #$0100, WAIT #2             ; 29A0DC/C20001
L_29A0DF:
    ENDLOOP                                 ; 29A0DF/02
    A_JMP       L_29A26B                    ; 29A0E0/176BA2

L_29A0E3:
    ONTICK      $29A4BA                     ; 29A0E3/08BAA429
    ZEROVEL                                 ; 29A0E7/38
    ASMCALL     $8BC0                       ; 29A0E8/D0C08B // Unknown ASM $228BC0
    .word       $A127                       ; 29A0EB/27A1
L_29A0ED:
    ASMCALL     $8851                       ; 29A0ED/D05188 // Face towards Kirby
    ASMCALL     $8EFB                       ; 29A0F0/D0FB8E // Unknown ASM $228EFB
    .byte       $33                         ; 29A0F3/33
    ASMCALL     $8C53, WAIT #2              ; 29A0F4/D2538C // Set pose (respect facing)
    .byte       $04                         ; 29A0F7/04
L_29A0F8:
    ASMCALL     $8EFB                       ; 29A0F8/D0FB8E // Unknown ASM $228EFB
    .byte       $33                         ; 29A0FB/33
    INC2POSE    WAIT #2                     ; 29A0FC/92
L_29A0FD:
    ASMCALL     $AF29                       ; 29A0FD/D029AF
    JNE         L_29A0ED                    ; 29A100/0BEDA0
    ZEROVEL                                 ; 29A103/38
    ONTICK      $29A4CA                     ; 29A104/08CAA429
    ASMCALL     $927C                       ; 29A108/D07C92 // Get $0784[self]
    JNE         L_29A11C                    ; 29A10B/0B1CA1
    ASMCALL     $A44C                       ; 29A10E/D04CA4
    LOOP        REG                         ; 29A111/22
        ASMCALL     $8851                       ; 29A112/D05188 // Face towards Kirby
        ASMCALL     $8C53, WAIT #2              ; 29A115/D2538C // Set pose (respect facing)
        .byte       $04                         ; 29A118/04
L_29A119:
        ADDPOSE     #2, WAIT #2                 ; 29A119/6202
L_29A11B:
    ENDLOOP                                 ; 29A11B/02
L_29A11C:
    ASMCALL     $A459                       ; 29A11C/D059A4
    TABLEJMP    #3                          ; 29A11F/0F03
    .word       L_29A156                    ; 29A121/56A1
    .word       L_29A07C                    ; 29A123/7CA0
    .word       L_29A12B                    ; 29A125/2BA1
    .byte $C0, $FC, $40, $FC
L_29A12B:
    ONTICK      $29A4CA                     ; 29A12B/08CAA429
    ASMCALL     $A47C                       ; 29A12F/D07CA4
    ADDPOSE     #4                          ; 29A132/6004
    LOOP        #30                         ; 29A134/011E
        ASMCALL     $8EFB                       ; 29A136/D0FB8E // Unknown ASM $228EFB
        .byte       $33                         ; 29A139/33
        INC2POSE    WAIT #2                     ; 29A13A/92
L_29A13B:
        DEC2POSE    WAIT #2                     ; 29A13B/A2
L_29A13C:
    ENDLOOP                                 ; 29A13C/02
    A_JMP       L_29A156                    ; 29A13D/1756A1

L_29A140:
    ASMCALL     $8851                       ; 29A140/D05188 // Face towards Kirby
    ASMCALL     $8B7F                       ; 29A143/D07F8B // Unknown ASM $228B7F
    .word       $A152                       ; 29A146/52A1
    SETYVEL     #$FC00                      ; 29A148/C000FC
    ASMCALL     $8EFB                       ; 29A14B/D0FB8E // Unknown ASM $228EFB
    .byte       $17                         ; 29A14E/17
    A_JMP       L_29A156                    ; 29A14F/1756A1

; CODE OR DATA -- $29A152 .. $29A156
incbinRange "../split/prg/bank29.bin", $0152, $0156

L_29A156:
    ASMCALL     $8C53                       ; 29A156/D0538C // Set pose (respect facing)
    .byte       $04                         ; 29A159/04
    ONTICK      $29A4EC                     ; 29A15A/08ECA429
    A_JSR       L_29AE6B                    ; 29A15E/186BAE
    ASMCALL     $8EFB                       ; 29A161/D0FB8E // Unknown ASM $228EFB
    .byte       $05                         ; 29A164/05
    ZEROVEL                                 ; 29A165/38
    ONTICK      $29A4BA                     ; 29A166/08BAA429
    ASMCALL     $8EFB                       ; 29A16A/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 29A16D/22
    ASMCALL     $8C53, WAIT #8              ; 29A16E/D8538C // Set pose (respect facing)
    .byte       $08                         ; 29A171/08
L_29A172:
    A_JMP       L_29A014                    ; 29A172/1714A0

L_29A175:
    ASMCALL     $8851                       ; 29A175/D05188 // Face towards Kirby
    ASMCALL     $AF33                       ; 29A178/D033AF
    ONTICK      $29A4DA                     ; 29A17B/08DAA429
    LOOP        REG                         ; 29A17F/22
        ASMCALL     $8C53                       ; 29A180/D0538C // Set pose (respect facing)
        .byte       $04                         ; 29A183/04
        SETYVEL     #$FB00                      ; 29A184/C000FB
        WAIT        #30                         ; 29A187/061E
L_29A189:
        ASMCALL     $8C53, WAIT #4              ; 29A189/D4538C // Set pose (respect facing)
        .byte       $08                         ; 29A18C/08
L_29A18D:
        ASMCALL     $859F, WAIT #2              ; 29A18D/D29F85 // Unknown ASM $22859F
        .word       $0015                       ; 29A190/1500
L_29A192:
    ENDLOOP                                 ; 29A192/02
    ASMCALL     $DFA3                       ; 29A193/D0A3DF // SUB reg, #arg2, arg1
    .word       $05E1                       ; 29A196/E105
    .byte       $0D                         ; 29A198/0D
    JEQ         L_29A0E3                    ; 29A199/0AE3A0
    A_JMP       L_29A07C                    ; 29A19C/177CA0

L_29A19F:
    ASMCALL     $E2F1, WAIT #1              ; 29A19F/D1F1E2 // Unknown ASM $E2F1
    _is_faraddr $29A589                     ; 29A1A2/89A529
L_29A1A5:
    ASMCALL     $AEB9                       ; 29A1A5/D0B9AE // UNK
    .byte       $14                         ; 29A1A8/14
    .byte       $18                         ; 29A1A9/18
    ASMCALL     $8EFB                       ; 29A1AA/D0FB8E // Unknown ASM $228EFB
    .byte       $0F                         ; 29A1AD/0F
    ONTICK      $29B012                     ; 29A1AE/0812B029
L_29A1B2:
    ASMCALL     $A41A, WAIT #1              ; 29A1B2/D11AA4
L_29A1B5:
    MOV         REG,VAR3                    ; 29A1B5/1E03
    JEQ         L_29A1B2                    ; 29A1B7/0AB2A1
    ZEROVEL                                 ; 29A1BA/38
    ASMCALL     $A2F2                       ; 29A1BB/D0F2A2
    TABLEJMP    #4                          ; 29A1BE/0F04
    .word       L_29A226                    ; 29A1C0/26A2
    .word       L_29A1CD                    ; 29A1C2/CDA1
    .word       L_29A208                    ; 29A1C4/08A2
    .word       L_29A1C8                    ; 29A1C6/C8A1
L_29A1C8:
    ASMCALL     $8CAA                       ; 29A1C8/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0200                       ; 29A1CB/0002
L_29A1CD:
    SETYVEL     #$FC00                      ; 29A1CD/C000FC
    ASMCALL     $AEB9                       ; 29A1D0/D0B9AE // UNK
    .byte       $1C                         ; 29A1D3/1C
    .byte       $28                         ; 29A1D4/28
L_29A1D5:
    ASMCALL     $AF29, WAIT #1              ; 29A1D5/D129AF
L_29A1D8:
    JNE         L_29A1D5                    ; 29A1D8/0BD5A1
    ZEROVEL                                 ; 29A1DB/38
    ONTICK      $29B00E                     ; 29A1DC/080EB029
    SETYVEL     #$0400                      ; 29A1E0/C00004
    INC2POSE    WAIT #4                     ; 29A1E3/94
L_29A1E4:
    INC2POSE    WAIT #10                    ; 29A1E4/9A
L_29A1E5:
    INC2POSE    WAIT #2                     ; 29A1E5/92
L_29A1E6:
    INC2POSE                                ; 29A1E6/90
    A_JSR       L_29AE6B                    ; 29A1E7/186BAE
    ZEROVEL                                 ; 29A1EA/38
    A_JSR       L_29A242                    ; 29A1EB/1842A2
L_29A1EE:
    ASMCALL     $9340                       ; 29A1EE/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FE80                       ; 29A1F1/80FE
    .word       $FE00                       ; 29A1F3/00FE
    ASMCALL     $8C53                       ; 29A1F5/D0538C // Set pose (respect facing)
    .byte       $04                         ; 29A1F8/04
    ONTICK      $29B016                     ; 29A1F9/0816B029
    A_JSR       L_29AE6B                    ; 29A1FD/186BAE
    ZEROVEL                                 ; 29A200/38
    ASMCALL     $8C53, WAIT #8              ; 29A201/D8538C // Set pose (respect facing)
    .byte       $08                         ; 29A204/08
L_29A205:
    A_JMP       L_29A014                    ; 29A205/1714A0

L_29A208:
    ASMCALL     $9340                       ; 29A208/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FE80                       ; 29A20B/80FE
    .word       $FC00                       ; 29A20D/00FC
    ONTICK      $29B01A                     ; 29A20F/081AB029
    ASMCALL     $AEB9, WAIT #8              ; 29A213/D8B9AE // UNK
    .byte       $34                         ; 29A216/34
    .byte       $40                         ; 29A217/40
L_29A218:
    INC2POSE    WAIT #2                     ; 29A218/92
L_29A219:
    INC2POSE    WAIT #2                     ; 29A219/92
L_29A21A:
    INC2POSE    WAIT #2                     ; 29A21A/92
L_29A21B:
    INC2POSE                                ; 29A21B/90
    A_JSR       L_29AE6B                    ; 29A21C/186BAE
    ZEROVEL                                 ; 29A21F/38
    A_JSR       L_29A242                    ; 29A220/1842A2
    A_JMP       L_29A26B                    ; 29A223/176BA2

L_29A226:
    LOOP        #6                          ; 29A226/0106
        ASMCALL     $AEB9, WAIT #2              ; 29A228/D2B9AE // UNK
        .byte       $1C                         ; 29A22B/1C
        .byte       $28                         ; 29A22C/28
L_29A22D:
        INC2POSE    WAIT #1                     ; 29A22D/91
L_29A22E:
        INC2POSE    WAIT #4                     ; 29A22E/94
L_29A22F:
        INC2POSE    WAIT #2                     ; 29A22F/92
L_29A230:
        INC2POSE    WAIT #4                     ; 29A230/94
L_29A231:
        ASMCALL     $859F                       ; 29A231/D09F85 // Unknown ASM $22859F
        .word       $000C                       ; 29A234/0C00
        ASMCALL     $859F                       ; 29A236/D09F85 // Unknown ASM $22859F
        .word       $0000                       ; 29A239/0000
    ENDLOOP                                 ; 29A23B/02
    A_JSR       L_29A242                    ; 29A23C/1842A2
    A_JMP       L_29A1EE                    ; 29A23F/17EEA1

L_29A242:
    ASMCALL     $859F                       ; 29A242/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 29A245/0C00
    ASMCALL     $859F                       ; 29A247/D09F85 // Unknown ASM $22859F
    .word       $0000                       ; 29A24A/0000
    ASMCALL     $E2F1                       ; 29A24C/D0F1E2 // Unknown ASM $E2F1
    _is_faraddr $29AE73                     ; 29A24F/73AE29
    LOOP        #4                          ; 29A252/0104
        INC2POSE                                ; 29A254/90
        SETYVEL     #$0100, WAIT #2             ; 29A255/C20001
L_29A258:
        SETYVEL     #$FF00, WAIT #2             ; 29A258/C200FF
L_29A25B:
        DEC2POSE                                ; 29A25B/A0
        SETYVEL     #$0100, WAIT #2             ; 29A25C/C20001
L_29A25F:
        SETYVEL     #$FF00, WAIT #2             ; 29A25F/C200FF
L_29A262:
    ENDLOOP                                 ; 29A262/02
    ZEROVEL                                 ; 29A263/38
    ASMCALL     $E2F1                       ; 29A264/D0F1E2 // Unknown ASM $E2F1
    _is_faraddr $29A596                     ; 29A267/96A529
    A_RTS                                   ; 29A26A/19

L_29A26B:
    ONTICK      $29B01E                     ; 29A26B/081EB029
    ASMCALL     $9340                       ; 29A26F/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0180                       ; 29A272/8001
    .word       $FB80                       ; 29A274/80FB
    ASMCALL     $8C53, WAIT #8              ; 29A276/D8538C // Set pose (respect facing)
    .byte       $0E                         ; 29A279/0E
L_29A27A:
    INC2POSE    WAIT #12                    ; 29A27A/9C
L_29A27B:
    ZEROVEL                                 ; 29A27B/38
    ONTICK      $29A4BA                     ; 29A27C/08BAA429
    WAIT        #15                         ; 29A280/060F
L_29A282:
    A_JMP       L_29A014                    ; 29A282/1714A0

L_29A285:
    MOV         VAR0,#$01                   ; 29A285/0D0001
    ASMCALL     $8FC6                       ; 29A288/D0C68F // Unknown ASM $228FC6
    .byte       $0E                         ; 29A28B/0E
    ASMCALL     $E6E8                       ; 29A28C/D0E8E6
    ASMCALL     $859F                       ; 29A28F/D09F85 // Unknown ASM $22859F
    .word       $0018                       ; 29A292/1800
    ASMCALL     $90BA                       ; 29A294/D0BA90 // VAR1 = -VAR1 (invert facing?)
    MOV         VAR2,#$18                   ; 29A297/0D0218
    ASMCALL     $9340                       ; 29A29A/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF00                       ; 29A29D/00FF
    .word       $FD00                       ; 29A29F/00FD
    ONTICK      $29B012                     ; 29A2A1/0812B029
    ASMCALL     $8C53, WAIT #8              ; 29A2A5/D8538C // Set pose (respect facing)
    .byte       $0C                         ; 29A2A8/0C
L_29A2A9:
    INC2POSE    WAIT #15                    ; 29A2A9/9F
L_29A2AA:
    ONTICK      $29B052                     ; 29A2AA/0852B029
    A_JSR       L_29AE6B                    ; 29A2AE/186BAE
    ASMCALL     $DED0                       ; 29A2B1/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 29A2B4/09
    .byte       $12                         ; 29A2B5/12
    .byte       $08                         ; 29A2B6/08
    .byte       $00                         ; 29A2B7/00
    .byte       $0D                         ; 29A2B8/0D
    .byte       $00                         ; 29A2B9/00
    .byte       $01                         ; 29A2BA/01
    .byte       $00                         ; 29A2BB/00
    ASMCALL     $859F                       ; 29A2BC/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 29A2BF/0C00
    ASMCALL     $9591                       ; 29A2C1/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 29A2C4/01
    .byte       $00                         ; 29A2C5/00
    .byte       $08                         ; 29A2C6/08
    .byte       $00                         ; 29A2C7/00
    .byte       $06                         ; 29A2C8/06
    ASMCALL     $9340                       ; 29A2C9/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF80                       ; 29A2CC/80FF
    .word       $0000                       ; 29A2CE/0000
    WAIT        #30                         ; 29A2D0/061E
L_29A2D2:
    ZEROVEL                                 ; 29A2D2/38
    WAIT        #182                        ; 29A2D3/06B6
    ASMCALL     $859F                       ; 29A2D5/D09F85 // Unknown ASM $22859F
    .word       $0018                       ; 29A2D8/1800
    LOOP        #7                          ; 29A2DA/0107
        SETYVEL     #$FF00, WAIT #2             ; 29A2DC/C200FF
        SETYVEL     #$0100, WAIT #2             ; 29A2DF/C20001
    ENDLOOP                                 ; 29A2E2/02
    A_JMP       $8162                       ; 29A2E3/176281

; CODE OR DATA -- $29A2E6 .. $29A589
incbinRange "../split/prg/bank29.bin", $02E6, $0589

L_29A589:
    ZEROVEL                                 ; 29A589/38
    SETPOSE     #$FF                        ; 29A58A/50FF
    ONTICK      $29B096                     ; 29A58C/0896B029
L_29A590:
    ASMCALL     $A5AE, WAIT #1              ; 29A590/D1AEA5
L_29A593:
    A_JMP       L_29A590                    ; 29A593/1790A5

L_29A596:
    ASMCALL     $A620                       ; 29A596/D020A6
    ONTICK      $29B096                     ; 29A599/0896B029
    SPRITEMAP   $1C8DA6                     ; 29A59D/1AA68D1C
    WAIT        #30                         ; 29A5A1/061E
L_29A5A3:
    ASMCALL     $AF4D                       ; 29A5A3/D04DAF
    MOV         $05F9,#$60                  ; 29A5A6/11F90560
    JML         L_14A084                    ; 29A5AA/0384A014

; CODE OR DATA -- $29A5AE .. $29A664
incbinRange "../split/prg/bank29.bin", $05AE, $0664

L_29A664:
    SPRITEMAP   $329E22                     ; 29A664/1A229E32
    ONPOSITION  $D97D                       ; 29A668/217DD9
    ONDRAW      $DA89                       ; 29A66B/2089DA
    ASMCALL     $84AD                       ; 29A66E/D0AD84 // Copy $0784[self.parent] to $0784[self]
    ASMCALL     $8C19                       ; 29A671/D0198C // Unknown ASM $228C19
    .byte       $02                         ; 29A674/02
    ASMCALL     $A6B2                       ; 29A675/D0B2A6
    MOV         VAR0,#$02                   ; 29A678/0D0002
    ONTICK      $29A745                     ; 29A67B/0845A729
    SETZVEL     #$0300                      ; 29A67F/3C0003
    ASMCALL     $A6CE, WAIT #8              ; 29A682/D8CEA6
L_29A685:
    LOOP        #8                          ; 29A685/0108
        ASMCALL     $A6CE, WAIT #1              ; 29A687/D1CEA6
L_29A68A:
        ADDZVEL     #$FFA0                      ; 29A68A/3DA0FF
    ENDLOOP                                 ; 29A68D/02
    ZEROVEL                                 ; 29A68E/38
    ONTICK      $29A73B                     ; 29A68F/083BA729
    ASMCALL     $8851                       ; 29A693/D05188 // Face towards Kirby
    LOOP        #2                          ; 29A696/0102
        SETYVEL     #$FFC0, WAIT #4             ; 29A698/C4C0FF
L_29A69B:
        SETYVEL     #$0040, WAIT #4             ; 29A69B/C44000
L_29A69E:
    ENDLOOP                                 ; 29A69E/02
    ZEROVEL                                 ; 29A69F/38
    ONPOSITION  $D9BB                       ; 29A6A0/21BBD9
    ASMCALL     $8B7F                       ; 29A6A3/D07F8B // Unknown ASM $228B7F
    .word       $A6AE                       ; 29A6A6/AEA6
L_29A6A8:
    ASMCALL     $A70D, WAIT #1              ; 29A6A8/D10DA7
L_29A6AB:
    A_JMP       L_29A6A8                    ; 29A6AB/17A8A6

; CODE OR DATA -- $29A6AE .. $29A771
incbinRange "../split/prg/bank29.bin", $06AE, $0771

Script4B_RollingTurtle:
    SETBANK     #$22                        ; 29A771/2822
    MOV         REG,VAR0                    ; 29A773/1E00
    JNE         L_29ADBA                    ; 29A775/0BBAAD
    MOV         VAR0,#$1E                   ; 29A778/0D001E
    SPRITEMAP   $338B50                     ; 29A77B/1A508B33
    A_JSR       L_29AF71                    ; 29A77F/1871AF
    A_JMP       L_29A883                    ; 29A782/1783A8

L_29A785:
    ONDRAW      $DA89                       ; 29A785/2089DA
    ONTICK      $29ABF5                     ; 29A788/08F5AB29
    ASMCALL     $A2E6                       ; 29A78C/D0E6A2
    LOOP        REG                         ; 29A78F/22
        ASMCALL     $8851                       ; 29A790/D05188 // Face towards Kirby
        ASMCALL     $8829                       ; 29A793/D02988 // Set pose to 0 (respect facing)
        ZEROVEL                                 ; 29A796/38
        ASMCALL     $AE8E                       ; 29A797/D08EAE
        TABLEJMP    #3                          ; 29A79A/0F03
        .word       L_29A7A2                    ; 29A79C/A2A7
        .word       L_29A7A7                    ; 29A79E/A7A7
        .word       L_29A7AF                    ; 29A7A0/AFA7
L_29A7A2:
        WAIT        #30                         ; 29A7A2/061E
L_29A7A4:
        A_JMP       L_29A7C3                    ; 29A7A4/17C3A7

L_29A7A7:
        ASMCALL     $8B7F                       ; 29A7A7/D07F8B // Unknown ASM $228B7F
        .word       $A7D1                       ; 29A7AA/D1A7
        A_JMP       L_29A7B4                    ; 29A7AC/17B4A7

L_29A7AF:
        ASMCALL     $8B7F                       ; 29A7AF/D07F8B // Unknown ASM $228B7F
        .word       $A7D5                       ; 29A7B2/D5A7
L_29A7B4:
        SETYVEL     #$FE40                      ; 29A7B4/C040FE
        INC2POSE    WAIT #6                     ; 29A7B7/96
L_29A7B8:
        INC2POSE    WAIT #10                    ; 29A7B8/9A
L_29A7B9:
        SETYVEL     #$FE40                      ; 29A7B9/C040FE
        INC2POSE    WAIT #6                     ; 29A7BC/96
L_29A7BD:
        INC2POSE    WAIT #10                    ; 29A7BD/9A
L_29A7BE:
        ZEROVEL                                 ; 29A7BE/38
        ASMCALL     $8EFB                       ; 29A7BF/D0FB8E // Unknown ASM $228EFB
        .byte       $0E                         ; 29A7C2/0E
L_29A7C3:
    ENDLOOP                                 ; 29A7C3/02
    ASMCALL     $AA91                       ; 29A7C4/D091AA
    TABLEJMP    #4                          ; 29A7C7/0F04
    .word       L_29A830                    ; 29A7C9/30A8
    .word       L_29A86D                    ; 29A7CB/6DA8
    .word       L_29A812                    ; 29A7CD/12A8
    .word       L_29A7D9                    ; 29A7CF/D9A7
    .byte $80,$FF,$00,$FF,$80,$00,$00,$01
L_29A7D9:
    ZEROVEL                                 ; 29A7D9/38
    ASMCALL     $8851                       ; 29A7DA/D05188 // Face towards Kirby
    ASMCALL     $8829, WAIT #15             ; 29A7DD/DF2988 // Set pose to 0 (respect facing)
L_29A7E0:
    SETYVEL     #$FC80                      ; 29A7E0/C080FC
    ASMCALL     $ABD3                       ; 29A7E3/D0D3AB
    ONTICK      $29AC15                     ; 29A7E6/0815AC29
L_29A7EA:
    ASMCALL     $8C53                       ; 29A7EA/D0538C // Set pose (respect facing)
    .byte       $0C                         ; 29A7ED/0C
    LOOP        #7                          ; 29A7EE/0107
        INC2POSE    WAIT #2                     ; 29A7F0/92
L_29A7F1:
    ENDLOOP                                 ; 29A7F1/02
    A_JMP       L_29A7EA                    ; 29A7F2/17EAA7

L_29A7F5:
    ONTICK      $29AC15                     ; 29A7F5/0815AC29
    ASMCALL     $8C71                       ; 29A7F9/D0718C // Unknown ASM $228C71
    .byte       $4B                         ; 29A7FC/4B
    .byte       $01                         ; 29A7FD/01
    .byte       $00                         ; 29A7FE/00
    ASMCALL     $8C53, WAIT #3              ; 29A7FF/D3538C // Set pose (respect facing)
    .byte       $16                         ; 29A802/16
L_29A803:
    INCPOSE     WAIT #3                     ; 29A803/73
L_29A804:
    INCPOSE     WAIT #3                     ; 29A804/73
L_29A805:
    INCPOSE     WAIT #3                     ; 29A805/73
L_29A806:
    ASMCALL     $8C53, WAIT #2              ; 29A806/D2538C // Set pose (respect facing)
    .byte       $00                         ; 29A809/00
L_29A80A:
    INC2POSE                                ; 29A80A/90
    A_JSR       L_29AE6B                    ; 29A80B/186BAE
    DEC2POSE    WAIT #8                     ; 29A80E/A8
L_29A80F:
    A_JMP       L_29A785                    ; 29A80F/1785A7

L_29A812:
    ASMCALL     $8851                       ; 29A812/D05188 // Face towards Kirby
    ASMCALL     $AF33                       ; 29A815/D033AF
    ONTICK      $29AC3E                     ; 29A818/083EAC29
    LOOP        REG                         ; 29A81C/22
        ASMCALL     $8C53                       ; 29A81D/D0538C // Set pose (respect facing)
        .byte       $02                         ; 29A820/02
        SETYVEL     #$FB00                      ; 29A821/C000FB
        WAIT        #30                         ; 29A824/061E
L_29A826:
        ASMCALL     $8C53, WAIT #4              ; 29A826/D4538C // Set pose (respect facing)
        .byte       $00                         ; 29A829/00
L_29A82A:
        ASMCALL     $859F, WAIT #2              ; 29A82A/D29F85 // Unknown ASM $22859F
        .word       $0015                       ; 29A82D/1500
L_29A82F:
    ENDLOOP                                 ; 29A82F/02
L_29A830:
    ONTICK      $29ABF5                     ; 29A830/08F5AB29
    ASMCALL     $8C53                       ; 29A834/D0538C // Set pose (respect facing)
    .byte       $0C                         ; 29A837/0C
    ASMCALL     $8CAA, WAIT #2              ; 29A838/D2AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FD00                       ; 29A83B/00FD
L_29A83D:
    INC2POSE    WAIT #2                     ; 29A83D/92
L_29A83E:
    ASMCALL     $8CAA                       ; 29A83E/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FE80                       ; 29A841/80FE
    INC2POSE    WAIT #2                     ; 29A843/92
L_29A844:
    INC2POSE    WAIT #2                     ; 29A844/92
L_29A845:
    ASMCALL     $8CAA                       ; 29A845/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0000                       ; 29A848/0000
    INC2POSE    WAIT #2                     ; 29A84A/92
L_29A84B:
    INC2POSE    WAIT #2                     ; 29A84B/92
L_29A84C:
    ASMCALL     $8EFB                       ; 29A84C/D0FB8E // Unknown ASM $228EFB
    .byte       $36                         ; 29A84F/36
    ONTICK      $29AC50                     ; 29A850/0850AC29
    ASMCALL     $8B7F                       ; 29A854/D07F8B // Unknown ASM $228B7F
    .word       $A869                       ; 29A857/69A8
    INC2POSE    WAIT #2                     ; 29A859/92
L_29A85A:
    INC2POSE    WAIT #2                     ; 29A85A/92
L_29A85B:
    LOOP        #3                          ; 29A85B/0103
        ASMCALL     $8C53, WAIT #2              ; 29A85D/D2538C // Set pose (respect facing)
        .byte       $0C                         ; 29A860/0C
L_29A861:
        LOOP        #7                          ; 29A861/0107
            INC2POSE    WAIT #2                     ; 29A863/92
L_29A864:
        ENDLOOP                                 ; 29A864/02
    ENDLOOP                                 ; 29A865/02
    A_JMP       L_29A785                    ; 29A866/1785A7

; CODE OR DATA -- $29A869 .. $29A86D
incbinRange "../split/prg/bank29.bin", $0869, $086D

L_29A86D:
    ASMCALL     $8851                       ; 29A86D/D05188 // Face towards Kirby
    ASMCALL     $8B7F                       ; 29A870/D07F8B // Unknown ASM $228B7F
    .word       $A87F                       ; 29A873/7FA8
    SETYVEL     #$FB80                      ; 29A875/C080FB
    ASMCALL     $8EFB                       ; 29A878/D0FB8E // Unknown ASM $228EFB
    .byte       $17                         ; 29A87B/17
    A_JMP       L_29A883                    ; 29A87C/1783A8

; CODE OR DATA -- $29A87F .. $29A883
incbinRange "../split/prg/bank29.bin", $087F, $0883

L_29A883:
    ASMCALL     $8C53                       ; 29A883/D0538C // Set pose (respect facing)
    .byte       $02                         ; 29A886/02
    ONTICK      $29AC05                     ; 29A887/0805AC29
    A_JSR       L_29AE6B                    ; 29A88B/186BAE
    ASMCALL     $8EFB                       ; 29A88E/D0FB8E // Unknown ASM $228EFB
    .byte       $22                         ; 29A891/22
    A_JMP       L_29A785                    ; 29A892/1785A7

L_29A895:
    ASMCALL     $E2F1, WAIT #1              ; 29A895/D1F1E2 // Unknown ASM $E2F1
    _is_faraddr $29ACE6                     ; 29A898/E6AC29
L_29A89B:
    ZEROVEL                                 ; 29A89B/38
    ONTICK      $29B012                     ; 29A89C/0812B029
    ASMCALL     $AEB9, WAIT #8              ; 29A8A0/D8B9AE // UNK
    .byte       $34                         ; 29A8A3/34
    .byte       $38                         ; 29A8A4/38
L_29A8A5:
    INC2POSE                                ; 29A8A5/90
    ASMCALL     $8EFB                       ; 29A8A6/D0FB8E // Unknown ASM $228EFB
    .byte       $0F                         ; 29A8A9/0F
    WAIT        #26                         ; 29A8AA/061A
L_29A8AC:
    ASMCALL     $AAE9                       ; 29A8AC/D0E9AA
    TABLEJMP    #4                          ; 29A8AF/0F04
    .word       L_29A8BE                    ; 29A8B1/BEA8
    .word       L_29A8B9                    ; 29A8B3/B9A8
    .word       L_29A90C                    ; 29A8B5/0CA9
    .word       L_29A94B                    ; 29A8B7/4BA9
L_29A8B9:
    ASMCALL     $8CAA                       ; 29A8B9/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0100                       ; 29A8BC/0001
L_29A8BE:
    ONTICK      $29B012                     ; 29A8BE/0812B029
    SETYVEL     #$FB00                      ; 29A8C2/C000FB
    MOV         $0042,#$80                  ; 29A8C5/11420080
    ASMCALL     $8EFB                       ; 29A8C9/D0FB8E // Unknown ASM $228EFB
    .byte       $3B                         ; 29A8CC/3B
    ASMCALL     $8C53, WAIT #2              ; 29A8CD/D2538C // Set pose (respect facing)
    .byte       $1C                         ; 29A8D0/1C
L_29A8D1:
    INC2POSE    WAIT #2                     ; 29A8D1/92
L_29A8D2:
    INC2POSE    WAIT #2                     ; 29A8D2/92
L_29A8D3:
    INC2POSE    WAIT #2                     ; 29A8D3/92
L_29A8D4:
    INC2POSE    WAIT #2                     ; 29A8D4/92
L_29A8D5:
    INC2POSE    WAIT #2                     ; 29A8D5/92
L_29A8D6:
    INC2POSE    WAIT #2                     ; 29A8D6/92
L_29A8D7:
    INC2POSE    WAIT #2                     ; 29A8D7/92
L_29A8D8:
    ADDPOSE     #-14, WAIT #2               ; 29A8D8/62F2
L_29A8DA:
    INC2POSE    WAIT #2                     ; 29A8DA/92
L_29A8DB:
    INC2POSE    WAIT #2                     ; 29A8DB/92
L_29A8DC:
    ASMCALL     $AB95                       ; 29A8DC/D095AB
    ASMCALL     $ABA2, WAIT #2              ; 29A8DF/D2A2AB
    .byte $4C,$64
L_29A8E4:
    SETYVEL     #$0000, WAIT #15            ; 29A8E4/CF0000
L_29A8E7:
    INC2POSE                                ; 29A8E7/90
    SETYVEL     #$0800                      ; 29A8E8/C00008
    A_JSR       L_29AE6B                    ; 29A8EB/186BAE
    A_JSR       L_29AA70                    ; 29A8EE/1870AA
    ASMCALL     $9340                       ; 29A8F1/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF00                       ; 29A8F4/00FF
    .word       $FD00                       ; 29A8F6/00FD
L_29A8F8:
    MOV         $0042,#$80                  ; 29A8F8/11420080
    ASMCALL     $8C53, WAIT #2              ; 29A8FC/D2538C // Set pose (respect facing)
    .byte       $1A                         ; 29A8FF/1A
L_29A900:
    LOOP        #7                          ; 29A900/0107
        DEC2POSE    WAIT #2                     ; 29A902/A2
L_29A903:
    ENDLOOP                                 ; 29A903/02
    MOV         REG,VAR3                    ; 29A904/1E03
    JEQ         L_29A8F8                    ; 29A906/0AF8A8
    A_JMP       L_29A785                    ; 29A909/1785A7

L_29A90C:
    ZEROVEL                                 ; 29A90C/38
    MOV         VAR5,#$00                   ; 29A90D/0D0500
    MOV         VAR6,#$08                   ; 29A910/0D0608
    MOV         VAR8,#$40                   ; 29A913/0D0840
    ASMCALL     $8CAA                       ; 29A916/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0040                       ; 29A919/4000
    ONTICK      $29AC9C                     ; 29A91B/089CAC29
L_29A91F:
    ASMCALL     $ABAD                       ; 29A91F/D0ADAB
    SETZVEL     #$D044                      ; 29A922/3C44D0
    .byte $FB,$8E,$23,$1F,$06
L_29A92A:
    LOOP        #7                          ; 29A92A/0107
        INCPOSE                                 ; 29A92C/70
        WAIT        VAR6                        ; 29A92D/1F06
L_29A92F:
    ENDLOOP                                 ; 29A92F/02
    A_JMP       L_29A91F                    ; 29A930/171FA9

L_29A933:
    ZEROVEL                                 ; 29A933/38
    ASMCALL     $8C53                       ; 29A934/D0538C // Set pose (respect facing)
    .byte       $50                         ; 29A937/50
    ASMCALL     $8EFB                       ; 29A938/D0FB8E // Unknown ASM $228EFB
    .byte       $4E                         ; 29A93B/4E
    ONTICK      $29B012                     ; 29A93C/0812B029
    ASMCALL     $E2F1                       ; 29A940/D0F1E2 // Unknown ASM $E2F1
    _is_faraddr $29AD0B                     ; 29A943/0BAD29
    WAIT        #60                         ; 29A946/063C
L_29A948:
    A_JMP       L_29A785                    ; 29A948/1785A7

L_29A94B:
    ONTICK      $29B012                     ; 29A94B/0812B029
    ASMCALL     $8CAA                       ; 29A94F/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FE00                       ; 29A952/00FE
    SETYVEL     #$FE00                      ; 29A954/C000FE
    MOV         $0042,#$80                  ; 29A957/11420080
    ASMCALL     $8C53, WAIT #2              ; 29A95B/D2538C // Set pose (respect facing)
    .byte       $52                         ; 29A95E/52
L_29A95F:
    INC2POSE    WAIT #2                     ; 29A95F/92
L_29A960:
    INC2POSE    WAIT #2                     ; 29A960/92
L_29A961:
    INC2POSE    WAIT #2                     ; 29A961/92
L_29A962:
    INC2POSE    WAIT #2                     ; 29A962/92
L_29A963:
    INC2POSE    WAIT #2                     ; 29A963/92
L_29A964:
    INC2POSE    WAIT #2                     ; 29A964/92
L_29A965:
    INC2POSE    WAIT #2                     ; 29A965/92
L_29A966:
    ADDPOSE     #-14, WAIT #2               ; 29A966/62F2
L_29A968:
    INC2POSE    WAIT #2                     ; 29A968/92
L_29A969:
    INC2POSE    WAIT #2                     ; 29A969/92
L_29A96A:
    ZEROVEL                                 ; 29A96A/38
    ASMCALL     $8C53                       ; 29A96B/D0538C // Set pose (respect facing)
    .byte       $62                         ; 29A96E/62
    ASMCALL     $8EFB                       ; 29A96F/D0FB8E // Unknown ASM $228EFB
    .byte       $4E                         ; 29A972/4E
    ASMCALL     $E2F1                       ; 29A973/D0F1E2 // Unknown ASM $E2F1
    _is_faraddr $29AD0B                     ; 29A976/0BAD29
    WAIT        #20                         ; 29A979/0614
L_29A97B:
    ASMCALL     $8CAA                       ; 29A97B/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0200                       ; 29A97E/0002
    ASMCALL     $8C53, WAIT #2              ; 29A980/D2538C // Set pose (respect facing)
    .byte       $16                         ; 29A983/16
L_29A984:
    INC2POSE    WAIT #2                     ; 29A984/92
L_29A985:
    INC2POSE    WAIT #2                     ; 29A985/92
L_29A986:
    A_JMP       L_29A785                    ; 29A986/1785A7

L_29A989:
    ASMCALL     $859F                       ; 29A989/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 29A98C/0C00
    ASMCALL     $9340                       ; 29A98E/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF00                       ; 29A991/00FF
    .word       $FD00                       ; 29A993/00FD
    ONTICK      $29AC08                     ; 29A995/0808AC29
    ASMCALL     $8C53                       ; 29A999/D0538C // Set pose (respect facing)
    .byte       $0C                         ; 29A99C/0C
    A_JSR       L_29AE6B                    ; 29A99D/186BAE
    ASMCALL     $9591                       ; 29A9A0/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 29A9A3/01
    .byte       $00                         ; 29A9A4/00
    .byte       $08                         ; 29A9A5/08
    .byte       $FC                         ; 29A9A6/FC
    .byte       $0A                         ; 29A9A7/0A
    ASMCALL     $ABEA                       ; 29A9A8/D0EAAB
    A_JSR       L_29AA0B                    ; 29A9AB/180BAA
    A_JSR       L_29AA60                    ; 29A9AE/1860AA
    A_JMP       L_29A785                    ; 29A9B1/1785A7

L_29A9B4:
    MOV         VAR0,#$01                   ; 29A9B4/0D0001
    ASMCALL     $8FC6                       ; 29A9B7/D0C68F // Unknown ASM $228FC6
    .byte       $0E                         ; 29A9BA/0E
    ASMCALL     $E6E8                       ; 29A9BB/D0E8E6
    ASMCALL     $859F                       ; 29A9BE/D09F85 // Unknown ASM $22859F
    .word       $0018                       ; 29A9C1/1800
    ASMCALL     $90BA                       ; 29A9C3/D0BA90 // VAR1 = -VAR1 (invert facing?)
    MOV         VAR2,#$18                   ; 29A9C6/0D0218
    ASMCALL     $9340                       ; 29A9C9/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF00                       ; 29A9CC/00FF
    .word       $FD00                       ; 29A9CE/00FD
    ONTICK      $29B012                     ; 29A9D0/0812B029
    ASMCALL     $8C53                       ; 29A9D4/D0538C // Set pose (respect facing)
    .byte       $0C                         ; 29A9D7/0C
    WAIT        #23                         ; 29A9D8/0617
L_29A9DA:
    ONTICK      $29B056                     ; 29A9DA/0856B029
    A_JSR       L_29AE6B                    ; 29A9DE/186BAE
    ASMCALL     $DED0                       ; 29A9E1/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 29A9E4/09
    .byte       $12                         ; 29A9E5/12
    .byte       $08                         ; 29A9E6/08
    .byte       $00                         ; 29A9E7/00
    .byte       $0D                         ; 29A9E8/0D
    .byte       $00                         ; 29A9E9/00
    .byte       $01                         ; 29A9EA/01
    .byte       $00                         ; 29A9EB/00
    ASMCALL     $9591                       ; 29A9EC/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $01                         ; 29A9EF/01
    .byte       $00                         ; 29A9F0/00
    .byte       $08                         ; 29A9F1/08
    .byte       $00                         ; 29A9F2/00
    .byte       $06                         ; 29A9F3/06
    MOV         VAR5,#$06                   ; 29A9F4/0D0506
    A_JSR       L_29AA0B                    ; 29A9F7/180BAA
    ASMCALL     $859F                       ; 29A9FA/D09F85 // Unknown ASM $22859F
    .word       $0018                       ; 29A9FD/1800
    MOV         VAR5,#$01                   ; 29A9FF/0D0501
    A_JSR       L_29AA29                    ; 29AA02/1829AA
    A_JSR       L_29AA60                    ; 29AA05/1860AA
    A_JMP       $8162                       ; 29AA08/176281

L_29AA0B:
    ASMCALL     $859F                       ; 29AA0B/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 29AA0E/0C00
    ASMCALL     $8CAA                       ; 29AA10/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FE80                       ; 29AA13/80FE
    ADDPOSE     #14, WAIT #2                ; 29AA15/620E
L_29AA17:
    ASMCALL     $8CAA                       ; 29AA17/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FD00                       ; 29AA1A/00FD
    DEC2POSE    WAIT #3                     ; 29AA1C/A3
L_29AA1D:
    ASMCALL     $8CAA                       ; 29AA1D/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0000                       ; 29AA20/0000
    DEC2POSE    WAIT #3                     ; 29AA22/A3
L_29AA23:
    ASMCALL     $8CAA                       ; 29AA23/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0100                       ; 29AA26/0001
    DEC2POSE    WAIT #4                     ; 29AA28/A4
L_29AA29:
    MOV         REG,VAR5                    ; 29AA29/1E05
    JEQ         L_29AA5F                    ; 29AA2B/0A5FAA
    LOOP        REG                         ; 29AA2E/22
        ASMCALL     $8C53                       ; 29AA2F/D0538C // Set pose (respect facing)
        .byte       $2C                         ; 29AA32/2C
        ASMCALL     $8CAA, WAIT #4              ; 29AA33/D4AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $0300                       ; 29AA36/0003
L_29AA38:
        INC2POSE                                ; 29AA38/90
        ASMCALL     $8CAA, WAIT #3              ; 29AA39/D3AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $0100                       ; 29AA3C/0001
L_29AA3E:
        ASMCALL     $8CAA, WAIT #5              ; 29AA3E/D5AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $0000                       ; 29AA41/0000
L_29AA43:
        ASMCALL     $8CAA, WAIT #3              ; 29AA43/D3AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $FF00                       ; 29AA46/00FF
L_29AA48:
        INC2POSE                                ; 29AA48/90
        ASMCALL     $8CAA, WAIT #4              ; 29AA49/D4AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $FD00                       ; 29AA4C/00FD
L_29AA4E:
        INC2POSE                                ; 29AA4E/90
        ASMCALL     $8CAA, WAIT #3              ; 29AA4F/D3AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $FF00                       ; 29AA52/00FF
L_29AA54:
        ASMCALL     $8CAA, WAIT #5              ; 29AA54/D5AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $0000                       ; 29AA57/0000
L_29AA59:
        ASMCALL     $8CAA, WAIT #3              ; 29AA59/D3AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $0100                       ; 29AA5C/0001
L_29AA5E:
    ENDLOOP                                 ; 29AA5E/02
L_29AA5F:
    A_RTS                                   ; 29AA5F/19

L_29AA60:
    ASMCALL     $8C53                       ; 29AA60/D0538C // Set pose (respect facing)
    .byte       $2C                         ; 29AA63/2C
    ASMCALL     $8CAA, WAIT #4              ; 29AA64/D4AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0300                       ; 29AA67/0003
L_29AA69:
    INC2POSE                                ; 29AA69/90
    ASMCALL     $8CAA, WAIT #3              ; 29AA6A/D3AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0100                       ; 29AA6D/0001
L_29AA6F:
    A_RTS                                   ; 29AA6F/19

L_29AA70:
    ASMCALL     $859F                       ; 29AA70/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 29AA73/0C00
    ASMCALL     $859F                       ; 29AA75/D09F85 // Unknown ASM $22859F
    .word       $0000                       ; 29AA78/0000
    ASMCALL     $E2F1                       ; 29AA7A/D0F1E2 // Unknown ASM $E2F1
    _is_faraddr $29AE73                     ; 29AA7D/73AE29
    ZEROVEL                                 ; 29AA80/38
    LOOP        #8                          ; 29AA81/0108
        SETYVEL     #$0100, WAIT #2             ; 29AA83/C20001
L_29AA86:
        SETYVEL     #$FF00, WAIT #2             ; 29AA86/C200FF
L_29AA89:
    ENDLOOP                                 ; 29AA89/02
    ASMCALL     $E2F1                       ; 29AA8A/D0F1E2 // Unknown ASM $E2F1
    _is_faraddr $29ACF3                     ; 29AA8D/F3AC29
    A_RTS                                   ; 29AA90/19

; CODE OR DATA -- $29AA91 .. $29ACE6
incbinRange "../split/prg/bank29.bin", $0A91, $0CE6

L_29ACE6:
    ZEROVEL                                 ; 29ACE6/38
    SETPOSE     #$FF                        ; 29ACE7/50FF
    ONTICK      $29B096                     ; 29ACE9/0896B029
L_29ACED:
    ASMCALL     $AD40, WAIT #1              ; 29ACED/D140AD
L_29ACF0:
    A_JMP       L_29ACED                    ; 29ACF0/17EDAC

L_29ACF3:
    ASMCALL     $AD5E                       ; 29ACF3/D05EAD
    ONTICK      $29B096                     ; 29ACF6/0896B029
    SPRITEMAP   $1C8DA6                     ; 29ACFA/1AA68D1C
    WAIT        #30                         ; 29ACFE/061E
L_29AD00:
    ASMCALL     $AF4D                       ; 29AD00/D04DAF
    MOV         $05F9,#$60                  ; 29AD03/11F90560
    JML         L_14A084                    ; 29AD07/0384A014

L_29AD0B:
    ASMCALL     $AD5E                       ; 29AD0B/D05EAD
    ONTICK      $29B0BE                     ; 29AD0E/08BEB029
    SPRITEMAP   $1C8DA6                     ; 29AD12/1AA68D1C
    A_JSR       L_29AE6B                    ; 29AD16/186BAE
    ONTICK      $29B096                     ; 29AD19/0896B029
    ASMCALL     $B117                       ; 29AD1D/D017B1
    JEQ         L_29AD2B                    ; 29AD20/0A2BAD
    MOV         $05F9,#$00                  ; 29AD23/11F90500
    JML         KSTEE_Miss                    ; 29AD27/03F8A414

L_29AD2B:
    MOV         $05A0,#$06                  ; 29AD2B/11A00506
    MOV         $05A1,#$5A                  ; 29AD2F/11A1055A
    WAIT        #30                         ; 29AD33/061E
L_29AD35:
    ASMCALL     $AF4D                       ; 29AD35/D04DAF
    MOV         $05F9,#$60                  ; 29AD38/11F90560
    JML         L_14A084                    ; 29AD3C/0384A014

; CODE OR DATA -- $29AD40 .. $29ADBA
incbinRange "../split/prg/bank29.bin", $0D40, $0DBA

L_29ADBA:
    SPRITEMAP   $329E4E                     ; 29ADBA/1A4E9E32
    ONPOSITION  $D9BB                       ; 29ADBE/21BBD9
    ONDRAW      $DA89                       ; 29ADC1/2089DA
    MOV         VAR0,#$02                   ; 29ADC4/0D0002
    ASMCALL     $84AD                       ; 29ADC7/D0AD84 // Copy $0784[self.parent] to $0784[self]
    ASMCALL     $8EFB                       ; 29ADCA/D0FB8E // Unknown ASM $228EFB
    .byte       $1C                         ; 29ADCD/1C
    SETYVEL     #$02AF                      ; 29ADCE/C0AF02
    ASMCALL     $8B7F, WAIT #3              ; 29ADD1/D37F8B // Unknown ASM $228B7F
    .word       $AE02                       ; 29ADD4/02AE
L_29ADD6:
    ONTICK      $29AE0E                     ; 29ADD6/080EAE29
    LOOP        #2                          ; 29ADDA/0102
        ASMCALL     $8C53, WAIT #2              ; 29ADDC/D2538C // Set pose (respect facing)
        .byte       $00                         ; 29ADDF/00
L_29ADE0:
        INC2POSE    WAIT #2                     ; 29ADE0/92
L_29ADE1:
        INC2POSE    WAIT #2                     ; 29ADE1/92
L_29ADE2:
        INC2POSE    WAIT #2                     ; 29ADE2/92
L_29ADE3:
    ENDLOOP                                 ; 29ADE3/02
    INC2POSE                                ; 29ADE4/90
    HALT                                    ; 29ADE5/09

L_29ADE6:
    ASMCALL     $8EFB                       ; 29ADE6/D0FB8E // Unknown ASM $228EFB
    .byte       $19                         ; 29ADE9/19
    ASMCALL     $8BC0                       ; 29ADEA/D0C08B // Unknown ASM $228BC0
    .word       $AE0A                       ; 29ADED/0AAE
    ASMCALL     $8B7F, WAIT #3              ; 29ADEF/D37F8B // Unknown ASM $228B7F
    .word       $AE06                       ; 29ADF2/06AE
L_29ADF4:
    ONTICK      $29AE34                     ; 29ADF4/0834AE29
L_29ADF8:
    ASMCALL     $8C53, WAIT #2              ; 29ADF8/D2538C // Set pose (respect facing)
    .byte       $00                         ; 29ADFB/00
L_29ADFC:
    INC2POSE    WAIT #2                     ; 29ADFC/92
L_29ADFD:
    INC2POSE    WAIT #2                     ; 29ADFD/92
L_29ADFE:
    INC2POSE    WAIT #2                     ; 29ADFE/92
L_29ADFF:
    A_JMP       L_29ADF8                    ; 29ADFF/17F8AD

; CODE OR DATA -- $29AE02 .. $29AE6B
incbinRange "../split/prg/bank29.bin", $0E02, $0E6B

L_29AE6B:
    WAIT        #1                          ; 29AE6B/0601
L_29AE6D:
    MOV         REG,VAR3                    ; 29AE6D/1E03
    JEQ         L_29AE6B                    ; 29AE6F/0A6BAE
    A_RTS                                   ; 29AE72/19

L_29AE73:
    SPRITEMAP   $1C8DA6                     ; 29AE73/1AA68D1C
    ASMCALL     $B117                       ; 29AE77/D017B1
    JEQ         L_29AE85                    ; 29AE7A/0A85AE
    MOV         $05F9,#$00                  ; 29AE7D/11F90500
    JML         KSTEE_Miss                    ; 29AE81/03F8A414

L_29AE85:
    MOV         $05A0,#$06                  ; 29AE85/11A00506
    MOV         $05A1,#$5A                  ; 29AE89/11A1055A
    HALT                                    ; 29AE8D/09

; CODE OR DATA -- $29AE8E .. $29AF71
incbinRange "../split/prg/bank29.bin", $0E8E, $0F71

L_29AF71:
    ONDRAW      $DA89                       ; 29AF71/2089DA
    ADDYPOS     #-5                         ; 29AF74/2DFBFF
    ONPOSITION  $DA09                       ; 29AF77/2109DA
    MOV         VAR2,#$00                   ; 29AF7A/0D0200
    MOV         VAR3,#$00                   ; 29AF7D/0D0300
    MOV         VAR4,#$FF                   ; 29AF80/0D04FF
    MOV         VAR9,#$00                   ; 29AF83/0D0900
    ASMCALL     $84A4                       ; 29AF86/D0A484 // Store VAR1 in $0784[self]
    A_RTS                                   ; 29AF89/19

; CODE OR DATA -- $29AF8A .. $29B120
incbinRange "../split/prg/bank29.bin", $0F8A, $1120

L_29B120:
    A_JSR       $8452                       ; 29B120/185284
    ENDTASK                                 ; 29B123/0C

L_29B124:
    SETBANK     #$22                        ; 29B124/2822
    ASMCALL     $B1B8                       ; 29B126/D0B8B1
    ONDRAW      $DDD9                       ; 29B129/20D9DD
    SPRITEMAP   $328A84                     ; 29B12C/1A848A32
    ONPOSITION  $D97D                       ; 29B130/217DD9
L_29B133:
    ASMCALL     $8A6C, WAIT #1              ; 29B133/D16C8A
L_29B136:
    JNE         L_29B133                    ; 29B136/0B33B1
    ASMCALL     $89F3                       ; 29B139/D0F389 // Lock camera scrolling
    MOV         $0564,#$01                  ; 29B13C/11640501
    MOV         $0565,#$5A                  ; 29B140/1165055A
    ASMCALL     $8C87                       ; 29B144/D0878C // Unknown ASM $228C87
    .byte       $62                         ; 29B147/62
    .byte       $00                         ; 29B148/00
    .byte       $00                         ; 29B149/00
    MOV         VAR5,#$FF                   ; 29B14A/0D05FF
    MOV         VAR6,#$00                   ; 29B14D/0D0600
    MOV         VAR2,#$00                   ; 29B150/0D0200
    MOV         VAR7,#$00                   ; 29B153/0D0700
    MOV         VAR8,#$00                   ; 29B156/0D0800
    MOV         VAR9,#$00                   ; 29B159/0D0900
    MOV         VAR3,#$00                   ; 29B15C/0D0300
    TASK        L_29B120                    ; 29B15F/0720B1
    ASMCALL     $B6E6                       ; 29B162/D0E6B6
    ZEROVEL                                 ; 29B165/38
    A_JSR       L_29B437                    ; 29B166/1837B4
    MOV         $07F5,#$05                  ; 29B169/11F50705
    SETPOSE     #$00                        ; 29B16D/5000
    ZEROVEL                                 ; 29B16F/38
    LOOP        #2                          ; 29B170/0102
        SETYVEL     #$FFC0, WAIT #15            ; 29B172/CFC0FF
L_29B175:
        SETYVEL     #$FF80, WAIT #15            ; 29B175/CF80FF
L_29B178:
        SETYVEL     #$FFC0, WAIT #15            ; 29B178/CFC0FF
L_29B17B:
        SETYVEL     #$0040, WAIT #15            ; 29B17B/CF4000
L_29B17E:
        SETYVEL     #$0080, WAIT #15            ; 29B17E/CF8000
L_29B181:
        SETYVEL     #$0040, WAIT #15            ; 29B181/CF4000
L_29B184:
    ENDLOOP                                 ; 29B184/02
    A_JMP       L_29B18F                    ; 29B185/178FB1

L_29B188:
    ASMCALL     $B6E6                       ; 29B188/D0E6B6
    ZEROVEL                                 ; 29B18B/38
    A_JSR       L_29B437                    ; 29B18C/1837B4
L_29B18F:
    ASMCALL     $B6AC                       ; 29B18F/D0ACB6
    SETPOSE     #$00                        ; 29B192/5000
    ONTICK      $29B5EE                     ; 29B194/08EEB529
    ZEROVEL                                 ; 29B198/38
    ASMCALL     $B745                       ; 29B199/D045B7
    ADD         REG,#-4                     ; 29B19C/2502FC
    JEQ         L_29B1B7                    ; 29B19F/0AB7B1
L_29B1A2:
    SETYVEL     #$FF80, WAIT #8             ; 29B1A2/C880FF
L_29B1A5:
    SETYVEL     #$FF00, WAIT #8             ; 29B1A5/C800FF
L_29B1A8:
    SETYVEL     #$FF80, WAIT #8             ; 29B1A8/C880FF
L_29B1AB:
    SETYVEL     #$0080, WAIT #8             ; 29B1AB/C88000
L_29B1AE:
    SETYVEL     #$0100, WAIT #8             ; 29B1AE/C80001
L_29B1B1:
    SETYVEL     #$0080, WAIT #8             ; 29B1B1/C88000
L_29B1B4:
    A_JMP       L_29B1A2                    ; 29B1B4/17A2B1

L_29B1B7:
    HALT                                    ; 29B1B7/09

; CODE OR DATA -- $29B1B8 .. $29B1C5
incbinRange "../split/prg/bank29.bin", $11B8, $11C5

L_29B1C5:
    ASMCALL     $B745                       ; 29B1C5/D045B7
L_29B1C8:
    TABLEJMP    #6                          ; 29B1C8/0F06
    .word       L_29B2C0                    ; 29B1CA/C0B2
    .word       L_29B208                    ; 29B1CC/08B2
    .word       L_29B1D6                    ; 29B1CE/D6B1
    .word       L_29B2E1                    ; 29B1D0/E1B2
    .word       L_29B36F                    ; 29B1D2/6FB3
    .word       L_29B409                    ; 29B1D4/09B4
L_29B1D6:
    MOV         VAR2,#$01                   ; 29B1D6/0D0201
    A_JMP       L_29B24C                    ; 29B1D9/174CB2

L_29B1DC:
    XOR         VAR1,#$80                   ; 29B1DC/13010380
    ASMCALL     $8C71                       ; 29B1E0/D0718C // Unknown ASM $228C71
    .byte       $61                         ; 29B1E3/61
    .byte       $01                         ; 29B1E4/01
    .byte       $00                         ; 29B1E5/00
    ZEROVEL                                 ; 29B1E6/38
    ASMCALL     $8C53                       ; 29B1E7/D0538C // Set pose (respect facing)
    .byte       $34                         ; 29B1EA/34
    WAIT        #32                         ; 29B1EB/0620
L_29B1ED:
    INC2POSE    WAIT #4                     ; 29B1ED/94
L_29B1EE:
    LOOP        #23                         ; 29B1EE/0117
        INC2POSE    WAIT #2                     ; 29B1F0/92
L_29B1F1:
        INC2POSE    WAIT #2                     ; 29B1F1/92
L_29B1F2:
        ADDPOSE     #-4                         ; 29B1F2/60FC
    ENDLOOP                                 ; 29B1F4/02
    WAIT        #2                          ; 29B1F5/0602
L_29B1F7:
    DEC2POSE    WAIT #2                     ; 29B1F7/A2
L_29B1F8:
    ADDPOSE     #8, WAIT #2                 ; 29B1F8/6208
L_29B1FA:
    INC2POSE    WAIT #2                     ; 29B1FA/92
L_29B1FB:
    LOOP        #21                         ; 29B1FB/0115
        INC2POSE    WAIT #2                     ; 29B1FD/92
L_29B1FE:
        INC2POSE    WAIT #2                     ; 29B1FE/92
L_29B1FF:
        ADDPOSE     #-4                         ; 29B1FF/60FC
    ENDLOOP                                 ; 29B201/02
    WAIT        #2                          ; 29B202/0602
L_29B204:
    DEC2POSE    WAIT #2                     ; 29B204/A2
L_29B205:
    A_JMP       L_29B23F                    ; 29B205/173FB2

L_29B208:
    MOV         VAR2,#$00                   ; 29B208/0D0200
    A_JMP       L_29B24C                    ; 29B20B/174CB2

L_29B20E:
    XOR         VAR1,#$80                   ; 29B20E/13010380
    ONTICK      $29B589                     ; 29B212/0889B529
L_29B216:
    ASMCALL     $8C53, WAIT #2              ; 29B216/D2538C // Set pose (respect facing)
    .byte       $06                         ; 29B219/06
L_29B21A:
    INC2POSE    WAIT #2                     ; 29B21A/92
L_29B21B:
    INC2POSE    WAIT #2                     ; 29B21B/92
L_29B21C:
    INC2POSE    WAIT #2                     ; 29B21C/92
L_29B21D:
    A_JMP       L_29B216                    ; 29B21D/1716B2

L_29B220:
    ASMCALL     $8C71                       ; 29B220/D0718C // Unknown ASM $228C71
    .byte       $61                         ; 29B223/61
    .byte       $00                         ; 29B224/00
    .byte       $00                         ; 29B225/00
    ZEROVEL                                 ; 29B226/38
    ASMCALL     $8C53                       ; 29B227/D0538C // Set pose (respect facing)
    .byte       $34                         ; 29B22A/34
    WAIT        #2                          ; 29B22B/0602
L_29B22D:
    INC2POSE    WAIT #2                     ; 29B22D/92
L_29B22E:
    INC2POSE    WAIT #2                     ; 29B22E/92
L_29B22F:
    ASMCALL     $8C53, WAIT #2              ; 29B22F/D2538C // Set pose (respect facing)
    .byte       $28                         ; 29B232/28
L_29B233:
    INC2POSE    WAIT #2                     ; 29B233/92
L_29B234:
    A_JMP       L_29B22F                    ; 29B234/172FB2

L_29B237:
    ASMCALL     $8C53, WAIT #4              ; 29B237/D4538C // Set pose (respect facing)
    .byte       $38                         ; 29B23A/38
L_29B23B:
    DEC2POSE    WAIT #4                     ; 29B23B/A4
L_29B23C:
    DEC2POSE                                ; 29B23C/A0
    WAIT        #16                         ; 29B23D/0610
L_29B23F:
    LOOP        #3                          ; 29B23F/0103
        ASMCALL     $8C53, WAIT #2              ; 29B241/D2538C // Set pose (respect facing)
        .byte       $06                         ; 29B244/06
L_29B245:
        INC2POSE    WAIT #2                     ; 29B245/92
L_29B246:
        INC2POSE    WAIT #2                     ; 29B246/92
L_29B247:
        INC2POSE    WAIT #2                     ; 29B247/92
L_29B248:
    ENDLOOP                                 ; 29B248/02
    A_JMP       L_29B41A                    ; 29B249/171AB4

L_29B24C:
    ZEROVEL                                 ; 29B24C/38
    ASMCALL     $B766                       ; 29B24D/D066B7
    ASMCALL     $E26A                       ; 29B250/D06AE2 // Set X velocity (respect facing)
    .word       $0300                       ; 29B253/0003
    ONTICK      $29B5AA                     ; 29B255/08AAB529
L_29B259:
    SETPOSE     #$06, WAIT #2               ; 29B259/5206
L_29B25B:
    INC2POSE    WAIT #2                     ; 29B25B/92
L_29B25C:
    INC2POSE    WAIT #2                     ; 29B25C/92
L_29B25D:
    INC2POSE    WAIT #2                     ; 29B25D/92
L_29B25E:
    A_JMP       L_29B259                    ; 29B25E/1759B2

; CODE OR DATA -- $29B261 .. $29B26A
incbinRange "../split/prg/bank29.bin", $1261, $126A

L_29B26A:
    ASMCALL     $DE4B                       ; 29B26A/D04BDE // Play sound effect
    .byte       $36                         ; 29B26D/36
    XOR         VAR1,#$80                   ; 29B26E/13010380
    ASMCALL     $8C53                       ; 29B272/D0538C // Set pose (respect facing)
    .byte       $0F                         ; 29B275/0F
    ASMCALL     $E26A                       ; 29B276/D06AE2 // Set X velocity (respect facing)
    .word       $FE00                       ; 29B279/00FE
    WAIT        #16                         ; 29B27B/0610
L_29B27D:
    ASMCALL     $E26A                       ; 29B27D/D06AE2 // Set X velocity (respect facing)
    .word       $0400                       ; 29B280/0004
    LOOP        #8                          ; 29B282/0108
        ASMCALL     $8C53, WAIT #2              ; 29B284/D2538C // Set pose (respect facing)
        .byte       $24                         ; 29B287/24
L_29B288:
        INC2POSE    WAIT #2                     ; 29B288/92
L_29B289:
    ENDLOOP                                 ; 29B289/02
    TASK        L_29B2AB                    ; 29B28A/07ABB2
    ASMCALL     $E26A                       ; 29B28D/D06AE2 // Set X velocity (respect facing)
    .word       $0200                       ; 29B290/0002
    WAIT        #16                         ; 29B292/0610
L_29B294:
    ASMCALL     $E26A, WAIT #8              ; 29B294/D86AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 29B297/0001
L_29B299:
    ASMCALL     $E26A                       ; 29B299/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 29B29C/8000
    WAIT        #16                         ; 29B29E/0610
L_29B2A0:
    ZEROVEL                                 ; 29B2A0/38
    WAIT        #32                         ; 29B2A1/0620
L_29B2A3:
    MOV         REG,VAR2                    ; 29B2A3/1E02
    JNE         L_29B1DC                    ; 29B2A5/0BDCB1
    A_JMP       L_29B20E                    ; 29B2A8/170EB2

L_29B2AB:
    ASMCALL     $8C53                       ; 29B2AB/D0538C // Set pose (respect facing)
    .byte       $55                         ; 29B2AE/55
    WAIT        #16                         ; 29B2AF/0610
L_29B2B1:
    ASMCALL     $8C53, WAIT #8              ; 29B2B1/D8538C // Set pose (respect facing)
    .byte       $0E                         ; 29B2B4/0E
L_29B2B5:
    LOOP        #6                          ; 29B2B5/0106
        ASMCALL     $8C53, WAIT #2              ; 29B2B7/D2538C // Set pose (respect facing)
        .byte       $07                         ; 29B2BA/07
L_29B2BB:
        INC2POSE    WAIT #2                     ; 29B2BB/92
L_29B2BC:
        INC2POSE    WAIT #2                     ; 29B2BC/92
L_29B2BD:
        INC2POSE    WAIT #2                     ; 29B2BD/92
L_29B2BE:
    ENDLOOP                                 ; 29B2BE/02
    ENDTASK                                 ; 29B2BF/0C

L_29B2C0:
    ZEROVEL                                 ; 29B2C0/38
    MOV         VAR2,#$35                   ; 29B2C1/0D0235
    MOV         REG,VAR7                    ; 29B2C4/1E07
    A_AND       REG,#$01                    ; 29B2C6/250001
    JEQ         L_29B2D2                    ; 29B2C9/0AD2B2
    TASK        L_29B480                    ; 29B2CC/0780B4
    A_JMP       L_29B2D5                    ; 29B2CF/17D5B2

L_29B2D2:
    TASK        L_29B44F                    ; 29B2D2/074FB4
L_29B2D5:
    ONTICK      $29B5DE                     ; 29B2D5/08DEB529
L_29B2D9:
    SETPOSE     #$01, WAIT #2               ; 29B2D9/5201
L_29B2DB:
    INCPOSE     WAIT #2                     ; 29B2DB/72
L_29B2DC:
    INCPOSE     WAIT #2                     ; 29B2DC/72
L_29B2DD:
    INCPOSE     WAIT #2                     ; 29B2DD/72
L_29B2DE:
    A_JMP       L_29B2D9                    ; 29B2DE/17D9B2

L_29B2E1:
    ZEROVEL                                 ; 29B2E1/38
    ASMCALL     $B693                       ; 29B2E2/D093B6
    JNE         L_29B317                    ; 29B2E5/0B17B3
    TASK        L_29B30B                    ; 29B2E8/070BB3
    WAIT        #60                         ; 29B2EB/063C
L_29B2ED:
    SETYVEL     #$0100                      ; 29B2ED/C00001
    LOOP        #10                         ; 29B2F0/010A
        ASMCALL     $B655, WAIT #8              ; 29B2F2/D855B6
L_29B2F5:
    ENDLOOP                                 ; 29B2F5/02
    SETYVEL     #$0000                      ; 29B2F6/C00000
    LOOP        #4                          ; 29B2F9/0104
        ASMCALL     $B655, WAIT #8              ; 29B2FB/D855B6
L_29B2FE:
    ENDLOOP                                 ; 29B2FE/02
    SETYVEL     #$FF00                      ; 29B2FF/C000FF
    LOOP        #10                         ; 29B302/010A
        ASMCALL     $B655, WAIT #8              ; 29B304/D855B6
L_29B307:
    ENDLOOP                                 ; 29B307/02
    A_JMP       L_29B41A                    ; 29B308/171AB4

L_29B30B:
    LOOP        #63                         ; 29B30B/013F
        ASMCALL     $DE4B                       ; 29B30D/D04BDE // Play sound effect
        .byte       $0C                         ; 29B310/0C
        SETPOSE     #$53, WAIT #2               ; 29B311/5253
L_29B313:
        ADDPOSE     #5, WAIT #2                 ; 29B313/6205
L_29B315:
    ENDLOOP                                 ; 29B315/02
    ENDTASK                                 ; 29B316/0C

L_29B317:
    MOV         VAR2,#$01                   ; 29B317/0D0201
    ONTICK      $29B5FB                     ; 29B31A/08FBB529
L_29B31E:
    SETPOSE     #$53, WAIT #2               ; 29B31E/5253
L_29B320:
    ADDPOSE     #5, WAIT #2                 ; 29B320/6205
L_29B322:
    A_JMP       L_29B31E                    ; 29B322/171EB3

L_29B325:
    ZEROVEL                                 ; 29B325/38
    WAIT        #30                         ; 29B326/061E
L_29B328:
    ASMCALL     $B641                       ; 29B328/D041B6
    TASK        L_29B362                    ; 29B32B/0762B3
    MOV         VAR3,#$01                   ; 29B32E/0D0301
    SETYVEL     #$0800                      ; 29B331/C00008
    WAIT        #8                          ; 29B334/0608
L_29B336:
    SETYVEL     #$0400                      ; 29B336/C00004
    WAIT        #8                          ; 29B339/0608
L_29B33B:
    SETYVEL     #$0200, WAIT #5             ; 29B33B/C50002
L_29B33E:
    SETYVEL     #$0100, WAIT #5             ; 29B33E/C50001
L_29B341:
    SETYVEL     #$00C0, WAIT #5             ; 29B341/C5C000
L_29B344:
    SETYVEL     #$0000                      ; 29B344/C00000
    WAIT        #16                         ; 29B347/0610
L_29B349:
    SETYVEL     #$FF40, WAIT #5             ; 29B349/C540FF
L_29B34C:
    SETYVEL     #$FF00, WAIT #5             ; 29B34C/C500FF
L_29B34F:
    SETYVEL     #$FE00, WAIT #5             ; 29B34F/C500FE
L_29B352:
    SETYVEL     #$FC00                      ; 29B352/C000FC
    WAIT        #8                          ; 29B355/0608
L_29B357:
    SETYVEL     #$F800                      ; 29B357/C000F8
    WAIT        #8                          ; 29B35A/0608
L_29B35C:
    MOV         VAR3,#$00                   ; 29B35C/0D0300
    A_JMP       L_29B41E                    ; 29B35F/171EB4

L_29B362:
    LOOP        #19                         ; 29B362/0113
        ASMCALL     $DE4B                       ; 29B364/D04BDE // Play sound effect
        .byte       $0C                         ; 29B367/0C
        SETPOSE     #$56, WAIT #2               ; 29B368/5256
L_29B36A:
        INCPOSE     WAIT #2                     ; 29B36A/72
L_29B36B:
    ENDLOOP                                 ; 29B36B/02
    SETPOSE     #$56, WAIT #2               ; 29B36C/5256
L_29B36E:
    ENDTASK                                 ; 29B36E/0C

L_29B36F:
    ASMCALL     $8851                       ; 29B36F/D05188 // Face towards Kirby
    ZEROVEL                                 ; 29B372/38
    SETPOSE     #$00                        ; 29B373/5000
    WAIT        #24                         ; 29B375/0618
L_29B377:
    ASMCALL     $DE4B                       ; 29B377/D04BDE // Play sound effect
    .byte       $36                         ; 29B37A/36
    TASK        L_29B3F7                    ; 29B37B/07F7B3
    ASMCALL     $932F                       ; 29B37E/D02F93 // Set X velocity to `arg2` (respect facing), Y velocity to `arg3`, then wait `arg1` frames
    .byte       $18                         ; 29B381/18
    .word       $FC00                       ; 29B382/00FC
    .word       $0200                       ; 29B384/0002
L_29B386:
    ASMCALL     $9340, WAIT #8              ; 29B386/D84093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF00                       ; 29B389/00FF
    .word       $0100                       ; 29B38B/0001
L_29B38D:
    ASMCALL     $8C53                       ; 29B38D/D0538C // Set pose (respect facing)
    .byte       $54                         ; 29B390/54
    ASMCALL     $9340, WAIT #8              ; 29B391/D84093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF80                       ; 29B394/80FF
    .word       $0100                       ; 29B396/0001
L_29B398:
    ASMCALL     $9340, WAIT #8              ; 29B398/D84093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0000                       ; 29B39B/0000
    .word       $0100                       ; 29B39D/0001
L_29B39F:
    ASMCALL     $9340, WAIT #8              ; 29B39F/D84093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0100                       ; 29B3A2/0001
    .word       $0100                       ; 29B3A4/0001
L_29B3A6:
    TASK        L_29B400                    ; 29B3A6/0700B4
    ASMCALL     $9340, WAIT #4              ; 29B3A9/D44093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0300                       ; 29B3AC/0003
    .word       $0080                       ; 29B3AE/8000
L_29B3B0:
    ASMCALL     $932F                       ; 29B3B0/D02F93 // Set X velocity to `arg2` (respect facing), Y velocity to `arg3`, then wait `arg1` frames
    .byte       $18                         ; 29B3B3/18
    .word       $0400                       ; 29B3B4/0004
    .word       $0000                       ; 29B3B6/0000
L_29B3B8:
    ASMCALL     $9340, WAIT #8              ; 29B3B8/D84093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0300                       ; 29B3BB/0003
    .word       $FF00                       ; 29B3BD/00FF
L_29B3BF:
    ASMCALL     $9340, WAIT #8              ; 29B3BF/D84093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0300                       ; 29B3C2/0003
    .word       $FE00                       ; 29B3C4/00FE
L_29B3C6:
    ASMCALL     $8C53                       ; 29B3C6/D0538C // Set pose (respect facing)
    .byte       $55                         ; 29B3C9/55
    ASMCALL     $9340, WAIT #8              ; 29B3CA/D84093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0200                       ; 29B3CD/0002
    .word       $FF80                       ; 29B3CF/80FF
L_29B3D1:
    ASMCALL     $9340, WAIT #8              ; 29B3D1/D84093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0100                       ; 29B3D4/0001
    .word       $FF00                       ; 29B3D6/00FF
L_29B3D8:
    ASMCALL     $8C53                       ; 29B3D8/D0538C // Set pose (respect facing)
    .byte       $0E                         ; 29B3DB/0E
    ASMCALL     $9340, WAIT #8              ; 29B3DC/D84093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0080                       ; 29B3DF/8000
    .word       $FF00                       ; 29B3E1/00FF
L_29B3E3:
    ASMCALL     $9340                       ; 29B3E3/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0000                       ; 29B3E6/0000
    .word       $FF80                       ; 29B3E8/80FF
    LOOP        #4                          ; 29B3EA/0104
        ASMCALL     $8C53, WAIT #2              ; 29B3EC/D2538C // Set pose (respect facing)
        .byte       $07                         ; 29B3EF/07
L_29B3F0:
        INC2POSE    WAIT #2                     ; 29B3F0/92
L_29B3F1:
        INC2POSE    WAIT #2                     ; 29B3F1/92
L_29B3F2:
        INC2POSE    WAIT #2                     ; 29B3F2/92
L_29B3F3:
    ENDLOOP                                 ; 29B3F3/02
    A_JMP       L_29B41A                    ; 29B3F4/171AB4

L_29B3F7:
    LOOP        #8                          ; 29B3F7/0108
        ASMCALL     $8C53                       ; 29B3F9/D0538C // Set pose (respect facing)
        .byte       $25                         ; 29B3FC/25
        INC2POSE    WAIT #2                     ; 29B3FD/92
L_29B3FE:
    ENDLOOP                                 ; 29B3FE/02
    ENDTASK                                 ; 29B3FF/0C

L_29B400:
    LOOP        #11                         ; 29B400/010B
        ASMCALL     $8C53, WAIT #2              ; 29B402/D2538C // Set pose (respect facing)
        .byte       $24                         ; 29B405/24
L_29B406:
        INC2POSE    WAIT #2                     ; 29B406/92
L_29B407:
    ENDLOOP                                 ; 29B407/02
    ENDTASK                                 ; 29B408/0C

L_29B409:
    LOOP        #3                          ; 29B409/0103
        ASMCALL     $B6D8                       ; 29B40B/D0D8B6
        A_JSR       L_29B437                    ; 29B40E/1837B4
        A_JSR       L_29B444                    ; 29B411/1844B4
        SETPOSE     #$FF, WAIT #2               ; 29B414/52FF
L_29B416:
    ENDLOOP                                 ; 29B416/02
    A_JMP       L_29B188                    ; 29B417/1788B1

L_29B41A:
    ZEROVEL                                 ; 29B41A/38
    A_JSR       L_29B444                    ; 29B41B/1844B4
L_29B41E:
    SETPOSE     #$FF                        ; 29B41E/50FF
    ADD         VAR8,#1                     ; 29B420/13080201
    MOV         REG,VAR8                    ; 29B424/1E08
    A_AND       REG,#$03                    ; 29B426/250003
    JEQ         L_29B432                    ; 29B429/0A32B4
    ASMCALL     $B758                       ; 29B42C/D058B7
L_29B42F:
    A_JMP       L_29B188                    ; 29B42F/1788B1

L_29B432:
    MOV         REG,#$05                    ; 29B432/1B05
    A_JMP       L_29B1C8                    ; 29B434/17C8B1

L_29B437:
    ASMCALL     $DE4B                       ; 29B437/D04BDE // Play sound effect
    .byte       $54                         ; 29B43A/54
    SETPOSE     #$1D, WAIT #2               ; 29B43B/521D
L_29B43D:
    DECPOSE     WAIT #2                     ; 29B43D/82
L_29B43E:
    DECPOSE     WAIT #2                     ; 29B43E/82
L_29B43F:
    DECPOSE     WAIT #2                     ; 29B43F/82
L_29B440:
    DECPOSE     WAIT #2                     ; 29B440/82
L_29B441:
    SETPOSE     #$00, WAIT #15              ; 29B441/5F00
L_29B443:
    A_RTS                                   ; 29B443/19

L_29B444:
    ASMCALL     $DE4B                       ; 29B444/D04BDE // Play sound effect
    .byte       $54                         ; 29B447/54
    SETPOSE     #$19, WAIT #2               ; 29B448/5219
L_29B44A:
    INCPOSE     WAIT #2                     ; 29B44A/72
L_29B44B:
    INCPOSE     WAIT #2                     ; 29B44B/72
L_29B44C:
    INCPOSE     WAIT #2                     ; 29B44C/72
L_29B44D:
    INCPOSE     WAIT #2                     ; 29B44D/72
L_29B44E:
    A_RTS                                   ; 29B44E/19

L_29B44F:
    WAIT        #20                         ; 29B44F/0614
L_29B451:
    ASMCALL     $8C87                       ; 29B451/D0878C // Unknown ASM $228C87
    .byte       $60                         ; 29B454/60
    .byte       $00                         ; 29B455/00
    .byte       $47                         ; 29B456/47
    ASMCALL     $8C87                       ; 29B457/D0878C // Unknown ASM $228C87
    .byte       $60                         ; 29B45A/60
    .byte       $00                         ; 29B45B/00
    .byte       $B8                         ; 29B45C/B8
    ASMCALL     $DE4B                       ; 29B45D/D04BDE // Play sound effect
    .byte       $46                         ; 29B460/46
    WAIT        #16                         ; 29B461/0610
L_29B463:
    ASMCALL     $8C87                       ; 29B463/D0878C // Unknown ASM $228C87
    .byte       $60                         ; 29B466/60
    .byte       $00                         ; 29B467/00
    .byte       $64                         ; 29B468/64
    ASMCALL     $8C87                       ; 29B469/D0878C // Unknown ASM $228C87
    .byte       $60                         ; 29B46C/60
    .byte       $00                         ; 29B46D/00
    .byte       $9C                         ; 29B46E/9C
    ASMCALL     $DE4B                       ; 29B46F/D04BDE // Play sound effect
    .byte       $46                         ; 29B472/46
    WAIT        #16                         ; 29B473/0610
L_29B475:
    ASMCALL     $8C87                       ; 29B475/D0878C // Unknown ASM $228C87
    .byte       $60                         ; 29B478/60
    .byte       $00                         ; 29B479/00
    .byte       $80                         ; 29B47A/80
    ASMCALL     $DE4B                       ; 29B47B/D04BDE // Play sound effect
    .byte       $46                         ; 29B47E/46
    ENDTASK                                 ; 29B47F/0C

L_29B480:
    WAIT        #20                         ; 29B480/0614
L_29B482:
    ASMCALL     $8C87                       ; 29B482/D0878C // Unknown ASM $228C87
    .byte       $60                         ; 29B485/60
    .byte       $00                         ; 29B486/00
    .byte       $80                         ; 29B487/80
    ASMCALL     $DE4B                       ; 29B488/D04BDE // Play sound effect
    .byte       $46                         ; 29B48B/46
    WAIT        #16                         ; 29B48C/0610
L_29B48E:
    ASMCALL     $8C87                       ; 29B48E/D0878C // Unknown ASM $228C87
    .byte       $60                         ; 29B491/60
    .byte       $00                         ; 29B492/00
    .byte       $64                         ; 29B493/64
    ASMCALL     $8C87                       ; 29B494/D0878C // Unknown ASM $228C87
    .byte       $60                         ; 29B497/60
    .byte       $00                         ; 29B498/00
    .byte       $9C                         ; 29B499/9C
    ASMCALL     $DE4B                       ; 29B49A/D04BDE // Play sound effect
    .byte       $46                         ; 29B49D/46
    WAIT        #16                         ; 29B49E/0610
L_29B4A0:
    ASMCALL     $8C87                       ; 29B4A0/D0878C // Unknown ASM $228C87
    .byte       $60                         ; 29B4A3/60
    .byte       $00                         ; 29B4A4/00
    .byte       $47                         ; 29B4A5/47
    ASMCALL     $8C87                       ; 29B4A6/D0878C // Unknown ASM $228C87
    .byte       $60                         ; 29B4A9/60
    .byte       $00                         ; 29B4AA/00
    .byte       $B8                         ; 29B4AB/B8
    ASMCALL     $DE4B                       ; 29B4AC/D04BDE // Play sound effect
    .byte       $46                         ; 29B4AF/46
    ENDTASK                                 ; 29B4B0/0C

L_29B4B1:
    ZEROVEL                                 ; 29B4B1/38
    ASMCALL     $859F                       ; 29B4B2/D09F85 // Unknown ASM $22859F
    .word       $0018                       ; 29B4B5/1800
    MOV         REG,VAR9                    ; 29B4B7/1E09
    A_AND       REG,#$02                    ; 29B4B9/250002
    JEQ         L_29B4CA                    ; 29B4BC/0ACAB4
    ASMCALL_l   $219952                     ; 29B4BF/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 29B4C3/00
    .byte       $00                         ; 29B4C4/00
    .byte       $17                         ; 29B4C5/17
    .byte       $00                         ; 29B4C6/00
    A_JSR       $83C8                       ; 29B4C7/18C883
L_29B4CA:
    ASMCALL_l   $219952                     ; 29B4CA/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 29B4CE/00
    .byte       $00                         ; 29B4CF/00
    .byte       $0C                         ; 29B4D0/0C
    .byte       $00                         ; 29B4D1/00
    ASMCALL     $DE4B                       ; 29B4D2/D04BDE // Play sound effect
    .byte       $34                         ; 29B4D5/34
    ASMCALL     $8860                       ; 29B4D6/D06088
    ASMCALL     $8C53                       ; 29B4D9/D0538C // Set pose (respect facing)
    .byte       $2F                         ; 29B4DC/2F
    MOV         REG,VAR3                    ; 29B4DD/1E03
    JEQ         L_29B4E7                    ; 29B4DF/0AE7B4
    ADDPOSE     #4                          ; 29B4E2/6004
    MOV         VAR3,#$00                   ; 29B4E4/0D0300
L_29B4E7:
    TASK        L_29B559                    ; 29B4E7/0759B5
    ASMCALL     $E26A                       ; 29B4EA/D06AE2 // Set X velocity (respect facing)
    .word       $0400                       ; 29B4ED/0004
    WAIT        #16                         ; 29B4EF/0610
L_29B4F1:
    ASMCALL     $E26A                       ; 29B4F1/D06AE2 // Set X velocity (respect facing)
    .word       $0200                       ; 29B4F4/0002
    WAIT        #16                         ; 29B4F6/0610
L_29B4F8:
    ASMCALL     $E26A                       ; 29B4F8/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 29B4FB/0001
    WAIT        #16                         ; 29B4FD/0610
L_29B4FF:
    ASMCALL     $E26A                       ; 29B4FF/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 29B502/8000
    WAIT        #16                         ; 29B504/0610
L_29B506:
    ASMCALL     $E26A                       ; 29B506/D06AE2 // Set X velocity (respect facing)
    .word       $0040                       ; 29B509/4000
    WAIT        #16                         ; 29B50B/0610
L_29B50D:
    ZEROVEL                                 ; 29B50D/38
    A_JSR       L_29B444                    ; 29B50E/1844B4
    A_AND       VAR9,#$02                   ; 29B511/13090002
    MOV         REG,VAR9                    ; 29B515/1E09
    JEQ         L_29B41E                    ; 29B517/0A1EB4
    ASMCALL     $B6DF                       ; 29B51A/D0DFB6
    A_JSR       L_29B437                    ; 29B51D/1837B4
    ASMCALL     $DE45                       ; 29B520/D045DE // Play music
    .byte       $17                         ; 29B523/17
    TASK        L_29B55F                    ; 29B524/075FB5
    LOOP        #32                         ; 29B527/0120
        SETPOSE     #$22, WAIT #2               ; 29B529/5222
L_29B52B:
        INCPOSE     WAIT #2                     ; 29B52B/72
L_29B52C:
    ENDLOOP                                 ; 29B52C/02
    LOOP        #12                         ; 29B52D/010C
        SETPOSE     #$05, WAIT #2               ; 29B52F/5205
L_29B531:
        ADDPOSE     #12, WAIT #2                ; 29B531/620C
L_29B533:
    ENDLOOP                                 ; 29B533/02
    LOOP        #12                         ; 29B534/010C
        SETPOSE     #$10, WAIT #2               ; 29B536/5210
L_29B538:
        INC2POSE    WAIT #2                     ; 29B538/92
L_29B539:
    ENDLOOP                                 ; 29B539/02
    LOOP        #12                         ; 29B53A/010C
        SETPOSE     #$11, WAIT #2               ; 29B53C/5211
L_29B53E:
        INCPOSE     WAIT #2                     ; 29B53E/72
L_29B53F:
    ENDLOOP                                 ; 29B53F/02
    INCPOSE     WAIT #4                     ; 29B540/74
L_29B541:
    INCPOSE     WAIT #4                     ; 29B541/74
L_29B542:
    INCPOSE     WAIT #4                     ; 29B542/74
L_29B543:
    SETPOSE     #$FF                        ; 29B543/50FF
    WAIT        #60                         ; 29B545/063C
L_29B547:
    ASMCALL     $8FC6                       ; 29B547/D0C68F // Unknown ASM $228FC6
    .byte       $19                         ; 29B54A/19
    WAIT        #120                        ; 29B54B/0678
L_29B54D:
    LOOP        #4                          ; 29B54D/0104
        ASMCALL     $C94C, WAIT #8              ; 29B54F/D84CC9 // Palette fade dark in step
L_29B552:
    ENDLOOP                                 ; 29B552/02
    WAIT        #120                        ; 29B553/0678
L_29B555:
    ASMCALL     $B567                       ; 29B555/D067B5
    END                                     ; 29B558/00

L_29B559:
    LOOP        #20                         ; 29B559/0114
        DEC2POSE    WAIT #2                     ; 29B55B/A2
L_29B55C:
        INC2POSE    WAIT #2                     ; 29B55C/92
L_29B55D:
    ENDLOOP                                 ; 29B55D/02
    ENDTASK                                 ; 29B55E/0C

L_29B55F:
    LOOP        #93                         ; 29B55F/015D
        ASMCALL     $DE4B, WAIT #3              ; 29B561/D34BDE // Play sound effect
        .byte       $2F                         ; 29B564/2F
L_29B565:
    ENDLOOP                                 ; 29B565/02
    ENDTASK                                 ; 29B566/0C

; CODE OR DATA -- $29B567 .. $29B79D
incbinRange "../split/prg/bank29.bin", $1567, $179D

L_29B79D:
    SETBANK     #$22                        ; 29B79D/2822
    ONDRAW      $DDD9                       ; 29B79F/20D9DD
    SPRITEMAP   $328A84                     ; 29B7A2/1A848A32
    ONPOSITION  $D97D                       ; 29B7A6/217DD9
    MOV         VAR9,#$00                   ; 29B7A9/0D0900
    MOV         VAR8,#$00                   ; 29B7AC/0D0800
    ONTICK      $29B88F                     ; 29B7AF/088FB829
    MOV         REG,VAR0                    ; 29B7B3/1E00
    JNE         L_29B7FD                    ; 29B7B5/0BFDB7
    ASMCALL     $8C53                       ; 29B7B8/D0538C // Set pose (respect facing)
    .byte       $4A                         ; 29B7BB/4A
    ASMCALL     $9340, WAIT #2              ; 29B7BC/D24093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0400                       ; 29B7BF/0004
    .word       $0400                       ; 29B7C1/0004
L_29B7C3:
    ASMCALL     $9340, WAIT #2              ; 29B7C3/D24093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0400                       ; 29B7C6/0004
    .word       $0200                       ; 29B7C8/0002
L_29B7CA:
    ASMCALL     $9340, WAIT #2              ; 29B7CA/D24093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0300                       ; 29B7CD/0003
    .word       $FE00                       ; 29B7CF/00FE
L_29B7D1:
    ASMCALL     $9340, WAIT #2              ; 29B7D1/D24093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0200                       ; 29B7D4/0002
    .word       $FC00                       ; 29B7D6/00FC
L_29B7D8:
    MOV         VAR6,#$00                   ; 29B7D8/0D0600
    ASMCALL     $B996                       ; 29B7DB/D096B9
    LOOP        REG                         ; 29B7DE/22
        ZEROVEL                                 ; 29B7DF/38
        ASMCALL     $8C53                       ; 29B7E0/D0538C // Set pose (respect facing)
        .byte       $44                         ; 29B7E3/44
        ASMCALL     $B9A0                       ; 29B7E4/D0A0B9
L_29B7E7:
        ADDPOSE     #8, WAIT #2                 ; 29B7E7/6208
L_29B7E9:
        ASMCALL     $B92C                       ; 29B7E9/D02CB9
        ASMCALL     $E26A, WAIT #2              ; 29B7EC/D26AE2 // Set X velocity (respect facing)
        .word       $FE00                       ; 29B7EF/00FE
L_29B7F1:
        ADDPOSE     #-8                         ; 29B7F1/60F8
        ASMCALL     $E26A, WAIT #2              ; 29B7F3/D26AE2 // Set X velocity (respect facing)
        .word       $0200                       ; 29B7F6/0002
L_29B7F8:
    ENDLOOP                                 ; 29B7F8/02
    ASMCALL     $B8BE                       ; 29B7F9/D0BEB8
    END                                     ; 29B7FC/00

L_29B7FD:
    SETPOSE     #$FF                        ; 29B7FD/50FF
    WAIT        #32                         ; 29B7FF/0620
L_29B801:
    ASMCALL     $8C53                       ; 29B801/D0538C // Set pose (respect facing)
    .byte       $4A                         ; 29B804/4A
    ASMCALL     $9340, WAIT #4              ; 29B805/D44093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FD00                       ; 29B808/00FD
    .word       $FC00                       ; 29B80A/00FC
L_29B80C:
    ADDPOSE     #-4                         ; 29B80C/60FC
    ASMCALL     $9340, WAIT #4              ; 29B80E/D44093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FEC0                       ; 29B811/C0FE
    .word       $FE00                       ; 29B813/00FE
L_29B815:
    ASMCALL     $9340, WAIT #4              ; 29B815/D44093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $FF80                       ; 29B818/80FF
    .word       $FF80                       ; 29B81A/80FF
L_29B81C:
    SETXVEL     #$0000                      ; 29B81C/B00000
    ASMCALL     $DE4B                       ; 29B81F/D04BDE // Play sound effect
    .byte       $4C                         ; 29B822/4C
    LOOP        #21                         ; 29B823/0115
        SETYVEL     #$FF00, WAIT #2             ; 29B825/C200FF
L_29B828:
        INC2POSE                                ; 29B828/90
        SETYVEL     #$0100, WAIT #2             ; 29B829/C20001
L_29B82C:
        DEC2POSE                                ; 29B82C/A0
    ENDLOOP                                 ; 29B82D/02
    ASMCALL     $DE4B                       ; 29B82E/D04BDE // Play sound effect
    .byte       $4E                         ; 29B831/4E
    INC2POSE                                ; 29B832/90
    ASMCALL     $9340, WAIT #5              ; 29B833/D54093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0400                       ; 29B836/0004
    .word       $0100                       ; 29B838/0001
L_29B83A:
    INC2POSE                                ; 29B83A/90
    ASMCALL     $E26A, WAIT #4              ; 29B83B/D46AE2 // Set X velocity (respect facing)
    .word       $0200                       ; 29B83E/0002
L_29B840:
    ASMCALL     $E26A, WAIT #4              ; 29B840/D46AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 29B843/0001
L_29B845:
    A_JSR       L_29B867                    ; 29B845/1867B8
    ASMCALL     $9340, WAIT #4              ; 29B848/D44093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0080                       ; 29B84B/8000
    .word       $0080                       ; 29B84D/8000
L_29B84F:
    ASMCALL     $9340, WAIT #4              ; 29B84F/D44093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0020                       ; 29B852/2000
    .word       $0020                       ; 29B854/2000
L_29B856:
    ZEROVEL                                 ; 29B856/38
    LOOP        #5                          ; 29B857/0105
        A_JSR       L_29B867                    ; 29B859/1867B8
        WAIT        #8                          ; 29B85C/0608
L_29B85E:
    ENDLOOP                                 ; 29B85E/02
    WAIT        #31                         ; 29B85F/061F
L_29B861:
    ASMCALL     $E26A, WAIT #4              ; 29B861/D46AE2 // Set X velocity (respect facing)
    .word       $FE00                       ; 29B864/00FE
L_29B866:
    END                                     ; 29B866/00

L_29B867:
    ASMCALL     $B693                       ; 29B867/D093B6
    JNE         L_29B874                    ; 29B86A/0B74B8
L_29B86D:
    ASMCALL     $B8DA                       ; 29B86D/D0DAB8
    DECPOSE                                 ; 29B870/80
    A_JMP       L_29B88A                    ; 29B871/178AB8

L_29B874:
    MOV         REG,VAR8                    ; 29B874/1E08
    JEQ         L_29B87F                    ; 29B876/0A7FB8
    MOV         VAR8,#$00                   ; 29B879/0D0800
    A_JMP       L_29B86D                    ; 29B87C/176DB8

L_29B87F:
    ASMCALL     $B8DA                       ; 29B87F/D0DAB8
    DECPOSE     WAIT #1                     ; 29B882/81
    ASMCALL     $B8DA                       ; 29B883/D0DAB8
    DECPOSE     WAIT #2                     ; 29B886/82
    MOV         VAR8,#$01                   ; 29B887/0D0801
L_29B88A:
    ASMCALL     $DE4B                       ; 29B88A/D04BDE // Play sound effect
    .byte       $19                         ; 29B88D/19
    A_RTS                                   ; 29B88E/19

; CODE OR DATA -- $29B88F .. $29B9AF
incbinRange "../split/prg/bank29.bin", $188F, $19AF

Script60_NightmareProjectile:
    SETBANK     #$22                        ; 29B9AF/2822
    ONDRAW      $DA89                       ; 29B9B1/2089DA
    SPRITEMAP   $328A84                     ; 29B9B4/1A848A32
    ONPOSITION  $D9BB                       ; 29B9B8/21BBD9
    MOV         REG,VAR0                    ; 29B9BB/1E00
    A_AND       REG,#$80                    ; 29B9BD/250080
    JNE         L_29B9D2                    ; 29B9C0/0BD2B9
    ASMCALL     $BAA3                       ; 29B9C3/D0A3BA
    ONTICK      $29B9E2                     ; 29B9C6/08E2B929
L_29B9CA:
    SETPOSE     #$1E, WAIT #6               ; 29B9CA/561E
L_29B9CC:
    INCPOSE     WAIT #6                     ; 29B9CC/76
L_29B9CD:
    INCPOSE     WAIT #6                     ; 29B9CD/76
L_29B9CE:
    INCPOSE     WAIT #6                     ; 29B9CE/76
L_29B9CF:
    A_JMP       L_29B9CA                    ; 29B9CF/17CAB9

L_29B9D2:
    ASMCALL     $BAD1                       ; 29B9D2/D0D1BA
    ONTICK      $29B9E2                     ; 29B9D5/08E2B929
    A_JMP       L_29B9CA                    ; 29B9D9/17CAB9

L_29B9DC:
    MOV         VAR0,#$05                   ; 29B9DC/0D0005
    JML         $A4B9FC                     ; 29B9DF/03FCB9A4

; CODE OR DATA -- $29B9E3 .. $29BB25
incbinRange "../split/prg/bank29.bin", $19E3, $1B25

Script62_NightmareWizard:
    SETBANK     #$22                        ; 29BB25/2822
    ONDRAW      $DDD9                       ; 29BB27/20D9DD
    SPRITEMAP   $328A84                     ; 29BB2A/1A848A32
    ONPOSITION  $D97D                       ; 29BB2E/217DD9
    MOV         VAR3,#$01                   ; 29BB31/0D0301
    MOV         VAR4,#$01                   ; 29BB34/0D0401
    MOV         VAR5,#$FF                   ; 29BB37/0D05FF
    MOV         VAR6,#$FF                   ; 29BB3A/0D06FF
    A_JMP       L_29BBEE                    ; 29BB3D/17EEBB

; CODE OR DATA -- $29BB40 .. $29BBEE
incbinRange "../split/prg/bank29.bin", $1B40, $1BEE

L_29BBEE:
    ONTICK      $29BB40                     ; 29BBEE/0840BB29
    SETPOSE     #$FF                        ; 29BBF2/50FF
L_29BBF4:
    HALT                                    ; 29BBF4/09

L_29BBF5:
    ONTICK      $29BB47                     ; 29BBF5/0847BB29
    A_JSR       L_29BC18                    ; 29BBF9/1818BC
    A_JMP       L_29BBEE                    ; 29BBFC/17EEBB

L_29BBFF:
    ONTICK      $29BB47                     ; 29BBFF/0847BB29
    A_JSR       L_29BC18                    ; 29BC03/1818BC
    ONTICK      $29BB4E                     ; 29BC06/084EBB29
    SETPOSE     #$FF                        ; 29BC0A/50FF
    WAIT        #243                        ; 29BC0C/06F3
L_29BC0E:
    ASMCALL     $BC25                       ; 29BC0E/D025BC
    LOOP        #14                         ; 29BC11/010E
        SETPOSE     #$16, WAIT #4               ; 29BC13/5416
L_29BC15:
        INCPOSE     WAIT #4                     ; 29BC15/74
L_29BC16:
        INCPOSE     WAIT #4                     ; 29BC16/74
L_29BC17:
    ENDLOOP                                 ; 29BC17/02
L_29BC18:
    LOOP        #3                          ; 29BC18/0103
        SETPOSE     #$4E, WAIT #1               ; 29BC1A/514E
L_29BC1C:
        INCPOSE     WAIT #1                     ; 29BC1C/71
L_29BC1D:
        INCPOSE     WAIT #1                     ; 29BC1D/71
L_29BC1E:
        INCPOSE     WAIT #1                     ; 29BC1E/71
L_29BC1F:
        INCPOSE     WAIT #1                     ; 29BC1F/71
L_29BC20:
    ENDLOOP                                 ; 29BC20/02
    ASMCALL     $BC2D                       ; 29BC21/D02DBC
    A_RTS                                   ; 29BC24/19

; CODE OR DATA -- $29BC25 .. $29BF14
incbinRange "../split/prg/bank29.bin", $1C25, $1F14

L_29BF14:
    MOV         $0043,#$D0                  ; 29BF14/114300D0
    SETBANK     #$22                        ; 29BF18/2822
    SPRITEMAP   $329F37                     ; 29BF1A/1A379F32
    ONPOSITION  $D97D                       ; 29BF1E/217DD9
    ONDRAW      $DA89                       ; 29BF21/2089DA
    MOV         VAR0,#$01                   ; 29BF24/0D0001
    MOV         REG,VAR1                    ; 29BF27/1E01
    JNE         L_29BF32                    ; 29BF29/0B32BF
    ADDYPOS     #-9                         ; 29BF2C/2DF7FF
    A_JMP       L_29BF35                    ; 29BF2F/1735BF

L_29BF32:
    ADDYPOS     #5                          ; 29BF32/2D0500
L_29BF35:
    SETPOSE     VAR1                        ; 29BF35/2401
    MOV         REG,$05A2                   ; 29BF37/1CA205
    JNE         L_29BF57                    ; 29BF3A/0B57BF
    ASMCALL     $BF71                       ; 29BF3D/D071BF
    ONTICK      $29BFB7                     ; 29BF40/08B7BF29
L_29BF44:
    HALT                                    ; 29BF44/09

L_29BF45:
    INC2POSE                                ; 29BF45/90
    ASMCALL     $859F                       ; 29BF46/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 29BF49/0C00
    WAIT        #30                         ; 29BF4B/061E
L_29BF4D:
    LOOP        #4                          ; 29BF4D/0104
        ASMCALL     $C996, WAIT #1              ; 29BF4F/D196C9 // Palette fade (out?) step
L_29BF52:
    ENDLOOP                                 ; 29BF52/02
    ASMCALL     $BF85                       ; 29BF53/D085BF
    HALT                                    ; 29BF56/09

L_29BF57:
    ASMCALL     $DFE5                       ; 29BF57/D0E5DF // Freeze all objects
    INC2POSE                                ; 29BF5A/90
    WAIT        #30                         ; 29BF5B/061E
L_29BF5D:
    MOV         $05A2,#$00                  ; 29BF5D/11A20500
    ASMCALL     $DFFB                       ; 29BF61/D0FBDF // Unfreeze all objects
    ASMCALL     $859F                       ; 29BF64/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 29BF67/0C00
    JSL         L_28BF35                    ; 29BF69/0435BF28
    JML         $22818B                     ; 29BF6D/038B8122

; CODE OR DATA -- $29BF71 .. $2AA000
incbinRange "../split/prg/bank29.bin", $1F71, $2000