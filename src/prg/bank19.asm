
.segment "PRG19": absolute

L_19A000:
    MOV         $0603,#$FF                  ; 19A000/110306FF
    ONDRAW      $DDAA                       ; 19A004/20AADD
    ASMCALL     Load_Palette                ; 19A007/D061DF // Load_Palette, palette, start_index, entries
    .word       $AFD3                       ; 19A00A/D3AF
    .byte       $18                         ; 19A00C/18
    .byte       $08                         ; 19A00D/08
    MOV         VAR8,#$00                   ; 19A00E/0D0800
    MOV         $05FE,#$00                  ; 19A011/11FE0500
    ASMCALL     $DEE1                       ; 19A015/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $03                         ; 19A018/03
    .byte       $04                         ; 19A019/04
    .byte       $00                         ; 19A01A/00
    .byte       $00                         ; 19A01B/00
    .byte       $00                         ; 19A01C/00
    .byte       $00                         ; 19A01D/00
    .byte       $00                         ; 19A01E/00
    ONTICK      $19ACC1                     ; 19A01F/08C1AC19
    ADDXPOS     #-8                         ; 19A023/2CF8FF
    SPRITEMAP   L_1A9910                     ; 19A026/1A10991A
    SETPOSE     #$08                        ; 19A02A/5008
    WAIT        #27                         ; 19A02C/061B
L_19A02E:
    ASMCALL     $884D                       ; 19A02E/D04D88
    ONTICK      $19AD16                     ; 19A031/0816AD19
    SETPOSE     #$0E                        ; 19A035/500E
    ASMCALL     $DE4B                       ; 19A037/D04BDE // Play sound effect
    .byte       $05                         ; 19A03A/05
    MOV         VAR0,#$00                   ; 19A03B/0D0000
L_19A03E:
    ASMCALL     $AE90                       ; 19A03E/D090AE
    JNE         L_19A049                    ; 19A041/0B49A0
    WAIT        #1                          ; 19A044/0601
L_19A046:
    A_JMP       L_19A03E                    ; 19A046/173EA0

L_19A049:
    MOV         VAR1,#$00                   ; 19A049/0D0100
    A_JMP       L_19A069                    ; 19A04C/1769A0

L_19A04F:
    ASMCALL     $AF06                       ; 19A04F/D006AF
    ASMCALL     $AEF1                       ; 19A052/D0F1AE
    MOV         VAR3,#$00                   ; 19A055/0D0300
    TASK        L_19A13D                    ; 19A058/073DA1
L_19A05B:
    ASMCALL     $95CD                       ; 19A05B/D0CD95
    ASMCALL     $AE90                       ; 19A05E/D090AE
    JNE         L_19A06F                    ; 19A061/0B6FA0
    WAIT        #1                          ; 19A064/0601
L_19A066:
    A_JMP       L_19A05B                    ; 19A066/175BA0

L_19A069:
    MOV         VAR3,#$00                   ; 19A069/0D0300
    TASK        L_19A13D                    ; 19A06C/073DA1
L_19A06F:
    ASMCALL     $DE4B                       ; 19A06F/D04BDE // Play sound effect
    .byte       $11                         ; 19A072/11
    ASMCALL     $DED0                       ; 19A073/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 19A076/09
    .byte       $12                         ; 19A077/12
    .byte       $0D                         ; 19A078/0D
    .byte       $00                         ; 19A079/00
    .byte       $E0                         ; 19A07A/E0
    .byte       $00                         ; 19A07B/00
    .byte       $07                         ; 19A07C/07
    .byte       $00                         ; 19A07D/00
    ASMCALL     $DE4B                       ; 19A07E/D04BDE // Play sound effect
    .byte       $45                         ; 19A081/45
    ASMCALL     $AF1E                       ; 19A082/D01EAF
    ONTICK      $19ACBB                     ; 19A085/08BBAC19
    SETPOSE     #$02                        ; 19A089/5002
    ASMCALL     $885C                       ; 19A08B/D05C88
    END                                     ; 19A08E/00

; CODE OR DATA -- $19A08F .. $19A092
incbinRange "../split/prg/bank19.bin", $008F, $0092

L_19A092:
    ONTICK      $19ACC1                     ; 19A092/08C1AC19
    WAIT        #32                         ; 19A096/0620
L_19A098:
    ASMCALL     $DF06                       ; 19A098/D006DF // Destroy object in slot `arg`
    .byte       $03                         ; 19A09B/03
    MOV         REG,VAR2                    ; 19A09C/1E02
    JNE         L_19A0AE                    ; 19A09E/0BAEA0
    A_JMP       L_19A0A4                    ; 19A0A1/17A4A0

L_19A0A4:
    MOV         VAR8,#$01                   ; 19A0A4/0D0801
    ONTICK      $19AD2E                     ; 19A0A7/082EAD19
    SETPOSE     #$08                        ; 19A0AB/5008
    HALT                                    ; 19A0AD/09

L_19A0AE:
    MOV         VAR8,#$01                   ; 19A0AE/0D0801
    ONTICK      $2195CD                     ; 19A0B1/08CD9521 // Update Kirby's position
    SETPOSE     #$20                        ; 19A0B5/5020
    WAIT        #24                         ; 19A0B7/0618
L_19A0B9:
    LOOP        #4                          ; 19A0B9/0104
        ASMCALL     $DE4B                       ; 19A0BB/D04BDE // Play sound effect
        .byte       $23                         ; 19A0BE/23
        SETPOSE     #$21, WAIT #2               ; 19A0BF/5221
L_19A0C1:
        INCPOSE     WAIT #2                     ; 19A0C1/72
L_19A0C2:
    ENDLOOP                                 ; 19A0C2/02
    INCPOSE                                 ; 19A0C3/70
    LOOP        #4                          ; 19A0C4/0104
        UNK37       #$FF,#$FF                   ; 19A0C6/37FFFF
        WAIT        #2                          ; 19A0C9/0602
L_19A0CB:
    ENDLOOP                                 ; 19A0CB/02
    INCPOSE                                 ; 19A0CC/70
    LOOP        #4                          ; 19A0CD/0104
        UNK37       #$FF,#$FF                   ; 19A0CF/37FFFF
        WAIT        #2                          ; 19A0D2/0602
L_19A0D4:
    ENDLOOP                                 ; 19A0D4/02
    ADDYPOS     #-8                         ; 19A0D5/2DF8FF
L_19A0D8:
    ONTICK      $2195DE                     ; 19A0D8/08DE9521
L_19A0DC:
    ASMCALL     $884D                       ; 19A0DC/D04D88
    SETPOSE     #$14                        ; 19A0DF/5014
    WAIT        #2                          ; 19A0E1/0602
L_19A0E3:
    ASMCALL     $A15B                       ; 19A0E3/D05BA1 // Store (VAR1 + 1) in $05FE
    ASMCALL     $DE51                       ; 19A0E6/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $04                         ; 19A0E9/04
    .byte       $48                         ; 19A0EA/48
    .byte       $F7                         ; 19A0EB/F7
    .byte       $00                         ; 19A0EC/00
    .byte       $07                         ; 19A0ED/07
    .byte       $00                         ; 19A0EE/00
    WAIT        #30                         ; 19A0EF/061E
L_19A0F1:
    MOV         REG,VAR1                    ; 19A0F1/1E01
    TABLEJMP    #7                          ; 19A0F3/0F07
    .word       L_19A163                    ; 19A0F5/63A1
    .word       L_19A1D5                    ; 19A0F7/D5A1
    .word       L_19A23C                    ; 19A0F9/3CA2
    .word       L_19A28E                    ; 19A0FB/8EA2
    .word       L_19A2EF                    ; 19A0FD/EFA2
    .word       L_19A352                    ; 19A0FF/52A3
    .word       L_19A3BB                    ; 19A101/BBA3
L_19A103:
    ASMCALL     $A150, WAIT #1              ; 19A103/D150A1 // Check if player has pressed Start
    JNE         L_19A112                    ; 19A106/0B12A1
    ASMCALL     $AF9B                       ; 19A109/D09BAF
    JEQ         L_19A103                    ; 19A10C/0A03A1
    A_JMP       L_19A0DC                    ; 19A10F/17DCA0

L_19A112:
    WAIT        #60                         ; 19A112/063C
L_19A114:
    ASMCALL     $ACA2                       ; 19A114/D0A2AC // Copy $0182 to $0186, $018A, $018E, $0192, $0196, $019A and $019E
    LOOP        #4                          ; 19A117/0104
        ASMCALL     $C996, WAIT #6              ; 19A119/D696C9 // Palette fade (out?) step
L_19A11C:
    ENDLOOP                                 ; 19A11C/02
    MOV         $056A,#$04                  ; 19A11D/116A0504
    END                                     ; 19A121/00

L_19A122:
    WAIT        #60                         ; 19A122/063C
L_19A124:
    LOOP        #4                          ; 19A124/0104
        ASMCALL     $C996, WAIT #6              ; 19A126/D696C9 // Palette fade (out?) step
L_19A129:
    ENDLOOP                                 ; 19A129/02
    MOV         REG,$00F4                   ; 19A12A/1CF400
    ADD         REG,#-2                     ; 19A12D/2502FE
    JEQ         L_19A138                    ; 19A130/0A38A1
    MOV         $056A,#$05                  ; 19A133/116A0505
    END                                     ; 19A137/00

L_19A138:
    MOV         $056A,#$07                  ; 19A138/116A0507
    END                                     ; 19A13C/00

L_19A13D:
    LOOP        #6                          ; 19A13D/0106
        WAIT        #4                          ; 19A13F/0604
L_19A141:
        ASMCALL     $DE51                       ; 19A141/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
        .byte       $04                         ; 19A144/04
        .byte       $00                         ; 19A145/00
        .byte       $00                         ; 19A146/00
        .byte       $00                         ; 19A147/00
        .byte       $04                         ; 19A148/04
        .byte       $00                         ; 19A149/00
        ADD         VAR3,#1                     ; 19A14A/13030201
    ENDLOOP                                 ; 19A14E/02
    ENDTASK                                 ; 19A14F/0C

B19_a150:
    ldx #$00
    lda temp_pad1_press
    and #$10
    beq B19_a159
    inx
B19_a159:
    txa
    rts
B19_a15b:
    ldx OBJ_var1+1
    inx
    stx UNK_5FC+2
    rts


L_19A163:
    ASMCALL     $DE45                       ; 19A163/D045DE // Play music
    .byte       $08                         ; 19A166/08
    LOOP        #2                          ; 19A167/0102
        SETXVEL     #$0100                      ; 19A169/B00001
        SETPOSE     #$2B, WAIT #8               ; 19A16C/582B
L_19A16E:
        SETXVEL     #$0000                      ; 19A16E/B00000
        SETPOSE     #$29, WAIT #10              ; 19A171/5A29
L_19A173:
    ENDLOOP                                 ; 19A173/02
    SETXVEL     #$0100                      ; 19A174/B00001
    SETPOSE     #$40                        ; 19A177/5040
    WAIT        #16                         ; 19A179/0610
L_19A17B:
    SETXVEL     #$0000                      ; 19A17B/B00000
    SETPOSE     #$36, WAIT #8               ; 19A17E/5836
L_19A180:
    SETPOSE     #$30, WAIT #8               ; 19A180/5830
L_19A182:
    SETPOSE     #$26, WAIT #10              ; 19A182/5A26
L_19A184:
    SETXVEL     #$FC00                      ; 19A184/B000FC
    SETYVEL     #$FE00                      ; 19A187/C000FE
    SETPOSE     #$37, WAIT #4               ; 19A18A/5437
L_19A18C:
    SETYVEL     #$0000                      ; 19A18C/C00000
    SETPOSE     #$39, WAIT #2               ; 19A18F/5239
L_19A191:
    SETYVEL     #$0200                      ; 19A191/C00002
    SETPOSE     #$3A, WAIT #2               ; 19A194/523A
L_19A196:
    SETXVEL     #$0000                      ; 19A196/B00000
    SETPOSE     #$38, WAIT #2               ; 19A199/5238
L_19A19B:
    SETYVEL     #$0000                      ; 19A19B/C00000
    SETPOSE     #$30, WAIT #4               ; 19A19E/5430
L_19A1A0:
    SETPOSE     #$35                        ; 19A1A0/5035
    SETYVEL     #$FC00, WAIT #4             ; 19A1A2/C400FC
L_19A1A5:
    SETYVEL     #$FE00, WAIT #4             ; 19A1A5/C400FE
L_19A1A8:
    SETYVEL     #$0000, WAIT #4             ; 19A1A8/C40000
L_19A1AB:
    SETYVEL     #$0200, WAIT #4             ; 19A1AB/C40002
L_19A1AE:
    SETYVEL     #$0400, WAIT #4             ; 19A1AE/C40004
L_19A1B1:
    SETYVEL     #$0000                      ; 19A1B1/C00000
    SETPOSE     #$30, WAIT #4               ; 19A1B4/5430
L_19A1B6:
    SETXVEL     #$0100                      ; 19A1B6/B00001
    SETYVEL     #$FE00                      ; 19A1B9/C000FE
    SETPOSE     #$2A, WAIT #4               ; 19A1BC/542A
L_19A1BE:
    SETYVEL     #$FF00                      ; 19A1BE/C000FF
    SETPOSE     #$2E, WAIT #4               ; 19A1C1/542E
L_19A1C3:
    SETYVEL     #$0100                      ; 19A1C3/C00001
    SETPOSE     #$42, WAIT #4               ; 19A1C6/5442
L_19A1C8:
    SETYVEL     #$0200                      ; 19A1C8/C00002
    SETPOSE     #$44, WAIT #4               ; 19A1CB/5444
L_19A1CD:
    ZEROVEL                                 ; 19A1CD/38
    SETPOSE     #$2F, WAIT #12              ; 19A1CE/5C2F
L_19A1D0:
    SETPOSE     #$4A                        ; 19A1D0/504A
    A_JMP       L_19A112                    ; 19A1D2/1712A1

L_19A1D5:
    ASMCALL     $DE45                       ; 19A1D5/D045DE // Play music
    .byte       $08                         ; 19A1D8/08
    SETPOSE     #$2F, WAIT #4               ; 19A1D9/542F
L_19A1DB:
    SETXVEL     #$0100                      ; 19A1DB/B00001
    SETYVEL     #$FE00                      ; 19A1DE/C000FE
    DEC2POSE    WAIT #6                     ; 19A1E1/A6
L_19A1E2:
    SETYVEL     #$FF00, WAIT #6             ; 19A1E2/C600FF
L_19A1E5:
    SETYVEL     #$0000                      ; 19A1E5/C00000
    SETPOSE     #$40, WAIT #3               ; 19A1E8/5340
L_19A1EA:
    SETPOSE     #$43, WAIT #3               ; 19A1EA/5343
L_19A1EC:
    INCPOSE     WAIT #3                     ; 19A1EC/73
L_19A1ED:
    SETPOSE     #$2D, WAIT #3               ; 19A1ED/532D
L_19A1EF:
    SETYVEL     #$0100, WAIT #6             ; 19A1EF/C60001
L_19A1F2:
    SETYVEL     #$0200, WAIT #6             ; 19A1F2/C60002
L_19A1F5:
    ZEROVEL                                 ; 19A1F5/38
    INC2POSE    WAIT #6                     ; 19A1F6/96
L_19A1F7:
    SETPOSE     #$25                        ; 19A1F7/5025
    WAIT        #6                          ; 19A1F9/0606
L_19A1FB:
    SETPOSE     #$30, WAIT #5               ; 19A1FB/5530
L_19A1FD:
    SETXVEL     #$FF00                      ; 19A1FD/B000FF
    SETYVEL     #$FE00                      ; 19A200/C000FE
    DEC2POSE    WAIT #5                     ; 19A203/A5
L_19A204:
    SETYVEL     #$FF00                      ; 19A204/C000FF
    SETPOSE     #$41, WAIT #5               ; 19A207/5541
L_19A209:
    SETYVEL     #$0100                      ; 19A209/C00001
    SETPOSE     #$42, WAIT #5               ; 19A20C/5542
L_19A20E:
    SETYVEL     #$0200                      ; 19A20E/C00002
    SETPOSE     #$45, WAIT #5               ; 19A211/5545
L_19A213:
    ZEROVEL                                 ; 19A213/38
    SETPOSE     #$30, WAIT #5               ; 19A214/5530
L_19A216:
    SETPOSE     #$26, WAIT #4               ; 19A216/5426
L_19A218:
    SETXVEL     #$FC00                      ; 19A218/B000FC
    SETPOSE     #$37, WAIT #4               ; 19A21B/5437
L_19A21D:
    SETXVEL     #$FE00, WAIT #4             ; 19A21D/B400FE
L_19A220:
    SETXVEL     #$0000, WAIT #10            ; 19A220/BA0000
L_19A223:
    SETXVEL     #$0400                      ; 19A223/B00004
    INCPOSE     WAIT #4                     ; 19A226/74
L_19A227:
    SETXVEL     #$0200, WAIT #4             ; 19A227/B40002
L_19A22A:
    SETXVEL     #$0000, WAIT #10            ; 19A22A/BA0000
L_19A22D:
    SETPOSE     #$26, WAIT #4               ; 19A22D/5426
L_19A22F:
    SETXVEL     #$FE00                      ; 19A22F/B000FE
    SETPOSE     #$30, WAIT #6               ; 19A232/5630
L_19A234:
    SETXVEL     #$0000, WAIT #10            ; 19A234/BA0000
L_19A237:
    SETPOSE     #$4A                        ; 19A237/504A
    A_JMP       L_19A112                    ; 19A239/1712A1

L_19A23C:
    ASMCALL     $DE45                       ; 19A23C/D045DE // Play music
    .byte       $08                         ; 19A23F/08
    SETPOSE     #$2D                        ; 19A240/502D
    SETXVEL     #$0100                      ; 19A242/B00001
    A_JSR       L_19A281                    ; 19A245/1881A2
    ZEROVEL                                 ; 19A248/38
    WAIT        #1                          ; 19A249/0601
L_19A24B:
    SETXVEL     #$0100                      ; 19A24B/B00001
    A_JSR       L_19A281                    ; 19A24E/1881A2
    ZEROVEL                                 ; 19A251/38
    SETPOSE     #$36, WAIT #8               ; 19A252/5836
L_19A254:
    SETXVEL     #$FE00                      ; 19A254/B000FE
    SETPOSE     #$3F, WAIT #10              ; 19A257/5A3F
L_19A259:
    SETXVEL     #$0000                      ; 19A259/B00000
    SETPOSE     #$26, WAIT #8               ; 19A25C/5826
L_19A25E:
    SETXVEL     #$FE00                      ; 19A25E/B000FE
    SETPOSE     #$3F, WAIT #10              ; 19A261/5A3F
L_19A263:
    SETXVEL     #$0000                      ; 19A263/B00000
    SETPOSE     #$35, WAIT #8               ; 19A266/5835
L_19A268:
    LOOP        #2                          ; 19A268/0102
        SETXVEL     #$0080                      ; 19A26A/B08000
        SETPOSE     #$27, WAIT #4               ; 19A26D/5427
L_19A26F:
        SETPOSE     #$3B, WAIT #4               ; 19A26F/543B
L_19A271:
        INC2POSE    WAIT #4                     ; 19A271/94
L_19A272:
        INCPOSE     WAIT #4                     ; 19A272/74
L_19A273:
        DEC2POSE    WAIT #4                     ; 19A273/A4
L_19A274:
        SETPOSE     #$28, WAIT #4               ; 19A274/5428
L_19A276:
    ENDLOOP                                 ; 19A276/02
    ZEROVEL                                 ; 19A277/38
    SETPOSE     #$2F                        ; 19A278/502F
    WAIT        #16                         ; 19A27A/0610
L_19A27C:
    SETPOSE     #$4A                        ; 19A27C/504A
    A_JMP       L_19A112                    ; 19A27E/1712A1

L_19A281:
    SETYVEL     #$FE00, WAIT #4             ; 19A281/C400FE
L_19A284:
    SETYVEL     #$FF00, WAIT #4             ; 19A284/C400FF
L_19A287:
    SETYVEL     #$0100, WAIT #4             ; 19A287/C40001
L_19A28A:
    SETYVEL     #$0200, WAIT #4             ; 19A28A/C40002
L_19A28D:
    A_RTS                                   ; 19A28D/19

L_19A28E:
    ASMCALL     $DE45                       ; 19A28E/D045DE // Play music
    .byte       $08                         ; 19A291/08
    SETPOSE     #$2F, WAIT #5               ; 19A292/552F
L_19A294:
    SETXVEL     #$0100                      ; 19A294/B00001
    SETYVEL     #$FF00                      ; 19A297/C000FF
    SETPOSE     #$4A, WAIT #4               ; 19A29A/544A
L_19A29C:
    SETYVEL     #$FF80, WAIT #4             ; 19A29C/C480FF
L_19A29F:
    SETYVEL     #$0080, WAIT #4             ; 19A29F/C48000
L_19A2A2:
    SETYVEL     #$0100, WAIT #4             ; 19A2A2/C40001
L_19A2A5:
    ZEROVEL                                 ; 19A2A5/38
    SETPOSE     #$30, WAIT #5               ; 19A2A6/5530
L_19A2A8:
    SETXVEL     #$FF00                      ; 19A2A8/B000FF
    SETYVEL     #$FF00                      ; 19A2AB/C000FF
    SETPOSE     #$4B, WAIT #4               ; 19A2AE/544B
L_19A2B0:
    SETYVEL     #$FF80, WAIT #4             ; 19A2B0/C480FF
L_19A2B3:
    SETYVEL     #$0080, WAIT #4             ; 19A2B3/C48000
L_19A2B6:
    SETYVEL     #$0100, WAIT #4             ; 19A2B6/C40001
L_19A2B9:
    ZEROVEL                                 ; 19A2B9/38
    SETXVEL     #$FEC0                      ; 19A2BA/B0C0FE
    SETPOSE     #$26, WAIT #3               ; 19A2BD/5326
L_19A2BF:
    SETPOSE     #$41, WAIT #3               ; 19A2BF/5341
L_19A2C1:
    SETPOSE     #$42, WAIT #3               ; 19A2C1/5342
L_19A2C3:
    SETPOSE     #$45, WAIT #3               ; 19A2C3/5345
L_19A2C5:
    ZEROVEL                                 ; 19A2C5/38
    SETPOSE     #$30, WAIT #6               ; 19A2C6/5630
L_19A2C8:
    SETXVEL     #$FE00, WAIT #4             ; 19A2C8/B400FE
L_19A2CB:
    SETXVEL     #$FF00, WAIT #4             ; 19A2CB/B400FF
L_19A2CE:
    SETXVEL     #$0000, WAIT #8             ; 19A2CE/B80000
L_19A2D1:
    LOOP        #2                          ; 19A2D1/0102
        SETXVEL     #$0080                      ; 19A2D3/B08000
        SETYVEL     #$FE00                      ; 19A2D6/C000FE
        SETPOSE     #$33, WAIT #6               ; 19A2D9/5633
L_19A2DB:
        SETYVEL     #$FF00, WAIT #6             ; 19A2DB/C600FF
L_19A2DE:
        SETYVEL     #$0100, WAIT #6             ; 19A2DE/C60001
L_19A2E1:
        SETYVEL     #$0200, WAIT #6             ; 19A2E1/C60002
L_19A2E4:
    ENDLOOP                                 ; 19A2E4/02
    ZEROVEL                                 ; 19A2E5/38
    SETPOSE     #$30                        ; 19A2E6/5030
    WAIT        #16                         ; 19A2E8/0610
L_19A2EA:
    SETPOSE     #$4A                        ; 19A2EA/504A
    A_JMP       L_19A112                    ; 19A2EC/1712A1

L_19A2EF:
    ASMCALL     $DE45                       ; 19A2EF/D045DE // Play music
    .byte       $08                         ; 19A2F2/08
    LOOP        #2                          ; 19A2F3/0102
        SETXVEL     #$0100                      ; 19A2F5/B00001
        SETYVEL     #$FE00                      ; 19A2F8/C000FE
        SETPOSE     #$27, WAIT #4               ; 19A2FB/5427
L_19A2FD:
        SETYVEL     #$FF00                      ; 19A2FD/C000FF
        SETPOSE     #$2D, WAIT #4               ; 19A300/542D
L_19A302:
        SETYVEL     #$0100, WAIT #4             ; 19A302/C40001
L_19A305:
        SETYVEL     #$0200, WAIT #4             ; 19A305/C40002
L_19A308:
    ENDLOOP                                 ; 19A308/02
    ZEROVEL                                 ; 19A309/38
    WAIT        #4                          ; 19A30A/0604
L_19A30C:
    LOOP        #2                          ; 19A30C/0102
        SETXVEL     #$FE00                      ; 19A30E/B000FE
        SETYVEL     #$FE00, WAIT #4             ; 19A311/C400FE
L_19A314:
        SETYVEL     #$FF00                      ; 19A314/C000FF
        SETPOSE     #$44, WAIT #4               ; 19A317/5444
L_19A319:
        SETYVEL     #$0100                      ; 19A319/C00001
        SETPOSE     #$43, WAIT #4               ; 19A31C/5443
L_19A31E:
        SETXVEL     #$FF00                      ; 19A31E/B000FF
        SETYVEL     #$0200                      ; 19A321/C00002
        SETPOSE     #$40, WAIT #4               ; 19A324/5440
L_19A326:
        ZEROVEL                                 ; 19A326/38
        SETXVEL     #$FF80                      ; 19A327/B080FF
        SETPOSE     #$2F, WAIT #6               ; 19A32A/562F
L_19A32C:
    ENDLOOP                                 ; 19A32C/02
    SETXVEL     #$FFE0, WAIT #2             ; 19A32D/B2E0FF
L_19A330:
    SETPOSE     #$27, WAIT #7               ; 19A330/5727
L_19A332:
    ZEROVEL                                 ; 19A332/38
    SETPOSE     #$2F, WAIT #4               ; 19A333/542F
L_19A335:
    SETXVEL     #$0200                      ; 19A335/B00002
    SETPOSE     #$40, WAIT #7               ; 19A338/5740
L_19A33A:
    SETXVEL     #$0100, WAIT #7             ; 19A33A/B70001
L_19A33D:
    ZEROVEL                                 ; 19A33D/38
    SETPOSE     #$2F, WAIT #4               ; 19A33E/542F
L_19A340:
    SETXVEL     #$0200                      ; 19A340/B00002
    SETPOSE     #$40, WAIT #7               ; 19A343/5740
L_19A345:
    SETXVEL     #$0100, WAIT #7             ; 19A345/B70001
L_19A348:
    ZEROVEL                                 ; 19A348/38
    SETPOSE     #$2F                        ; 19A349/502F
    WAIT        #16                         ; 19A34B/0610
L_19A34D:
    SETPOSE     #$4A                        ; 19A34D/504A
    A_JMP       L_19A112                    ; 19A34F/1712A1

L_19A352:
    ASMCALL     $DE45                       ; 19A352/D045DE // Play music
    .byte       $08                         ; 19A355/08
    SETXVEL     #$FF00                      ; 19A356/B000FF
    SETYVEL     #$FE00                      ; 19A359/C000FE
    SETPOSE     #$2D, WAIT #6               ; 19A35C/562D
L_19A35E:
    SETYVEL     #$FF00, WAIT #6             ; 19A35E/C600FF
L_19A361:
    SETYVEL     #$0000                      ; 19A361/C00000
    SETPOSE     #$43, WAIT #4               ; 19A364/5443
L_19A366:
    SETYVEL     #$0100, WAIT #6             ; 19A366/C60001
L_19A369:
    SETYVEL     #$0200                      ; 19A369/C00002
    SETPOSE     #$40, WAIT #6               ; 19A36C/5640
L_19A36E:
    SETYVEL     #$FF00                      ; 19A36E/C000FF
    SETPOSE     #$2F, WAIT #2               ; 19A371/522F
L_19A373:
    SETYVEL     #$0100, WAIT #2             ; 19A373/C20001
L_19A376:
    SETYVEL     #$FF00, WAIT #2             ; 19A376/C200FF
L_19A379:
    SETYVEL     #$0100, WAIT #2             ; 19A379/C20001
L_19A37C:
    ZEROVEL                                 ; 19A37C/38
    WAIT        #6                          ; 19A37D/0606
L_19A37F:
    LOOP        #4                          ; 19A37F/0104
        SETXVEL     #$0080                      ; 19A381/B08000
        SETYVEL     #$FF00, WAIT #4             ; 19A384/C400FF
L_19A387:
        SETYVEL     #$FF80                      ; 19A387/C080FF
        SETPOSE     #$46, WAIT #4               ; 19A38A/5446
L_19A38C:
        SETYVEL     #$0080                      ; 19A38C/C08000
        SETPOSE     #$30, WAIT #4               ; 19A38F/5430
L_19A391:
        SETYVEL     #$0100                      ; 19A391/C00001
        SETPOSE     #$47, WAIT #4               ; 19A394/5447
L_19A396:
    ENDLOOP                                 ; 19A396/02
    ZEROVEL                                 ; 19A397/38
    SETPOSE     #$2F, WAIT #2               ; 19A398/522F
L_19A39A:
    SETXVEL     #$0100                      ; 19A39A/B00001
    SETPOSE     #$28, WAIT #3               ; 19A39D/5328
L_19A39F:
    SETPOSE     #$3C, WAIT #3               ; 19A39F/533C
L_19A3A1:
    SETPOSE     #$3E, WAIT #3               ; 19A3A1/533E
L_19A3A3:
    SETXVEL     #$0080                      ; 19A3A3/B08000
    SETPOSE     #$3D, WAIT #3               ; 19A3A6/533D
L_19A3A8:
    SETPOSE     #$3B, WAIT #3               ; 19A3A8/533B
L_19A3AA:
    SETXVEL     #$0020                      ; 19A3AA/B02000
    SETPOSE     #$27, WAIT #3               ; 19A3AD/5327
L_19A3AF:
    SETPOSE     #$28, WAIT #3               ; 19A3AF/5328
L_19A3B1:
    ZEROVEL                                 ; 19A3B1/38
    SETPOSE     #$30                        ; 19A3B2/5030
    WAIT        #16                         ; 19A3B4/0610
L_19A3B6:
    SETPOSE     #$4B                        ; 19A3B6/504B
    A_JMP       L_19A112                    ; 19A3B8/1712A1

L_19A3BB:
    ASMCALL     $A3DC                       ; 19A3BB/D0DCA3 // Store a random number from 0 to 4 in $0784 (TODO: confirm this)
    ASMCALL     $DE51                       ; 19A3BE/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $04                         ; 19A3C1/04
    .byte       $00                         ; 19A3C2/00
    .byte       $00                         ; 19A3C3/00
    .byte       $00                         ; 19A3C4/00
    .byte       $09                         ; 19A3C5/09
    .byte       $00                         ; 19A3C6/00
    ASMCALL     $DE51                       ; 19A3C7/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $04                         ; 19A3CA/04
    .byte       $E0                         ; 19A3CB/E0
    .byte       $00                         ; 19A3CC/00
    .byte       $00                         ; 19A3CD/00
    .byte       $0A                         ; 19A3CE/0A
    .byte       $00                         ; 19A3CF/00
    ASMCALL     $DE51                       ; 19A3D0/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $04                         ; 19A3D3/04
    .byte       $20                         ; 19A3D4/20
    .byte       $00                         ; 19A3D5/00
    .byte       $00                         ; 19A3D6/00
    .byte       $0A                         ; 19A3D7/0A
    .byte       $00                         ; 19A3D8/00
    WAIT        #32                         ; 19A3D9/0620
L_19A3DB:
    END                                     ; 19A3DB/00

B19_a3dc:
    lda #$04
    jsr Rand
    sta OBJ_0784
    rts

SCR04_GoalDance:
    SPRITEMAP   L_1A9910                     ; 19A3E5/1A10991A
    WAIT        #32                         ; 19A3E9/0620
L_19A3EB:
    MOV         REG,$0784                   ; 19A3EB/1C8407
    TABLEJSR    #4                          ; 19A3EE/1004
    .word       L_19A4B3                    ; 19A3F0/B3A4
    .word       L_19A53E                    ; 19A3F2/3EA5
    .word       L_19A602                    ; 19A3F4/02A6
    .word       L_19A693                    ; 19A3F6/93A6
    ASMCALL     $AE14                       ; 19A3F8/D014AE
    JEQ         L_19A402                    ; 19A3FB/0A02A4
    WAIT        #200                        ; 19A3FE/06C8
    WAIT        #120                        ; 19A400/0678
L_19A402:
    A_JMP       L_19A112                    ; 19A402/1712A1

SCR04_GoalDanceClone:
    ONDRAW      $DA89                       ; 19A405/2089DA
    WAIT        #32                         ; 19A408/0620
L_19A40A:
    MOV         REG,$0784                   ; 19A40A/1C8407
    TABLEJSR    #4                          ; 19A40D/1004
    .word       L_19A4BA                    ; 19A40F/BAA4
    .word       L_19A545                    ; 19A411/45A5
    .word       L_19A609                    ; 19A413/09A6
    .word       L_19A69A                    ; 19A415/9AA6
    ASMCALL     $AE14                       ; 19A417/D014AE
    JEQ         L_19A421                    ; 19A41A/0A21A4
    WAIT        #200                        ; 19A41D/06C8
    WAIT        #120                        ; 19A41F/0678
L_19A421:
    WAIT        #99                         ; 19A421/0663
    END                                     ; 19A423/00

L_19A424:
    ONDRAW      $DDAA                       ; 19A424/20AADD
    ASMCALL     $9CB3                       ; 19A427/D0B39C
    ASMCALL     $E2D9                       ; 19A42A/D0D9E2 // Unknown ASM $E2D9 (Set $05A0 and $05A1)
    .byte       $01                         ; 19A42D/01
    SPRITEMAP   L_1A9910                     ; 19A42E/1A10991A
    SETPOSE     #$08                        ; 19A432/5008
    ONTICK      $19AD9C                     ; 19A434/089CAD19
    HALT                                    ; 19A438/09

L_19A439:
    ASMCALL     $DE4B                       ; 19A439/D04BDE // Play sound effect
    .byte       $05                         ; 19A43C/05
    ZEROVEL                                 ; 19A43D/38
    SETPOSE     #$28                        ; 19A43E/5028
    SETXVEL     #$FF80                      ; 19A440/B080FF
    ASMCALL     $AFDF                       ; 19A443/D0DFAF
    JNE         L_19A44E                    ; 19A446/0B4EA4
    SETPOSE     #$27                        ; 19A449/5027
    SETXVEL     #$0080                      ; 19A44B/B08000
L_19A44E:
    TASK        L_19A456                    ; 19A44E/0756A4
    ONTICK      $19AD76                     ; 19A451/0876AD19
    HALT                                    ; 19A455/09

L_19A456:
    WAIT        #10                         ; 19A456/060A
L_19A458:
    INC2POSE    WAIT #6                     ; 19A458/96
L_19A459:
    INC2POSE    WAIT #10                    ; 19A459/9A
L_19A45A:
    DEC2POSE    WAIT #6                     ; 19A45A/A6
L_19A45B:
    DEC2POSE                                ; 19A45B/A0
    A_JMP       L_19A456                    ; 19A45C/1756A4

L_19A45F:
    ZEROVEL                                 ; 19A45F/38
    ONTICK      $2195DE                     ; 19A460/08DE9521
    ASMCALL     $DE51                       ; 19A464/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $04                         ; 19A467/04
    .byte       $00                         ; 19A468/00
    .byte       $00                         ; 19A469/00
    .byte       $00                         ; 19A46A/00
    .byte       $02                         ; 19A46B/02
    .byte       $00                         ; 19A46C/00
    ASMCALL     $DE51                       ; 19A46D/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $04                         ; 19A470/04
    .byte       $E0                         ; 19A471/E0
    .byte       $00                         ; 19A472/00
    .byte       $00                         ; 19A473/00
    .byte       $03                         ; 19A474/03
    .byte       $00                         ; 19A475/00
    ASMCALL     $DE51                       ; 19A476/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $04                         ; 19A479/04
    .byte       $20                         ; 19A47A/20
    .byte       $00                         ; 19A47B/00
    .byte       $00                         ; 19A47C/00
    .byte       $03                         ; 19A47D/03
    .byte       $00                         ; 19A47E/00
    END                                     ; 19A47F/00

SCR04_BossDance:
    SPRITEMAP   L_1A9910                     ; 19A480/1A10991A
    MOV         REG,$0557                   ; 19A484/1C5705
    TABLEJSR    #7                          ; 19A487/1007
    .word       L_19A4B3                    ; 19A489/B3A4
    .word       L_19A758                    ; 19A48B/58A7
    .word       L_19A53E                    ; 19A48D/3EA5
    .word       L_19A693                    ; 19A48F/93A6
    .word       L_19A85E                    ; 19A491/5EA8
    .word       L_19A957                    ; 19A493/57A9
    .word       L_19A602                    ; 19A495/02A6
    A_JMP       L_19A122                    ; 19A497/1722A1

SCR04_BossDanceClone:
    ONDRAW      $DA89                       ; 19A49A/2089DA
    MOV         REG,$0557                   ; 19A49D/1C5705
    TABLEJSR    #7                          ; 19A4A0/1007
    .word       L_19A4BA                    ; 19A4A2/BAA4
    .word       L_19A75F                    ; 19A4A4/5FA7
    .word       L_19A545                    ; 19A4A6/45A5
    .word       L_19A69A                    ; 19A4A8/9AA6
    .word       L_19A865                    ; 19A4AA/65A8
    .word       L_19A95E                    ; 19A4AC/5EA9
    .word       L_19A609                    ; 19A4AE/09A6
    WAIT        #99                         ; 19A4B0/0663
    END                                     ; 19A4B2/00

L_19A4B3:
    A_JSR       L_19AAA8                    ; 19A4B3/18A8AA
    A_JSR       L_19A4C8                    ; 19A4B6/18C8A4
    A_RTS                                   ; 19A4B9/19

L_19A4BA:
    A_JSR       L_19AABC                    ; 19A4BA/18BCAA
    ONDRAW      $DDAA                       ; 19A4BD/20AADD
    SPRITEMAP   L_1A9910                     ; 19A4C0/1A10991A
    A_JSR       L_19A4C8                    ; 19A4C4/18C8A4
    A_RTS                                   ; 19A4C7/19

L_19A4C8:
    SETPOSE     #$48                        ; 19A4C8/5048
    WAIT        #55                         ; 19A4CA/0637
L_19A4CC:
    ASMCALL     $DE45                       ; 19A4CC/D045DE // Play music
    .byte       $07                         ; 19A4CF/07
    TASK        L_19A503                    ; 19A4D0/0703A5
    LOOP        #2                          ; 19A4D3/0102
        SETPOSE     #$27, WAIT #10              ; 19A4D5/5A27
L_19A4D7:
        INC2POSE    WAIT #6                     ; 19A4D7/96
L_19A4D8:
        INC2POSE    WAIT #10                    ; 19A4D8/9A
L_19A4D9:
        DEC2POSE    WAIT #6                     ; 19A4D9/A6
L_19A4DA:
    ENDLOOP                                 ; 19A4DA/02
    DEC2POSE    WAIT #9                     ; 19A4DB/A9
L_19A4DC:
    INC2POSE    WAIT #5                     ; 19A4DC/95
L_19A4DD:
    A_JSR       L_19AAA8                    ; 19A4DD/18A8AA
    A_JSR       L_19AAA8                    ; 19A4E0/18A8AA
    SETPOSE     #$48                        ; 19A4E3/5048
    WAIT        #31                         ; 19A4E5/061F
L_19A4E7:
    SETPOSE     #$2D                        ; 19A4E7/502D
    WAIT        #24                         ; 19A4E9/0618
L_19A4EB:
    SETPOSE     #$40                        ; 19A4EB/5040
    WAIT        #55                         ; 19A4ED/0637
L_19A4EF:
    SETPOSE     #$31, WAIT #8               ; 19A4EF/5831
L_19A4F1:
    SETPOSE     #$25, WAIT #4               ; 19A4F1/5425
L_19A4F3:
    SETPOSE     #$33, WAIT #8               ; 19A4F3/5833
L_19A4F5:
    SETPOSE     #$25, WAIT #4               ; 19A4F5/5425
L_19A4F7:
    SETPOSE     #$31, WAIT #8               ; 19A4F7/5831
L_19A4F9:
    A_JSR       L_19AAB2                    ; 19A4F9/18B2AA
    SETPOSE     #$32                        ; 19A4FC/5032
    WAIT        #23                         ; 19A4FE/0617
L_19A500:
    SETPOSE     #$49                        ; 19A500/5049
    A_RTS                                   ; 19A502/19

L_19A503:
    SETXVEL     #$FFC0                      ; 19A503/B0C0FF
    WAIT        #79                         ; 19A506/064F
L_19A508:
    LOOP        #2                          ; 19A508/0102
        SETXVEL     #$FF80, WAIT #6             ; 19A50A/B680FF
L_19A50D:
        SETXVEL     #$FFC0, WAIT #12            ; 19A50D/BCC0FF
L_19A510:
        SETXVEL     #$FFF0, WAIT #6             ; 19A510/B6F0FF
L_19A513:
    ENDLOOP                                 ; 19A513/02
    ZEROVEL                                 ; 19A514/38
    WAIT        #31                         ; 19A515/061F
L_19A517:
    SETXVEL     #$0080                      ; 19A517/B08000
    SETYVEL     #$FE00, WAIT #8             ; 19A51A/C800FE
L_19A51D:
    SETYVEL     #$FF00, WAIT #8             ; 19A51D/C800FF
L_19A520:
    SETYVEL     #$FFE0, WAIT #8             ; 19A520/C8E0FF
L_19A523:
    SETYVEL     #$0020, WAIT #8             ; 19A523/C82000
L_19A526:
    SETYVEL     #$0100, WAIT #8             ; 19A526/C80001
L_19A529:
    SETYVEL     #$0200, WAIT #8             ; 19A529/C80002
L_19A52C:
    SETYVEL     #$0000, WAIT #8             ; 19A52C/C80000
L_19A52F:
    SETXVEL     #$0040                      ; 19A52F/B04000
    WAIT        #31                         ; 19A532/061F
L_19A534:
    ZEROVEL                                 ; 19A534/38
    WAIT        #36                         ; 19A535/0624
L_19A537:
    SETXVEL     #$FF80                      ; 19A537/B080FF
    WAIT        #24                         ; 19A53A/0618
L_19A53C:
    ZEROVEL                                 ; 19A53C/38
    ENDTASK                                 ; 19A53D/0C

L_19A53E:
    A_JSR       L_19AAA8                    ; 19A53E/18A8AA
    A_JSR       L_19A553                    ; 19A541/1853A5
    A_RTS                                   ; 19A544/19

L_19A545:
    A_JSR       L_19AABC                    ; 19A545/18BCAA
    ONDRAW      $DDAA                       ; 19A548/20AADD
    SPRITEMAP   L_1A9910                     ; 19A54B/1A10991A
    A_JSR       L_19A553                    ; 19A54F/1853A5
    A_RTS                                   ; 19A552/19

L_19A553:
    SETPOSE     #$48                        ; 19A553/5048
    WAIT        #55                         ; 19A555/0637
L_19A557:
    ASMCALL     $DE45                       ; 19A557/D045DE // Play music
    .byte       $07                         ; 19A55A/07
    TASK        L_19A595                    ; 19A55B/0795A5
    SETPOSE     #$2E, WAIT #10              ; 19A55E/5A2E
L_19A560:
    SETPOSE     #$34, WAIT #10              ; 19A560/5A34
L_19A562:
    SETPOSE     #$2D, WAIT #10              ; 19A562/5A2D
L_19A564:
    SETPOSE     #$33, WAIT #10              ; 19A564/5A33
L_19A566:
    SETPOSE     #$2D                        ; 19A566/502D
    WAIT        #20                         ; 19A568/0614
L_19A56A:
    SETPOSE     #$31                        ; 19A56A/5031
    WAIT        #18                         ; 19A56C/0612
L_19A56E:
    SETPOSE     #$40                        ; 19A56E/5040
    WAIT        #48                         ; 19A570/0630
L_19A572:
    SETPOSE     #$31, WAIT #9               ; 19A572/5931
L_19A574:
    SETPOSE     #$48, WAIT #9               ; 19A574/5948
L_19A576:
    LOOP        #3                          ; 19A576/0103
        A_JSR       L_19A58D                    ; 19A578/188DA5
    ENDLOOP                                 ; 19A57B/02
    SETPOSE     #$31, WAIT #6               ; 19A57C/5631
L_19A57E:
    SETPOSE     #$29, WAIT #2               ; 19A57E/5229
L_19A580:
    DEC2POSE    WAIT #4                     ; 19A580/A4
L_19A581:
    LOOP        #2                          ; 19A581/0102
        A_JSR       L_19A58D                    ; 19A583/188DA5
    ENDLOOP                                 ; 19A586/02
    A_JSR       L_19AAA8                    ; 19A587/18A8AA
    SETPOSE     #$48                        ; 19A58A/5048
    A_RTS                                   ; 19A58C/19

L_19A58D:
    SETPOSE     #$37, WAIT #6               ; 19A58D/5637
L_19A58F:
    INC2POSE    WAIT #6                     ; 19A58F/96
L_19A590:
    INCPOSE     WAIT #6                     ; 19A590/76
L_19A591:
    DEC2POSE    WAIT #6                     ; 19A591/A6
L_19A592:
    WAIT        #2                          ; 19A592/0602
L_19A594:
    A_RTS                                   ; 19A594/19

L_19A595:
    SETXVEL     #$00C0                      ; 19A595/B0C000
    SETYVEL     #$FEC0, WAIT #10            ; 19A598/CAC0FE
L_19A59B:
    ZEROVEL                                 ; 19A59B/38
    WAIT        #10                         ; 19A59C/060A
L_19A59E:
    SETXVEL     #$FF40                      ; 19A59E/B040FF
    SETYVEL     #$FEC0, WAIT #10            ; 19A5A1/CAC0FE
L_19A5A4:
    ZEROVEL                                 ; 19A5A4/38
    WAIT        #10                         ; 19A5A5/060A
L_19A5A7:
    SETYVEL     #$0140                      ; 19A5A7/C04001
    WAIT        #20                         ; 19A5AA/0614
L_19A5AC:
    ZEROVEL                                 ; 19A5AC/38
    WAIT        #18                         ; 19A5AD/0612
L_19A5AF:
    SETXVEL     #$FF40                      ; 19A5AF/B040FF
    SETYVEL     #$FE00, WAIT #10            ; 19A5B2/CA00FE
L_19A5B5:
    SETYVEL     #$FF80, WAIT #10            ; 19A5B5/CA80FF
L_19A5B8:
    SETYVEL     #$0000, WAIT #10            ; 19A5B8/CA0000
L_19A5BB:
    SETYVEL     #$0080, WAIT #10            ; 19A5BB/CA8000
L_19A5BE:
    SETYVEL     #$0200, WAIT #10            ; 19A5BE/CA0002
L_19A5C1:
    ZEROVEL                                 ; 19A5C1/38
    WAIT        #28                         ; 19A5C2/061C
L_19A5C4:
    SETXVEL     #$0100                      ; 19A5C4/B00001
    SETYVEL     #$FE00, WAIT #6             ; 19A5C7/C600FE
L_19A5CA:
    SETYVEL     #$FF00, WAIT #6             ; 19A5CA/C600FF
L_19A5CD:
    SETYVEL     #$FF80, WAIT #6             ; 19A5CD/C680FF
L_19A5D0:
    SETYVEL     #$FFE0, WAIT #6             ; 19A5D0/C6E0FF
L_19A5D3:
    SETYVEL     #$0020, WAIT #6             ; 19A5D3/C62000
L_19A5D6:
    SETYVEL     #$0080, WAIT #6             ; 19A5D6/C68000
L_19A5D9:
    SETYVEL     #$0100, WAIT #6             ; 19A5D9/C60001
L_19A5DC:
    SETYVEL     #$0200, WAIT #6             ; 19A5DC/C60002
L_19A5DF:
    SETXVEL     #$0080                      ; 19A5DF/B08000
    SETYVEL     #$FEC0, WAIT #6             ; 19A5E2/C6C0FE
L_19A5E5:
    SETYVEL     #$FF80, WAIT #6             ; 19A5E5/C680FF
L_19A5E8:
    SETYVEL     #$0080, WAIT #6             ; 19A5E8/C68000
L_19A5EB:
    SETYVEL     #$0140, WAIT #6             ; 19A5EB/C64001
L_19A5EE:
    ZEROVEL                                 ; 19A5EE/38
    WAIT        #12                         ; 19A5EF/060C
L_19A5F1:
    LOOP        #2                          ; 19A5F1/0102
        SETXVEL     #$FF00, WAIT #6             ; 19A5F3/B600FF
L_19A5F6:
        SETXVEL     #$FF80, WAIT #6             ; 19A5F6/B680FF
L_19A5F9:
        SETXVEL     #$FFC0, WAIT #6             ; 19A5F9/B6C0FF
L_19A5FC:
        SETXVEL     #$FFE0, WAIT #6             ; 19A5FC/B6E0FF
L_19A5FF:
    ENDLOOP                                 ; 19A5FF/02
    ZEROVEL                                 ; 19A600/38
    ENDTASK                                 ; 19A601/0C

L_19A602:
    A_JSR       L_19AAA8                    ; 19A602/18A8AA
    A_JSR       L_19A617                    ; 19A605/1817A6
    A_RTS                                   ; 19A608/19

L_19A609:
    A_JSR       L_19AABC                    ; 19A609/18BCAA
    ONDRAW      $DDAA                       ; 19A60C/20AADD
    SPRITEMAP   L_1A9910                     ; 19A60F/1A10991A
    A_JSR       L_19A617                    ; 19A613/1817A6
    A_RTS                                   ; 19A616/19

L_19A617:
    SETPOSE     #$48                        ; 19A617/5048
    WAIT        #55                         ; 19A619/0637
L_19A61B:
    ASMCALL     $DE45                       ; 19A61B/D045DE // Play music
    .byte       $07                         ; 19A61E/07
    TASK        L_19A64C                    ; 19A61F/074CA6
    SETPOSE     #$2E                        ; 19A622/502E
    WAIT        #48                         ; 19A624/0630
L_19A626:
    SETPOSE     #$32                        ; 19A626/5032
    WAIT        #20                         ; 19A628/0614
L_19A62A:
    LOOP        #2                          ; 19A62A/0102
        A_JSR       L_19A58D                    ; 19A62C/188DA5
    ENDLOOP                                 ; 19A62F/02
    SETPOSE     #$48, WAIT #4               ; 19A630/5448
L_19A632:
    WAIT        #31                         ; 19A632/061F
L_19A634:
    LOOP        #2                          ; 19A634/0102
        SETPOSE     #$2E, WAIT #10              ; 19A636/5A2E
L_19A638:
        SETPOSE     #$41                        ; 19A638/5041
        WAIT        #30                         ; 19A63A/061E
L_19A63C:
    ENDLOOP                                 ; 19A63C/02
    SETPOSE     #$26, WAIT #4               ; 19A63D/5426
L_19A63F:
    A_JSR       L_19AAA8                    ; 19A63F/18A8AA
    A_JSR       L_19AAA8                    ; 19A642/18A8AA
    SETPOSE     #$32                        ; 19A645/5032
    WAIT        #28                         ; 19A647/061C
L_19A649:
    SETPOSE     #$48                        ; 19A649/5048
    A_RTS                                   ; 19A64B/19

L_19A64C:
    SETXVEL     #$0080                      ; 19A64C/B08000
    SETYVEL     #$FE00, WAIT #8             ; 19A64F/C800FE
L_19A652:
    SETYVEL     #$FF00, WAIT #8             ; 19A652/C800FF
L_19A655:
    SETYVEL     #$FFC0, WAIT #8             ; 19A655/C8C0FF
L_19A658:
    SETYVEL     #$0040, WAIT #8             ; 19A658/C84000
L_19A65B:
    SETYVEL     #$0100, WAIT #8             ; 19A65B/C80001
L_19A65E:
    SETYVEL     #$0200, WAIT #8             ; 19A65E/C80002
L_19A661:
    ZEROVEL                                 ; 19A661/38
    WAIT        #20                         ; 19A662/0614
L_19A664:
    LOOP        #2                          ; 19A664/0102
        SETXVEL     #$FF00, WAIT #6             ; 19A666/B600FF
L_19A669:
        SETXVEL     #$FF80, WAIT #12            ; 19A669/BC80FF
L_19A66C:
        SETXVEL     #$FFE0, WAIT #6             ; 19A66C/B6E0FF
L_19A66F:
    ENDLOOP                                 ; 19A66F/02
    ZEROVEL                                 ; 19A670/38
    WAIT        #31                         ; 19A671/061F
L_19A673:
    LOOP        #2                          ; 19A673/0102
        SETXVEL     #$0000, WAIT #10            ; 19A675/BA0000
L_19A678:
        SETXVEL     #$FEC0, WAIT #10            ; 19A678/BAC0FE
L_19A67B:
        SETXVEL     #$FF80, WAIT #10            ; 19A67B/BA80FF
L_19A67E:
        SETXVEL     #$FFE0, WAIT #10            ; 19A67E/BAE0FF
L_19A681:
    ENDLOOP                                 ; 19A681/02
    ZEROVEL                                 ; 19A682/38
    WAIT        #4                          ; 19A683/0604
L_19A685:
    LOOP        #2                          ; 19A685/0102
        SETXVEL     #$0140, WAIT #8             ; 19A687/B84001
L_19A68A:
        SETXVEL     #$0080, WAIT #8             ; 19A68A/B88000
L_19A68D:
        SETXVEL     #$0040, WAIT #8             ; 19A68D/B84000
L_19A690:
    ENDLOOP                                 ; 19A690/02
    ZEROVEL                                 ; 19A691/38
    ENDTASK                                 ; 19A692/0C

L_19A693:
    A_JSR       L_19AAA8                    ; 19A693/18A8AA
    A_JSR       L_19A6A8                    ; 19A696/18A8A6
    A_RTS                                   ; 19A699/19

L_19A69A:
    A_JSR       L_19AABC                    ; 19A69A/18BCAA
    ONDRAW      $DDAA                       ; 19A69D/20AADD
    SPRITEMAP   L_1A9910                     ; 19A6A0/1A10991A
    A_JSR       L_19A6A8                    ; 19A6A4/18A8A6
    A_RTS                                   ; 19A6A7/19

L_19A6A8:
    SETPOSE     #$48                        ; 19A6A8/5048
    WAIT        #55                         ; 19A6AA/0637
L_19A6AC:
    ASMCALL     $DE45                       ; 19A6AC/D045DE // Play music
    .byte       $07                         ; 19A6AF/07
    TASK        L_19A6E5                    ; 19A6B0/07E5A6
    SETPOSE     #$33                        ; 19A6B3/5033
    WAIT        #48                         ; 19A6B5/0630
L_19A6B7:
    DEC2POSE                                ; 19A6B7/A0
    WAIT        #20                         ; 19A6B8/0614
L_19A6BA:
    SETPOSE     #$2D                        ; 19A6BA/502D
    WAIT        #18                         ; 19A6BC/0612
L_19A6BE:
    INCPOSE                                 ; 19A6BE/70
    WAIT        #32                         ; 19A6BF/0620
L_19A6C1:
    DECPOSE                                 ; 19A6C1/80
    WAIT        #16                         ; 19A6C2/0610
L_19A6C4:
    SETPOSE     #$31                        ; 19A6C4/5031
    WAIT        #16                         ; 19A6C6/0610
L_19A6C8:
    SETPOSE     #$41                        ; 19A6C8/5041
    WAIT        #20                         ; 19A6CA/0614
L_19A6CC:
    SETPOSE     #$34                        ; 19A6CC/5034
    WAIT        #20                         ; 19A6CE/0614
L_19A6D0:
    SETPOSE     #$2E                        ; 19A6D0/502E
    WAIT        #20                         ; 19A6D2/0614
L_19A6D4:
    SETPOSE     #$34                        ; 19A6D4/5034
    WAIT        #24                         ; 19A6D6/0618
L_19A6D8:
    A_JSR       L_19AAB2                    ; 19A6D8/18B2AA
    A_JSR       L_19AAB2                    ; 19A6DB/18B2AA
    SETPOSE     #$32                        ; 19A6DE/5032
    WAIT        #28                         ; 19A6E0/061C
L_19A6E2:
    SETPOSE     #$49                        ; 19A6E2/5049
    A_RTS                                   ; 19A6E4/19

L_19A6E5:
    SETYVEL     #$FE00, WAIT #8             ; 19A6E5/C800FE
L_19A6E8:
    SETYVEL     #$FF00, WAIT #8             ; 19A6E8/C800FF
L_19A6EB:
    SETYVEL     #$FFC0, WAIT #8             ; 19A6EB/C8C0FF
L_19A6EE:
    SETYVEL     #$0040, WAIT #8             ; 19A6EE/C84000
L_19A6F1:
    SETYVEL     #$0100, WAIT #8             ; 19A6F1/C80001
L_19A6F4:
    SETYVEL     #$0200, WAIT #8             ; 19A6F4/C80002
L_19A6F7:
    ZEROVEL                                 ; 19A6F7/38
    WAIT        #20                         ; 19A6F8/0614
L_19A6FA:
    A_JSR       L_19A735                    ; 19A6FA/1835A7
    LOOP        #2                          ; 19A6FD/0102
        SETXVEL     #$00C0                      ; 19A6FF/B0C000
        SETYVEL     #$FEC0, WAIT #4             ; 19A702/C4C0FE
L_19A705:
        SETYVEL     #$FF80, WAIT #4             ; 19A705/C480FF
L_19A708:
        SETYVEL     #$0080, WAIT #4             ; 19A708/C48000
L_19A70B:
        SETYVEL     #$0140, WAIT #4             ; 19A70B/C44001
L_19A70E:
    ENDLOOP                                 ; 19A70E/02
    A_JSR       L_19A735                    ; 19A70F/1835A7
    ZEROVEL                                 ; 19A712/38
    WAIT        #16                         ; 19A713/0610
L_19A715:
    SETXVEL     #$FE00                      ; 19A715/B000FE
    A_JSR       L_19A748                    ; 19A718/1848A7
    SETXVEL     #$0200                      ; 19A71B/B00002
    A_JSR       L_19A748                    ; 19A71E/1848A7
    SETXVEL     #$0140, WAIT #8             ; 19A721/B84001
L_19A724:
    SETXVEL     #$0080, WAIT #8             ; 19A724/B88000
L_19A727:
    SETXVEL     #$0040, WAIT #8             ; 19A727/B84000
L_19A72A:
    SETXVEL     #$FEC0, WAIT #8             ; 19A72A/B8C0FE
L_19A72D:
    SETXVEL     #$FF80, WAIT #8             ; 19A72D/B880FF
L_19A730:
    SETXVEL     #$FFC0, WAIT #8             ; 19A730/B8C0FF
L_19A733:
    ZEROVEL                                 ; 19A733/38
    ENDTASK                                 ; 19A734/0C

L_19A735:
    SETXVEL     #$FF40                      ; 19A735/B040FF
    SETYVEL     #$FEC0, WAIT #4             ; 19A738/C4C0FE
L_19A73B:
    SETYVEL     #$FF80, WAIT #4             ; 19A73B/C480FF
L_19A73E:
    SETYVEL     #$0080, WAIT #4             ; 19A73E/C48000
L_19A741:
    SETYVEL     #$0140, WAIT #4             ; 19A741/C44001
L_19A744:
    ZEROVEL                                 ; 19A744/38
    WAIT        #2                          ; 19A745/0602
L_19A747:
    A_RTS                                   ; 19A747/19

L_19A748:
    SETYVEL     #$FF00, WAIT #5             ; 19A748/C500FF
L_19A74B:
    SETYVEL     #$FFC0, WAIT #5             ; 19A74B/C5C0FF
L_19A74E:
    SETYVEL     #$0040, WAIT #5             ; 19A74E/C54000
L_19A751:
    SETYVEL     #$0100, WAIT #5             ; 19A751/C50001
L_19A754:
    ZEROVEL                                 ; 19A754/38
    WAIT        #24                         ; 19A755/0618
L_19A757:
    A_RTS                                   ; 19A757/19

L_19A758:
    A_JSR       L_19AAA8                    ; 19A758/18A8AA
    A_JSR       L_19A76D                    ; 19A75B/186DA7
    A_RTS                                   ; 19A75E/19

L_19A75F:
    A_JSR       L_19AABC                    ; 19A75F/18BCAA
    ONDRAW      $DDAA                       ; 19A762/20AADD
    SPRITEMAP   L_1A9910                     ; 19A765/1A10991A
    A_JSR       L_19A76D                    ; 19A769/186DA7
    A_RTS                                   ; 19A76C/19

L_19A76D:
    SETPOSE     #$48                        ; 19A76D/5048
    WAIT        #55                         ; 19A76F/0637
L_19A771:
    ASMCALL     $DE45                       ; 19A771/D045DE // Play music
    .byte       $07                         ; 19A774/07
    TASK        L_19A7C6                    ; 19A775/07C6A7
    LOOP        #2                          ; 19A778/0102
        SETPOSE     #$2B, WAIT #14              ; 19A77A/5E2B
L_19A77C:
        SETPOSE     #$29, WAIT #7               ; 19A77C/5729
L_19A77E:
    ENDLOOP                                 ; 19A77E/02
    SETPOSE     #$2F, WAIT #3               ; 19A77F/532F
L_19A781:
    SETPOSE     #$2E, WAIT #5               ; 19A781/552E
L_19A783:
    SETPOSE     #$45, WAIT #5               ; 19A783/5545
L_19A785:
    SETPOSE     #$42, WAIT #5               ; 19A785/5542
L_19A787:
    SETPOSE     #$41, WAIT #5               ; 19A787/5541
L_19A789:
    SETPOSE     #$2E, WAIT #10              ; 19A789/5A2E
L_19A78B:
    SETPOSE     #$30, WAIT #3               ; 19A78B/5330
L_19A78D:
    SETPOSE     #$25, WAIT #6               ; 19A78D/5625
L_19A78F:
    LOOP        #2                          ; 19A78F/0102
        SETPOSE     #$4D, WAIT #7               ; 19A791/574D
L_19A793:
        SETPOSE     #$40, WAIT #7               ; 19A793/5740
L_19A795:
        SETPOSE     #$2F, WAIT #7               ; 19A795/572F
L_19A797:
    ENDLOOP                                 ; 19A797/02
    A_JSR       L_19AAA8                    ; 19A798/18A8AA
    SETPOSE     #$2F, WAIT #6               ; 19A79B/562F
L_19A79D:
    SETPOSE     #$4A, WAIT #12              ; 19A79D/5C4A
L_19A79F:
    SETPOSE     #$37, WAIT #8               ; 19A79F/5837
L_19A7A1:
    SETPOSE     #$39, WAIT #8               ; 19A7A1/5839
L_19A7A3:
    SETPOSE     #$3A, WAIT #8               ; 19A7A3/583A
L_19A7A5:
    SETPOSE     #$38, WAIT #8               ; 19A7A5/5838
L_19A7A7:
    SETPOSE     #$30, WAIT #10              ; 19A7A7/5A30
L_19A7A9:
    LOOP        #2                          ; 19A7A9/0102
        SETPOSE     #$38, WAIT #4               ; 19A7AB/5438
L_19A7AD:
        SETPOSE     #$3A, WAIT #4               ; 19A7AD/543A
L_19A7AF:
        SETPOSE     #$39, WAIT #4               ; 19A7AF/5439
L_19A7B1:
        SETPOSE     #$37, WAIT #4               ; 19A7B1/5437
L_19A7B3:
        SETPOSE     #$28, WAIT #5               ; 19A7B3/5528
L_19A7B5:
    ENDLOOP                                 ; 19A7B5/02
    SETPOSE     #$4D, WAIT #8               ; 19A7B6/584D
L_19A7B8:
    SETPOSE     #$2D, WAIT #8               ; 19A7B8/582D
L_19A7BA:
    SETPOSE     #$2F, WAIT #3               ; 19A7BA/532F
L_19A7BC:
    A_JSR       L_19AAA8                    ; 19A7BC/18A8AA
    SETPOSE     #$2F                        ; 19A7BF/502F
    WAIT        #21                         ; 19A7C1/0615
L_19A7C3:
    SETPOSE     #$4A, WAIT #5               ; 19A7C3/554A
L_19A7C5:
    A_RTS                                   ; 19A7C5/19

L_19A7C6:
    ZEROVEL                                 ; 19A7C6/38
    LOOP        #2                          ; 19A7C7/0102
        SETXVEL     #$FEC0, WAIT #7             ; 19A7C9/B7C0FE
L_19A7CC:
        SETXVEL     #$FF80, WAIT #7             ; 19A7CC/B780FF
L_19A7CF:
        SETXVEL     #$FFE0, WAIT #7             ; 19A7CF/B7E0FF
L_19A7D2:
    ENDLOOP                                 ; 19A7D2/02
    ZEROVEL                                 ; 19A7D3/38
    WAIT        #3                          ; 19A7D4/0603
L_19A7D6:
    SETXVEL     #$0100                      ; 19A7D6/B00001
    SETYVEL     #$FC00, WAIT #5             ; 19A7D9/C500FC
L_19A7DC:
    SETYVEL     #$FE00, WAIT #5             ; 19A7DC/C500FE
L_19A7DF:
    SETYVEL     #$FF00, WAIT #5             ; 19A7DF/C500FF
L_19A7E2:
    SETYVEL     #$0100, WAIT #5             ; 19A7E2/C50001
L_19A7E5:
    SETYVEL     #$0200, WAIT #5             ; 19A7E5/C50002
L_19A7E8:
    SETYVEL     #$0400, WAIT #5             ; 19A7E8/C50004
L_19A7EB:
    ZEROVEL                                 ; 19A7EB/38
    WAIT        #9                          ; 19A7EC/0609
L_19A7EE:
    LOOP        #2                          ; 19A7EE/0102
        SETXVEL     #$0100                      ; 19A7F0/B00001
        SETYVEL     #$FF00, WAIT #7             ; 19A7F3/C700FF
L_19A7F6:
        SETYVEL     #$0100, WAIT #7             ; 19A7F6/C70001
L_19A7F9:
        ZEROVEL                                 ; 19A7F9/38
        WAIT        #7                          ; 19A7FA/0607
L_19A7FC:
    ENDLOOP                                 ; 19A7FC/02
    SETXVEL     #$FF00, WAIT #4             ; 19A7FD/B400FF
L_19A800:
    SETXVEL     #$FE00, WAIT #4             ; 19A800/B400FE
L_19A803:
    SETXVEL     #$FF00, WAIT #4             ; 19A803/B400FF
L_19A806:
    SETXVEL     #$FF80, WAIT #4             ; 19A806/B480FF
L_19A809:
    SETXVEL     #$FFE0, WAIT #4             ; 19A809/B4E0FF
L_19A80C:
    ZEROVEL                                 ; 19A80C/38
    WAIT        #22                         ; 19A80D/0616
L_19A80F:
    SETXVEL     #$FEC0                      ; 19A80F/B0C0FE
    SETYVEL     #$FF00, WAIT #8             ; 19A812/C800FF
L_19A815:
    SETYVEL     #$FF80, WAIT #8             ; 19A815/C880FF
L_19A818:
    SETYVEL     #$0080, WAIT #8             ; 19A818/C88000
L_19A81B:
    SETYVEL     #$0100, WAIT #8             ; 19A81B/C80001
L_19A81E:
    ZEROVEL                                 ; 19A81E/38
    WAIT        #10                         ; 19A81F/060A
L_19A821:
    LOOP        #2                          ; 19A821/0102
        SETXVEL     #$0100, WAIT #12            ; 19A823/BC0001
L_19A826:
        SETXVEL     #$0080, WAIT #4             ; 19A826/B48000
L_19A829:
        ZEROVEL                                 ; 19A829/38
        WAIT        #5                          ; 19A82A/0605
L_19A82C:
    ENDLOOP                                 ; 19A82C/02
    SETYVEL     #$FC00, WAIT #4             ; 19A82D/C400FC
L_19A830:
    SETYVEL     #$FE00, WAIT #2             ; 19A830/C200FE
L_19A833:
    SETYVEL     #$FF00, WAIT #2             ; 19A833/C200FF
L_19A836:
    SETYVEL     #$0100, WAIT #2             ; 19A836/C20001
L_19A839:
    SETYVEL     #$0200, WAIT #2             ; 19A839/C20002
L_19A83C:
    SETYVEL     #$0400, WAIT #4             ; 19A83C/C40004
L_19A83F:
    ZEROVEL                                 ; 19A83F/38
    WAIT        #3                          ; 19A840/0603
L_19A842:
    SETXVEL     #$FE00, WAIT #4             ; 19A842/B400FE
L_19A845:
    SETXVEL     #$FF00, WAIT #4             ; 19A845/B400FF
L_19A848:
    SETXVEL     #$FF80, WAIT #4             ; 19A848/B480FF
L_19A84B:
    SETXVEL     #$0080, WAIT #4             ; 19A84B/B48000
L_19A84E:
    SETXVEL     #$0100, WAIT #4             ; 19A84E/B40001
L_19A851:
    SETXVEL     #$0200, WAIT #4             ; 19A851/B40002
L_19A854:
    SETXVEL     #$0100, WAIT #4             ; 19A854/B40001
L_19A857:
    SETXVEL     #$0080, WAIT #4             ; 19A857/B48000
L_19A85A:
    ZEROVEL                                 ; 19A85A/38
    WAIT        #13                         ; 19A85B/060D
L_19A85D:
    ENDTASK                                 ; 19A85D/0C

L_19A85E:
    A_JSR       L_19AAA8                    ; 19A85E/18A8AA
    A_JSR       L_19A873                    ; 19A861/1873A8
    A_RTS                                   ; 19A864/19

L_19A865:
    A_JSR       L_19AABC                    ; 19A865/18BCAA
    ONDRAW      $DDAA                       ; 19A868/20AADD
    SPRITEMAP   L_1A9910                     ; 19A86B/1A10991A
    A_JSR       L_19A873                    ; 19A86F/1873A8
    A_RTS                                   ; 19A872/19

L_19A873:
    SETPOSE     #$48                        ; 19A873/5048
    WAIT        #55                         ; 19A875/0637
L_19A877:
    ASMCALL     $DE45                       ; 19A877/D045DE // Play music
    .byte       $07                         ; 19A87A/07
    TASK        L_19A8C6                    ; 19A87B/07C6A8
    SETPOSE     #$2F, WAIT #7               ; 19A87E/572F
L_19A880:
    SETPOSE     #$33                        ; 19A880/5033
    WAIT        #28                         ; 19A882/061C
L_19A884:
    SETPOSE     #$30, WAIT #7               ; 19A884/5730
L_19A886:
    SETPOSE     #$2F, WAIT #6               ; 19A886/562F
L_19A888:
    SETPOSE     #$2D, WAIT #12              ; 19A888/5C2D
L_19A88A:
    SETPOSE     #$40, WAIT #12              ; 19A88A/5C40
L_19A88C:
    SETPOSE     #$2F, WAIT #6               ; 19A88C/562F
L_19A88E:
    SETPOSE     #$25, WAIT #6               ; 19A88E/5625
L_19A890:
    A_JSR       L_19AAA8                    ; 19A890/18A8AA
    A_JSR       L_19AAA8                    ; 19A893/18A8AA
    SETPOSE     #$2F                        ; 19A896/502F
    WAIT        #16                         ; 19A898/0610
L_19A89A:
    SETPOSE     #$4A                        ; 19A89A/504A
    WAIT        #20                         ; 19A89C/0614
L_19A89E:
    SETPOSE     #$2B, WAIT #8               ; 19A89E/582B
L_19A8A0:
    SETPOSE     #$50, WAIT #7               ; 19A8A0/5750
L_19A8A2:
    SETPOSE     #$4E, WAIT #6               ; 19A8A2/564E
L_19A8A4:
    SETPOSE     #$4F, WAIT #6               ; 19A8A4/564F
L_19A8A6:
    SETPOSE     #$51, WAIT #7               ; 19A8A6/5751
L_19A8A8:
    SETPOSE     #$2E, WAIT #8               ; 19A8A8/582E
L_19A8AA:
    SETPOSE     #$30, WAIT #7               ; 19A8AA/5730
L_19A8AC:
    SETPOSE     #$37, WAIT #7               ; 19A8AC/5737
L_19A8AE:
    SETPOSE     #$37, WAIT #7               ; 19A8AE/5737
L_19A8B0:
    SETPOSE     #$39, WAIT #7               ; 19A8B0/5739
L_19A8B2:
    SETPOSE     #$39, WAIT #7               ; 19A8B2/5739
L_19A8B4:
    SETPOSE     #$30, WAIT #7               ; 19A8B4/5730
L_19A8B6:
    SETPOSE     #$4D, WAIT #8               ; 19A8B6/584D
L_19A8B8:
    SETPOSE     #$2D, WAIT #8               ; 19A8B8/582D
L_19A8BA:
    SETPOSE     #$30, WAIT #5               ; 19A8BA/5530
L_19A8BC:
    A_JSR       L_19AAA8                    ; 19A8BC/18A8AA
    SETPOSE     #$2F                        ; 19A8BF/502F
    WAIT        #17                         ; 19A8C1/0611
L_19A8C3:
    SETPOSE     #$4A, WAIT #5               ; 19A8C3/554A
L_19A8C5:
    A_RTS                                   ; 19A8C5/19

L_19A8C6:
    ZEROVEL                                 ; 19A8C6/38
    WAIT        #7                          ; 19A8C7/0607
L_19A8C9:
    SETYVEL     #$FC00, WAIT #7             ; 19A8C9/C700FC
L_19A8CC:
    SETYVEL     #$FE00, WAIT #7             ; 19A8CC/C700FE
L_19A8CF:
    SETYVEL     #$0200, WAIT #7             ; 19A8CF/C70002
L_19A8D2:
    SETYVEL     #$0400, WAIT #7             ; 19A8D2/C70004
L_19A8D5:
    ZEROVEL                                 ; 19A8D5/38
    WAIT        #7                          ; 19A8D6/0607
L_19A8D8:
    SETXVEL     #$FF00                      ; 19A8D8/B000FF
    SETYVEL     #$FE00, WAIT #6             ; 19A8DB/C600FE
L_19A8DE:
    SETYVEL     #$FF00, WAIT #6             ; 19A8DE/C600FF
L_19A8E1:
    SETYVEL     #$0000, WAIT #6             ; 19A8E1/C60000
L_19A8E4:
    SETYVEL     #$0100, WAIT #6             ; 19A8E4/C60001
L_19A8E7:
    SETYVEL     #$0200, WAIT #6             ; 19A8E7/C60002
L_19A8EA:
    SETYVEL     #$0000, WAIT #6             ; 19A8EA/C60000
L_19A8ED:
    ZEROVEL                                 ; 19A8ED/38
    WAIT        #6                          ; 19A8EE/0606
L_19A8F0:
    LOOP        #2                          ; 19A8F0/0102
        SETXVEL     #$0200, WAIT #4             ; 19A8F2/B40002
L_19A8F5:
        SETXVEL     #$0100, WAIT #4             ; 19A8F5/B40001
L_19A8F8:
        SETXVEL     #$0080, WAIT #8             ; 19A8F8/B88000
L_19A8FB:
        SETXVEL     #$0020, WAIT #8             ; 19A8FB/B82000
L_19A8FE:
    ENDLOOP                                 ; 19A8FE/02
    ZEROVEL                                 ; 19A8FF/38
    WAIT        #36                         ; 19A900/0624
L_19A902:
    SETXVEL     #$0100                      ; 19A902/B00001
    SETYVEL     #$FE00, WAIT #8             ; 19A905/C800FE
L_19A908:
    SETYVEL     #$FF00, WAIT #7             ; 19A908/C700FF
L_19A90B:
    SETYVEL     #$FF80, WAIT #6             ; 19A90B/C680FF
L_19A90E:
    SETYVEL     #$0080, WAIT #6             ; 19A90E/C68000
L_19A911:
    SETYVEL     #$0100, WAIT #7             ; 19A911/C70001
L_19A914:
    SETYVEL     #$0200, WAIT #8             ; 19A914/C80002
L_19A917:
    ZEROVEL                                 ; 19A917/38
    WAIT        #7                          ; 19A918/0607
L_19A91A:
    SETXVEL     #$FF00                      ; 19A91A/B000FF
    SETYVEL     #$FE00, WAIT #7             ; 19A91D/C700FE
L_19A920:
    SETYVEL     #$FF00, WAIT #7             ; 19A920/C700FF
L_19A923:
    SETYVEL     #$0100, WAIT #7             ; 19A923/C70001
L_19A926:
    SETYVEL     #$0200, WAIT #7             ; 19A926/C70002
L_19A929:
    ZEROVEL                                 ; 19A929/38
    WAIT        #7                          ; 19A92A/0607
L_19A92C:
    SETYVEL     #$FE00, WAIT #4             ; 19A92C/C400FE
L_19A92F:
    SETYVEL     #$FF00, WAIT #4             ; 19A92F/C400FF
L_19A932:
    SETYVEL     #$0100, WAIT #4             ; 19A932/C40001
L_19A935:
    SETYVEL     #$0200, WAIT #4             ; 19A935/C40002
L_19A938:
    ZEROVEL                                 ; 19A938/38
    WAIT        #5                          ; 19A939/0605
L_19A93B:
    SETXVEL     #$FF00                      ; 19A93B/B000FF
    SETYVEL     #$FE00, WAIT #4             ; 19A93E/C400FE
L_19A941:
    SETYVEL     #$FF00, WAIT #4             ; 19A941/C400FF
L_19A944:
    SETYVEL     #$FF80, WAIT #4             ; 19A944/C480FF
L_19A947:
    SETYVEL     #$0080, WAIT #4             ; 19A947/C48000
L_19A94A:
    SETXVEL     #$FF80                      ; 19A94A/B080FF
    SETYVEL     #$0100, WAIT #4             ; 19A94D/C40001
L_19A950:
    SETYVEL     #$0200, WAIT #4             ; 19A950/C40002
L_19A953:
    ZEROVEL                                 ; 19A953/38
    WAIT        #17                         ; 19A954/0611
L_19A956:
    ENDTASK                                 ; 19A956/0C

L_19A957:
    A_JSR       L_19AAA8                    ; 19A957/18A8AA
    A_JSR       L_19A96C                    ; 19A95A/186CA9
    A_RTS                                   ; 19A95D/19

L_19A95E:
    A_JSR       L_19AABC                    ; 19A95E/18BCAA
    ONDRAW      $DDAA                       ; 19A961/20AADD
    SPRITEMAP   L_1A9910                     ; 19A964/1A10991A
    A_JSR       L_19A96C                    ; 19A968/186CA9
    A_RTS                                   ; 19A96B/19

L_19A96C:
    SETPOSE     #$48                        ; 19A96C/5048
    WAIT        #55                         ; 19A96E/0637
L_19A970:
    ASMCALL     $DE45                       ; 19A970/D045DE // Play music
    .byte       $07                         ; 19A973/07
    TASK        L_19A9D3                    ; 19A974/07D3A9
    LOOP        #2                          ; 19A977/0102
        SETPOSE     #$2F, WAIT #5               ; 19A979/552F
L_19A97B:
        SETPOSE     #$27, WAIT #10              ; 19A97B/5A27
L_19A97D:
        SETPOSE     #$29, WAIT #6               ; 19A97D/5629
L_19A97F:
    ENDLOOP                                 ; 19A97F/02
    SETPOSE     #$37                        ; 19A980/5037
    WAIT        #42                         ; 19A982/062A
L_19A984:
    A_JSR       L_19AAB2                    ; 19A984/18B2AA
    A_JSR       L_19AAB2                    ; 19A987/18B2AA
    SETPOSE     #$41                        ; 19A98A/5041
    WAIT        #21                         ; 19A98C/0615
L_19A98E:
    SETPOSE     #$4B                        ; 19A98E/504B
    WAIT        #16                         ; 19A990/0610
L_19A992:
    SETPOSE     #$2F, WAIT #3               ; 19A992/532F
L_19A994:
    SETPOSE     #$2D, WAIT #15              ; 19A994/5F2D
L_19A996:
    SETPOSE     #$2F, WAIT #3               ; 19A996/532F
L_19A998:
    SETPOSE     #$2F, WAIT #3               ; 19A998/532F
L_19A99A:
    SETPOSE     #$2D, WAIT #15              ; 19A99A/5F2D
L_19A99C:
    SETPOSE     #$2F, WAIT #3               ; 19A99C/532F
L_19A99E:
    SETPOSE     #$37, WAIT #4               ; 19A99E/5437
L_19A9A0:
    SETPOSE     #$38, WAIT #4               ; 19A9A0/5438
L_19A9A2:
    SETPOSE     #$3A, WAIT #4               ; 19A9A2/543A
L_19A9A4:
    SETPOSE     #$39, WAIT #4               ; 19A9A4/5439
L_19A9A6:
    SETPOSE     #$37, WAIT #5               ; 19A9A6/5537
L_19A9A8:
    SETPOSE     #$39, WAIT #4               ; 19A9A8/5439
L_19A9AA:
    SETPOSE     #$3A, WAIT #4               ; 19A9AA/543A
L_19A9AC:
    SETPOSE     #$38, WAIT #4               ; 19A9AC/5438
L_19A9AE:
    SETPOSE     #$37, WAIT #4               ; 19A9AE/5437
L_19A9B0:
    SETPOSE     #$39, WAIT #5               ; 19A9B0/5539
L_19A9B2:
    SETPOSE     #$37, WAIT #4               ; 19A9B2/5437
L_19A9B4:
    SETPOSE     #$38, WAIT #4               ; 19A9B4/5438
L_19A9B6:
    SETPOSE     #$3A, WAIT #4               ; 19A9B6/543A
L_19A9B8:
    SETPOSE     #$39, WAIT #4               ; 19A9B8/5439
L_19A9BA:
    SETPOSE     #$37, WAIT #5               ; 19A9BA/5537
L_19A9BC:
    SETPOSE     #$39, WAIT #4               ; 19A9BC/5439
L_19A9BE:
    SETPOSE     #$3A, WAIT #4               ; 19A9BE/543A
L_19A9C0:
    SETPOSE     #$38, WAIT #2               ; 19A9C0/5238
L_19A9C2:
    SETPOSE     #$37, WAIT #4               ; 19A9C2/5437
L_19A9C4:
    SETPOSE     #$39, WAIT #2               ; 19A9C4/5239
L_19A9C6:
    SETPOSE     #$3A, WAIT #4               ; 19A9C6/543A
L_19A9C8:
    SETPOSE     #$38, WAIT #6               ; 19A9C8/5638
L_19A9CA:
    SETPOSE     #$26, WAIT #3               ; 19A9CA/5326
L_19A9CC:
    SETPOSE     #$30                        ; 19A9CC/5030
    WAIT        #18                         ; 19A9CE/0612
L_19A9D0:
    SETPOSE     #$4A                        ; 19A9D0/504A
    A_RTS                                   ; 19A9D2/19

L_19A9D3:
    LOOP        #2                          ; 19A9D3/0102
        ZEROVEL                                 ; 19A9D5/38
        WAIT        #5                          ; 19A9D6/0605
L_19A9D8:
        SETXVEL     #$0200                      ; 19A9D8/B00002
        SETYVEL     #$FE00, WAIT #2             ; 19A9DB/C200FE
L_19A9DE:
        SETYVEL     #$FF00, WAIT #2             ; 19A9DE/C200FF
L_19A9E1:
        SETYVEL     #$0000, WAIT #2             ; 19A9E1/C20000
L_19A9E4:
        SETYVEL     #$0100, WAIT #2             ; 19A9E4/C20001
L_19A9E7:
        SETYVEL     #$0200, WAIT #2             ; 19A9E7/C20002
L_19A9EA:
        ZEROVEL                                 ; 19A9EA/38
        WAIT        #6                          ; 19A9EB/0606
L_19A9ED:
    ENDLOOP                                 ; 19A9ED/02
    SETXVEL     #$FC00, WAIT #7             ; 19A9EE/B700FC
L_19A9F1:
    SETXVEL     #$FF00, WAIT #7             ; 19A9F1/B700FF
L_19A9F4:
    SETXVEL     #$FF80, WAIT #7             ; 19A9F4/B780FF
L_19A9F7:
    SETXVEL     #$FFE0, WAIT #7             ; 19A9F7/B7E0FF
L_19A9FA:
    WAIT        #14                         ; 19A9FA/060E
L_19A9FC:
    LOOP        #2                          ; 19A9FC/0102
        SETXVEL     #$0200, WAIT #4             ; 19A9FE/B40002
L_19AA01:
        SETXVEL     #$0100, WAIT #4             ; 19AA01/B40001
L_19AA04:
        SETXVEL     #$0080, WAIT #4             ; 19AA04/B48000
L_19AA07:
        SETXVEL     #$FF00, WAIT #4             ; 19AA07/B400FF
L_19AA0A:
        SETXVEL     #$FE00, WAIT #4             ; 19AA0A/B400FE
L_19AA0D:
        SETXVEL     #$FD00, WAIT #4             ; 19AA0D/B400FD
L_19AA10:
    ENDLOOP                                 ; 19AA10/02
    SETXVEL     #$FE00, WAIT #7             ; 19AA11/B700FE
L_19AA14:
    SETXVEL     #$FF80, WAIT #6             ; 19AA14/B680FF
L_19AA17:
    SETXVEL     #$FFE0, WAIT #6             ; 19AA17/B6E0FF
L_19AA1A:
    ZEROVEL                                 ; 19AA1A/38
    WAIT        #2                          ; 19AA1B/0602
L_19AA1D:
    ZEROVEL                                 ; 19AA1D/38
    WAIT        #16                         ; 19AA1E/0610
L_19AA20:
    ZEROVEL                                 ; 19AA20/38
    WAIT        #3                          ; 19AA21/0603
L_19AA23:
    SETYVEL     #$FE00, WAIT #3             ; 19AA23/C300FE
L_19AA26:
    SETYVEL     #$FF00, WAIT #3             ; 19AA26/C300FF
L_19AA29:
    ZEROVEL                                 ; 19AA29/38
    WAIT        #3                          ; 19AA2A/0603
L_19AA2C:
    SETYVEL     #$0100, WAIT #3             ; 19AA2C/C30001
L_19AA2F:
    SETYVEL     #$0200, WAIT #3             ; 19AA2F/C30002
L_19AA32:
    ZEROVEL                                 ; 19AA32/38
    WAIT        #3                          ; 19AA33/0603
L_19AA35:
    ZEROVEL                                 ; 19AA35/38
    WAIT        #3                          ; 19AA36/0603
L_19AA38:
    SETYVEL     #$FE00, WAIT #3             ; 19AA38/C300FE
L_19AA3B:
    SETYVEL     #$FF00, WAIT #3             ; 19AA3B/C300FF
L_19AA3E:
    ZEROVEL                                 ; 19AA3E/38
    WAIT        #3                          ; 19AA3F/0603
L_19AA41:
    SETYVEL     #$0100, WAIT #3             ; 19AA41/C30001
L_19AA44:
    SETYVEL     #$0200, WAIT #3             ; 19AA44/C30002
L_19AA47:
    ZEROVEL                                 ; 19AA47/38
    WAIT        #3                          ; 19AA48/0603
L_19AA4A:
    SETXVEL     #$0400                      ; 19AA4A/B00004
    SETYVEL     #$FC00, WAIT #4             ; 19AA4D/C400FC
L_19AA50:
    SETXVEL     #$0200                      ; 19AA50/B00002
    SETYVEL     #$FE00, WAIT #4             ; 19AA53/C400FE
L_19AA56:
    SETXVEL     #$0100                      ; 19AA56/B00001
    SETYVEL     #$FF00, WAIT #4             ; 19AA59/C400FF
L_19AA5C:
    SETYVEL     #$0000, WAIT #4             ; 19AA5C/C40000
L_19AA5F:
    SETYVEL     #$0100, WAIT #2             ; 19AA5F/C20001
L_19AA62:
    SETYVEL     #$0200, WAIT #2             ; 19AA62/C20002
L_19AA65:
    ZEROVEL                                 ; 19AA65/38
    WAIT        #1                          ; 19AA66/0601
L_19AA68:
    SETXVEL     #$FF00                      ; 19AA68/B000FF
    SETYVEL     #$FC00, WAIT #4             ; 19AA6B/C400FC
L_19AA6E:
    SETYVEL     #$FE00, WAIT #4             ; 19AA6E/C400FE
L_19AA71:
    SETYVEL     #$FF00, WAIT #4             ; 19AA71/C400FF
L_19AA74:
    SETYVEL     #$0000, WAIT #4             ; 19AA74/C40000
L_19AA77:
    SETYVEL     #$0100, WAIT #2             ; 19AA77/C20001
L_19AA7A:
    SETYVEL     #$0200, WAIT #2             ; 19AA7A/C20002
L_19AA7D:
    ZEROVEL                                 ; 19AA7D/38
    WAIT        #1                          ; 19AA7E/0601
L_19AA80:
    SETXVEL     #$0100                      ; 19AA80/B00001
    SETYVEL     #$FC00, WAIT #4             ; 19AA83/C400FC
L_19AA86:
    SETYVEL     #$FE00, WAIT #4             ; 19AA86/C400FE
L_19AA89:
    SETYVEL     #$FF00, WAIT #4             ; 19AA89/C400FF
L_19AA8C:
    SETXVEL     #$0080                      ; 19AA8C/B08000
    SETYVEL     #$0000, WAIT #4             ; 19AA8F/C40000
L_19AA92:
    SETXVEL     #$0020, WAIT #5             ; 19AA92/B52000
L_19AA95:
    ZEROVEL                                 ; 19AA95/38
    WAIT        #10                         ; 19AA96/060A
L_19AA98:
    SETYVEL     #$0100, WAIT #4             ; 19AA98/C40001
L_19AA9B:
    SETYVEL     #$0200, WAIT #2             ; 19AA9B/C20002
L_19AA9E:
    SETYVEL     #$0400, WAIT #4             ; 19AA9E/C40004
L_19AAA1:
    SETYVEL     #$0800, WAIT #6             ; 19AAA1/C60008
L_19AAA4:
    ZEROVEL                                 ; 19AAA4/38
    WAIT        #2                          ; 19AAA5/0602
L_19AAA7:
    ENDTASK                                 ; 19AAA7/0C

L_19AAA8:
    SETPOSE     #$27, WAIT #4               ; 19AAA8/5427
L_19AAAA:
    SETPOSE     #$3B, WAIT #4               ; 19AAAA/543B
L_19AAAC:
    INC2POSE    WAIT #4                     ; 19AAAC/94
L_19AAAD:
    INCPOSE     WAIT #4                     ; 19AAAD/74
L_19AAAE:
    DEC2POSE    WAIT #4                     ; 19AAAE/A4
L_19AAAF:
    SETPOSE     #$28, WAIT #4               ; 19AAAF/5428
L_19AAB1:
    A_RTS                                   ; 19AAB1/19

L_19AAB2:
    SETPOSE     #$28, WAIT #4               ; 19AAB2/5428
L_19AAB4:
    SETPOSE     #$3C, WAIT #4               ; 19AAB4/543C
L_19AAB6:
    INC2POSE    WAIT #4                     ; 19AAB6/94
L_19AAB7:
    DECPOSE     WAIT #4                     ; 19AAB7/84
L_19AAB8:
    DEC2POSE    WAIT #4                     ; 19AAB8/A4
L_19AAB9:
    SETPOSE     #$27, WAIT #4               ; 19AAB9/5427
L_19AABB:
    A_RTS                                   ; 19AABB/19

L_19AABC:
    SPRITEMAP   L_1C9CD7                     ; 19AABC/1AD79C1C
    SETPOSE     #$14, WAIT #3               ; 19AAC0/5314
L_19AAC2:
    LOOP        #7                          ; 19AAC2/0107
        INCPOSE     WAIT #3                     ; 19AAC4/73
L_19AAC5:
    ENDLOOP                                 ; 19AAC5/02
    A_RTS                                   ; 19AAC6/19

Script04_KirbyDance:
    ONDRAW      $DDAA                       ; 19AAC7/20AADD
    MOV         REG,VAR0                    ; 19AACA/1E00
    TABLEJMP    #11                         ; 19AACC/0F0B
    .word       SCR04_GoalPlatform          ; 19AACE/E4AA
    .word       SCR04_KDance01              ; 19AAD0/F1AA
    .word       SCR04_BossDance             ; 19AAD2/80A4
    .word       SCR04_BossDanceClone        ; 19AAD4/9AA4
    .word       SCR04_GoalStars             ; 19AAD6/1BAB
    .word       SCR04_KDance05              ; 19AAD8/08AB
    .word       SCR04_GoalKirbyHoldSign     ; 19AADA/3DAB
    .word       SCR04_GoalSign              ; 19AADC/0FAC
    .word       SCR04_KDance08              ; 19AADE/54AC
    .word       SCR04_GoalDance             ; 19AAE0/E5A3
    .word       SCR04_GoalDanceClone        ; 19AAE2/05A4
SCR04_GoalPlatform:
    SETXPOS     #$0080                      ; 19AAE4/2A8000
    SETYPOS     #$0421                      ; 19AAE7/2B2104
    SPRITEMAP   L_1A9910                     ; 19AAEA/1A10991A
    SETPOSE     #$00                        ; 19AAEE/5000
    HALT                                    ; 19AAF0/09

SCR04_KDance01:
    ONDRAW      $DA89                       ; 19AAF1/2089DA
    SPRITEMAP   L_1C9F0B                     ; 19AAF4/1A0B9F1C
    SETZPOS     #$00FF                      ; 19AAF8/3AFF00
    SETPOSE     #$00                        ; 19AAFB/5000
    SETBANK     #$22                        ; 19AAFD/2822
    MOV         VAR4,#$FF                   ; 19AAFF/0D04FF
    MOV         VAR3,#$01                   ; 19AB02/0D0301
    A_JMP       $8003                       ; 19AB05/170380

SCR04_KDance05:
    ONDRAW      $DA89                       ; 19AB08/2089DA
    SPRITEMAP   L_1C9F0B                     ; 19AB0B/1A0B9F1C
    SETZPOS     #$00FF                      ; 19AB0F/3AFF00
    SETPOSE     #$00                        ; 19AB12/5000
    MOV         VAR3,#$01                   ; 19AB14/0D0301
    JML         L_16A9CE                    ; 19AB17/03CEA916

SCR04_GoalStars:
    SPRITEMAP   L_1A9910                     ; 19AB1B/1A10991A
    ASMCALL     $AFF0                       ; 19AB1F/D0F0AF // Copy parent object's VAR3 to self
L_19AB22:
    ONTICK      $19AFFC                     ; 19AB22/08FCAF19
    HALT                                    ; 19AB26/09

L_19AB27:
    SETPOSE     #$52                        ; 19AB27/5052
    ONTICK      $19B05A                     ; 19AB29/085AB019
    HALT                                    ; 19AB2D/09

L_19AB2E:
    ONTICK      $19B05A                     ; 19AB2E/085AB019
L_19AB32:
    SETPOSE     #$53, WAIT #4               ; 19AB32/5453
L_19AB34:
    INCPOSE     WAIT #4                     ; 19AB34/74
L_19AB35:
    INCPOSE     WAIT #4                     ; 19AB35/74
L_19AB36:
    INCPOSE     WAIT #4                     ; 19AB36/74
L_19AB37:
    A_JMP       L_19AB32                    ; 19AB37/1732AB

L_19AB3A:
    WAIT        #40                         ; 19AB3A/0628
L_19AB3C:
    END                                     ; 19AB3C/00

SCR04_GoalKirbyHoldSign:
    ONDRAW      $DA89                       ; 19AB3D/2089DA
    SETZPOS     #$0081                      ; 19AB40/3A8100
    ASMCALL     Load_Palette                ; 19AB43/D061DF // Load_Palette, palette, start_index, entries
    .word       $AFDB                       ; 19AB46/DBAF
    .byte       $1C                         ; 19AB48/1C
    .byte       $04                         ; 19AB49/04
    ASMCALL     $AE20                       ; 19AB4A/D020AE
    JEQ         L_19ABC3                    ; 19AB4D/0AC3AB
    SETZPOS     #$007F                      ; 19AB50/3A7F00
    SPRITEMAP   L_1A9910                     ; 19AB53/1A10991A
    ADDXPOS     #48                         ; 19AB57/2C3000
    ADDYPOS     #96                         ; 19AB5A/2D6000
    SETXVEL     #$FC00                      ; 19AB5D/B000FC
    SETYVEL     #$FD00                      ; 19AB60/C000FD
    SETPOSE     #$60, WAIT #6               ; 19AB63/5660
L_19AB65:
    SETXVEL     #$FE00, WAIT #6             ; 19AB65/B600FE
L_19AB68:
    SETXVEL     #$FF00, WAIT #6             ; 19AB68/B600FF
L_19AB6B:
    SETXVEL     #$FF80, WAIT #6             ; 19AB6B/B680FF
L_19AB6E:
    SETXVEL     #$0080, WAIT #6             ; 19AB6E/B68000
L_19AB71:
    SETXVEL     #$0100, WAIT #6             ; 19AB71/B60001
L_19AB74:
    SETXVEL     #$0200                      ; 19AB74/B00002
    INCPOSE     WAIT #6                     ; 19AB77/76
L_19AB78:
    SETXVEL     #$0400, WAIT #6             ; 19AB78/B60004
L_19AB7B:
    ZEROVEL                                 ; 19AB7B/38
    SETPOSE     #$FF                        ; 19AB7C/50FF
    WAIT        #64                         ; 19AB7E/0640
L_19AB80:
    ADDYPOS     #16                         ; 19AB80/2D1000
    SETXVEL     #$FE00                      ; 19AB83/B000FE
    SETPOSE     #$61                        ; 19AB86/5061
    WAIT        #66                         ; 19AB88/0642
L_19AB8A:
    LOOP        #6                          ; 19AB8A/0106
        A_JSR       L_19ABE9                    ; 19AB8C/18E9AB
    ENDLOOP                                 ; 19AB8F/02
    ASMCALL     $ADF0                       ; 19AB90/D0F0AD
    JEQ         L_19ABAE                    ; 19AB93/0AAEAB
    ZEROVEL                                 ; 19AB96/38
    LOOP        #6                          ; 19AB97/0106
        ASMCALL     $DE51                       ; 19AB99/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
        .byte       $04                         ; 19AB9C/04
        .byte       $00                         ; 19AB9D/00
        .byte       $00                         ; 19AB9E/00
        .byte       $00                         ; 19AB9F/00
        .byte       $08                         ; 19ABA0/08
        .byte       $00                         ; 19ABA1/00
        WAIT        #10                         ; 19ABA2/060A
    ENDLOOP                                 ; 19ABA4/02
    LOOP        #6                          ; 19ABA5/0106
        A_JSR       L_19ABE9                    ; 19ABA7/18E9AB
    ENDLOOP                                 ; 19ABAA/02
    A_JMP       L_19ABB1                    ; 19ABAB/17B1AB

L_19ABAE:
    ASMCALL     $AE66                       ; 19ABAE/D066AE // Warp parent object to self and make parent's script jump to $19AC50
L_19ABB1:
    SETXVEL     #$FF80                      ; 19ABB1/B080FF
    SETYVEL     #$0000, WAIT #8             ; 19ABB4/C80000
L_19ABB7:
    SETXVEL     #$FF00, WAIT #8             ; 19ABB7/B800FF
L_19ABBA:
    SETXVEL     #$FE00, WAIT #8             ; 19ABBA/B800FE
L_19ABBD:
    SETXVEL     #$FC00                      ; 19ABBD/B000FC
    WAIT        #16                         ; 19ABC0/0610
L_19ABC2:
    END                                     ; 19ABC2/00

L_19ABC3:
    SPRITEMAP   L_1A9910                     ; 19ABC3/1A10991A
    ADDXPOS     #40                         ; 19ABC7/2C2800
    ADDYPOS     #8                          ; 19ABCA/2D0800
    SETXVEL     #$FE00                      ; 19ABCD/B000FE
    SETPOSE     #$58, WAIT #4               ; 19ABD0/5458
L_19ABD2:
    INCPOSE     WAIT #6                     ; 19ABD2/76
L_19ABD3:
    INCPOSE     WAIT #4                     ; 19ABD3/74
L_19ABD4:
    DECPOSE     WAIT #8                     ; 19ABD4/88
L_19ABD5:
    LOOP        #3                          ; 19ABD5/0103
        SETXVEL     #$0000                      ; 19ABD7/B00000
        SETPOSE     #$5B, WAIT #4               ; 19ABDA/545B
L_19ABDC:
        INCPOSE     WAIT #4                     ; 19ABDC/74
L_19ABDD:
    ENDLOOP                                 ; 19ABDD/02
    INCPOSE     WAIT #6                     ; 19ABDE/76
L_19ABDF:
    INCPOSE                                 ; 19ABDF/70
    WAIT        #16                         ; 19ABE0/0610
L_19ABE2:
    INCPOSE                                 ; 19ABE2/70
    WAIT        #26                         ; 19ABE3/061A
L_19ABE5:
    ASMCALL     $ADF0                       ; 19ABE5/D0F0AD
    HALT                                    ; 19ABE8/09

L_19ABE9:
    SETXVEL     #$0000                      ; 19ABE9/B00000
    SETYVEL     #$FF00, WAIT #4             ; 19ABEC/C400FF
L_19ABEF:
    SETYVEL     #$FF80                      ; 19ABEF/C080FF
    SETPOSE     #$62, WAIT #4               ; 19ABF2/5462
L_19ABF4:
    SETYVEL     #$0080                      ; 19ABF4/C08000
    INCPOSE     WAIT #4                     ; 19ABF7/74
L_19ABF8:
    SETYVEL     #$0100                      ; 19ABF8/C00001
    INCPOSE     WAIT #4                     ; 19ABFB/74
L_19ABFC:
    SETYVEL     #$0080, WAIT #4             ; 19ABFC/C48000
L_19ABFF:
    SETYVEL     #$FF80, WAIT #4             ; 19ABFF/C480FF
L_19AC02:
    SETYVEL     #$FF00, WAIT #4             ; 19AC02/C400FF
L_19AC05:
    SETYVEL     #$FF80, WAIT #4             ; 19AC05/C480FF
L_19AC08:
    SETYVEL     #$0080, WAIT #4             ; 19AC08/C48000
L_19AC0B:
    SETYVEL     #$0100, WAIT #4             ; 19AC0B/C40001
L_19AC0E:
    A_RTS                                   ; 19AC0E/19

SCR04_GoalSign:
    ONDRAW      $DA89                       ; 19AC0F/2089DA
    SPRITEMAP   L_1A99DA                     ; 19AC12/1ADA991A
    ASMCALL     $DE51                       ; 19AC16/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $04                         ; 19AC19/04
    .byte       $00                         ; 19AC1A/00
    .byte       $00                         ; 19AC1B/00
    .byte       $00                         ; 19AC1C/00
    .byte       $06                         ; 19AC1D/06
    .byte       $00                         ; 19AC1E/00
    SETPOSE     VAR1                        ; 19AC1F/2401
    ASMCALL     $AE20                       ; 19AC21/D020AE
    JEQ         L_19AC2C                    ; 19AC24/0A2CAC
    WAIT        #28                         ; 19AC27/061C
L_19AC29:
    SETPOSE     #$FF                        ; 19AC29/50FF
L_19AC2B:
    HALT                                    ; 19AC2B/09

L_19AC2C:
    WAIT        #42                         ; 19AC2C/062A
L_19AC2E:
    SETYVEL     #$FA00, WAIT #4             ; 19AC2E/C400FA
L_19AC31:
    SETYVEL     #$FC00, WAIT #4             ; 19AC31/C400FC
L_19AC34:
    SETYVEL     #$FE00, WAIT #4             ; 19AC34/C400FE
L_19AC37:
    SETYVEL     #$0200, WAIT #4             ; 19AC37/C40002
L_19AC3A:
    SETYVEL     #$0400, WAIT #6             ; 19AC3A/C60004
L_19AC3D:
    SETYVEL     #$0000                      ; 19AC3D/C00000
    WAIT        #32                         ; 19AC40/0620
L_19AC42:
    SETPOSE     #$07, WAIT #2               ; 19AC42/5207
L_19AC44:
    INCPOSE     WAIT #2                     ; 19AC44/72
L_19AC45:
    INCPOSE     WAIT #2                     ; 19AC45/72
L_19AC46:
    SPRITEMAP   L_1A99F2                     ; 19AC46/1AF2991A
    SETPOSE     VAR1                        ; 19AC4A/2401
    ASMCALL     $ADD1                       ; 19AC4C/D0D1AD // Add score based on VAR1: [0, 100, 200, 800, 2000, 5000]
    HALT                                    ; 19AC4F/09

L_19AC50:
    A_JSR       L_19AC6A                    ; 19AC50/186AAC
    END                                     ; 19AC53/00

SCR04_KDance08:
    ONDRAW      $DA89                       ; 19AC54/2089DA
    SPRITEMAP   L_1A99DA                     ; 19AC57/1ADA991A
    ASMCALL     $AE2C                       ; 19AC5B/D02CAE // Store parent object's position in $07DE and $07E0
    LOOP        #5                          ; 19AC5E/0105
        ASMCALL     $AE4B                       ; 19AC60/D04BAE // Set position to $07DE and $07E0 (previously stored parent object's position)
        A_JSR       L_19AC6A                    ; 19AC63/186AAC
        WAIT        #15                         ; 19AC66/060F
    ENDLOOP                                 ; 19AC68/02
    END                                     ; 19AC69/00

L_19AC6A:
    SETZPOS     #$00FF                      ; 19AC6A/3AFF00
    TASK        L_19AC9C                    ; 19AC6D/079CAC
    SETPOSE     #$0A                        ; 19AC70/500A
    SETXVEL     #$0080                      ; 19AC72/B08000
    SETYVEL     #$FE00, WAIT #4             ; 19AC75/C400FE
L_19AC78:
    SETYVEL     #$FF00, WAIT #4             ; 19AC78/C400FF
L_19AC7B:
    SETYVEL     #$FF80, WAIT #4             ; 19AC7B/C480FF
L_19AC7E:
    ZEROVEL                                 ; 19AC7E/38
    WAIT        #5                          ; 19AC7F/0605
L_19AC81:
    SETYVEL     #$0100, WAIT #4             ; 19AC81/C40001
L_19AC84:
    SETYVEL     #$0100, WAIT #4             ; 19AC84/C40001
L_19AC87:
    SETYVEL     #$0200, WAIT #4             ; 19AC87/C40002
L_19AC8A:
    WAIT        #16                         ; 19AC8A/0610
L_19AC8C:
    ZEROVEL                                 ; 19AC8C/38
    ENDLASTTASK                             ; 19AC8D/12
    SETPOSE     #$FF                        ; 19AC8E/50FF
    ASMCALL     $DE45                       ; 19AC90/D045DE // Play music
    .byte       $FF                         ; 19AC93/FF
    ASMCALL     $DE4B                       ; 19AC94/D04BDE // Play sound effect
    .byte       $21                         ; 19AC97/21
    ASMCALL     $ADCB                       ; 19AC98/D0CBAD // Give one extra life
    A_RTS                                   ; 19AC9B/19

L_19AC9C:
    SETPOSE     #$0A, WAIT #2               ; 19AC9C/520A
L_19AC9E:
    INCPOSE     WAIT #2                     ; 19AC9E/72
L_19AC9F:
    A_JMP       L_19AC9C                    ; 19AC9F/179CAC

B19_aca2:
    lda color_palette
    sta color_palette+4
    sta color_palette+8
    sta color_palette+12
    sta color_palette+16
    sta color_palette+20
    sta color_palette+24
    sta color_palette+28
    rts
B19_acbb:
    jsr $95cd
    jmp $acc9
B19_acc1:
    ldy #$03
    jsr $87ba
    jsr $95cd
B19_acc9:
    ldx #$00
    ldy #$00
B19_accd:
    iny
    lda a:camera_y+1
    cmp $acfe, y
    beq B19_ace1
    bcc B19_aceb
B19_acd8:
    ldy $acf2, x
    jsr B3F_e6d5
    jmp B3E_c977
B19_ace1:
    dey
    lda a:camera_y
    cmp $acfe, y
    bcs B19_acd8
    iny
B19_aceb:
    dey
    inx
    iny
    iny
    jmp $accd
.byte $4E,$4F,$50,$51,$52,$53,$54,$55
.byte $56,$57,$58,$59,$69,$02,$39,$02
.byte $01,$02,$C9,$01,$91,$01,$59,$01
.byte $21,$01,$E9,$00,$B1,$00,$79,$00
.byte $34,$00,$00,$00
B19_ad16:
    jsr $95cd
    lda temp_pad1_press
    and #$c0
    beq B19_ad2d
    ldx curr_object_slot
    lda #$19
    sta script_bank
    lda #$4f
    ldy #$a0
    jmp OBJ_TryReplaceScriptPc
B19_ad2d:
    rts
B19_ad2e:
    ldy #$03
    jsr $87ba
    jsr $95cd
    ldx OBJ_var1+1
    lda OBJ_store_y_lo+1
    sec
    sbc $ad68, x
    lda OBJ_store_y_hi+1
    sbc $ad6f, x
    bcc B19_ad67
    lda $ad68, x
    sta a:OBJ_y_lo+1
    lda $ad6f, x
    sta a:OBJ_y_hi+1
    lda #$23
    jsr PlaySoundEffect
    ldx curr_object_slot
    lda #$19
    sta script_bank
    lda #$d8
    ldy #$a0
    jmp OBJ_TryReplaceScriptPc
B19_ad67:
    rts
.byte $19,$A9,$39,$C9,$59
.byte $E9,$79
.byte $03,$02,$02,$01,$01
.byte $00,$00
B19_ad76:
    jsr $95de
    ldx curr_object_slot
    lda a:OBJ_x_lo, x
    cmp #$80
    bcc B19_ad88
    lda OBJ_var3, x
    beq B19_ad8e
    rts
B19_ad88:
    lda OBJ_var3, x
    bne B19_ad8e
    rts
B19_ad8e:
    ldx curr_object_slot
    lda #$19
    sta script_bank
    lda #$5f
    ldy #$a4
    jmp OBJ_TryReplaceScriptPc
B19_ad9c:
    ldy #$00
    jsr $87ba
    jsr $95cd
    jsr $9021
    jsr $904a
    jsr $8bab
    bcc B19_adbd
    ldx curr_object_slot
    lda #$19
    sta script_bank
    lda #$39
    ldy #$a4
    jmp OBJ_TryReplaceScriptPc
B19_adbd:
    rts
.byte $A6,$6E,$BD,$86,$60,$BC,$AA,$60
.byte $AA,$20,$E2,$F4,$60
B19_adcb:
    lda #$01
    jsr B3F_e385
    rts
B19_add1:
    lda OBJ_var1+1
    asl a
    tay
    lda $ade4, y
    pha
    iny
    lda $ade4, y
    tax
    pla
    jsr B3F_e393
    rts
.byte $00,$00,$0A,$00,$1E,$00,$50,$00
.byte $C8,$00
.byte $F4,$01
B19_adf0:
    ldx UNK_5FC+3
    cpx #$07
    bcc B19_adfc
    ldx #$00
    stx UNK_5FC+3
B19_adfc:
    cpx OBJ_var1+1
    bne B19_ae0e
    inc UNK_5FC+3
    lda UNK_5FC+3
    cmp #$07
    bcc B19_ae13
    lda #$01
    rts
B19_ae0e:
    lda #$00
    sta UNK_5FC+3
B19_ae13:
    rts
B19_ae14:
    ldy #$00
    lda UNK_5FC+3
    cmp #$07
    bcc B19_ae1e
    iny
B19_ae1e:
    tya
    rts
B19_ae20:
    ldy #$00
    lda OBJ_var1+1
    cmp #$06
    bcc B19_ae2a
    iny
B19_ae2a:
    tya
    rts
    ldx curr_object_slot
    lda OBJ_var2, x
    tay
    lda a:OBJ_x_lo, y
    sta UNK_7DB+3
    lda a:OBJ_x_hi, y
    sta UNK_7DB+4
    lda a:OBJ_y_lo, y
    sta UNK_7DB+5
    lda a:OBJ_y_hi, y
    sta UNK_7DB+6
    rts
    ldx curr_object_slot
    lda UNK_7DB+3
    sta a:OBJ_x_lo, x
    lda UNK_7DB+4
    sta a:OBJ_x_hi, x
    lda UNK_7DB+5
    sta a:OBJ_y_lo, x
    lda UNK_7DB+6
    sta a:OBJ_y_hi, x
    rts
B19_ae66:
    ldy curr_object_slot
    lda OBJ_var2, y
    tax
    lda a:OBJ_x_lo, y
    sta a:OBJ_x_lo, x
    lda a:OBJ_x_hi, y
    sta a:OBJ_x_hi, x
    lda a:OBJ_y_lo, y
    sta a:OBJ_y_lo, x
    lda a:OBJ_y_hi, y
    sta a:OBJ_y_hi, x
    lda #$19
    sta script_bank
    lda #$50
    ldy #$ac
    jmp OBJ_TryReplaceScriptPc
B19_ae90:
    ldx OBJ_var0+1
    lda $aecc, x
    clc
    adc #$15
    sta a:OBJ_y_lo+1
    lda #$00
    adc #$04
    sta a:OBJ_y_hi+1
    lda $aecc, x
    clc
    adc #$21
    sta a:OBJ_y_lo+3
    lda #$00
    adc #$04
    sta a:OBJ_y_hi+3
    ldy #$00
    cpx #$18
    bne B19_aeba
    iny
B19_aeba:
    sty OBJ_pose+3
    ldy #$00
    inc OBJ_var0+1
    lda OBJ_var0+1
    cmp #$25
    bne B19_aeca
    iny
B19_aeca:
    tya
    rts
.byte $05,$0A,$0F,$14,$18,$1C,$20,$24
.byte $27,$2A,$2D,$30,$32,$34,$36,$38
.byte $39,$3A,$3B,$3C,$3C,$3D,$3D,$3E
.byte $3E,$3D,$3C,$3A,$38,$34,$30,$2A
.byte $24,$1C,$14,$0A,$00
B19_aef1:
    lda OBJ_var0+1
    cmp #$19
    bcs B19_af05
    lda #$18
    sec
    sbc OBJ_var0+1
    lsr a
    clc
    adc #$18
    sta OBJ_var0+1
B19_af05:
    rts
B19_af06:
    lda OBJ_var0+1
    cmp #$19
    bcc B19_af17
    sbc #$18
    asl a
    sta tmp0
    lda #$18
    sec
    sbc tmp0
B19_af17:
    clc
    adc #$01
    sta OBJ_var1+1
    rts
B19_af1e:
    ldx OBJ_var1+1
    lda $af38, x
    sta OBJ_var0+1
    lda $af52, x
    and #$7f
    sta OBJ_var1+1
    lda $af52, x
    and #$80
    sta OBJ_var2+1
    rts
.byte $0F,$12,$16,$1A,$1D,$20,$24,$28
.byte $2B,$2E,$32,$36,$39,$3C,$40,$44
.byte $47,$4A,$4E,$52,$55,$58
.byte $5C,$60,$63,$66
.byte $80,$00,$00,$00,$81,$01,$01,$01
.byte $82,$02,$02,$02,$83,$03,$03,$03
.byte $84,$04,$04,$04,$85,$05
.byte $05,$05,$86,$06
    ldy curr_object_slot
    ldx kirby_05E0
    lda $af8d, x
    clc
    adc #$02
    sta OBJ_var4, y
    clc
    adc #$06
    sta OBJ_var5, y
    clc
    adc #$06
    sta OBJ_var6, y
    clc
    adc #$06
    sta OBJ_var7, y
    rts
.byte $00,$00,$00,$01,$02,$03,$04,$00
.byte $00,$00,$00,$00,$05,$00
    ldx #$00
    lda temp_pad1_press
    and #$20
    beq B19_afa4
    inx
B19_afa4:
    lda temp_pad1_press
    and #$80
    beq B19_afbc
    inc OBJ_var1+1
    lda OBJ_var1+1
    cmp #$07
    bcc B19_afd1
    lda #$00
    sta OBJ_var1+1
    jmp $afd1
B19_afbc:
    lda temp_pad1_press
    and #$40
    beq B19_afd1
    dec OBJ_var1+1
    lda OBJ_var1+1
    cmp #$ff
    bne B19_afd1
    lda #$06
    sta OBJ_var1+1
B19_afd1:
    txa
    rts
.byte $0F,$20,$2B,$0F,$0F,$37,$27,$07
.byte $04,$35,$25,$0F
B19_afdf:
    ldy #$00
    ldx curr_object_slot
    lda a:OBJ_x_lo, x
    cmp #$80
    bcc B19_afeb
    iny
B19_afeb:
    tya
    sta OBJ_var3, x
    rts
B19_aff0:
    ldx curr_object_slot
    ldy OBJ_var2, x
    lda OBJ_var3, y
    sta OBJ_var3, x
    rts
B19_affc:
    ldx curr_object_slot
    lda a:OBJ_y_lo, x
    sta OBJ_var7, x
    lda #$00
    jsr Rand
    and #$03
    asl a
    tay
    lda $b04a, y
    sta OBJ_vel_x_lo, x
    iny
    lda $b04a, y
    sta OBJ_vel_x_hi, x
    dey
    lda $b052, y
    sta OBJ_vel_y_lo, x
    iny
    lda $b052, y
    sta OBJ_vel_y_hi, x
    lda OBJ_var3, x
    lsr a
    bcs B19_b03c
    ldx curr_object_slot
    lda #$19
    sta script_bank
    lda #$27
    ldy #$ab
    jmp OBJ_TryReplaceScriptPc
B19_b03c:
    ldx curr_object_slot
    lda #$19
    sta script_bank
    lda #$2e
    ldy #$ab
    jmp OBJ_TryReplaceScriptPc
.byte $80,$00,$40,$00,$80,$FF,$C0,$FF
.byte $00,$03,$00,$03,$00,$03,$00,$03
B19_b05a:
    lda OBJ_vel_z_lo+1
    beq B19_b06d
    ldx curr_object_slot
    lda #$19
    sta script_bank
    lda #$3a
    ldy #$ab
    jmp OBJ_TryReplaceScriptPc
B19_b06d:
    ldx curr_object_slot
    lda a:OBJ_y_lo, x
    sec
    sbc OBJ_var7, x
    cmp #$50
    bcs B19_b07b
    rts
B19_b07b:
    lda a:OBJ_x_hi+1
    sta a:OBJ_x_hi, x
    sta OBJ_store_x_hi, x
    lda a:OBJ_x_lo+1
    sta a:OBJ_x_lo, x
    sta OBJ_store_x_lo, x
    lda a:OBJ_y_hi+1
    sta a:OBJ_y_hi, x
    sta OBJ_store_y_hi, x
    lda a:OBJ_y_lo+1
    sta a:OBJ_y_lo, x
    sta OBJ_store_y_lo, x
    ldx curr_object_slot
    lda #$19
    sta script_bank
    lda #$22
    ldy #$ab
    jmp OBJ_TryReplaceScriptPc

PerformCopyGetDemo:
    MOV         $05E0,#$02                  ; 19B0AD/11E00502
    ASMCALL     $987D                       ; 19B0B1/D07D98 // Zero Kirby's velocities
    SPRITEMAP   L_1A8676                     ; 19B0B4/1A76861A
    ASMCALL     $8FDC, WAIT #8              ; 19B0B8/D8DC8F // Set pose (respect facing)
    .byte       $2E                         ; 19B0BB/2E
L_19B0BC:
    ASMCALL     $8FDC, WAIT #12             ; 19B0BC/DCDC8F // Set pose (respect facing)
    .byte       $00                         ; 19B0BF/00
L_19B0C0:
    SPRITEMAP   L_1C8216                       ; 19B0C0/1A16821C
    MOV         REG,$05E3                      ; 19B0C4/1CE305
    TABLEJSR    #COPY_ABILITY_COUNT-1          ; 19B0C7/1019
    .word       CopyGetDemo_Fire               ; 19B0C9/46B1
    .word       CopyGetDemo_Spark              ; 19B0CB/77B1
    .word       CopyGetDemo_Cutter             ; 19B0CD/9CB1
    .word       CopyGetDemo_Sword              ; 19B0CF/FCB0
    .word       CopyGetDemo_Fireball           ; 19B0D1/A6B1
    .word       CopyGetDemo_Laser              ; 19B0D3/A1B1
    .word       CopyGetDemo_Generic ; Mike     ; 19B0D5/98B2
    .word       CopyGetDemo_Wheel              ; 19B0D7/C4B1
    .word       CopyGetDemo_Hammer             ; 19B0D9/0DB1
    .word       CopyGetDemo_Parasol            ; 19B0DB/25B1
    .word       CopyGetDemo_Sleep              ; 19B0DD/9FB2
    .word       CopyGetDemo_Needle             ; 19B0DF/DDB1
    .word       CopyGetDemo_Ice                ; 19B0E1/F3B1
    .word       CopyGetDemo_Freeze             ; 19B0E3/04B2
    .word       CopyGetDemo_Generic ; HiJump   ; 19B0E5/98B2
    .word       CopyGetDemo_Beam               ; 19B0E7/1AB2
    .word       CopyGetDemo_Stone              ; 19B0E9/22B2
    .word       CopyGetDemo_Ball               ; 19B0EB/36B2
    .word       CopyGetDemo_Tornado            ; 19B0ED/49B2
    .word       CopyGetDemo_Crash              ; 19B0EF/89B2
    .word       CopyGetDemo_Generic ; Light    ; 19B0F1/98B2
    .word       CopyGetDemo_Generic ; Backdrop ; 19B0F3/98B2
    .word       CopyGetDemo_Generic ; Throw    ; 19B0F5/98B2
    .word       CopyGetDemo_Generic ; UFO      ; 19B0F7/98B2
    .word       CopyGetDemo_StarRod            ; 19B0F9/36B1
    A_RTL                                      ; 19B0FB/05

CopyGetDemo_Sword:
    SPRITEMAP   L_1B8000                     ; 19B0FC/1A00801B
    SETPOSE     #$00, WAIT #2               ; 19B100/5200
L_19B102:
    INCPOSE     WAIT #2                     ; 19B102/72
L_19B103:
    INCPOSE     WAIT #2                     ; 19B103/72
L_19B104:
    INCPOSE     WAIT #2                     ; 19B104/72
L_19B105:
    INCPOSE     WAIT #2                     ; 19B105/72
L_19B106:
    INCPOSE     WAIT #1                     ; 19B106/71
L_19B107:
    INCPOSE     WAIT #4                     ; 19B107/74
L_19B108:
    DECPOSE     WAIT #1                     ; 19B108/81
L_19B109:
    INC2POSE                                ; 19B109/90
    WAIT        #32                         ; 19B10A/0620
L_19B10C:
    A_RTS                                   ; 19B10C/19

CopyGetDemo_Hammer:
    SPRITEMAP   L_1B88F2                     ; 19B10D/1AF2881B
    ASMCALL     $8FDC, WAIT #15             ; 19B111/DFDC8F // Set pose (respect facing)
    .byte       $00                         ; 19B114/00
L_19B115:
    INC2POSE    WAIT #2                     ; 19B115/92
L_19B116:
    INC2POSE    WAIT #1                     ; 19B116/91
L_19B117:
    INC2POSE    WAIT #1                     ; 19B117/91
L_19B118:
    INC2POSE    WAIT #1                     ; 19B118/91
L_19B119:
    LOOP        #3                          ; 19B119/0103
        ASMCALL     $8FDC, WAIT #3              ; 19B11B/D3DC8F // Set pose (respect facing)
        .byte       $08                         ; 19B11E/08
L_19B11F:
        INC2POSE    WAIT #3                     ; 19B11F/93
L_19B120:
        INC2POSE    WAIT #3                     ; 19B120/93
L_19B121:
    ENDLOOP                                 ; 19B121/02
    ADDPOSE     #-4, WAIT #15               ; 19B122/6FFC
L_19B124:
    A_RTS                                   ; 19B124/19

CopyGetDemo_Parasol:
    SPRITEMAP   L_1B9320                     ; 19B125/1A20931B
    ASMCALL     $8FDC, WAIT #6              ; 19B129/D6DC8F // Set pose (respect facing)
    .byte       $00                         ; 19B12C/00
L_19B12D:
    INC2POSE    WAIT #1                     ; 19B12D/91
L_19B12E:
    INC2POSE    WAIT #1                     ; 19B12E/91
L_19B12F:
    INC2POSE    WAIT #1                     ; 19B12F/91
L_19B130:
    INC2POSE    WAIT #10                    ; 19B130/9A
L_19B131:
    INC2POSE    WAIT #3                     ; 19B131/93
L_19B132:
    INC2POSE                                ; 19B132/90
    WAIT        #24                         ; 19B133/0618
L_19B135:
    A_RTS                                   ; 19B135/19

CopyGetDemo_StarRod:
    SPRITEMAP   L_1A8EE6                     ; 19B136/1AE68E1A
    SETPOSE     #$70, WAIT #2               ; 19B13A/5270
    INCPOSE     WAIT #2                     ; 19B13C/72
    INCPOSE     WAIT #2                     ; 19B13D/72
    INCPOSE     WAIT #2                     ; 19B13E/72
    INCPOSE     WAIT #2                     ; 19B13F/72
    INCPOSE     WAIT #4                     ; 19B140/74
    DECPOSE     WAIT #2                     ; 19B141/82
    INC2POSE                                ; 19B142/90
    WAIT        #32                         ; 19B143/0620
    A_RTS                                   ; 19B145/19

CopyGetDemo_Fire:
    ASMCALL     $8FDC, WAIT #1              ; 19B146/D1DC8F // Set pose (respect facing)
    .byte       $04                         ; 19B149/04
L_19B14A:
    TASK        L_19B153                    ; 19B14A/0753B1
    LOOP        #10                         ; 19B14D/010A
        INC2POSE    WAIT #1                     ; 19B14F/91
L_19B150:
        DEC2POSE    WAIT #1                     ; 19B150/A1
L_19B151:
    ENDLOOP                                 ; 19B151/02
    A_RTS                                   ; 19B152/19

L_19B153:
    ASMCALL     $99EA, WAIT #4              ; 19B153/D4EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $04                         ; 19B156/04
    .byte       $00                         ; 19B157/00
    .byte       $01                         ; 19B158/01
    .byte       $F6                         ; 19B159/F6
L_19B15A:
    ASMCALL     $99EA, WAIT #4              ; 19B15A/D4EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $04                         ; 19B15D/04
    .byte       $00                         ; 19B15E/00
    .byte       $01                         ; 19B15F/01
    .byte       $FB                         ; 19B160/FB
L_19B161:
    ASMCALL     $99EA, WAIT #4              ; 19B161/D4EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $04                         ; 19B164/04
    .byte       $00                         ; 19B165/00
    .byte       $01                         ; 19B166/01
    .byte       $00                         ; 19B167/00
L_19B168:
    ASMCALL     $99EA, WAIT #4              ; 19B168/D4EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $04                         ; 19B16B/04
    .byte       $00                         ; 19B16C/00
    .byte       $01                         ; 19B16D/01
    .byte       $05                         ; 19B16E/05
L_19B16F:
    ASMCALL     $99EA, WAIT #4              ; 19B16F/D4EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $04                         ; 19B172/04
    .byte       $00                         ; 19B173/00
    .byte       $01                         ; 19B174/01
    .byte       $0A                         ; 19B175/0A
L_19B176:
    ENDTASK                                 ; 19B176/0C

CopyGetDemo_Spark:
    ASMCALL     $8FDC, WAIT #8              ; 19B177/D8DC8F // Set pose (respect facing)
    .byte       $08                         ; 19B17A/08
L_19B17B:
    INC2POSE                                ; 19B17B/90
    LOOP        #8                          ; 19B17C/0108
        ASMCALL     $DE4B                       ; 19B17E/D04BDE // Play sound effect
        .byte       $39                         ; 19B181/39
        ASMCALL     $9952, WAIT #2              ; 19B182/D25299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 19B185/00
        .byte       $00                         ; 19B186/00
        .byte       $1B                         ; 19B187/1B
        .byte       $00                         ; 19B188/00
L_19B189:
        ASMCALL     $9952                       ; 19B189/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 19B18C/00
        .byte       $00                         ; 19B18D/00
        .byte       $1B                         ; 19B18E/1B
        .byte       $00                         ; 19B18F/00
        INC2POSE    WAIT #2                     ; 19B190/92
L_19B191:
        DEC2POSE                                ; 19B191/A0
    ENDLOOP                                 ; 19B192/02
    ASMCALL     $DE4B                       ; 19B193/D04BDE // Play sound effect
    .byte       $FF                         ; 19B196/FF
    ASMCALL     $8FDC, WAIT #8              ; 19B197/D8DC8F // Set pose (respect facing)
    .byte       $08                         ; 19B19A/08
L_19B19B:
    A_RTS                                   ; 19B19B/19

CopyGetDemo_Cutter:
    JSL         L_16A1CC                    ; 19B19C/04CCA116
    A_RTS                                   ; 19B1A0/19

CopyGetDemo_Laser:
    JSL         L_16A1EC                    ; 19B1A1/04ECA116
    A_RTS                                   ; 19B1A5/19

CopyGetDemo_Fireball:
    ASMCALL     $9A6A                       ; 19B1A6/D06A9A // Unknown ASM $219A6A
    .word       $9B06                       ; 19B1A9/069B
    .word       $0100                       ; 19B1AB/0001
    ASMCALL     $DE4B                       ; 19B1AD/D04BDE // Play sound effect
    .byte       $3E                         ; 19B1B0/3E
    ASMCALL     $8FDC, WAIT #3              ; 19B1B1/D3DC8F // Set pose (respect facing)
    .byte       $16                         ; 19B1B4/16
L_19B1B5:
    INC2POSE    WAIT #2                     ; 19B1B5/92
L_19B1B6:
    INC2POSE    WAIT #8                     ; 19B1B6/98
L_19B1B7:
    LOOP        #3                          ; 19B1B7/0103
        ASMCALL     $8FDC, WAIT #2              ; 19B1B9/D2DC8F // Set pose (respect facing)
        .byte       $1C                         ; 19B1BC/1C
L_19B1BD:
        INC2POSE    WAIT #2                     ; 19B1BD/92
L_19B1BE:
        INC2POSE    WAIT #2                     ; 19B1BE/92
L_19B1BF:
    ENDLOOP                                 ; 19B1BF/02
    INC2POSE    WAIT #4                     ; 19B1C0/94
L_19B1C1:
    INC2POSE    WAIT #4                     ; 19B1C1/94
L_19B1C2:
    INC2POSE    WAIT #4                     ; 19B1C2/94
L_19B1C3:
    A_RTS                                   ; 19B1C3/19

CopyGetDemo_Wheel:
    SPRITEMAP   L_1B9CAE                     ; 19B1C4/1AAE9C1B
    LOOP        #2                          ; 19B1C8/0102
        ASMCALL     $8FDC, WAIT #2              ; 19B1CA/D2DC8F // Set pose (respect facing)
        .byte       $00                         ; 19B1CD/00
L_19B1CE:
        INC2POSE    WAIT #2                     ; 19B1CE/92
L_19B1CF:
        INC2POSE    WAIT #2                     ; 19B1CF/92
L_19B1D0:
        INC2POSE    WAIT #2                     ; 19B1D0/92
L_19B1D1:
    ENDLOOP                                 ; 19B1D1/02
    LOOP        #8                          ; 19B1D2/0108
        ASMCALL     $8FDC, WAIT #1              ; 19B1D4/D1DC8F // Set pose (respect facing)
        .byte       $00                         ; 19B1D7/00
L_19B1D8:
        INC2POSE    WAIT #1                     ; 19B1D8/91
L_19B1D9:
        INC2POSE    WAIT #1                     ; 19B1D9/91
L_19B1DA:
        INC2POSE    WAIT #1                     ; 19B1DA/91
L_19B1DB:
    ENDLOOP                                 ; 19B1DB/02
    A_RTS                                   ; 19B1DC/19

CopyGetDemo_Needle:
    LOOP        #3                          ; 19B1DD/0103
        SPRITEMAP   L_1A8676                     ; 19B1DF/1A76861A
        ASMCALL     $8FDC, WAIT #2              ; 19B1E3/D2DC8F // Set pose (respect facing)
        .byte       $00                         ; 19B1E6/00
L_19B1E7:
        SPRITEMAP   L_1C8216                     ; 19B1E7/1A16821C
        ASMCALL     $8FDC, WAIT #2              ; 19B1EB/D2DC8F // Set pose (respect facing)
        .byte       $40                         ; 19B1EE/40
L_19B1EF:
        INC2POSE    WAIT #2                     ; 19B1EF/92
L_19B1F0:
        DEC2POSE    WAIT #2                     ; 19B1F0/A2
L_19B1F1:
    ENDLOOP                                 ; 19B1F1/02
    A_RTS                                   ; 19B1F2/19

CopyGetDemo_Ice:
    ASMCALL     $DE4B                       ; 19B1F3/D04BDE // Play sound effect
    .byte       $44                         ; 19B1F6/44
    ASMCALL     $8FDC                       ; 19B1F7/D0DC8F // Set pose (respect facing)
    .byte       $4A                         ; 19B1FA/4A
    WAIT        #1                          ; 19B1FB/0601
L_19B1FD:
    LOOP        #5                          ; 19B1FD/0105
        INC2POSE    WAIT #1                     ; 19B1FF/91
L_19B200:
    ENDLOOP                                 ; 19B200/02
    ADDPOSE     #-10                        ; 19B201/60F6
    A_RTS                                   ; 19B203/19

CopyGetDemo_Freeze:
    ASMCALL     $DE4B                       ; 19B204/D04BDE // Play sound effect
    .byte       $44                         ; 19B207/44
    ASMCALL     $8FDC, WAIT #8              ; 19B208/D8DC8F // Set pose (respect facing)
    .byte       $56                         ; 19B20B/56
L_19B20C:
    LOOP        #2                          ; 19B20C/0102
        LOOP        #16                         ; 19B20E/0110
            INC2POSE    WAIT #1                     ; 19B210/91
L_19B211:
        ENDLOOP                                 ; 19B211/02
        ADDPOSE     #-32                        ; 19B212/60E0
    ENDLOOP                                 ; 19B214/02
    ASMCALL     $8FDC, WAIT #8              ; 19B215/D8DC8F // Set pose (respect facing)
    .byte       $56                         ; 19B218/56
L_19B219:
    A_RTS                                   ; 19B219/19

CopyGetDemo_Beam:
    MOV         VAR0,#$03                   ; 19B21A/0D0003
    JSL         L_16A0E1                    ; 19B21D/04E1A016
    A_RTS                                   ; 19B221/19

CopyGetDemo_Stone:
    LOOP        #4                          ; 19B222/0104
        SPRITEMAP   L_1A8676                     ; 19B224/1A76861A
        ASMCALL     $8FDC, WAIT #4              ; 19B228/D4DC8F // Set pose (respect facing)
        .byte       $00                         ; 19B22B/00
L_19B22C:
        SPRITEMAP   L_1B9DAE                     ; 19B22C/1AAE9D1B
        ASMCALL     $8FDC, WAIT #4              ; 19B230/D4DC8F // Set pose (respect facing)
        .byte       $02                         ; 19B233/02
L_19B234:
    ENDLOOP                                 ; 19B234/02
    A_RTS                                   ; 19B235/19

CopyGetDemo_Ball:
    LOOP        #3                          ; 19B236/0103
        SPRITEMAP   L_1B9BEE                     ; 19B238/1AEE9B1B
        ASMCALL     $8FDC, WAIT #2              ; 19B23C/D2DC8F // Set pose (respect facing)
        .byte       $00                         ; 19B23F/00
L_19B240:
        INC2POSE    WAIT #2                     ; 19B240/92
L_19B241:
        INC2POSE    WAIT #2                     ; 19B241/92
L_19B242:
        INC2POSE    WAIT #2                     ; 19B242/92
L_19B243:
        INC2POSE    WAIT #2                     ; 19B243/92
L_19B244:
        INC2POSE    WAIT #2                     ; 19B244/92
L_19B245:
        INC2POSE    WAIT #2                     ; 19B245/92
L_19B246:
        INC2POSE    WAIT #2                     ; 19B246/92
L_19B247:
    ENDLOOP                                 ; 19B247/02
    A_RTS                                   ; 19B248/19

CopyGetDemo_Tornado:
    SPRITEMAP   L_1B9E5A                     ; 19B249/1A5A9E1B
    ASMCALL     $98D5                       ; 19B24D/D0D598 // Get facing as 0 or 0x80
    JNE         L_19B26E                    ; 19B250/0B6EB2
    SETPOSE     #$0F, WAIT #2               ; 19B253/520F
L_19B255:
    SETPOSE     #$08, WAIT #2               ; 19B255/5208
L_19B257:
    INCPOSE     WAIT #2                     ; 19B257/72
L_19B258:
    INCPOSE     WAIT #2                     ; 19B258/72
L_19B259:
    INCPOSE     WAIT #2                     ; 19B259/72
L_19B25A:
    INCPOSE     WAIT #2                     ; 19B25A/72
L_19B25B:
    INCPOSE     WAIT #2                     ; 19B25B/72
L_19B25C:
    INCPOSE     WAIT #2                     ; 19B25C/72
L_19B25D:
    LOOP        #2                          ; 19B25D/0102
        SETPOSE     #$10, WAIT #2               ; 19B25F/5210
L_19B261:
        INCPOSE     WAIT #2                     ; 19B261/72
L_19B262:
        INCPOSE     WAIT #2                     ; 19B262/72
L_19B263:
        INCPOSE     WAIT #2                     ; 19B263/72
L_19B264:
    ENDLOOP                                 ; 19B264/02
    LOOP        #8                          ; 19B265/0108
        SETPOSE     #$10, WAIT #1               ; 19B267/5110
L_19B269:
        INCPOSE     WAIT #1                     ; 19B269/71
L_19B26A:
        INCPOSE     WAIT #1                     ; 19B26A/71
L_19B26B:
        INCPOSE     WAIT #1                     ; 19B26B/71
L_19B26C:
    ENDLOOP                                 ; 19B26C/02
    A_RTS                                   ; 19B26D/19

L_19B26E:
    SETPOSE     #$09, WAIT #2               ; 19B26E/5209
L_19B270:
    DECPOSE     WAIT #2                     ; 19B270/82
L_19B271:
    SETPOSE     #$0F, WAIT #2               ; 19B271/520F
L_19B273:
    DECPOSE     WAIT #2                     ; 19B273/82
L_19B274:
    DECPOSE     WAIT #2                     ; 19B274/82
L_19B275:
    DECPOSE     WAIT #2                     ; 19B275/82
L_19B276:
    DECPOSE     WAIT #2                     ; 19B276/82
L_19B277:
    DECPOSE     WAIT #2                     ; 19B277/82
L_19B278:
    LOOP        #2                          ; 19B278/0102
        SETPOSE     #$13, WAIT #2               ; 19B27A/5213
L_19B27C:
        DECPOSE     WAIT #2                     ; 19B27C/82
L_19B27D:
        DECPOSE     WAIT #2                     ; 19B27D/82
L_19B27E:
        DECPOSE     WAIT #2                     ; 19B27E/82
L_19B27F:
    ENDLOOP                                 ; 19B27F/02
    LOOP        #8                          ; 19B280/0108
        SETPOSE     #$13, WAIT #1               ; 19B282/5113
L_19B284:
        DECPOSE     WAIT #1                     ; 19B284/81
L_19B285:
        DECPOSE     WAIT #1                     ; 19B285/81
L_19B286:
        DECPOSE     WAIT #1                     ; 19B286/81
L_19B287:
    ENDLOOP                                 ; 19B287/02
    A_RTS                                   ; 19B288/19

CopyGetDemo_Crash:
    ASMCALL     $8FDC, WAIT #8              ; 19B289/D8DC8F // Set pose (respect facing)
    .byte       $00                         ; 19B28C/00
L_19B28D:
    INC2POSE                                ; 19B28D/90
    WAIT        #24                         ; 19B28E/0618
L_19B290:
    ASMCALL     $9A6A                       ; 19B290/D06A9A // Unknown ASM $219A6A
    .word       $9AEE                       ; 19B293/EE9A
    .word       $0000                       ; 19B295/0000
    A_RTS                                   ; 19B297/19

CopyGetDemo_Generic:
    ASMCALL     $8FDC, WAIT #8              ; 19B298/D8DC8F // Set pose (respect facing)
    .byte       $00                         ; 19B29B/00
L_19B29C:
    INC2POSE                                ; 19B29C/90
    WAIT        #24                         ; 19B29D/0618
CopyGetDemo_Sleep:
    A_RTS                                   ; 19B29F/19

L_19B2A0:
    MOV         VAR0,#$00                   ; 19B2A0/0D0000
    SETZPOS     #$00FF                      ; 19B2A3/3AFF00
    ASMCALL     $B2E9                       ; 19B2A6/D0E9B2 // Set object's script ID to 7 (wtf...?)
    ONTICK      $19B2E1                     ; 19B2A9/08E1B219
    ONPOSITION  $D9BB                       ; 19B2AD/21BBD9
    SPRITEMAP   L_1C9CD7                     ; 19B2B0/1AD79C1C
    SETPOSE     #$2F                        ; 19B2B4/502F
    ZEROVEL                                 ; 19B2B6/38
    LOOP        #8                          ; 19B2B7/0108
        SETYVEL     #$0100, WAIT #2             ; 19B2B9/C20001
L_19B2BC:
        SETYVEL     #$FF00, WAIT #2             ; 19B2BC/C200FF
L_19B2BF:
    ENDLOOP                                 ; 19B2BF/02
    ZEROVEL                                 ; 19B2C0/38
    WAIT        #120                        ; 19B2C1/0678
L_19B2C3:
    ENDTICK                                 ; 19B2C3/0E
    ASMCALL     $DE4B                       ; 19B2C4/D04BDE // Play sound effect
    .byte       $19                         ; 19B2C7/19
    SETZPOS     #$0080                      ; 19B2C8/3A8000
    SPRITEMAP   L_1C94CE                     ; 19B2CB/1ACE941C
    JML         SCR02_BlockDestroyed        ; 19B2CF/0372AC16

L_19B2D3:
    SETBANK     #$21                        ; 19B2D3/2821
    ASMCALL     $DE4B                       ; 19B2D5/D04BDE // Play sound effect
    .byte       $4E                         ; 19B2D8/4E
    ASMCALL     $99EA                       ; 19B2D9/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 19B2DC/00
    .byte       $00                         ; 19B2DD/00
    .byte       $0A                         ; 19B2DE/0A
    .byte       $00                         ; 19B2DF/00
    END                                     ; 19B2E0/00

B19_b2e1:
    lda #$d4
    ldx #$93
    jsr B3F_e31d
    rts

B19_b2e9:
    ldx curr_object_slot
    lda #$07
    sta OBJ_script, x
    rts

CopyAttack_Ball:
    A_JSR       L_19B31D                    ; 19B2F1/181DB3
    ASMCALL     $DE4B                       ; 19B2F4/D04BDE // Play sound effect
    .byte       $4C                         ; 19B2F7/4C
    ASMCALL     $B38E                       ; 19B2F8/D08EB3 // Set pose to (VAR0 << 1) respecting facing
    ASMCALL     $9952                       ; 19B2FB/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 19B2FE/00
    .byte       $00                         ; 19B2FF/00
    .byte       $03                         ; 19B300/03
    .byte       $00                         ; 19B301/00
    WAIT        #16                         ; 19B302/0610
L_19B304:
    A_JMP       L_19B30A                    ; 19B304/170AB3

L_19B307:
    A_JSR       L_19B31D                    ; 19B307/181DB3
L_19B30A:
    ASMCALL     $9BF7                       ; 19B30A/D0F79B // Get Kirby's sub-state (0=STOP, 1=WALK, 2=DASH, 3=FALL, 4=WATER_STOP, 5=WATER_WALK, 6=SWIM, 7=LEAVE_WATER)
    TABLEJMP    #7                          ; 19B30D/0F07
    .word       KSTD2_BallIdle                    ; 19B30F/29B3
    .word       KSTD3_BallRoll                    ; 19B311/A5B3
    .word       KSTD3_BallRoll                    ; 19B313/A5B3
    .word       KSTD7_BallFall                    ; 19B315/22B5
    .word       KSTD2_BallIdle                    ; 19B317/29B3
    .word       KSTD3_BallRoll                    ; 19B319/A5B3
    .word       KSTD7_BallFall                    ; 19B31B/22B5
L_19B31D:
    MOV         $05E0,#$0B                  ; 19B31D/11E0050B
    SPRITEMAP   L_1B9BEE                     ; 19B321/1AEE9B1B
    MOV         VAR0,#$00                   ; 19B325/0D0000
    A_RTS                                   ; 19B328/19

KSTD2_BallIdle:
    MOV         $05E1,#$00                  ; 19B329/11E10500
    ONTICK      $19B342                     ; 19B32D/0842B319
    ASMCALL     $8015                       ; 19B331/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_19B33E                    ; 19B334/0A3EB3
    ASMCALL     $B397                       ; 19B337/D097B3 // Set pose to ($05E4 << 1) + arg
    .byte       $10                         ; 19B33A/10
    A_JSR       $8003                       ; 19B33B/180380
L_19B33E:
    ASMCALL     $B38E                       ; 19B33E/D08EB3 // Set pose to (VAR0 << 1) respecting facing
    HALT                                    ; 19B341/09

B19_b342:
    jsr $9c5a
    jsr $8fcc
    jsr $95cd
    jsr $9021
    jsr $8b4e
    bcc B19_b358
    ldx #$d7
    jmp $8ce8
B19_b358:
    jsr $8b1a
    bcc B19_b362
    ldx #$d3
    jmp $8ce8
B19_b362:
    jsr $8ae8
    bcc B19_b36c
    ldx #$d5
    jmp $8ce8
B19_b36c:
    jsr $8a15
    bcc B19_b376
    ldx #$00
    jmp $8ce8
B19_b376:
    jsr $8af2
    bcc B19_b380
    ldx #$d9
    jmp $8ce8
B19_b380:
    jmp $805b
B19_b383:
    lda OBJ_var0+1
    clc
    adc #$01
    and #$07
    sta OBJ_var0+1
B19_b38e:
    lda OBJ_var0+1
    asl a
    adc #$00
    jmp $8fe6
B19_b397:
    jsr Script_ReadByte
    sta tmp0
    lda kirby_05E4
    asl a
    adc tmp0
    jmp $8fe6

KSTD3_BallRoll:
    MOV         $05E1,#$01                  ; 19B3A5/11E10501
    ONTICK      $19B3C0                     ; 19B3A9/08C0B319
    ASMCALL     $8015                       ; 19B3AD/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_19B3BA                    ; 19B3B0/0ABAB3
    ASMCALL     $B397                       ; 19B3B3/D097B3 // Set pose to ($05E4 << 1) + arg
    .byte       $10                         ; 19B3B6/10
    A_JSR       $8003                       ; 19B3B7/180380
L_19B3BA:
    ASMCALL     $B383, WAIT #2              ; 19B3BA/D283B3 // Set VAR0 to (VAR0 + 1) % 8, then set pose to (VAR0 << 1) respecting facing
L_19B3BD:
    A_JMP       L_19B3BA                    ; 19B3BD/17BAB3

B19_b3c0:
    jsr $8112
    jsr $98c3
    jsr $9899
    tya
    clc
    adc #$15
    tay
    lda temp_pad1_hold
    and $8000, x
    jsr $8597
    jsr $95cd
    jsr $b422
    bcc B19_b3e3
    ldx #$d3
    jmp $8ce8
B19_b3e3:
    jsr $8b4e
    bcc B19_b3ed
    ldx #$d7
    jmp $8ce8
B19_b3ed:
    jsr $8a6c
    bcc B19_b3f7
    ldx #$d2
    jmp $8ce8
B19_b3f7:
    jsr $8a78
    bcc B19_b401
    ldx #$d4
    jmp $8ce8
B19_b401:
    jsr $8ae8
    bcc B19_b40b
    ldx #$d5
    jmp $8ce8
B19_b40b:
    jsr $8a15
    bcc B19_b415
    ldx #$00
    jmp $8ce8
B19_b415:
    jsr $8af2
    bcc B19_b41f
    ldx #$d9
    jmp $8ce8
B19_b41f:
    jmp $805b
B19_b422:
    jsr $9128
    bcs B19_b428
    rts
B19_b428:
    jsr $8c16
    lda kirby_vel_x
    eor #$ff
    clc
    adc #$01
    sta kirby_vel_x
    lda kirby_vel_x+1
    eor #$ff
    adc #$00
    sta kirby_vel_x+1
    lda OBJ_var1+1
    eor #$80
    sta OBJ_var1+1
    sec
    rts

KSTD4_BallSkid:
    MOV         $05E1,#$03                  ; 19B44A/11E10503
    ONTICK      $19B46A                     ; 19B44E/086AB419
    ASMCALL     $9952                       ; 19B452/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 19B455/00
    .byte       $00                         ; 19B456/00
    .byte       $01                         ; 19B457/01
    .byte       $00                         ; 19B458/00
    ASMCALL     $8015                       ; 19B459/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_19B466                    ; 19B45C/0A66B4
    ASMCALL     $B397                       ; 19B45F/D097B3 // Set pose to ($05E4 << 1) + arg
    .byte       $10                         ; 19B462/10
    A_JSR       $8003                       ; 19B463/180380
L_19B466:
    ASMCALL     $B38E                       ; 19B466/D08EB3 // Set pose to (VAR0 << 1) respecting facing
    HALT                                    ; 19B469/09

B19_b46a:
    jsr $8112
    ldy #$0b
    lda #$00
    jsr $8597
    jsr $95cd
    jsr $b422
    bcc B19_b481
    ldx #$d3
    jmp $8ce8
B19_b481:
    jsr $8b4e
    bcc B19_b48b
    ldx #$d7
    jmp $8ce8
B19_b48b:
    jsr $8a6c
    bcc B19_b495
    ldx #$d2
    jmp $8ce8
B19_b495:
    jsr $8ae8
    bcc B19_b49f
    ldx #$d5
    jmp $8ce8
B19_b49f:
    jsr $8af2
    bcc B19_b4a9
    ldx #$d9
    jmp $8ce8
B19_b4a9:
    jmp $805b


KSTD5_BallJump:
    MOV         $05E1,#$04                  ; 19B4AC/11E10504
    ONTICK      $19B4D3                     ; 19B4B0/08D3B419
    ASMCALL     $885C                       ; 19B4B4/D05C88 // Set Kirby's Y velocity
    .word       $FC70                       ; 19B4B7/70FC
    ASMCALL     $DE4B                       ; 19B4B9/D04BDE // Play sound effect
    .byte       $04                         ; 19B4BC/04
    ASMCALL     $B38E                       ; 19B4BD/D08EB3 // Set pose to (VAR0 << 1) respecting facing
    WAIT        #23                         ; 19B4C0/0617
KSTD6_BallJumpPeak:
    ASMCALL     $885C                       ; 19B4C2/D05C88 // Set Kirby's Y velocity
    .word       $FF50                       ; 19B4C5/50FF
    ONTICK      $19B4DD                     ; 19B4C7/08DDB419
    WAIT        #5                          ; 19B4CB/0605
L_19B4CD:
    ASMCALL     $884D                       ; 19B4CD/D04D88 // Zero Kirby's Y velocity
    A_JMP       KSTD7_BallFall                    ; 19B4D0/1722B5

B19_b4d3:
    jsr $8a40
    bcc B19_b4dd
    ldx #$d6
    jmp $8ce8
B19_b4dd:
    ldy #$05
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $873e
    jsr $95cd
    jsr $b422
    jsr $8bd3
    bcc B19_b4fe
    ldx #$d7
    jmp $8ce8
B19_b4fe:
    jsr $8c61
    bcc B19_b508
    ldx #$d7
    jmp $8ce8
B19_b508:
    jsr $8a15
    bcc B19_b512
    ldx #$00
    jmp $8ce8
B19_b512:
    jsr $8af2
    bcc B19_b51c
    ldx #$d9
    jmp $8ce8
B19_b51c:
    jsr $b619
    jmp $805b


KSTD7_BallFall:
    MOV         $05E1,#$05                  ; 19B522/11E10505
    ONTICK      $19B546                     ; 19B526/0846B519
    ASMCALL     $8015                       ; 19B52A/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_19B537                    ; 19B52D/0A37B5
    ASMCALL     $B397                       ; 19B530/D097B3 // Set pose to ($05E4 << 1) + arg
    .byte       $10                         ; 19B533/10
    A_JSR       $8003                       ; 19B534/180380
L_19B537:
    ASMCALL     $B38E                       ; 19B537/D08EB3 // Set pose to (VAR0 << 1) respecting facing
    HALT                                    ; 19B53A/09

KSTD8_BallBounce:
    ASMCALL     $B642                       ; 19B53B/D042B6 // Return 0 if Kirby is not moving, 1 if moving only on the X axis, 2 if moving on the Y axis
    TABLEJMP    #3                          ; 19B53E/0F03
    .word       KSTD2_BallIdle                    ; 19B540/29B3
    .word       KSTD3_BallRoll                    ; 19B542/A5B3
    .word       KSTD7_BallFall                    ; 19B544/22B5

B19_b546:
    ldy #$05
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $873e
    jsr $95cd
    jsr $b422
    jsr $b5a9
    bcc B19_b567
    ldx #$d8
    jmp $8ce8
B19_b567:
    jsr $8bd3
    bcc B19_b571
    ldx #$d7
    jmp $8ce8
B19_b571:
    jsr $8c61
    bcc B19_b57b
    ldx #$d7
    jmp $8ce8
B19_b57b:
    jsr $88d5
    bcc B19_b585
    ldx #$d7
    jmp $8ce8
B19_b585:
    jsr $89d9
    bcc B19_b58f
    ldx #$33
    jmp $8ce8
B19_b58f:
    jsr $8a15
    bcc B19_b599
    ldx #$00
    jmp $8ce8
B19_b599:
    jsr $8af2
    bcc B19_b5a3
    ldx #$d9
    jmp $8ce8
B19_b5a3:
    jsr $b619
    jmp $805b
B19_b5a9:
    jsr $91c2
    bcs B19_b5af
    rts
B19_b5af:
    jsr $8bb9
    ldx #$00
    lda temp_pad1_hold
    and #$80
    bne B19_b5c2
    inx
    lda temp_pad1_hold
    and #$04
    bne B19_b5c2
    inx
B19_b5c2:
    lda kirby_vel_y+1
    bpl B19_b5c9
    clc
    rts
B19_b5c9:
    sta UNK_1
    lda kirby_vel_y
    sta UNK_0
    lda $b613, x
    sta UNK_2
    lda $b616, x
    sta UNK_3
    jsr B3F_e1f7
    lda UNK_5
    sta kirby_vel_y
    lda UNK_6
    sta kirby_vel_y+1
    lda kirby_vel_y
    sec
    sbc #$80
    lda kirby_vel_y+1
    sbc #$01
    bcs B19_b5fc
    lda #$00
    sta kirby_vel_y
    sta kirby_vel_y+1
B19_b5fc:
    lda kirby_vel_y
    eor #$ff
    clc
    adc #$01
    sta kirby_vel_y
    lda kirby_vel_y+1
    eor #$ff
    adc #$00
    sta kirby_vel_y+1
    sec
    rts
.byte $66
.byte $4C
.byte $B3,$01
.byte $00
.byte $00
B19_b619:
    lda kirby_vel_y+1
    bpl B19_b623
    eor #$ff
    clc
    adc #$01
B19_b623:
    cmp #$03
    bcs B19_b628
    rts
B19_b628:
    lda #$82
    sta kirby_05EE_code
    lda #$9b
    sta kirby_05EE_code+1
    lda #$3b
    ldy #$b6
    ldx #$10
    jmp $9c72
.byte $05,$00,$00,$00,$00,$07,$07
B19_b642:
    ldx #$02
    lda kirby_vel_y
    ora kirby_vel_y+1
    bne B19_b656
    dex
    lda kirby_vel_x_abs
    ora kirby_vel_x_abs+1
    bne B19_b656
    dex
B19_b656:
    txa
    rts


KSTD9_BallEnd:
    ASMCALL     $DE4B                       ; 19B658/D04BDE // Play sound effect
    .byte       $4C                         ; 19B65B/4C
    ASMCALL     $9952                       ; 19B65C/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 19B65F/00
    .byte       $00                         ; 19B660/00
    .byte       $03                         ; 19B661/03
    .byte       $00                         ; 19B662/00
    WAIT        #16                         ; 19B663/0610
L_19B665:
    JML         L_14B2D9                    ; 19B665/03D9B214

CopyAttack_Stone:
    MOV         $05E0,#$08                  ; 19B669/11E00508
    SETZPOS     #$007F                      ; 19B66D/3A7F00
    SPRITEMAP   L_1B9DAE                     ; 19B670/1AAE9D1B
    ASMCALL     $DE4B                       ; 19B674/D04BDE // Play sound effect
    .byte       $4C                         ; 19B677/4C
    ASMCALL     $9952                       ; 19B678/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 19B67B/00
    .byte       $00                         ; 19B67C/00
    .byte       $03                         ; 19B67D/03
    .byte       $00                         ; 19B67E/00
    ASMCALL     $987D                       ; 19B67F/D07D98 // Zero Kirby's velocities
    ONTICK      $19B6AD                     ; 19B682/08ADB619
    ASMCALL     $8FDC, WAIT #1              ; 19B686/D1DC8F // Set pose (respect facing)
    .byte       $00                         ; 19B689/00
L_19B68A:
    ADDPOSE     #6, WAIT #1                 ; 19B68A/6106
L_19B68C:
    ADDPOSE     #-6, WAIT #1                ; 19B68C/61FA
L_19B68E:
    ADDPOSE     #4, WAIT #1                 ; 19B68E/6104
L_19B690:
    LOOP        #2                          ; 19B690/0102
        ASMCALL     $8FDC, WAIT #1              ; 19B692/D1DC8F // Set pose (respect facing)
        .byte       $02                         ; 19B695/02
L_19B696:
        DEC2POSE    WAIT #1                     ; 19B696/A1
L_19B697:
    ENDLOOP                                 ; 19B697/02
    ASMCALL     $885C, WAIT #4              ; 19B698/D45C88 // Set Kirby's Y velocity
    .word       $FE00                       ; 19B69B/00FE
L_19B69D:
    ASMCALL     $884D                       ; 19B69D/D04D88 // Zero Kirby's Y velocity
    ASMCALL     $9BF7                       ; 19B6A0/D0F79B // Get Kirby's sub-state (0=STOP, 1=WALK, 2=DASH, 3=FALL, 4=WATER_STOP, 5=WATER_WALK, 6=SWIM, 7=LEAVE_WATER)
    TABLEJMP    #4                          ; 19B6A3/0F04
    .word       L_19B726                    ; 19B6A5/26B7
    .word       L_19B726                    ; 19B6A7/26B7
    .word       L_19B726                    ; 19B6A9/26B7
    .word       L_19B6BC                    ; 19B6AB/BCB6

B19_b6ad:
    jsr $95cd
    jsr $9021
    jsr $9016
    jsr $904a
    jmp $805b


L_19B6BC:
    MOV         $05E1,#$05                  ; 19B6BC/11E10505
    ONTICK      $19B6C9                     ; 19B6C0/08C9B619
    ASMCALL     $8FDC                       ; 19B6C4/D0DC8F // Set pose (respect facing)
    .byte       $08                         ; 19B6C7/08
L_19B6C8:
    HALT                                    ; 19B6C8/09

B19_b6c9:
    ldy #$0d
    jsr $87ba
    jsr $8112
    ldy #$0a
    lda #$00
    jsr $8597
    jsr $95cd
    jsr $b708
    jsr $941c
    jsr $9021
    jsr $8bab
    bcc B19_b6ee
    ldx #$d0
    jmp $8ce8
B19_b6ee:
    jsr $904a
    jsr $8af2
    bcc B19_b6fb
    ldx #$d1
    jmp $8ce8
B19_b6fb:
    jsr $89d9
    bcc B19_b705
    ldx #$33
    jmp $8ce8
B19_b705:
    jmp $805b
B19_b708:
    lda #$11
    ldy #$b7
    ldx #$0a
    jmp $9c72
.byte $04,$00,$00,$00,$00,$08,$08

KSTD0_StoneLand:
    ASMCALL     $DE4B                       ; 19B718/D04BDE // Play sound effect
    .byte       $40                         ; 19B71B/40
    ASMCALL     $9952                       ; 19B71C/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 19B71F/00
    .byte       $00                         ; 19B720/00
    .byte       $0C                         ; 19B721/0C
    .byte       $00                         ; 19B722/00
    A_JMP       L_19B726                    ; 19B723/1726B7

L_19B726:
    MOV         $05E1,#$00                  ; 19B726/11E10500
    ONTICK      $19B72F                     ; 19B72A/082FB719
L_19B72E:
    HALT                                    ; 19B72E/09

B19_b72f:
    jsr $8049
    jsr $8af2
    bcc B19_b73c
    ldx #$d1
    jmp $8ce8
B19_b73c:
    jsr $b742
    jmp $805b
B19_b742:
    jsr $8ffb
    asl a
    adc #$08
    jmp $8fe6

KSTD1_StoneEnd:
    ASMCALL     $DE4B                       ; 19B74B/D04BDE // Play sound effect
    .byte       $4C                         ; 19B74E/4C
    ASMCALL     $9952                       ; 19B74F/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 19B752/00
    .byte       $00                         ; 19B753/00
    .byte       $03                         ; 19B754/03
    .byte       $00                         ; 19B755/00
    LOOP        #2                          ; 19B756/0102
        ASMCALL     $8FDC, WAIT #1              ; 19B758/D1DC8F // Set pose (respect facing)
        .byte       $00                         ; 19B75B/00
L_19B75C:
        INC2POSE    WAIT #1                     ; 19B75C/91
L_19B75D:
    ENDLOOP                                 ; 19B75D/02
    INC2POSE    WAIT #1                     ; 19B75E/91
L_19B75F:
    ADDPOSE     #-4, WAIT #1                ; 19B75F/61FC
L_19B761:
    ADDPOSE     #6, WAIT #1                 ; 19B761/6106
L_19B763:
    ADDPOSE     #-6, WAIT #1                ; 19B763/61FA
L_19B765:
    JML         L_14B2D9                    ; 19B765/03D9B214

Script05_Collectable:
    SPRITEMAP   L_1C9FC4                     ; 19B769/1AC49F1C
    SETBANK     #$21                        ; 19B76D/2821
    ONPOSITION  $D9BB                       ; 19B76F/21BBD9
    MOV         REG,VAR0                    ; 19B772/1E00
    MOV         VAR2,REG                    ; 19B774/1D02
    TABLEJMP    #6                          ; 19B776/0F06
    .word       SCR05_MaximTomato           ; 19B778/CBB7
    .word       SCR05_OneUp                 ; 19B77A/F3B7
    .word       SCR05_HyperCandy            ; 19B77C/13B8
    .word       SCR05_Drink                 ; 19B77E/E2B7
    .word       SCR05_Item04                ; 19B780/30B8
    .word       SCR05_MetaSword             ; 19B782/6FBA
L_19B784:
    MOV         REG,$006E                   ; 19B784/1C6E00
    ASMCALL     $EB2F                       ; 19B787/D02FEB
    SETBANK     #$22                        ; 19B78A/2822
    ONPOSITION  $D97D                       ; 19B78C/217DD9
    ASMCALL     $8090                       ; 19B78F/D09080
    ONMOVE      $D86B                       ; 19B792/236BD8
    ONTICK      $19B7B7                     ; 19B795/08B7B719
    ZEROVEL                                 ; 19B799/38
    HALT                                    ; 19B79A/09

L_19B79B:
    ZEROVEL                                 ; 19B79B/38
    ADD         $05E5,#-1                   ; 19B79C/16E50502FF
    MOV         REG,VAR2                    ; 19B7A1/1E02
    TABLECALL   #6                          ; 19B7A3/2906
    _is_faraddr SCR02_TomatoHeal            ; 19B7A5/2AB216
    _is_faraddr L_19B809                    ; 19B7A8/09B819
    _is_faraddr L_19B821                    ; 19B7AB/21B819
    _is_faraddr SCR02_DrinkHeal             ; 19B7AE/06B216
    _is_faraddr $000000                     ; 19B7B1/000000
    _is_faraddr $000000                     ; 19B7B4/000000

B19_b7b7:
    jsr $802e
    bcc B19_b7ca
    ldx curr_object_slot
    lda #$19
    sta script_bank
    lda #$9b
    ldy #$b7
    jmp OBJ_TryReplaceScriptPc
B19_b7ca:
    rts


SCR05_MaximTomato:
    SETZPOS     #$00FF                      ; 19B7CB/3AFF00
    ONTICK      B19_b7d5                     ; 19B7CE/08D5B719
    SETPOSE     #$00                        ; 19B7D2/5000
L_19B7D4:
    HALT                                    ; 19B7D4/09

B19_b7d5:
    ;bank $39
    lda #$44
    ldx #$93
B19_b7d9:
    jsr B3F_e31d
    jsr $baf0
    jmp $bb2e

SCR05_Drink:
    SETZPOS     #$00FF                      ; 19B7E2/3AFF00
    ONTICK      $19B7EC                     ; 19B7E5/08ECB719
    SETPOSE     #$04                        ; 19B7E9/5004
L_19B7EB:
    HALT                                    ; 19B7EB/09

B19_b7ec:
    lda #$5c
    ldx #$93
    jmp $b7d9

SCR05_OneUp:
    SETZPOS     #$00FF                      ; 19B7F3/3AFF00
    ONTICK      $19B802                     ; 19B7F6/0802B819
L_19B7FA:
    SETPOSE     #$01                        ; 19B7FA/5001
    WAIT        #8                          ; 19B7FC/0608
L_19B7FE:
    INCPOSE     WAIT #4                     ; 19B7FE/74
L_19B7FF:
    A_JMP       L_19B7FA                    ; 19B7FF/17FAB7

B19_b802:
    lda #$74
    ldx #$93
    jmp $b7d9

L_19B809:
    MOV         REG,#$01                    ; 19B809/1B01
    ASMCALL     $E385                       ; 19B80B/D085E3
    ASMCALL     $DE4B                       ; 19B80E/D04BDE // Play sound effect
    .byte       $21                         ; 19B811/21
    END                                     ; 19B812/00

SCR05_HyperCandy:
    ONTICK      $19B81A                     ; 19B813/081AB819
    SETPOSE     #$03                        ; 19B817/5003
    HALT                                    ; 19B819/09

B19_b81a:
    lda #$8c
    ldx #$93
    jmp $b7d9

L_19B821:
    SETBANK     #$21                        ; 19B821/2821
    ASMCALL     $9952                       ; 19B823/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 19B826/00
    .byte       $00                         ; 19B827/00
    .byte       $19                         ; 19B828/19
    .byte       $00                         ; 19B829/00
    OR          $05FB,#$40                  ; 19B82A/16FB050140
    A_RTS                                   ; 19B82F/19

SCR05_Item04:
    SETBANK     #$22                        ; 19B830/2822
    ONPOSITION  $D97D                       ; 19B832/217DD9
    SPRITEMAP   L_308B7A                     ; 19B835/1A7A8B30
    MOV         VAR0,#$01                   ; 19B839/0D0001
    MOV         VAR8,#$30                   ; 19B83C/0D0830
    MOV         VAR9,#$01                   ; 19B83F/0D0901
    MOV         VAR6,#$04                   ; 19B842/0D0604
    ASMCALL     $BA42                       ; 19B845/D042BA
    ONTICK      $19B866                     ; 19B848/0866B819
    SETPOSE     #$00                        ; 19B84C/5000
L_19B84E:
    ASMCALL     $BA18                       ; 19B84E/D018BA
L_19B851:
    A_JMP       L_19B84E                    ; 19B851/174EB8

L_19B854:
    SETBANK     #$21                        ; 19B854/2821
    SPRITEMAP   L_1C9CD7                     ; 19B856/1AD79C1C
    ONTICK      $19B918                     ; 19B85A/0818B919
    ASMCALL     $DE4B                       ; 19B85E/D04BDE // Play sound effect
    .byte       $1F                         ; 19B861/1F
    JML         L_16B3E0                    ; 19B862/03E0B316

B19_b866:
    jsr $b9ce
    ldx curr_object_slot
    dec OBJ_vel_z_lo, x
    bne B19_b88b
    lda #$7a
    sta OBJ_tick_lo, x
    lda #$b8
    sta OBJ_tick_hi, x
B19_b87a:
    lda #$a4
    ldx #$93
    jsr B3F_e31d
    bcc B19_b88b
    ldx curr_object_slot
    lda #$22
    sta OBJ_lower_prg, x
    rts
B19_b88b:
    ldx curr_object_slot
    lda kirby_copy_ability
    bpl B19_b8f7
    jsr $b9ce
    ldx #$00
    ldy #$00
    jsr $9e67
    jsr B3F_eedb
    bcs B19_b90a
    ldx #$00
    ldy #$00
    jsr $9e67
    jsr B3F_ed9c
    cmp #$0e
    beq B19_b8f7
    lda #$15
    jsr $851e
    jsr $b951
    jsr $97ef
    ldx curr_object_slot
    bcc B19_b8cf
    pha
    lda #$fd
    sta OBJ_vel_y_hi, x
    lda #$00
    sta OBJ_vel_y_lo, x
    lda #$41
    jsr $8ef0
    pla
B19_b8cf:
    lsr a
    bcc B19_b8dc
    pha
    jsr $84bc
    lda #$41
    jsr $8ef0
    pla
B19_b8dc:
    lsr a
    bcc B19_b8ec
    lda #$00
    sta OBJ_vel_y_lo, x
    sta OBJ_vel_y_hi, x
    lda #$41
    jsr $8ef0
B19_b8ec:
    dec OBJ_var6, x
    bne B19_b8f6
    dec OBJ_vel_z_hi, x
    bmi B19_b8f7
B19_b8f6:
    rts
B19_b8f7:
    lda #$26
    jsr $8ef0
    lda #$22
    sta script_bank
    lda #$07
    ldy #$81
    ldx curr_object_slot
    jmp OBJ_TryReplaceScriptPc
B19_b90a:
    ldx curr_object_slot
    lda #$19
    sta script_bank
    lda #$54
    ldy #$b8
    jmp OBJ_TryReplaceScriptPc
B19_b918:
    ldx curr_object_slot
    lda OBJ_vel_z_lo, x
    bne B19_b930
    lda #$a4
    ldx #$93
    jsr B3F_e31d
    bcc B19_b934
    ldx curr_object_slot
    lda #$22
    sta OBJ_lower_prg, x
    rts
B19_b930:
    dec OBJ_vel_z_lo, x
    rts
B19_b934:
    jsr $9ced
    jsr B3F_ed9c
    cmp #$02
    bcc B19_b950
    cmp #$0e
    bcs B19_b950
    ldx curr_object_slot
    lda #$16
    sta script_bank
    lda #$f6
    ldy #$b3
    jmp OBJ_TryReplaceScriptPc
B19_b950:
    rts
B19_b951:
    lda UNK_74C8+1025
    cmp #$02
    bne B19_b973
    lda minimum_kirby_x+1
    bne B19_b964
    lda minimum_kirby_x
    cmp #$10
    beq B19_b973
B19_b964:
    ldx curr_object_slot
    lda OBJ_x_lo, x
    sec
    sbc minimum_kirby_x
    lda OBJ_x_hi, x
    sbc minimum_kirby_x+1
    bmi B19_b9c9
B19_b973:
    ldx curr_object_slot
    lda OBJ_x_lo, x
    sec
    sbc minimum_kirby_x
    lda OBJ_x_hi, x
    sbc minimum_kirby_x+1
    bpl B19_b98f
    lda minimum_kirby_x
    sta OBJ_x_lo, x
    lda minimum_kirby_x+1
    sta OBJ_x_hi, x
    jmp $b9a6
B19_b98f:
    lda OBJ_x_lo, x
    clc
    sbc maximum_kirby_x
    lda OBJ_x_hi, x
    sbc maximum_kirby_x+1
    bmi B19_b9a9
    lda maximum_kirby_x
    sta OBJ_x_lo, x
    lda maximum_kirby_x+1
    sta OBJ_x_hi, x
B19_b9a6:
    jsr $84bc
B19_b9a9:
    lda OBJ_y_lo, x
    sec
    sbc minimum_kirby_y
    lda OBJ_y_hi, x
    sbc minimum_kirby_y+1
    bpl B19_b9c8
    lda minimum_kirby_y
    sta OBJ_y_lo, x
    lda minimum_kirby_y+1
    sta OBJ_y_hi, x
    lda #$00
    sta OBJ_vel_y_lo, x
    sta OBJ_vel_y_hi, x
B19_b9c8:
    rts
B19_b9c9:
    pla
    pla
    jmp OBJ_Destroy
B19_b9ce:
    ldx curr_object_slot
    lda OBJ_store_x_lo, x
    sec
    sbc OBJ_store_x_lo+1
    sta tmp0
    lda OBJ_store_x_hi, x
    sbc OBJ_store_x_hi+1
    sta tmp0+1
    jsr $864e
    beq B19_b9f0
    cmp #$02
    bcs B19_ba11
    lda tmp0
    cmp #$80
    bcs B19_ba11
B19_b9f0:
    lda OBJ_store_y_lo, x
    sec
    sbc OBJ_store_y_lo+1
    sta tmp0
    lda OBJ_store_y_hi, x
    sbc OBJ_store_y_hi+1
    sta tmp0+1
    jsr $864e
    beq B19_ba10
    cmp #$02
    bcs B19_ba11
    lda tmp0
    cmp #$80
    bcs B19_ba11
B19_ba10:
    rts
B19_ba11:
    pla
    pla
    ldx curr_object_slot
    jmp OBJ_Destroy
B19_ba18:
    ldx curr_object_slot
    ldy #$00
    lda OBJ_var1, x
    bpl B19_ba22
    iny
B19_ba22:
    lda OBJ_pose, x
    clc
    adc $ba3c, y
    cmp $ba3e, y
    bne B19_ba31
    lda $ba40, y
B19_ba31:
    sta OBJ_pose, x
    ldx curr_script_slot
    lda #$08
    sta SCR_sleep_timer, x
    rts
.byte $01,$FF,$04,$FF,$00,$03
B19_ba42:
    ldx curr_object_slot
    ldy OBJ_var3, x
    lda $ba69, y
    pha
    lda $ba6c, y
    ldy OBJ_var1, x
    bpl B19_ba61
    eor #$ff
    tay
    pla
    eor #$ff
    clc
    adc #$01
    pha
    bne B19_ba60
    iny
B19_ba60:
    tya
B19_ba61:
    sta OBJ_vel_x_hi, x
    pla
    sta OBJ_vel_x_lo, x
    rts
.byte $66
.byte $9D,$CC
.byte $01
.byte $01,$01


SCR05_MetaSword:
    ONPOSITION  $D97D                       ; 19BA6F/217DD9
    SPRITEMAP   L_318000                     ; 19BA72/1A008031
    SETBANK     #$22                        ; 19BA76/2822
    ONTICK      $19BAA9                     ; 19BA78/08A9BA19
    ASMCALL     $BAD4                       ; 19BA7C/D0D4BA // Set position to top center of the screen
    ZEROVEL                                 ; 19BA7F/38
    MOV         VAR5,#$0A                   ; 19BA80/0D050A
    ASMCALL     $DE4B                       ; 19BA83/D04BDE // Play sound effect
    .byte       $23                         ; 19BA86/23
L_19BA87:
    SETPOSE     #$73, WAIT #2               ; 19BA87/5273
L_19BA89:
    INCPOSE     WAIT #2                     ; 19BA89/72
L_19BA8A:
    INCPOSE     WAIT #2                     ; 19BA8A/72
L_19BA8B:
    SETPOSE     #$6E, WAIT #2               ; 19BA8B/526E
L_19BA8D:
    LOOP        #4                          ; 19BA8D/0104
        INCPOSE     WAIT #2                     ; 19BA8F/72
L_19BA90:
    ENDLOOP                                 ; 19BA90/02
    A_JMP       L_19BA87                    ; 19BA91/1787BA

L_19BA94:
    ASMCALL     $DE4B                       ; 19BA94/D04BDE // Play sound effect
    .byte       $20                         ; 19BA97/20
    ADDYPOS     #-1                         ; 19BA98/2DFFFF
    ONTICK      $19BACD                     ; 19BA9B/08CDBA19
    ZEROVEL                                 ; 19BA9F/38
    LOOP        #9                          ; 19BAA0/0109
        SETPOSE     #$6A, WAIT #8               ; 19BAA2/586A
L_19BAA4:
        INCPOSE     WAIT #8                     ; 19BAA4/78
L_19BAA5:
        INCPOSE     WAIT #8                     ; 19BAA5/78
L_19BAA6:
    ENDLOOP                                 ; 19BAA6/02
    INCPOSE     WAIT #8                     ; 19BAA7/78
L_19BAA8:
    HALT                                    ; 19BAA8/09

B19_baa9:
    lda #$15
    jsr $851e
    ldx curr_object_slot
    ldy OBJ_var5, x
    beq B19_bab9
    dec OBJ_var5, x
    rts

B19_bab9:
    jsr $97ef
    bcs B19_babf
    rts

B19_babf:
    ldx curr_object_slot
    lda #$19
    sta script_bank
    lda #$94
    ldy #$ba
    jmp OBJ_TryReplaceScriptPc
    lda #$bc
    ldx #$93
    jmp B3F_e31d
    ldx curr_object_slot
    lda a:camera_x
    clc
    adc #$80
    sta OBJ_x_lo, x
    lda a:camera_x+1
    adc #$00
    sta OBJ_x_hi, x
    lda a:camera_y
    sta OBJ_y_lo, x
    lda a:camera_y+1
    sta OBJ_y_hi, x
    rts
B19_baf0:
    jsr $9ced
    jsr B3F_eedb
    ldy #$00
    bcc B19_bafb
    iny
B19_bafb:
    ldx curr_object_slot
    lda OBJ_vel_y_lo, x
    clc
    adc $bb28, y
    sta OBJ_vel_y_lo, x
    bcc B19_bb0c
    inc OBJ_vel_y_hi, x
B19_bb0c:
    lda $bb2a, y
    sec
    sbc OBJ_vel_y_lo, x
    lda $bb2c, y
    sbc OBJ_vel_y_hi, x
    bcs B19_bb27
    lda $bb2a, y
    sta OBJ_vel_y_lo, x
    lda $bb2c, y
    sta OBJ_vel_y_hi, x
B19_bb27:
    rts
.byte $20,$10,$80,$40,$02,$01
B19_bb2e:
    ldx #$00
    ldy #$08
    jsr $9d01
    jsr B3F_f241
    tya
    bmi B19_bb3c
    rts
B19_bb3c:
    lda kirby_0579_unknown_x_offset
    ldx kirby_0579_unknown_x_offset+1
    jsr $9d56
    ldx curr_object_slot
    lda #$00
    sta OBJ_vel_y_lo, x
    sta OBJ_vel_y_hi, x
    rts
    lsr OBJ_x_hi+9, x
    ldx curr_object_slot
    lda #$00
    sta OBJ_vel_y_lo, x
    sta OBJ_vel_y_hi, x
    rts

;padding???
incbinRange "../split/prg/bank19.bin", $1b5d, $2000