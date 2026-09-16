.segment "PRG34": absolute
L_34A000:
    MOV         REG,$00F4                   ; 34A000/1CF400
    ADD         REG,#-2                     ; 34A003/2502FE
    JNE         L_34A00E                    ; 34A006/0B0EA0
    MOV         $0516,#$00                  ; 34A009/11160500
    END                                     ; 34A00D/00

L_34A00E:
    MOV         REG,$0557                   ; 34A00E/1C5705
    TABLEJMP    #8                          ; 34A011/0F08
    .word       L_34A023                    ; 34A013/23A0
    .word       L_34A1C8                    ; 34A015/C8A1
    .word       L_34A39D                    ; 34A017/9DA3
    .word       L_34A599                    ; 34A019/99A5
    .word       L_34A6FD                    ; 34A01B/FDA6
    .word       L_34A7FF                    ; 34A01D/FFA7
    .word       L_34A92A                    ; 34A01F/2AA9
    .word       L_34AB2F                    ; 34A021/2FAB
L_34A023:
    MOV         REG,VAR1                    ; 34A023/1E01
    TABLEJMP    #4                          ; 34A025/0F04
    .word       L_34A02F                    ; 34A027/2FA0
    .word       L_34A045                    ; 34A029/45A0
    .word       L_34A132                    ; 34A02B/32A1
    .word       L_34A17F                    ; 34A02D/7FA1
L_34A02F:
    ASMCALL     $DF0D                       ; 34A02F/D00DDF // Destroy all other objects
    A_JSR       L_34AAF6                    ; 34A032/18F6AA
    WAIT        #1                          ; 34A035/0601
L_34A037:
    ASMCALL     $DE51                       ; 34A037/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A03A/6C
    .byte       $00                         ; 34A03B/00
    .byte       $00                         ; 34A03C/00
    .byte       $00                         ; 34A03D/00
    .byte       $00                         ; 34A03E/00
    .byte       $01                         ; 34A03F/01
    WAIT        #60                         ; 34A040/063C
L_34A042:
    A_JMP       L_34AB17                    ; 34A042/1717AB

L_34A045:
    MOV         VAR1,#$00                   ; 34A045/0D0100
    WAIT        #1                          ; 34A048/0601
L_34A04A:
    ASMCALL     $DE51                       ; 34A04A/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A04D/6C
    .byte       $00                         ; 34A04E/00
    .byte       $00                         ; 34A04F/00
    .byte       $00                         ; 34A050/00
    .byte       $00                         ; 34A051/00
    .byte       $02                         ; 34A052/02
    SETXPOS     #$00AC                      ; 34A053/2AAC00
    SETYPOS     #$0078                      ; 34A056/2B7800
    SETZPOS     #$000A                      ; 34A059/3A0A00
    SPRITEMAP   $35849E                     ; 34A05C/1A9E8435
    LOOP        #4                          ; 34A060/0104
        A_JSR       L_34A0F6                    ; 34A062/18F6A0
    ENDLOOP                                 ; 34A065/02
    A_JSR       L_34A0E9                    ; 34A066/18E9A0
    LOOP        #2                          ; 34A069/0102
        A_JSR       L_34A0F6                    ; 34A06B/18F6A0
    ENDLOOP                                 ; 34A06E/02
    ASMCALL     $DE51                       ; 34A06F/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A072/6C
    .byte       $00                         ; 34A073/00
    .byte       $00                         ; 34A074/00
    .byte       $00                         ; 34A075/00
    .byte       $00                         ; 34A076/00
    .byte       $03                         ; 34A077/03
    ADDYPOS     #1                          ; 34A078/2D0100
    INCPOSE                                 ; 34A07B/70
    WAIT        #16                         ; 34A07C/0610
L_34A07E:
    LOOP        #3                          ; 34A07E/0103
        SETXVEL     #$0200                      ; 34A080/B00002
        SETPOSE     #$03, WAIT #5               ; 34A083/5503
L_34A085:
        ZEROVEL                                 ; 34A085/38
        WAIT        #28                         ; 34A086/061C
L_34A088:
    ENDLOOP                                 ; 34A088/02
    WAIT        #26                         ; 34A089/061A
L_34A08B:
    ADDYPOS     #-1                         ; 34A08B/2DFFFF
    ASMCALL     $AC93                       ; 34A08E/D093AC
    SPRITEMAP   $3593E3                     ; 34A091/1AE39335
    SETPOSE     #$00                        ; 34A095/5000
    WAIT        #62                         ; 34A097/063E
L_34A099:
    LOOP        #6                          ; 34A099/0106
        SETPOSE     #$01                        ; 34A09B/5001
        SETXVEL     #$FE00, WAIT #1             ; 34A09D/B100FE
L_34A0A0:
        SETXVEL     #$0200, WAIT #1             ; 34A0A0/B10002
L_34A0A3:
    ENDLOOP                                 ; 34A0A3/02
    ZEROVEL                                 ; 34A0A4/38
    INCPOSE                                 ; 34A0A5/70
    WAIT        #16                         ; 34A0A6/0610
L_34A0A8:
    ASMCALL     $A100                       ; 34A0A8/D000A1
    ASMCALL     $AC8D                       ; 34A0AB/D08DAC
    SPRITEMAP   $3593A5                     ; 34A0AE/1AA59335
    SETPOSE     #$1E, WAIT #4               ; 34A0B2/541E
L_34A0B4:
    ASMCALL     $AC93                       ; 34A0B4/D093AC
    SPRITEMAP   $3593E3                     ; 34A0B7/1AE39335
    LOOP        #3                          ; 34A0BB/0103
        SETPOSE     #$03, WAIT #2               ; 34A0BD/5203
L_34A0BF:
        INCPOSE     WAIT #2                     ; 34A0BF/72
L_34A0C0:
    ENDLOOP                                 ; 34A0C0/02
    ASMCALL     $AC8D                       ; 34A0C1/D08DAC
    SPRITEMAP   $3593A5                     ; 34A0C4/1AA59335
    SETPOSE     #$08, WAIT #8               ; 34A0C8/5808
L_34A0CA:
    SETPOSE     #$1D, WAIT #8               ; 34A0CA/581D
L_34A0CC:
    ASMCALL     $ACA5                       ; 34A0CC/D0A5AC
    SPRITEMAP   $359582                     ; 34A0CF/1A829535
    SETPOSE     #$00, WAIT #2               ; 34A0D3/5200
L_34A0D5:
    INCPOSE     WAIT #2                     ; 34A0D5/72
L_34A0D6:
    INCPOSE     WAIT #2                     ; 34A0D6/72
L_34A0D7:
    INCPOSE     WAIT #2                     ; 34A0D7/72
L_34A0D8:
    INCPOSE     WAIT #2                     ; 34A0D8/72
L_34A0D9:
    INCPOSE     WAIT #1                     ; 34A0D9/71
L_34A0DA:
    INCPOSE     WAIT #4                     ; 34A0DA/74
L_34A0DB:
    DECPOSE     WAIT #1                     ; 34A0DB/81
L_34A0DC:
    INC2POSE                                ; 34A0DC/90
    WAIT        #16                         ; 34A0DD/0610
L_34A0DF:
    ASMCALL     $A12A                       ; 34A0DF/D02AA1
    WAIT        #32                         ; 34A0E2/0620
L_34A0E4:
    MOV         $07D5,#$01                  ; 34A0E4/11D50701
    HALT                                    ; 34A0E8/09

L_34A0E9:
    LOOP        #2                          ; 34A0E9/0102
        SETXVEL     #$0200                      ; 34A0EB/B00002
        SETPOSE     #$00, WAIT #5               ; 34A0EE/5500
L_34A0F0:
        ZEROVEL                                 ; 34A0F0/38
        INCPOSE                                 ; 34A0F1/70
        WAIT        #28                         ; 34A0F2/061C
L_34A0F4:
    ENDLOOP                                 ; 34A0F4/02
    A_RTS                                   ; 34A0F5/19

L_34A0F6:
    SETXVEL     #$FE00                      ; 34A0F6/B000FE
    SETPOSE     #$00, WAIT #5               ; 34A0F9/5500
L_34A0FB:
    ZEROVEL                                 ; 34A0FB/38
    INCPOSE                                 ; 34A0FC/70
    WAIT        #28                         ; 34A0FD/061C
L_34A0FF:
    A_RTS                                   ; 34A0FF/19

; CODE OR DATA -- $34A100 .. $34A132
incbinRange "../split/prg/bank34.bin", $0100, $0132

L_34A132:
    SETXPOS     #$0084                      ; 34A132/2A8400
    SETYPOS     #$0078                      ; 34A135/2B7800
    SETZPOS     #$0002                      ; 34A138/3A0200
    SPRITEMAP   $3584B0                     ; 34A13B/1AB08435
    LOOP        #4                          ; 34A13F/0104
        A_JSR       L_34A0F6                    ; 34A141/18F6A0
    ENDLOOP                                 ; 34A144/02
    A_JSR       L_34A0E9                    ; 34A145/18E9A0
    SETXVEL     #$FE00                      ; 34A148/B000FE
    SETPOSE     #$00, WAIT #5               ; 34A14B/5500
L_34A14D:
    ZEROVEL                                 ; 34A14D/38
    INCPOSE                                 ; 34A14E/70
    WAIT        #26                         ; 34A14F/061A
L_34A151:
    SETXVEL     #$FE00, WAIT #5             ; 34A151/B500FE
L_34A154:
    ZEROVEL                                 ; 34A154/38
    WAIT        #20                         ; 34A155/0614
L_34A157:
    INCPOSE     WAIT #8                     ; 34A157/78
L_34A158:
    INCPOSE     WAIT #2                     ; 34A158/72
L_34A159:
    INCPOSE     WAIT #2                     ; 34A159/72
L_34A15A:
    INCPOSE     WAIT #4                     ; 34A15A/74
L_34A15B:
    INCPOSE     WAIT #4                     ; 34A15B/74
L_34A15C:
    INCPOSE                                 ; 34A15C/70
    WAIT        #42                         ; 34A15D/062A
L_34A15F:
    A_JSR       L_34A0E9                    ; 34A15F/18E9A0
    WAIT        #32                         ; 34A162/0620
L_34A164:
    LOOP        #8                          ; 34A164/0108
        SETPOSE     #$00                        ; 34A166/5000
        SETXVEL     #$0200, WAIT #2             ; 34A168/B20002
L_34A16B:
        SETXVEL     #$FE00, WAIT #2             ; 34A16B/B200FE
L_34A16E:
    ENDLOOP                                 ; 34A16E/02
    ZEROVEL                                 ; 34A16F/38
    SETXVEL     #$0020, WAIT #4             ; 34A170/B42000
L_34A173:
    SETXVEL     #$0100, WAIT #4             ; 34A173/B40001
L_34A176:
    SETXVEL     #$0200, WAIT #4             ; 34A176/B40002
L_34A179:
    SETXVEL     #$0400, WAIT #4             ; 34A179/B40004
L_34A17C:
    WAIT        #2                          ; 34A17C/0602
L_34A17E:
    END                                     ; 34A17E/00

L_34A17F:
    SETXPOS     #$0088                      ; 34A17F/2A8800
    SETYPOS     #$0068                      ; 34A182/2B6800
    SPRITEMAP   $35849E                     ; 34A185/1A9E8435
    SETPOSE     #$04                        ; 34A189/5004
    SETXVEL     #$0140                      ; 34A18B/B04001
    SETYVEL     #$FA00, WAIT #9             ; 34A18E/C900FA
L_34A191:
    TASK        L_34A1BE                    ; 34A191/07BEA1
    SETYVEL     #$FC00, WAIT #6             ; 34A194/C600FC
L_34A197:
    SETYVEL     #$FE00, WAIT #6             ; 34A197/C600FE
L_34A19A:
    SETYVEL     #$FF00, WAIT #6             ; 34A19A/C600FF
L_34A19D:
    SETYVEL     #$0100, WAIT #6             ; 34A19D/C60001
L_34A1A0:
    SETYVEL     #$0200, WAIT #6             ; 34A1A0/C60002
L_34A1A3:
    SETXVEL     #$0100                      ; 34A1A3/B00001
    SETYVEL     #$0400, WAIT #6             ; 34A1A6/C60004
L_34A1A9:
    SETYVEL     #$0600, WAIT #12            ; 34A1A9/CC0006
L_34A1AC:
    INCPOSE     WAIT #6                     ; 34A1AC/76
L_34A1AD:
    INCPOSE     WAIT #5                     ; 34A1AD/75
L_34A1AE:
    SETPOSE     #$08                        ; 34A1AE/5008
    SETYVEL     #$0000                      ; 34A1B0/C00000
    LOOP        #5                          ; 34A1B3/0105
        SETXVEL     #$0100, WAIT #2             ; 34A1B5/B20001
L_34A1B8:
        SETXVEL     #$FF00, WAIT #2             ; 34A1B8/B200FF
L_34A1BB:
    ENDLOOP                                 ; 34A1BB/02
    ZEROVEL                                 ; 34A1BC/38
    HALT                                    ; 34A1BD/09

L_34A1BE:
    LOOP        #2                          ; 34A1BE/0102
        SETPOSE     #$05, WAIT #6               ; 34A1C0/5605
L_34A1C2:
        INCPOSE     WAIT #6                     ; 34A1C2/76
L_34A1C3:
        INCPOSE     WAIT #6                     ; 34A1C3/76
L_34A1C4:
        SETPOSE     #$04, WAIT #6               ; 34A1C4/5604
L_34A1C6:
    ENDLOOP                                 ; 34A1C6/02
    ENDTASK                                 ; 34A1C7/0C

L_34A1C8:
    MOV         REG,VAR1                    ; 34A1C8/1E01
    TABLEJMP    #9                          ; 34A1CA/0F09
    .word       L_34A02F                    ; 34A1CC/2FA0
    .word       L_34A1DE                    ; 34A1CE/DEA1
    .word       L_34A252                    ; 34A1D0/52A2
    .word       L_34A2B8                    ; 34A1D2/B8A2
    .word       L_34A2EB                    ; 34A1D4/EBA2
    .word       L_34A319                    ; 34A1D6/19A3
    .word       L_34A346                    ; 34A1D8/46A3
    .word       L_34A25F                    ; 34A1DA/5FA2
    .word       L_34A27F                    ; 34A1DC/7FA2
L_34A1DE:
    WAIT        #1                          ; 34A1DE/0601
L_34A1E0:
    LOOP        #4                          ; 34A1E0/0104
        ADD         VAR1,#1                     ; 34A1E2/13010201
        ASMCALL     $DE51                       ; 34A1E6/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
        .byte       $6C                         ; 34A1E9/6C
        .byte       $00                         ; 34A1EA/00
        .byte       $00                         ; 34A1EB/00
        .byte       $00                         ; 34A1EC/00
        .byte       $00                         ; 34A1ED/00
        .byte       $00                         ; 34A1EE/00
    ENDLOOP                                 ; 34A1EF/02
    MOV         VAR1,#$06                   ; 34A1F0/0D0106
    ASMCALL     $DE51                       ; 34A1F3/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A1F6/6C
    .byte       $00                         ; 34A1F7/00
    .byte       $00                         ; 34A1F8/00
    .byte       $00                         ; 34A1F9/00
    .byte       $00                         ; 34A1FA/00
    .byte       $00                         ; 34A1FB/00
    MOV         VAR4,REG                    ; 34A1FC/1D04
    WAIT        #1                          ; 34A1FE/0601
L_34A200:
    SETXPOS     #$0081                      ; 34A200/2A8100
    SETYPOS     #$0071                      ; 34A203/2B7100
    SETZPOS     #$0002                      ; 34A206/3A0200
    SPRITEMAP   $358226                     ; 34A209/1A268235
    SETPOSE     #$00, WAIT #8               ; 34A20D/5800
L_34A20F:
    ONTICK      $34A384                     ; 34A20F/0884A334
L_34A213:
    HALT                                    ; 34A213/09

L_34A214:
    MOV         VAR1,#$07                   ; 34A214/0D0107
    ASMCALL     $DE51                       ; 34A217/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A21A/6C
    .byte       $00                         ; 34A21B/00
    .byte       $00                         ; 34A21C/00
    .byte       $00                         ; 34A21D/00
    .byte       $00                         ; 34A21E/00
    .byte       $00                         ; 34A21F/00
    INCPOSE                                 ; 34A220/70
    SETYVEL     #$0200, WAIT #4             ; 34A221/C40002
L_34A224:
    ZEROVEL                                 ; 34A224/38
    WAIT        #32                         ; 34A225/0620
L_34A227:
    MOV         VAR1,#$08                   ; 34A227/0D0108
    ASMCALL     $DE51                       ; 34A22A/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A22D/6C
    .byte       $00                         ; 34A22E/00
    .byte       $00                         ; 34A22F/00
    .byte       $00                         ; 34A230/00
    .byte       $00                         ; 34A231/00
    .byte       $00                         ; 34A232/00
    LOOP        #2                          ; 34A233/0102
        SETPOSE     #$02                        ; 34A235/5002
        SETXVEL     #$FE00, WAIT #2             ; 34A237/B200FE
L_34A23A:
        SETXVEL     #$FF00, WAIT #2             ; 34A23A/B200FF
L_34A23D:
        ZEROVEL                                 ; 34A23D/38
        WAIT        #16                         ; 34A23E/0610
L_34A240:
        INCPOSE                                 ; 34A240/70
        SETXVEL     #$0200, WAIT #2             ; 34A241/B20002
L_34A244:
        SETXVEL     #$0100, WAIT #2             ; 34A244/B20001
L_34A247:
        ZEROVEL                                 ; 34A247/38
        WAIT        #16                         ; 34A248/0610
L_34A24A:
    ENDLOOP                                 ; 34A24A/02
    WAIT        #20                         ; 34A24B/0614
L_34A24D:
    MOV         $07D5,#$01                  ; 34A24D/11D50701
    HALT                                    ; 34A251/09

L_34A252:
    SETXPOS     #$0099                      ; 34A252/2A9900
    SETYPOS     #$0078                      ; 34A255/2B7800
    SPRITEMAP   $358226                     ; 34A258/1A268235
    SETPOSE     #$05                        ; 34A25C/5005
L_34A25E:
    HALT                                    ; 34A25E/09

L_34A25F:
    SETXPOS     #$0078                      ; 34A25F/2A7800
    SETYPOS     #$0070                      ; 34A262/2B7000
    SPRITEMAP   $358226                     ; 34A265/1A268235
    SETPOSE     #$04                        ; 34A269/5004
    SETXVEL     #$FFC0                      ; 34A26B/B0C0FF
    SETYVEL     #$FF00, WAIT #8             ; 34A26E/C800FF
L_34A271:
    SETYVEL     #$FF80, WAIT #8             ; 34A271/C880FF
L_34A274:
    SETYVEL     #$0080, WAIT #8             ; 34A274/C88000
L_34A277:
    SETYVEL     #$0100, WAIT #8             ; 34A277/C80001
L_34A27A:
    SETYVEL     #$0200, WAIT #8             ; 34A27A/C80002
L_34A27D:
    ZEROVEL                                 ; 34A27D/38
    HALT                                    ; 34A27E/09

L_34A27F:
    SETXPOS     #$007F                      ; 34A27F/2A7F00
    SETYPOS     #$0064                      ; 34A282/2B6400
    SPRITEMAP   $358226                     ; 34A285/1A268235
    LOOP        #20                         ; 34A289/0114
        ZEROVEL                                 ; 34A28B/38
        SETPOSE     #$06, WAIT #15              ; 34A28C/5F06
L_34A28E:
        SETPOSE     #$FF                        ; 34A28E/50FF
        SETXVEL     #$FF00                      ; 34A290/B000FF
        SETYVEL     #$0080, WAIT #8             ; 34A293/C88000
L_34A296:
        ZEROVEL                                 ; 34A296/38
        SETPOSE     #$06, WAIT #15              ; 34A297/5F06
L_34A299:
        SETPOSE     #$FF                        ; 34A299/50FF
        SETXVEL     #$0100                      ; 34A29B/B00001
        SETYVEL     #$FF80, WAIT #8             ; 34A29E/C880FF
L_34A2A1:
        ZEROVEL                                 ; 34A2A1/38
        SETPOSE     #$06, WAIT #15              ; 34A2A2/5F06
L_34A2A4:
        SETPOSE     #$FF                        ; 34A2A4/50FF
        SETXVEL     #$0100                      ; 34A2A6/B00001
        SETYVEL     #$0080, WAIT #8             ; 34A2A9/C88000
L_34A2AC:
        ZEROVEL                                 ; 34A2AC/38
        SETPOSE     #$06, WAIT #15              ; 34A2AD/5F06
L_34A2AF:
        SETPOSE     #$FF                        ; 34A2AF/50FF
        SETXVEL     #$FF00                      ; 34A2B1/B000FF
        SETYVEL     #$FF80, WAIT #8             ; 34A2B4/C880FF
L_34A2B7:
    ENDLOOP                                 ; 34A2B7/02
L_34A2B8:
    SETXPOS     #$007A                      ; 34A2B8/2A7A00
    SETYPOS     #$0064                      ; 34A2BB/2B6400
    MOV         VAR3,#$00                   ; 34A2BE/0D0300
    ZEROVEL                                 ; 34A2C1/38
    SETPOSE     #$FF                        ; 34A2C2/50FF
    WAIT        #32                         ; 34A2C4/0620
L_34A2C6:
    SPRITEMAP   $358234                     ; 34A2C6/1A348235
    SETPOSE     #$00, WAIT #15              ; 34A2CA/5F00
L_34A2CC:
    SETPOSE     #$FF                        ; 34A2CC/50FF
    SETXVEL     #$FF80                      ; 34A2CE/B080FF
    SETYVEL     #$FEC0, WAIT #8             ; 34A2D1/C8C0FE
L_34A2D4:
    ZEROVEL                                 ; 34A2D4/38
    SETPOSE     #$01, WAIT #15              ; 34A2D5/5F01
L_34A2D7:
    SETPOSE     #$FF                        ; 34A2D7/50FF
    SETXVEL     #$FF80                      ; 34A2D9/B080FF
    SETYVEL     #$FEC0, WAIT #8             ; 34A2DC/C8C0FE
L_34A2DF:
    ZEROVEL                                 ; 34A2DF/38
    SETPOSE     #$02, WAIT #8               ; 34A2E0/5802
L_34A2E2:
    INCPOSE     WAIT #15                    ; 34A2E2/7F
L_34A2E3:
    INCPOSE     WAIT #15                    ; 34A2E3/7F
L_34A2E4:
    MOV         VAR3,#$01                   ; 34A2E4/0D0301
    SETPOSE     #$0F, WAIT #7               ; 34A2E7/570F
L_34A2E9:
    INCPOSE     WAIT #7                     ; 34A2E9/77
L_34A2EA:
    END                                     ; 34A2EA/00

L_34A2EB:
    SETXPOS     #$008C                      ; 34A2EB/2A8C00
    SETYPOS     #$006A                      ; 34A2EE/2B6A00
    ZEROVEL                                 ; 34A2F1/38
    SETPOSE     #$FF                        ; 34A2F2/50FF
    WAIT        #104                        ; 34A2F4/0668
L_34A2F6:
    SPRITEMAP   $358234                     ; 34A2F6/1A348235
    SETPOSE     #$00, WAIT #15              ; 34A2FA/5F00
L_34A2FC:
    SETPOSE     #$FF                        ; 34A2FC/50FF
    SETXVEL     #$0140                      ; 34A2FE/B04001
    SETYVEL     #$FF80, WAIT #8             ; 34A301/C880FF
L_34A304:
    ZEROVEL                                 ; 34A304/38
    SETPOSE     #$01, WAIT #15              ; 34A305/5F01
L_34A307:
    SETPOSE     #$FF                        ; 34A307/50FF
    SETXVEL     #$0140                      ; 34A309/B04001
    SETYVEL     #$FF80, WAIT #8             ; 34A30C/C880FF
L_34A30F:
    ZEROVEL                                 ; 34A30F/38
    SETPOSE     #$02, WAIT #8               ; 34A310/5802
L_34A312:
    SETPOSE     #$05, WAIT #15              ; 34A312/5F05
L_34A314:
    INCPOSE     WAIT #15                    ; 34A314/7F
L_34A315:
    SETPOSE     #$0F, WAIT #7               ; 34A315/570F
L_34A317:
    INCPOSE     WAIT #7                     ; 34A317/77
L_34A318:
    END                                     ; 34A318/00

L_34A319:
    SETXPOS     #$0082                      ; 34A319/2A8200
    SETYPOS     #$0065                      ; 34A31C/2B6500
    SETPOSE     #$FF                        ; 34A31F/50FF
    WAIT        #160                        ; 34A321/06A0
L_34A323:
    SPRITEMAP   $358234                     ; 34A323/1A348235
    SETPOSE     #$00, WAIT #15              ; 34A327/5F00
L_34A329:
    SETPOSE     #$FF                        ; 34A329/50FF
    SETXVEL     #$0080                      ; 34A32B/B08000
    SETYVEL     #$FEC0, WAIT #8             ; 34A32E/C8C0FE
L_34A331:
    ZEROVEL                                 ; 34A331/38
    SETPOSE     #$01, WAIT #15              ; 34A332/5F01
L_34A334:
    SETPOSE     #$FF                        ; 34A334/50FF
    SETXVEL     #$0080                      ; 34A336/B08000
    SETYVEL     #$FEC0, WAIT #8             ; 34A339/C8C0FE
L_34A33C:
    ZEROVEL                                 ; 34A33C/38
    SETPOSE     #$02, WAIT #8               ; 34A33D/5802
L_34A33F:
    SETPOSE     #$07, WAIT #15              ; 34A33F/5F07
L_34A341:
    INCPOSE     WAIT #15                    ; 34A341/7F
L_34A342:
    SETPOSE     #$0F, WAIT #7               ; 34A342/570F
L_34A344:
    INCPOSE     WAIT #7                     ; 34A344/77
L_34A345:
    END                                     ; 34A345/00

L_34A346:
    MOV         VAR4,#$00                   ; 34A346/0D0400
    WAIT        #192                        ; 34A349/06C0
L_34A34B:
    SETXPOS     #$0079                      ; 34A34B/2A7900
    SETYPOS     #$006D                      ; 34A34E/2B6D00
    ZEROVEL                                 ; 34A351/38
    SPRITEMAP   $358234                     ; 34A352/1A348235
    SETPOSE     #$00, WAIT #15              ; 34A356/5F00
L_34A358:
    SETPOSE     #$FF                        ; 34A358/50FF
    SETXVEL     #$FF00                      ; 34A35A/B000FF
    SETYVEL     #$FF00, WAIT #8             ; 34A35D/C800FF
L_34A360:
    ZEROVEL                                 ; 34A360/38
    SETPOSE     #$01, WAIT #15              ; 34A361/5F01
L_34A363:
    SETPOSE     #$FF                        ; 34A363/50FF
    SETXVEL     #$FF00                      ; 34A365/B000FF
    SETYVEL     #$FF00, WAIT #8             ; 34A368/C800FF
L_34A36B:
    ZEROVEL                                 ; 34A36B/38
    SETPOSE     #$02, WAIT #8               ; 34A36C/5802
L_34A36E:
    ZEROVEL                                 ; 34A36E/38
    LOOP        #3                          ; 34A36F/0103
        SETPOSE     #$09, WAIT #7               ; 34A371/5709
L_34A373:
        INCPOSE     WAIT #7                     ; 34A373/77
L_34A374:
    ENDLOOP                                 ; 34A374/02
    INCPOSE     WAIT #3                     ; 34A375/73
L_34A376:
    INCPOSE     WAIT #3                     ; 34A376/73
L_34A377:
    INCPOSE     WAIT #3                     ; 34A377/73
L_34A378:
    MOV         VAR4,#$01                   ; 34A378/0D0401
    INCPOSE     WAIT #7                     ; 34A37B/77
L_34A37C:
    SETPOSE     #$0B, WAIT #15              ; 34A37C/5F0B
L_34A37E:
    WAIT        #7                          ; 34A37E/0607
L_34A380:
    SETPOSE     #$0F, WAIT #7               ; 34A380/570F
L_34A382:
    INCPOSE     WAIT #7                     ; 34A382/77
L_34A383:
    END                                     ; 34A383/00

; CODE OR DATA -- $34A384 .. $34A39D
incbinRange "../split/prg/bank34.bin", $0384, $039D

L_34A39D:
    MOV         REG,VAR1                    ; 34A39D/1E01
    TABLEJMP    #5                          ; 34A39F/0F05
    .word       L_34A02F                    ; 34A3A1/2FA0
    .word       L_34A3AB                    ; 34A3A3/ABA3
    .word       L_34A498                    ; 34A3A5/98A4
    .word       L_34A55B                    ; 34A3A7/5BA5
    .word       L_34A56F                    ; 34A3A9/6FA5
L_34A3AB:
    MOV         VAR1,#$00                   ; 34A3AB/0D0100
    ASMCALL     $DE51                       ; 34A3AE/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A3B1/6C
    .byte       $00                         ; 34A3B2/00
    .byte       $00                         ; 34A3B3/00
    .byte       $00                         ; 34A3B4/00
    .byte       $00                         ; 34A3B5/00
    .byte       $02                         ; 34A3B6/02
    ASMCALL     $AC8D                       ; 34A3B7/D08DAC
    SETXPOS     #$0058                      ; 34A3BA/2A5800
    SETYPOS     #$0088                      ; 34A3BD/2B8800
    SETZPOS     #$000A                      ; 34A3C0/3A0A00
    SPRITEMAP   $3593A5                     ; 34A3C3/1AA59335
    SETXVEL     #$0080                      ; 34A3C7/B08000
    SETPOSE     #$01, WAIT #8               ; 34A3CA/5801
L_34A3CC:
    DECPOSE     WAIT #10                    ; 34A3CC/8A
L_34A3CD:
    INCPOSE     WAIT #8                     ; 34A3CD/78
L_34A3CE:
    INCPOSE     WAIT #10                    ; 34A3CE/7A
L_34A3CF:
    DECPOSE     WAIT #8                     ; 34A3CF/88
L_34A3D0:
    SETXVEL     #$0000                      ; 34A3D0/B00000
    SETYVEL     #$FF00                      ; 34A3D3/C000FF
    SETPOSE     #$06, WAIT #2               ; 34A3D6/5206
L_34A3D8:
    SETYVEL     #$0100, WAIT #2             ; 34A3D8/C20001
L_34A3DB:
    SETYVEL     #$0000, WAIT #2             ; 34A3DB/C20000
L_34A3DE:
    SETXVEL     #$0080                      ; 34A3DE/B08000
    SETYVEL     #$FE00, WAIT #8             ; 34A3E1/C800FE
L_34A3E4:
    SETYVEL     #$FF00, WAIT #8             ; 34A3E4/C800FF
L_34A3E7:
    SETYVEL     #$FF80, WAIT #8             ; 34A3E7/C880FF
L_34A3EA:
    SETYVEL     #$0080, WAIT #8             ; 34A3EA/C88000
L_34A3ED:
    SETYVEL     #$0100, WAIT #8             ; 34A3ED/C80001
L_34A3F0:
    SETYVEL     #$0200, WAIT #8             ; 34A3F0/C80002
L_34A3F3:
    SETXVEL     #$0000, WAIT #5             ; 34A3F3/B50000
L_34A3F6:
    ZEROVEL                                 ; 34A3F6/38
    ASMCALL     $ACAB                       ; 34A3F7/D0ABAC
    SPRITEMAP   $358000                     ; 34A3FA/1A008035
    SETPOSE     #$00                        ; 34A3FE/5000
    WAIT        #48                         ; 34A400/0630
L_34A402:
    ADDYPOS     #1                          ; 34A402/2D0100
    LOOP        #23                         ; 34A405/0117
        SETPOSE     #$01, WAIT #2               ; 34A407/5201
L_34A409:
        INCPOSE     WAIT #2                     ; 34A409/72
L_34A40A:
    ENDLOOP                                 ; 34A40A/02
    SETPOSE     #$03                        ; 34A40B/5003
    WAIT        #16                         ; 34A40D/0610
L_34A40F:
    INCPOSE                                 ; 34A40F/70
    WAIT        #16                         ; 34A410/0610
L_34A412:
    LOOP        #19                         ; 34A412/0113
        SETPOSE     #$01, WAIT #2               ; 34A414/5201
L_34A416:
        INCPOSE     WAIT #2                     ; 34A416/72
L_34A417:
    ENDLOOP                                 ; 34A417/02
    SETPOSE     #$03, WAIT #8               ; 34A418/5803
L_34A41A:
    INCPOSE     WAIT #8                     ; 34A41A/78
L_34A41B:
    MOV         VAR1,#$00                   ; 34A41B/0D0100
    ASMCALL     $DE51                       ; 34A41E/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A421/6C
    .byte       $00                         ; 34A422/00
    .byte       $00                         ; 34A423/00
    .byte       $00                         ; 34A424/00
    .byte       $00                         ; 34A425/00
    .byte       $04                         ; 34A426/04
    ADDYPOS     #-11                        ; 34A427/2DF5FF
    ASMCALL     $AC8D                       ; 34A42A/D08DAC
    SETPOSE     #$05                        ; 34A42D/5005
    WAIT        #32                         ; 34A42F/0620
L_34A431:
    ASMCALL     $ACB1                       ; 34A431/D0B1AC
    SETPOSE     #$06                        ; 34A434/5006
    WAIT        #48                         ; 34A436/0630
L_34A438:
    INCPOSE     WAIT #7                     ; 34A438/77
L_34A439:
    WAIT        #22                         ; 34A439/0616
L_34A43B:
    SETPOSE     #$FF                        ; 34A43B/50FF
    TASK        L_34A452                    ; 34A43D/0752A4
    ASMCALL     $DED0                       ; 34A440/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 34A443/09
    .byte       $12                         ; 34A444/12
    .byte       $0D                         ; 34A445/0D
    .byte       $00                         ; 34A446/00
    .byte       $F8                         ; 34A447/F8
    .byte       $00                         ; 34A448/00
    .byte       $0E                         ; 34A449/0E
    .byte       $00                         ; 34A44A/00
    WAIT        #34                         ; 34A44B/0622
L_34A44D:
    MOV         $07D5,#$01                  ; 34A44D/11D50701
    HALT                                    ; 34A451/09

L_34A452:
    UNK37       #$02,#$00                   ; 34A452/370200
    WAIT        #2                          ; 34A455/0602
L_34A457:
    LOOP        #2                          ; 34A457/0102
        UNK36       #$02,#$00                   ; 34A459/360200
        UNK37       #$FC,#$FF                   ; 34A45C/37FCFF
        WAIT        #2                          ; 34A45F/0602
L_34A461:
        UNK36       #$FC,#$FF                   ; 34A461/36FCFF
        UNK37       #$04,#$00                   ; 34A464/370400
        WAIT        #2                          ; 34A467/0602
L_34A469:
        UNK36       #$04,#$00                   ; 34A469/360400
        UNK37       #$FE,#$FF                   ; 34A46C/37FEFF
        WAIT        #2                          ; 34A46F/0602
L_34A471:
        UNK36       #$FC,#$FF                   ; 34A471/36FCFF
        UNK37       #$00,#$00                   ; 34A474/370000
        WAIT        #2                          ; 34A477/0602
L_34A479:
        UNK36       #$04,#$00                   ; 34A479/360400
        UNK37       #$02,#$00                   ; 34A47C/370200
        WAIT        #2                          ; 34A47F/0602
L_34A481:
        UNK36       #$FC,#$FF                   ; 34A481/36FCFF
        UNK37       #$FC,#$FF                   ; 34A484/37FCFF
        WAIT        #2                          ; 34A487/0602
L_34A489:
        UNK36       #$02,#$00                   ; 34A489/360200
        UNK37       #$04,#$00                   ; 34A48C/370400
        WAIT        #2                          ; 34A48F/0602
L_34A491:
    ENDLOOP                                 ; 34A491/02
    UNK37       #$FE,#$FF                   ; 34A492/37FEFF
    WAIT        #2                          ; 34A495/0602
L_34A497:
    ENDTASK                                 ; 34A497/0C

L_34A498:
    SETXPOS     #$0030                      ; 34A498/2A3000
    SETYPOS     #$0069                      ; 34A49B/2B6900
    SETZPOS     #$0002                      ; 34A49E/3A0200
    SPRITEMAP   $358010                     ; 34A4A1/1A108035
    SETPOSE     #$FF                        ; 34A4A5/50FF
    WAIT        #16                         ; 34A4A7/0610
L_34A4A9:
    SETXVEL     #$0200                      ; 34A4A9/B00002
    SETYVEL     #$0100                      ; 34A4AC/C00001
    SETPOSE     #$03, WAIT #4               ; 34A4AF/5403
L_34A4B1:
    SETYVEL     #$0200, WAIT #12            ; 34A4B1/CC0002
L_34A4B4:
    SETYVEL     #$FF80                      ; 34A4B4/C080FF
    INCPOSE     WAIT #8                     ; 34A4B7/78
L_34A4B8:
    SETYVEL     #$FFE0                      ; 34A4B8/C0E0FF
    INCPOSE     WAIT #8                     ; 34A4BB/78
L_34A4BC:
    SETYVEL     #$0020                      ; 34A4BC/C02000
    INCPOSE     WAIT #8                     ; 34A4BF/78
L_34A4C0:
    SETYVEL     #$0080, WAIT #8             ; 34A4C0/C88000
L_34A4C3:
    SETYVEL     #$FF80                      ; 34A4C3/C080FF
    DECPOSE     WAIT #8                     ; 34A4C6/88
L_34A4C7:
    SETYVEL     #$FFE0                      ; 34A4C7/C0E0FF
    DECPOSE     WAIT #8                     ; 34A4CA/88
L_34A4CB:
    SETYVEL     #$0020                      ; 34A4CB/C02000
    DECPOSE     WAIT #8                     ; 34A4CE/88
L_34A4CF:
    SETYVEL     #$0080, WAIT #8             ; 34A4CF/C88000
L_34A4D2:
    ZEROVEL                                 ; 34A4D2/38
    SETPOSE     #$FF                        ; 34A4D3/50FF
    WAIT        #32                         ; 34A4D5/0620
L_34A4D7:
    LOOP        #2                          ; 34A4D7/0102
        SETXVEL     #$FF00                      ; 34A4D9/B000FF
        SETYVEL     #$FF80                      ; 34A4DC/C080FF
        SETPOSE     #$03, WAIT #8               ; 34A4DF/5803
L_34A4E1:
        SETYVEL     #$FFE0                      ; 34A4E1/C0E0FF
        INCPOSE     WAIT #8                     ; 34A4E4/78
L_34A4E5:
        SETYVEL     #$0020                      ; 34A4E5/C02000
        INCPOSE     WAIT #8                     ; 34A4E8/78
L_34A4E9:
        SETYVEL     #$0080                      ; 34A4E9/C08000
        INCPOSE     WAIT #8                     ; 34A4EC/78
L_34A4ED:
        SETYVEL     #$FF80, WAIT #8             ; 34A4ED/C880FF
L_34A4F0:
        SETYVEL     #$FFE0                      ; 34A4F0/C0E0FF
        DECPOSE     WAIT #8                     ; 34A4F3/88
L_34A4F4:
        SETYVEL     #$0020                      ; 34A4F4/C02000
        DECPOSE     WAIT #8                     ; 34A4F7/88
L_34A4F8:
        SETYVEL     #$0080                      ; 34A4F8/C08000
        DECPOSE     WAIT #8                     ; 34A4FB/88
L_34A4FC:
    ENDLOOP                                 ; 34A4FC/02
    SETXVEL     #$0000                      ; 34A4FD/B00000
    SETYVEL     #$FE00                      ; 34A500/C000FE
    SETPOSE     #$07, WAIT #4               ; 34A503/5407
L_34A505:
    SETYVEL     #$FEC0                      ; 34A505/C0C0FE
    INCPOSE     WAIT #4                     ; 34A508/74
L_34A509:
    SETYVEL     #$FF00                      ; 34A509/C000FF
    INCPOSE     WAIT #4                     ; 34A50C/74
L_34A50D:
    SETYVEL     #$FF40                      ; 34A50D/C040FF
    INCPOSE     WAIT #4                     ; 34A510/74
L_34A511:
    SETYVEL     #$FF80                      ; 34A511/C080FF
    INCPOSE     WAIT #4                     ; 34A514/74
L_34A515:
    SETYVEL     #$0000                      ; 34A515/C00000
    INCPOSE     WAIT #4                     ; 34A518/74
L_34A519:
    LOOP        #5                          ; 34A519/0105
        SETPOSE     #$0D, WAIT #2               ; 34A51B/520D
L_34A51D:
        INCPOSE     WAIT #2                     ; 34A51D/72
L_34A51E:
    ENDLOOP                                 ; 34A51E/02
    SETYVEL     #$0080                      ; 34A51F/C08000
    SETPOSE     #$0B, WAIT #1               ; 34A522/510B
L_34A524:
    DECPOSE     WAIT #1                     ; 34A524/81
L_34A525:
    MOV         VAR1,#$00                   ; 34A525/0D0100
    ASMCALL     $DE51                       ; 34A528/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A52B/6C
    .byte       $00                         ; 34A52C/00
    .byte       $00                         ; 34A52D/00
    .byte       $00                         ; 34A52E/00
    .byte       $00                         ; 34A52F/00
    .byte       $03                         ; 34A530/03
    SETPOSE     #$11, WAIT #1               ; 34A531/5111
L_34A533:
    SETYVEL     #$00C0                      ; 34A533/C0C000
    DECPOSE     WAIT #1                     ; 34A536/81
L_34A537:
    DECPOSE     WAIT #3                     ; 34A537/83
L_34A538:
    SETYVEL     #$0100, WAIT #4             ; 34A538/C40001
L_34A53B:
    SETYVEL     #$0140, WAIT #4             ; 34A53B/C44001
L_34A53E:
    SETYVEL     #$0200, WAIT #4             ; 34A53E/C40002
L_34A541:
    SETYVEL     #$0000                      ; 34A541/C00000
    WAIT        #16                         ; 34A544/0610
L_34A546:
    SETXVEL     #$FF00                      ; 34A546/B000FF
    SETYVEL     #$FE00                      ; 34A549/C000FE
    SETPOSE     #$03, WAIT #8               ; 34A54C/5803
L_34A54E:
    SETYVEL     #$FF00                      ; 34A54E/C000FF
    INCPOSE     WAIT #8                     ; 34A551/78
L_34A552:
    SETYVEL     #$FF80                      ; 34A552/C080FF
    INCPOSE     WAIT #8                     ; 34A555/78
L_34A556:
    SETYVEL     #$FFE0                      ; 34A556/C0E0FF
    INCPOSE     WAIT #8                     ; 34A559/78
L_34A55A:
    END                                     ; 34A55A/00

L_34A55B:
    SETXPOS     #$0060                      ; 34A55B/2A6000
    SETYPOS     #$0070                      ; 34A55E/2B7000
    SPRITEMAP   $358010                     ; 34A561/1A108035
    SETXVEL     #$0100                      ; 34A565/B00001
    SETYVEL     #$FA00                      ; 34A568/C000FA
    SETPOSE     #$01, WAIT #4               ; 34A56B/5401
L_34A56D:
    INCPOSE     WAIT #5                     ; 34A56D/75
L_34A56E:
    END                                     ; 34A56E/00

L_34A56F:
    SETXPOS     #$0084                      ; 34A56F/2A8400
    SETYPOS     #$0040                      ; 34A572/2B4000
    SPRITEMAP   $358010                     ; 34A575/1A108035
    SETYVEL     #$0200                      ; 34A579/C00002
    SETPOSE     #$00, WAIT #4               ; 34A57C/5400
L_34A57E:
    INC2POSE    WAIT #4                     ; 34A57E/94
L_34A57F:
    DECPOSE     WAIT #4                     ; 34A57F/84
L_34A580:
    SETYVEL     #$0400                      ; 34A580/C00004
    SETPOSE     #$00, WAIT #4               ; 34A583/5400
L_34A585:
    INC2POSE    WAIT #4                     ; 34A585/94
L_34A586:
    ZEROVEL                                 ; 34A586/38
    DECPOSE     WAIT #4                     ; 34A587/84
L_34A588:
    SETPOSE     #$00, WAIT #4               ; 34A588/5400
L_34A58A:
    INC2POSE    WAIT #4                     ; 34A58A/94
L_34A58B:
    SPRITEMAP   $358034                     ; 34A58B/1A348035
    LOOP        #6                          ; 34A58F/0106
        SETPOSE     #$00, WAIT #4               ; 34A591/5400
L_34A593:
        INC2POSE    WAIT #4                     ; 34A593/94
L_34A594:
        DECPOSE     WAIT #4                     ; 34A594/84
L_34A595:
    ENDLOOP                                 ; 34A595/02
    SETPOSE     #$00, WAIT #4               ; 34A596/5400
L_34A598:
    END                                     ; 34A598/00

L_34A599:
    MOV         REG,VAR1                    ; 34A599/1E01
    TABLEJMP    #6                          ; 34A59B/0F06
    .word       L_34A02F                    ; 34A59D/2FA0
    .word       L_34A5A9                    ; 34A59F/A9A5
    .word       L_34A656                    ; 34A5A1/56A6
    .word       L_34A69C                    ; 34A5A3/9CA6
    .word       L_34A69C                    ; 34A5A5/9CA6
    .word       L_34A6CF                    ; 34A5A7/CFA6
L_34A5A9:
    MOV         VAR1,#$00                   ; 34A5A9/0D0100
    MOV         VAR3,#$00                   ; 34A5AC/0D0300
    SETXPOS     #$0048                      ; 34A5AF/2A4800
    SETYPOS     #$0098                      ; 34A5B2/2B9800
    SPRITEMAP   $3585AD                     ; 34A5B5/1AAD8535
    LOOP        #2                          ; 34A5B9/0102
        SETXVEL     #$0040                      ; 34A5BB/B04000
        SETYVEL     #$FE00                      ; 34A5BE/C000FE
        SETPOSE     #$00, WAIT #8               ; 34A5C1/5800
L_34A5C3:
        SETYVEL     #$FF00, WAIT #8             ; 34A5C3/C800FF
L_34A5C6:
        SETYVEL     #$FF80, WAIT #8             ; 34A5C6/C880FF
L_34A5C9:
        SETYVEL     #$FFE0, WAIT #8             ; 34A5C9/C8E0FF
L_34A5CC:
        SETYVEL     #$0000, WAIT #8             ; 34A5CC/C80000
L_34A5CF:
        INCPOSE                                 ; 34A5CF/70
        SETYVEL     #$0020, WAIT #8             ; 34A5D0/C82000
L_34A5D3:
        SETYVEL     #$00C0                      ; 34A5D3/C0C000
        WAIT        #36                         ; 34A5D6/0624
L_34A5D8:
        INCPOSE                                 ; 34A5D8/70
        SETXVEL     #$0000                      ; 34A5D9/B00000
        SETYVEL     #$0080, WAIT #4             ; 34A5DC/C48000
L_34A5DF:
        SETYVEL     #$0020, WAIT #4             ; 34A5DF/C42000
L_34A5E2:
        SETYVEL     #$FFE0, WAIT #4             ; 34A5E2/C4E0FF
L_34A5E5:
        SETYVEL     #$FF80, WAIT #4             ; 34A5E5/C480FF
L_34A5E8:
        ZEROVEL                                 ; 34A5E8/38
        WAIT        #16                         ; 34A5E9/0610
L_34A5EB:
    ENDLOOP                                 ; 34A5EB/02
    ASMCALL     $DE51                       ; 34A5EC/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A5EF/6C
    .byte       $00                         ; 34A5F0/00
    .byte       $00                         ; 34A5F1/00
    .byte       $00                         ; 34A5F2/00
    .byte       $00                         ; 34A5F3/00
    .byte       $02                         ; 34A5F4/02
    SETPOSE     #$03                        ; 34A5F5/5003
    WAIT        #51                         ; 34A5F7/0633
L_34A5F9:
    ASMCALL     $DE51                       ; 34A5F9/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A5FC/6C
    .byte       $00                         ; 34A5FD/00
    .byte       $00                         ; 34A5FE/00
    .byte       $00                         ; 34A5FF/00
    .byte       $00                         ; 34A600/00
    .byte       $03                         ; 34A601/03
    ASMCALL     $DE51                       ; 34A602/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A605/6C
    .byte       $00                         ; 34A606/00
    .byte       $00                         ; 34A607/00
    .byte       $00                         ; 34A608/00
    .byte       $01                         ; 34A609/01
    .byte       $04                         ; 34A60A/04
    INCPOSE                                 ; 34A60B/70
    SETXVEL     #$0080                      ; 34A60C/B08000
    SETYVEL     #$FE00, WAIT #8             ; 34A60F/C800FE
L_34A612:
    SETYVEL     #$FF00, WAIT #8             ; 34A612/C800FF
L_34A615:
    SETYVEL     #$FF80, WAIT #8             ; 34A615/C880FF
L_34A618:
    INCPOSE                                 ; 34A618/70
    SETYVEL     #$0080, WAIT #8             ; 34A619/C88000
L_34A61C:
    SETYVEL     #$0100, WAIT #8             ; 34A61C/C80001
L_34A61F:
    SETYVEL     #$0200, WAIT #8             ; 34A61F/C80002
L_34A622:
    ASMCALL     $DE51                       ; 34A622/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A625/6C
    .byte       $00                         ; 34A626/00
    .byte       $00                         ; 34A627/00
    .byte       $00                         ; 34A628/00
    .byte       $00                         ; 34A629/00
    .byte       $05                         ; 34A62A/05
    INCPOSE                                 ; 34A62B/70
    SETXVEL     #$0040                      ; 34A62C/B04000
    SETYVEL     #$0000                      ; 34A62F/C00000
    WAIT        #42                         ; 34A632/062A
L_34A634:
    LOOP        #5                          ; 34A634/0105
        SETPOSE     #$07, WAIT #5               ; 34A636/5507
L_34A638:
        INCPOSE     WAIT #5                     ; 34A638/75
L_34A639:
    ENDLOOP                                 ; 34A639/02
    MOV         VAR3,#$01                   ; 34A63A/0D0301
    SETPOSE     #$09                        ; 34A63D/5009
    SETYVEL     #$FE00, WAIT #8             ; 34A63F/C800FE
L_34A642:
    SETYVEL     #$FF00, WAIT #8             ; 34A642/C800FF
L_34A645:
    SETYVEL     #$FF80, WAIT #8             ; 34A645/C880FF
L_34A648:
    INCPOSE                                 ; 34A648/70
    SETYVEL     #$0080, WAIT #8             ; 34A649/C88000
L_34A64C:
    INCPOSE                                 ; 34A64C/70
    SETYVEL     #$0100, WAIT #8             ; 34A64D/C80001
L_34A650:
    SETYVEL     #$0200, WAIT #8             ; 34A650/C80002
L_34A653:
    INCPOSE     WAIT #3                     ; 34A653/73
L_34A654:
    ZEROVEL                                 ; 34A654/38
    HALT                                    ; 34A655/09

L_34A656:
    SETXPOS     #$0071                      ; 34A656/2A7100
    SETYPOS     #$0096                      ; 34A659/2B9600
    SPRITEMAP   $3585AD                     ; 34A65C/1AAD8535
    SETPOSE     #$11                        ; 34A660/5011
    SETXVEL     #$0008                      ; 34A662/B00800
    SETYVEL     #$FFE0                      ; 34A665/C0E0FF
    WAIT        #16                         ; 34A668/0610
L_34A66A:
    SETYVEL     #$FFC0                      ; 34A66A/C0C0FF
    WAIT        #16                         ; 34A66D/0610
L_34A66F:
    SETXVEL     #$0020                      ; 34A66F/B02000
    SETYVEL     #$FF80                      ; 34A672/C080FF
    WAIT        #42                         ; 34A675/062A
L_34A677:
    ZEROVEL                                 ; 34A677/38
    SETPOSE     #$FF                        ; 34A678/50FF
L_34A67A:
    ASMCALL     $ACC2                       ; 34A67A/D0C2AC
    JNE         L_34A685                    ; 34A67D/0B85A6
    WAIT        #1                          ; 34A680/0601
L_34A682:
    A_JMP       L_34A67A                    ; 34A682/177AA6

L_34A685:
    SETXPOS     #$00AA                      ; 34A685/2AAA00
    SETYPOS     #$0077                      ; 34A688/2B7700
    SETPOSE     #$0E                        ; 34A68B/500E
    SETXVEL     #$0080                      ; 34A68D/B08000
    SETYVEL     #$FEC0                      ; 34A690/C0C0FE
    WAIT        #70                         ; 34A693/0646
L_34A695:
    WAIT        #38                         ; 34A695/0626
L_34A697:
    MOV         $07D5,#$01                  ; 34A697/11D50701
    HALT                                    ; 34A69B/09

L_34A69C:
    SETXPOS     #$0068                      ; 34A69C/2A6800
    SETYPOS     #$0080                      ; 34A69F/2B8000
    SPRITEMAP   $3585AD                     ; 34A6A2/1AAD8535
    SETPOSE     #$0D                        ; 34A6A6/500D
    SETXVEL     #$FF80                      ; 34A6A8/B080FF
    MOV         REG,VAR0                    ; 34A6AB/1E00
    JEQ         L_34A6B3                    ; 34A6AD/0AB3A6
    SETXVEL     #$FFE0                      ; 34A6B0/B0E0FF
L_34A6B3:
    SETYVEL     #$0020                      ; 34A6B3/C02000
    WAIT        #32                         ; 34A6B6/0620
L_34A6B8:
    SETYVEL     #$FFE0                      ; 34A6B8/C0E0FF
    WAIT        #32                         ; 34A6BB/0620
L_34A6BD:
    SETYVEL     #$FF80                      ; 34A6BD/C080FF
    WAIT        #32                         ; 34A6C0/0620
L_34A6C2:
    SETYVEL     #$FF00                      ; 34A6C2/C000FF
    WAIT        #32                         ; 34A6C5/0620
L_34A6C7:
    SETYVEL     #$FEC0                      ; 34A6C7/C0C0FE
    WAIT        #32                         ; 34A6CA/0620
L_34A6CC:
    WAIT        #32                         ; 34A6CC/0620
L_34A6CE:
    END                                     ; 34A6CE/00

L_34A6CF:
    SETXPOS     #$0085                      ; 34A6CF/2A8500
    SETYPOS     #$009E                      ; 34A6D2/2B9E00
    SPRITEMAP   $3585AD                     ; 34A6D5/1AAD8535
    LOOP        #6                          ; 34A6D9/0106
        SETPOSE     #$0F                        ; 34A6DB/500F
        SETXVEL     #$FE00                      ; 34A6DD/B000FE
        SETYVEL     #$FFE0, WAIT #4             ; 34A6E0/C4E0FF
L_34A6E3:
        INCPOSE                                 ; 34A6E3/70
        SETXVEL     #$FF00, WAIT #2             ; 34A6E4/B200FF
L_34A6E7:
        SETXVEL     #$FF80, WAIT #2             ; 34A6E7/B280FF
L_34A6EA:
        SETPOSE     #$FF                        ; 34A6EA/50FF
        SETXVEL     #$0080                      ; 34A6EC/B08000
        SETYVEL     #$0020, WAIT #2             ; 34A6EF/C22000
L_34A6F2:
        SETXVEL     #$0100, WAIT #2             ; 34A6F2/B20001
L_34A6F5:
        SETXVEL     #$0200, WAIT #4             ; 34A6F5/B40002
L_34A6F8:
        SETYVEL     #$0000, WAIT #2             ; 34A6F8/C20000
L_34A6FB:
    ENDLOOP                                 ; 34A6FB/02
    END                                     ; 34A6FC/00

L_34A6FD:
    MOV         REG,VAR1                    ; 34A6FD/1E01
    TABLEJMP    #3                          ; 34A6FF/0F03
    .word       L_34A02F                    ; 34A701/2FA0
    .word       L_34A707                    ; 34A703/07A7
    .word       L_34A79F                    ; 34A705/9FA7
L_34A707:
    MOV         VAR3,#$00                   ; 34A707/0D0300
    MOV         VAR1,#$00                   ; 34A70A/0D0100
    SETXPOS     #$0035                      ; 34A70D/2A3500
    SETYPOS     #$00A4                      ; 34A710/2BA400
    WAIT        #1                          ; 34A713/0601
L_34A715:
    ASMCALL     $DE51                       ; 34A715/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A718/6C
    .byte       $00                         ; 34A719/00
    .byte       $00                         ; 34A71A/00
    .byte       $00                         ; 34A71B/00
    .byte       $00                         ; 34A71C/00
    .byte       $02                         ; 34A71D/02
    MOV         VAR2,REG                    ; 34A71E/1D02
    SPRITEMAP   $3593ED                     ; 34A720/1AED9335
    LOOP        #10                         ; 34A724/010A
        SETXVEL     #$0030                      ; 34A726/B03000
        SETYVEL     #$FFD0                      ; 34A729/C0D0FF
        SETPOSE     #$00, WAIT #8               ; 34A72C/5800
L_34A72E:
        INCPOSE     WAIT #8                     ; 34A72E/78
L_34A72F:
        INCPOSE     WAIT #8                     ; 34A72F/78
L_34A730:
        DECPOSE     WAIT #8                     ; 34A730/88
L_34A731:
    ENDLOOP                                 ; 34A731/02
    ASMCALL     $AC8D                       ; 34A732/D08DAC
    SPRITEMAP   $3593A5                     ; 34A735/1AA59335
    SETXVEL     #$0080                      ; 34A739/B08000
    SETYVEL     #$FE00                      ; 34A73C/C000FE
    SETPOSE     #$12, WAIT #8               ; 34A73F/5812
L_34A741:
    SETYVEL     #$FF00                      ; 34A741/C000FF
    SETPOSE     #$06, WAIT #8               ; 34A744/5806
L_34A746:
    SETYVEL     #$0100                      ; 34A746/C00001
    DECPOSE     WAIT #8                     ; 34A749/88
L_34A74A:
    SETYVEL     #$0200                      ; 34A74A/C00002
    SETPOSE     #$17, WAIT #8               ; 34A74D/5817
L_34A74F:
    ASMCALL     $ACB7                       ; 34A74F/D0B7AC
    ZEROVEL                                 ; 34A752/38
    SETPOSE     #$18, WAIT #8               ; 34A753/5818
L_34A755:
    SETPOSE     #$14, WAIT #3               ; 34A755/5314
L_34A757:
    SETPOSE     #$09                        ; 34A757/5009
    WAIT        #26                         ; 34A759/061A
L_34A75B:
    SPRITEMAP   $35872F                     ; 34A75B/1A2F8735
    SETPOSE     #$00                        ; 34A75F/5000
    WAIT        #26                         ; 34A761/061A
L_34A763:
    INCPOSE     WAIT #3                     ; 34A763/73
L_34A764:
    INCPOSE     WAIT #3                     ; 34A764/73
L_34A765:
    INCPOSE     WAIT #3                     ; 34A765/73
L_34A766:
    MOV         VAR3,#$01                   ; 34A766/0D0301
    INCPOSE                                 ; 34A769/70
    WAIT        #26                         ; 34A76A/061A
L_34A76C:
    SETPOSE     #$05                        ; 34A76C/5005
    WAIT        #51                         ; 34A76E/0633
L_34A770:
    SPRITEMAP   $3593A5                     ; 34A770/1AA59335
    SETXVEL     #$0100                      ; 34A774/B00001
    SETPOSE     #$02, WAIT #6               ; 34A777/5602
L_34A779:
    SETPOSE     #$06, WAIT #6               ; 34A779/5606
L_34A77B:
    LOOP        #3                          ; 34A77B/0103
        SETPOSE     #$1A                        ; 34A77D/501A
        SETYVEL     #$FF80, WAIT #4             ; 34A77F/C480FF
L_34A782:
        INCPOSE                                 ; 34A782/70
        SETYVEL     #$0080, WAIT #4             ; 34A783/C48000
L_34A786:
        INCPOSE                                 ; 34A786/70
        SETYVEL     #$0100, WAIT #4             ; 34A787/C40001
L_34A78A:
        SETPOSE     #$17                        ; 34A78A/5017
        SETYVEL     #$0140, WAIT #4             ; 34A78C/C44001
L_34A78F:
        SETPOSE     #$1A                        ; 34A78F/501A
        SETYVEL     #$0200, WAIT #6             ; 34A791/C60002
L_34A794:
    ENDLOOP                                 ; 34A794/02
    SETPOSE     #$FF                        ; 34A795/50FF
    ZEROVEL                                 ; 34A797/38
    WAIT        #12                         ; 34A798/060C
L_34A79A:
    MOV         $07D5,#$01                  ; 34A79A/11D50701
    HALT                                    ; 34A79E/09

L_34A79F:
    SETXPOS     #$0080                      ; 34A79F/2A8000
    SETYPOS     #$0068                      ; 34A7A2/2B6800
    SPRITEMAP   $35872F                     ; 34A7A5/1A2F8735
    SETPOSE     #$06                        ; 34A7A9/5006
L_34A7AB:
    ASMCALL     $ACC2, WAIT #1              ; 34A7AB/D1C2AC
L_34A7AE:
    JNE         L_34A7B4                    ; 34A7AE/0BB4A7
    A_JMP       L_34A7AB                    ; 34A7B1/17ABA7

L_34A7B4:
    SETXPOS     #$0085                      ; 34A7B4/2A8500
    SETYPOS     #$0058                      ; 34A7B7/2B5800
    SETXVEL     #$0020                      ; 34A7BA/B02000
    SETYVEL     #$0020                      ; 34A7BD/C02000
    SETPOSE     #$06                        ; 34A7C0/5006
    WAIT        #16                         ; 34A7C2/0610
L_34A7C4:
    SETXVEL     #$0040                      ; 34A7C4/B04000
    SETYVEL     #$0040                      ; 34A7C7/C04000
    INCPOSE                                 ; 34A7CA/70
    WAIT        #16                         ; 34A7CB/0610
L_34A7CD:
    SETXVEL     #$0080                      ; 34A7CD/B08000
    SETYVEL     #$0080                      ; 34A7D0/C08000
    INCPOSE                                 ; 34A7D3/70
    WAIT        #16                         ; 34A7D4/0610
L_34A7D6:
    SETYVEL     #$0140                      ; 34A7D6/C04001
    INCPOSE                                 ; 34A7D9/70
    WAIT        #16                         ; 34A7DA/0610
L_34A7DC:
    LOOP        #5                          ; 34A7DC/0105
        SETXVEL     #$0100                      ; 34A7DE/B00001
        SETYVEL     #$FF80                      ; 34A7E1/C080FF
        SETPOSE     #$06, WAIT #2               ; 34A7E4/5206
L_34A7E6:
        SETXVEL     #$0140                      ; 34A7E6/B04001
        SETYVEL     #$0080                      ; 34A7E9/C08000
        INCPOSE     WAIT #2                     ; 34A7EC/72
L_34A7ED:
        SETXVEL     #$0100                      ; 34A7ED/B00001
        SETYVEL     #$0100                      ; 34A7F0/C00001
        INCPOSE     WAIT #2                     ; 34A7F3/72
L_34A7F4:
        SETYVEL     #$0140                      ; 34A7F4/C04001
        INCPOSE     WAIT #2                     ; 34A7F7/72
L_34A7F8:
        SETYVEL     #$0200                      ; 34A7F8/C00002
        SETPOSE     #$06, WAIT #2               ; 34A7FB/5206
L_34A7FD:
    ENDLOOP                                 ; 34A7FD/02
    END                                     ; 34A7FE/00

L_34A7FF:
    MOV         REG,VAR1                    ; 34A7FF/1E01
    TABLEJMP    #4                          ; 34A801/0F04
    .word       L_34A02F                    ; 34A803/2FA0
    .word       L_34A80B                    ; 34A805/0BA8
    .word       L_34A8A6                    ; 34A807/A6A8
    .word       L_34A8DF                    ; 34A809/DFA8
L_34A80B:
    MOV         VAR1,#$00                   ; 34A80B/0D0100
    SETXPOS     #$00A8                      ; 34A80E/2AA800
    SETYPOS     #$0068                      ; 34A811/2B6800
    SPRITEMAP   $3587B0                     ; 34A814/1AB08735
    SETPOSE     #$00, WAIT #15              ; 34A818/5F00
L_34A81A:
    INCPOSE     WAIT #15                    ; 34A81A/7F
L_34A81B:
    INCPOSE     WAIT #2                     ; 34A81B/72
L_34A81C:
    INCPOSE     WAIT #2                     ; 34A81C/72
L_34A81D:
    INCPOSE     WAIT #15                    ; 34A81D/7F
L_34A81E:
    INCPOSE     WAIT #15                    ; 34A81E/7F
L_34A81F:
    SETXVEL     #$FF00                      ; 34A81F/B000FF
    INCPOSE     WAIT #4                     ; 34A822/74
L_34A823:
    INCPOSE     WAIT #4                     ; 34A823/74
L_34A824:
    ZEROVEL                                 ; 34A824/38
    SETPOSE     #$06, WAIT #15              ; 34A825/5F06
L_34A827:
    INCPOSE     WAIT #6                     ; 34A827/76
L_34A828:
    DECPOSE     WAIT #10                    ; 34A828/8A
L_34A829:
    INCPOSE     WAIT #6                     ; 34A829/76
L_34A82A:
    ASMCALL     $DE51                       ; 34A82A/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A82D/6C
    .byte       $00                         ; 34A82E/00
    .byte       $00                         ; 34A82F/00
    .byte       $00                         ; 34A830/00
    .byte       $00                         ; 34A831/00
    .byte       $02                         ; 34A832/02
    MOV         VAR3,REG                    ; 34A833/1D03
    SETXVEL     #$FFC0                      ; 34A835/B0C0FF
    INCPOSE     WAIT #10                    ; 34A838/7A
L_34A839:
    SETXVEL     #$FF00                      ; 34A839/B000FF
    SETYVEL     #$0080                      ; 34A83C/C08000
    INCPOSE     WAIT #6                     ; 34A83F/76
L_34A840:
    SETXVEL     #$FF80                      ; 34A840/B080FF
    SETYVEL     #$0100, WAIT #6             ; 34A843/C60001
L_34A846:
    SETYVEL     #$0140, WAIT #7             ; 34A846/C74001
L_34A849:
    SETYVEL     #$0200, WAIT #12            ; 34A849/CC0002
L_34A84C:
    SETYVEL     #$0300                      ; 34A84C/C00003
    INCPOSE     WAIT #4                     ; 34A84F/74
L_34A850:
    ZEROVEL                                 ; 34A850/38
    SPRITEMAP   $358924                     ; 34A851/1A248935
    SETPOSE     #$00, WAIT #4               ; 34A855/5400
L_34A857:
    INCPOSE     WAIT #8                     ; 34A857/78
L_34A858:
    DECPOSE     WAIT #4                     ; 34A858/84
L_34A859:
    ASMCALL     $A902                       ; 34A859/D002A9
    SPRITEMAP   $358896                     ; 34A85C/1A968835
    SETPOSE     #$00, WAIT #8               ; 34A860/5800
L_34A862:
    INCPOSE     WAIT #8                     ; 34A862/78
L_34A863:
    DECPOSE     WAIT #8                     ; 34A863/88
L_34A864:
    ASMCALL     $DE51                       ; 34A864/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A867/6C
    .byte       $00                         ; 34A868/00
    .byte       $00                         ; 34A869/00
    .byte       $00                         ; 34A86A/00
    .byte       $00                         ; 34A86B/00
    .byte       $03                         ; 34A86C/03
    LOOP        #14                         ; 34A86D/010E
        SETXVEL     #$0100                      ; 34A86F/B00001
        SETPOSE     #$02, WAIT #1               ; 34A872/5102
L_34A874:
        SETXVEL     #$FD00, WAIT #1             ; 34A874/B100FD
L_34A877:
    ENDLOOP                                 ; 34A877/02
    ZEROVEL                                 ; 34A878/38
    WAIT        #16                         ; 34A879/0610
L_34A87B:
    LOOP        #4                          ; 34A87B/0104
        SETXVEL     #$FE00                      ; 34A87D/B000FE
        SETPOSE     #$03, WAIT #3               ; 34A880/5303
L_34A882:
        INCPOSE     WAIT #3                     ; 34A882/73
L_34A883:
    ENDLOOP                                 ; 34A883/02
    SETPOSE     #$FF                        ; 34A884/50FF
    WAIT        #45                         ; 34A886/062D
L_34A888:
    SETXPOS     #$0038                      ; 34A888/2A3800
    SETYPOS     #$0088                      ; 34A88B/2B8800
    SPRITEMAP   $358896                     ; 34A88E/1A968835
    SETXVEL     #$0040                      ; 34A892/B04000
    LOOP        #28                         ; 34A895/011C
        ASMCALL     $A902                       ; 34A897/D002A9
        SETPOSE     #$08, WAIT #3               ; 34A89A/5308
L_34A89C:
        ASMCALL     $A90B                       ; 34A89C/D00BA9
        INCPOSE     WAIT #3                     ; 34A89F/73
L_34A8A0:
    ENDLOOP                                 ; 34A8A0/02
    MOV         $07D5,#$01                  ; 34A8A1/11D50701
    HALT                                    ; 34A8A5/09

L_34A8A6:
    SETXPOS     #$00A4                      ; 34A8A6/2AA400
    SETYPOS     #$0064                      ; 34A8A9/2B6400
    SPRITEMAP   $3587B0                     ; 34A8AC/1AB08735
    SETXVEL     #$0080                      ; 34A8B0/B08000
    SETYVEL     #$FE00                      ; 34A8B3/C000FE
    SETPOSE     #$0C, WAIT #8               ; 34A8B6/580C
L_34A8B8:
    SETYVEL     #$FF00, WAIT #8             ; 34A8B8/C800FF
L_34A8BB:
    SETYVEL     #$FF80, WAIT #8             ; 34A8BB/C880FF
L_34A8BE:
    SETYVEL     #$FFE0, WAIT #8             ; 34A8BE/C8E0FF
L_34A8C1:
    SETYVEL     #$0020, WAIT #8             ; 34A8C1/C82000
L_34A8C4:
    SETYVEL     #$0080, WAIT #8             ; 34A8C4/C88000
L_34A8C7:
    SETYVEL     #$0100, WAIT #8             ; 34A8C7/C80001
L_34A8CA:
    SETYVEL     #$0200, WAIT #8             ; 34A8CA/C80002
L_34A8CD:
    SETYVEL     #$0400, WAIT #6             ; 34A8CD/C60004
L_34A8D0:
    ZEROVEL                                 ; 34A8D0/38
    SETYVEL     #$FF00, WAIT #4             ; 34A8D1/C400FF
L_34A8D4:
    SETYVEL     #$FF80, WAIT #4             ; 34A8D4/C480FF
L_34A8D7:
    SETYVEL     #$0080, WAIT #4             ; 34A8D7/C48000
L_34A8DA:
    SETYVEL     #$0100, WAIT #4             ; 34A8DA/C40001
L_34A8DD:
    ZEROVEL                                 ; 34A8DD/38
L_34A8DE:
    HALT                                    ; 34A8DE/09

L_34A8DF:
    SETXPOS     #$00A7                      ; 34A8DF/2AA700
    SETYPOS     #$009B                      ; 34A8E2/2B9B00
    SPRITEMAP   $358896                     ; 34A8E5/1A968835
    SETPOSE     #$05                        ; 34A8E9/5005
    SETXVEL     #$FE00, WAIT #8             ; 34A8EB/B800FE
L_34A8EE:
    SETXVEL     #$FF00, WAIT #8             ; 34A8EE/B800FF
L_34A8F1:
    SETXVEL     #$FF80, WAIT #8             ; 34A8F1/B880FF
L_34A8F4:
    ZEROVEL                                 ; 34A8F4/38
    WAIT        #12                         ; 34A8F5/060C
L_34A8F7:
    SETXVEL     #$FE00                      ; 34A8F7/B000FE
    LOOP        #7                          ; 34A8FA/0107
        SETPOSE     #$05, WAIT #3               ; 34A8FC/5305
L_34A8FE:
        INCPOSE     WAIT #3                     ; 34A8FE/73
L_34A8FF:
    ENDLOOP                                 ; 34A8FF/02
    ZEROVEL                                 ; 34A900/38
    END                                     ; 34A901/00

; CODE OR DATA -- $34A902 .. $34A92A
incbinRange "../split/prg/bank34.bin", $0902, $092A

L_34A92A:
    MOV         REG,VAR1                    ; 34A92A/1E01
    TABLEJMP    #8                          ; 34A92C/0F08
    .word       L_34A02F                    ; 34A92E/2FA0
    .word       L_34A93E                    ; 34A930/3EA9
    .word       L_34A9DE                    ; 34A932/DEA9
    .word       L_34AA08                    ; 34A934/08AA
    .word       L_34AA32                    ; 34A936/32AA
    .word       L_34AA56                    ; 34A938/56AA
    .word       L_34AA7A                    ; 34A93A/7AAA
    .word       L_34AA9E                    ; 34A93C/9EAA
L_34A93E:
    MOV         VAR3,#$00                   ; 34A93E/0D0300
    MOV         VAR1,#$00                   ; 34A941/0D0100
    WAIT        #1                          ; 34A944/0601
L_34A946:
    ASMCALL     $DE51                       ; 34A946/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 34A949/6C
    .byte       $00                         ; 34A94A/00
    .byte       $00                         ; 34A94B/00
    .byte       $00                         ; 34A94C/00
    .byte       $00                         ; 34A94D/00
    .byte       $02                         ; 34A94E/02
    SETXPOS     #$00C8                      ; 34A94F/2AC800
    SETYPOS     #$0098                      ; 34A952/2B9800
    SPRITEMAP   $3593A5                     ; 34A955/1AA59335
    SETXVEL     #$FF80                      ; 34A959/B080FF
    ASMCALL     $AC8D                       ; 34A95C/D08DAC
    LOOP        #4                          ; 34A95F/0104
        SETPOSE     #$0A, WAIT #10              ; 34A961/5A0A
L_34A963:
        INCPOSE     WAIT #8                     ; 34A963/78
L_34A964:
        INCPOSE     WAIT #10                    ; 34A964/7A
L_34A965:
        DECPOSE     WAIT #8                     ; 34A965/88
L_34A966:
    ENDLOOP                                 ; 34A966/02
    ZEROVEL                                 ; 34A967/38
    INCPOSE     WAIT #13                    ; 34A968/7D
L_34A969:
    SPRITEMAP   $35893A                     ; 34A969/1A3A8935
    LOOP        #3                          ; 34A96D/0103
        SETPOSE     #$00, WAIT #5               ; 34A96F/5500
L_34A971:
        INCPOSE     WAIT #5                     ; 34A971/75
L_34A972:
    ENDLOOP                                 ; 34A972/02
    INCPOSE                                 ; 34A973/70
    WAIT        #42                         ; 34A974/062A
L_34A976:
    ASMCALL     $AC9F                       ; 34A976/D09FAC
    SPRITEMAP   $35990A                     ; 34A979/1A0A9935
    SETPOSE     #$00, WAIT #2               ; 34A97D/5200
L_34A97F:
    SETYVEL     #$FE00                      ; 34A97F/C000FE
    INCPOSE     WAIT #6                     ; 34A982/76
L_34A983:
    SETYVEL     #$FF00, WAIT #6             ; 34A983/C600FF
L_34A986:
    SETYVEL     #$0100, WAIT #6             ; 34A986/C60001
L_34A989:
    SETYVEL     #$0200                      ; 34A989/C00002
    INCPOSE     WAIT #6                     ; 34A98C/76
L_34A98D:
    ZEROVEL                                 ; 34A98D/38
    A_JSR       L_34A9C8                    ; 34A98E/18C8A9
    LOOP        #2                          ; 34A991/0102
        SETXVEL     #$FF00                      ; 34A993/B000FF
        SETPOSE     #$03, WAIT #8               ; 34A996/5803
L_34A998:
        SETXVEL     #$FF80, WAIT #8             ; 34A998/B880FF
L_34A99B:
        SETXVEL     #$FFE0, WAIT #8             ; 34A99B/B8E0FF
L_34A99E:
        SETXVEL     #$0100                      ; 34A99E/B00001
        INCPOSE     WAIT #8                     ; 34A9A1/78
L_34A9A2:
        SETXVEL     #$0080, WAIT #8             ; 34A9A2/B88000
L_34A9A5:
        SETXVEL     #$0020, WAIT #8             ; 34A9A5/B82000
L_34A9A8:
    ENDLOOP                                 ; 34A9A8/02
    ZEROVEL                                 ; 34A9A9/38
    SPRITEMAP   $358954                     ; 34A9AA/1A548935
    LOOP        #4                          ; 34A9AE/0104
        SETPOSE     #$00, WAIT #8               ; 34A9B0/5800
L_34A9B2:
        INCPOSE     WAIT #8                     ; 34A9B2/78
L_34A9B3:
    ENDLOOP                                 ; 34A9B3/02
    MOV         VAR3,#$01                   ; 34A9B4/0D0301
    ASMCALL     $AC99                       ; 34A9B7/D099AC
    SPRITEMAP   $359898                     ; 34A9BA/1A989835
    SETPOSE     #$00, WAIT #10              ; 34A9BE/5A00
L_34A9C0:
    INCPOSE     WAIT #2                     ; 34A9C0/72
L_34A9C1:
    INCPOSE     WAIT #2                     ; 34A9C1/72
L_34A9C2:
    INCPOSE     WAIT #2                     ; 34A9C2/72
L_34A9C3:
    INCPOSE     WAIT #10                    ; 34A9C3/7A
L_34A9C4:
    INCPOSE                                 ; 34A9C4/70
    WAIT        #24                         ; 34A9C5/0618
L_34A9C7:
    HALT                                    ; 34A9C7/09

L_34A9C8:
    MOV         VAR1,#$03                   ; 34A9C8/0D0103
    WAIT        #1                          ; 34A9CB/0601
L_34A9CD:
    LOOP        #5                          ; 34A9CD/0105
        ASMCALL     $DE51                       ; 34A9CF/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
        .byte       $6C                         ; 34A9D2/6C
        .byte       $00                         ; 34A9D3/00
        .byte       $00                         ; 34A9D4/00
        .byte       $00                         ; 34A9D5/00
        .byte       $00                         ; 34A9D6/00
        .byte       $00                         ; 34A9D7/00
        ADD         VAR1,#1                     ; 34A9D8/13010201
    ENDLOOP                                 ; 34A9DC/02
    A_RTS                                   ; 34A9DD/19

L_34A9DE:
    SETXPOS     #$0080                      ; 34A9DE/2A8000
    SETYPOS     #$0060                      ; 34A9E1/2B6000
    SETZPOS     #$0002                      ; 34A9E4/3A0200
    SPRITEMAP   $358940                     ; 34A9E7/1A408935
    TASK        L_34AA02                    ; 34A9EB/0702AA
L_34A9EE:
    ASMCALL     $ACC2, WAIT #1              ; 34A9EE/D1C2AC
L_34A9F1:
    JNE         L_34A9F7                    ; 34A9F1/0BF7A9
    A_JMP       L_34A9EE                    ; 34A9F4/17EEA9

L_34A9F7:
    ENDLASTTASK                             ; 34A9F7/12
    SETPOSE     #$02, WAIT #5               ; 34A9F8/5502
L_34A9FA:
    INCPOSE     WAIT #5                     ; 34A9FA/75
L_34A9FB:
    INCPOSE     WAIT #5                     ; 34A9FB/75
L_34A9FC:
    INCPOSE     WAIT #5                     ; 34A9FC/75
L_34A9FD:
    INCPOSE     WAIT #5                     ; 34A9FD/75
L_34A9FE:
    INCPOSE     WAIT #5                     ; 34A9FE/75
L_34A9FF:
    INCPOSE     WAIT #5                     ; 34A9FF/75
L_34AA00:
    INCPOSE     WAIT #5                     ; 34AA00/75
L_34AA01:
    END                                     ; 34AA01/00

L_34AA02:
    SETPOSE     #$00, WAIT #1               ; 34AA02/5100
L_34AA04:
    INCPOSE     WAIT #1                     ; 34AA04/71
L_34AA05:
    A_JMP       L_34AA02                    ; 34AA05/1702AA

L_34AA08:
    SETXPOS     #$0080                      ; 34AA08/2A8000
    SETYPOS     #$0090                      ; 34AA0B/2B9000
    SETZPOS     #$000A                      ; 34AA0E/3A0A00
    SPRITEMAP   $358954                     ; 34AA11/1A548935
    SETXVEL     #$FA00                      ; 34AA15/B000FA
    SETYVEL     #$FE00                      ; 34AA18/C000FE
    SETPOSE     #$02, WAIT #11              ; 34AA1B/5B02
L_34AA1D:
    ZEROVEL                                 ; 34AA1D/38
    WAIT        #64                         ; 34AA1E/0640
L_34AA20:
    TASK        L_34AA2C                    ; 34AA20/072CAA
    A_JSR       L_34AAC5                    ; 34AA23/18C5AA
    ENDLASTTASK                             ; 34AA26/12
    MOV         REG,#$01                    ; 34AA27/1B01
    A_JMP       L_34AAD0                    ; 34AA29/17D0AA

L_34AA2C:
    SETPOSE     #$02, WAIT #2               ; 34AA2C/5202
L_34AA2E:
    INCPOSE     WAIT #2                     ; 34AA2E/72
L_34AA2F:
    A_JMP       L_34AA2C                    ; 34AA2F/172CAA

L_34AA32:
    SETXPOS     #$0080                      ; 34AA32/2A8000
    SETYPOS     #$0090                      ; 34AA35/2B9000
    SETZPOS     #$000A                      ; 34AA38/3A0A00
    SPRITEMAP   $358954                     ; 34AA3B/1A548935
    SETPOSE     #$FF                        ; 34AA3F/50FF
    WAIT        #16                         ; 34AA41/0610
L_34AA43:
    SETXVEL     #$FD00                      ; 34AA43/B000FD
    SETYVEL     #$FD00                      ; 34AA46/C000FD
    SETPOSE     #$03, WAIT #11              ; 34AA49/5B03
L_34AA4B:
    ZEROVEL                                 ; 34AA4B/38
    WAIT        #64                         ; 34AA4C/0640
L_34AA4E:
    A_JSR       L_34AAC5                    ; 34AA4E/18C5AA
    MOV         REG,#$02                    ; 34AA51/1B02
    A_JMP       L_34AAD0                    ; 34AA53/17D0AA

L_34AA56:
    SETXPOS     #$0080                      ; 34AA56/2A8000
    SETYPOS     #$0090                      ; 34AA59/2B9000
    SETZPOS     #$000A                      ; 34AA5C/3A0A00
    SPRITEMAP   $358954                     ; 34AA5F/1A548935
    SETPOSE     #$FF                        ; 34AA63/50FF
    WAIT        #32                         ; 34AA65/0620
L_34AA67:
    SETXVEL     #$0080                      ; 34AA67/B08000
    SETYVEL     #$FC00                      ; 34AA6A/C000FC
    SETPOSE     #$04, WAIT #11              ; 34AA6D/5B04
L_34AA6F:
    ZEROVEL                                 ; 34AA6F/38
    WAIT        #65                         ; 34AA70/0641
L_34AA72:
    A_JSR       L_34AAC5                    ; 34AA72/18C5AA
    MOV         REG,#$01                    ; 34AA75/1B01
    A_JMP       L_34AAD0                    ; 34AA77/17D0AA

L_34AA7A:
    SETXPOS     #$0080                      ; 34AA7A/2A8000
    SETYPOS     #$0090                      ; 34AA7D/2B9000
    SETZPOS     #$000A                      ; 34AA80/3A0A00
    SPRITEMAP   $358954                     ; 34AA83/1A548935
    SETPOSE     #$FF                        ; 34AA87/50FF
    WAIT        #51                         ; 34AA89/0633
L_34AA8B:
    SETXVEL     #$0300                      ; 34AA8B/B00003
    SETYVEL     #$FA00                      ; 34AA8E/C000FA
    SETPOSE     #$05, WAIT #11              ; 34AA91/5B05
L_34AA93:
    ZEROVEL                                 ; 34AA93/38
    WAIT        #64                         ; 34AA94/0640
L_34AA96:
    A_JSR       L_34AAC5                    ; 34AA96/18C5AA
    MOV         REG,#$04                    ; 34AA99/1B04
    A_JMP       L_34AAD0                    ; 34AA9B/17D0AA

L_34AA9E:
    MOV         VAR3,#$01                   ; 34AA9E/0D0301
    SETXPOS     #$0080                      ; 34AAA1/2A8000
    SETYPOS     #$0090                      ; 34AAA4/2B9000
    SETZPOS     #$000A                      ; 34AAA7/3A0A00
    SPRITEMAP   $358954                     ; 34AAAA/1A548935
    SETPOSE     #$FF                        ; 34AAAE/50FF
    WAIT        #52                         ; 34AAB0/0634
L_34AAB2:
    SETXVEL     #$0400                      ; 34AAB2/B00004
    SETYVEL     #$FA00                      ; 34AAB5/C000FA
    SETPOSE     #$06, WAIT #13              ; 34AAB8/5D06
L_34AABA:
    ZEROVEL                                 ; 34AABA/38
    WAIT        #64                         ; 34AABB/0640
L_34AABD:
    A_JSR       L_34AAC5                    ; 34AABD/18C5AA
    MOV         REG,#$05                    ; 34AAC0/1B05
    A_JMP       L_34AAD0                    ; 34AAC2/17D0AA

L_34AAC5:
    LOOP        #17                         ; 34AAC5/0111
        SETXVEL     #$0200, WAIT #2             ; 34AAC7/B20002
L_34AACA:
        SETXVEL     #$FE00, WAIT #2             ; 34AACA/B200FE
L_34AACD:
    ENDLOOP                                 ; 34AACD/02
    ZEROVEL                                 ; 34AACE/38
    A_RTS                                   ; 34AACF/19

L_34AAD0:
    LOOP        REG                         ; 34AAD0/22
        SETYVEL     #$0200                      ; 34AAD1/C00002
        SETPOSE     #$07, WAIT #8               ; 34AAD4/5807
L_34AAD6:
    ENDLOOP                                 ; 34AAD6/02
    SETYVEL     #$0400, WAIT #4             ; 34AAD7/C40004
L_34AADA:
    SETYVEL     #$FE00, WAIT #8             ; 34AADA/C800FE
L_34AADD:
    SETYVEL     #$FF00, WAIT #8             ; 34AADD/C800FF
L_34AAE0:
    SETYVEL     #$0100, WAIT #8             ; 34AAE0/C80001
L_34AAE3:
    SETYVEL     #$0200, WAIT #8             ; 34AAE3/C80002
L_34AAE6:
    MOV         REG,VAR3                    ; 34AAE6/1E03
    JEQ         L_34AAF5                    ; 34AAE8/0AF5AA
    ZEROVEL                                 ; 34AAEB/38
    SETPOSE     #$FF                        ; 34AAEC/50FF
    WAIT        #16                         ; 34AAEE/0610
L_34AAF0:
    MOV         $07D5,#$01                  ; 34AAF0/11D50701
    HALT                                    ; 34AAF4/09

L_34AAF5:
    END                                     ; 34AAF5/00

L_34AAF6:
    ASMCALL     $DE45                       ; 34AAF6/D045DE // Play music
    .byte       $17                         ; 34AAF9/17
    ASMCALL     $AB75, WAIT #2              ; 34AAFA/D275AB
L_34AAFD:
    TASK        L_34AB0C                    ; 34AAFD/070CAB
    SETXCAMERA  #$0000                      ; 34AB00/300000
    SETYCAMERA  #$0000                      ; 34AB03/310000
    WAIT        #16                         ; 34AB06/0610
L_34AB08:
    ASMCALL     $AC7C                       ; 34AB08/D07CAC
    A_RTS                                   ; 34AB0B/19

L_34AB0C:
    MOV         $01A2,#$04                  ; 34AB0C/11A20104
    LOOP        #4                          ; 34AB10/0104
        ASMCALL     $C996, WAIT #4              ; 34AB12/D496C9 // Palette fade (out?) step
L_34AB15:
    ENDLOOP                                 ; 34AB15/02
    ENDTASK                                 ; 34AB16/0C

L_34AB17:
    WAIT        #1                          ; 34AB17/0601
L_34AB19:
    ASMCALL     $ACCB                       ; 34AB19/D0CBAC
    JNE         L_34AB25                    ; 34AB1C/0B25AB
    MOV         REG,$07D5                   ; 34AB1F/1CD507
    JEQ         L_34AB17                    ; 34AB22/0A17AB
L_34AB25:
    ASMCALL     $DF0D                       ; 34AB25/D00DDF // Destroy all other objects
    LOOP        #4                          ; 34AB28/0104
        ASMCALL     $C94C, WAIT #4              ; 34AB2A/D44CC9 // Palette fade dark in step
L_34AB2D:
    ENDLOOP                                 ; 34AB2D/02
    END                                     ; 34AB2E/00

L_34AB2F:
    MOV         $0516,#$00                  ; 34AB2F/11160500
    MOV         REG,VAR1                    ; 34AB33/1E01
    JNE         L_34AB40                    ; 34AB35/0B40AB
    ASMCALL     $DF0D                       ; 34AB38/D00DDF // Destroy all other objects
    ASMCALL     $AB75, WAIT #2              ; 34AB3B/D275AB
L_34AB3E:
    MOV         REG,#$00                    ; 34AB3E/1B00
L_34AB40:
    TABLECALL   #15                         ; 34AB40/290F
    _is_faraddr L_36A000                    ; 34AB42/00A036
    _is_faraddr L_36A054                    ; 34AB45/54A036
    _is_faraddr L_36A03E                    ; 34AB48/3EA036
    _is_faraddr L_36A291                    ; 34AB4B/91A236
    _is_faraddr L_36A5D1                    ; 34AB4E/D1A536
    _is_faraddr L_36A4C4                    ; 34AB51/C4A436
    _is_faraddr L_36A6CF                    ; 34AB54/CFA636
    _is_faraddr L_36A663                    ; 34AB57/63A636
    _is_faraddr L_36A66C                    ; 34AB5A/6CA636
    _is_faraddr L_36A677                    ; 34AB5D/77A636
    _is_faraddr L_36A682                    ; 34AB60/82A636
    _is_faraddr L_36A265                    ; 34AB63/65A236
    _is_faraddr L_36A468                    ; 34AB66/68A436
    _is_faraddr L_36A46E                    ; 34AB69/6EA436
    _is_faraddr L_36A5D0                    ; 34AB6C/D0A536

; CODE OR DATA -- $34AB74 .. $36A000
incbinRange "../split/prg/bank34.bin", $0B6f, $2000