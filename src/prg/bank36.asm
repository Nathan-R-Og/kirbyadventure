.segment "PRG36": absolute
; --- START OF BANK 36 ---

L_36A000:
    ASMCALL     $A6E6                       ; 36A000/D0E6A6
    JNE         L_36A034                    ; 36A003/0B34A0
    TASK        L_36A049                    ; 36A006/0749A0
    SETXCAMERA  #$0000                      ; 36A009/300000
    SETYCAMERA  #$0000                      ; 36A00C/310000
    MOV         VAR1,#$00                   ; 36A00F/0D0100
    WAIT        #1                          ; 36A012/0601
L_36A014:
    ASMCALL     $DE51                       ; 36A014/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 36A017/6C
    .byte       $00                         ; 36A018/00
    .byte       $00                         ; 36A019/00
    .byte       $00                         ; 36A01A/00
    .byte       $00                         ; 36A01B/00
    .byte       $01                         ; 36A01C/01
    MOV         VAR7,REG                    ; 36A01D/1D07
    ASMCALL     $DE51                       ; 36A01F/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 36A022/6C
    .byte       $00                         ; 36A023/00
    .byte       $00                         ; 36A024/00
    .byte       $00                         ; 36A025/00
    .byte       $00                         ; 36A026/00
    .byte       $02                         ; 36A027/02
    WAIT        #98                         ; 36A028/0662
L_36A02A:
    WAIT        #30                         ; 36A02A/061E
L_36A02C:
    SETXCAMERAVEL#$0100                     ; 36A02C/320001
    ONTICK      $36A6F5                     ; 36A02F/08F5A636
L_36A033:
    HALT                                    ; 36A033/09

L_36A034:
    ASMCALL     $DF0D                       ; 36A034/D00DDF // Destroy all other objects
    LOOP        #4                          ; 36A037/0104
        ASMCALL     $C94C, WAIT #4              ; 36A039/D44CC9 // Palette fade dark in step
L_36A03C:
    ENDLOOP                                 ; 36A03C/02
    END                                     ; 36A03D/00

L_36A03E:
    MOV         VAR7,#$00                   ; 36A03E/0D0700
L_36A041:
    ASMCALL     $A7FC                       ; 36A041/D0FCA7
    WAIT        #20                         ; 36A044/0614
L_36A046:
    A_JMP       L_36A041                    ; 36A046/1741A0

L_36A049:
    MOV         $01A2,#$04                  ; 36A049/11A20104
    LOOP        #4                          ; 36A04D/0104
        ASMCALL     $C996, WAIT #4              ; 36A04F/D496C9 // Palette fade (out?) step
L_36A052:
    ENDLOOP                                 ; 36A052/02
    ENDTASK                                 ; 36A053/0C

L_36A054:
    MOV         VAR1,#$06                   ; 36A054/0D0106
    LOOP        #5                          ; 36A057/0105
        ASMCALL     $DE51                       ; 36A059/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
        .byte       $6C                         ; 36A05C/6C
        .byte       $00                         ; 36A05D/00
        .byte       $00                         ; 36A05E/00
        .byte       $00                         ; 36A05F/00
        .byte       $00                         ; 36A060/00
        .byte       $00                         ; 36A061/00
        ADD         VAR1,#1                     ; 36A062/13010201
    ENDLOOP                                 ; 36A066/02
    MOV         VAR6,#$00                   ; 36A067/0D0600
    MOV         VAR7,#$01                   ; 36A06A/0D0701
    SETXPOS     #$0078                      ; 36A06D/2A7800
    SETYPOS     #$0089                      ; 36A070/2B8900
    SETZPOS     #$00FE                      ; 36A073/3AFE00
    ASMCALL     $DE45                       ; 36A076/D045DE // Play music
    .byte       $38                         ; 36A079/38
    SPRITEMAP   $358BD9                     ; 36A07A/1AD98B35
    SETPOSE     #$00                        ; 36A07E/5000
    WAIT        #30                         ; 36A080/061E
L_36A082:
    ASMCALL     $A851                       ; 36A082/D051A8
    SPRITEMAP   $359592                     ; 36A085/1A929535
    SETPOSE     #$00, WAIT #2               ; 36A089/5200
L_36A08B:
    INCPOSE     WAIT #2                     ; 36A08B/72
L_36A08C:
    INCPOSE     WAIT #2                     ; 36A08C/72
L_36A08D:
    INCPOSE     WAIT #2                     ; 36A08D/72
L_36A08E:
    INCPOSE     WAIT #2                     ; 36A08E/72
L_36A08F:
    ASMCALL     $DE4B                       ; 36A08F/D04BDE // Play sound effect
    .byte       $3A                         ; 36A092/3A
    INCPOSE     WAIT #4                     ; 36A093/74
L_36A094:
    DECPOSE     WAIT #2                     ; 36A094/82
L_36A095:
    INC2POSE                                ; 36A095/90
    WAIT        #32                         ; 36A096/0620
L_36A098:
    INCPOSE                                 ; 36A098/70
    WAIT        #32                         ; 36A099/0620
L_36A09B:
    LOOP        #3                          ; 36A09B/0103
        A_JSR       L_36A23D                    ; 36A09D/183DA2
    ENDLOOP                                 ; 36A0A0/02
    SETPOSE     #$08, WAIT #10              ; 36A0A1/5A08
L_36A0A3:
    SETYVEL     #$0100                      ; 36A0A3/C00001
    SETPOSE     #$21                        ; 36A0A6/5021
    WAIT        #47                         ; 36A0A8/062F
L_36A0AA:
    MOV         VAR1,#$00                   ; 36A0AA/0D0100
    WAIT        #1                          ; 36A0AD/0601
L_36A0AF:
    ASMCALL     $DE51                       ; 36A0AF/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 36A0B2/6C
    .byte       $00                         ; 36A0B3/00
    .byte       $00                         ; 36A0B4/00
    .byte       $00                         ; 36A0B5/00
    .byte       $00                         ; 36A0B6/00
    .byte       $03                         ; 36A0B7/03
    ZEROVEL                                 ; 36A0B8/38
    LOOP        #3                          ; 36A0B9/0103
        A_JSR       L_36A23D                    ; 36A0BB/183DA2
    ENDLOOP                                 ; 36A0BE/02
    ZEROVEL                                 ; 36A0BF/38
    MOV         VAR7,#$00                   ; 36A0C0/0D0700
    ASMCALL     $DE51                       ; 36A0C3/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 36A0C6/6C
    .byte       $00                         ; 36A0C7/00
    .byte       $00                         ; 36A0C8/00
    .byte       $00                         ; 36A0C9/00
    .byte       $00                         ; 36A0CA/00
    .byte       $0B                         ; 36A0CB/0B
    LOOP        #3                          ; 36A0CC/0103
        SETPOSE     #$08, WAIT #2               ; 36A0CE/5208
L_36A0D0:
        INCPOSE     WAIT #2                     ; 36A0D0/72
L_36A0D1:
        DECPOSE     WAIT #2                     ; 36A0D1/82
L_36A0D2:
        INCPOSE     WAIT #2                     ; 36A0D2/72
L_36A0D3:
        INCPOSE     WAIT #2                     ; 36A0D3/72
L_36A0D4:
        INCPOSE     WAIT #2                     ; 36A0D4/72
L_36A0D5:
        DECPOSE     WAIT #2                     ; 36A0D5/82
L_36A0D6:
        INCPOSE     WAIT #2                     ; 36A0D6/72
L_36A0D7:
        INCPOSE     WAIT #2                     ; 36A0D7/72
L_36A0D8:
        INCPOSE     WAIT #2                     ; 36A0D8/72
L_36A0D9:
        DECPOSE     WAIT #2                     ; 36A0D9/82
L_36A0DA:
        INCPOSE     WAIT #2                     ; 36A0DA/72
L_36A0DB:
    ENDLOOP                                 ; 36A0DB/02
    SETPOSE     #$11                        ; 36A0DC/5011
    WAIT        #16                         ; 36A0DE/0610
L_36A0E0:
    WAIT        #30                         ; 36A0E0/061E
L_36A0E2:
    SPRITEMAP   $358BD9                     ; 36A0E2/1AD98B35
    SETPOSE     #$00                        ; 36A0E6/5000
    WAIT        #128                        ; 36A0E8/0680
L_36A0EA:
    WAIT        #24                         ; 36A0EA/0618
L_36A0EC:
    MOV         VAR7,#$01                   ; 36A0EC/0D0701
    LOOP        #6                          ; 36A0EF/0106
        SETXVEL     #$0100                      ; 36A0F1/B00001
        SETPOSE     #$04, WAIT #10              ; 36A0F4/5A04
L_36A0F6:
        INCPOSE     WAIT #10                    ; 36A0F6/7A
L_36A0F7:
        INCPOSE     WAIT #10                    ; 36A0F7/7A
L_36A0F8:
        DECPOSE     WAIT #10                    ; 36A0F8/8A
L_36A0F9:
    ENDLOOP                                 ; 36A0F9/02
    SETPOSE     #$04, WAIT #10              ; 36A0FA/5A04
L_36A0FC:
    INCPOSE     WAIT #5                     ; 36A0FC/75
L_36A0FD:
    MOV         VAR7,#$00                   ; 36A0FD/0D0700
    WAIT        #5                          ; 36A100/0605
L_36A102:
    INCPOSE     WAIT #10                    ; 36A102/7A
L_36A103:
    DECPOSE     WAIT #10                    ; 36A103/8A
L_36A104:
    ZEROVEL                                 ; 36A104/38
    SPRITEMAP   $359592                     ; 36A105/1A929535
    SETPOSE     #$11                        ; 36A109/5011
    WAIT        #40                         ; 36A10B/0628
L_36A10D:
    WAIT        #30                         ; 36A10D/061E
L_36A10F:
    SETPOSE     #$12, WAIT #1               ; 36A10F/5112
L_36A111:
    INCPOSE     WAIT #1                     ; 36A111/71
L_36A112:
    INCPOSE     WAIT #1                     ; 36A112/71
L_36A113:
    INCPOSE     WAIT #1                     ; 36A113/71
L_36A114:
    INCPOSE     WAIT #1                     ; 36A114/71
L_36A115:
    ASMCALL     $DE4B                       ; 36A115/D04BDE // Play sound effect
    .byte       $46                         ; 36A118/46
    LOOP        #3                          ; 36A119/0103
        SETPOSE     #$17, WAIT #2               ; 36A11B/5217
L_36A11D:
        INCPOSE     WAIT #2                     ; 36A11D/72
L_36A11E:
    ENDLOOP                                 ; 36A11E/02
    SETPOSE     #$0E, WAIT #1               ; 36A11F/510E
L_36A121:
    INCPOSE     WAIT #1                     ; 36A121/71
L_36A122:
    INCPOSE                                 ; 36A122/70
    SETYVEL     #$FE00, WAIT #8             ; 36A123/C800FE
L_36A126:
    SETYVEL     #$FF00, WAIT #8             ; 36A126/C800FF
L_36A129:
    SETYVEL     #$0100, WAIT #8             ; 36A129/C80001
L_36A12C:
    SETYVEL     #$0200, WAIT #8             ; 36A12C/C80002
L_36A12F:
    ZEROVEL                                 ; 36A12F/38
    INCPOSE                                 ; 36A130/70
    WAIT        #64                         ; 36A131/0640
L_36A133:
    SPRITEMAP   $358BD9                     ; 36A133/1AD98B35
    SETPOSE     #$08, WAIT #8               ; 36A137/5808
L_36A139:
    ASMCALL     $DE4B                       ; 36A139/D04BDE // Play sound effect
    .byte       $04                         ; 36A13C/04
    ASMCALL     $DE45                       ; 36A13D/D045DE // Play music
    .byte       $17                         ; 36A140/17
    INCPOSE                                 ; 36A141/70
    SETXVEL     #$0100                      ; 36A142/B00001
    SETYVEL     #$FC00, WAIT #8             ; 36A145/C800FC
L_36A148:
    SETYVEL     #$FE00, WAIT #8             ; 36A148/C800FE
L_36A14B:
    SETYVEL     #$0200, WAIT #8             ; 36A14B/C80002
L_36A14E:
    ZEROVEL                                 ; 36A14E/38
    ASMCALL     $DE4B                       ; 36A14F/D04BDE // Play sound effect
    .byte       $0E                         ; 36A152/0E
    DECPOSE     WAIT #8                     ; 36A153/88
L_36A154:
    ASMCALL     $DE4B                       ; 36A154/D04BDE // Play sound effect
    .byte       $04                         ; 36A157/04
    INC2POSE                                ; 36A158/90
    SETXVEL     #$FD00                      ; 36A159/B000FD
    SETYVEL     #$FC00, WAIT #8             ; 36A15C/C800FC
L_36A15F:
    SETXVEL     #$FE00                      ; 36A15F/B000FE
    SETYVEL     #$FE00, WAIT #8             ; 36A162/C800FE
L_36A165:
    SETYVEL     #$FF80, WAIT #8             ; 36A165/C880FF
L_36A168:
    ZEROVEL                                 ; 36A168/38
    ASMCALL     $DE4B                       ; 36A169/D04BDE // Play sound effect
    .byte       $0E                         ; 36A16C/0E
    ADDXPOS     #-2                         ; 36A16D/2CFEFF
    SPRITEMAP   $359592                     ; 36A170/1A929535
    SETPOSE     #$07                        ; 36A174/5007
    WAIT        #16                         ; 36A176/0610
L_36A178:
    ASMCALL     $DE4B                       ; 36A178/D04BDE // Play sound effect
    .byte       $04                         ; 36A17B/04
    SETPOSE     #$22                        ; 36A17C/5022
    SETYVEL     #$FE00, WAIT #8             ; 36A17E/C800FE
L_36A181:
    SETYVEL     #$FF00, WAIT #8             ; 36A181/C800FF
L_36A184:
    ZEROVEL                                 ; 36A184/38
    SPRITEMAP   $358BD9                     ; 36A185/1AD98B35
    SETPOSE     #$0B                        ; 36A189/500B
    SETYVEL     #$0100, WAIT #8             ; 36A18B/C80001
L_36A18E:
    SETYVEL     #$0200, WAIT #8             ; 36A18E/C80002
L_36A191:
    SETYVEL     #$0000                      ; 36A191/C00000
    ASMCALL     $DE4B                       ; 36A194/D04BDE // Play sound effect
    .byte       $54                         ; 36A197/54
    LOOP        #3                          ; 36A198/0103
        ADDXPOS     #-1                         ; 36A19A/2CFFFF
        WAIT        #2                          ; 36A19D/0602
L_36A19F:
        ADDXPOS     #1                          ; 36A19F/2C0100
        WAIT        #2                          ; 36A1A2/0602
L_36A1A4:
        ADDXPOS     #1                          ; 36A1A4/2C0100
        WAIT        #2                          ; 36A1A7/0602
L_36A1A9:
        ADDXPOS     #-1                         ; 36A1A9/2CFFFF
        WAIT        #2                          ; 36A1AC/0602
L_36A1AE:
    ENDLOOP                                 ; 36A1AE/02
    MOV         VAR6,#$01                   ; 36A1AF/0D0601
    TASK        L_36A271                    ; 36A1B2/0771A2
    MOV         VAR1,#$00                   ; 36A1B5/0D0100
    ASMCALL     $DE51                       ; 36A1B8/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 36A1BB/6C
    .byte       $00                         ; 36A1BC/00
    .byte       $00                         ; 36A1BD/00
    .byte       $00                         ; 36A1BE/00
    .byte       $00                         ; 36A1BF/00
    .byte       $04                         ; 36A1C0/04
    ASMCALL     $DE4B                       ; 36A1C1/D04BDE // Play sound effect
    .byte       $04                         ; 36A1C4/04
    INCPOSE                                 ; 36A1C5/70
    SETXVEL     #$FF00                      ; 36A1C6/B000FF
    SETYVEL     #$FE00, WAIT #8             ; 36A1C9/C800FE
L_36A1CC:
    SETYVEL     #$FF00, WAIT #8             ; 36A1CC/C800FF
L_36A1CF:
    INCPOSE                                 ; 36A1CF/70
    SETXVEL     #$FF80                      ; 36A1D0/B080FF
    SETYVEL     #$0200, WAIT #8             ; 36A1D3/C80002
L_36A1D6:
    SETYVEL     #$0400                      ; 36A1D6/C00004
    WAIT        #23                         ; 36A1D9/0617
L_36A1DB:
    ZEROVEL                                 ; 36A1DB/38
    ASMCALL     $DE4B                       ; 36A1DC/D04BDE // Play sound effect
    .byte       $05                         ; 36A1DF/05
    INCPOSE     WAIT #10                    ; 36A1E0/7A
L_36A1E1:
    ASMCALL     $A84B                       ; 36A1E1/D04BA8
    SPRITEMAP   $358CBE                     ; 36A1E4/1ABE8C35
    SETPOSE     #$00                        ; 36A1E8/5000
    WAIT        #144                        ; 36A1EA/0690
L_36A1EC:
    ASMCALL     $DE51                       ; 36A1EC/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 36A1EF/6C
    .byte       $00                         ; 36A1F0/00
    .byte       $00                         ; 36A1F1/00
    .byte       $00                         ; 36A1F2/00
    .byte       $00                         ; 36A1F3/00
    .byte       $05                         ; 36A1F4/05
    WAIT        #60                         ; 36A1F5/063C
L_36A1F7:
    A_JSR       L_36A246                    ; 36A1F7/1846A2
    LOOP        #16                         ; 36A1FA/0110
        SETPOSE     #$02                        ; 36A1FC/5002
        A_JSR       L_36A257                    ; 36A1FE/1857A2
    ENDLOOP                                 ; 36A201/02
    INCPOSE                                 ; 36A202/70
    SETXVEL     #$0400                      ; 36A203/B00004
    SETYVEL     #$FFC0, WAIT #8             ; 36A206/C8C0FF
L_36A209:
    SETPOSE     #$FF                        ; 36A209/50FF
    SETXVEL     #$0200                      ; 36A20B/B00002
    SETYVEL     #$0000, WAIT #8             ; 36A20E/C80000
L_36A211:
    SETXVEL     #$FF00                      ; 36A211/B000FF
    WAIT        #32                         ; 36A214/0620
L_36A216:
    ZEROVEL                                 ; 36A216/38
    WAIT        #45                         ; 36A217/062D
L_36A219:
    SPRITEMAP   $359592                     ; 36A219/1A929535
    ASMCALL     $DE4B                       ; 36A21D/D04BDE // Play sound effect
    .byte       $4E                         ; 36A220/4E
    LOOP        #5                          ; 36A221/0105
        SETXVEL     #$0400                      ; 36A223/B00004
        SETYVEL     #$FC00                      ; 36A226/C000FC
        SETPOSE     #$19, WAIT #1               ; 36A229/5119
L_36A22B:
        INCPOSE     WAIT #1                     ; 36A22B/71
L_36A22C:
        INCPOSE     WAIT #1                     ; 36A22C/71
L_36A22D:
        INCPOSE     WAIT #1                     ; 36A22D/71
L_36A22E:
        INCPOSE     WAIT #1                     ; 36A22E/71
L_36A22F:
        INCPOSE     WAIT #1                     ; 36A22F/71
L_36A230:
        INCPOSE     WAIT #1                     ; 36A230/71
L_36A231:
        INCPOSE     WAIT #1                     ; 36A231/71
L_36A232:
    ENDLOOP                                 ; 36A232/02
    ZEROVEL                                 ; 36A233/38
    SETPOSE     #$FF                        ; 36A234/50FF
    WAIT        #60                         ; 36A236/063C
L_36A238:
    MOV         $07D5,#$01                  ; 36A238/11D50701
    HALT                                    ; 36A23C/09

L_36A23D:
    SETXVEL     #$0100                      ; 36A23D/B00001
    SETPOSE     #$08, WAIT #10              ; 36A240/5A08
L_36A242:
    INC2POSE    WAIT #8                     ; 36A242/98
L_36A243:
    INC2POSE    WAIT #10                    ; 36A243/9A
L_36A244:
    DEC2POSE    WAIT #8                     ; 36A244/A8
L_36A245:
    A_RTS                                   ; 36A245/19

L_36A246:
    INCPOSE                                 ; 36A246/70
    SETXVEL     #$FE00, WAIT #4             ; 36A247/B400FE
L_36A24A:
    SETXVEL     #$FF00, WAIT #4             ; 36A24A/B400FF
L_36A24D:
    SETXVEL     #$FF80, WAIT #4             ; 36A24D/B480FF
L_36A250:
    SETXVEL     #$FFE0, WAIT #4             ; 36A250/B4E0FF
L_36A253:
    ZEROVEL                                 ; 36A253/38
    WAIT        #112                        ; 36A254/0670
L_36A256:
    A_RTS                                   ; 36A256/19

L_36A257:
    SETXVEL     #$FF00, WAIT #3             ; 36A257/B300FF
L_36A25A:
    INCPOSE     WAIT #3                     ; 36A25A/73
L_36A25B:
    DECPOSE     WAIT #3                     ; 36A25B/83
L_36A25C:
    INCPOSE     WAIT #3                     ; 36A25C/73
L_36A25D:
    SETXVEL     #$0100                      ; 36A25D/B00001
    DECPOSE     WAIT #3                     ; 36A260/83
L_36A261:
    INCPOSE     WAIT #3                     ; 36A261/73
L_36A262:
    DECPOSE     WAIT #3                     ; 36A262/83
L_36A263:
    INCPOSE     WAIT #3                     ; 36A263/73
L_36A264:
    A_RTS                                   ; 36A264/19

L_36A265:
    ASMCALL     $A794                       ; 36A265/D094A7
    LOOP        #32                         ; 36A268/0120
        WAIT        #1                          ; 36A26A/0601
L_36A26C:
        ASMCALL     $A7D4                       ; 36A26C/D0D4A7
    ENDLOOP                                 ; 36A26F/02
    END                                     ; 36A270/00

L_36A271:
    MOV         VAR2,#$00                   ; 36A271/0D0200
    LOOP        #2                          ; 36A274/0102
        ASMCALL     $A73B                       ; 36A276/D03BA7
        WAIT        #4                          ; 36A279/0604
L_36A27B:
        ADD         VAR2,#1                     ; 36A27B/13020201
    ENDLOOP                                 ; 36A27F/02
    ENDTASK                                 ; 36A280/0C

L_36A281:
    MOV         VAR2,#$01                   ; 36A281/0D0201
    LOOP        #5                          ; 36A284/0105
        ASMCALL     $A73B                       ; 36A286/D03BA7
        WAIT        #4                          ; 36A289/0604
L_36A28B:
        ADD         VAR2,#1                     ; 36A28B/13020201
    ENDLOOP                                 ; 36A28F/02
    ENDTASK                                 ; 36A290/0C

L_36A291:
    SETXPOS     #$00FC                      ; 36A291/2AFC00
    SETYPOS     #$0001                      ; 36A294/2B0100
    SETZPOS     #$00FD                      ; 36A297/3AFD00
    SPRITEMAP   $358EA6                     ; 36A29A/1AA68E35
    SETPOSE     #$FF, WAIT #8               ; 36A29E/58FF
L_36A2A0:
    SETPOSE     #$00                        ; 36A2A0/5000
    SETXVEL     #$0100                      ; 36A2A2/B00001
    SETYVEL     #$0400                      ; 36A2A5/C00004
    WAIT        #44                         ; 36A2A8/062C
L_36A2AA:
    ZEROVEL                                 ; 36A2AA/38
    TASK        L_36A3E5                    ; 36A2AB/07E5A3
    INCPOSE                                 ; 36A2AE/70
    WAIT        #16                         ; 36A2AF/0610
L_36A2B1:
    ASMCALL     $DE4B                       ; 36A2B1/D04BDE // Play sound effect
    .byte       $17                         ; 36A2B4/17
    INCPOSE                                 ; 36A2B5/70
    SETXVEL     #$0200                      ; 36A2B6/B00002
    SETYVEL     #$FE00, WAIT #8             ; 36A2B9/C800FE
L_36A2BC:
    SETYVEL     #$FF00, WAIT #8             ; 36A2BC/C800FF
L_36A2BF:
    SETYVEL     #$0100, WAIT #8             ; 36A2BF/C80001
L_36A2C2:
    SETYVEL     #$0200, WAIT #8             ; 36A2C2/C80002
L_36A2C5:
    INCPOSE                                 ; 36A2C5/70
    SETYVEL     #$0000, WAIT #9             ; 36A2C6/C90000
L_36A2C9:
    ZEROVEL                                 ; 36A2C9/38
    ASMCALL     $DE4B                       ; 36A2CA/D04BDE // Play sound effect
    .byte       $22                         ; 36A2CD/22
    MOV         VAR1,#$00                   ; 36A2CE/0D0100
    ASMCALL     $DE51                       ; 36A2D1/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 36A2D4/6C
    .byte       $00                         ; 36A2D5/00
    .byte       $00                         ; 36A2D6/00
    .byte       $00                         ; 36A2D7/00
    .byte       $00                         ; 36A2D8/00
    .byte       $0C                         ; 36A2D9/0C
    ASMCALL     $A845                       ; 36A2DA/D045A8
    SPRITEMAP   $358EB6                     ; 36A2DD/1AB68E35
    LOOP        #16                         ; 36A2E1/0110
        SETPOSE     #$00, WAIT #2               ; 36A2E3/5200
L_36A2E5:
        INCPOSE     WAIT #2                     ; 36A2E5/72
L_36A2E6:
    ENDLOOP                                 ; 36A2E6/02
    SETPOSE     #$00, WAIT #2               ; 36A2E7/5200
L_36A2E9:
    INCPOSE     WAIT #1                     ; 36A2E9/71
L_36A2EA:
    INCPOSE     WAIT #8                     ; 36A2EA/78
L_36A2EB:
    INCPOSE                                 ; 36A2EB/70
    SETXVEL     #$FF00, WAIT #8             ; 36A2EC/B800FF
L_36A2EF:
    ZEROVEL                                 ; 36A2EF/38
    INCPOSE                                 ; 36A2F0/70
    WAIT        #32                         ; 36A2F1/0620
L_36A2F3:
    WAIT        #30                         ; 36A2F3/061E
L_36A2F5:
    LOOP        #9                          ; 36A2F5/0109
        SETPOSE     #$05, WAIT #5               ; 36A2F7/5505
L_36A2F9:
        DECPOSE     WAIT #7                     ; 36A2F9/87
L_36A2FA:
    ENDLOOP                                 ; 36A2FA/02
    WAIT        #34                         ; 36A2FB/0622
L_36A2FD:
    ASMCALL     $DE51                       ; 36A2FD/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6C                         ; 36A300/6C
    .byte       $00                         ; 36A301/00
    .byte       $00                         ; 36A302/00
    .byte       $00                         ; 36A303/00
    .byte       $00                         ; 36A304/00
    .byte       $0D                         ; 36A305/0D
    DEC2POSE                                ; 36A306/A0
    SETXVEL     #$0400, WAIT #9             ; 36A307/B90004
L_36A30A:
    LOOP        #63                         ; 36A30A/013F
        SETXVEL     #$0100                      ; 36A30C/B00001
        SETPOSE     #$00, WAIT #2               ; 36A30F/5200
L_36A311:
        INCPOSE     WAIT #2                     ; 36A311/72
L_36A312:
    ENDLOOP                                 ; 36A312/02
    ZEROVEL                                 ; 36A313/38
    SETPOSE     #$00                        ; 36A314/5000
    WAIT        #24                         ; 36A316/0618
L_36A318:
    INC2POSE    WAIT #8                     ; 36A318/98
L_36A319:
    INC2POSE                                ; 36A319/90
    WAIT        #16                         ; 36A31A/0610
L_36A31C:
    WAIT        #30                         ; 36A31C/061E
L_36A31E:
    LOOP        #3                          ; 36A31E/0103
        SETPOSE     #$07                        ; 36A320/5007
        SETXVEL     #$FE00, WAIT #2             ; 36A322/B200FE
L_36A325:
        SETXVEL     #$0200, WAIT #2             ; 36A325/B20002
L_36A328:
    ENDLOOP                                 ; 36A328/02
    SETXVEL     #$FE00                      ; 36A329/B000FE
    SETYVEL     #$FC00, WAIT #8             ; 36A32C/C800FC
L_36A32F:
    SETXVEL     #$FF00                      ; 36A32F/B000FF
    SETYVEL     #$FE00, WAIT #10            ; 36A332/CA00FE
L_36A335:
    SETYVEL     #$0200, WAIT #10            ; 36A335/CA0002
L_36A338:
    SETYVEL     #$0400, WAIT #8             ; 36A338/C80004
L_36A33B:
    ZEROVEL                                 ; 36A33B/38
    TASK        L_36A3FA                    ; 36A33C/07FAA3
    DECPOSE     WAIT #4                     ; 36A33F/84
L_36A340:
    SETXVEL     #$FF00                      ; 36A340/B000FF
    SETYVEL     #$FE00, WAIT #8             ; 36A343/C800FE
L_36A346:
    SETYVEL     #$FF00, WAIT #8             ; 36A346/C800FF
L_36A349:
    SETYVEL     #$0100, WAIT #8             ; 36A349/C80001
L_36A34C:
    SETYVEL     #$0200, WAIT #8             ; 36A34C/C80002
L_36A34F:
    ZEROVEL                                 ; 36A34F/38
    WAIT        #8                          ; 36A350/0608
L_36A352:
    SETPOSE     #$02                        ; 36A352/5002
    WAIT        #20                         ; 36A354/0614
L_36A356:
    INCPOSE                                 ; 36A356/70
    WAIT        #16                         ; 36A357/0610
L_36A359:
    INCPOSE                                 ; 36A359/70
    WAIT        #64                         ; 36A35A/0640
L_36A35C:
    LOOP        #27                         ; 36A35C/011B
        SETPOSE     #$07, WAIT #2               ; 36A35E/5207
L_36A360:
        INCPOSE     WAIT #2                     ; 36A360/72
L_36A361:
    ENDLOOP                                 ; 36A361/02
    SETPOSE     #$07, WAIT #1               ; 36A362/5107
L_36A364:
    SPRITEMAP   $358ECA                     ; 36A364/1ACA8E35
    SETPOSE     #$00                        ; 36A368/5000
    WAIT        #143                        ; 36A36A/068F
L_36A36C:
    WAIT        #60                         ; 36A36C/063C
L_36A36E:
    A_JSR       L_36A246                    ; 36A36E/1846A2
    LOOP        #13                         ; 36A371/010D
        SETPOSE     #$02                        ; 36A373/5002
        A_JSR       L_36A257                    ; 36A375/1857A2
    ENDLOOP                                 ; 36A378/02
    ZEROVEL                                 ; 36A379/38
    INCPOSE                                 ; 36A37A/70
    WAIT        #16                         ; 36A37B/0610
L_36A37D:
    INCPOSE     WAIT #8                     ; 36A37D/78
L_36A37E:
    ASMCALL     $DE4B                       ; 36A37E/D04BDE // Play sound effect
    .byte       $17                         ; 36A381/17
    INCPOSE                                 ; 36A382/70
    SETXVEL     #$0200                      ; 36A383/B00002
    SETYVEL     #$FC00, WAIT #8             ; 36A386/C800FC
L_36A389:
    SETYVEL     #$FE00, WAIT #8             ; 36A389/C800FE
L_36A38C:
    SETYVEL     #$0000, WAIT #8             ; 36A38C/C80000
L_36A38F:
    SETYVEL     #$0200, WAIT #8             ; 36A38F/C80002
L_36A392:
    SETYVEL     #$0400, WAIT #8             ; 36A392/C80004
L_36A395:
    ZEROVEL                                 ; 36A395/38
    ASMCALL     $DE4B                       ; 36A396/D04BDE // Play sound effect
    .byte       $22                         ; 36A399/22
    DECPOSE     WAIT #9                     ; 36A39A/89
L_36A39B:
    ASMCALL     $A851                       ; 36A39B/D051A8
    SPRITEMAP   $358EA6                     ; 36A39E/1AA68E35
    ASMCALL     $DE4B                       ; 36A3A2/D04BDE // Play sound effect
    .byte       $18                         ; 36A3A5/18
    LOOP        #5                          ; 36A3A6/0105
        SETPOSE     #$04                        ; 36A3A8/5004
        SETXVEL     #$0100, WAIT #2             ; 36A3AA/B20001
L_36A3AD:
        SETXVEL     #$FF00, WAIT #2             ; 36A3AD/B200FF
L_36A3B0:
    ENDLOOP                                 ; 36A3B0/02
    ZEROVEL                                 ; 36A3B1/38
    ASMCALL     $DE4B, WAIT #1              ; 36A3B2/D14BDE // Play sound effect
    .byte       $FF                         ; 36A3B5/FF
L_36A3B6:
    ASMCALL     $DE4B                       ; 36A3B6/D04BDE // Play sound effect
    .byte       $48                         ; 36A3B9/48
    INCPOSE     WAIT #2                     ; 36A3BA/72
L_36A3BB:
    INCPOSE                                 ; 36A3BB/70
    WAIT        #16                         ; 36A3BC/0610
L_36A3BE:
    INCPOSE                                 ; 36A3BE/70
    WAIT        #18                         ; 36A3BF/0612
L_36A3C1:
    ASMCALL     $DE4B                       ; 36A3C1/D04BDE // Play sound effect
    .byte       $23                         ; 36A3C4/23
    SETXVEL     #$FD00                      ; 36A3C5/B000FD
    SETYVEL     #$FE00, WAIT #4             ; 36A3C8/C400FE
L_36A3CB:
    SETYVEL     #$FF00, WAIT #4             ; 36A3CB/C400FF
L_36A3CE:
    SETYVEL     #$0100, WAIT #4             ; 36A3CE/C40001
L_36A3D1:
    SETYVEL     #$0200, WAIT #4             ; 36A3D1/C40002
L_36A3D4:
    ZEROVEL                                 ; 36A3D4/38
    ASMCALL     $DE4B                       ; 36A3D5/D04BDE // Play sound effect
    .byte       $0E                         ; 36A3D8/0E
    WAIT        #17                         ; 36A3D9/0611
L_36A3DB:
    ASMCALL     $A845                       ; 36A3DB/D045A8
    SPRITEMAP   $358EB6                     ; 36A3DE/1AB68E35
    SETPOSE     #$09                        ; 36A3E2/5009
    HALT                                    ; 36A3E4/09

L_36A3E5:
    ASMCALL     $DE4B                       ; 36A3E5/D04BDE // Play sound effect
    .byte       $22                         ; 36A3E8/22
    UNK37       #$02,#$00                   ; 36A3E9/370200
    WAIT        #2                          ; 36A3EC/0602
L_36A3EE:
    LOOP        #2                          ; 36A3EE/0102
        A_JSR       L_36A42F                    ; 36A3F0/182FA4
    ENDLOOP                                 ; 36A3F3/02
    UNK37       #$FE,#$FF                   ; 36A3F4/37FEFF
    WAIT        #2                          ; 36A3F7/0602
L_36A3F9:
    ENDTASK                                 ; 36A3F9/0C

L_36A3FA:
    ASMCALL     $DE4B                       ; 36A3FA/D04BDE // Play sound effect
    .byte       $22                         ; 36A3FD/22
    UNK37       #$02,#$00                   ; 36A3FE/370200
    WAIT        #2                          ; 36A401/0602
L_36A403:
    A_JSR       L_36A42F                    ; 36A403/182FA4
    UNK37       #$FE,#$FF                   ; 36A406/37FEFF
    WAIT        #2                          ; 36A409/0602
L_36A40B:
    WAIT        #16                         ; 36A40B/0610
L_36A40D:
    ASMCALL     $DE4B                       ; 36A40D/D04BDE // Play sound effect
    .byte       $22                         ; 36A410/22
    UNK37       #$02,#$00                   ; 36A411/370200
    WAIT        #2                          ; 36A414/0602
L_36A416:
    LOOP        #2                          ; 36A416/0102
        UNK36       #$02,#$00                   ; 36A418/360200
        UNK37       #$FE,#$FF                   ; 36A41B/37FEFF
        WAIT        #2                          ; 36A41E/0602
L_36A420:
        UNK36       #$FE,#$FF                   ; 36A420/36FEFF
        UNK37       #$02,#$00                   ; 36A423/370200
        WAIT        #2                          ; 36A426/0602
L_36A428:
    ENDLOOP                                 ; 36A428/02
    UNK37       #$FE,#$FF                   ; 36A429/37FEFF
    WAIT        #2                          ; 36A42C/0602
L_36A42E:
    ENDTASK                                 ; 36A42E/0C

L_36A42F:
    UNK36       #$02,#$00                   ; 36A42F/360200
    UNK37       #$FC,#$FF                   ; 36A432/37FCFF
    WAIT        #2                          ; 36A435/0602
L_36A437:
    UNK36       #$FC,#$FF                   ; 36A437/36FCFF
    UNK37       #$04,#$00                   ; 36A43A/370400
    WAIT        #2                          ; 36A43D/0602
L_36A43F:
    UNK36       #$04,#$00                   ; 36A43F/360400
    UNK37       #$FE,#$FF                   ; 36A442/37FEFF
    WAIT        #2                          ; 36A445/0602
L_36A447:
    UNK36       #$FC,#$FF                   ; 36A447/36FCFF
    UNK37       #$00,#$00                   ; 36A44A/370000
    WAIT        #2                          ; 36A44D/0602
L_36A44F:
    UNK36       #$04,#$00                   ; 36A44F/360400
    UNK37       #$02,#$00                   ; 36A452/370200
    WAIT        #2                          ; 36A455/0602
L_36A457:
    UNK36       #$FC,#$FF                   ; 36A457/36FCFF
    UNK37       #$FC,#$FF                   ; 36A45A/37FCFF
    WAIT        #2                          ; 36A45D/0602
L_36A45F:
    UNK36       #$02,#$00                   ; 36A45F/360200
    UNK37       #$04,#$00                   ; 36A462/370400
    WAIT        #2                          ; 36A465/0602
L_36A467:
    A_RTS                                   ; 36A467/19

L_36A468:
    MOV         VAR3,#$10                   ; 36A468/0D0310
    A_JMP       L_36A471                    ; 36A46B/1771A4

L_36A46E:
    MOV         VAR3,#$40                   ; 36A46E/0D0340
L_36A471:
    MOV         $0044,#$00                  ; 36A471/11440000
    SPRITEMAP   $359397                     ; 36A475/1A979335
    SETZPOS     #$00FF                      ; 36A479/3AFF00
    MOV         REG,VAR3                    ; 36A47C/1E03
    LOOP        REG                         ; 36A47E/22
        ASMCALL     $A48F                       ; 36A47F/D08FA4
        SETPOSE     #$00, WAIT #2               ; 36A482/5200
L_36A484:
        ASMCALL     $DE4B                       ; 36A484/D04BDE // Play sound effect
        .byte       $37                         ; 36A487/37
        INCPOSE     WAIT #2                     ; 36A488/72
L_36A489:
        ASMCALL     $DE4B                       ; 36A489/D04BDE // Play sound effect
        .byte       $37                         ; 36A48C/37
    ENDLOOP                                 ; 36A48D/02
    END                                     ; 36A48E/00

; CODE OR DATA -- $36A48F .. $36A4C4
incbinRange "../split/prg/bank36.bin", $048F, $04C4

L_36A4C4:
    ASMCALL     $DE45                       ; 36A4C4/D045DE // Play music
    .byte       $34                         ; 36A4C7/34
    SETXPOS     #$0280                      ; 36A4C8/2A8002
    SETYPOS     #$007F                      ; 36A4CB/2B7F00
    SPRITEMAP   $35918D                     ; 36A4CE/1A8D9135
    TASK        L_36A281                    ; 36A4D2/0781A2
    LOOP        #7                          ; 36A4D5/0107
        SETPOSE     #$00                        ; 36A4D7/5000
        SETYVEL     #$FFC0, WAIT #2             ; 36A4D9/C2C0FF
L_36A4DC:
        SETPOSE     #$FF, WAIT #2               ; 36A4DC/52FF
L_36A4DE:
    ENDLOOP                                 ; 36A4DE/02
    LOOP        #7                          ; 36A4DF/0107
        SETPOSE     #$00                        ; 36A4E1/5000
        SETYVEL     #$FFC0, WAIT #2             ; 36A4E3/C2C0FF
L_36A4E6:
        SETPOSE     #$01, WAIT #2               ; 36A4E6/5201
L_36A4E8:
    ENDLOOP                                 ; 36A4E8/02
    LOOP        #7                          ; 36A4E9/0107
        SETPOSE     #$02                        ; 36A4EB/5002
        SETYVEL     #$FFC0, WAIT #2             ; 36A4ED/C2C0FF
L_36A4F0:
        SETPOSE     #$01, WAIT #2               ; 36A4F0/5201
L_36A4F2:
    ENDLOOP                                 ; 36A4F2/02
    ZEROVEL                                 ; 36A4F3/38
    LOOP        #3                          ; 36A4F4/0103
        SETPOSE     #$03                        ; 36A4F6/5003
        SETPOSE     #$04, WAIT #4               ; 36A4F8/5404
L_36A4FA:
        SETPOSE     #$05, WAIT #4               ; 36A4FA/5405
L_36A4FC:
        SETPOSE     #$06, WAIT #4               ; 36A4FC/5406
L_36A4FE:
    ENDLOOP                                 ; 36A4FE/02
    LOOP        #3                          ; 36A4FF/0103
        SETPOSE     #$03                        ; 36A501/5003
        SETYVEL     #$FFC0, WAIT #8             ; 36A503/C8C0FF
L_36A506:
        INCPOSE                                 ; 36A506/70
        SETYVEL     #$FFA0, WAIT #8             ; 36A507/C8A0FF
L_36A50A:
        INCPOSE                                 ; 36A50A/70
        SETYVEL     #$FFC0, WAIT #8             ; 36A50B/C8C0FF
L_36A50E:
        INCPOSE                                 ; 36A50E/70
        SETYVEL     #$0000, WAIT #8             ; 36A50F/C80000
L_36A512:
        SETPOSE     #$03                        ; 36A512/5003
        SETYVEL     #$0040, WAIT #8             ; 36A514/C84000
L_36A517:
        INCPOSE                                 ; 36A517/70
        SETYVEL     #$0060, WAIT #8             ; 36A518/C86000
L_36A51B:
        INCPOSE                                 ; 36A51B/70
        SETYVEL     #$0040, WAIT #8             ; 36A51C/C84000
L_36A51F:
        INCPOSE                                 ; 36A51F/70
        SETYVEL     #$0000, WAIT #8             ; 36A520/C80000
L_36A523:
    ENDLOOP                                 ; 36A523/02
    ASMCALL     $DE4B                       ; 36A524/D04BDE // Play sound effect
    .byte       $36                         ; 36A527/36
    SETPOSE     #$03                        ; 36A528/5003
    SETXVEL     #$FC00                      ; 36A52A/B000FC
    SETYVEL     #$FE00, WAIT #4             ; 36A52D/C400FE
L_36A530:
    SETPOSE     #$04                        ; 36A530/5004
    SETYVEL     #$FF00, WAIT #4             ; 36A532/C400FF
L_36A535:
    SETPOSE     #$05                        ; 36A535/5005
    SETYVEL     #$FFE0, WAIT #4             ; 36A537/C4E0FF
L_36A53A:
    SETPOSE     #$06                        ; 36A53A/5006
    SETXVEL     #$FE00                      ; 36A53C/B000FE
    SETYVEL     #$0080, WAIT #4             ; 36A53F/C48000
L_36A542:
    SETPOSE     #$03                        ; 36A542/5003
    SETXVEL     #$FE00                      ; 36A544/B000FE
    SETYVEL     #$0100, WAIT #4             ; 36A547/C40001
L_36A54A:
    SETPOSE     #$04                        ; 36A54A/5004
    SETYVEL     #$0200, WAIT #4             ; 36A54C/C40002
L_36A54F:
    SETPOSE     #$05                        ; 36A54F/5005
    SETXVEL     #$FF00                      ; 36A551/B000FF
    SETYVEL     #$0100, WAIT #4             ; 36A554/C40001
L_36A557:
    SETPOSE     #$06                        ; 36A557/5006
    SETYVEL     #$0100, WAIT #4             ; 36A559/C40001
L_36A55C:
    SETPOSE     #$03, WAIT #4               ; 36A55C/5403
L_36A55E:
    SETPOSE     #$04                        ; 36A55E/5004
    SETXVEL     #$FF80                      ; 36A560/B080FF
    SETYVEL     #$0080, WAIT #4             ; 36A563/C48000
L_36A566:
    SETPOSE     #$05, WAIT #4               ; 36A566/5405
L_36A568:
    SETPOSE     #$06, WAIT #4               ; 36A568/5406
L_36A56A:
    SETPOSE     #$03                        ; 36A56A/5003
    SETXVEL     #$FFE0                      ; 36A56C/B0E0FF
    SETYVEL     #$0020, WAIT #4             ; 36A56F/C42000
L_36A572:
    SETPOSE     #$04, WAIT #4               ; 36A572/5404
L_36A574:
    SETPOSE     #$05                        ; 36A574/5005
    SETXVEL     #$FFF8                      ; 36A576/B0F8FF
    SETYVEL     #$0020, WAIT #4             ; 36A579/C42000
L_36A57C:
    SETPOSE     #$06                        ; 36A57C/5006
    SETYVEL     #$0008, WAIT #4             ; 36A57E/C40800
L_36A581:
    SETPOSE     #$03                        ; 36A581/5003
    SETXVEL     #$0008, WAIT #4             ; 36A583/B40800
L_36A586:
    SETPOSE     #$04                        ; 36A586/5004
    SETXVEL     #$0020                      ; 36A588/B02000
    SETYVEL     #$FFF8, WAIT #4             ; 36A58B/C4F8FF
L_36A58E:
    SETPOSE     #$05                        ; 36A58E/5005
    SETXVEL     #$0080                      ; 36A590/B08000
    SETYVEL     #$FFF8, WAIT #4             ; 36A593/C4F8FF
L_36A596:
    ASMCALL     $DE4B                       ; 36A596/D04BDE // Play sound effect
    .byte       $36                         ; 36A599/36
    SETPOSE     #$06                        ; 36A59A/5006
    SETXVEL     #$0100                      ; 36A59C/B00001
    SETYVEL     #$FFE0, WAIT #4             ; 36A59F/C4E0FF
L_36A5A2:
    SETPOSE     #$03                        ; 36A5A2/5003
    SETXVEL     #$0200                      ; 36A5A4/B00002
    SETYVEL     #$FF80, WAIT #4             ; 36A5A7/C480FF
L_36A5AA:
    SETPOSE     #$04                        ; 36A5AA/5004
    SETXVEL     #$0400                      ; 36A5AC/B00004
    SETYVEL     #$FF00, WAIT #4             ; 36A5AF/C400FF
L_36A5B2:
    SETPOSE     #$05                        ; 36A5B2/5005
    SETXVEL     #$0800                      ; 36A5B4/B00008
    SETYVEL     #$FE00, WAIT #4             ; 36A5B7/C400FE
L_36A5BA:
    SETPOSE     #$06                        ; 36A5BA/5006
    SETYVEL     #$FC00, WAIT #4             ; 36A5BC/C400FC
L_36A5BF:
    SETPOSE     #$03                        ; 36A5BF/5003
    SETXVEL     #$1000                      ; 36A5C1/B00010
    SETYVEL     #$F800, WAIT #4             ; 36A5C4/C400F8
L_36A5C7:
    SETPOSE     #$04                        ; 36A5C7/5004
    SETYVEL     #$F000, WAIT #4             ; 36A5C9/C400F0
L_36A5CC:
    ZEROVEL                                 ; 36A5CC/38
    SETPOSE     #$FF                        ; 36A5CD/50FF
L_36A5CF:
    HALT                                    ; 36A5CF/09

L_36A5D0:
    HALT                                    ; 36A5D0/09

L_36A5D1:
    SETXPOS     #$0280                      ; 36A5D1/2A8002
    SETYPOS     #$0064                      ; 36A5D4/2B6400
    SETZPOS     #$00FF                      ; 36A5D7/3AFF00
    SPRITEMAP   $358CFD                     ; 36A5DA/1AFD8C35
    SETPOSE     #$00                        ; 36A5DE/5000
    WAIT        #200                        ; 36A5E0/06C8
L_36A5E2:
    WAIT        #31                         ; 36A5E2/061F
L_36A5E4:
    TASK        L_36A651                    ; 36A5E4/0751A6
    ASMCALL     $DE4B                       ; 36A5E7/D04BDE // Play sound effect
    .byte       $0B                         ; 36A5EA/0B
    SETXVEL     #$FF80                      ; 36A5EB/B080FF
    SETYVEL     #$FE00, WAIT #8             ; 36A5EE/C800FE
L_36A5F1:
    SETYVEL     #$FFE0, WAIT #8             ; 36A5F1/C8E0FF
L_36A5F4:
    SETYVEL     #$0020, WAIT #8             ; 36A5F4/C82000
L_36A5F7:
    SETYVEL     #$0200, WAIT #8             ; 36A5F7/C80002
L_36A5FA:
    SETXVEL     #$FFE0                      ; 36A5FA/B0E0FF
    SETYVEL     #$0400, WAIT #8             ; 36A5FD/C80004
L_36A600:
    WAIT        #8                          ; 36A600/0608
L_36A602:
    WAIT        #5                          ; 36A602/0605
L_36A604:
    ASMCALL     $DE4B                       ; 36A604/D04BDE // Play sound effect
    .byte       $41                         ; 36A607/41
    SETXVEL     #$0000                      ; 36A608/B00000
    SETYVEL     #$FC00, WAIT #8             ; 36A60B/C800FC
L_36A60E:
    SETYVEL     #$FE00, WAIT #8             ; 36A60E/C800FE
L_36A611:
    SETYVEL     #$FF00, WAIT #8             ; 36A611/C800FF
L_36A614:
    ZEROVEL                                 ; 36A614/38
    WAIT        #16                         ; 36A615/0610
L_36A617:
    SETYVEL     #$0100, WAIT #8             ; 36A617/C80001
L_36A61A:
    SETYVEL     #$0200, WAIT #8             ; 36A61A/C80002
L_36A61D:
    SETYVEL     #$0400, WAIT #8             ; 36A61D/C80004
L_36A620:
    ASMCALL     $DE4B                       ; 36A620/D04BDE // Play sound effect
    .byte       $41                         ; 36A623/41
    SETYVEL     #$FE00, WAIT #8             ; 36A624/C800FE
L_36A627:
    SETYVEL     #$FF00, WAIT #8             ; 36A627/C800FF
L_36A62A:
    SETYVEL     #$0100, WAIT #8             ; 36A62A/C80001
L_36A62D:
    SETYVEL     #$0200, WAIT #9             ; 36A62D/C90002
L_36A630:
    ZEROVEL                                 ; 36A630/38
    ASMCALL     $DE4B                       ; 36A631/D04BDE // Play sound effect
    .byte       $54                         ; 36A634/54
    WAIT        #5                          ; 36A635/0605
L_36A637:
    ENDLASTTASK                             ; 36A637/12
    SETPOSE     #$01                        ; 36A638/5001
    WAIT        #240                        ; 36A63A/06F0
L_36A63C:
    WAIT        #96                         ; 36A63C/0660
L_36A63E:
    WAIT        #60                         ; 36A63E/063C
L_36A640:
    SETZPOS     #$00FC                      ; 36A640/3AFC00
    TASK        L_36A651                    ; 36A643/0751A6
    SETXVEL     #$0400                      ; 36A646/B00004
    SETYVEL     #$FF80, WAIT #6             ; 36A649/C680FF
L_36A64C:
    ZEROVEL                                 ; 36A64C/38
    ENDLASTTASK                             ; 36A64D/12
    SETPOSE     #$FF                        ; 36A64E/50FF
    HALT                                    ; 36A650/09

L_36A651:
    SETPOSE     #$01, WAIT #1               ; 36A651/5101
L_36A653:
    INCPOSE     WAIT #1                     ; 36A653/71
L_36A654:
    INCPOSE     WAIT #1                     ; 36A654/71
L_36A655:
    INCPOSE     WAIT #1                     ; 36A655/71
L_36A656:
    INCPOSE     WAIT #1                     ; 36A656/71
L_36A657:
    INCPOSE     WAIT #1                     ; 36A657/71
L_36A658:
    INCPOSE     WAIT #1                     ; 36A658/71
L_36A659:
    INCPOSE     WAIT #1                     ; 36A659/71
L_36A65A:
    INCPOSE     WAIT #1                     ; 36A65A/71
L_36A65B:
    INCPOSE     WAIT #1                     ; 36A65B/71
L_36A65C:
    INCPOSE     WAIT #1                     ; 36A65C/71
L_36A65D:
    INCPOSE     WAIT #1                     ; 36A65D/71
L_36A65E:
    INCPOSE     WAIT #1                     ; 36A65E/71
L_36A65F:
    INCPOSE     WAIT #1                     ; 36A65F/71
L_36A660:
    A_JMP       L_36A651                    ; 36A660/1751A6

L_36A663:
    SETXPOS     #$02B0                      ; 36A663/2AB002
    SETYPOS     #$0038                      ; 36A666/2B3800
    A_JMP       L_36A68D                    ; 36A669/178DA6

L_36A66C:
    SETXPOS     #$0220                      ; 36A66C/2A2002
    SETYPOS     #$0050                      ; 36A66F/2B5000
    SETPOSE     #$FF, WAIT #3               ; 36A672/53FF
L_36A674:
    A_JMP       L_36A68D                    ; 36A674/178DA6

L_36A677:
    SETXPOS     #$02E0                      ; 36A677/2AE002
    SETYPOS     #$0050                      ; 36A67A/2B5000
    SETPOSE     #$FF, WAIT #6               ; 36A67D/56FF
L_36A67F:
    A_JMP       L_36A68D                    ; 36A67F/178DA6

L_36A682:
    SETXPOS     #$0250                      ; 36A682/2A5002
    SETYPOS     #$0038                      ; 36A685/2B3800
    SETPOSE     #$FF, WAIT #9               ; 36A688/59FF
L_36A68A:
    A_JMP       L_36A68D                    ; 36A68A/178DA6

L_36A68D:
    SPRITEMAP   $359282                     ; 36A68D/1A829235
    ONTICK      $36A817                     ; 36A691/0817A836
L_36A695:
    SETPOSE     #$FF, WAIT #3               ; 36A695/53FF
L_36A697:
    SETPOSE     #$00, WAIT #1               ; 36A697/5100
L_36A699:
    SETPOSE     #$FF, WAIT #3               ; 36A699/53FF
L_36A69B:
    SETPOSE     #$01, WAIT #1               ; 36A69B/5101
L_36A69D:
    A_JMP       L_36A695                    ; 36A69D/1795A6

L_36A6A0:
    SETPOSE     #$02, WAIT #1               ; 36A6A0/5102
L_36A6A2:
    SETPOSE     #$FF, WAIT #3               ; 36A6A2/53FF
L_36A6A4:
    LOOP        #2                          ; 36A6A4/0102
        SETPOSE     #$03, WAIT #1               ; 36A6A6/5103
L_36A6A8:
        SETPOSE     #$FF, WAIT #3               ; 36A6A8/53FF
L_36A6AA:
    ENDLOOP                                 ; 36A6AA/02
    SETPOSE     #$02, WAIT #1               ; 36A6AB/5102
L_36A6AD:
    SETPOSE     #$FF, WAIT #3               ; 36A6AD/53FF
L_36A6AF:
    LOOP        #2                          ; 36A6AF/0102
        SETPOSE     #$04, WAIT #1               ; 36A6B1/5104
L_36A6B3:
        SETPOSE     #$FF, WAIT #3               ; 36A6B3/53FF
L_36A6B5:
    ENDLOOP                                 ; 36A6B5/02
    SETPOSE     #$03, WAIT #1               ; 36A6B6/5103
L_36A6B8:
    SETPOSE     #$FF, WAIT #3               ; 36A6B8/53FF
L_36A6BA:
    LOOP        #2                          ; 36A6BA/0102
        SETPOSE     #$05, WAIT #1               ; 36A6BC/5105
L_36A6BE:
        SETPOSE     #$FF, WAIT #3               ; 36A6BE/53FF
L_36A6C0:
    ENDLOOP                                 ; 36A6C0/02
    SETPOSE     #$04, WAIT #1               ; 36A6C1/5104
L_36A6C3:
    SETPOSE     #$FF, WAIT #3               ; 36A6C3/53FF
L_36A6C5:
    LOOP        #2                          ; 36A6C5/0102
        SETPOSE     #$05, WAIT #1               ; 36A6C7/5105
L_36A6C9:
        SETPOSE     #$FF, WAIT #3               ; 36A6C9/53FF
L_36A6CB:
    ENDLOOP                                 ; 36A6CB/02
L_36A6CC:
    SETPOSE     #$FF                        ; 36A6CC/50FF
    END                                     ; 36A6CE/00

L_36A6CF:
    SETXPOS     #$0281                      ; 36A6CF/2A8102
    SETYPOS     #$0088                      ; 36A6D2/2B8800
    SPRITEMAP   $359310                     ; 36A6D5/1A109335
    ONTICK      $36A817                     ; 36A6D9/0817A836
L_36A6DD:
    SETPOSE     #$00, WAIT #1               ; 36A6DD/5100
L_36A6DF:
    INCPOSE     WAIT #1                     ; 36A6DF/71
L_36A6E0:
    INCPOSE     WAIT #1                     ; 36A6E0/71
L_36A6E1:
    INCPOSE     WAIT #1                     ; 36A6E1/71
L_36A6E2:
    INCPOSE     WAIT #1                     ; 36A6E2/71
L_36A6E3:
    A_JMP       L_36A6DD                    ; 36A6E3/17DDA6

; CODE OR DATA -- $36A6E6 .. $36AA8D
incbinRange "../split/prg/bank36.bin", $06E6, $0A8D

L_36AA8D:
    MOV         VAR0,#$00                   ; 36AA8D/0D0000
    MOV         VAR9,#$02                   ; 36AA90/0D0902
    MOV         REG,$07F3                   ; 36AA93/1CF307
    JEQ         L_36AAAC                    ; 36AA96/0AACAA
    SPRITEMAP   $37969B                     ; 36AA99/1A9B9637
    MOV         $07F3,#$00                  ; 36AA9D/11F30700
    SETXPOS     #$007F                      ; 36AAA1/2A7F00
    SETYPOS     #$017A                      ; 36AAA4/2B7A01
    SETPOSE     #$00                        ; 36AAA7/5000
    A_JMP       L_36AB1E                    ; 36AAA9/171EAB

L_36AAAC:
    MOV         VAR7,#$00                   ; 36AAAC/0D0700
    LOOP        #8                          ; 36AAAF/0108
        ASMCALL     $DED0, WAIT #1              ; 36AAB1/D1D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $04                         ; 36AAB4/04
        .byte       $12                         ; 36AAB5/12
        .byte       $69                         ; 36AAB6/69
        .byte       $00                         ; 36AAB7/00
        .byte       $00                         ; 36AAB8/00
        .byte       $00                         ; 36AAB9/00
        .byte       $03                         ; 36AABA/03
        .byte       $00                         ; 36AABB/00
L_36AABC:
        ADD         VAR7,#1                     ; 36AABC/13070201
    ENDLOOP                                 ; 36AAC0/02
    SETXPOS     #$007F                      ; 36AAC1/2A7F00
    SETYPOS     #$0100                      ; 36AAC4/2B0001
    SPRITEMAP   $37967D                     ; 36AAC7/1A7D9637
    SETPOSE     #$03                        ; 36AACB/5003
    TASK        L_36AC23                    ; 36AACD/0723AC
    SETXVEL     #$F800                      ; 36AAD0/B000F8
    SETYVEL     #$0800, WAIT #2             ; 36AAD3/C20008
L_36AAD6:
    SETYVEL     #$0400, WAIT #8             ; 36AAD6/C80004
L_36AAD9:
    SETXVEL     #$FA00, WAIT #2             ; 36AAD9/B200FA
L_36AADC:
    SETXVEL     #$FC00, WAIT #2             ; 36AADC/B200FC
L_36AADF:
    SETXVEL     #$FE00, WAIT #2             ; 36AADF/B200FE
L_36AAE2:
    SETXVEL     #$0200, WAIT #2             ; 36AAE2/B20002
L_36AAE5:
    SETXVEL     #$0400, WAIT #2             ; 36AAE5/B20004
L_36AAE8:
    SETXVEL     #$0600, WAIT #2             ; 36AAE8/B20006
L_36AAEB:
    SETXVEL     #$0800, WAIT #2             ; 36AAEB/B20008
L_36AAEE:
    SETXVEL     #$1000, WAIT #2             ; 36AAEE/B20010
L_36AAF1:
    SETXVEL     #$0800                      ; 36AAF1/B00008
    SETYVEL     #$0300, WAIT #2             ; 36AAF4/C20003
L_36AAF7:
    SETYVEL     #$0200, WAIT #2             ; 36AAF7/C20002
L_36AAFA:
    ENDLASTTASK                             ; 36AAFA/12
    ZEROVEL                                 ; 36AAFB/38
    SETXPOS     #$007F                      ; 36AAFC/2A7F00
    SETYPOS     #$017A                      ; 36AAFF/2B7A01
    SPRITEMAP   $37969B                     ; 36AB02/1A9B9637
    SETPOSE     #$00                        ; 36AB06/5000
    SETXVEL     #$0000                      ; 36AB08/B00000
    SETYVEL     #$F800, WAIT #1             ; 36AB0B/C100F8
L_36AB0E:
    SETYVEL     #$FC00, WAIT #1             ; 36AB0E/C100FC
L_36AB11:
    SETYVEL     #$FE00, WAIT #1             ; 36AB11/C100FE
L_36AB14:
    SETYVEL     #$0200, WAIT #1             ; 36AB14/C10002
L_36AB17:
    SETYVEL     #$0400, WAIT #1             ; 36AB17/C10004
L_36AB1A:
    SETYVEL     #$0800, WAIT #1             ; 36AB1A/C10008
L_36AB1D:
    ZEROVEL                                 ; 36AB1D/38
L_36AB1E:
    ONTICK      $36AC2F                     ; 36AB1E/082FAC36
L_36AB22:
    WAIT        #208                        ; 36AB22/06D0
L_36AB24:
    ASMCALL     $AC7C                       ; 36AB24/D07CAC
    TABLEJSR    #3                          ; 36AB27/1003
    .word       L_36AB3B                    ; 36AB29/3BAB
    .word       L_36AB42                    ; 36AB2B/42AB
    .word       L_36AB49                    ; 36AB2D/49AB
    ZEROVEL                                 ; 36AB2F/38
    SETXPOS     #$007F                      ; 36AB30/2A7F00
    SETYPOS     #$017A                      ; 36AB33/2B7A01
    SETPOSE     #$00                        ; 36AB36/5000
    A_JMP       L_36AB22                    ; 36AB38/1722AB

L_36AB3B:
    LOOP        #6                          ; 36AB3B/0106
        SETPOSE     #$01, WAIT #6               ; 36AB3D/5601
L_36AB3F:
        DECPOSE     WAIT #6                     ; 36AB3F/86
L_36AB40:
    ENDLOOP                                 ; 36AB40/02
    A_RTS                                   ; 36AB41/19

L_36AB42:
    LOOP        #2                          ; 36AB42/0102
        SETPOSE     #$00, WAIT #15              ; 36AB44/5F00
L_36AB46:
        INC2POSE    WAIT #6                     ; 36AB46/96
L_36AB47:
    ENDLOOP                                 ; 36AB47/02
    A_RTS                                   ; 36AB48/19

L_36AB49:
    LOOP        #9                          ; 36AB49/0109
        SETPOSE     #$01, WAIT #4               ; 36AB4B/5401
        DECPOSE     WAIT #4                     ; 36AB4D/84
    ENDLOOP                                 ; 36AB4E/02
    A_RTS                                   ; 36AB4F/19

; CODE OR DATA -- $36AB50 .. $36AB73
incbinRange "../split/prg/bank36.bin", $0B50, $0B73

L_36AB73:
    MOV         VAR7,#$00                   ; 36AB73/0D0700
    LOOP        #8                          ; 36AB76/0108
        ASMCALL     $DED0, WAIT #1              ; 36AB78/D1D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $04                         ; 36AB7B/04
        .byte       $12                         ; 36AB7C/12
        .byte       $69                         ; 36AB7D/69
        .byte       $00                         ; 36AB7E/00
        .byte       $00                         ; 36AB7F/00
        .byte       $00                         ; 36AB80/00
        .byte       $04                         ; 36AB81/04
        .byte       $00                         ; 36AB82/00
L_36AB83:
        ADD         VAR7,#1                     ; 36AB83/13070201
    ENDLOOP                                 ; 36AB87/02
    ONPOSITION  $D968                       ; 36AB88/2168D9
    ONMOVE      $D864                       ; 36AB8B/2364D8
    SETXPOS     #$007F                      ; 36AB8E/2A7F00
    SETYPOS     #$007A                      ; 36AB91/2B7A00
    MOV         VAR6,#$01                   ; 36AB94/0D0601
    SETPOSE     #$04                        ; 36AB97/5004
    WAIT        #30                         ; 36AB99/061E
L_36AB9B:
    SETXVEL     #$0100                      ; 36AB9B/B00001
    SETYVEL     #$FA00, WAIT #2             ; 36AB9E/C200FA
L_36ABA1:
    SETXVEL     #$0200                      ; 36ABA1/B00002
    SETYVEL     #$FC00, WAIT #2             ; 36ABA4/C200FC
L_36ABA7:
    SETXVEL     #$0300                      ; 36ABA7/B00003
    SETYVEL     #$FE00, WAIT #2             ; 36ABAA/C200FE
L_36ABAD:
    SETXVEL     #$0400                      ; 36ABAD/B00004
    SETYVEL     #$FF00, WAIT #2             ; 36ABB0/C200FF
L_36ABB3:
    SETXVEL     #$0400                      ; 36ABB3/B00004
    SETYVEL     #$0100, WAIT #2             ; 36ABB6/C20001
L_36ABB9:
    SETXVEL     #$0300                      ; 36ABB9/B00003
    SETYVEL     #$0200, WAIT #2             ; 36ABBC/C20002
L_36ABBF:
    SETXVEL     #$0100                      ; 36ABBF/B00001
    SETYVEL     #$0600, WAIT #2             ; 36ABC2/C20006
L_36ABC5:
    SETXVEL     #$FF00                      ; 36ABC5/B000FF
    SETYVEL     #$0800, WAIT #2             ; 36ABC8/C20008
L_36ABCB:
    SETXVEL     #$FF00                      ; 36ABCB/B000FF
    SETYVEL     #$0800, WAIT #2             ; 36ABCE/C20008
L_36ABD1:
    SETXVEL     #$FE00                      ; 36ABD1/B000FE
    SETYVEL     #$0600, WAIT #2             ; 36ABD4/C20006
L_36ABD7:
    SETXVEL     #$FC00                      ; 36ABD7/B000FC
    SETYVEL     #$0400, WAIT #2             ; 36ABDA/C20004
L_36ABDD:
    SETXVEL     #$FA00                      ; 36ABDD/B000FA
    SETYVEL     #$0200, WAIT #2             ; 36ABE0/C20002
L_36ABE3:
    SETXVEL     #$F800                      ; 36ABE3/B000F8
    SETYVEL     #$0100, WAIT #2             ; 36ABE6/C20001
L_36ABE9:
    SETXVEL     #$FA00                      ; 36ABE9/B000FA
    SETYVEL     #$FF00, WAIT #2             ; 36ABEC/C200FF
L_36ABEF:
    SETXVEL     #$FA00                      ; 36ABEF/B000FA
    SETYVEL     #$FF00, WAIT #2             ; 36ABF2/C200FF
L_36ABF5:
    SETXVEL     #$FC00                      ; 36ABF5/B000FC
    SETYVEL     #$FE00, WAIT #2             ; 36ABF8/C200FE
L_36ABFB:
    SETXVEL     #$FE00                      ; 36ABFB/B000FE
    SETYVEL     #$FC00, WAIT #2             ; 36ABFE/C200FC
L_36AC01:
    SETXVEL     #$FF00                      ; 36AC01/B000FF
    SETYVEL     #$FA00, WAIT #2             ; 36AC04/C200FA
L_36AC07:
    SETXVEL     #$0200                      ; 36AC07/B00002
    SETYVEL     #$F800, WAIT #4             ; 36AC0A/C400F8
L_36AC0D:
    SETXVEL     #$0600, WAIT #2             ; 36AC0D/B20006
L_36AC10:
    SETXVEL     #$0800, WAIT #12            ; 36AC10/BC0008
L_36AC13:
    ZEROVEL                                 ; 36AC13/38
    SETPOSE     #$FF                        ; 36AC14/50FF
    LOOP        #4                          ; 36AC16/0104
        ASMCALL     $C94C, WAIT #6              ; 36AC18/D64CC9 // Palette fade dark in step
L_36AC1B:
    ENDLOOP                                 ; 36AC1B/02
    MOV         VAR0,#$00                   ; 36AC1C/0D0000
    ASMCALL     $DF0D                       ; 36AC1F/D00DDF // Destroy all other objects
    END                                     ; 36AC22/00

L_36AC23:
    SETPOSE     #$03, WAIT #4               ; 36AC23/5403
L_36AC25:
    INCPOSE     WAIT #4                     ; 36AC25/74
L_36AC26:
    INCPOSE     WAIT #4                     ; 36AC26/74
L_36AC27:
    INCPOSE     WAIT #4                     ; 36AC27/74
L_36AC28:
    INCPOSE     WAIT #4                     ; 36AC28/74
L_36AC29:
    INCPOSE     WAIT #4                     ; 36AC29/74
L_36AC2A:
    INCPOSE     WAIT #4                     ; 36AC2A/74
L_36AC2B:
    INCPOSE     WAIT #4                     ; 36AC2B/74
    A_JMP       L_36AC23                    ; 36AC2C/1723AC

; CODE OR DATA -- $36AC2F .. $36AC96
incbinRange "../split/prg/bank36.bin", $0C2F, $0C96

Script6A_Story:
    MOV         REG,VAR0                    ; 36AC96/1E00
    TABLEJMP    #4                          ; 36AC98/0F04
    .word       L_36ACA2                    ; 36AC9A/A2AC
    .word       L_36AE0E                    ; 36AC9C/0EAE
    .word       L_36AFF6                    ; 36AC9E/F6AF
    .word       L_36B601                    ; 36ACA0/01B6
L_36ACA2:
    ASMCALL     $DF0D                       ; 36ACA2/D00DDF // Destroy all other objects
    ASMCALL     $AD7F                       ; 36ACA5/D07FAD
    ASMCALL     $DE51                       ; 36ACA8/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6A                         ; 36ACAB/6A
    .byte       $00                         ; 36ACAC/00
    .byte       $00                         ; 36ACAD/00
    .byte       $00                         ; 36ACAE/00
    .byte       $01                         ; 36ACAF/01
    .byte       $00                         ; 36ACB0/00
    MOV         VAR7,#$00                   ; 36ACB1/0D0700
    LOOP        #8                          ; 36ACB4/0108
        ASMCALL     $DE51, WAIT #1              ; 36ACB6/D151DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
        .byte       $6A                         ; 36ACB9/6A
        .byte       $00                         ; 36ACBA/00
        .byte       $00                         ; 36ACBB/00
        .byte       $00                         ; 36ACBC/00
        .byte       $02                         ; 36ACBD/02
        .byte       $00                         ; 36ACBE/00
L_36ACBF:
        ADD         VAR7,#1                     ; 36ACBF/13070201
    ENDLOOP                                 ; 36ACC3/02
    ASMCALL     Load_Palette                ; 36ACC4/D061DF // Load_Palette, palette, start_index, entries
    .word       $B5E1                       ; 36ACC7/E1B5
    .byte       $00                         ; 36ACC9/00
    .byte       $20                         ; 36ACCA/20
    SETXCAMERA  #$0000                      ; 36ACCB/300000
    SETYCAMERA  #$0000                      ; 36ACCE/310000
    MOV         VAR0,#$00                   ; 36ACD1/0D0000
    MOV         VAR3,#$00                   ; 36ACD4/0D0300
    MOV         VAR4,#$00                   ; 36ACD7/0D0400
    MOV         REG,VAR4                    ; 36ACDA/1E04
    JSL         L_2EA000                    ; 36ACDC/0400A02E
    LOOP        #4                          ; 36ACE0/0104
        ASMCALL     $C996, WAIT #6              ; 36ACE2/D696C9 // Palette fade (out?) step
L_36ACE5:
    ENDLOOP                                 ; 36ACE5/02
    ONTICK      $36ADEC                     ; 36ACE6/08ECAD36
    WAIT        #254                        ; 36ACEA/06FE
L_36ACEC:
    WAIT        #254                        ; 36ACEC/06FE
L_36ACEE:
    MOV         VAR9,#$00                   ; 36ACEE/0D0900
    A_JSR       L_36AD45                    ; 36ACF1/1845AD
    SETYCAMERA  #$0100                      ; 36ACF4/310001
    WAIT        #1                          ; 36ACF7/0601
L_36ACF9:
    TASK        L_36AD73                    ; 36ACF9/0773AD
    A_JSR       L_36AD57                    ; 36ACFC/1857AD
    MOV         VAR9,#$01                   ; 36ACFF/0D0901
    A_JSR       L_36AD45                    ; 36AD02/1845AD
    SETYCAMERA  #$0000                      ; 36AD05/310000
    WAIT        #1                          ; 36AD08/0601
L_36AD0A:
    ASMCALL     $B079                       ; 36AD0A/D079B0
    TASK        L_36AD73                    ; 36AD0D/0773AD
    A_JSR       L_36AD57                    ; 36AD10/1857AD
    MOV         VAR9,#$02                   ; 36AD13/0D0902
    A_JSR       L_36AD45                    ; 36AD16/1845AD
    MOV         $0046,#$F9                  ; 36AD19/114600F9
    SETYCAMERA  #$0100                      ; 36AD1D/310001
    WAIT        #1                          ; 36AD20/0601
L_36AD22:
    TASK        L_36AD73                    ; 36AD22/0773AD
    A_JSR       L_36AD57                    ; 36AD25/1857AD
    A_JSR       L_36AD45                    ; 36AD28/1845AD
    SETYCAMERA  #$0000                      ; 36AD2B/310000
    WAIT        #1                          ; 36AD2E/0601
L_36AD30:
    A_JSR       L_36AD57                    ; 36AD30/1857AD
    MOV         $07F2,#$01                  ; 36AD33/11F20701
    MOV         $07F3,#$01                  ; 36AD37/11F30701
    LOOP        #4                          ; 36AD3B/0104
        ASMCALL     $C94C, WAIT #6              ; 36AD3D/D64CC9 // Palette fade dark in step
L_36AD40:
    ENDLOOP                                 ; 36AD40/02
    ASMCALL     $DF0D                       ; 36AD41/D00DDF // Destroy all other objects
    END                                     ; 36AD44/00

L_36AD45:
    MOV         VAR7,#$00                   ; 36AD45/0D0700
    MOV         VAR6,#$03                   ; 36AD48/0D0603
    MOV         VAR8,#$03                   ; 36AD4B/0D0803
    JSL         L_2EA09E                    ; 36AD4E/049EA02E
    JSL         L_2EA004                    ; 36AD52/0404A02E
    A_RTS                                   ; 36AD56/19

L_36AD57:
    ADD         VAR4,#1                     ; 36AD57/13040201
    MOV         REG,VAR4                    ; 36AD5B/1E04
    JSL         L_2EA000                    ; 36AD5D/0400A02E
    MOV         VAR7,#$01                   ; 36AD61/0D0701
    MOV         VAR6,#$00                   ; 36AD64/0D0600
    MOV         VAR8,#$00                   ; 36AD67/0D0800
    JSL         L_2EA09E                    ; 36AD6A/049EA02E
    WAIT        #254                        ; 36AD6E/06FE
L_36AD70:
    WAIT        #254                        ; 36AD70/06FE
L_36AD72:
    A_RTS                                   ; 36AD72/19

L_36AD73:
    ASMCALL     $B070                       ; 36AD73/D070B0
    LOOP        #32                         ; 36AD76/0120
        WAIT        #1                          ; 36AD78/0601
L_36AD7A:
        ASMCALL     $B0C5                       ; 36AD7A/D0C5B0
    ENDLOOP                                 ; 36AD7D/02
    ENDTASK                                 ; 36AD7E/0C

; CODE OR DATA -- $36AD7F .. $36AE0E
incbinRange "../split/prg/bank36.bin", $0D7F, $0E0E

L_36AE0E:
    ONMOVE      $D864                       ; 36AE0E/2364D8
    ONPOSITION  $D968                       ; 36AE11/2168D9
    SPRITEMAP   $37969B                     ; 36AE14/1A9B9637
    SETXPOS     #$0000                      ; 36AE18/2A0000
    SETYPOS     #$00B0                      ; 36AE1B/2BB000
    SETZPOS     #$0081                      ; 36AE1E/3A8100
    SETXVEL     #$0400                      ; 36AE21/B00004
    SETYVEL     #$0100                      ; 36AE24/C00001
    SETPOSE     #$05, WAIT #6               ; 36AE27/5605
L_36AE29:
    WAIT        #8                          ; 36AE29/0608
L_36AE2B:
    SETYVEL     #$0080, WAIT #14            ; 36AE2B/CE8000
L_36AE2E:
    SETXVEL     #$0300                      ; 36AE2E/B00003
    SETYVEL     #$FF80, WAIT #4             ; 36AE31/C480FF
L_36AE34:
    SETXVEL     #$0200                      ; 36AE34/B00002
    SETYVEL     #$FF00, WAIT #4             ; 36AE37/C400FF
L_36AE3A:
    SETXVEL     #$0100                      ; 36AE3A/B00001
    SETYVEL     #$FEC0, WAIT #4             ; 36AE3D/C4C0FE
L_36AE40:
    SETXVEL     #$0080                      ; 36AE40/B08000
    SETYVEL     #$FEC0, WAIT #4             ; 36AE43/C4C0FE
L_36AE46:
    SETXVEL     #$FF80, WAIT #4             ; 36AE46/B480FF
L_36AE49:
    SETXVEL     #$FF00                      ; 36AE49/B000FF
    SETYVEL     #$FEC0, WAIT #4             ; 36AE4C/C4C0FE
L_36AE4F:
    SETXVEL     #$FEC0                      ; 36AE4F/B0C0FE
    SETYVEL     #$FF00, WAIT #4             ; 36AE52/C400FF
L_36AE55:
    SETXVEL     #$FEC0                      ; 36AE55/B0C0FE
    SETYVEL     #$FF80, WAIT #4             ; 36AE58/C480FF
L_36AE5B:
    SETYVEL     #$0080, WAIT #4             ; 36AE5B/C48000
L_36AE5E:
    SETXVEL     #$FEC0                      ; 36AE5E/B0C0FE
    SETYVEL     #$0100, WAIT #4             ; 36AE61/C40001
L_36AE64:
    SETXVEL     #$FF00                      ; 36AE64/B000FF
    SETYVEL     #$0140, WAIT #4             ; 36AE67/C44001
L_36AE6A:
    SETXVEL     #$FF80                      ; 36AE6A/B080FF
    SETYVEL     #$0200, WAIT #4             ; 36AE6D/C40002
L_36AE70:
    SETXVEL     #$0080, WAIT #4             ; 36AE70/B48000
L_36AE73:
    SETXVEL     #$0100                      ; 36AE73/B00001
    SETYVEL     #$0140, WAIT #4             ; 36AE76/C44001
L_36AE79:
    SETXVEL     #$0140                      ; 36AE79/B04001
    SETYVEL     #$0100, WAIT #4             ; 36AE7C/C40001
L_36AE7F:
    SETXVEL     #$0200                      ; 36AE7F/B00002
    SETYVEL     #$0080, WAIT #4             ; 36AE82/C48000
L_36AE85:
    SETXVEL     #$0300                      ; 36AE85/B00003
    SETYVEL     #$FF80, WAIT #10            ; 36AE88/CA80FF
L_36AE8B:
    SETXVEL     #$0200, WAIT #8             ; 36AE8B/B80002
L_36AE8E:
    SETXVEL     #$0100                      ; 36AE8E/B00001
    SETYVEL     #$FF00                      ; 36AE91/C000FF
    WAIT        #16                         ; 36AE94/0610
L_36AE96:
    LOOP        #9                          ; 36AE96/0109
        SETXVEL     #$0000                      ; 36AE98/B00000
        SETYVEL     #$0080, WAIT #8             ; 36AE9B/C88000
L_36AE9E:
        SETYVEL     #$0100, WAIT #8             ; 36AE9E/C80001
L_36AEA1:
        SETYVEL     #$0080, WAIT #8             ; 36AEA1/C88000
L_36AEA4:
        SETYVEL     #$FF80, WAIT #8             ; 36AEA4/C880FF
L_36AEA7:
        SETYVEL     #$FF00, WAIT #8             ; 36AEA7/C800FF
L_36AEAA:
        SETYVEL     #$FF80, WAIT #8             ; 36AEAA/C880FF
L_36AEAD:
    ENDLOOP                                 ; 36AEAD/02
    LOOP        #11                         ; 36AEAE/010B
        SETXVEL     #$FF80                      ; 36AEB0/B080FF
        SETYVEL     #$0080, WAIT #8             ; 36AEB3/C88000
L_36AEB6:
        SETXVEL     #$FF00                      ; 36AEB6/B000FF
        SETYVEL     #$0100, WAIT #8             ; 36AEB9/C80001
L_36AEBC:
        SETXVEL     #$FE00, WAIT #8             ; 36AEBC/B800FE
L_36AEBF:
        SETXVEL     #$FC00                      ; 36AEBF/B000FC
        SETYVEL     #$0080, WAIT #8             ; 36AEC2/C88000
L_36AEC5:
        SETYVEL     #$FF80, WAIT #8             ; 36AEC5/C880FF
L_36AEC8:
        SETXVEL     #$FE00                      ; 36AEC8/B000FE
        SETYVEL     #$FF00, WAIT #8             ; 36AECB/C800FF
L_36AECE:
        SETXVEL     #$FF00, WAIT #8             ; 36AECE/B800FF
L_36AED1:
        SETXVEL     #$FF80                      ; 36AED1/B080FF
        SETYVEL     #$FF80, WAIT #8             ; 36AED4/C880FF
L_36AED7:
        SETXVEL     #$0080                      ; 36AED7/B08000
        SETYVEL     #$0080, WAIT #8             ; 36AEDA/C88000
L_36AEDD:
        SETXVEL     #$0100                      ; 36AEDD/B00001
        SETYVEL     #$0100, WAIT #8             ; 36AEE0/C80001
L_36AEE3:
        SETXVEL     #$0200, WAIT #8             ; 36AEE3/B80002
L_36AEE6:
        SETXVEL     #$0400                      ; 36AEE6/B00004
        SETYVEL     #$0080, WAIT #8             ; 36AEE9/C88000
L_36AEEC:
        SETYVEL     #$FF80, WAIT #8             ; 36AEEC/C880FF
L_36AEEF:
        SETXVEL     #$0200                      ; 36AEEF/B00002
        SETYVEL     #$FF00, WAIT #8             ; 36AEF2/C800FF
L_36AEF5:
        SETXVEL     #$0100, WAIT #8             ; 36AEF5/B80001
L_36AEF8:
        SETXVEL     #$0080                      ; 36AEF8/B08000
        SETYVEL     #$FF80, WAIT #8             ; 36AEFB/C880FF
L_36AEFE:
    ENDLOOP                                 ; 36AEFE/02
    SETXVEL     #$FF80                      ; 36AEFF/B080FF
    SETYVEL     #$0080, WAIT #8             ; 36AF02/C88000
L_36AF05:
    SETXVEL     #$FF00                      ; 36AF05/B000FF
    SETYVEL     #$0100, WAIT #8             ; 36AF08/C80001
L_36AF0B:
    SETXVEL     #$FE00, WAIT #8             ; 36AF0B/B800FE
L_36AF0E:
    SETXVEL     #$FC00                      ; 36AF0E/B000FC
    SETYVEL     #$0080, WAIT #8             ; 36AF11/C88000
L_36AF14:
    SETYVEL     #$FF80, WAIT #8             ; 36AF14/C880FF
L_36AF17:
    SETXVEL     #$FE00                      ; 36AF17/B000FE
    SETYVEL     #$FF00, WAIT #8             ; 36AF1A/C800FF
L_36AF1D:
    SETXVEL     #$FF00, WAIT #8             ; 36AF1D/B800FF
L_36AF20:
    SETXVEL     #$FF80                      ; 36AF20/B080FF
    SETYVEL     #$FF80, WAIT #8             ; 36AF23/C880FF
L_36AF26:
    LOOP        #6                          ; 36AF26/0106
        SETXVEL     #$0000                      ; 36AF28/B00000
        SETYVEL     #$0080, WAIT #8             ; 36AF2B/C88000
L_36AF2E:
        SETYVEL     #$0100, WAIT #8             ; 36AF2E/C80001
L_36AF31:
        SETYVEL     #$0080, WAIT #8             ; 36AF31/C88000
L_36AF34:
        SETYVEL     #$FF80, WAIT #8             ; 36AF34/C880FF
L_36AF37:
        SETYVEL     #$FF00, WAIT #8             ; 36AF37/C800FF
L_36AF3A:
        SETYVEL     #$FF80, WAIT #8             ; 36AF3A/C880FF
L_36AF3D:
    ENDLOOP                                 ; 36AF3D/02
    SETYVEL     #$0080, WAIT #8             ; 36AF3E/C88000
L_36AF41:
    SETYVEL     #$0100, WAIT #8             ; 36AF41/C80001
L_36AF44:
    SETYVEL     #$0080, WAIT #8             ; 36AF44/C88000
L_36AF47:
    LOOP        #5                          ; 36AF47/0105
        SETXVEL     #$0100                      ; 36AF49/B00001
        SETYVEL     #$FEC0, WAIT #4             ; 36AF4C/C4C0FE
L_36AF4F:
        SETYVEL     #$FF00, WAIT #4             ; 36AF4F/C400FF
L_36AF52:
        SETYVEL     #$FF80, WAIT #4             ; 36AF52/C480FF
L_36AF55:
        SETYVEL     #$0080, WAIT #4             ; 36AF55/C48000
L_36AF58:
        SETYVEL     #$0100, WAIT #4             ; 36AF58/C40001
L_36AF5B:
        SETYVEL     #$0140, WAIT #4             ; 36AF5B/C44001
L_36AF5E:
        ZEROVEL                                 ; 36AF5E/38
        WAIT        #4                          ; 36AF5F/0604
L_36AF61:
    ENDLOOP                                 ; 36AF61/02
    SETXVEL     #$FF00                      ; 36AF62/B000FF
    SETYVEL     #$FEC0, WAIT #4             ; 36AF65/C4C0FE
L_36AF68:
    SETYVEL     #$FF00, WAIT #4             ; 36AF68/C400FF
L_36AF6B:
    SETYVEL     #$FF80, WAIT #4             ; 36AF6B/C480FF
L_36AF6E:
    SETYVEL     #$0080, WAIT #4             ; 36AF6E/C48000
L_36AF71:
    SETYVEL     #$0100, WAIT #4             ; 36AF71/C40001
L_36AF74:
    SETYVEL     #$0140, WAIT #4             ; 36AF74/C44001
L_36AF77:
    ZEROVEL                                 ; 36AF77/38
    WAIT        #8                          ; 36AF78/0608
L_36AF7A:
    LOOP        #5                          ; 36AF7A/0105
        SETXVEL     #$FE00, WAIT #8             ; 36AF7C/B800FE
L_36AF7F:
        SETXVEL     #$0000, WAIT #8             ; 36AF7F/B80000
L_36AF82:
    ENDLOOP                                 ; 36AF82/02
    WAIT        #8                          ; 36AF83/0608
L_36AF85:
    SETYVEL     #$0080, WAIT #4             ; 36AF85/C48000
L_36AF88:
    SETYVEL     #$0100, WAIT #4             ; 36AF88/C40001
L_36AF8B:
    SETXVEL     #$0400, WAIT #4             ; 36AF8B/B40004
L_36AF8E:
    SETYVEL     #$0080, WAIT #4             ; 36AF8E/C48000
L_36AF91:
    SETXVEL     #$0300                      ; 36AF91/B00003
    SETYVEL     #$FF80, WAIT #4             ; 36AF94/C480FF
L_36AF97:
    SETXVEL     #$0200                      ; 36AF97/B00002
    SETYVEL     #$FF00, WAIT #4             ; 36AF9A/C400FF
L_36AF9D:
    SETXVEL     #$0100                      ; 36AF9D/B00001
    SETYVEL     #$FEC0, WAIT #4             ; 36AFA0/C4C0FE
L_36AFA3:
    SETXVEL     #$0080                      ; 36AFA3/B08000
    SETYVEL     #$FEC0, WAIT #4             ; 36AFA6/C4C0FE
L_36AFA9:
    SETXVEL     #$FF80, WAIT #4             ; 36AFA9/B480FF
L_36AFAC:
    SETXVEL     #$FF00                      ; 36AFAC/B000FF
    SETYVEL     #$FEC0, WAIT #4             ; 36AFAF/C4C0FE
L_36AFB2:
    SETXVEL     #$FEC0                      ; 36AFB2/B0C0FE
    SETYVEL     #$FF00, WAIT #4             ; 36AFB5/C400FF
L_36AFB8:
    SETXVEL     #$FEC0                      ; 36AFB8/B0C0FE
    SETYVEL     #$FF80, WAIT #4             ; 36AFBB/C480FF
L_36AFBE:
    SETYVEL     #$0080, WAIT #4             ; 36AFBE/C48000
L_36AFC1:
    SETXVEL     #$FEC0                      ; 36AFC1/B0C0FE
    SETYVEL     #$0100, WAIT #4             ; 36AFC4/C40001
L_36AFC7:
    SETXVEL     #$FF00                      ; 36AFC7/B000FF
    SETYVEL     #$0140, WAIT #4             ; 36AFCA/C44001
L_36AFCD:
    SETXVEL     #$FF80                      ; 36AFCD/B080FF
    SETYVEL     #$0200, WAIT #4             ; 36AFD0/C40002
L_36AFD3:
    SETXVEL     #$0080, WAIT #4             ; 36AFD3/B48000
L_36AFD6:
    SETXVEL     #$0100                      ; 36AFD6/B00001
    SETYVEL     #$0140, WAIT #4             ; 36AFD9/C44001
L_36AFDC:
    SETXVEL     #$0200                      ; 36AFDC/B00002
    SETYVEL     #$0100, WAIT #4             ; 36AFDF/C40001
L_36AFE2:
    SETXVEL     #$0300                      ; 36AFE2/B00003
    SETYVEL     #$0080, WAIT #4             ; 36AFE5/C48000
L_36AFE8:
    SETXVEL     #$0400, WAIT #4             ; 36AFE8/B40004
L_36AFEB:
    SETYVEL     #$FF80, WAIT #2             ; 36AFEB/C280FF
L_36AFEE:
    WAIT        #8                          ; 36AFEE/0608
L_36AFF0:
    SETYVEL     #$FF00                      ; 36AFF0/C000FF
    WAIT        #16                         ; 36AFF3/0610
L_36AFF5:
    END                                     ; 36AFF5/00

L_36AFF6:
    ONMOVE      $D864                       ; 36AFF6/2364D8
    ONPOSITION  $D968                       ; 36AFF9/2168D9
    SETZPOS     #$0080                      ; 36AFFC/3A8000
    SPRITEMAP   $37967D                     ; 36AFFF/1A7D9637
    SETPOSE     #$FF                        ; 36B003/50FF
    ASMCALL     $B0ED                       ; 36B005/D0EDB0
L_36B008:
    ASMCALL     $B016                       ; 36B008/D016B0
    SETXVEL     #$FF80                      ; 36B00B/B080FF
    SETYVEL     #$0080                      ; 36B00E/C08000
    ONTICK      $36B04F                     ; 36B011/084FB036
L_36B015:
    HALT                                    ; 36B015/09

; CODE OR DATA -- $36B016 .. $36B601
incbinRange "../split/prg/bank36.bin", $1016, $1601

L_36B601:
    ONMOVE      $D864                       ; 36B601/2364D8
    ONPOSITION  $D968                       ; 36B604/2168D9
    SPRITEMAP   $3796A7                     ; 36B607/1AA79637
    SETZPOS     #$0081                      ; 36B60B/3A8100
L_36B60E:
    HALT                                    ; 36B60E/09

L_36B60F:
    SETBANK     #$22                        ; 36B60F/2822
    ASMCALL     $B897                       ; 36B611/D097B8
    ONPOSITION  $D97D                       ; 36B614/217DD9
    ASMCALL     $C086                       ; 36B617/D086C0 // Write 0xFF to $37 and wait a frame
    ONMOVE      $D920                       ; 36B61A/2320D9
    SPRITEMAP   $3793F2                     ; 36B61D/1AF29337
    MOV         REG,VAR0                    ; 36B621/1E00
    TABLEJMP    #17                         ; 36B623/0F11
    .word       L_36B8C0                    ; 36B625/C0B8
    .word       L_36BEEB                    ; 36B627/EBBE
    .word       L_36BC59                    ; 36B629/59BC
    .word       L_36BCB3                    ; 36B62B/B3BC
    .word       L_36BD0B                    ; 36B62D/0BBD
    .word       L_36BD73                    ; 36B62F/73BD
    .word       L_36BDB8                    ; 36B631/B8BD
    .word       L_36BDFE                    ; 36B633/FEBD
    .word       L_36BE38                    ; 36B635/38BE
    .word       L_36BEA5                    ; 36B637/A5BE
    .word       L_36BBD1                    ; 36B639/D1BB
    .word       L_36BBDA                    ; 36B63B/DABB
    .word       L_36BC17                    ; 36B63D/17BC
    .word       L_36BA5A                    ; 36B63F/5ABA
    .word       L_36B86C                    ; 36B641/6CB8
    .word       L_36B852                    ; 36B643/52B8
    .word       L_36B7D7                    ; 36B645/D7B7
L_36B647:
    SETBANK     #$22                        ; 36B647/2822
    ONMOVE      $D94B                       ; 36B649/234BD9
    ONDRAW      $DA89                       ; 36B64C/2089DA
    ASMCALL     $BF3A                       ; 36B64F/D03ABF
    ASMCALL     $C9A8                       ; 36B652/D0A8C9
    ONTICK      $23A49A                     ; 36B655/089AA423
    TASK        L_36B68C                    ; 36B659/078CB6
    TASK        L_36B698                    ; 36B65C/0798B6
    ASMCALL     $DE45                       ; 36B65F/D045DE // Play music
    .byte       $05                         ; 36B662/05
    ASMCALL     $B69F                       ; 36B663/D09FB6
    JEQ         L_36B66B                    ; 36B666/0A6BB6
    WAIT        #24                         ; 36B669/0618
L_36B66B:
    SETYVEL     #$FF00, WAIT #8             ; 36B66B/C800FF
L_36B66E:
    SETYVEL     #$FF80, WAIT #8             ; 36B66E/C880FF
L_36B671:
    SETYVEL     #$FFC0, WAIT #8             ; 36B671/C8C0FF
L_36B674:
    SETYVEL     #$0040, WAIT #8             ; 36B674/C84000
L_36B677:
    SETYVEL     #$0080, WAIT #8             ; 36B677/C88000
L_36B67A:
    SETYVEL     #$0100, WAIT #8             ; 36B67A/C80001
L_36B67D:
    SETYVEL     #$0080, WAIT #8             ; 36B67D/C88000
L_36B680:
    SETYVEL     #$0040, WAIT #8             ; 36B680/C84000
L_36B683:
    SETYVEL     #$FFC0, WAIT #8             ; 36B683/C8C0FF
L_36B686:
    SETYVEL     #$FF80, WAIT #8             ; 36B686/C880FF
L_36B689:
    A_JMP       L_36B66B                    ; 36B689/176BB6

L_36B68C:
    SPRITEMAP   $1C9CD7                     ; 36B68C/1AD79C1C
    SETPOSE     #$10, WAIT #8               ; 36B690/5810
L_36B692:
    INCPOSE     WAIT #8                     ; 36B692/78
L_36B693:
    INCPOSE     WAIT #8                     ; 36B693/78
L_36B694:
    INCPOSE     WAIT #8                     ; 36B694/78
L_36B695:
    A_JMP       L_36B68C                    ; 36B695/178CB6

L_36B698:
    ASMCALL     $8FCE, WAIT #2              ; 36B698/D2CE8F // Unknown ASM $228FCE
    .byte       $00                         ; 36B69B/00
L_36B69C:
    A_JMP       L_36B698                    ; 36B69C/1798B6

; CODE OR DATA -- $36B69F .. $36B6B7
incbinRange "../split/prg/bank36.bin", $169F, $16B7

L_36B6B7:
    MOV         $0042,#$D0                  ; 36B6B7/114200D0
    MOV         $0538,#$80                  ; 36B6BB/11380580
    ASMCALL     $B897                       ; 36B6BF/D097B8
    ONPOSITION  $D9BB                       ; 36B6C2/21BBD9
    ONMOVE      $D91D                       ; 36B6C5/231DD9
    SPRITEMAP   $3793F2                     ; 36B6C8/1AF29337
    SETPOSE     #$12                        ; 36B6CC/5012
    SETXVEL     #$0180                      ; 36B6CE/B08001
    SETYVEL     #$FF80, WAIT #4             ; 36B6D1/C480FF
L_36B6D4:
    ADDYVEL     #$FF80                      ; 36B6D4/2F80FF
    WAIT        #4                          ; 36B6D7/0604
L_36B6D9:
    A_JMP       L_36B6D4                    ; 36B6D9/17D4B6

L_36B6DC:
    SETBANK     #$22                        ; 36B6DC/2822
    ASMCALL     $DE45                       ; 36B6DE/D045DE // Play music
    .byte       $FF                         ; 36B6E1/FF
    ASMCALL     $DE4B                       ; 36B6E2/D04BDE // Play sound effect
    .byte       $13                         ; 36B6E5/13
    ASMCALL     $B897                       ; 36B6E6/D097B8
    ONPOSITION  $D97D                       ; 36B6E9/217DD9
    ONMOVE      $D8A6                       ; 36B6EC/23A6D8
    ONDRAW      $DA89                       ; 36B6EF/2089DA
    ASMCALL     $BF3F                       ; 36B6F2/D03FBF
    MOV         $078A,#$00                  ; 36B6F5/118A0700
    ONTICK      $36B725                     ; 36B6F9/0825B736
    SETPOSE     #$FF                        ; 36B6FD/50FF
    ZEROCAMERAVEL                           ; 36B6FF/39
    WAIT        #20                         ; 36B700/0614
L_36B702:
    SETYCAMERAVEL#$FF00                     ; 36B702/3300FF
    WAIT        #16                         ; 36B705/0610
L_36B707:
    SETYCAMERAVEL#$FE00                     ; 36B707/3300FE
    WAIT        #16                         ; 36B70A/0610
L_36B70C:
    SETYCAMERAVEL#$FD00                     ; 36B70C/3300FD
    WAIT        #16                         ; 36B70F/0610
L_36B711:
    SETYCAMERAVEL#$FC00                     ; 36B711/3300FC
    WAIT        #16                         ; 36B714/0610
L_36B716:
    SETYCAMERAVEL#$FB00                     ; 36B716/3300FB
    WAIT        #16                         ; 36B719/0610
L_36B71B:
    SETYCAMERAVEL#$FA00                     ; 36B71B/3300FA
    WAIT        #16                         ; 36B71E/0610
L_36B720:
    ONTICK      $36B756                     ; 36B720/0856B736
    HALT                                    ; 36B724/09

; CODE OR DATA -- $36B725 .. $36B7A7
incbinRange "../split/prg/bank36.bin", $1725, $17A7

L_36B7A7:
    SETPOSE     #$FF                        ; 36B7A7/50FF
    MOV         $0042,#$D0                  ; 36B7A9/114200D0
    MOV         $0043,#$78                  ; 36B7AD/11430078
    MOV         $07F5,#$04                  ; 36B7B1/11F50704
    ASMCALL     $DE51                       ; 36B7B5/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36B7B8/01
    .byte       $00                         ; 36B7B9/00
    .byte       $00                         ; 36B7BA/00
    .byte       $00                         ; 36B7BB/00
    .byte       $10                         ; 36B7BC/10
    .byte       $00                         ; 36B7BD/00
    WAIT        #60                         ; 36B7BE/063C
L_36B7C0:
    ASMCALL     $DE4B                       ; 36B7C0/D04BDE // Play sound effect
    .byte       $14                         ; 36B7C3/14
    A_JSR       L_36B7E1                    ; 36B7C4/18E1B7
    WAIT        #60                         ; 36B7C7/063C
L_36B7C9:
    ASMCALL     $DE4B                       ; 36B7C9/D04BDE // Play sound effect
    .byte       $FF                         ; 36B7CC/FF
    LOOP        #4                          ; 36B7CD/0104
        ASMCALL     $C996, WAIT #6              ; 36B7CF/D696C9 // Palette fade (out?) step
L_36B7D2:
    ENDLOOP                                 ; 36B7D2/02
    ASMCALL     $B835                       ; 36B7D3/D035B8
    END                                     ; 36B7D6/00

L_36B7D7:
    SETPOSE     #$FF                        ; 36B7D7/50FF
    WAIT        #30                         ; 36B7D9/061E
L_36B7DB:
    A_JSR       L_36B7E1                    ; 36B7DB/18E1B7
    WAIT        #60                         ; 36B7DE/063C
L_36B7E0:
    HALT                                    ; 36B7E0/09

L_36B7E1:
    ONMOVE      $D920                       ; 36B7E1/2320D9
    ONDRAW      $DA89                       ; 36B7E4/2089DA
    SPRITEMAP   $3793F2                     ; 36B7E7/1AF29337
    SETXPOS     #$009E                      ; 36B7EB/2A9E00
    SETYPOS     #$0000                      ; 36B7EE/2B0000
    SETPOSE     #$18                        ; 36B7F1/5018
    SETXVEL     #$FF00                      ; 36B7F3/B000FF
    SETYVEL     #$0080                      ; 36B7F6/C08000
    WAIT        #28                         ; 36B7F9/061C
L_36B7FB:
    SETXVEL     #$FF40                      ; 36B7FB/B040FF
    WAIT        #28                         ; 36B7FE/061C
L_36B800:
    SETXVEL     #$FF80                      ; 36B800/B080FF
    WAIT        #28                         ; 36B803/061C
L_36B805:
    SETXVEL     #$FFC0, WAIT #14            ; 36B805/BEC0FF
L_36B808:
    SETXVEL     #$FFE0, WAIT #14            ; 36B808/BEE0FF
L_36B80B:
    SETXVEL     #$FFF0                      ; 36B80B/B0F0FF
    SETYVEL     #$0040, WAIT #14            ; 36B80E/CE4000
L_36B811:
    SETXVEL     #$FFF8, WAIT #14            ; 36B811/BEF8FF
L_36B814:
    SETXVEL     #$0004, WAIT #14            ; 36B814/BE0400
L_36B817:
    SETXVEL     #$0008, WAIT #14            ; 36B817/BE0800
L_36B81A:
    SETXVEL     #$0010, WAIT #14            ; 36B81A/BE1000
L_36B81D:
    SETXVEL     #$0020, WAIT #14            ; 36B81D/BE2000
L_36B820:
    SETYVEL     #$0020, WAIT #14            ; 36B820/CE2000
L_36B823:
    WAIT        #70                         ; 36B823/0646
L_36B825:
    SETPOSE     #$19                        ; 36B825/5019
    WAIT        #28                         ; 36B827/061C
L_36B829:
    SETYVEL     #$0010, WAIT #14            ; 36B829/CE1000
L_36B82C:
    WAIT        #70                         ; 36B82C/0646
L_36B82E:
    SETXVEL     #$0008                      ; 36B82E/B00800
    SETYVEL     #$0004                      ; 36B831/C00400
    A_RTS                                   ; 36B834/19

; CODE OR DATA -- $36B835 .. $36B852
incbinRange "../split/prg/bank36.bin", $1835, $1852

L_36B852:
    ASMCALL     $DE4B                       ; 36B852/D04BDE // Play sound effect
    .byte       $11                         ; 36B855/11
    ONDRAW      $DA89                       ; 36B856/2089DA
    ONPOSITION  $D9BB                       ; 36B859/21BBD9
    SPRITEMAP   $308AA2                     ; 36B85C/1AA28A30
    SETXVEL     #$FC00                      ; 36B860/B000FC
L_36B863:
    SETPOSE     #$00, WAIT #1               ; 36B863/5100
L_36B865:
    LOOP        #7                          ; 36B865/0107
        INCPOSE     WAIT #1                     ; 36B867/71
L_36B868:
    ENDLOOP                                 ; 36B868/02
    A_JMP       L_36B863                    ; 36B869/1763B8

L_36B86C:
    ONMOVE      $D8BD                       ; 36B86C/23BDD8
    ONTICK      $36B880                     ; 36B86F/0880B836
    ZEROCAMERAVEL                           ; 36B873/39
    SETYCAMERAVEL#$0100                     ; 36B874/330001
    WAIT        #160                        ; 36B877/06A0
L_36B879:
    SETYCAMERAVEL#$0040                     ; 36B879/334000
    WAIT        #128                        ; 36B87C/0680
L_36B87E:
    ZEROCAMERAVEL                           ; 36B87E/39
    END                                     ; 36B87F/00

; CODE OR DATA -- $36B880 .. $36B8C0
incbinRange "../split/prg/bank36.bin", $1880, $18C0

L_36B8C0:
    ASMCALL     $C086                       ; 36B8C0/D086C0 // Write 0xFF to $37 and wait a frame
    ASMCALL     $B897                       ; 36B8C3/D097B8
    ONPOSITION  $D97D                       ; 36B8C6/217DD9
    ONMOVE      $D920                       ; 36B8C9/2320D9
    ASMCALL     Load_Palette                ; 36B8CC/D061DF // Load_Palette, palette, start_index, entries
    .word       $BF50                       ; 36B8CF/50BF
    .byte       $10                         ; 36B8D1/10
    .byte       $10                         ; 36B8D2/10
    ASMCALL     $BA52                       ; 36B8D3/D052BA
    ASMCALL     $DF0D                       ; 36B8D6/D00DDF // Destroy all other objects
    ONDRAW      $DA89                       ; 36B8D9/2089DA
    MOV         $0042,#$D0                  ; 36B8DC/114200D0
    MOV         $0043,#$78                  ; 36B8E0/11430078
    ASMCALL     $BF3A                       ; 36B8E4/D03ABF
    SETPOSE     #$FF                        ; 36B8E7/50FF
    ASMCALL     $DE45                       ; 36B8E9/D045DE // Play music
    .byte       $0D                         ; 36B8EC/0D
    LOOP        #4                          ; 36B8ED/0104
        ASMCALL     $C94C, WAIT #4              ; 36B8EF/D44CC9 // Palette fade dark in step
L_36B8F2:
    ENDLOOP                                 ; 36B8F2/02
    SETXPOS     #$0000                      ; 36B8F3/2A0000
    SETYPOS     #$0000                      ; 36B8F6/2B0000
    ASMCALL     $DE51                       ; 36B8F9/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36B8FC/01
    .byte       $00                         ; 36B8FD/00
    .byte       $00                         ; 36B8FE/00
    .byte       $00                         ; 36B8FF/00
    .byte       $0E                         ; 36B900/0E
    .byte       $00                         ; 36B901/00
    ASMCALL     $DE51                       ; 36B902/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36B905/01
    .byte       $00                         ; 36B906/00
    .byte       $00                         ; 36B907/00
    .byte       $00                         ; 36B908/00
    .byte       $0D                         ; 36B909/0D
    .byte       $00                         ; 36B90A/00
    SPRITEMAP   $3793F2                     ; 36B90B/1AF29337
    LOOP        #6                          ; 36B90F/0106
        SETPOSE     #$12                        ; 36B911/5012
        SETXVEL     #$0080                      ; 36B913/B08000
        SETYVEL     #$FFF0, WAIT #8             ; 36B916/C8F0FF
L_36B919:
        SETXVEL     #$0040                      ; 36B919/B04000
        SETYVEL     #$FFE0, WAIT #8             ; 36B91C/C8E0FF
L_36B91F:
        SETXVEL     #$0080                      ; 36B91F/B08000
        SETYVEL     #$FFF0, WAIT #8             ; 36B922/C8F0FF
L_36B925:
        SETYVEL     #$0080, WAIT #8             ; 36B925/C88000
L_36B928:
        SETXVEL     #$0040                      ; 36B928/B04000
        SETYVEL     #$0100, WAIT #8             ; 36B92B/C80001
L_36B92E:
        SETXVEL     #$0080                      ; 36B92E/B08000
        SETYVEL     #$0080, WAIT #8             ; 36B931/C88000
L_36B934:
    ENDLOOP                                 ; 36B934/02
    SETYVEL     #$0020                      ; 36B935/C02000
    WAIT        #24                         ; 36B938/0618
L_36B93A:
    SETYVEL     #$0080                      ; 36B93A/C08000
    WAIT        #16                         ; 36B93D/0610
L_36B93F:
    LOOP        #2                          ; 36B93F/0102
        SETXVEL     #$FF80                      ; 36B941/B080FF
        SETYVEL     #$0100, WAIT #8             ; 36B944/C80001
L_36B947:
        SETYVEL     #$0080, WAIT #8             ; 36B947/C88000
L_36B94A:
        SETYVEL     #$FF80, WAIT #8             ; 36B94A/C880FF
L_36B94D:
        SETYVEL     #$FF00, WAIT #8             ; 36B94D/C800FF
L_36B950:
        SETYVEL     #$FF80, WAIT #8             ; 36B950/C880FF
L_36B953:
        SETYVEL     #$0080, WAIT #8             ; 36B953/C88000
L_36B956:
    ENDLOOP                                 ; 36B956/02
    LOOP        #3                          ; 36B957/0103
        SETXVEL     #$FFE0                      ; 36B959/B0E0FF
        SETYVEL     #$0100, WAIT #8             ; 36B95C/C80001
L_36B95F:
        SETYVEL     #$0080, WAIT #8             ; 36B95F/C88000
L_36B962:
        SETYVEL     #$FF80, WAIT #8             ; 36B962/C880FF
L_36B965:
        SETYVEL     #$FF00, WAIT #8             ; 36B965/C800FF
L_36B968:
        SETYVEL     #$FF80, WAIT #8             ; 36B968/C880FF
L_36B96B:
        SETYVEL     #$0080, WAIT #8             ; 36B96B/C88000
L_36B96E:
    ENDLOOP                                 ; 36B96E/02
    SETYVEL     #$0100, WAIT #8             ; 36B96F/C80001
L_36B972:
    SETYVEL     #$0080, WAIT #8             ; 36B972/C88000
L_36B975:
    SETYVEL     #$FF80, WAIT #6             ; 36B975/C680FF
L_36B978:
    LOOP        #2                          ; 36B978/0102
        SETXVEL     #$0400                      ; 36B97A/B00004
        SETYVEL     #$FC00                      ; 36B97D/C000FC
        WAIT        #16                         ; 36B980/0610
L_36B982:
        SETYVEL     #$0400                      ; 36B982/C00004
        WAIT        #16                         ; 36B985/0610
L_36B987:
        SETXVEL     #$FC00                      ; 36B987/B000FC
        WAIT        #16                         ; 36B98A/0610
L_36B98C:
        SETYVEL     #$FE00                      ; 36B98C/C000FE
        WAIT        #16                         ; 36B98F/0610
L_36B991:
        ZEROVEL                                 ; 36B991/38
        SETYVEL     #$FC00                      ; 36B992/C000FC
        WAIT        #16                         ; 36B995/0610
L_36B997:
        ZEROVEL                                 ; 36B997/38
        SETXVEL     #$0400                      ; 36B998/B00004
        WAIT        #16                         ; 36B99B/0610
L_36B99D:
        ZEROVEL                                 ; 36B99D/38
        SETYVEL     #$0400                      ; 36B99E/C00004
        WAIT        #16                         ; 36B9A1/0610
L_36B9A3:
        SETXVEL     #$FC00                      ; 36B9A3/B000FC
        SETYVEL     #$FE00                      ; 36B9A6/C000FE
        WAIT        #16                         ; 36B9A9/0610
L_36B9AB:
    ENDLOOP                                 ; 36B9AB/02
    ASMCALL     $DE51                       ; 36B9AC/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36B9AF/01
    .byte       $00                         ; 36B9B0/00
    .byte       $00                         ; 36B9B1/00
    .byte       $00                         ; 36B9B2/00
    .byte       $01                         ; 36B9B3/01
    .byte       $00                         ; 36B9B4/00
    SETXVEL     #$FFE0, WAIT #8             ; 36B9B5/B8E0FF
L_36B9B8:
    SETXVEL     #$FE00                      ; 36B9B8/B000FE
    SETYVEL     #$0080                      ; 36B9BB/C08000
    WAIT        #16                         ; 36B9BE/0610
L_36B9C0:
    SETXVEL     #$0200                      ; 36B9C0/B00002
    SETYVEL     #$FF80                      ; 36B9C3/C080FF
    WAIT        #16                         ; 36B9C6/0610
L_36B9C8:
    SETXVEL     #$0100                      ; 36B9C8/B00001
    SETYVEL     #$0200, WAIT #8             ; 36B9CB/C80002
L_36B9CE:
    TASK        L_36BA38                    ; 36B9CE/0738BA
    SETYVEL     #$FC00, WAIT #12            ; 36B9D1/CC00FC
L_36B9D4:
    SETYVEL     #$FE00, WAIT #4             ; 36B9D4/C400FE
L_36B9D7:
    SETYVEL     #$FF00, WAIT #4             ; 36B9D7/C400FF
L_36B9DA:
    SETXVEL     #$0080                      ; 36B9DA/B08000
    SETYVEL     #$FF80, WAIT #4             ; 36B9DD/C480FF
L_36B9E0:
    SETYVEL     #$FFE0, WAIT #4             ; 36B9E0/C4E0FF
L_36B9E3:
    SETYVEL     #$FFF8, WAIT #4             ; 36B9E3/C4F8FF
L_36B9E6:
    SETYVEL     #$0008, WAIT #4             ; 36B9E6/C40800
L_36B9E9:
    SETYVEL     #$0020, WAIT #4             ; 36B9E9/C42000
L_36B9EC:
    SETYVEL     #$0080, WAIT #8             ; 36B9EC/C88000
L_36B9EF:
    SETYVEL     #$0100, WAIT #8             ; 36B9EF/C80001
L_36B9F2:
    WAIT        #8                          ; 36B9F2/0608
L_36B9F4:
    SETYVEL     #$0200, WAIT #8             ; 36B9F4/C80002
L_36B9F7:
    WAIT        #42                         ; 36B9F7/062A
L_36B9F9:
    ZEROVEL                                 ; 36B9F9/38
    SETYVEL     #$FE00, WAIT #8             ; 36B9FA/C800FE
L_36B9FD:
    SETYVEL     #$FF00, WAIT #12            ; 36B9FD/CC00FF
L_36BA00:
    SETYVEL     #$0100, WAIT #12            ; 36BA00/CC0001
L_36BA03:
    ASMCALL     $DF0D                       ; 36BA03/D00DDF // Destroy all other objects
    SETYVEL     #$0200, WAIT #8             ; 36BA06/C80002
L_36BA09:
    ENDLASTTASK                             ; 36BA09/12
    ZEROVEL                                 ; 36BA0A/38
    ONDRAW      $DDA3                       ; 36BA0B/20A3DD
    SPRITEMAP   $1A8EE6                     ; 36BA0E/1AE68E1A
    SETPOSE     #$22                        ; 36BA12/5022
    LOOP        #26                         ; 36BA14/011A
        SETXVEL     #$0100, WAIT #2             ; 36BA16/B20001
L_36BA19:
        SETXVEL     #$FE00, WAIT #2             ; 36BA19/B200FE
L_36BA1C:
    ENDLOOP                                 ; 36BA1C/02
    ZEROVEL                                 ; 36BA1D/38
    ASMCALL     Load_Palette                ; 36BA1E/D061DF // Load_Palette, palette, start_index, entries
    .word       $BB36                       ; 36BA21/36BB
    .byte       $18                         ; 36BA23/18
    .byte       $08                         ; 36BA24/08
    ASMCALL     $DED0                       ; 36BA25/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 36BA28/09
    .byte       $12                         ; 36BA29/12
    .byte       $4E                         ; 36BA2A/4E
    .byte       $00                         ; 36BA2B/00
    .byte       $00                         ; 36BA2C/00
    .byte       $00                         ; 36BA2D/00
    .byte       $01                         ; 36BA2E/01
    .byte       $00                         ; 36BA2F/00
    WAIT        #16                         ; 36BA30/0610
L_36BA32:
    ASMCALL     $BA47                       ; 36BA32/D047BA
    A_JMP       L_36BF79                    ; 36BA35/1779BF

L_36BA38:
    SPRITEMAP   $3793F2                     ; 36BA38/1AF29337
    SETPOSE     #$0E, WAIT #4               ; 36BA3C/540E
L_36BA3E:
    SETPOSE     #$0F, WAIT #4               ; 36BA3E/540F
L_36BA40:
    SETPOSE     #$10, WAIT #4               ; 36BA40/5410
L_36BA42:
    SETPOSE     #$11, WAIT #4               ; 36BA42/5411
L_36BA44:
    A_JMP       L_36BA38                    ; 36BA44/1738BA

; CODE OR DATA -- $36BA47 .. $36BA5A
incbinRange "../split/prg/bank36.bin", $1A47, $1A5A

L_36BA5A:
    ONMOVE      $D920                       ; 36BA5A/2320D9
    ONDRAW      $DA89                       ; 36BA5D/2089DA
    SETXPOS     #$00D0                      ; 36BA60/2AD000
    SETYPOS     #$0100                      ; 36BA63/2B0001
    ONTICK      $36BAD1                     ; 36BA66/08D1BA36
    SETPOSE     #$08                        ; 36BA6A/5008
    SETXVEL     #$FFE0                      ; 36BA6C/B0E0FF
    WAIT        #128                        ; 36BA6F/0680
L_36BA71:
    WAIT        #128                        ; 36BA71/0680
L_36BA73:
    LOOP        #9                          ; 36BA73/0109
        SETPOSE     #$16, WAIT #2               ; 36BA75/5216
L_36BA77:
        SETPOSE     #$08, WAIT #2               ; 36BA77/5208
L_36BA79:
    ENDLOOP                                 ; 36BA79/02
    TASK        L_36BAE8                    ; 36BA7A/07E8BA
    LOOP        #9                          ; 36BA7D/0109
        SETPOSE     #$09, WAIT #2               ; 36BA7F/5209
L_36BA81:
        SETPOSE     #$0A, WAIT #2               ; 36BA81/520A
L_36BA83:
    ENDLOOP                                 ; 36BA83/02
    LOOP        #9                          ; 36BA84/0109
        SETPOSE     #$0B, WAIT #2               ; 36BA86/520B
L_36BA88:
        SETPOSE     #$0A, WAIT #2               ; 36BA88/520A
L_36BA8A:
    ENDLOOP                                 ; 36BA8A/02
    LOOP        #9                          ; 36BA8B/0109
        SETPOSE     #$0B, WAIT #2               ; 36BA8D/520B
L_36BA8F:
        SETPOSE     #$0C, WAIT #2               ; 36BA8F/520C
L_36BA91:
    ENDLOOP                                 ; 36BA91/02
    LOOP        #5                          ; 36BA92/0105
        SETPOSE     #$FF, WAIT #2               ; 36BA94/52FF
L_36BA96:
        SETPOSE     #$17, WAIT #2               ; 36BA96/5217
L_36BA98:
    ENDLOOP                                 ; 36BA98/02
    SETPOSE     #$15                        ; 36BA99/5015
    WAIT        #16                         ; 36BA9B/0610
L_36BA9D:
    SETPOSE     #$0D                        ; 36BA9D/500D
    SETXVEL     #$FFF8                      ; 36BA9F/B0F8FF
    WAIT        #76                         ; 36BAA2/064C
L_36BAA4:
    ASMCALL     $BB3E                       ; 36BAA4/D03EBB
    WAIT        #52                         ; 36BAA7/0634
L_36BAA9:
    ASMCALL     $DE51                       ; 36BAA9/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36BAAC/01
    .byte       $00                         ; 36BAAD/00
    .byte       $00                         ; 36BAAE/00
    .byte       $00                         ; 36BAAF/00
    .byte       $0A                         ; 36BAB0/0A
    .byte       $00                         ; 36BAB1/00
    SETXVEL     #$0200                      ; 36BAB2/B00002
    WAIT        #16                         ; 36BAB5/0610
L_36BAB7:
    ASMCALL     $DE51                       ; 36BAB7/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36BABA/01
    .byte       $00                         ; 36BABB/00
    .byte       $00                         ; 36BABC/00
    .byte       $00                         ; 36BABD/00
    .byte       $0B                         ; 36BABE/0B
    .byte       $00                         ; 36BABF/00
    SETXVEL     #$0400                      ; 36BAC0/B00004
    WAIT        #19                         ; 36BAC3/0613
L_36BAC5:
    ASMCALL     $DE51                       ; 36BAC5/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36BAC8/01
    .byte       $00                         ; 36BAC9/00
    .byte       $00                         ; 36BACA/00
    .byte       $00                         ; 36BACB/00
    .byte       $0C                         ; 36BACC/0C
    .byte       $00                         ; 36BACD/00
    SETPOSE     #$FF                        ; 36BACE/50FF
    END                                     ; 36BAD0/00

; CODE OR DATA -- $36BAD1 .. $36BAE8
incbinRange "../split/prg/bank36.bin", $1AD1, $1AE8

L_36BAE8:
    MOV         VAR7,#$00                   ; 36BAE8/0D0700
    MOV         VAR5,#$00                   ; 36BAEB/0D0500
    ASMCALL     Load_Palette                ; 36BAEE/D061DF // Load_Palette, palette, start_index, entries
    .word       $BBC9                       ; 36BAF1/C9BB
    .byte       $1C                         ; 36BAF3/1C
    .byte       $04                         ; 36BAF4/04
    LOOP        #4                          ; 36BAF5/0104
        LOOP        #7                          ; 36BAF7/0107
            MOV         VAR6,#$00                   ; 36BAF9/0D0600
            ASMCALL     $BB51, WAIT #2              ; 36BAFC/D251BB
L_36BAFF:
            MOV         VAR6,#$01                   ; 36BAFF/0D0601
            ASMCALL     $BB51, WAIT #2              ; 36BB02/D251BB
L_36BB05:
        ENDLOOP                                 ; 36BB05/02
        ADD         VAR7,#1                     ; 36BB06/13070201
    ENDLOOP                                 ; 36BB0A/02
    ASMCALL     Load_Palette                ; 36BB0B/D061DF // Load_Palette, palette, start_index, entries
    .word       $BB89                       ; 36BB0E/89BB
    .byte       $00                         ; 36BB10/00
    .byte       $0C                         ; 36BB11/0C
    ASMCALL     Load_Palette                ; 36BB12/D061DF // Load_Palette, palette, start_index, entries
    .word       $BBC1                       ; 36BB15/C1BB
    .byte       $10                         ; 36BB17/10
    .byte       $08                         ; 36BB18/08
    WAIT        #16                         ; 36BB19/0610
L_36BB1B:
    MOV         VAR7,#$07                   ; 36BB1B/0D0707
    MOV         VAR6,#$00                   ; 36BB1E/0D0600
    MOV         VAR5,#$01                   ; 36BB21/0D0501
    LOOP        #7                          ; 36BB24/0107
        ASMCALL     $BB51, WAIT #1              ; 36BB26/D151BB
L_36BB29:
        ADD         VAR7,#-1                    ; 36BB29/130702FF
    ENDLOOP                                 ; 36BB2D/02
    ASMCALL     Load_Palette                ; 36BB2E/D061DF // Load_Palette, palette, start_index, entries
    .word       $BF50                       ; 36BB31/50BF
    .byte       $10                         ; 36BB33/10
    .byte       $10                         ; 36BB34/10
    ENDTASK                                 ; 36BB35/0C

; CODE OR DATA -- $36BB36 .. $36BBD1
incbinRange "../split/prg/bank36.bin", $1B36, $1BD1

L_36BBD1:
    SETXPOS     #$00A8                      ; 36BBD1/2AA800
    SETYPOS     #$0048                      ; 36BBD4/2B4800
    A_JMP       L_36BBE5                    ; 36BBD7/17E5BB

L_36BBDA:
    SETXPOS     #$00F8                      ; 36BBDA/2AF800
    SETYPOS     #$0048                      ; 36BBDD/2B4800
    WAIT        #35                         ; 36BBE0/0623
L_36BBE2:
    A_JMP       L_36BBE5                    ; 36BBE2/17E5BB

L_36BBE5:
    SETPOSE     #$01                        ; 36BBE5/5001
    SETXVEL     #$FC00                      ; 36BBE7/B000FC
    SETYVEL     #$F800, WAIT #3             ; 36BBEA/C300F8
L_36BBED:
    SETPOSE     #$02                        ; 36BBED/5002
    SETYVEL     #$FC00, WAIT #3             ; 36BBEF/C300FC
L_36BBF2:
    SETPOSE     #$03                        ; 36BBF2/5003
    SETYVEL     #$FF00, WAIT #3             ; 36BBF4/C300FF
L_36BBF7:
    SETPOSE     #$04                        ; 36BBF7/5004
    SETYVEL     #$FF80, WAIT #3             ; 36BBF9/C380FF
L_36BBFC:
    ZEROVEL                                 ; 36BBFC/38
    SETPOSE     #$05, WAIT #3               ; 36BBFD/5305
L_36BBFF:
    SETPOSE     #$06                        ; 36BBFF/5006
    SETYVEL     #$0080, WAIT #3             ; 36BC01/C38000
L_36BC04:
    SETPOSE     #$07                        ; 36BC04/5007
    SETYVEL     #$0100, WAIT #3             ; 36BC06/C30001
L_36BC09:
    LOOP        #5                          ; 36BC09/0105
        SETPOSE     #$FF                        ; 36BC0B/50FF
        SETXVEL     #$F800                      ; 36BC0D/B000F8
        SETYVEL     #$0200, WAIT #1             ; 36BC10/C10002
L_36BC13:
        SETPOSE     #$07, WAIT #1               ; 36BC13/5107
L_36BC15:
    ENDLOOP                                 ; 36BC15/02
    END                                     ; 36BC16/00

L_36BC17:
    SETXPOS     #$00C8                      ; 36BC17/2AC800
    SETYPOS     #$0048                      ; 36BC1A/2B4800
    ZEROVEL                                 ; 36BC1D/38
    SETPOSE     #$FF, WAIT #1               ; 36BC1E/51FF
L_36BC20:
    WAIT        #16                         ; 36BC20/0610
L_36BC22:
    SETPOSE     #$01                        ; 36BC22/5001
    SETXVEL     #$FC00                      ; 36BC24/B000FC
    SETYVEL     #$0400, WAIT #12            ; 36BC27/CC0004
L_36BC2A:
    SETPOSE     #$02                        ; 36BC2A/5002
    SETYVEL     #$0200, WAIT #10            ; 36BC2C/CA0002
L_36BC2F:
    SETPOSE     #$03                        ; 36BC2F/5003
    SETYVEL     #$0100, WAIT #8             ; 36BC31/C80001
L_36BC34:
    SETPOSE     #$04                        ; 36BC34/5004
    SETXVEL     #$FE00                      ; 36BC36/B000FE
    SETYVEL     #$0080, WAIT #8             ; 36BC39/C88000
L_36BC3C:
    SETPOSE     #$05                        ; 36BC3C/5005
    SETYVEL     #$FF80, WAIT #8             ; 36BC3E/C880FF
L_36BC41:
    SETPOSE     #$06                        ; 36BC41/5006
    SETYVEL     #$FF00, WAIT #6             ; 36BC43/C600FF
L_36BC46:
    SETPOSE     #$07                        ; 36BC46/5007
    SETYVEL     #$FE00, WAIT #4             ; 36BC48/C400FE
L_36BC4B:
    LOOP        #5                          ; 36BC4B/0105
        SETPOSE     #$FF                        ; 36BC4D/50FF
        SETXVEL     #$FF00                      ; 36BC4F/B000FF
        SETYVEL     #$FC00, WAIT #1             ; 36BC52/C100FC
L_36BC55:
        SETPOSE     #$07, WAIT #1               ; 36BC55/5107
L_36BC57:
    ENDLOOP                                 ; 36BC57/02
    END                                     ; 36BC58/00

L_36BC59:
    SETXPOS     #$00F0                      ; 36BC59/2AF000
    SETYPOS     #$0060                      ; 36BC5C/2B6000
    ZEROVEL                                 ; 36BC5F/38
    SETPOSE     #$FF                        ; 36BC60/50FF
    WAIT        #128                        ; 36BC62/0680
    SETPOSE     #$07                        ; 36BC64/5007
    SETXVEL     #$FA00                      ; 36BC66/B000FA
    SETYVEL     #$0400, WAIT #8             ; 36BC69/C80004
    SETPOSE     #$06                        ; 36BC6C/5006
    SETXVEL     #$FC00                      ; 36BC6E/B000FC
    SETYVEL     #$0200, WAIT #3             ; 36BC71/C30002
    SETPOSE     #$05                        ; 36BC74/5005
    SETXVEL     #$FA00                      ; 36BC76/B000FA
    SETYVEL     #$FE00, WAIT #5             ; 36BC79/C500FE
    ASMCALL     $DE51                       ; 36BC7C/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36BC7F/01
    .byte       $00                         ; 36BC80/00
    .byte       $00                         ; 36BC81/00
    .byte       $00                         ; 36BC82/00
    .byte       $0F                         ; 36BC83/0F
    .byte       $00                         ; 36BC84/00
    SETPOSE     #$04                        ; 36BC85/5004
    SETXVEL     #$FC00                      ; 36BC87/B000FC
    SETYVEL     #$FC00, WAIT #6             ; 36BC8A/C600FC
    SETPOSE     #$03                        ; 36BC8D/5003
    SETXVEL     #$FA00                      ; 36BC8F/B000FA
    SETYVEL     #$FE00, WAIT #3             ; 36BC92/C300FE
    SETPOSE     #$02                        ; 36BC95/5002
    SETXVEL     #$FC00                      ; 36BC97/B000FC
    SETYVEL     #$0200, WAIT #6             ; 36BC9A/C60002
    SETPOSE     #$01                        ; 36BC9D/5001
    SETXVEL     #$FA00                      ; 36BC9F/B000FA
    SETYVEL     #$0400, WAIT #5             ; 36BCA2/C50004
    LOOP        #5                          ; 36BCA5/0105
        SETPOSE     #$FF                        ; 36BCA7/50FF
        SETXVEL     #$FC00                      ; 36BCA9/B000FC
        SETYVEL     #$0100, WAIT #1             ; 36BCAC/C10001
        SETPOSE     #$01, WAIT #1               ; 36BCAF/5101
    ENDLOOP                                 ; 36BCB1/02
    END                                     ; 36BCB2/00

L_36BCB3:
    SETXPOS     #$00F8                      ; 36BCB3/2AF800
    SETYPOS     #$0078                      ; 36BCB6/2B7800
    ZEROVEL                                 ; 36BCB9/38
    SETPOSE     #$FF                        ; 36BCBA/50FF
    WAIT        #160                        ; 36BCBC/06A0
L_36BCBE:
    SETPOSE     #$07                        ; 36BCBE/5007
    SETXVEL     #$F800                      ; 36BCC0/B000F8
    SETYVEL     #$F800, WAIT #8             ; 36BCC3/C800F8
L_36BCC6:
    SETPOSE     #$06                        ; 36BCC6/5006
    SETXVEL     #$FA00                      ; 36BCC8/B000FA
    SETYVEL     #$FC00, WAIT #7             ; 36BCCB/C700FC
L_36BCCE:
    SETPOSE     #$05                        ; 36BCCE/5005
    SETXVEL     #$FC00                      ; 36BCD0/B000FC
    SETYVEL     #$FE00, WAIT #6             ; 36BCD3/C600FE
L_36BCD6:
    ASMCALL     $DE51                       ; 36BCD6/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36BCD9/01
    .byte       $00                         ; 36BCDA/00
    .byte       $00                         ; 36BCDB/00
    .byte       $00                         ; 36BCDC/00
    .byte       $0F                         ; 36BCDD/0F
    .byte       $00                         ; 36BCDE/00
    SETPOSE     #$04                        ; 36BCDF/5004
    SETXVEL     #$FD00                      ; 36BCE1/B000FD
    SETYVEL     #$FF00, WAIT #5             ; 36BCE4/C500FF
L_36BCE7:
    SETPOSE     #$03                        ; 36BCE7/5003
    SETXVEL     #$FE00                      ; 36BCE9/B000FE
    SETYVEL     #$FF80, WAIT #4             ; 36BCEC/C480FF
L_36BCEF:
    SETPOSE     #$02                        ; 36BCEF/5002
    ZEROVEL                                 ; 36BCF1/38
    SETXVEL     #$FEC0, WAIT #3             ; 36BCF2/B3C0FE
L_36BCF5:
    SETPOSE     #$01                        ; 36BCF5/5001
    SETXVEL     #$FF40                      ; 36BCF7/B040FF
    SETYVEL     #$0080, WAIT #2             ; 36BCFA/C28000
L_36BCFD:
    LOOP        #17                         ; 36BCFD/0111
        SETPOSE     #$FF                        ; 36BCFF/50FF
        SETXVEL     #$FF80                      ; 36BD01/B080FF
        SETYVEL     #$0100, WAIT #1             ; 36BD04/C10001
L_36BD07:
        SETPOSE     #$01, WAIT #1               ; 36BD07/5101
L_36BD09:
    ENDLOOP                                 ; 36BD09/02
    END                                     ; 36BD0A/00

L_36BD0B:
    SETXPOS     #$00F8                      ; 36BD0B/2AF800
    SETYPOS     #$0030                      ; 36BD0E/2B3000
    WAIT        #192                        ; 36BD11/06C0
L_36BD13:
    SETPOSE     #$01                        ; 36BD13/5001
    SETXVEL     #$F800                      ; 36BD15/B000F8
    SETYVEL     #$FC00, WAIT #4             ; 36BD18/C400FC
L_36BD1B:
    SETXVEL     #$FA00                      ; 36BD1B/B000FA
    SETYVEL     #$FE00, WAIT #4             ; 36BD1E/C400FE
L_36BD21:
    SETPOSE     #$02                        ; 36BD21/5002
    SETXVEL     #$FC00                      ; 36BD23/B000FC
    SETYVEL     #$FF00, WAIT #4             ; 36BD26/C400FF
L_36BD29:
    SETXVEL     #$FD00                      ; 36BD29/B000FD
    SETYVEL     #$FF80, WAIT #4             ; 36BD2C/C480FF
L_36BD2F:
    SETPOSE     #$03                        ; 36BD2F/5003
    ZEROVEL                                 ; 36BD31/38
    SETXVEL     #$FE00, WAIT #4             ; 36BD32/B400FE
L_36BD35:
    SETXVEL     #$FEC0                      ; 36BD35/B0C0FE
    SETYVEL     #$0080, WAIT #4             ; 36BD38/C48000
L_36BD3B:
    SETPOSE     #$04                        ; 36BD3B/5004
    SETXVEL     #$FF00                      ; 36BD3D/B000FF
    SETYVEL     #$00C0, WAIT #4             ; 36BD40/C4C000
L_36BD43:
    SETXVEL     #$FF40                      ; 36BD43/B040FF
    SETYVEL     #$0100, WAIT #4             ; 36BD46/C40001
L_36BD49:
    SETPOSE     #$05                        ; 36BD49/5005
    SETXVEL     #$FF80                      ; 36BD4B/B080FF
    SETYVEL     #$0140, WAIT #4             ; 36BD4E/C44001
L_36BD51:
    ZEROVEL                                 ; 36BD51/38
    SETYVEL     #$0200, WAIT #4             ; 36BD52/C40002
L_36BD55:
    SETPOSE     #$06                        ; 36BD55/5006
    SETXVEL     #$0080                      ; 36BD57/B08000
    SETYVEL     #$0300, WAIT #4             ; 36BD5A/C40003
L_36BD5D:
    SETXVEL     #$0100                      ; 36BD5D/B00001
    SETYVEL     #$0400, WAIT #4             ; 36BD60/C40004
L_36BD63:
    SETPOSE     #$07                        ; 36BD63/5007
    SETXVEL     #$0200, WAIT #4             ; 36BD65/B40002
L_36BD68:
    SETXVEL     #$0400, WAIT #4             ; 36BD68/B40004
L_36BD6B:
    LOOP        #5                          ; 36BD6B/0105
        SETPOSE     #$FF, WAIT #1               ; 36BD6D/51FF
L_36BD6F:
        SETPOSE     #$07, WAIT #1               ; 36BD6F/5107
L_36BD71:
    ENDLOOP                                 ; 36BD71/02
    END                                     ; 36BD72/00

L_36BD73:
    SETXPOS     #$00F8                      ; 36BD73/2AF800
    SETYPOS     #$0070                      ; 36BD76/2B7000
    SETPOSE     #$FF                        ; 36BD79/50FF
    ZEROVEL                                 ; 36BD7B/38
    WAIT        #224                        ; 36BD7C/06E0
L_36BD7E:
    SETPOSE     #$07                        ; 36BD7E/5007
    SETXVEL     #$FC00                      ; 36BD80/B000FC
    SETYVEL     #$0100, WAIT #8             ; 36BD83/C80001
L_36BD86:
    SETPOSE     #$06                        ; 36BD86/5006
    SETYVEL     #$0080, WAIT #8             ; 36BD88/C88000
L_36BD8B:
    SETPOSE     #$05, WAIT #4               ; 36BD8B/5405
L_36BD8D:
    SETYVEL     #$FF80, WAIT #4             ; 36BD8D/C480FF
L_36BD90:
    ASMCALL     $DE51                       ; 36BD90/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36BD93/01
    .byte       $00                         ; 36BD94/00
    .byte       $00                         ; 36BD95/00
    .byte       $00                         ; 36BD96/00
    .byte       $0F                         ; 36BD97/0F
    .byte       $00                         ; 36BD98/00
    SETPOSE     #$04                        ; 36BD99/5004
    SETXVEL     #$FC00                      ; 36BD9B/B000FC
    SETYVEL     #$FF80, WAIT #4             ; 36BD9E/C480FF
L_36BDA1:
    SETYVEL     #$FF00, WAIT #4             ; 36BDA1/C400FF
L_36BDA4:
    SETPOSE     #$03, WAIT #4               ; 36BDA4/5403
L_36BDA6:
    SETYVEL     #$FF80, WAIT #4             ; 36BDA6/C480FF
L_36BDA9:
    SETPOSE     #$02, WAIT #4               ; 36BDA9/5402
L_36BDAB:
    SETYVEL     #$0080, WAIT #4             ; 36BDAB/C48000
L_36BDAE:
    SETPOSE     #$01, WAIT #14              ; 36BDAE/5E01
L_36BDB0:
    SETPOSE     #$FF                        ; 36BDB0/50FF
    SETYVEL     #$0100, WAIT #1             ; 36BDB2/C10001
L_36BDB5:
    SETPOSE     #$01, WAIT #1               ; 36BDB5/5101
L_36BDB7:
    END                                     ; 36BDB7/00

L_36BDB8:
    SETXPOS     #$0078                      ; 36BDB8/2A7800
    SETYPOS     #$0098                      ; 36BDBB/2B9800
    SETPOSE     #$FF                        ; 36BDBE/50FF
    ZEROVEL                                 ; 36BDC0/38
    WAIT        #128                        ; 36BDC1/0680
L_36BDC3:
    SETPOSE     #$07                        ; 36BDC3/5007
    SETXVEL     #$FFE0                      ; 36BDC5/B0E0FF
    SETYVEL     #$FC00, WAIT #4             ; 36BDC8/C400FC
L_36BDCB:
    SETPOSE     #$06, WAIT #4               ; 36BDCB/5406
L_36BDCD:
    SETPOSE     #$05, WAIT #4               ; 36BDCD/5405
L_36BDCF:
    ASMCALL     $DE51                       ; 36BDCF/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36BDD2/01
    .byte       $00                         ; 36BDD3/00
    .byte       $00                         ; 36BDD4/00
    .byte       $00                         ; 36BDD5/00
    .byte       $0F                         ; 36BDD6/0F
    .byte       $00                         ; 36BDD7/00
    SETPOSE     #$04                        ; 36BDD8/5004
    SETXVEL     #$FF80                      ; 36BDDA/B080FF
    SETYVEL     #$FE00, WAIT #4             ; 36BDDD/C400FE
L_36BDE0:
    SETPOSE     #$03                        ; 36BDE0/5003
    ZEROVEL                                 ; 36BDE2/38
    SETXVEL     #$FF80, WAIT #4             ; 36BDE3/B480FF
L_36BDE6:
    SETPOSE     #$02                        ; 36BDE6/5002
    SETXVEL     #$FF00                      ; 36BDE8/B000FF
    SETYVEL     #$0080, WAIT #4             ; 36BDEB/C48000
L_36BDEE:
    SETPOSE     #$01                        ; 36BDEE/5001
    SETYVEL     #$0100, WAIT #4             ; 36BDF0/C40001
L_36BDF3:
    LOOP        #5                          ; 36BDF3/0105
        SETPOSE     #$02                        ; 36BDF5/5002
        SETYVEL     #$0200, WAIT #1             ; 36BDF7/C10002
L_36BDFA:
        SETPOSE     #$01, WAIT #1               ; 36BDFA/5101
L_36BDFC:
    ENDLOOP                                 ; 36BDFC/02
    END                                     ; 36BDFD/00

L_36BDFE:
    SETXPOS     #$00FE                      ; 36BDFE/2AFE00
    SETYPOS     #$0030                      ; 36BE01/2B3000
    WAIT        #224                        ; 36BE04/06E0
L_36BE06:
    SETPOSE     #$01                        ; 36BE06/5001
    SETXVEL     #$FC00                      ; 36BE08/B000FC
    SETYVEL     #$0800, WAIT #3             ; 36BE0B/C30008
L_36BE0E:
    SETPOSE     #$02                        ; 36BE0E/5002
    SETYVEL     #$0400, WAIT #3             ; 36BE10/C30004
L_36BE13:
    SETPOSE     #$03                        ; 36BE13/5003
    SETYVEL     #$0100, WAIT #3             ; 36BE15/C30001
L_36BE18:
    SETPOSE     #$04                        ; 36BE18/5004
    SETYVEL     #$0080, WAIT #3             ; 36BE1A/C38000
L_36BE1D:
    ZEROVEL                                 ; 36BE1D/38
    SETPOSE     #$05, WAIT #3               ; 36BE1E/5305
L_36BE20:
    SETPOSE     #$06                        ; 36BE20/5006
    SETYVEL     #$FF80, WAIT #3             ; 36BE22/C380FF
L_36BE25:
    SETPOSE     #$07                        ; 36BE25/5007
    SETYVEL     #$FF00, WAIT #3             ; 36BE27/C300FF
L_36BE2A:
    LOOP        #5                          ; 36BE2A/0105
        SETPOSE     #$FF                        ; 36BE2C/50FF
        SETXVEL     #$F800                      ; 36BE2E/B000F8
        SETYVEL     #$FE00, WAIT #1             ; 36BE31/C100FE
L_36BE34:
        SETPOSE     #$07, WAIT #1               ; 36BE34/5107
L_36BE36:
    ENDLOOP                                 ; 36BE36/02
    END                                     ; 36BE37/00

L_36BE38:
    SETXPOS     #$00F8                      ; 36BE38/2AF800
    SETYPOS     #$0040                      ; 36BE3B/2B4000
    SETPOSE     #$FF                        ; 36BE3E/50FF
    ZEROVEL                                 ; 36BE40/38
    WAIT        #80                         ; 36BE41/0650
L_36BE43:
    WAIT        #192                        ; 36BE43/06C0
L_36BE45:
    SETPOSE     #$01                        ; 36BE45/5001
    SETXVEL     #$F800                      ; 36BE47/B000F8
    SETYVEL     #$0400, WAIT #4             ; 36BE4A/C40004
L_36BE4D:
    SETXVEL     #$FA00                      ; 36BE4D/B000FA
    SETYVEL     #$0200, WAIT #4             ; 36BE50/C40002
L_36BE53:
    SETPOSE     #$02                        ; 36BE53/5002
    SETXVEL     #$FC00                      ; 36BE55/B000FC
    SETYVEL     #$0100, WAIT #4             ; 36BE58/C40001
L_36BE5B:
    SETXVEL     #$FD00                      ; 36BE5B/B000FD
    SETYVEL     #$0080, WAIT #4             ; 36BE5E/C48000
L_36BE61:
    SETPOSE     #$03                        ; 36BE61/5003
    ZEROVEL                                 ; 36BE63/38
    SETXVEL     #$FE00, WAIT #4             ; 36BE64/B400FE
L_36BE67:
    SETXVEL     #$FEC0                      ; 36BE67/B0C0FE
    SETYVEL     #$FF80, WAIT #4             ; 36BE6A/C480FF
L_36BE6D:
    SETPOSE     #$04                        ; 36BE6D/5004
    SETXVEL     #$FF00                      ; 36BE6F/B000FF
    SETYVEL     #$FF40, WAIT #4             ; 36BE72/C440FF
L_36BE75:
    SETXVEL     #$FF40                      ; 36BE75/B040FF
    SETYVEL     #$FF00, WAIT #4             ; 36BE78/C400FF
L_36BE7B:
    SETPOSE     #$05                        ; 36BE7B/5005
    SETXVEL     #$FF80                      ; 36BE7D/B080FF
    SETYVEL     #$FEC0, WAIT #4             ; 36BE80/C4C0FE
L_36BE83:
    ZEROVEL                                 ; 36BE83/38
    SETYVEL     #$FE00, WAIT #4             ; 36BE84/C400FE
L_36BE87:
    SETPOSE     #$06                        ; 36BE87/5006
    SETXVEL     #$0080                      ; 36BE89/B08000
    SETYVEL     #$FD00, WAIT #4             ; 36BE8C/C400FD
L_36BE8F:
    SETXVEL     #$0100                      ; 36BE8F/B00001
    SETYVEL     #$FC00, WAIT #4             ; 36BE92/C400FC
L_36BE95:
    SETPOSE     #$07                        ; 36BE95/5007
    SETXVEL     #$0200, WAIT #4             ; 36BE97/B40002
L_36BE9A:
    SETXVEL     #$0400, WAIT #4             ; 36BE9A/B40004
L_36BE9D:
    LOOP        #5                          ; 36BE9D/0105
        SETPOSE     #$FF, WAIT #1               ; 36BE9F/51FF
L_36BEA1:
        SETPOSE     #$07, WAIT #1               ; 36BEA1/5107
L_36BEA3:
    ENDLOOP                                 ; 36BEA3/02
    END                                     ; 36BEA4/00

L_36BEA5:
    SETXPOS     #$00A0                      ; 36BEA5/2AA000
    SETYPOS     #$0000                      ; 36BEA8/2B0000
    SETPOSE     #$FF                        ; 36BEAB/50FF
    ZEROVEL                                 ; 36BEAD/38
    WAIT        #128                        ; 36BEAE/0680
L_36BEB0:
    SETPOSE     #$07                        ; 36BEB0/5007
    SETXVEL     #$FFE0                      ; 36BEB2/B0E0FF
    SETYVEL     #$0400, WAIT #4             ; 36BEB5/C40004
L_36BEB8:
    SETPOSE     #$06, WAIT #4               ; 36BEB8/5406
L_36BEBA:
    SETPOSE     #$05, WAIT #4               ; 36BEBA/5405
L_36BEBC:
    ASMCALL     $DE51                       ; 36BEBC/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36BEBF/01
    .byte       $00                         ; 36BEC0/00
    .byte       $00                         ; 36BEC1/00
    .byte       $00                         ; 36BEC2/00
    .byte       $0F                         ; 36BEC3/0F
    .byte       $00                         ; 36BEC4/00
    SETPOSE     #$04                        ; 36BEC5/5004
    SETXVEL     #$FF80                      ; 36BEC7/B080FF
    SETYVEL     #$0200, WAIT #4             ; 36BECA/C40002
L_36BECD:
    SETPOSE     #$03                        ; 36BECD/5003
    ZEROVEL                                 ; 36BECF/38
    SETXVEL     #$FF80, WAIT #4             ; 36BED0/B480FF
L_36BED3:
    SETPOSE     #$02                        ; 36BED3/5002
    SETXVEL     #$FF00                      ; 36BED5/B000FF
    SETYVEL     #$FF80, WAIT #4             ; 36BED8/C480FF
L_36BEDB:
    SETPOSE     #$01                        ; 36BEDB/5001
    SETYVEL     #$FF00, WAIT #4             ; 36BEDD/C400FF
L_36BEE0:
    LOOP        #5                          ; 36BEE0/0105
        SETPOSE     #$02                        ; 36BEE2/5002
        SETYVEL     #$FE00, WAIT #1             ; 36BEE4/C100FE
L_36BEE7:
        SETPOSE     #$01, WAIT #1               ; 36BEE7/5101
L_36BEE9:
    ENDLOOP                                 ; 36BEE9/02
    END                                     ; 36BEEA/00

L_36BEEB:
    SETXPOS     #$00F8                      ; 36BEEB/2AF800
    SETYPOS     #$0020                      ; 36BEEE/2B2000
    ZEROVEL                                 ; 36BEF1/38
    SETPOSE     #$FF, WAIT #1               ; 36BEF2/51FF
L_36BEF4:
    SETPOSE     #$01                        ; 36BEF4/5001
    SETXVEL     #$FC00                      ; 36BEF6/B000FC
    SETYVEL     #$0200                      ; 36BEF9/C00002
    WAIT        #16                         ; 36BEFC/0610
L_36BEFE:
    SETPOSE     #$02                        ; 36BEFE/5002
    SETYVEL     #$0100, WAIT #12            ; 36BF00/CC0001
L_36BF03:
    SETPOSE     #$03, WAIT #8               ; 36BF03/5803
L_36BF05:
    SETPOSE     #$04, WAIT #8               ; 36BF05/5804
L_36BF07:
    ASMCALL     $DE51                       ; 36BF07/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $01                         ; 36BF0A/01
    .byte       $00                         ; 36BF0B/00
    .byte       $00                         ; 36BF0C/00
    .byte       $00                         ; 36BF0D/00
    .byte       $0F                         ; 36BF0E/0F
    .byte       $00                         ; 36BF0F/00
    ASMCALL     $DE45                       ; 36BF10/D045DE // Play music
    .byte       $0E                         ; 36BF13/0E
    ASMCALL     $DE4B                       ; 36BF14/D04BDE // Play sound effect
    .byte       $2B                         ; 36BF17/2B
    SETPOSE     #$05                        ; 36BF18/5005
    SETXVEL     #$0020                      ; 36BF1A/B02000
    SETYVEL     #$0100, WAIT #8             ; 36BF1D/C80001
L_36BF20:
    SETPOSE     #$06                        ; 36BF20/5006
    SETXVEL     #$0080, WAIT #8             ; 36BF22/B88000
L_36BF25:
    SETPOSE     #$07                        ; 36BF25/5007
    SETXVEL     #$0100                      ; 36BF27/B00001
    WAIT        #16                         ; 36BF2A/0610
L_36BF2C:
    LOOP        #9                          ; 36BF2C/0109
        SETPOSE     #$FF                        ; 36BF2E/50FF
        SETXVEL     #$0200                      ; 36BF30/B00002
        SETYVEL     #$0200, WAIT #1             ; 36BF33/C10002
L_36BF36:
        SETPOSE     #$07, WAIT #1               ; 36BF36/5107
L_36BF38:
    ENDLOOP                                 ; 36BF38/02
    END                                     ; 36BF39/00

; CODE OR DATA -- $36BF3A .. $36BF60
incbinRange "../split/prg/bank36.bin", $1F3A, $1F60

L_36BF60:
    ASMCALL     $DED0                       ; 36BF60/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 36BF63/09
    .byte       $12                         ; 36BF64/12
    .byte       $4E                         ; 36BF65/4E
    .byte       $00                         ; 36BF66/00
    .byte       $00                         ; 36BF67/00
    .byte       $00                         ; 36BF68/00
    .byte       $00                         ; 36BF69/00
    .byte       $00                         ; 36BF6A/00
    ASMCALL     $DE45                       ; 36BF6B/D045DE // Play music
    .byte       $0E                         ; 36BF6E/0E
    MOV         $01A2,#$FC                  ; 36BF6F/11A201FC
    LOOP        #4                          ; 36BF73/0104
        ASMCALL     $C94C, WAIT #1              ; 36BF75/D14CC9 // Palette fade dark in step
L_36BF78:
    ENDLOOP                                 ; 36BF78/02
L_36BF79:
    MOV         $07F5,#$00                  ; 36BF79/11F50700
    MOV         $05E0,#$06                  ; 36BF7D/11E00506
    MOV         $05E3,#$18                  ; 36BF81/11E30518
    JML         Script01_Kirby              ; 36BF85/0300A014

; CODE OR DATA -- $36BF89 .. $38AFC9
incbinRange "../split/prg/bank36.bin", $1F89, $2000