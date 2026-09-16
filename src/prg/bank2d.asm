.segment "PRG2D": absolute
Script47_KingDedede:
    SETBANK     #$22                        ; 2DA000/2822
    ONPOSITION  $D97D                       ; 2DA002/217DD9
    MOV         REG,VAR0                    ; 2DA005/1E00
    TABLEJMP    #4                          ; 2DA007/0F04
    .word       L_2DA011                    ; 2DA009/11A0
    .word       L_2DA58D                    ; 2DA00B/8DA5
    .word       L_2DA59F                    ; 2DA00D/9FA5
    .word       L_2DA5E4                    ; 2DA00F/E4A5
L_2DA011:
    MOV         VAR3,#$00                   ; 2DA011/0D0300
    TASK        L_2DA079                    ; 2DA014/0779A0
    ASMCALL     $A67C                       ; 2DA017/D07CA6
L_2DA01A:
    ASMCALL     $AE10, WAIT #1              ; 2DA01A/D110AE
L_2DA01D:
    ASMCALL     $A698                       ; 2DA01D/D098A6
    JNE         L_2DA01A                    ; 2DA020/0B1AA0
    MOV         VAR2,#$00                   ; 2DA023/0D0200
    MOV         $0785,#$FF                  ; 2DA026/118507FF
    MOV         $0788,#$00                  ; 2DA02A/11880700
    ASMCALL     $89F3                       ; 2DA02E/D0F389
    ASMCALL     $AD3F                       ; 2DA031/D03FAD
    MOV         REG,$6601                   ; 2DA034/1C0166
    JNE         L_2DA04A                    ; 2DA037/0B4AA0
    MOV         VAR0,#$00                   ; 2DA03A/0D0000
    LOOP        #25                         ; 2DA03D/0119
        ASMCALL     $DE4B                       ; 2DA03F/D04BDE // Play sound effect
        .byte       $12                         ; 2DA042/12
        ADD         VAR0,#4                     ; 2DA043/13000204
        WAIT        #6                          ; 2DA047/0606
L_2DA049:
    ENDLOOP                                 ; 2DA049/02
L_2DA04A:
    MOV         VAR0,#$64                   ; 2DA04A/0D0064
    ONTICK      $2DADFA                     ; 2DA04D/08FAAD2D
    HALT                                    ; 2DA051/09

L_2DA052:
    ZEROVEL                                 ; 2DA052/38
    MOV         $0786,#$18                  ; 2DA053/11860718
    MOV         VAR5,#$01                   ; 2DA057/0D0501
    MOV         REG,VAR2                    ; 2DA05A/1E02
    MOV         VAR6,REG                    ; 2DA05C/1D06
    A_JMP       L_2DA065                    ; 2DA05E/1765A0

L_2DA061:
    ZEROVEL                                 ; 2DA061/38
    ASMCALL     $AD3F                       ; 2DA062/D03FAD
L_2DA065:
    ONTICK      $2DAD7A                     ; 2DA065/087AAD2D
    MOV         VAR2,#$00                   ; 2DA069/0D0200
    MOV         REG,VAR5                    ; 2DA06C/1E05
    JNE         L_2DA075                    ; 2DA06E/0B75A0
    TASK        L_2DA079                    ; 2DA071/0779A0
    HALT                                    ; 2DA074/09

L_2DA075:
    TASK        L_2DA085                    ; 2DA075/0785A0
    HALT                                    ; 2DA078/09

L_2DA079:
    A_JSR       L_2DA091                    ; 2DA079/1891A0
L_2DA07C:
    WAIT        #16                         ; 2DA07C/0610
L_2DA07E:
    INC2POSE                                ; 2DA07E/90
    WAIT        #32                         ; 2DA07F/0620
L_2DA081:
    DEC2POSE                                ; 2DA081/A0
    A_JMP       L_2DA07C                    ; 2DA082/177CA0

L_2DA085:
    A_JSR       L_2DA091                    ; 2DA085/1891A0
L_2DA088:
    WAIT        #10                         ; 2DA088/060A
L_2DA08A:
    INC2POSE                                ; 2DA08A/90
    WAIT        #10                         ; 2DA08B/060A
L_2DA08D:
    DEC2POSE                                ; 2DA08D/A0
    A_JMP       L_2DA088                    ; 2DA08E/1788A0

L_2DA091:
    SPRITEMAP   $33963A                     ; 2DA091/1A3A9633
    ASMCALL     $8851                       ; 2DA095/D05188
    ASMCALL     $8C53                       ; 2DA098/D0538C
    LOOP        #25                         ; 2DA09B/0119
L_2DA09D:
        ASMCALL     $A6A8                       ; 2DA09D/D0A8A6
        MOV         VAR5,#$00                   ; 2DA0A0/0D0500
        ONTICK      $2DA6EF                     ; 2DA0A3/08EFA62D
        TASK        L_2DA274                    ; 2DA0A7/0774A2
    HALT                                    ; 2DA0AA/09

L_2DA0AB:
    SPRITEMAP   $339C20                     ; 2DA0AB/1A209C33
    ZEROVEL                                 ; 2DA0AF/38
    MOV         REG,VAR4                    ; 2DA0B0/1E04
    TABLEJMP    #3                          ; 2DA0B2/0F03
    .word       L_2DA0BA                    ; 2DA0B4/BAA0
    .word       L_2DA0C8                    ; 2DA0B6/C8A0
    .word       L_2DA0EF                    ; 2DA0B8/EFA0
L_2DA0BA:
    MOV         VAR2,#$05                   ; 2DA0BA/0D0205
    ONTICK      $2DA70E                     ; 2DA0BD/080EA72D
    A_JSR       L_2DA114                    ; 2DA0C1/1814A1
    MOV         VAR5,#$FF                   ; 2DA0C4/0D05FF
    HALT                                    ; 2DA0C7/09

L_2DA0C8:
    MOV         VAR2,#$07                   ; 2DA0C8/0D0207
    ONTICK      $2DA70E                     ; 2DA0CB/080EA72D
    A_JSR       L_2DA66A                    ; 2DA0CF/186AA6
    LOOP        #4                          ; 2DA0D2/0104
        SETPOSE     #$01                        ; 2DA0D4/5001
        ASMCALL     $A72B                       ; 2DA0D6/D02BA7
        WAIT        #4                          ; 2DA0D9/0604
L_2DA0DB:
        INC2POSE    WAIT #5                     ; 2DA0DB/95
L_2DA0DC:
        SETYVEL     #$FE00                      ; 2DA0DC/C000FE
        INC2POSE    WAIT #2                     ; 2DA0DF/92
L_2DA0E0:
        SETYVEL     #$0200                      ; 2DA0E0/C00002
        WAIT        #2                          ; 2DA0E3/0602
L_2DA0E5:
        ZEROVEL                                 ; 2DA0E5/38
        ASMCALL     $B130                       ; 2DA0E6/D030B1
        DEC2POSE    WAIT #5                     ; 2DA0E9/A5
L_2DA0EA:
    ENDLOOP                                 ; 2DA0EA/02
    MOV         VAR5,#$FF                   ; 2DA0EB/0D05FF
    HALT                                    ; 2DA0EE/09

L_2DA0EF:
    MOV         VAR2,#$06                   ; 2DA0EF/0D0206
    ONTICK      $2DA7D4                     ; 2DA0F2/08D4A72D
    A_JSR       L_2DA137                    ; 2DA0F6/1837A1
    ZEROVEL                                 ; 2DA0F9/38
    SETPOSE     #$01                        ; 2DA0FA/5001
    ASMCALL     $A72B                       ; 2DA0FC/D02BA7
    WAIT        #18                         ; 2DA0FF/0612
    INC2POSE                                ; 2DA101/90
    WAIT        #9                          ; 2DA102/0609
    INC2POSE                                ; 2DA104/90
    A_JSR       L_2DA15D                    ; 2DA105/185DA1
    ASMCALL     $B130                       ; 2DA108/D030B1
    ZEROVEL                                 ; 2DA10B/38
    A_JSR       L_2DA673                    ; 2DA10C/1873A6
    DEC2POSE    WAIT #9                     ; 2DA10F/A9
    MOV         VAR5,#$FF                   ; 2DA110/0D05FF
    HALT                                    ; 2DA113/09

L_2DA114:
    SETPOSE     #$01                        ; 2DA114/5001
    ASMCALL     $A72B                       ; 2DA116/D02BA7
    WAIT        #18                         ; 2DA119/0612
L_2DA11B:
    INC2POSE                                ; 2DA11B/90
    WAIT        #9                          ; 2DA11C/0609
L_2DA11E:
    SETYVEL     #$FE00                      ; 2DA11E/C000FE
    INC2POSE    WAIT #8                     ; 2DA121/98
L_2DA122:
    SETYVEL     #$FF00                      ; 2DA122/C000FF
    WAIT        #8                          ; 2DA125/0608
L_2DA127:
    SETYVEL     #$0100                      ; 2DA127/C00001
    WAIT        #8                          ; 2DA12A/0608
L_2DA12C:
    SETYVEL     #$0200                      ; 2DA12C/C00002
    WAIT        #8                          ; 2DA12F/0608
L_2DA131:
    ZEROVEL                                 ; 2DA131/38
    ASMCALL     $B130                       ; 2DA132/D030B1
    DEC2POSE    WAIT #9                     ; 2DA135/A9
L_2DA136:
    A_RTS                                   ; 2DA136/19

L_2DA137:
    SETPOSE     #$07                        ; 2DA137/5007
    ASMCALL     $A72B                       ; 2DA139/D02BA7
    WAIT        #24                         ; 2DA13C/0618
    ASMCALL     $DE4B                       ; 2DA13E/D04BDE // Play sound effect
    .byte       $17                         ; 2DA141/17
    SETYVEL     #$FC00                      ; 2DA142/C000FC
    INC2POSE                                ; 2DA145/90
    WAIT        #16                         ; 2DA146/0610
    SETYVEL     #$FD00                      ; 2DA148/C000FD
    WAIT        #6                          ; 2DA14B/0606
    SETYVEL     #$FE00                      ; 2DA14D/C000FE
    WAIT        #6                          ; 2DA150/0606
    SETYVEL     #$FF00                      ; 2DA152/C000FF
    WAIT        #6                          ; 2DA155/0606
    SETYVEL     #$FF80                      ; 2DA157/C080FF
    WAIT        #6                          ; 2DA15A/0606
    A_RTS                                   ; 2DA15C/19

L_2DA15D:
    WAIT        #6                          ; 2DA15D/0606
    SETYVEL     #$00C0                      ; 2DA15F/C0C000
    WAIT        #4                          ; 2DA162/0604
    SETYVEL     #$0140                      ; 2DA164/C04001
    WAIT        #4                          ; 2DA167/0604
    SETYVEL     #$0300                      ; 2DA169/C00003
    WAIT        #4                          ; 2DA16C/0604
    SETYVEL     #$0400                      ; 2DA16E/C00004
    WAIT        #4                          ; 2DA171/0604
    SETYVEL     #$0600                      ; 2DA173/C00006
    WAIT        #11                         ; 2DA176/060B
    A_RTS                                   ; 2DA178/19

L_2DA179:
    SPRITEMAP   $339D35                     ; 2DA179/1A359D33
    SETPOSE     #$01                        ; 2DA17D/5001
    ASMCALL     $A72B                       ; 2DA17F/D02BA7
    ONTICK      $2DA73C                     ; 2DA182/083CA72D
    HALT                                    ; 2DA186/09

L_2DA187:
    SPRITEMAP   $339D35                     ; 2DA187/1A359D33
    WAIT        #1                          ; 2DA18B/0601
L_2DA18D:
    ZEROVEL                                 ; 2DA18D/38
    MOV         REG,VAR4                    ; 2DA18E/1E04
    TABLEJMP    #3                          ; 2DA190/0F03
    .word       L_2DA198                    ; 2DA192/98A1
    .word       L_2DA1AB                    ; 2DA194/ABA1
    .word       L_2DA1D6                    ; 2DA196/D6A1
L_2DA198:
    ONTICK      $2DA77C                     ; 2DA198/087CA72D
    A_JSR       L_2DA202                    ; 2DA19C/1802A2
    ASMCALL     $A86F                       ; 2DA19F/D06FA8
    A_JSR       L_2DA673                    ; 2DA1A2/1873A6
    WAIT        #32                         ; 2DA1A5/0620
L_2DA1A7:
    A_JSR       L_2DA1F5                    ; 2DA1A7/18F5A1
    HALT                                    ; 2DA1AA/09

L_2DA1AB:
    ONTICK      $2DA77C                     ; 2DA1AB/087CA72D
    TASK        L_2DA1CD                    ; 2DA1AF/07CDA1
    LOOP        #4                          ; 2DA1B2/0104
        SETPOSE     #$01                        ; 2DA1B4/5001
        ASMCALL     $A72B                       ; 2DA1B6/D02BA7
        WAIT        #4                          ; 2DA1B9/0604
L_2DA1BB:
        ASMCALL     $DE4B                       ; 2DA1BB/D04BDE // Play sound effect
        .byte       $46                         ; 2DA1BE/46
        INC2POSE    WAIT #1                     ; 2DA1BF/91
L_2DA1C0:
        INC2POSE    WAIT #1                     ; 2DA1C0/91
L_2DA1C1:
        INC2POSE    WAIT #1                     ; 2DA1C1/91
L_2DA1C2:
        INC2POSE    WAIT #1                     ; 2DA1C2/91
L_2DA1C3:
        INC2POSE    WAIT #1                     ; 2DA1C3/91
L_2DA1C4:
        INC2POSE    WAIT #4                     ; 2DA1C4/94
L_2DA1C5:
        DEC2POSE                                ; 2DA1C5/A0
        DEC2POSE    WAIT #1                     ; 2DA1C6/A1
L_2DA1C7:
        DEC2POSE    WAIT #1                     ; 2DA1C7/A1
L_2DA1C8:
        DEC2POSE    WAIT #1                     ; 2DA1C8/A1
L_2DA1C9:
        DEC2POSE    WAIT #1                     ; 2DA1C9/A1
L_2DA1CA:
        DEC2POSE    WAIT #1                     ; 2DA1CA/A1
L_2DA1CB:
    ENDLOOP                                 ; 2DA1CB/02
    HALT                                    ; 2DA1CC/09

L_2DA1CD:
    WAIT        #9                          ; 2DA1CD/0609
L_2DA1CF:
    ASMCALL     $A86F                       ; 2DA1CF/D06FA8
    A_JSR       L_2DA66A                    ; 2DA1D2/186AA6
    ENDTASK                                 ; 2DA1D5/0C

L_2DA1D6:
    SETPOSE     #$FF                        ; 2DA1D6/50FF
    WAIT        #24                         ; 2DA1D8/0618
    SETPOSE     #$01                        ; 2DA1DA/5001
    ASMCALL     $A72B                       ; 2DA1DC/D02BA7
    ONTICK      $2DA7FE                     ; 2DA1DF/08FEA72D
    WAIT        #40                         ; 2DA1E3/0628
    ONTICK      $2DA77C                     ; 2DA1E5/087CA72D
    A_JSR       L_2DA202                    ; 2DA1E9/1802A2
    WAIT        #32                         ; 2DA1EC/0620
    ASMCALL     $A86F                       ; 2DA1EE/D06FA8
    A_JSR       L_2DA1F5                    ; 2DA1F1/18F5A1
    HALT                                    ; 2DA1F4/09

L_2DA1F5:
    SETPOSE     #$0B                        ; 2DA1F5/500B
    ASMCALL     $A72B                       ; 2DA1F7/D02BA7
    WAIT        #2                          ; 2DA1FA/0602
L_2DA1FC:
    DEC2POSE    WAIT #2                     ; 2DA1FC/A2
L_2DA1FD:
    DEC2POSE    WAIT #2                     ; 2DA1FD/A2
L_2DA1FE:
    DEC2POSE    WAIT #2                     ; 2DA1FE/A2
L_2DA1FF:
    DEC2POSE    WAIT #2                     ; 2DA1FF/A2
    DEC2POSE    WAIT #2                     ; 2DA200/A2
    A_RTS                                   ; 2DA201/19

L_2DA202:
    SETPOSE     #$01                        ; 2DA202/5001
    ASMCALL     $A72B                       ; 2DA204/D02BA7
    WAIT        #16                         ; 2DA207/0610
L_2DA209:
    ASMCALL     $DE4B                       ; 2DA209/D04BDE // Play sound effect
    .byte       $46                         ; 2DA20C/46
    INC2POSE    WAIT #2                     ; 2DA20D/92
L_2DA20E:
    INC2POSE    WAIT #2                     ; 2DA20E/92
L_2DA20F:
    INC2POSE    WAIT #2                     ; 2DA20F/92
L_2DA210:
    INC2POSE    WAIT #2                     ; 2DA210/92
L_2DA211:
    INC2POSE    WAIT #2                     ; 2DA211/92
L_2DA212:
    INC2POSE                                ; 2DA212/90
    A_RTS                                   ; 2DA213/19

L_2DA214:
    MOV         VAR2,#$02                   ; 2DA214/0D0202
    ASMCALL     $8851                       ; 2DA217/D05188 // Face towards Kirby
    MOV         VAR5,#$00                   ; 2DA21A/0D0500
    ONTICK      $2DACF6                     ; 2DA21D/08F6AC2D
    TASK        L_2DA274                    ; 2DA221/0774A2
L_2DA224:
    WAIT        #1                          ; 2DA224/0601
L_2DA226:
    MOV         REG,VAR5                    ; 2DA226/1E05
    JEQ         L_2DA224                    ; 2DA228/0A24A2
    ENDLASTTASK                             ; 2DA22B/12
    SPRITEMAP   $339886                     ; 2DA22C/1A869833
    ASMCALL     $AD2E                       ; 2DA230/D02EAD
    ASMCALL     $B4DB                       ; 2DA233/D0DBB4
    LOOP        #208                        ; 2DA236/01D0
        DEC2POSE    WAIT #10                    ; 2DA238/AA
        DECPOSE     WAIT #12                    ; 2DA239/8C
    END                                     ; 2DA23A/00

; CODE OR DATA -- $2DA23B .. $2DA23F
incbinRange "../split/prg/bank2d.bin", $023B, $023F

L_2DA23F:
    SETYVEL     #$FF00, WAIT #4             ; 2DA23F/C400FF
L_2DA242:
    INC2POSE                                ; 2DA242/90
    SETYVEL     #$0100, WAIT #4             ; 2DA243/C40001
L_2DA246:
    SETYVEL     #$0200, WAIT #4             ; 2DA246/C40002
L_2DA249:
    ASMCALL     $AD3A                       ; 2DA249/D03AAD
    A_JSR       L_2DA673                    ; 2DA24C/1873A6
    ASMCALL     $DE4B                       ; 2DA24F/D04BDE // Play sound effect
    .byte       $38                         ; 2DA252/38
    ASMCALL     $8CAA                       ; 2DA253/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0140                       ; 2DA256/4001
    SETYVEL     #$0000, WAIT #10            ; 2DA258/CA0000
L_2DA25B:
    ASMCALL     $8CAA, WAIT #10             ; 2DA25B/DAAA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0100                       ; 2DA25E/0001
L_2DA260:
    ASMCALL     $8CAA, WAIT #10             ; 2DA260/DAAA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0080                       ; 2DA263/8000
L_2DA265:
    ASMCALL     $8CAA, WAIT #10             ; 2DA265/DAAA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0020                       ; 2DA268/2000
L_2DA26A:
    ZEROVEL                                 ; 2DA26A/38
    WAIT        #32                         ; 2DA26B/0620
L_2DA26D:
    INC2POSE                                ; 2DA26D/90
    WAIT        #50                         ; 2DA26E/0632
L_2DA270:
    MOV         VAR5,#$FF                   ; 2DA270/0D05FF
    HALT                                    ; 2DA273/09

L_2DA274:
    SPRITEMAP   $3396A6                     ; 2DA274/1AA69633
    ASMCALL     $8851                       ; 2DA278/D05188 // Face towards Kirby
L_2DA27B:
    ASMCALL     $B4DB                       ; 2DA27B/D0DBB4
    LOOP        #208                        ; 2DA27E/01D0
        DEC2POSE    WAIT #10                    ; 2DA280/AA
        DECPOSE     WAIT #12                    ; 2DA281/8C
    END                                     ; 2DA282/00

; CODE OR DATA -- $2DA283 .. $2DA287
incbinRange "../split/prg/bank2d.bin", $0283, $0287

L_2DA287:
    INC2POSE                                ; 2DA287/90
    ASMCALL     $8CAA                       ; 2DA288/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0200                       ; 2DA28B/0002
    SETYVEL     #$FF80, WAIT #4             ; 2DA28D/C480FF
L_2DA290:
    ASMCALL     $8CAA                       ; 2DA290/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0140                       ; 2DA293/4001
    SETYVEL     #$0000, WAIT #4             ; 2DA295/C40000
L_2DA298:
    ASMCALL     $8CAA                       ; 2DA298/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0100                       ; 2DA29B/0001
    SETYVEL     #$0000, WAIT #4             ; 2DA29D/C40000
L_2DA2A0:
    ASMCALL     $8CAA                       ; 2DA2A0/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0100                       ; 2DA2A3/0001
    SETYVEL     #$0080, WAIT #4             ; 2DA2A5/C48000
L_2DA2A8:
    A_JMP       L_2DA27B                    ; 2DA2A8/177BA2

L_2DA2AB:
    MOV         VAR2,#$01                   ; 2DA2AB/0D0201
    MOV         VAR4,#$00                   ; 2DA2AE/0D0400
    SPRITEMAP   $339722                     ; 2DA2B1/1A229733
    ASMCALL     $8851                       ; 2DA2B5/D05188 // Face towards Kirby
    ONTICK      $2DAB29                     ; 2DA2B8/0829AB2D
    TASK        L_2DA2E5                    ; 2DA2BC/07E5A2
    WAIT        #24                         ; 2DA2BF/0618
L_2DA2C1:
    ASMCALL     $DE4B                       ; 2DA2C1/D04BDE // Play sound effect
    .byte       $17                         ; 2DA2C4/17
    HALT                                    ; 2DA2C5/09

L_2DA2C6:
    SPRITEMAP   $339722                     ; 2DA2C6/1A229733
    ONTICK      $2DAB29                     ; 2DA2CA/0829AB2D
    TASK        L_2DA2D2                    ; 2DA2CE/07D2A2
    HALT                                    ; 2DA2D1/09

L_2DA2D2:
    MOV         REG,VAR6                    ; 2DA2D2/1E06
    JEQ         L_2DA2D9                    ; 2DA2D4/0AD9A2
    WAIT        VAR6                        ; 2DA2D7/1F06
L_2DA2D9:
    MOV         REG,VAR5                    ; 2DA2D9/1E05
    TABLEJMP    #4                          ; 2DA2DB/0F04
    .word       L_2DA2F3                    ; 2DA2DD/F3A2
    .word       L_2DA308                    ; 2DA2DF/08A3
    .word       L_2DA300                    ; 2DA2E1/00A3
    .word       L_2DA319                    ; 2DA2E3/19A3
L_2DA2E5:
    ZEROVEL                                 ; 2DA2E5/38
    ASMCALL     $AB49                       ; 2DA2E6/D049AB
    MOV         REG,VAR5                    ; 2DA2E9/1E05
    JNE         L_2DA303                    ; 2DA2EB/0B03A3
L_2DA2EE:
    ASMCALL     $AB8A                       ; 2DA2EE/D08AAB
    WAIT        VAR6                        ; 2DA2F1/1F06
L_2DA2F3:
    MOV         REG,VAR4                    ; 2DA2F3/1E04
    JEQ         L_2DA2EE                    ; 2DA2F5/0AEEA2
    ASMCALL     $AB68                       ; 2DA2F8/D068AB
L_2DA2FB:
    ASMCALL     $ABEA                       ; 2DA2FB/D0EAAB
    WAIT        VAR6                        ; 2DA2FE/1F06
L_2DA300:
    A_JMP       L_2DA2FB                    ; 2DA300/17FBA2

L_2DA303:
    ASMCALL     $AB8A                       ; 2DA303/D08AAB
    WAIT        VAR6                        ; 2DA306/1F06
L_2DA308:
    MOV         REG,VAR4                    ; 2DA308/1E04
    JEQ         L_2DA303                    ; 2DA30A/0A03A3
    MOV         VAR5,#$03                   ; 2DA30D/0D0503
    MOV         $0786,#$00                  ; 2DA310/11860700
L_2DA314:
    ASMCALL     $ABEA                       ; 2DA314/D0EAAB
    WAIT        VAR6                        ; 2DA317/1F06
L_2DA319:
    A_JMP       L_2DA314                    ; 2DA319/1714A3

L_2DA31C:
    MOV         VAR2,#$03                   ; 2DA31C/0D0203
    ASMCALL     $A8E4                       ; 2DA31F/D0E4A8
    ONTICK      $2DA88B                     ; 2DA322/088BA82D
    TASK        L_2DA274                    ; 2DA326/0774A2
    HALT                                    ; 2DA329/09

L_2DA32A:
    ZEROVEL                                 ; 2DA32A/38
    ASMCALL     $B130                       ; 2DA32B/D030B1
    SPRITEMAP   $339758                     ; 2DA32E/1A589733
    ASMCALL     $A8C5                       ; 2DA332/D0C5A8
    MOV         VAR4,#$00                   ; 2DA335/0D0400
    ONTICK      $2DA90B                     ; 2DA338/080BA92D
    ASMCALL     $DE4B                       ; 2DA33C/D04BDE // Play sound effect
    .byte       $18                         ; 2DA33F/18
L_2DA340:
    SETXVEL     #$0100, WAIT #2             ; 2DA340/B20001
L_2DA343:
    SETXVEL     #$FF00, WAIT #2             ; 2DA343/B200FF
L_2DA346:
    A_JMP       L_2DA340                    ; 2DA346/1740A3

L_2DA349:
    ZEROVEL                                 ; 2DA349/38
    WAIT        #1                          ; 2DA34A/0601
L_2DA34C:
    SPRITEMAP   $339796                     ; 2DA34C/1A969733
    ASMCALL     $B4DB                       ; 2DA350/D0DBB4
    LOOP        #6                          ; 2DA353/0106
    .byte 4
L_2DA356:
        INC2POSE                                ; 2DA356/90
        WAIT        #51                         ; 2DA357/0633
L_2DA359:
        ASMCALL     $A9B2                       ; 2DA359/D0B2A9
        ASMCALL     $AA56                       ; 2DA35C/D056AA
        MOV         VAR6,#$01                   ; 2DA35F/0D0601
        ONTICK      $2DA9D4                     ; 2DA362/08D4A92D
        ASMCALL     $DE4B                       ; 2DA366/D04BDE // Play sound effect
        .byte       $1B                         ; 2DA369/1B
        MOV         VAR5,#$00                   ; 2DA36A/0D0500
        ASMCALL     $B4DB                       ; 2DA36D/D0DBB4
        A_RTL                                   ; 2DA370/05
        ASMCALL     $8CAA, WAIT #4              ; 2DA371/D4AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $FE00                       ; 2DA374/00FE
L_2DA376:
        ASMCALL     $8CAA, WAIT #4              ; 2DA376/D4AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $FF00                       ; 2DA379/00FF
L_2DA37B:
        ASMCALL     $8CAA, WAIT #4              ; 2DA37B/D4AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $FF80                       ; 2DA37E/80FF
L_2DA380:
        ASMCALL     $8CAA                       ; 2DA380/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $0000                       ; 2DA383/0000
        WAIT        #51                         ; 2DA385/0633
L_2DA387:
        INC2POSE                                ; 2DA387/90
        WAIT        #32                         ; 2DA388/0620
L_2DA38A:
        MOV         VAR5,#$01                   ; 2DA38A/0D0501
    HALT                                    ; 2DA38D/09

L_2DA38E:
    MOV         $05E1,#$05                  ; 2DA38E/11E10505
    ZEROVEL                                 ; 2DA392/38
    ASMCALL     $B3A9                       ; 2DA393/D0A9B3
    ONMOVE      $D86A                       ; 2DA396/236AD8
    ONTICK      $2DB3DB                     ; 2DA399/08DBB32D
    TASK        L_2DA3A1                    ; 2DA39D/07A1A3
    HALT                                    ; 2DA3A0/09

L_2DA3A1:
    SPRITEMAP   $339E0E                     ; 2DA3A1/1A0E9E33
    MOV         REG,$05E0                   ; 2DA3A5/1CE005
    TABLEJMP    #2                          ; 2DA3A8/0F02
    .word       L_2DA3AE                    ; 2DA3AA/AEA3
    .word       L_2DA3C4                    ; 2DA3AC/C4A3
L_2DA3AE:
    ASMCALL     $A9EA                       ; 2DA3AE/D0EAA9
    JNE         L_2DA3BC                    ; 2DA3B1/0BBCA3
L_2DA3B4:
    SETPOSE     #$00, WAIT #8               ; 2DA3B4/5800
L_2DA3B6:
    INCPOSE     WAIT #8                     ; 2DA3B6/78
L_2DA3B7:
    INCPOSE     WAIT #8                     ; 2DA3B7/78
L_2DA3B8:
    INCPOSE     WAIT #8                     ; 2DA3B8/78
L_2DA3B9:
    A_JMP       L_2DA3B4                    ; 2DA3B9/17B4A3

L_2DA3BC:
    SETPOSE     #$03, WAIT #8               ; 2DA3BC/5803
L_2DA3BE:
    DECPOSE     WAIT #8                     ; 2DA3BE/88
L_2DA3BF:
    DECPOSE     WAIT #8                     ; 2DA3BF/88
L_2DA3C0:
    DECPOSE     WAIT #8                     ; 2DA3C0/88
L_2DA3C1:
    A_JMP       L_2DA3BC                    ; 2DA3C1/17BCA3

L_2DA3C4:
    SETPOSE     #$04                        ; 2DA3C4/5004
    HALT                                    ; 2DA3C6/09

L_2DA3C7:
    SETPOSE     #$FF                        ; 2DA3C7/50FF
    HALT                                    ; 2DA3C9/09

L_2DA3CA:
    ASMCALL     $AA5B                       ; 2DA3CA/D05BAA
    JEQ         L_2DA3D8                    ; 2DA3CD/0AD8A3
    MOV         $05F9,#$00                  ; 2DA3D0/11F90500
    JML         KSTEE_Miss                    ; 2DA3D4/03F8A414

L_2DA3D8:
    MOV         $05F9,#$60                  ; 2DA3D8/11F90560
    ONTICK      $2195DE                     ; 2DA3DC/08DE9521
    SPRITEMAP   $339E0E                     ; 2DA3E0/1A0E9E33
    SETPOSE     #$00                        ; 2DA3E4/5000
    SETYVEL     #$FD00                      ; 2DA3E6/C000FD
    ASMCALL     $AA02                       ; 2DA3E9/D002AA
    TASK        L_2DA3FE                    ; 2DA3EC/07FEA3
    LOOP        #48                         ; 2DA3EF/0130
        ADDYVEL     #$0020                      ; 2DA3F1/2F2000
        WAIT        #1                          ; 2DA3F4/0601
L_2DA3F6:
    ENDLOOP                                 ; 2DA3F6/02
    ENDLASTTASK                             ; 2DA3F7/12
    ZEROVEL                                 ; 2DA3F8/38
    ONTICK      $2DAA15                     ; 2DA3F9/0815AA2D
    HALT                                    ; 2DA3FD/09

L_2DA3FE:
    ASMCALL     $A9F6                       ; 2DA3FE/D0F6A9
    JNE         L_2DA3BC                    ; 2DA401/0BBCA3
    A_JMP       L_2DA3B4                    ; 2DA404/17B4A3

L_2DA407:
    ZEROVEL                                 ; 2DA407/38
    MOV         VAR2,#$04                   ; 2DA408/0D0204
    MOV         VAR5,#$00                   ; 2DA40B/0D0500
    MOV         VAR4,#$00                   ; 2DA40E/0D0400
    SPRITEMAP   $339B28                     ; 2DA411/1A289B33
    ONTICK      $2DAA64                     ; 2DA415/0864AA2D
    ASMCALL     $B4DB                       ; 2DA419/D0DBB4
    LOOP        #200                        ; 2DA41C/01C8
    END                                     ; 2DA41E/00

; CODE OR DATA -- $2DA41F .. $2DA420
incbinRange "../split/prg/bank2d.bin", $041F, $0420

L_2DA420:
    INC2POSE                                ; 2DA420/90
    SETYVEL     #$FD00, WAIT #4             ; 2DA421/C400FD
L_2DA424:
    SETYVEL     #$FE00, WAIT #8             ; 2DA424/C800FE
L_2DA427:
    SETYVEL     #$FF00, WAIT #8             ; 2DA427/C800FF
L_2DA42A:
    SETYVEL     #$FF80, WAIT #8             ; 2DA42A/C880FF
L_2DA42D:
    MOV         VAR5,#$01                   ; 2DA42D/0D0501
    SETYVEL     #$0080, WAIT #8             ; 2DA430/C88000
L_2DA433:
    ASMCALL     $DE4B                       ; 2DA433/D04BDE // Play sound effect
    .byte       $48                         ; 2DA436/48
    INC2POSE                                ; 2DA437/90
    SETYVEL     #$0100, WAIT #8             ; 2DA438/C80001
L_2DA43B:
    SETYVEL     #$0080, WAIT #8             ; 2DA43B/C88000
L_2DA43E:
    SETYVEL     #$FFE0, WAIT #8             ; 2DA43E/C8E0FF
L_2DA441:
    SETYVEL     #$FF80, WAIT #8             ; 2DA441/C880FF
L_2DA444:
    SETYVEL     #$0034                      ; 2DA444/C03400
    MOV         $0786,#$2C                  ; 2DA447/1186072C
    MOV         $0787,#$01                  ; 2DA44B/11870701
    MOV         VAR4,#$01                   ; 2DA44F/0D0401
L_2DA452:
    HALT                                    ; 2DA452/09

L_2DA453:
    ZEROVEL                                 ; 2DA453/38
    MOV         VAR4,#$00                   ; 2DA454/0D0400
    MOV         VAR5,#$00                   ; 2DA457/0D0500
    ONTICK      $2DAADF                     ; 2DA45A/08DFAA2D
    ASMCALL     $AB19                       ; 2DA45E/D019AB
    ASMCALL     $DE4B                       ; 2DA461/D04BDE // Play sound effect
    .byte       $1A                         ; 2DA464/1A
    ASMCALL     $B4DB                       ; 2DA465/D0DBB4
    JML         $8CAAD2                     ; 2DA468/03D2AA8C

; CODE OR DATA -- $2DA46C .. $2DA46E
incbinRange "../split/prg/bank2d.bin", $046C, $046E

L_2DA46E:
    ASMCALL     $8CAA, WAIT #2              ; 2DA46E/D2AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF00                       ; 2DA471/00FF
L_2DA473:
    ASMCALL     $8CAA, WAIT #2              ; 2DA473/D2AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF80                       ; 2DA476/80FF
L_2DA478:
    ASMCALL     $8CAA, WAIT #2              ; 2DA478/D2AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0080                       ; 2DA47B/8000
L_2DA47D:
    MOV         VAR4,#$01                   ; 2DA47D/0D0401
    ZEROVEL                                 ; 2DA480/38
    HALT                                    ; 2DA481/09

; CODE OR DATA -- $2DA482 .. $2DA488
incbinRange "../split/prg/bank2d.bin", $0482, $0488

L_2DA488:
    ASMCALL     $AE40                       ; 2DA488/D040AE
    A_JSR       L_2DA4BB                    ; 2DA48B/18BBA4
    ASMCALL     $AE61                       ; 2DA48E/D061AE
    A_JMP       L_2DA2C6                    ; 2DA491/17C6A2

; CODE OR DATA -- $2DA494 .. $2DA4A5
incbinRange "../split/prg/bank2d.bin", $0494, $04A5

L_2DA4A5:
    A_JSR       L_2DA4BB                    ; 2DA4A5/18BBA4
    ONTICK      $2DAE96                     ; 2DA4A8/0896AE2D
    HALT                                    ; 2DA4AC/09

L_2DA4AD:
    ASMCALL     $B130                       ; 2DA4AD/D030B1
    ASMCALL     $AE23                       ; 2DA4B0/D023AE
    A_JSR       L_2DA4BB                    ; 2DA4B3/18BBA4
    ONTICK      $2DAE88                     ; 2DA4B6/0888AE2D
    HALT                                    ; 2DA4BA/09

L_2DA4BB:
    ZEROVEL                                 ; 2DA4BB/38
    SPRITEMAP   $339A02                     ; 2DA4BC/1A029A33
    ASMCALL     $AE31                       ; 2DA4C0/D031AE
    ASMCALL     $859F                       ; 2DA4C3/D09F85 // Unknown ASM $22859F
    .word       $0018                       ; 2DA4C6/1800
    A_JSR       L_2DA673                    ; 2DA4C8/1873A6
    ONTICK      $2DAE82                     ; 2DA4CB/0882AE2D
    LOOP        #2                          ; 2DA4CF/0102
        SETXVEL     #$0100                      ; 2DA4D1/B00001
        WAIT        #1                          ; 2DA4D4/0601
L_2DA4D6:
        LOOP        #3                          ; 2DA4D6/0103
            SETXVEL     #$FF00                      ; 2DA4D8/B000FF
            WAIT        #2                          ; 2DA4DB/0602
L_2DA4DD:
            SETXVEL     #$0100                      ; 2DA4DD/B00001
            WAIT        #2                          ; 2DA4E0/0602
L_2DA4E2:
        ENDLOOP                                 ; 2DA4E2/02
        SETXVEL     #$FF00                      ; 2DA4E3/B000FF
        WAIT        #2                          ; 2DA4E6/0602
L_2DA4E8:
        SETXVEL     #$0100                      ; 2DA4E8/B00001
        WAIT        #1                          ; 2DA4EB/0601
L_2DA4ED:
        ZEROVEL                                 ; 2DA4ED/38
        WAIT        #4                          ; 2DA4EE/0604
L_2DA4F0:
    ENDLOOP                                 ; 2DA4F0/02
    MOV         VAR3,#$30                   ; 2DA4F1/0D0330
    ENDTICK                                 ; 2DA4F4/0E
    WAIT        #1                          ; 2DA4F5/0601
L_2DA4F7:
    ONDRAW      $DA89                       ; 2DA4F7/2089DA
    A_RTS                                   ; 2DA4FA/19

L_2DA4FB:
    ZEROVEL                                 ; 2DA4FB/38
    ASMCALL_l   $219952                     ; 2DA4FC/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2DA500/00
    .byte       $00                         ; 2DA501/00
    .byte       $0C                         ; 2DA502/0C
    .byte       $00                         ; 2DA503/00
    A_JSR       $83C8                       ; 2DA504/18C883
    A_JSR       $81DF                       ; 2DA507/18DF81
    ASMCALL     $DE45                       ; 2DA50A/D045DE // Play music
    .byte       $FF                         ; 2DA50D/FF
    SETZPOS     #$0080                      ; 2DA50E/3A8000
    SPRITEMAP   $339A40                     ; 2DA511/1A409A33
    ASMCALL     $AEC3                       ; 2DA515/D0C3AE
    ONTICK      $2DAEE2                     ; 2DA518/08E2AE2D
    HALT                                    ; 2DA51C/09

L_2DA51D:
    MOV         VAR2,#$78                   ; 2DA51D/0D0278
    ZEROVEL                                 ; 2DA520/38
    MOV         $0786,#$FF                  ; 2DA521/118607FF
    WAIT        #16                         ; 2DA525/0610
L_2DA527:
    INC2POSE    WAIT #2                     ; 2DA527/92
L_2DA528:
    DEC2POSE                                ; 2DA528/A0
    WAIT        #16                         ; 2DA529/0610
L_2DA52B:
    INC2POSE    WAIT #2                     ; 2DA52B/92
L_2DA52C:
    DEC2POSE                                ; 2DA52C/A0
    WAIT        #52                         ; 2DA52D/0634
L_2DA52F:
    INC2POSE    WAIT #2                     ; 2DA52F/92
L_2DA530:
    DEC2POSE                                ; 2DA530/A0
    WAIT        #52                         ; 2DA531/0634
L_2DA533:
    INC2POSE                                ; 2DA533/90
    INC2POSE                                ; 2DA534/90
    MOV         VAR5,#$08                   ; 2DA535/0D0508
    ASMCALL     $AF00                       ; 2DA538/D000AF
    ONTICK      $2DAF10                     ; 2DA53B/0810AF2D
    A_JSR       L_2DA673                    ; 2DA53F/1873A6
    ASMCALL     $8CAA                       ; 2DA542/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0200                       ; 2DA545/0002
    WAIT        #8                          ; 2DA547/0608
L_2DA549:
    ASMCALL     $8CAA                       ; 2DA549/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0100                       ; 2DA54C/0001
    WAIT        #8                          ; 2DA54E/0608
L_2DA550:
    ASMCALL     $8CAA                       ; 2DA550/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0080                       ; 2DA553/8000
    WAIT        #8                          ; 2DA555/0608
L_2DA557:
    ZEROVEL                                 ; 2DA557/38
    TASK        L_2DA582                    ; 2DA558/0782A5
L_2DA55B:
    WAIT        #1                          ; 2DA55B/0601
L_2DA55D:
    MOV         REG,VAR2                    ; 2DA55D/1E02
    JEQ         L_2DA569                    ; 2DA55F/0A69A5
    MOV         REG,VAR5                    ; 2DA562/1E05
    JNE         L_2DA55B                    ; 2DA564/0B5BA5
    WAIT        #150                        ; 2DA567/0696
L_2DA569:
    LOOP        #4                          ; 2DA569/0104
        ASMCALL     $C996, WAIT #6              ; 2DA56B/D696C9 // Palette fade (out?) step
L_2DA56E:
    ENDLOOP                                 ; 2DA56E/02
    MOV         REG,$00F4                   ; 2DA56F/1CF400
    ADD         REG,#-2                     ; 2DA572/2502FE
    JEQ         L_2DA57D                    ; 2DA575/0A7DA5
    MOV         $056A,#$05                  ; 2DA578/116A0505
    HALT                                    ; 2DA57C/09

L_2DA57D:
    MOV         $056A,#$07                  ; 2DA57D/116A0507
    HALT                                    ; 2DA581/09

L_2DA582:
    WAIT        #16                         ; 2DA582/0610
L_2DA584:
    INC2POSE    WAIT #4                     ; 2DA584/94
L_2DA585:
    DEC2POSE    WAIT #8                     ; 2DA585/A8
L_2DA586:
    INC2POSE    WAIT #4                     ; 2DA586/94
L_2DA587:
    DEC2POSE                                ; 2DA587/A0
    WAIT        #32                         ; 2DA588/0620
L_2DA58A:
    A_JMP       L_2DA584                    ; 2DA58A/1784A5

L_2DA58D:
    SETZPOS     #$00FF                      ; 2DA58D/3AFF00
    SPRITEMAP   $308B82                     ; 2DA590/1A828B30
    SETPOSE     #$00                        ; 2DA594/5000
    ASMCALL     $AFA9                       ; 2DA596/D0A9AF
    WAIT        #3                          ; 2DA599/0603
L_2DA59B:
    ZEROVEL                                 ; 2DA59B/38
    WAIT        #6                          ; 2DA59C/0606
L_2DA59E:
    END                                     ; 2DA59E/00

L_2DA59F:
    ZEROVEL                                 ; 2DA59F/38
    ASMCALL     $B044                       ; 2DA5A0/D044B0
    SPRITEMAP   $339D99                     ; 2DA5A3/1A999D33
    ONTICK      $2DB03C                     ; 2DA5A7/083CB02D
    MOV         REG,VAR4                    ; 2DA5AB/1E04
    JNE         L_2DA5CA                    ; 2DA5AD/0BCAA5
    SETXVEL     #$0400                      ; 2DA5B0/B00004
    WAIT        #6                          ; 2DA5B3/0606
L_2DA5B5:
    SETXVEL     #$0200                      ; 2DA5B5/B00002
    WAIT        #6                          ; 2DA5B8/0606
L_2DA5BA:
    SETXVEL     #$0100                      ; 2DA5BA/B00001
    WAIT        #6                          ; 2DA5BD/0606
L_2DA5BF:
    SETXVEL     #$0080                      ; 2DA5BF/B08000
    WAIT        #6                          ; 2DA5C2/0606
L_2DA5C4:
    SETXVEL     #$0020                      ; 2DA5C4/B02000
    WAIT        #6                          ; 2DA5C7/0606
L_2DA5C9:
    END                                     ; 2DA5C9/00

L_2DA5CA:
    SETXVEL     #$FC00                      ; 2DA5CA/B000FC
    WAIT        #6                          ; 2DA5CD/0606
L_2DA5CF:
    SETXVEL     #$FE00                      ; 2DA5CF/B000FE
    WAIT        #6                          ; 2DA5D2/0606
L_2DA5D4:
    SETXVEL     #$FF00                      ; 2DA5D4/B000FF
    WAIT        #6                          ; 2DA5D7/0606
L_2DA5D9:
    SETXVEL     #$FF80                      ; 2DA5D9/B080FF
    WAIT        #6                          ; 2DA5DC/0606
L_2DA5DE:
    SETXVEL     #$FFE0                      ; 2DA5DE/B0E0FF
    WAIT        #6                          ; 2DA5E1/0606
L_2DA5E3:
    END                                     ; 2DA5E3/00

L_2DA5E4:
    SETZPOS     #$00FF                      ; 2DA5E4/3AFF00
    SPRITEMAP   $339DE2                     ; 2DA5E7/1AE29D33
    ASMCALL     $B0B3                       ; 2DA5EB/D0B3B0
    ONTICK      $2DB09F                     ; 2DA5EE/089FB02D
    MOV         REG,VAR4                    ; 2DA5F2/1E04
    JNE         L_2DA5FF                    ; 2DA5F4/0BFFA5
L_2DA5F7:
    SETPOSE     #$00, WAIT #4               ; 2DA5F7/5400
L_2DA5F9:
    INCPOSE     WAIT #4                     ; 2DA5F9/74
L_2DA5FA:
    INCPOSE     WAIT #4                     ; 2DA5FA/74
L_2DA5FB:
    INCPOSE     WAIT #4                     ; 2DA5FB/74
L_2DA5FC:
    A_JMP       L_2DA5F7                    ; 2DA5FC/17F7A5

L_2DA5FF:
    SETPOSE     #$03, WAIT #4               ; 2DA5FF/5403
L_2DA601:
    DECPOSE     WAIT #4                     ; 2DA601/84
L_2DA602:
    DECPOSE     WAIT #4                     ; 2DA602/84
L_2DA603:
    DECPOSE     WAIT #4                     ; 2DA603/84
L_2DA604:
    A_JMP       L_2DA5FF                    ; 2DA604/17FFA5

L_2DA607:
    MOV         $05A0,#$06                  ; 2DA607/11A00506
    MOV         $05A1,#$5A                  ; 2DA60B/11A1055A
    ASMCALL     $AA2C                       ; 2DA60F/D02CAA
    A_JSR       L_2DA673                    ; 2DA612/1873A6
    ASMCALL     $DE4B                       ; 2DA615/D04BDE // Play sound effect
    .byte       $06                         ; 2DA618/06
    JML         $22818B                     ; 2DA619/038B8122

L_2DA61D:
    SETBANK     #$22                        ; 2DA61D/2822
    SETZPOS     #$0080                      ; 2DA61F/3A8000
    SPRITEMAP   $339DAF                     ; 2DA622/1AAF9D33
    SETBANK     #$22                        ; 2DA626/2822
    ONTICK      $2DAFF8                     ; 2DA628/08F8AF2D
    SETYVEL     #$FE80                      ; 2DA62C/C080FE
    MOV         VAR3,#$00                   ; 2DA62F/0D0300
    ASMCALL     $B01B                       ; 2DA632/D01BB0
    SETPOSE     #$00, WAIT #6               ; 2DA635/5600
L_2DA637:
    ASMCALL     $B01B                       ; 2DA637/D01BB0
    MOV         REG,VAR2                    ; 2DA63A/1E02
    TABLEJMP    #2                          ; 2DA63C/0F02
    .word       L_2DA642                    ; 2DA63E/42A6
    .word       L_2DA655                    ; 2DA640/55A6
L_2DA642:
    SETYVEL     #$FF80                      ; 2DA642/C080FF
    INCPOSE     WAIT #5                     ; 2DA645/75
L_2DA646:
    INCPOSE     WAIT #5                     ; 2DA646/75
L_2DA647:
    ZEROVEL                                 ; 2DA647/38
    INCPOSE     WAIT #6                     ; 2DA648/76
L_2DA649:
    SETPOSE     #$00, WAIT #6               ; 2DA649/5600
L_2DA64B:
    INCPOSE     WAIT #6                     ; 2DA64B/76
L_2DA64C:
    INCPOSE     WAIT #6                     ; 2DA64C/76
L_2DA64D:
    INCPOSE     WAIT #6                     ; 2DA64D/76
L_2DA64E:
    ENDTICK                                 ; 2DA64E/0E
    SETZPOS     #$00FF                      ; 2DA64F/3AFF00
    SETPOSE     #$04, WAIT #6               ; 2DA652/5604
L_2DA654:
    END                                     ; 2DA654/00

L_2DA655:
    SETYVEL     #$FF80                      ; 2DA655/C080FF
    INCPOSE     WAIT #5                     ; 2DA658/75
L_2DA659:
    INCPOSE     WAIT #5                     ; 2DA659/75
L_2DA65A:
    ZEROVEL                                 ; 2DA65A/38
    LOOP        #2                          ; 2DA65B/0102
        SETPOSE     #$00, WAIT #6               ; 2DA65D/5600
L_2DA65F:
        INCPOSE     WAIT #6                     ; 2DA65F/76
L_2DA660:
        INCPOSE     WAIT #6                     ; 2DA660/76
L_2DA661:
        INCPOSE     WAIT #6                     ; 2DA661/76
L_2DA662:
    ENDLOOP                                 ; 2DA662/02
    ENDTICK                                 ; 2DA663/0E
    SETZPOS     #$00FF                      ; 2DA664/3AFF00
    SETPOSE     #$04, WAIT #6               ; 2DA667/5604
L_2DA669:
    END                                     ; 2DA669/00

L_2DA66A:
    ASMCALL_l   $219952                     ; 2DA66A/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2DA66E/00
    .byte       $00                         ; 2DA66F/00
    .byte       $0C                         ; 2DA670/0C
    .byte       $00                         ; 2DA671/00
    A_RTS                                   ; 2DA672/19

L_2DA673:
    ASMCALL_l   $219952                     ; 2DA673/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2DA677/00
    .byte       $00                         ; 2DA678/00
    .byte       $0C                         ; 2DA679/0C
    .byte       $00                         ; 2DA67A/00
    A_RTS                                   ; 2DA67B/19

; CODE OR DATA -- $2DA67C .. $2DB594
incbinRange "../split/prg/bank2d.bin", $067C, $1594

Script20_BroomHatter:
    SPRITEMAP   $3289D4                     ; 2DB594/1AD48932
    MOV         REG,#$02                    ; 2DB598/1B02
    ASMCALL_l   $228470                     ; 2DB59A/26708422
    MOV         VAR5,#$00                   ; 2DB59E/0D0500
    ONTICK      $2DB66B                     ; 2DB5A1/086BB62D
    ASMCALL     $8851                       ; 2DB5A5/D05188
    MOV         VAR6,REG                    ; 2DB5A8/1D06
L_2DB5AA:
    MOV         VAR3,#$00                   ; 2DB5AA/0D0300
    LOOP        #2                          ; 2DB5AD/0102
        ASMCALL     $E26A                       ; 2DB5AF/D06AE2 // Set X velocity (respect facing)
        .word       $0100                       ; 2DB5B2/0001
        MOV         VAR2,#$00                   ; 2DB5B4/0D0200
        ASMCALL     $8C53, WAIT #10             ; 2DB5B7/DA538C // Set pose (respect facing)
        .byte       $01                         ; 2DB5BA/01
L_2DB5BB:
        MOV         VAR2,#$01                   ; 2DB5BB/0D0201
        WAIT        #10                         ; 2DB5BE/060A
L_2DB5C0:
        MOV         VAR2,#$02                   ; 2DB5C0/0D0202
        ASMCALL     $8C53, WAIT #8              ; 2DB5C3/D8538C // Set pose (respect facing)
        .byte       $02                         ; 2DB5C6/02
L_2DB5C7:
        MOV         VAR2,#$03                   ; 2DB5C7/0D0203
        ASMCALL     $8C53, WAIT #10             ; 2DB5CA/DA538C // Set pose (respect facing)
        .byte       $03                         ; 2DB5CD/03
L_2DB5CE:
        ASMCALL     $DE4B                       ; 2DB5CE/D04BDE // Play sound effect
        .byte       $23                         ; 2DB5D1/23
        ASMCALL     $9591                       ; 2DB5D2/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
        .byte       $01                         ; 2DB5D5/01
        .byte       $00                         ; 2DB5D6/00
        .byte       $01                         ; 2DB5D7/01
        .byte       $0C                         ; 2DB5D8/0C
        .byte       $08                         ; 2DB5D9/08
        MOV         VAR2,#$04                   ; 2DB5DA/0D0204
        ASMCALL     $8C53, WAIT #2              ; 2DB5DD/D2538C // Set pose (respect facing)
        .byte       $02                         ; 2DB5E0/02
L_2DB5E1:
    ENDLOOP                                 ; 2DB5E1/02
L_2DB5E2:
    ASMCALL     $B741                       ; 2DB5E2/D041B7
    TABLEJMP    #3                          ; 2DB5E5/0F03
    .word       L_2DB5ED                    ; 2DB5E7/EDB5
    .word       L_2DB5F4                    ; 2DB5E9/F4B5
    .word       L_2DB5FB                    ; 2DB5EB/FBB5
L_2DB5ED:
    ONTICK      $2DB66B                     ; 2DB5ED/086BB62D
    A_JMP       L_2DB5AA                    ; 2DB5F1/17AAB5

L_2DB5F4:
    ONTICK      $2DB66B                     ; 2DB5F4/086BB62D
    A_JMP       L_2DB5AA                    ; 2DB5F8/17AAB5

L_2DB5FB:
    ONTICK      $2DB66B                     ; 2DB5FB/086BB62D
    MOV         VAR3,#$00                   ; 2DB5FF/0D0300
    LOOP        #3                          ; 2DB602/0103
        MOV         VAR2,#$05                   ; 2DB604/0D0205
        ASMCALL     $E26A                       ; 2DB607/D06AE2 // Set X velocity (respect facing)
        .word       $0080                       ; 2DB60A/8000
        ASMCALL     $8C53, WAIT #8              ; 2DB60C/D8538C // Set pose (respect facing)
        .byte       $00                         ; 2DB60F/00
L_2DB610:
        MOV         VAR2,#$06                   ; 2DB610/0D0206
        ASMCALL     $8C53, WAIT #8              ; 2DB613/D8538C // Set pose (respect facing)
        .byte       $03                         ; 2DB616/03
L_2DB617:
        ASMCALL     $DE4B                       ; 2DB617/D04BDE // Play sound effect
        .byte       $23                         ; 2DB61A/23
        ASMCALL     $9591                       ; 2DB61B/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
        .byte       $01                         ; 2DB61E/01
        .byte       $80                         ; 2DB61F/80
        .byte       $02                         ; 2DB620/02
        .byte       $0C                         ; 2DB621/0C
        .byte       $08                         ; 2DB622/08
        ADD         VAR1,#-128                  ; 2DB623/13010280
        MOV         VAR2,#$07                   ; 2DB627/0D0207
        ASMCALL     $8C53, WAIT #8              ; 2DB62A/D8538C // Set pose (respect facing)
        .byte       $02                         ; 2DB62D/02
L_2DB62E:
        MOV         VAR2,#$08                   ; 2DB62E/0D0208
        ASMCALL     $8C53, WAIT #8              ; 2DB631/D8538C // Set pose (respect facing)
        .byte       $01                         ; 2DB634/01
L_2DB635:
        MOV         VAR2,#$09                   ; 2DB635/0D0209
        ASMCALL     $8C53, WAIT #8              ; 2DB638/D8538C // Set pose (respect facing)
        .byte       $02                         ; 2DB63B/02
L_2DB63C:
        ADD         VAR1,#-128                  ; 2DB63C/13010280
        MOV         VAR2,#$0A                   ; 2DB640/0D020A
        ASMCALL     $DE4B                       ; 2DB643/D04BDE // Play sound effect
        .byte       $23                         ; 2DB646/23
        ASMCALL     $9591                       ; 2DB647/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
        .byte       $01                         ; 2DB64A/01
        .byte       $80                         ; 2DB64B/80
        .byte       $02                         ; 2DB64C/02
        .byte       $0C                         ; 2DB64D/0C
        .byte       $08                         ; 2DB64E/08
        ASMCALL     $8C53, WAIT #8              ; 2DB64F/D8538C // Set pose (respect facing)
        .byte       $03                         ; 2DB652/03
L_2DB653:
    ENDLOOP                                 ; 2DB653/02
    A_JMP       L_2DB5E2                    ; 2DB654/17E2B5

; CODE OR DATA -- $2DB657 .. $2DB779
incbinRange "../split/prg/bank2d.bin", $1657, $1779

Script21_Cappy:
    SPRITEMAP   $3289EE                     ; 2DB779/1AEE8932
    MOV         REG,#$02                    ; 2DB77D/1B02
    ASMCALL_l   $228470                     ; 2DB77F/26708422
    JNE         L_2DB7AB                    ; 2DB783/0BABB7
    SETPOSE     #$01                        ; 2DB786/5001
    MOV         VAR2,#$28                   ; 2DB788/0D0228
L_2DB78B:
    ONTICK      $2DB807                     ; 2DB78B/0807B82D
    MOV         REG,VAR2                    ; 2DB78F/1E02
    JNE         L_2DB79B                    ; 2DB791/0B9BB7
    MOV         VAR2,#$28                   ; 2DB794/0D0228
    ADD         VAR1,#-128                  ; 2DB797/13010280
L_2DB79B:
    ASMCALL     $E26A                       ; 2DB79B/D06AE2 // Set X velocity (respect facing)
    .word       $0040                       ; 2DB79E/4000
    SETYVEL     #$FF00                      ; 2DB7A0/C000FF
    ASMCALL     $DE4B                       ; 2DB7A3/D04BDE // Play sound effect
    .byte       $0D                         ; 2DB7A6/0D
    ASMCALL     $84DB                       ; 2DB7A7/D0DB84 // Flip sprite horizontally (actually toggle LSB of pose)
    HALT                                    ; 2DB7AA/09

L_2DB7AB:
    SPRITEMAP   $3289E6                     ; 2DB7AB/1AE68932
    ASMCALL     $8851                       ; 2DB7AF/D05188
    ADD         VAR1,#-128                  ; 2DB7B2/13010280
    ASMCALL     $E26A                       ; 2DB7B6/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 2DB7B9/8000
    SETYVEL     #$FE00                      ; 2DB7BB/C000FE
    MOV         VAR2,#$00                   ; 2DB7BE/0D0200
    ONTICK      $2DB835                     ; 2DB7C1/0835B82D
L_2DB7C5:
    ASMCALL     $8829, WAIT #4              ; 2DB7C5/D42988 // Set pose to 0 (respect facing)
L_2DB7C8:
    INC2POSE    WAIT #4                     ; 2DB7C8/94
L_2DB7C9:
    A_JMP       L_2DB7C5                    ; 2DB7C9/17C5B7

L_2DB7CC:
    ONTICK      $2DB84A                     ; 2DB7CC/084AB82D
    MOV         REG,VAR2                    ; 2DB7D0/1E02
    JNE         L_2DB7DE                    ; 2DB7D2/0BDEB7
    MOV         VAR2,#$28                   ; 2DB7D5/0D0228
    ASMCALL     $8851                       ; 2DB7D8/D05188 // Face towards Kirby
    A_JMP       L_2DB7DE                    ; 2DB7DB/17DEB7

L_2DB7DE:
    ASMCALL     $E26A                       ; 2DB7DE/D06AE2 // Set X velocity (respect facing)
    .word       $0040                       ; 2DB7E1/4000
    SETYVEL     #$FF00                      ; 2DB7E3/C000FF
    ASMCALL     $DE4B                       ; 2DB7E6/D04BDE // Play sound effect
    .byte       $0D                         ; 2DB7E9/0D
    ASMCALL     $B7EE                       ; 2DB7EA/D0EEB7
    HALT                                    ; 2DB7ED/09

; CODE OR DATA -- $2DB7EE .. $2DB7F9
incbinRange "../split/prg/bank2d.bin", $17EE, $17F9

L_2DB7F9:
    ASMCALL     $8C71                       ; 2DB7F9/D0718C // Unknown ASM $228C71
    .byte       $21                         ; 2DB7FC/21
    .byte       $01                         ; 2DB7FD/01
    .byte       $00                         ; 2DB7FE/00
    SETZPOS     #$0081                      ; 2DB7FF/3A8100
    SETPOSE     #$02                        ; 2DB802/5002
    A_JMP       $8003                       ; 2DB804/170380

; CODE OR DATA -- $2DB807 .. $2DB878
incbinRange "../split/prg/bank2d.bin", $1807, $1878

L_2DB878:
    MOV         VAR6,#$42                   ; 2DB878/0D0642
    JML         $228003                     ; 2DB87B/03038022

L_2DB87F:
    MOV         VAR6,#$42                   ; 2DB87F/0D0642
    JML         $228100                     ; 2DB882/03008122

L_2DB886:
    MOV         VAR6,#$42                   ; 2DB886/0D0642
    JML         L_19B2A0                    ; 2DB889/03A0B219

; CODE OR DATA -- $2DB88D .. $2DB894
incbinRange "../split/prg/bank2d.bin", $188D, $1894

Script37_CoolSpook:
    SETBANK     #$22                        ; 2DB894/2822
    ASMCALL     $84A4                       ; 2DB896/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 2DB899/0D0002
    ONPOSITION  $D9BB                       ; 2DB89C/21BBD9
    SPRITEMAP   $309B01                     ; 2DB89F/1A019B30
    ONTICK      $2DB8D1                     ; 2DB8A3/08D1B82D
    ASMCALL     $8851                       ; 2DB8A7/D05188 // Face towards Kirby
    SETXVEL     #$FF80                      ; 2DB8AA/B080FF
L_2DB8AD:
    SETPOSE     #$00                        ; 2DB8AD/5000
    SETYVEL     #$FF00, WAIT #8             ; 2DB8AF/C800FF
L_2DB8B2:
    INCPOSE                                 ; 2DB8B2/70
    SETYVEL     #$FF80, WAIT #8             ; 2DB8B3/C880FF
L_2DB8B6:
    INCPOSE                                 ; 2DB8B6/70
    SETYVEL     #$0000, WAIT #8             ; 2DB8B7/C80000
L_2DB8BA:
    INCPOSE                                 ; 2DB8BA/70
    SETYVEL     #$0080, WAIT #8             ; 2DB8BB/C88000
L_2DB8BE:
    INCPOSE                                 ; 2DB8BE/70
    SETYVEL     #$0100, WAIT #8             ; 2DB8BF/C80001
L_2DB8C2:
    INCPOSE                                 ; 2DB8C2/70
    SETYVEL     #$0080, WAIT #8             ; 2DB8C3/C88000
L_2DB8C6:
    INCPOSE                                 ; 2DB8C6/70
    SETYVEL     #$0000, WAIT #8             ; 2DB8C7/C80000
L_2DB8CA:
    INCPOSE                                 ; 2DB8CA/70
    SETYVEL     #$FF80, WAIT #8             ; 2DB8CB/C880FF
L_2DB8CE:
    A_JMP       L_2DB8AD                    ; 2DB8CE/17ADB8

; CODE OR DATA -- $2DB8D1 .. $2DB8D9
incbinRange "../split/prg/bank2d.bin", $18D1, $18D9

Script36_Wheelie:
    SETBANK     #$22                        ; 2DB8D9/2822
    ASMCALL     $84A4                       ; 2DB8DB/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 2DB8DE/0D0002
    ONPOSITION  $D9BB                       ; 2DB8E1/21BBD9
    SPRITEMAP   $309AA9                     ; 2DB8E4/1AA99A30
    ASMCALL     $8851                       ; 2DB8E8/D05188 // Face towards Kirby
    MOV         VAR5,#$1E                   ; 2DB8EB/0D051E
    ASMCALL     $DE4B                       ; 2DB8EE/D04BDE // Play sound effect
    .byte       $4F                         ; 2DB8F1/4F
    ONTICK      $2DB991                     ; 2DB8F2/0891B92D
    ASMCALL     $8B7F                       ; 2DB8F6/D07F8B // Unknown ASM $228B7F
    .word       $B98D                       ; 2DB8F9/8DB9
    LOOP        #8                          ; 2DB8FB/0108
        ASMCALL     $8829, WAIT #2              ; 2DB8FD/D22988 // Set pose to 0 (respect facing)
L_2DB900:
        ADDPOSE     #2, WAIT #2                 ; 2DB900/6202
L_2DB902:
    ENDLOOP                                 ; 2DB902/02
    A_JMP       L_2DB909                    ; 2DB903/1709B9

L_2DB906:
    MOV         VAR5,#$1E                   ; 2DB906/0D051E
L_2DB909:
    ONTICK      $2DB991                     ; 2DB909/0891B92D
    ASMCALL     $8B7F                       ; 2DB90D/D07F8B // Unknown ASM $228B7F
    .word       $B989                       ; 2DB910/89B9
    MOV         VAR4,#$02                   ; 2DB912/0D0402
L_2DB915:
    ASMCALL     $8829                       ; 2DB915/D02988 // Set pose to 0 (respect facing)
    WAIT        VAR4                        ; 2DB918/1F04
L_2DB91A:
    ADDPOSE     #2                          ; 2DB91A/6002
    WAIT        VAR4                        ; 2DB91C/1F04
L_2DB91E:
    A_JMP       L_2DB915                    ; 2DB91E/1715B9

L_2DB921:
    ZEROVEL                                 ; 2DB921/38
    ASMCALL_l   $219952                     ; 2DB922/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2DB926/00
    .byte       $00                         ; 2DB927/00
    .byte       $0C                         ; 2DB928/0C
    .byte       $00                         ; 2DB929/00
    ONTICK      $2DBA00                     ; 2DB92A/0800BA2D
    SETYVEL     #$FD00                      ; 2DB92E/C000FD
    MOV         VAR4,#$04                   ; 2DB931/0D0404
    A_JMP       L_2DB915                    ; 2DB934/1715B9

L_2DB937:
    ASMCALL     $90BA                       ; 2DB937/D0BA90 // VAR1 = -VAR1 (invert facing?)
    ASMCALL     $8829                       ; 2DB93A/D02988 // Set pose to 0 (respect facing)
    ADDPOSE     #4, WAIT #2                 ; 2DB93D/6204
L_2DB93F:
    ADDPOSE     #2, WAIT #2                 ; 2DB93F/6202
L_2DB941:
    A_RTS                                   ; 2DB941/19

L_2DB942:
    ONTICK      $2DBA24                     ; 2DB942/0824BA2D
    A_JSR       L_2DB937                    ; 2DB946/1837B9
    A_JMP       L_2DB909                    ; 2DB949/1709B9

L_2DB94C:
    ZEROVEL                                 ; 2DB94C/38
    ONTICK      $2DBA2F                     ; 2DB94D/082FBA2D
L_2DB951:
    ASMCALL     $8829, WAIT #4              ; 2DB951/D42988 // Set pose to 0 (respect facing)
L_2DB954:
    ADDPOSE     #2, WAIT #4                 ; 2DB954/6402
L_2DB956:
    A_JMP       L_2DB951                    ; 2DB956/1751B9

L_2DB959:
    ONTICK      $2DBA2F                     ; 2DB959/082FBA2D
    MOV         VAR5,#$2A                   ; 2DB95D/0D052A
    MOV         VAR6,#$00                   ; 2DB960/0D0600
    MOV         VAR4,#$02                   ; 2DB963/0D0402
    ASMCALL     $DE4B                       ; 2DB966/D04BDE // Play sound effect
    .byte       $50                         ; 2DB969/50
L_2DB96A:
    ASMCALL     $8829                       ; 2DB96A/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $9591                       ; 2DB96D/D09195 // Create a child object with script 0x59 in any slot between 9 and 18, offset by (0, 0) with VAR0=`arg1`, VAR1=self.VAR1+`arg2`, VAR3=`arg3`, VAR4=`arg4` (complement if MSB of VAR1 is set), VAR5=`arg5`, VAR6=self.script, VAR7=0
    .byte       $00                         ; 2DB970/00
    .byte       $80                         ; 2DB971/80
    .byte       $01                         ; 2DB972/01
    .byte       $04                         ; 2DB973/04
    .byte       $04                         ; 2DB974/04
    ADDPOSE     #4, WAIT #2                 ; 2DB975/6204
L_2DB977:
    ADDPOSE     #2, WAIT #2                 ; 2DB977/6202
L_2DB979:
    A_JMP       L_2DB96A                    ; 2DB979/176AB9

L_2DB97C:
    ONTICK      $2DBAA6                     ; 2DB97C/08A6BA2D
    MOV         VAR6,#$00                   ; 2DB980/0D0600
    MOV         VAR4,#$02                   ; 2DB983/0D0402
    A_JMP       L_2DB915                    ; 2DB986/1715B9

; CODE OR DATA -- $2DB989 .. $2DBB28
incbinRange "../split/prg/bank2d.bin", $1989, $1B28

Script41_SirKibble:
    MOV         REG,VAR0                    ; 2DBB28/1E00
    TABLEJMP    #3                          ; 2DBB2A/0F03
    .word       L_2DBB32                    ; 2DBB2C/32BB
    .word       L_2DBB32                    ; 2DBB2E/32BB
    .word       L_2DBD30                    ; 2DBB30/30BD
L_2DBB32:
    ASMCALL     $BBCE                       ; 2DBB32/D0CEBB
    SPRITEMAP   $309BCC                     ; 2DBB35/1ACC9B30
    MOV         REG,#$02                    ; 2DBB39/1B02
    ASMCALL_l   $228470                     ; 2DBB3B/26708422
    ASMCALL     $BBE6                       ; 2DBB3F/D0E6BB
    ASMCALL     $962E                       ; 2DBB42/D02E96
    JNE         L_2DBB60                    ; 2DBB45/0B60BB
L_2DBB48:
    ONTICK      $2DBC0B                     ; 2DBB48/080BBC2D
    MOV         VAR3,#$00                   ; 2DBB4C/0D0300
    ASMCALL     $8829                       ; 2DBB4F/D02988 // Set pose to 0 (respect facing)
    ASMCALL     $BBE6                       ; 2DBB52/D0E6BB
L_2DBB55:
    ASMCALL     $8829                       ; 2DBB55/D02988 // Set pose to 0 (respect facing)
    WAIT        VAR8                        ; 2DBB58/1F08
L_2DBB5A:
    INC2POSE                                ; 2DBB5A/90
    WAIT        VAR8                        ; 2DBB5B/1F08
L_2DBB5D:
    A_JMP       L_2DBB55                    ; 2DBB5D/1755BB

L_2DBB60:
    ONTICK      $2DBC0B                     ; 2DBB60/080BBC2D
    MOV         VAR3,#$01                   ; 2DBB64/0D0301
    ASMCALL     $8851                       ; 2DBB67/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 2DBB6A/D02988 // Set pose to 0 (respect facing)
    ZEROVEL                                 ; 2DBB6D/38
    ADDPOSE     #4                          ; 2DBB6E/6004
    MOV         VAR5,#$30                   ; 2DBB70/0D0530
L_2DBB73:
    WAIT        #1                          ; 2DBB73/0601
L_2DBB75:
    MOV         REG,VAR5                    ; 2DBB75/1E05
    JNE         L_2DBB73                    ; 2DBB77/0B73BB
    ADDPOSE     #2                          ; 2DBB7A/6002
    ASMCALL     $8C71                       ; 2DBB7C/D0718C // Unknown ASM $228C71
    .byte       $41                         ; 2DBB7F/41
    .byte       $02                         ; 2DBB80/02
    .byte       $00                         ; 2DBB81/00
    MOV         VAR5,#$5F                   ; 2DBB82/0D055F
L_2DBB85:
    WAIT        #1                          ; 2DBB85/0601
L_2DBB87:
    MOV         REG,VAR5                    ; 2DBB87/1E05
    JNE         L_2DBB85                    ; 2DBB89/0B85BB
    A_JMP       L_2DBB48                    ; 2DBB8C/1748BB

L_2DBB8F:
    ONTICK      $2DBC0B                     ; 2DBB8F/080BBC2D
    MOV         VAR3,#$01                   ; 2DBB93/0D0301
    ASMCALL     $8851                       ; 2DBB96/D05188 // Face towards Kirby
    ASMCALL     $8838                       ; 2DBB99/D03888
    ZEROVEL                                 ; 2DBB9C/38
    ADDPOSE     #4                          ; 2DBB9D/6004
    MOV         VAR5,#$30                   ; 2DBB9F/0D0530
L_2DBBA2:
    WAIT        #1                          ; 2DBBA2/0601
L_2DBBA4:
    MOV         REG,VAR5                    ; 2DBBA4/1E05
    JNE         L_2DBBA2                    ; 2DBBA6/0BA2BB
    INC2POSE                                ; 2DBBA9/90
    MOV         VAR3,#$02                   ; 2DBBAA/0D0302
    ASMCALL     $8C71                       ; 2DBBAD/D0718C // Unknown ASM $228C71
    .byte       $41                         ; 2DBBB0/41
    .byte       $02                         ; 2DBBB1/02
    .byte       $80                         ; 2DBBB2/80
    MOV         VAR5,#$00                   ; 2DBBB3/0D0500
    WAIT        #50                         ; 2DBBB6/0632
L_2DBBB8:
    MOV         REG,VAR5                    ; 2DBBB8/1E05
    JNE         L_2DBBC7                    ; 2DBBBA/0BC7BB
    MOV         VAR5,#$FA                   ; 2DBBBD/0D05FA
    ASMCALL     $DE4B                       ; 2DBBC0/D04BDE // Play sound effect
    .byte       $0D                         ; 2DBBC3/0D
    SETYVEL     #$FD00                      ; 2DBBC4/C000FD
L_2DBBC7:
    ADDPOSE     #-4, WAIT #8                ; 2DBBC7/68FC
L_2DBBC9:
    ASMCALL     $8829, WAIT #14             ; 2DBBC9/DE2988 // Set pose to 0 (respect facing)
L_2DBBCC:
    INC2POSE    WAIT #14                    ; 2DBBCC/9E
L_2DBBCD:
    HALT                                    ; 2DBBCD/09

; CODE OR DATA -- $2DBBCE .. $2DBD30
incbinRange "../split/prg/bank2d.bin", $1BCE, $1D30

L_2DBD30:
    SETBANK     #$22                        ; 2DBD30/2822
    ONPOSITION  $D9BB                       ; 2DBD32/21BBD9
    SPRITEMAP   $30952D                     ; 2DBD35/1A2D9530
    ONTICK      $2DBD6F                     ; 2DBD39/086FBD2D
    ASMCALL     $DE4B                       ; 2DBD3D/D04BDE // Play sound effect
    .byte       $3F                         ; 2DBD40/3F
    ASMCALL     $BD53                       ; 2DBD41/D053BD
    MOV         VAR0,#$02                   ; 2DBD44/0D0002
    ASMCALL     $8C05                       ; 2DBD47/D0058C // Unknown ASM $228C05
    .byte       $0C                         ; 2DBD4A/0C
L_2DBD4B:
    SETPOSE     #$00, WAIT #1               ; 2DBD4B/5100
L_2DBD4D:
    INCPOSE     WAIT #1                     ; 2DBD4D/71
L_2DBD4E:
    INCPOSE     WAIT #1                     ; 2DBD4E/71
L_2DBD4F:
    INCPOSE     WAIT #1                     ; 2DBD4F/71
L_2DBD50:
    A_JMP       L_2DBD4B                    ; 2DBD50/174BBD

; CODE OR DATA -- $2DBD53 .. $2EA000
incbinRange "../split/prg/bank2d.bin", $1D53, $2000