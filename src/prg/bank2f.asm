
;most likely fake just roll with it
L_2FAB17 := $2FAB17
L_2FB195 := $2FB195
L_2FB143 := $2FB143

.segment "PRG2F": absolute
incbinRange "../split/prg/bank2f.bin", $0000, $0011

Script3D_Kracko:
    MOV         $0043,#$98                  ; 2FA011/11430098
    SETBANK     #$22                        ; 2FA015/2822
    ASMCALL     $84A4                       ; 2FA017/D0A484 // Store VAR1 in $0784[self]
    ASMCALL     $8851                       ; 2FA01A/D05188 // Face towards Kirby
    MOV         REG,VAR0                    ; 2FA01D/1E00
    TABLEJMP    #9                          ; 2FA01F/0F09
    .word       L_2FA033                    ; 2FA021/33A0
    .word       Script3E                    ; 2FA023/8BA6
    .word       L_2FA7B4                    ; 2FA025/B4A7
    .word       L_2FA750                    ; 2FA027/50A7
    .word       L_2FA782                    ; 2FA029/82A7
    .word       L_2FB143                    ; 2FA02B/43B1
    .word       L_2FB195                    ; 2FA02D/95B1
    .word       L_2FB1C5                    ; 2FA02F/C5B1
    .word       L_2FB21F                    ; 2FA031/1FB2
L_2FA033:
    ASMCALL     $A000                       ; 2FA033/D000A0
    MOV         VAR3,#$00                   ; 2FA036/0D0300
    MOV         VAR4,#$00                   ; 2FA039/0D0400
    MOV         VAR5,#$00                   ; 2FA03C/0D0500
    MOV         VAR6,#$00                   ; 2FA03F/0D0600
    MOV         VAR7,#$00                   ; 2FA042/0D0700
    ASMCALL     $DED0                       ; 2FA045/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FA048/09
    .byte       $12                         ; 2FA049/12
    .byte       $3D                         ; 2FA04A/3D
    .byte       $00                         ; 2FA04B/00
    .byte       $00                         ; 2FA04C/00
    .byte       $00                         ; 2FA04D/00
    .byte       $01                         ; 2FA04E/01
    .byte       $00                         ; 2FA04F/00
    MOV         VAR2,REG                    ; 2FA050/1D02
    SPRITEMAP   L_309C7C                     ; 2FA052/1A7C9C30
    ONTICK      $2FA0DC                     ; 2FA056/08DCA02F
    ASMCALL     $A683                       ; 2FA05A/D083A6
L_2FA05D:
    HALT                                    ; 2FA05D/09

L_2FA05E:
    ONTICK      $2FA0DC                     ; 2FA05E/08DCA02F
L_2FA062:
    ZEROVEL                                 ; 2FA062/38
    SETYVEL     #$FF00, WAIT #2             ; 2FA063/C200FF
L_2FA066:
    ZEROVEL                                 ; 2FA066/38
    SETXVEL     #$FF00, WAIT #2             ; 2FA067/B200FF
L_2FA06A:
    ZEROVEL                                 ; 2FA06A/38
    SETYVEL     #$0100, WAIT #4             ; 2FA06B/C40001
L_2FA06E:
    ZEROVEL                                 ; 2FA06E/38
    SETXVEL     #$0100, WAIT #4             ; 2FA06F/B40001
L_2FA072:
    ZEROVEL                                 ; 2FA072/38
    SETYVEL     #$FF00, WAIT #4             ; 2FA073/C400FF
L_2FA076:
    ZEROVEL                                 ; 2FA076/38
    SETXVEL     #$FF00, WAIT #4             ; 2FA077/B400FF
L_2FA07A:
    ZEROVEL                                 ; 2FA07A/38
    SETYVEL     #$0100, WAIT #4             ; 2FA07B/C40001
L_2FA07E:
    ZEROVEL                                 ; 2FA07E/38
    SETXVEL     #$0100, WAIT #4             ; 2FA07F/B40001
L_2FA082:
    ZEROVEL                                 ; 2FA082/38
    SETYVEL     #$FF00, WAIT #4             ; 2FA083/C400FF
L_2FA086:
    ZEROVEL                                 ; 2FA086/38
    SETXVEL     #$FF40                      ; 2FA087/B040FF
    SETYVEL     #$0040, WAIT #4             ; 2FA08A/C44000
L_2FA08D:
    ZEROVEL                                 ; 2FA08D/38
    ASMCALL     $DED0                       ; 2FA08E/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FA091/09
    .byte       $12                         ; 2FA092/12
    .byte       $3D                         ; 2FA093/3D
    .byte       $00                         ; 2FA094/00
    .byte       $00                         ; 2FA095/00
    .byte       $00                         ; 2FA096/00
    .byte       $02                         ; 2FA097/02
    .byte       $00                         ; 2FA098/00
    LOOP        #6                          ; 2FA099/0106
        SETYVEL     #$0200, WAIT #1             ; 2FA09B/C10002
L_2FA09E:
        ZEROVEL                                 ; 2FA09E/38
        SETXVEL     #$0200, WAIT #1             ; 2FA09F/B10002
L_2FA0A2:
        ZEROVEL                                 ; 2FA0A2/38
        SETYVEL     #$FE00, WAIT #1             ; 2FA0A3/C100FE
L_2FA0A6:
        ZEROVEL                                 ; 2FA0A6/38
        SETXVEL     #$FE00, WAIT #1             ; 2FA0A7/B100FE
L_2FA0AA:
        ZEROVEL                                 ; 2FA0AA/38
    ENDLOOP                                 ; 2FA0AB/02
    LOOP        #2                          ; 2FA0AC/0102
        SETYVEL     #$0100, WAIT #2             ; 2FA0AE/C20001
L_2FA0B1:
        ZEROVEL                                 ; 2FA0B1/38
        SETXVEL     #$0100, WAIT #2             ; 2FA0B2/B20001
L_2FA0B5:
        ZEROVEL                                 ; 2FA0B5/38
        SETYVEL     #$FF00, WAIT #2             ; 2FA0B6/C200FF
L_2FA0B9:
        ZEROVEL                                 ; 2FA0B9/38
        SETXVEL     #$FF00, WAIT #2             ; 2FA0BA/B200FF
L_2FA0BD:
        ZEROVEL                                 ; 2FA0BD/38
    ENDLOOP                                 ; 2FA0BE/02
    SETYVEL     #$0200, WAIT #1             ; 2FA0BF/C10002
L_2FA0C2:
    ZEROVEL                                 ; 2FA0C2/38
    SETXVEL     #$0200, WAIT #1             ; 2FA0C3/B10002
L_2FA0C6:
    ZEROVEL                                 ; 2FA0C6/38
    ZEROVEL                                 ; 2FA0C7/38
    WAIT        #16                         ; 2FA0C8/0610
L_2FA0CA:
    MOV         VAR7,#$81                   ; 2FA0CA/0D0781
    WAIT        #8                          ; 2FA0CD/0608
L_2FA0CF:
    MOV         VAR7,#$80                   ; 2FA0CF/0D0780
    MOV         VAR3,#$09                   ; 2FA0D2/0D0309
    A_JMP       L_2FA05D                    ; 2FA0D5/175DA0

; CODE OR DATA -- $2FA0D8 .. $2FA145
incbinRange "../split/prg/bank2f.bin", $00D8, $0145

L_2FA145:
    UNK36       #$62,#$C9                   ; 2FA145/3662C9
    INCPOSE     WAIT #8                     ; 2FA148/78
    INC2POSE                                ; 2FA149/90
    A_RTL                                   ; 2FA14A/05

; CODE OR DATA -- $2FA14B .. $2FA4AA
incbinRange "../split/prg/bank2f.bin", $014B, $068B

Script3E:
    SETBANK     #$22                        ; 2FA68B/2822
    SPRITEMAP   L_309C8C                     ; 2FA68D/1A8C9C30
    ONTICK      $2FA6B8                     ; 2FA691/08B8A62F
    MOV         VAR0,#$00                   ; 2FA695/0D0000
    MOV         VAR4,#$06                   ; 2FA698/0D0406
L_2FA69B:
    ASMCALL     $8829                       ; 2FA69B/D02988 // Set pose to 0 (respect facing)
    WAIT        VAR4                        ; 2FA69E/1F04
L_2FA6A0:
    ASMCALL     $8829                       ; 2FA6A0/D02988 // Set pose to 0 (respect facing)
    ADDPOSE     #2                          ; 2FA6A3/6002
    WAIT        VAR4                        ; 2FA6A5/1F04
L_2FA6A7:
    ASMCALL     $8829                       ; 2FA6A7/D02988 // Set pose to 0 (respect facing)
    ADDPOSE     #4                          ; 2FA6AA/6004
    WAIT        VAR4                        ; 2FA6AC/1F04
L_2FA6AE:
    ASMCALL     $8829                       ; 2FA6AE/D02988 // Set pose to 0 (respect facing)
    ADDPOSE     #6                          ; 2FA6B1/6006
    WAIT        VAR4                        ; 2FA6B3/1F04
L_2FA6B5:
    A_JMP       L_2FA69B                    ; 2FA6B5/179BA6

incbinRange "../split/prg/bank2f.bin", $6B8, $750

L_2FA750:
    SETZPOS     #$00FF                      ; 2FA750/3AFF00
    SPRITEMAP   L_309F66                     ; 2FA753/1A669F30
    ONTICK      $2FA77E                     ; 2FA757/087EA72F
L_2FA75B:
    ASMCALL     $A768                       ; 2FA75B/D068A7
    JEQ         L_2FA767                    ; 2FA75E/0A67A7
    A_JSR       L_2FA7DE                    ; 2FA761/18DEA7
    A_JMP       L_2FA75B                    ; 2FA764/175BA7

L_2FA767:
    END                                     ; 2FA767/00

; CODE OR DATA -- $2FA768 .. $2FA782
incbinRange "../split/prg/bank2f.bin", $0768, $0782

L_2FA782:
    SETZPOS     #$00FF                      ; 2FA782/3AFF00
    SPRITEMAP   L_309F66                     ; 2FA785/1A669F30
    ONTICK      $2FA7B0                     ; 2FA789/08B0A72F
L_2FA78D:
    ASMCALL     $A79A                       ; 2FA78D/D09AA7
    JEQ         L_2FA799                    ; 2FA790/0A99A7
    A_JSR       L_2FA7DE                    ; 2FA793/18DEA7
    A_JMP       L_2FA78D                    ; 2FA796/178DA7

L_2FA799:
    END                                     ; 2FA799/00

; CODE OR DATA -- $2FA79A .. $2FA7B4
incbinRange "../split/prg/bank2f.bin", $079A, $07B4

L_2FA7B4:
    SETZPOS     #$00FF                      ; 2FA7B4/3AFF00
    SPRITEMAP   L_309F66                     ; 2FA7B7/1A669F30
    ASMCALL     $A732                       ; 2FA7BB/D032A7
    JEQ         L_2FA7DD                    ; 2FA7BE/0ADDA7
    ASMCALL     $A7ED                       ; 2FA7C1/D0EDA7
    A_JSR       L_2FA7DE                    ; 2FA7C4/18DEA7
    ASMCALL     $DED0                       ; 2FA7C7/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FA7CA/09
    .byte       $12                         ; 2FA7CB/12
    .byte       $3D                         ; 2FA7CC/3D
    .byte       $00                         ; 2FA7CD/00
    .byte       $00                         ; 2FA7CE/00
    .byte       $00                         ; 2FA7CF/00
    .byte       $03                         ; 2FA7D0/03
    .byte       $00                         ; 2FA7D1/00
    ASMCALL     $DED0                       ; 2FA7D2/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FA7D5/09
    .byte       $12                         ; 2FA7D6/12
    .byte       $3D                         ; 2FA7D7/3D
    .byte       $00                         ; 2FA7D8/00
    .byte       $00                         ; 2FA7D9/00
    .byte       $00                         ; 2FA7DA/00
    .byte       $04                         ; 2FA7DB/04
    .byte       $00                         ; 2FA7DC/00
L_2FA7DD:
    END                                     ; 2FA7DD/00

L_2FA7DE:
    ASMCALL     $DE4B                       ; 2FA7DE/D04BDE // Play sound effect
    .byte       $11                         ; 2FA7E1/11
    SETPOSE     #$00, WAIT #1               ; 2FA7E2/5100
L_2FA7E4:
    ASMCALL     $A6F6                       ; 2FA7E4/D0F6A6
    SETPOSE     #$00, WAIT #2               ; 2FA7E7/5200
L_2FA7E9:
    INCPOSE     WAIT #2                     ; 2FA7E9/72
L_2FA7EA:
    INCPOSE     WAIT #2                     ; 2FA7EA/72
L_2FA7EB:
    INCPOSE     WAIT #1                     ; 2FA7EB/71
L_2FA7EC:
    A_RTS                                   ; 2FA7EC/19

; CODE OR DATA -- $2FA7ED .. $2FA80D
incbinRange "../split/prg/bank2f.bin", $07ED, $080D

L_2FA80D:
    SETBANK     #$22                        ; 2FA80D/2822
    ONTICK      $2FA877                     ; 2FA80F/0877A82F
    MOV         VAR3,#$00                   ; 2FA813/0D0300
L_2FA816:
    WAIT        #1                          ; 2FA816/0601
L_2FA818:
    MOV         REG,VAR3                    ; 2FA818/1E03
L_2FA81A:
    TABLEJMP    #4                          ; 2FA81A/0F04
    .word       L_2FA816                    ; 2FA81C/16A8
    .word       L_2FA816                    ; 2FA81E/16A8
    .word       L_2FA816                    ; 2FA820/16A8
    .word       L_2FA824                    ; 2FA822/24A8
L_2FA824:
    SETYVEL     #$0100                      ; 2FA824/C00001
    WAIT        #6                          ; 2FA827/0606
L_2FA829:
    ASMCALL     $A93C                       ; 2FA829/D03CA9
    TASK        $846C                       ; 2FA82C/076C84
    SETYVEL     #$0100                      ; 2FA82F/C00001
    WAIT        #6                          ; 2FA832/0606
L_2FA834:
    WAIT        #6                          ; 2FA834/0606
L_2FA836:
    WAIT        #6                          ; 2FA836/0606
L_2FA838:
    WAIT        #6                          ; 2FA838/0606
L_2FA83A:
    WAIT        #6                          ; 2FA83A/0606
L_2FA83C:
    WAIT        #6                          ; 2FA83C/0606
L_2FA83E:
    LOOP        #3                          ; 2FA83E/0103
        WAIT        #2                          ; 2FA840/0602
L_2FA842:
        WAIT        #2                          ; 2FA842/0602
L_2FA844:
        WAIT        #2                          ; 2FA844/0602
L_2FA846:
        WAIT        #2                          ; 2FA846/0602
L_2FA848:
    ENDLOOP                                 ; 2FA848/02
    LOOP        #4                          ; 2FA849/0104
        WAIT        #1                          ; 2FA84B/0601
L_2FA84D:
        WAIT        #1                          ; 2FA84D/0601
L_2FA84F:
        WAIT        #1                          ; 2FA84F/0601
L_2FA851:
        WAIT        #1                          ; 2FA851/0601
L_2FA853:
    ENDLOOP                                 ; 2FA853/02
    LOOP        #7                          ; 2FA854/0107
        SPRITEMAP   L_309C7C                     ; 2FA856/1A7C9C30
        SETYVEL     #$0080                      ; 2FA85A/C08000
        WAIT        #2                          ; 2FA85D/0602
L_2FA85F:
        WAIT        #1                          ; 2FA85F/0601
L_2FA861:
        SPRITEMAP   L_309C84                     ; 2FA861/1A849C30
        SETYVEL     #$0000                      ; 2FA865/C00000
        WAIT        #1                          ; 2FA868/0601
L_2FA86A:
        SETYVEL     #$0080                      ; 2FA86A/C08000
        WAIT        #1                          ; 2FA86D/0601
L_2FA86F:
    ENDLOOP                                 ; 2FA86F/02
    ZEROVEL                                 ; 2FA870/38
    ASMCALL     $A947                       ; 2FA871/D047A9
    A_JMP       L_2FAB17                    ; 2FA874/1717AB

; CODE OR DATA -- $2FA868 .. $2FA86A
;incbinRange "../split/prg/bank2f.bin", $0868, $086A

incbinRange "../split/prg/bank2f.bin", $0877, $11C2

; L_2FA8F6:
;     SETYVEL     #$00E0, WAIT #14            ; 2FA8F6/CEE000
;     TABLEJSR    #237                        ; 2FA8F9/10ED
;     .word       $00A9                       ; 2FA8FB/A900
;     .word       $E08D                       ; 2FA8FD/8DE0
;     .word       $8D00                       ; 2FA8FF/008D
;     .word       $05C6                       ; 2FA901/C605
;     .word       $C48D                       ; 2FA903/8DC4
;     .word       $8D05                       ; 2FA905/058D
;     .word       $05C5                       ; 2FA907/C505
;     .word       $00FE                       ; 2FA909/FE00
;     .word       L_2FAD62                    ; 2FA90B/62AD
;     .word       $603D                       ; 2FA90D/3D60
;     .word       $0129                       ; 2FA90F/2901
;     .word       palette_fade                       ; 2FA911/A201
;     .word       $74BC                       ; 2FA913/BC74
;     .word       $C060                       ; 2FA915/60C0
;     .word       $F080                       ; 2FA917/80F0
;     .word       $9008                       ; 2FA919/0890
;     .word       L_2FA904                    ; 2FA91B/04A9
;     .word       $F000                       ; 2FA91D/00F0
;     .word       L_2FA902                    ; 2FA91F/02A9
;     .word       $8D01                       ; 2FA921/018D
;     .word       $0786                       ; 2FA923/8607
;     .word       TASK_2FB9A8                 ; 2FA925/A8B9
;     .word       L_2FA939                    ; 2FA927/39A9
;     .word       $6EA6                       ; 2FA929/A66E
;     .word       $829D                       ; 2FA92B/9D82
;     .word       L_2FA900                    ; 2FA92D/00A9
;     .word       $9D00                       ; 2FA92F/009D
;     .word       $0094                       ; 2FA931/9400
;     .word       $E0A9                       ; 2FA933/A9E0
;     .word       L_2FB89D                    ; 2FA935/9DB8
;     .word       $6000                       ; 2FA937/0060
;     .word       L_2FB050                    ; 2FA939/50B0
;     .word       L_2FA660                    ; 2FA93B/60A6
;     .word       L_2FBC6E                    ; 2FA93D/6EBC
;     .word       $61EE                       ; 2FA93F/EE61
;     .word       $01A9                       ; 2FA941/A901
;     .word       $CA99                       ; 2FA943/99CA
;     .word       $6061                       ; 2FA945/6160
;     .word       $6EA6                       ; 2FA947/A66E
;     .word       $00A9                       ; 2FA949/A900
;     .word       $CA9D                       ; 2FA94B/9DCA
;     .word       $9D00                       ; 2FA94D/009D
;     .word       $00A6                       ; 2FA94F/A600
;     .word       $40A9                       ; 2FA951/A940
;     .word       L_2FB89D                    ; 2FA953/9DB8
;     .word       $6000                       ; 2FA955/0060
;     .word       $E0AD                       ; 2FA957/ADE0
;     .word       $8D00                       ; 2FA959/008D
;     .word       $05C6                       ; 2FA95B/C605
;     .word       $E1AD                       ; 2FA95D/ADE1
;     .word       $8D00                       ; 2FA95F/008D
;     .word       $05C7                       ; 2FA961/C705
;     .word       $C7EE                       ; 2FA963/EEC7
;     .word       $6005                       ; 2FA965/0560
;     .word       $01A0                       ; 2FA967/A001
;     .word       $74B9                       ; 2FA969/B974
;     .word       $8560                       ; 2FA96B/6085
;     .word       L_2FB900                    ; 2FA96D/00B9
;     .word       $6098                       ; 2FA96F/9860
;     .word       $0185                       ; 2FA971/8501
;     .word       $00A9                       ; 2FA973/A900
;     .word       $E1AC                       ; 2FA975/ACE1
;     .word       $C005                       ; 2FA977/05C0
;     .word       $D00D                       ; 2FA979/0DD0
;     .word       L_2FA902                    ; 2FA97B/02A9
;     .word       $8501                       ; 2FA97D/0185
;     .word       L_2FA602                    ; 2FA97F/02A6
;     .word       L_2FA56E                    ; 2FA981/6EA5
;     .word       $F002                       ; 2FA983/02F0
;     .word       L_2FA50B                    ; 2FA985/0BA5
;     .word       $C901                       ; 2FA987/01C9
;     .word       L_2FB061                    ; 2FA989/61B0
;     .word       L_2FA905                    ; 2FA98B/05A9
;     .word       $4C10                       ; 2FA98D/104C
;     .word       L_2FAA01                    ; 2FA98F/01AA
;     .word       $86AD                       ; 2FA991/AD86
;     .word       $C907                       ; 2FA993/07C9
;     .word       L_2FB002                    ; 2FA995/02B0
;     .word       $0AFE                       ; 2FA997/FE0A
;     .word       TASK_2FB9A8                 ; 2FA999/A8B9
;     .word       L_2FA9A9                    ; 2FA99B/A9A9
;     .word       $388D                       ; 2FA99D/8D38
;     .word       L_2FB960                    ; 2FA99F/60B9
;     .word       L_2FA9AA                    ; 2FA9A1/AAA9
;     .word       $398D                       ; 2FA9A3/8D39
;     .word       $6C60                       ; 2FA9A5/606C
;     .word       $6038                       ; 2FA9A7/3860
;     .word       L_2FA9AD                    ; 2FA9A9/ADA9
;     .word       L_2FA9D7                    ; 2FA9AB/D7A9
;     .word       $02A5                       ; 2FA9AD/A502
;     .word       $12F0                       ; 2FA9AF/F012
;     .word       $01A5                       ; 2FA9B1/A501
;     .word       $61C9                       ; 2FA9B3/C961
;     .word       $0CB0                       ; 2FA9B5/B00C
;     .word       $00A2                       ; 2FA9B7/A200
;     .word       $00A5                       ; 2FA9B9/A500
;     .word       $50C9                       ; 2FA9BB/C950
;     .word       $1490                       ; 2FA9BD/9014
;     .word       $08A2                       ; 2FA9BF/A208
;     .word       $1010                       ; 2FA9C1/1010
;     .word       $28A2                       ; 2FA9C3/A228
;     .word       $00A5                       ; 2FA9C5/A500
;     .word       $50C9                       ; 2FA9C7/C950
;     .word       $0890                       ; 2FA9C9/9008
;     .word       $20A2                       ; 2FA9CB/A220
;     .word       L_2FB0C9                    ; 2FA9CD/C9B0
;     .word       $02B0                       ; 2FA9CF/B002
;     .word       $18A2                       ; 2FA9D1/A218
;     .word       $0120                       ; 2FA9D3/2001
;     .word       $60AA                       ; 2FA9D5/AA60
;     .word       $02A5                       ; 2FA9D7/A502
;     .word       $12F0                       ; 2FA9D9/F012
;     .word       $01A5                       ; 2FA9DB/A501
;     .word       $61C9                       ; 2FA9DD/C961
;     .word       $0CB0                       ; 2FA9DF/B00C
;     .word       $00A2                       ; 2FA9E1/A200
;     .word       $00A5                       ; 2FA9E3/A500
;     .word       L_2FB0C9                    ; 2FA9E5/C9B0
;     .word       $EAB0                       ; 2FA9E7/B0EA
;     .word       $08A2                       ; 2FA9E9/A208
;     .word       $E610                       ; 2FA9EB/10E6
;     .word       $20A2                       ; 2FA9ED/A220
;     .word       $00A5                       ; 2FA9EF/A500
;     .word       $50C9                       ; 2FA9F1/C950
;     .word       $DE90                       ; 2FA9F3/90DE
;     .word       $28A2                       ; 2FA9F5/A228
;     .word       L_2FB0C9                    ; 2FA9F7/C9B0
;     .word       $D8B0                       ; 2FA9F9/B0D8
;     .word       $18A2                       ; 2FA9FB/A218
;     .word       $0120                       ; 2FA9FD/2001
;     .word       $60AA                       ; 2FA9FF/AA60
;     .word       $0086                       ; 2FAA01/8600
;     .word       $08A9                       ; 2FAA03/A908
;     .word       $DD20                       ; 2FAA05/20DD
;     .word       $18C8                       ; 2FAA07/C818
;     .word       $0065                       ; 2FAA09/6500
;     .word       L_2FBDAA                    ; 2FAA0B/AABD
;     .word       L_2FAA10                    ; 2FAA0D/10AA
;     .word       $0160                       ; 2FAA0F/6001
;     .word       $0101                       ; 2FAA11/0101
;     .word       $0201                       ; 2FAA13/0102
;     .word       $0202                       ; 2FAA15/0202
;     .word       $0102                       ; 2FAA17/0201
;     .word       $0101                       ; 2FAA19/0101
;     .word       $0101                       ; 2FAA1B/0101
;     .word       $0201                       ; 2FAA1D/0102
;     .word       $0102                       ; 2FAA1F/0201
;     .word       $0101                       ; 2FAA21/0101
;     .word       $0201                       ; 2FAA23/0102
;     .word       $0302                       ; 2FAA25/0203
;     .word       $0103                       ; 2FAA27/0301
;     .word       $0202                       ; 2FAA29/0202
;     .word       $0303                       ; 2FAA2B/0303
;     .word       $0303                       ; 2FAA2D/0303
;     .word       $0103                       ; 2FAA2F/0301
;     .word       $0101                       ; 2FAA31/0101
;     .word       $0301                       ; 2FAA33/0103
;     .word       $0303                       ; 2FAA35/0303
;     .word       $0103                       ; 2FAA37/0301
;     .word       $0101                       ; 2FAA39/0101
;     .word       $0302                       ; 2FAA3B/0203
;     .word       $0303                       ; 2FAA3D/0303
;     .word       $2803                       ; 2FAA3F/0328
;     .word       $0D22                       ; 2FAA41/220D
;     .word       $0004                       ; 2FAA43/0400
;     .word       $050D                       ; 2FAA45/0D05
;     .word       $0800                       ; 2FAA47/0008
;     .word       L_2FAB0E                    ; 2FAA49/0EAB
;     .word       $172F                       ; 2FAA4B/2F17
;     .word       L_2FAA63                    ; 2FAA4D/63AA
;     .word       $9C1A                       ; 2FAA4F/1A9C
;     .word       $309C                       ; 2FAA51/9C30
;     .word       L_2FBC08                    ; 2FAA53/08BC
;     .word       $2FAA                       ; 2FAA55/AA2F
;     .word       $041E                       ; 2FAA57/1E04
;     .word       $040F                       ; 2FAA59/0F04
;     .word       L_2FAA63                    ; 2FAA5B/63AA
;     .word       L_2FAA94                    ; 2FAA5D/94AA
;     .word       L_2FAAA3                    ; 2FAA5F/A3AA
;     .word       L_2FAAAE                    ; 2FAA61/AEAA
;     .word       L_2FA81A                    ; 2FAA63/1AA8
;     .word       $309C                       ; 2FAA65/9C30
;     .word       $0056                       ; 2FAA67/5600
;     .word       $7676                       ; 2FAA69/7676
;     .word       $7676                       ; 2FAA6B/7676
;     .word       $0176                       ; 2FAA6D/7601
;     .word       $6203                       ; 2FAA6F/0362
;     .word       $72FD                       ; 2FAA71/FD72
;     .word       $7272                       ; 2FAA73/7272
;     .word       $0102                       ; 2FAA75/0201
;     .word       $6104                       ; 2FAA77/0461
;     .word       $71FD                       ; 2FAA79/FD71
;     .word       $7171                       ; 2FAA7B/7171
;     .word       $0102                       ; 2FAA7D/0201
;     .word       $5207                       ; 2FAA7F/0752
;     .word       $7106                       ; 2FAA81/0671
;     .word       $7171                       ; 2FAA83/7171
;     .word       $3802                       ; 2FAA85/0238
;     .word       $9C1A                       ; 2FAA87/1A9C
;     .word       $309C                       ; 2FAA89/9C30
;     .word       $040D                       ; 2FAA8B/0D04
;     .word       $0D01                       ; 2FAA8D/010D
;     .word       $0105                       ; 2FAA8F/0501
;     .word       $4F17                       ; 2FAA91/174F
;     .word       $58AA                       ; 2FAA93/AA58
;     .word       $5800                       ; 2FAA95/0058
;     .word       $5801                       ; 2FAA97/0158
;     .word       $5802                       ; 2FAA99/0258
;     .word       $5802                       ; 2FAA9B/0258
;     .word       $5801                       ; 2FAA9D/0158
;     .word       $1700                       ; 2FAA9F/0017
;     .word       L_2FAA57                    ; 2FAAA1/57AA
;     .word       $0151                       ; 2FAAA3/5101
;     .word       $0252                       ; 2FAAA5/5202
;     .word       $0151                       ; 2FAAA7/5101
;     .word       $0052                       ; 2FAAA9/5200
;     .word       $5717                       ; 2FAAAB/1757
;     .word       $01AA                       ; 2FAAAD/AA01
;     .word       $5104                       ; 2FAAAF/0451
;     .word       $5204                       ; 2FAAB1/0452
;     .word       $5105                       ; 2FAAB3/0551
;     .word       $5204                       ; 2FAAB5/0452
;     .word       $0203                       ; 2FAAB7/0302
;     .word       $5717                       ; 2FAAB9/1757
;     .word       L_2FA4AA                    ; 2FAABB/AAA4
;     .word       L_2FBE6E                    ; 2FAABD/6EBE
;     .word       $61EE                       ; 2FAABF/EE61
;     .word       $36BD                       ; 2FAAC1/BD36
;     .word       $F062                       ; 2FAAC3/62F0
;     .word       $C91E                       ; 2FAAC5/1EC9
;     .word       $F001                       ; 2FAAC7/01F0
;     .word       L_2FAD12                    ; 2FAAC9/12AD
;     .word       $603D                       ; 2FAACB/3D60
;     .word       $0329                       ; 2FAACD/2903
;     .word       $0BD0                       ; 2FAACF/D00B
;     .word       $FCB9                       ; 2FAAD1/B9FC
;     .word       $4962                       ; 2FAAD3/6249
;     DECPOSE                                 ; 2FAAD5/80
;     INC2POSE    WAIT #9                     ; 2FAAD6/99
; L_2FA900:
;     DECPOSE     WAIT #13                    ; 2FA900/8D
;     SETYVEL     #$8D05, WAIT #6             ; 2FA901/C6058D
; L_2FA904:
;     SETYVEL     #$8D05, WAIT #4             ; 2FA904/C4058D
; L_2FA907:
;     SETYVEL     #$FE05, WAIT #5             ; 2FA907/C505FE
;     END                                     ; 2FA90A/00

; COULDNT FIND THE END FOR THE INCBIN STARTING AT $2FA90B

; L_2FA902:
;     A_RTL                                   ; 2FA902/05

; ; CODE OR DATA -- $2FA903 .. $2FA904
; incbinRange "../split/prg/bank2f.bin", $0903, $0904

; L_2FA905:
;     A_RTL                                   ; 2FA905/05

; ; CODE OR DATA -- $2FA906 .. $2FA907
; incbinRange "../split/prg/bank2f.bin", $0906, $0907

; L_2FA90B:
;     ADDPOSE     #-83, WAIT #2               ; 2FA90B/62AD
;     ADDZVEL     #$2960                      ; 2FA90D/3D6029
; L_2FA910:
;     LOOP        #162                        ; 2FA910/01A2
;         LOOP        #188                        ; 2FA912/01BC
;             INCPOSE     WAIT #4                     ; 2FA914/74
;             ADDPOSE     #-64                        ; 2FA915/60C0
;             DECPOSE                                 ; 2FA917/80
; L_2FA921:
;             LOOP        #141                        ; 2FA921/018D
;                 DECPOSE     WAIT #6                     ; 2FA923/86
;                 TASK        TASK_2FB9A8                 ; 2FA924/07A8B9
;                 ZEROCAMERAVEL                           ; 2FA927/39
;                 DEC2POSE    WAIT #9                     ; 2FA928/A9
;                 DEC2POSE    WAIT #6                     ; 2FA929/A6
;                 ADDPOSE     #-99, WAIT #14              ; 2FA92A/6E9D
;                 DECPOSE     WAIT #2                     ; 2FA92C/82
;     END                                     ; 2FA92D/00

; ; CODE OR DATA -- $2FA92E .. $2FA939
; incbinRange "../split/prg/bank2f.bin", $092E, $0939

; L_2FA939:
;     SETPOSE     #$B0                        ; 2FA939/50B0
;     ADDPOSE     #-90                        ; 2FA93B/60A6
;     ADDPOSE     #-68, WAIT #14              ; 2FA93D/6EBC
; L_2FA962:
;     A_RTL                                   ; 2FA962/05

; ; CODE OR DATA -- $2FA963 .. $2FA967
; incbinRange "../split/prg/bank2f.bin", $0963, $0967

; L_2FA967:
;     DEC2POSE                                ; 2FA967/A0
;     LOOP        #185                        ; 2FA968/01B9
;         INCPOSE     WAIT #4                     ; 2FA96A/74
;         ADDPOSE     #-123                       ; 2FA96B/6085
;     END                                     ; 2FA96D/00

; L_2FA96E:
;     SETXVEL     #$6098, WAIT #9             ; 2FA96E/B99860
;     DECPOSE     WAIT #5                     ; 2FA971/85
;     LOOP        #169                        ; 2FA972/01A9
;     END                                     ; 2FA974/00

; ; CODE OR DATA -- $2FA975 .. $2FA9A9
; incbinRange "../split/prg/bank2f.bin", $0975, $09A9

; L_2FA9A9:
;     DEC2POSE    WAIT #13                    ; 2FA9A9/AD
; L_2FA9AA:
;     DEC2POSE    WAIT #9                     ; 2FA9AA/A9
;     ASMCALL     $A5A9, WAIT #7              ; 2FA9AB/D7A9A5
;     ENDLOOP                                 ; 2FA9AE/02
; L_2FA9AD:
;     DEC2POSE    WAIT #5                     ; 2FA9AD/A5
; L_2FA9B1:
;     DEC2POSE    WAIT #5                     ; 2FA9B1/A5
;     LOOP        #201                        ; 2FA9B2/01C9
;         ADDPOSE     #-80, WAIT #1               ; 2FA9B4/61B0
;     ENDTASK                                 ; 2FA9B6/0C

; ; CODE OR DATA -- $2FA9B7 .. $2FA9D7
; incbinRange "../split/prg/bank2f.bin", $09B7, $09D7

; L_2FA9D7:
;     DEC2POSE    WAIT #5                     ; 2FA9D7/A5
;     ENDLOOP                                 ; 2FA9D8/02
; L_2FAA01:
;     DECPOSE     WAIT #6                     ; 2FAA01/86
;     END                                     ; 2FAA02/00

; ; CODE OR DATA -- $2FAA03 .. $2FAA10
; incbinRange "../split/prg/bank2f.bin", $0A03, $0A10

; L_2FAA10:
;     LOOP        #1                          ; 2FAA10/0101
;         LOOP        #1                          ; 2FAA12/0101
;         ENDLOOP                                 ; 2FAA14/02
;     ENDLOOP                                 ; 2FAA15/02
;     ENDLOOP                                 ; 2FAA16/02
;     ENDLOOP                                 ; 2FAA17/02
;     LOOP        #1                          ; 2FAA18/0101
;         LOOP        #1                          ; 2FAA1A/0101
;             LOOP        #1                          ; 2FAA1C/0101
;             ENDLOOP                                 ; 2FAA1E/02
;         ENDLOOP                                 ; 2FAA1F/02
;         LOOP        #1                          ; 2FAA20/0101
;             LOOP        #1                          ; 2FAA22/0101
;             ENDLOOP                                 ; 2FAA24/02
;         ENDLOOP                                 ; 2FAA25/02
;         JML         $020103                     ; 2FAA26/03030102

; ; CODE OR DATA -- $2FAA2A .. $2FAA40
; incbinRange "../split/prg/bank2f.bin", $0A2A, $0A40

; L_2FAA40:
;     SETBANK     #$22                        ; 2FAA40/2822
;     MOV         VAR4,#$00                   ; 2FAA42/0D0400
;     MOV         VAR5,#$00                   ; 2FAA45/0D0500
;     ONTICK      $2FAB0E                     ; 2FAA48/080EAB2F
;     A_JMP       L_2FAA63                    ; 2FAA4C/1763AA

; L_2FAA4F:
;     SPRITEMAP   L_309C9C                     ; 2FAA4F/1A9C9C30
;     ONTICK      $2FAABC                     ; 2FAA53/08BCAA2F
; L_2FAA57:
;     MOV         REG,VAR4                    ; 2FAA57/1E04
;     TABLEJMP    #4                          ; 2FAA59/0F04
;     .word       L_2FAA63                    ; 2FAA5B/63AA
;     .word       L_2FAA94                    ; 2FAA5D/94AA
;     .word       L_2FAAA3                    ; 2FAA5F/A3AA
;     .word       L_2FAAAE                    ; 2FAA61/AEAA
; L_2FAA63:
;     SPRITEMAP   L_309CA8                     ; 2FAA63/1AA89C30
;     SETPOSE     #$00, WAIT #6               ; 2FAA67/5600
; L_2FAA69:
;     INCPOSE     WAIT #6                     ; 2FAA69/76
; L_2FAA6A:
;     INCPOSE     WAIT #6                     ; 2FAA6A/76
; L_2FAA6B:
;     INCPOSE     WAIT #6                     ; 2FAA6B/76
; L_2FAA6C:
;     INCPOSE     WAIT #6                     ; 2FAA6C/76
; L_2FAA6D:
;     INCPOSE     WAIT #6                     ; 2FAA6D/76
; L_2FAA6E:
;     LOOP        #3                          ; 2FAA6E/0103
;         ADDPOSE     #-3, WAIT #2                ; 2FAA70/62FD
; L_2FAA72:
;         INCPOSE     WAIT #2                     ; 2FAA72/72
; L_2FAA73:
;         INCPOSE     WAIT #2                     ; 2FAA73/72
; L_2FAA74:
;         INCPOSE     WAIT #2                     ; 2FAA74/72
; L_2FAA75:
;     ENDLOOP                                 ; 2FAA75/02
;     LOOP        #4                          ; 2FAA76/0104
;         ADDPOSE     #-3, WAIT #1                ; 2FAA78/61FD
; L_2FAA7A:
;         INCPOSE     WAIT #1                     ; 2FAA7A/71
; L_2FAA7B:
;         INCPOSE     WAIT #1                     ; 2FAA7B/71
; L_2FAA7C:
;         INCPOSE     WAIT #1                     ; 2FAA7C/71
; L_2FAA7D:
;     ENDLOOP                                 ; 2FAA7D/02
;     LOOP        #7                          ; 2FAA7E/0107
;         SETPOSE     #$06, WAIT #2               ; 2FAA80/5206
; L_2FAA82:
;         INCPOSE     WAIT #1                     ; 2FAA82/71
; L_2FAA83:
;         INCPOSE     WAIT #1                     ; 2FAA83/71
; L_2FAA84:
;         INCPOSE     WAIT #1                     ; 2FAA84/71
; L_2FAA85:
;     ENDLOOP                                 ; 2FAA85/02
;     ZEROVEL                                 ; 2FAA86/38
;     SPRITEMAP   L_309C9C                     ; 2FAA87/1A9C9C30
;     MOV         VAR4,#$01                   ; 2FAA8B/0D0401
;     MOV         VAR5,#$01                   ; 2FAA8E/0D0501
;     A_JMP       L_2FAA4F                    ; 2FAA91/174FAA

; L_2FAA94:
;     SETPOSE     #$00, WAIT #8               ; 2FAA94/5800
; L_2FAA96:
;     SETPOSE     #$01, WAIT #8               ; 2FAA96/5801
; L_2FAA98:
;     SETPOSE     #$02, WAIT #8               ; 2FAA98/5802
; L_2FAA9A:
;     SETPOSE     #$02, WAIT #8               ; 2FAA9A/5802
; L_2FAA9C:
;     SETPOSE     #$01, WAIT #8               ; 2FAA9C/5801
; L_2FAA9E:
;     SETPOSE     #$00, WAIT #8               ; 2FAA9E/5800
; L_2FAAA0:
;     A_JMP       L_2FAA57                    ; 2FAAA0/1757AA

; L_2FAAA3:
;     SETPOSE     #$01, WAIT #1               ; 2FAAA3/5101
; L_2FAAA5:
;     SETPOSE     #$02, WAIT #2               ; 2FAAA5/5202
; L_2FAAA7:
;     SETPOSE     #$01, WAIT #1               ; 2FAAA7/5101
; L_2FAAA9:
;     SETPOSE     #$00, WAIT #2               ; 2FAAA9/5200
; L_2FAAAB:
;     A_JMP       L_2FAA57                    ; 2FAAAB/1757AA

; L_2FAAAE:
;     LOOP        #4                          ; 2FAAAE/0104
;         SETPOSE     #$04, WAIT #1               ; 2FAAB0/5104
; L_2FAAB2:
;         SETPOSE     #$05, WAIT #2               ; 2FAAB2/5205
; L_2FAAB4:
;         SETPOSE     #$04, WAIT #1               ; 2FAAB4/5104
; L_2FAAB6:
;         SETPOSE     #$03, WAIT #2               ; 2FAAB6/5203
; L_2FAAB8:
;     ENDLOOP                                 ; 2FAAB8/02
;     A_JMP       L_2FAA57                    ; 2FAAB9/1757AA

; ; CODE OR DATA -- $2FAABC .. $2FAAC8
; incbinRange "../split/prg/bank2f.bin", $0ABC, $0AC8

; L_2FAB0E:
;     DEC2POSE    WAIT #4                     ; 2FAB0E/A4
;     ADDPOSE     #-66, WAIT #14              ; 2FAB0F/6EBE
; L_2FAB17:
;     SETBANK     #$22                        ; 2FAB17/2822
;     SPRITEMAP   L_309C84                     ; 2FAB19/1A849C30
;     ONTICK      $2FAE4C                     ; 2FAB1D/084CAE2F
;     MOV         VAR3,#$00                   ; 2FAB21/0D0300
;     MOV         VAR4,#$01                   ; 2FAB24/0D0401
;     MOV         VAR5,#$00                   ; 2FAB27/0D0500
;     MOV         VAR6,#$00                   ; 2FAB2A/0D0600
;     MOV         VAR7,#$01                   ; 2FAB2D/0D0701
;     MOV         $0784,#$00                  ; 2FAB30/11840700
;     MOV         $0789,#$00                  ; 2FAB34/11890700
;     MOV         $078A,#$00                  ; 2FAB38/118A0700
;     MOV         $0785,#$00                  ; 2FAB3C/11850700
; L_2FAB40:
;     MOV         $0788,#$00                  ; 2FAB40/11880700
;     ASMCALL     $B05F                       ; 2FAB44/D05FB0
;     MOV         REG,VAR4                    ; 2FAB47/1E04
;     TABLEJMP    #5                          ; 2FAB49/0F05
;     .word       L_2FAB55                    ; 2FAB4B/55AB
;     .word       L_2FAB58                    ; 2FAB4D/58AB
;     .word       L_2FACB3                    ; 2FAB4F/B3AC
;     .word       L_2FAB76                    ; 2FAB51/76AB
;     .word       L_2FAC8F                    ; 2FAB53/8FAC
; L_2FAB55:
;     A_JMP       L_2FAB40                    ; 2FAB55/1740AB

; L_2FAB58:
;     SETYVEL     #$0080, WAIT #8             ; 2FAB58/C88000
; L_2FAB5B:
;     SETYVEL     #$0100, WAIT #8             ; 2FAB5B/C80001
; L_2FAB5E:
;     SETYVEL     #$0080, WAIT #8             ; 2FAB5E/C88000
; L_2FAB61:
;     SETYVEL     #$FF80, WAIT #8             ; 2FAB61/C880FF
; L_2FAB64:
;     SETYVEL     #$FF00, WAIT #8             ; 2FAB64/C800FF
; L_2FAB67:
;     SETYVEL     #$FF80, WAIT #8             ; 2FAB67/C880FF
; L_2FAB6A:
;     SETYVEL     #$0000                      ; 2FAB6A/C00000
;     MOV         REG,$0788                   ; 2FAB6D/1C8807
;     JEQ         L_2FAB58                    ; 2FAB70/0A58AB
;     A_JMP       L_2FAB40                    ; 2FAB73/1740AB

; L_2FAB76:
;     MOV         VAR7,#$02                   ; 2FAB76/0D0702
;     MOV         REG,$0786                   ; 2FAB79/1C8607
;     JNE         L_2FABFF                    ; 2FAB7C/0BFFAB
;     ZEROVEL                                 ; 2FAB7F/38
;     MOV         VAR7,#$02                   ; 2FAB80/0D0702
;     SETXVEL     #$FE00                      ; 2FAB83/B000FE
;     SETYVEL     #$0100, WAIT #15            ; 2FAB86/CF0001
; L_2FAB89:
;     WAIT        #1                          ; 2FAB89/0601
; L_2FAB8B:
;     SETXVEL     #$FF00                      ; 2FAB8B/B000FF
;     SETYVEL     #$0100, WAIT #12            ; 2FAB8E/CC0001
; L_2FAB91:
;     SETXVEL     #$FF80                      ; 2FAB91/B080FF
;     SETYVEL     #$0080, WAIT #8             ; 2FAB94/C88000
; L_2FAB97:
;     SETXVEL     #$0000                      ; 2FAB97/B00000
;     SETYVEL     #$0000, WAIT #15            ; 2FAB9A/CF0000
; L_2FAB9D:
;     ASMCALL     $AFFC                       ; 2FAB9D/D0FCAF
;     WAIT        #1                          ; 2FABA0/0601
; L_2FABA2:
;     LOOP        #9                          ; 2FABA2/0109
;         A_JSR       L_2FAC7F                    ; 2FABA4/187FAC
;         SETXVEL     #$0140                      ; 2FABA7/B04001
;         SETYVEL     #$FF80, WAIT #4             ; 2FABAA/C480FF
; L_2FABAD:
;         A_JSR       L_2FAC7F                    ; 2FABAD/187FAC
;         SETXVEL     #$0140                      ; 2FABB0/B04001
;         SETYVEL     #$0020, WAIT #4             ; 2FABB3/C42000
; L_2FABB6:
;         A_JSR       L_2FAC7F                    ; 2FABB6/187FAC
;         SETXVEL     #$0140                      ; 2FABB9/B04001
;         SETYVEL     #$0080, WAIT #4             ; 2FABBC/C48000
; L_2FABBF:
;         A_JSR       L_2FAC7F                    ; 2FABBF/187FAC
;         SETXVEL     #$0140                      ; 2FABC2/B04001
;         SETYVEL     #$FFE0, WAIT #4             ; 2FABC5/C4E0FF
; L_2FABC8:
;     ENDLOOP                                 ; 2FABC8/02
;     A_JSR       L_2FAC7F                    ; 2FABC9/187FAC
;     SETXVEL     #$0140                      ; 2FABCC/B04001
;     SETYVEL     #$0000, WAIT #6             ; 2FABCF/C60000
; L_2FABD2:
;     ASMCALL     $AFC2                       ; 2FABD2/D0C2AF
;     SETXVEL     #$0120                      ; 2FABD5/B02001
;     SETYVEL     #$0000, WAIT #4             ; 2FABD8/C40000
; L_2FABDB:
;     SETXVEL     #$FF80                      ; 2FABDB/B080FF
;     SETYVEL     #$FF80, WAIT #8             ; 2FABDE/C880FF
; L_2FABE1:
;     SETXVEL     #$FF00                      ; 2FABE1/B000FF
;     SETYVEL     #$FF00, WAIT #12            ; 2FABE4/CC00FF
; L_2FABE7:
;     SETXVEL     #$FE00                      ; 2FABE7/B000FE
;     SETYVEL     #$FF00, WAIT #15            ; 2FABEA/CF00FF
; L_2FABED:
;     WAIT        #1                          ; 2FABED/0601
; L_2FABEF:
;     SETXVEL     #$0000                      ; 2FABEF/B00000
;     SETYVEL     #$0000                      ; 2FABF2/C00000
;     MOV         VAR7,#$01                   ; 2FABF5/0D0701
;     MOV         $0786,#$01                  ; 2FABF8/11860701
;     A_JMP       L_2FAB40                    ; 2FABFC/1740AB

; L_2FABFF:
;     ZEROVEL                                 ; 2FABFF/38
;     MOV         VAR7,#$02                   ; 2FAC00/0D0702
;     SETXVEL     #$0200                      ; 2FAC03/B00002
;     SETYVEL     #$0100, WAIT #15            ; 2FAC06/CF0001
; L_2FAC09:
;     WAIT        #1                          ; 2FAC09/0601
; L_2FAC0B:
;     SETXVEL     #$0100                      ; 2FAC0B/B00001
;     SETYVEL     #$0100, WAIT #12            ; 2FAC0E/CC0001
; L_2FAC11:
;     SETXVEL     #$0080                      ; 2FAC11/B08000
;     SETYVEL     #$0080, WAIT #8             ; 2FAC14/C88000
; L_2FAC17:
;     SETXVEL     #$0000                      ; 2FAC17/B00000
;     SETYVEL     #$0000, WAIT #15            ; 2FAC1A/CF0000
; L_2FAC1D:
;     ASMCALL     $AFFC                       ; 2FAC1D/D0FCAF
;     WAIT        #1                          ; 2FAC20/0601
; L_2FAC22:
;     LOOP        #9                          ; 2FAC22/0109
;         A_JSR       L_2FAC7F                    ; 2FAC24/187FAC
;         SETXVEL     #$FEC0                      ; 2FAC27/B0C0FE
;         SETYVEL     #$FF80, WAIT #4             ; 2FAC2A/C480FF
; L_2FAC2D:
;         A_JSR       L_2FAC7F                    ; 2FAC2D/187FAC
;         SETXVEL     #$FEC0                      ; 2FAC30/B0C0FE
;         SETYVEL     #$0020, WAIT #4             ; 2FAC33/C42000
; L_2FAC36:
;         A_JSR       L_2FAC7F                    ; 2FAC36/187FAC
;         SETXVEL     #$FEC0                      ; 2FAC39/B0C0FE
;         SETYVEL     #$0080, WAIT #4             ; 2FAC3C/C48000
; L_2FAC3F:
;         A_JSR       L_2FAC7F                    ; 2FAC3F/187FAC
;         SETXVEL     #$FEC0                      ; 2FAC42/B0C0FE
;         SETYVEL     #$FFE0, WAIT #4             ; 2FAC45/C4E0FF
; L_2FAC48:
;     ENDLOOP                                 ; 2FAC48/02
;     A_JSR       L_2FAC7F                    ; 2FAC49/187FAC
;     SETXVEL     #$FEC0                      ; 2FAC4C/B0C0FE
;     SETYVEL     #$0000, WAIT #6             ; 2FAC4F/C60000
; L_2FAC52:
;     ASMCALL     $AFC2                       ; 2FAC52/D0C2AF
;     SETXVEL     #$FEE0                      ; 2FAC55/B0E0FE
;     SETYVEL     #$0000, WAIT #4             ; 2FAC58/C40000
; L_2FAC5B:
;     SETXVEL     #$0080                      ; 2FAC5B/B08000
;     SETYVEL     #$FF80, WAIT #8             ; 2FAC5E/C880FF
; L_2FAC61:
;     SETXVEL     #$0100                      ; 2FAC61/B00001
;     SETYVEL     #$FF00, WAIT #12            ; 2FAC64/CC00FF
; L_2FAC67:
;     SETXVEL     #$0200                      ; 2FAC67/B00002
;     SETYVEL     #$FF00, WAIT #15            ; 2FAC6A/CF00FF
; L_2FAC6D:
;     WAIT        #1                          ; 2FAC6D/0601
; L_2FAC6F:
;     SETXVEL     #$0000                      ; 2FAC6F/B00000
;     SETYVEL     #$0000                      ; 2FAC72/C00000
;     MOV         VAR7,#$01                   ; 2FAC75/0D0701
;     MOV         $0786,#$00                  ; 2FAC78/11860700
;     A_JMP       L_2FAB40                    ; 2FAC7C/1740AB

; L_2FAC7F:
;     ASMCALL     $DED0                       ; 2FAC7F/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
;     .byte       $09                         ; 2FAC82/09
;     .byte       $12                         ; 2FAC83/12
;     .byte       $3D                         ; 2FAC84/3D
;     .byte       $00                         ; 2FAC85/00
;     .byte       $18                         ; 2FAC86/18
;     .byte       $00                         ; 2FAC87/00
;     .byte       $05                         ; 2FAC88/05
;     .byte       $00                         ; 2FAC89/00
;     ASMCALL     $DE4B                       ; 2FAC8A/D04BDE // Play sound effect
;     .byte       $35                         ; 2FAC8D/35
;     A_RTS                                   ; 2FAC8E/19

; L_2FAC8F:
;     ZEROVEL                                 ; 2FAC8F/38
;     MOV         VAR7,#$02                   ; 2FAC90/0D0702
;     LOOP        #6                          ; 2FAC93/0106
;         WAIT        #2                          ; 2FAC95/0602
; L_2FAC97:
;         WAIT        #1                          ; 2FAC97/0601
; L_2FAC99:
;         WAIT        #2                          ; 2FAC99/0602
; L_2FAC9B:
;         WAIT        #1                          ; 2FAC9B/0601
; L_2FAC9D:
;     ENDLOOP                                 ; 2FAC9D/02
;     ASMCALL     $DED0                       ; 2FAC9E/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
;     .byte       $09                         ; 2FACA1/09
;     .byte       $12                         ; 2FACA2/12
;     .byte       $3D                         ; 2FACA3/3D
;     .byte       $00                         ; 2FACA4/00
;     .byte       $10                         ; 2FACA5/10
;     .byte       $00                         ; 2FACA6/00
;     .byte       $08                         ; 2FACA7/08
;     .byte       $00                         ; 2FACA8/00
;     ASMCALL     $DE4B                       ; 2FACA9/D04BDE // Play sound effect
;     .byte       $1A                         ; 2FACAC/1A
;     MOV         VAR7,#$01                   ; 2FACAD/0D0701
;     A_JMP       L_2FAB40                    ; 2FACB0/1740AB

; L_2FACB3:
;     MOV         VAR7,#$02                   ; 2FACB3/0D0702
;     MOV         REG,$0786                   ; 2FACB6/1C8607
;     JNE         L_2FAD84                    ; 2FACB9/0B84AD
;     SETXVEL     #$0200                      ; 2FACBC/B00002
;     SETYVEL     #$FF00, WAIT #10            ; 2FACBF/CA00FF
; L_2FACC2:
;     SETXVEL     #$0100                      ; 2FACC2/B00001
;     SETYVEL     #$FF80, WAIT #10            ; 2FACC5/CA80FF
; L_2FACC8:
;     SETXVEL     #$0080                      ; 2FACC8/B08000
;     SETYVEL     #$FFE0, WAIT #10            ; 2FACCB/CAE0FF
; L_2FACCE:
;     SETXVEL     #$0000                      ; 2FACCE/B00000
;     SETYVEL     #$0000, WAIT #10            ; 2FACD1/CA0000
; L_2FACD4:
;     SETXVEL     #$FC00                      ; 2FACD4/B000FC
;     SETYVEL     #$0080, WAIT #8             ; 2FACD7/C88000
; L_2FACDA:
;     SETXVEL     #$FD00                      ; 2FACDA/B000FD
;     SETYVEL     #$0100, WAIT #8             ; 2FACDD/C80001
; L_2FACE0:
;     SETXVEL     #$FE00                      ; 2FACE0/B000FE
;     SETYVEL     #$0200, WAIT #8             ; 2FACE3/C80002
; L_2FACE6:
;     SETXVEL     #$FF00                      ; 2FACE6/B000FF
;     SETYVEL     #$0200, WAIT #4             ; 2FACE9/C40002
; L_2FACEC:
;     SETXVEL     #$FF80                      ; 2FACEC/B080FF
;     SETYVEL     #$0300, WAIT #4             ; 2FACEF/C40003
; L_2FACF2:
;     ASMCALL     $DE4B                       ; 2FACF2/D04BDE // Play sound effect
;     .byte       $3E                         ; 2FACF5/3E
;     SETXVEL     #$0080                      ; 2FACF6/B08000
;     SETYVEL     #$0300, WAIT #4             ; 2FACF9/C40003
; L_2FACFC:
;     SETXVEL     #$0100                      ; 2FACFC/B00001
;     SETYVEL     #$0200, WAIT #4             ; 2FACFF/C40002
; L_2FAD02:
;     SETXVEL     #$0200                      ; 2FAD02/B00002
;     SETYVEL     #$0200, WAIT #8             ; 2FAD05/C80002
; L_2FAD08:
;     SETXVEL     #$0300                      ; 2FAD08/B00003
;     SETYVEL     #$0100, WAIT #8             ; 2FAD0B/C80001
; L_2FAD0E:
;     SETXVEL     #$0400                      ; 2FAD0E/B00004
;     SETYVEL     #$0080, WAIT #8             ; 2FAD11/C88000
; L_2FAD14:
;     SETXVEL     #$0600                      ; 2FAD14/B00006
;     SETYVEL     #$0000, WAIT #10            ; 2FAD17/CA0000
; L_2FAD1A:
;     SETXVEL     #$0400                      ; 2FAD1A/B00004
;     SETYVEL     #$FE00, WAIT #8             ; 2FAD1D/C800FE
; L_2FAD20:
;     SETXVEL     #$0300                      ; 2FAD20/B00003
;     SETYVEL     #$FC00, WAIT #4             ; 2FAD23/C400FC
; L_2FAD26:
;     SETXVEL     #$0200                      ; 2FAD26/B00002
;     SETYVEL     #$FA00, WAIT #4             ; 2FAD29/C400FA
; L_2FAD2C:
;     SETXVEL     #$0100                      ; 2FAD2C/B00001
;     SETYVEL     #$FC00, WAIT #4             ; 2FAD2F/C400FC
; L_2FAD32:
;     SETXVEL     #$FF00                      ; 2FAD32/B000FF
;     SETYVEL     #$FC00, WAIT #4             ; 2FAD35/C400FC
; L_2FAD38:
;     SETXVEL     #$FE00                      ; 2FAD38/B000FE
;     SETYVEL     #$FE00, WAIT #4             ; 2FAD3B/C400FE
; L_2FAD3E:
;     SETXVEL     #$FC00                      ; 2FAD3E/B000FC
;     SETYVEL     #$FF00, WAIT #4             ; 2FAD41/C400FF
; L_2FAD44:
;     SETXVEL     #$FD00                      ; 2FAD44/B000FD
;     SETYVEL     #$FF80, WAIT #8             ; 2FAD47/C880FF
; L_2FAD4A:
;     SETXVEL     #$FE00                      ; 2FAD4A/B000FE
;     SETYVEL     #$0080, WAIT #4             ; 2FAD4D/C48000
; L_2FAD50:
;     SETXVEL     #$FF00                      ; 2FAD50/B000FF
;     SETYVEL     #$0100, WAIT #4             ; 2FAD53/C40001
; L_2FAD56:
;     SETXVEL     #$FF80                      ; 2FAD56/B080FF
;     SETYVEL     #$0200, WAIT #4             ; 2FAD59/C40002
; L_2FAD5C:
;     SETXVEL     #$0080                      ; 2FAD5C/B08000
;     SETYVEL     #$0100, WAIT #4             ; 2FAD5F/C40001
; L_2FAD62:
;     SETXVEL     #$0100                      ; 2FAD62/B00001
;     SETYVEL     #$0100, WAIT #4             ; 2FAD65/C40001
; L_2FAD68:
;     SETXVEL     #$0100                      ; 2FAD68/B00001
;     SETYVEL     #$0080, WAIT #4             ; 2FAD6B/C48000
; L_2FAD6E:
;     SETXVEL     #$0020                      ; 2FAD6E/B02000
;     SETYVEL     #$0000, WAIT #6             ; 2FAD71/C60000
; L_2FAD74:
;     SETXVEL     #$0000                      ; 2FAD74/B00000
;     SETYVEL     #$0000                      ; 2FAD77/C00000
;     MOV         $0786,#$01                  ; 2FAD7A/11860701
;     MOV         VAR7,#$01                   ; 2FAD7E/0D0701
;     A_JMP       L_2FAB40                    ; 2FAD81/1740AB

; COULDNT FIND THE END FOR THE INCBIN STARTING AT $2FAD84

; L_2FAD12:
;     DECPOSE                                 ; 2FAD12/80
;     END                                     ; 2FAD13/00

; L_2FAD84:
;     SETXVEL     #$FE00                      ; 2FAD84/B000FE
;     SETYVEL     #$FF00, WAIT #10            ; 2FAD87/CA00FF
; L_2FAD8A:
;     SETXVEL     #$FF00                      ; 2FAD8A/B000FF
;     SETYVEL     #$FF80, WAIT #10            ; 2FAD8D/CA80FF
; L_2FAD90:
;     SETXVEL     #$FF80                      ; 2FAD90/B080FF
;     SETYVEL     #$FFE0, WAIT #10            ; 2FAD93/CAE0FF
; L_2FAD96:
;     SETXVEL     #$0000                      ; 2FAD96/B00000
;     SETYVEL     #$0000, WAIT #10            ; 2FAD99/CA0000
; L_2FAD9C:
;     SETXVEL     #$0400                      ; 2FAD9C/B00004
;     SETYVEL     #$0080, WAIT #8             ; 2FAD9F/C88000
; L_2FADA2:
;     SETXVEL     #$0300                      ; 2FADA2/B00003
;     SETYVEL     #$0100, WAIT #8             ; 2FADA5/C80001
; L_2FADA8:
;     SETXVEL     #$0200                      ; 2FADA8/B00002
;     SETYVEL     #$0200, WAIT #8             ; 2FADAB/C80002
; L_2FADAE:
;     SETXVEL     #$0100                      ; 2FADAE/B00001
;     SETYVEL     #$0200, WAIT #4             ; 2FADB1/C40002
; L_2FADB4:
;     SETXVEL     #$0080                      ; 2FADB4/B08000
;     SETYVEL     #$0300, WAIT #4             ; 2FADB7/C40003
; L_2FADBA:
;     ASMCALL     $DE4B                       ; 2FADBA/D04BDE // Play sound effect
;     .byte       $3E                         ; 2FADBD/3E
;     SETXVEL     #$FF80                      ; 2FADBE/B080FF
;     SETYVEL     #$0300, WAIT #4             ; 2FADC1/C40003
; L_2FADC4:
;     SETXVEL     #$FF00                      ; 2FADC4/B000FF
;     SETYVEL     #$0200, WAIT #4             ; 2FADC7/C40002
; L_2FADCA:
;     SETXVEL     #$FE00                      ; 2FADCA/B000FE
;     SETYVEL     #$0200, WAIT #8             ; 2FADCD/C80002
; L_2FADD0:
;     SETXVEL     #$FD00                      ; 2FADD0/B000FD
;     SETYVEL     #$0100, WAIT #8             ; 2FADD3/C80001
; L_2FADD6:
;     SETXVEL     #$FC00                      ; 2FADD6/B000FC
;     SETYVEL     #$0080, WAIT #8             ; 2FADD9/C88000
; L_2FADDC:
;     SETXVEL     #$FA00                      ; 2FADDC/B000FA
;     SETYVEL     #$0000, WAIT #10            ; 2FADDF/CA0000
; L_2FADE2:
;     SETXVEL     #$FC00                      ; 2FADE2/B000FC
;     SETYVEL     #$FE00, WAIT #8             ; 2FADE5/C800FE
; L_2FADE8:
;     SETXVEL     #$FD00                      ; 2FADE8/B000FD
;     SETYVEL     #$FC00, WAIT #4             ; 2FADEB/C400FC
; L_2FADEE:
;     SETXVEL     #$FE00                      ; 2FADEE/B000FE
;     SETYVEL     #$FA00, WAIT #4             ; 2FADF1/C400FA
; L_2FADF4:
;     SETXVEL     #$FF00                      ; 2FADF4/B000FF
;     SETYVEL     #$FC00, WAIT #4             ; 2FADF7/C400FC
; L_2FADFA:
;     SETXVEL     #$0100                      ; 2FADFA/B00001
;     SETYVEL     #$FC00, WAIT #4             ; 2FADFD/C400FC
; L_2FAE00:
;     SETXVEL     #$0200                      ; 2FAE00/B00002
;     SETYVEL     #$FE00, WAIT #4             ; 2FAE03/C400FE
; L_2FAE06:
;     SETXVEL     #$0400                      ; 2FAE06/B00004
;     SETYVEL     #$FF00, WAIT #4             ; 2FAE09/C400FF
; L_2FAE0C:
;     SETXVEL     #$0300                      ; 2FAE0C/B00003
;     SETYVEL     #$FF80, WAIT #8             ; 2FAE0F/C880FF
; L_2FAE12:
;     SETXVEL     #$0200                      ; 2FAE12/B00002
;     SETYVEL     #$0080, WAIT #4             ; 2FAE15/C48000
; L_2FAE18:
;     SETXVEL     #$0100                      ; 2FAE18/B00001
;     SETYVEL     #$0100, WAIT #4             ; 2FAE1B/C40001
; L_2FAE1E:
;     SETXVEL     #$0080                      ; 2FAE1E/B08000
;     SETYVEL     #$0200, WAIT #4             ; 2FAE21/C40002
; L_2FAE24:
;     SETXVEL     #$FF80                      ; 2FAE24/B080FF
;     SETYVEL     #$0100, WAIT #4             ; 2FAE27/C40001
; L_2FAE2A:
;     SETXVEL     #$FF00                      ; 2FAE2A/B000FF
;     SETYVEL     #$0100, WAIT #4             ; 2FAE2D/C40001
; L_2FAE30:
;     SETXVEL     #$FF00                      ; 2FAE30/B000FF
;     SETYVEL     #$0080, WAIT #4             ; 2FAE33/C48000
; L_2FAE36:
;     SETXVEL     #$FFE0                      ; 2FAE36/B0E0FF
;     SETYVEL     #$0000, WAIT #6             ; 2FAE39/C60000
; L_2FAE3C:
;     SETXVEL     #$0000                      ; 2FAE3C/B00000
;     SETYVEL     #$0000                      ; 2FAE3F/C00000
;     MOV         $0786,#$00                  ; 2FAE42/11860700
;     MOV         VAR7,#$01                   ; 2FAE46/0D0701
;     A_JMP       L_2FAB40                    ; 2FAE49/1740AB

; COULDNT FIND THE END FOR THE INCBIN STARTING AT $2FAE4C

; L_2FADB0:
;     LOOP        #196                        ; 2FADB0/01C4
;     END                                     ; 2FADB2/00

; ; CODE OR DATA -- $2FADB3 .. $2FADB4
; incbinRange "../split/prg/bank2f.bin", $0DB3, $0DB4

; L_2FB002:
;     DECPOSE     WAIT #13                    ; 2FB002/8D
;     INC2POSE    WAIT #2                     ; 2FB003/92
; L_2FB004:
;     LOOP        #141                        ; 2FB004/018D
;         INC2POSE    WAIT #6                     ; 2FB006/96
;         LOOP        #141                        ; 2FB007/018D
;             INC2POSE    WAIT #10                    ; 2FB009/9A
;             LOOP        #141                        ; 2FB00A/018D
;                 INC2POSE    WAIT #14                    ; 2FB00C/9E
;                 LOOP        #162                        ; 2FB00D/01A2
;                     JNE         $24BD                       ; 2FB00F/0BBD24
;                     SETXVEL     #$829D                      ; 2FB012/B09D82
;                     LOOP        #202                        ; 2FB015/01CA
;                         TABLEJSR    #247                        ; 2FB017/10F7
;                         .word       L_2FBE20                    ; 2FB019/20BE
;                         .word       $1FC0                       ; 2FB01B/C01F
;                         .word       $60B0                       ; 2FB01D/B060
;                         .word       $0000                       ; 2FB01F/0000
;                         .word       $0C3F                       ; 2FB021/3F0C
;                         .word       $1101                       ; 2FB023/0111
;                         .word       $0010                       ; 2FB025/1000
;                         .word       $110F                       ; 2FB027/0F11
;                         .word       $2110                       ; 2FB029/1021
;                         .word       $1113                       ; 2FB02B/1311
;                         .word       $2310                       ; 2FB02D/1023
;                         .word       $2103                       ; 2FB02F/0321
;                         .word       $2737                       ; 2FB031/3727
;                         .word       $3807                       ; 2FB033/0738
;                         .word       $C2D0                       ; 2FB035/D0C2
;                         .word       $06AF                       ; 2FB037/AF06
;                         .word       $2606                       ; 2FB039/0626
;                         .word       $9952                       ; 2FB03B/5299
;                         .word       $0021                       ; 2FB03D/2100
;                         .word       $1700                       ; 2FB03F/0017
;                         .word       $1800                       ; 2FB041/0018
;                         .word       $83C8                       ; 2FB043/C883
;                         .word       $7ED0                       ; 2FB045/D07E
;                         .word       $268E                       ; 2FB047/8E26
;                         .word       $9952                       ; 2FB049/5299
;                         .word       $0021                       ; 2FB04B/2100
;                         .word       $0C00                       ; 2FB04D/000C
;                         .word       $1800                       ; 2FB04F/0018
;                         .word       $81DF                       ; 2FB051/DF81
;                         .word       $D0D0                       ; 2FB053/D0D0
;                         .word       $09DE                       ; 2FB055/DE09
;                         .word       $0612                       ; 2FB057/1206
;                         .word       $0000                       ; 2FB059/0000
;                         .word       $0200                       ; 2FB05B/0002
;                         .word       $0000                       ; 2FB05D/0000
;                         .word       $85AD                       ; 2FB05F/AD85
;                         .word       $C907                       ; 2FB061/07C9
;                         .word       L_2FB004                    ; 2FB063/04B0
;                         .word       $0AFE                       ; 2FB065/FE0A
;                         .word       TASK_2FB9A8                 ; 2FB067/A8B9
;                         .word       L_2FB077                    ; 2FB069/77B0
;                         .word       $388D                       ; 2FB06B/8D38
;                         .word       L_2FB960                    ; 2FB06D/60B9
;                         .word       L_2FB078                    ; 2FB06F/78B0
;                         .word       $398D                       ; 2FB071/8D39
;                         .word       $6C60                       ; 2FB073/606C
;                         .word       $6038                       ; 2FB075/3860
;                         .word       L_2FB07F                    ; 2FB077/7FB0
;                         .word       L_2FB0D6                    ; 2FB079/D6B0
;                         .word       L_2FB140                    ; 2FB07B/40B1
;                         .word       L_2FB0A9                    ; 2FB07D/A9B0
;                         .word       $8AAE                       ; 2FB07F/AE8A
;                         .word       $D007                       ; 2FB081/07D0
;                         .word       L_2FA910                    ; 2FB083/10A9
;                         .word       L_2FA603                    ; 2FB085/03A6
;                         .word       $9D6E                       ; 2FB087/6E9D
;                         .word       $6200                       ; 2FB089/0062
;                         .word       $129D                       ; 2FB08B/9D12
;                         .word       $8D62                       ; 2FB08D/628D
;                         .word       $078A                       ; 2FB08F/8A07
;                         .word       $384C                       ; 2FB091/4C38
;                         .word       L_2FA9B1                    ; 2FB093/B1A9
;                         .word       L_2FA602                    ; 2FB095/02A6
;                         .word       $9D6E                       ; 2FB097/6E9D
;                         .word       $6200                       ; 2FB099/0062
;                         .word       $129D                       ; 2FB09B/9D12
;                         .word       $8D62                       ; 2FB09D/628D
;                         .word       $078A                       ; 2FB09F/8A07
;                         .word       $02A9                       ; 2FB0A1/A902
;                         .word       $858D                       ; 2FB0A3/8D85
;                         .word       $4C07                       ; 2FB0A5/074C
;                         .word       L_2FB133                    ; 2FB0A7/33B1
;                         .word       $00A9                       ; 2FB0A9/A900
;                         .word       $6EA6                       ; 2FB0AB/A66E
;                         .word       $009D                       ; 2FB0AD/9D00
;                         .word       L_2FA962                    ; 2FB0AF/62A9
;                         .word       $9D01                       ; 2FB0B1/019D
;                         .word       $6212                       ; 2FB0B3/1262
;                         .word       $40A9                       ; 2FB0B5/A940
;                         .word       $989D                       ; 2FB0B7/9D98
;                         .word       $9D60                       ; 2FB0B9/609D
;                         .word       $00B8                       ; 2FB0BB/B800
;                         .word       $86AC                       ; 2FB0BD/AC86
;                         .word       L_2FB907                    ; 2FB0BF/07B9
;                         .word       L_2FB0D4                    ; 2FB0C1/D4B0
;                         .word       $749D                       ; 2FB0C3/9D74
;                         .word       $9D60                       ; 2FB0C5/609D
;                         .word       $0082                       ; 2FB0C7/8200
;                         .word       $00A9                       ; 2FB0C9/A900
;                         .word       $709D                       ; 2FB0CB/9D70
;                         .word       $9D00                       ; 2FB0CD/009D
;                         .word       $00A6                       ; 2FB0CF/A600
;                         .word       $404C                       ; 2FB0D1/4C40
;                         .word       $50B1                       ; 2FB0D3/B150
;                         .word       L_2FADB0                    ; 2FB0D5/B0AD
;                         .word       $0784                       ; 2FB0D7/8407
;                         .word       $0710                       ; 2FB0D9/1007
;                         .word       $00A9                       ; 2FB0DB/A900
;                         .word       $848D                       ; 2FB0DD/8D84
;                         .word       $F007                       ; 2FB0DF/07F0
;                         .word       $C929                       ; 2FB0E1/29C9
;                         .word       L_2FB004                    ; 2FB0E3/04B0
;                         .word       L_2FA90B                    ; 2FB0E5/0BA9
;                         .word       $2008                       ; 2FB0E7/0820
;                         .word       $C8DD                       ; 2FB0E9/DDC8
;                         .word       $6EA6                       ; 2FB0EB/A66E
;                         .word       $04C9                       ; 2FB0ED/C904
;                         .word       $1A90                       ; 2FB0EF/901A
;                         .word       $89AD                       ; 2FB0F1/AD89
;                         .word       $C907                       ; 2FB0F3/07C9
;                         .word       L_2FB002                    ; 2FB0F5/02B0
;                         .word       L_2FA613                    ; 2FB0F7/13A6
;                         .word       L_2FA96E                    ; 2FB0F9/6EA9
;                         .word       $9D04                       ; 2FB0FB/049D
;                         .word       $6200                       ; 2FB0FD/0062
;                         .word       $04A9                       ; 2FB0FF/A904
;                         .word       $129D                       ; 2FB101/9D12
;                         .word       L_2FA962                    ; 2FB103/62A9
;                         .word       $8D80                       ; 2FB105/808D
;                         .word       $0784                       ; 2FB107/8407
;                         .word       $2830                       ; 2FB109/3028
;                         .word       $84EE                       ; 2FB10B/EE84
;                         .word       $2007                       ; 2FB10D/0720
;                         .word       L_2FA967                    ; 2FB10F/67A9
;                         .word       $03C9                       ; 2FB111/C903
;                         .word       $0ED0                       ; 2FB113/D00E
;                         .word       $8ACD                       ; 2FB115/CD8A
;                         .word       $D007                       ; 2FB117/07D0
;                         .word       L_2FA909                    ; 2FB119/09A9
;                         .word       $2002                       ; 2FB11B/0220
;                         .word       $C8DD                       ; 2FB11D/DDC8
;                         .word       L_2FBDAA                    ; 2FB11F/AABD
;                         .word       L_2FB141                    ; 2FB121/41B1
;                         .word       $6EA6                       ; 2FB123/A66E
;                         .word       $009D                       ; 2FB125/9D00
;                         .word       $9D62                       ; 2FB127/629D
;                         .word       $6212                       ; 2FB129/1262
;                         .word       $8A8D                       ; 2FB12B/8D8A
;                         .word       L_2FA907                    ; 2FB12D/07A9
;                         .word       $8D02                       ; 2FB12F/028D
;                         .word       $0785                       ; 2FB131/8507
;                         .word       $02A9                       ; 2FB133/A902
;                         .word       $858D                       ; 2FB135/8D85
;                         .word       L_2FA907                    ; 2FB137/07A9
;                         .word       $8D00                       ; 2FB139/008D
;                         .word       $0787                       ; 2FB13B/8707
;                         .word       $404C                       ; 2FB13D/4C40
;                         .word       $60B1                       ; 2FB13F/B160
;                         .word       $0201                       ; 2FB141/0102
;                         .word       $2228                       ; 2FB143/2822
;                         .word       $6108                       ; 2FB145/0861
;                         .word       $2FB1                       ; 2FB147/B12F
;                         .word       L_2FBC1A                    ; 2FB149/1ABC
;                         .word       $309C                       ; 2FB14B/9C30
;                         .word       $69D0                       ; 2FB14D/D069
;                         .word       $D0B1                       ; 2FB14F/B1D0
;                         .word       $DED0                       ; 2FB151/D0DE
;                         .word       $1209                       ; 2FB153/0912
;                         .word       $003D                       ; 2FB155/3D00
;                         .word       $0010                       ; 2FB157/1000
;                         .word       $0006                       ; 2FB159/0600
;                         .word       $000D                       ; 2FB15B/0D00
;                         .word       $067F                       ; 2FB15D/7F06
;                         .word       $0002                       ; 2FB15F/0200
;                         .word       $1CA9                       ; 2FB161/A91C
;                         .word       $94A2                       ; 2FB163/A294
;                         .word       $1D20                       ; 2FB165/201D
;                         .word       $60E3                       ; 2FB167/E360
;                         .word       $10A9                       ; 2FB169/A910
;                         .word       $DD20                       ; 2FB16B/20DD
;                         .word       $38C8                       ; 2FB16D/C838
;                         .word       $08E9                       ; 2FB16F/E908
;                         .word       $F920                       ; 2FB171/20F9
;                         .word       L_2FA9B1                    ; 2FB173/B1A9
;                         .word       $200C                       ; 2FB175/0C20
;                         .word       $C8DD                       ; 2FB177/DDC8
;                         .word       $6EA6                       ; 2FB179/A66E
;                         .word       $C69D                       ; 2FB17B/9DC6
;                         .word       L_2FA062                    ; 2FB17D/62A0
;                         .word       $C900                       ; 2FB17F/00C9
;                         .word       $9004                       ; 2FB181/0490
;                         .word       $C906                       ; 2FB183/06C9
;                         .word       $9008                       ; 2FB185/0890
;                         .word       $C801                       ; 2FB187/01C8
;                         .word       $98C8                       ; 2FB189/C898
;                         .word       $009D                       ; 2FB18B/9D00
;                         .word       L_2FB962                    ; 2FB18D/62B9
;                         .word       L_2FB1C2                    ; 2FB18F/C2B1
;                         .word       $F920                       ; 2FB191/20F9
;                         .word       $60B1                       ; 2FB193/B160
;                         .word       $2228                       ; 2FB195/2822
;                         .word       $6108                       ; 2FB197/0861
;                         .word       $2FB1                       ; 2FB199/B12F
;                         .word       L_2FBC1A                    ; 2FB19B/1ABC
;                         .word       $309C                       ; 2FB19D/9C30
;                         .word       L_2FB3D0                    ; 2FB19F/D0B3
;                         .word       $D0B1                       ; 2FB1A1/B1D0
;                         .word       $DED0                       ; 2FB1A3/D0DE
;                         .word       $1209                       ; 2FB1A5/0912
;                         .word       $003D                       ; 2FB1A7/3D00
;                         .word       $0010                       ; 2FB1A9/1000
;                         .word       $0007                       ; 2FB1AB/0700
;                         .word       $000D                       ; 2FB1AD/0D00
;                         .word       $067F                       ; 2FB1AF/7F06
;                         .word       $0002                       ; 2FB1B1/0200
;                         .word       $6EA6                       ; 2FB1B3/A66E
;                         .word       $EEBC                       ; 2FB1B5/BCEE
;                         .word       L_2FB961                    ; 2FB1B7/61B9
;                         .word       $6200                       ; 2FB1B9/0062
;                         .word       TASK_2FB9A8                 ; 2FB1BB/A8B9
;                         .word       L_2FB1C2                    ; 2FB1BD/C2B1
;                         .word       $714C                       ; 2FB1BF/4C71
;                         .word       $00B1                       ; 2FB1C1/B100
;                         .word       $F907                       ; 2FB1C3/07F9
;                         .word       $2228                       ; 2FB1C5/2822
;                         .word       $6108                       ; 2FB1C7/0861
;                         .word       $2FB1                       ; 2FB1C9/B12F
;                         .word       L_2FBC1A                    ; 2FB1CB/1ABC
;                         .word       $309C                       ; 2FB1CD/9C30
;                         .word       $0C50                       ; 2FB1CF/500C
;                         .word       $DAD0                       ; 2FB1D1/D0DA
;                         .word       $0DB1                       ; 2FB1D3/B10D
;                         .word       $7F00                       ; 2FB1D5/007F
;                         .word       $0206                       ; 2FB1D7/0602
;                         .word       L_2FA600                    ; 2FB1D9/00A6
;                         .word       L_2FBC6E                    ; 2FB1DB/6EBC
;                         .word       $61EE                       ; 2FB1DD/EE61
;                         .word       $00B9                       ; 2FB1DF/B900
;                         .word       L_2FA862                    ; 2FB1E1/62A8
;                         .word       $C2B9                       ; 2FB1E3/B9C2
;                         .word       $20B1                       ; 2FB1E5/B120
;                         .word       L_2FB1F9                    ; 2FB1E7/F9B1
;                         .word       $03A9                       ; 2FB1E9/A903
;                         .word       $DD20                       ; 2FB1EB/20DD
;                         .word       L_2FAAC8                    ; 2FB1ED/C8AA
;                         .word       $F6BD                       ; 2FB1EF/BDF6
;                         .word       $20B1                       ; 2FB1F1/B120
;                         .word       L_2FB1F9                    ; 2FB1F3/F9B1
;                         .word       $F960                       ; 2FB1F5/60F9
;                         .word       $0700                       ; 2FB1F7/0007
;                         .word       $0085                       ; 2FB1F9/8500
;                         .word       $00A9                       ; 2FB1FB/A900
;                         .word       $00A6                       ; 2FB1FD/A600
;                         .word       $0210                       ; 2FB1FF/1002
;                         .word       $FFA9                       ; 2FB201/A9FF
;                         .word       $0185                       ; 2FB203/8501
;                         .word       $6EA6                       ; 2FB205/A66E
;                         SETXVEL     #$0082, WAIT #13            ; 2FB207/BD8200
;                         A_JSR       $0065                       ; 2FB20A/186500
;                         INC2POSE    WAIT #13                    ; 2FB20D/9D
;                         INCPOSE     WAIT #4                     ; 2FB20E/74
;                         ADDPOSE     #-99                        ; 2FB20F/609D
;                         DECPOSE     WAIT #2                     ; 2FB211/82
;     END                                     ; 2FB212/00

; COULDNT FIND THE END FOR THE INCBIN STARTING AT $2FB213

; L_2FB034:
;     ZEROVEL                                 ; 2FB034/38
;     ASMCALL     $AFC2                       ; 2FB035/D0C2AF
;     WAIT        #6                          ; 2FB038/0606
; L_2FB03A:
;     ASMCALL_l   $219952                     ; 2FB03A/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
;     .byte       $00                         ; 2FB03E/00
;     .byte       $00                         ; 2FB03F/00
;     .byte       $17                         ; 2FB040/17
;     .byte       $00                         ; 2FB041/00
;     A_JSR       $83C8                       ; 2FB042/18C883
;     ASMCALL     $8E7E                       ; 2FB045/D07E8E
;     ASMCALL_l   $219952                     ; 2FB048/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
;     .byte       $00                         ; 2FB04C/00
;     .byte       $00                         ; 2FB04D/00
;     .byte       $0C                         ; 2FB04E/0C
;     .byte       $00                         ; 2FB04F/00
; L_2FB050:
;     A_JSR       $81DF                       ; 2FB050/18DF81
;     ASMCALL     $DED0                       ; 2FB053/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
;     .byte       $09                         ; 2FB056/09
;     .byte       $12                         ; 2FB057/12
;     .byte       $06                         ; 2FB058/06
;     .byte       $00                         ; 2FB059/00
;     .byte       $00                         ; 2FB05A/00
;     .byte       $00                         ; 2FB05B/00
;     .byte       $02                         ; 2FB05C/02
;     .byte       $00                         ; 2FB05D/00
;     END                                     ; 2FB05E/00

; ; CODE OR DATA -- $2FB05F .. $2FB061
; incbinRange "../split/prg/bank2f.bin", $105F, $1061

; L_2FB061:
;     TASK        $04C9                       ; 2FB061/07C904
;     SETXVEL     #$0AFE                      ; 2FB064/B0FE0A
;     DEC2POSE    WAIT #8                     ; 2FB067/A8
;     SETXVEL     #$B077, WAIT #9             ; 2FB068/B977B0
;     DECPOSE     WAIT #13                    ; 2FB06B/8D
;     ZEROVEL                                 ; 2FB06C/38
;     ADDPOSE     #-71                        ; 2FB06D/60B9
;     INCPOSE     WAIT #8                     ; 2FB06F/78
;     SETXVEL     #$398D                      ; 2FB070/B08D39
;     ADDPOSE     #108                        ; 2FB073/606C
;     ZEROVEL                                 ; 2FB075/38
;     ADDPOSE     #127                        ; 2FB076/607F
; L_2FB078:
;     SETXVEL     #$B0D6                      ; 2FB078/B0D6B0
; L_2FB077:
;     INCPOSE     WAIT #15                    ; 2FB077/7F
; L_2FB07F:
;     DEC2POSE    WAIT #14                    ; 2FB07F/AE
;     DECPOSE     WAIT #10                    ; 2FB080/8A
;     TASK        $10D0                       ; 2FB081/07D010
;     DEC2POSE    WAIT #9                     ; 2FB084/A9
;     JML         $9D6EA6                     ; 2FB085/03A66E9D

; ; CODE OR DATA -- $2FB089 .. $2FB0A9
; incbinRange "../split/prg/bank2f.bin", $1089, $10A9

; L_2FB0A9:
;     DEC2POSE    WAIT #9                     ; 2FB0A9/A9
;     END                                     ; 2FB0AA/00

; ; CODE OR DATA -- $2FB0AB .. $2FB0B6
; incbinRange "../split/prg/bank2f.bin", $10AB, $10B6

; L_2FB0C9:
;     DEC2POSE    WAIT #9                     ; 2FB0C9/A9
;     END                                     ; 2FB0CA/00

; ; CODE OR DATA -- $2FB0CB .. $2FB0D4
; incbinRange "../split/prg/bank2f.bin", $10CB, $10D4

; L_2FB0D4:
;     SETPOSE     #$B0                        ; 2FB0D4/50B0
; L_2FB0D6:
;     DEC2POSE    WAIT #13                    ; 2FB0D6/AD
;     DECPOSE     WAIT #4                     ; 2FB0D7/84
;     TASK        $0710                       ; 2FB0D8/071007
;     DEC2POSE    WAIT #9                     ; 2FB0DB/A9
;     END                                     ; 2FB0DC/00

; ; CODE OR DATA -- $2FB0DD .. $2FB133
; incbinRange "../split/prg/bank2f.bin", $10DD, $1133

; L_2FB133:
;     DEC2POSE    WAIT #9                     ; 2FB133/A9
;     ENDLOOP                                 ; 2FB134/02
;     DECPOSE     WAIT #13                    ; 2FB135/8D
;     DECPOSE     WAIT #5                     ; 2FB136/85
;     TASK        $00A9                       ; 2FB137/07A900
;     DECPOSE     WAIT #13                    ; 2FB13A/8D
;     DECPOSE     WAIT #7                     ; 2FB13B/87
;     TASK        $404C                       ; 2FB13C/074C40
;     SETXVEL     #$0160, WAIT #1             ; 2FB13F/B16001
;     ENDLOOP                                 ; 2FB142/02
; L_2FB143:
;     SETBANK     #$22                        ; 2FB143/2822
;     ONTICK      $2FB161                     ; 2FB145/0861B12F
;     SPRITEMAP   L_309CBC                     ; 2FB149/1ABC9C30
;     ASMCALL     $B169                       ; 2FB14D/D069B1
;     ASMCALL     $DED0                       ; 2FB150/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
;     .byte       $09                         ; 2FB153/09
;     .byte       $12                         ; 2FB154/12
;     .byte       $3D                         ; 2FB155/3D
;     .byte       $00                         ; 2FB156/00
;     .byte       $10                         ; 2FB157/10
;     .byte       $00                         ; 2FB158/00
;     .byte       $06                         ; 2FB159/06
;     .byte       $00                         ; 2FB15A/00
;     MOV         VAR0,#$7F                   ; 2FB15B/0D007F
;     WAIT        #2                          ; 2FB15E/0602
; L_2FB160:
;     END                                     ; 2FB160/00

; COULDNT FIND THE END FOR THE INCBIN STARTING AT $2FB161

; L_2FB140:
;     ADDPOSE     #1                          ; 2FB140/6001
; L_2FB141:
;     LOOP        #2                          ; 2FB141/0102
; L_2FB195:
;         SETBANK     #$22                        ; 2FB195/2822
;         ONTICK      $2FB161                     ; 2FB197/0861B12F
;         SPRITEMAP   L_309CBC                     ; 2FB19B/1ABC9C30
;         ASMCALL     $B1B3                       ; 2FB19F/D0B3B1
;         ASMCALL     $DED0                       ; 2FB1A2/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
;         .byte       $09                         ; 2FB1A5/09
;         .byte       $12                         ; 2FB1A6/12
;         .byte       $3D                         ; 2FB1A7/3D
;         .byte       $00                         ; 2FB1A8/00
;         .byte       $10                         ; 2FB1A9/10
;         .byte       $00                         ; 2FB1AA/00
;         .byte       $07                         ; 2FB1AB/07
;         .byte       $00                         ; 2FB1AC/00
;         MOV         VAR0,#$7F                   ; 2FB1AD/0D007F
;         WAIT        #2                          ; 2FB1B0/0602
; L_2FB1B2:
;     END                                     ; 2FB1B2/00

; CODE OR DATA -- $2FB1B3 .. $2FB1C2
;incbinRange "../split/prg/bank2f.bin", $11B3, $11C2

L_2FB1C2:
    END                                     ; 2FB1C2/00

; CODE OR DATA -- $2FB1C3 .. $2FB1C5
incbinRange "../split/prg/bank2f.bin", $11C3, $11C5

L_2FB1C5:
    SETBANK     #$22                        ; 2FB1C5/2822
    ONTICK      $2FB161                     ; 2FB1C7/0861B12F
    SPRITEMAP   L_309CBC                     ; 2FB1CB/1ABC9C30
    SETPOSE     #$0C                        ; 2FB1CF/500C
    ASMCALL     $B1DA                       ; 2FB1D1/D0DAB1
    MOV         VAR0,#$7F                   ; 2FB1D4/0D007F
    WAIT        #2                          ; 2FB1D7/0602
L_2FB1D9:
    END                                     ; 2FB1D9/00

; CODE OR DATA -- $2FB1DA .. $2FB1F9
incbinRange "../split/prg/bank2f.bin", $11DA, $11F9

L_2FB1F9:
    DECPOSE     WAIT #5                     ; 2FB1F9/85
    END                                     ; 2FB1FA/00

; CODE OR DATA -- $2FB1FB .. $2FB21F
incbinRange "../split/prg/bank2f.bin", $11FB, $121F

L_2FB21F:
    SETBANK     #$22                        ; 2FB21F/2822
    SPRITEMAP   L_308FB2                     ; 2FB221/1AB28F30
    ONTICK      $2FB25A                     ; 2FB225/085AB22F
    ASMCALL     $84A4                       ; 2FB229/D0A484 // Store VAR1 in $0784[self]
    ADD         $0789,#1                    ; 2FB22C/1689070201
    MOV         VAR0,#$02                   ; 2FB231/0D0002
    MOV         VAR3,#$00                   ; 2FB234/0D0300
    ASMCALL     $8851                       ; 2FB237/D05188 // Face towards Kirby
    ASMCALL     $8829                       ; 2FB23A/D02988 // Set pose to 0 (respect facing)
    ADDPOSE     #4                          ; 2FB23D/6004
    ASMCALL     $E26A                       ; 2FB23F/D06AE2 // Set X velocity (respect facing)
    .word       $00C0                       ; 2FB242/C000
L_2FB244:
    WAIT        #1                          ; 2FB244/0601
L_2FB246:
    MOV         REG,VAR3                    ; 2FB246/1E03
    JEQ         L_2FB244                    ; 2FB248/0A44B2
    SETYVEL     #$0000                      ; 2FB24B/C00000
    ASMCALL     $E26A                       ; 2FB24E/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 2FB251/0001
L_2FB253:
    ASMCALL     $8829, WAIT #8              ; 2FB253/D82988
L_2FB256:
    INC2POSE    WAIT #8                     ; 2FB256/98
L_2FB257:
    A_JMP       L_2FB253                    ; 2FB257/1753B2

; CODE OR DATA -- $2FB25A .. $2FB2A9
incbinRange "../split/prg/bank2f.bin", $125A, $12A9

Script3F_NightmareOrb:
    MOV         $0043,#$D6                  ; 2FB2A9/114300D6
    SETBANK     #$22                        ; 2FB2AD/2822
    ONMOVE      $D920                       ; 2FB2AF/2320D9
    ONPOSITION  $D97D                       ; 2FB2B2/217DD9
    MOV         REG,VAR0                    ; 2FB2B5/1E00
    JEQ         L_2FB2BD                    ; 2FB2B7/0ABDB2
    ASMCALL     $91D8                       ; 2FB2BA/D0D891 // Teleport to parent object
L_2FB2BD:
    MOV         REG,VAR0                    ; 2FB2BD/1E00
    TABLEJMP    #14                         ; 2FB2BF/0F0E
    .word       SCR3F_MainObject            ; 2FB2C1/DDB2
    .word       SCR3F_01                    ; 2FB2C3/F0BA
    .word       SCR3F_02                    ; 2FB2C5/2BBB
    .word       SCR3F_03                    ; 2FB2C7/6DBB
    .word       SCR3F_04                    ; 2FB2C9/79BB
    .word       SCR3F_05                    ; 2FB2CB/85BB
    .word       SCR3F_06                    ; 2FB2CD/B0BB
    .word       SCR3F_07                    ; 2FB2CF/CABB
    .word       SCR3F_08                    ; 2FB2D1/C8B9
    .word       SCR3F_09                    ; 2FB2D3/F1B9
    .word       SCR3F_0A                    ; 2FB2D5/16BA
    .word       SCR3F_0B                    ; 2FB2D7/3BBA
    .word       SCR3F_0C                    ; 2FB2D9/9BB9
    .word       SCR3F_0D                    ; 2FB2DB/09BD
SCR3F_MainObject:
    ONMOVE      $D864                       ; 2FB2DD/2364D8
    ONPOSITION  $D968                       ; 2FB2E0/2168D9
    A_JSR       L_2FBC07                    ; 2FB2E3/1807BC
    ONMOVE      $D920                       ; 2FB2E6/2320D9
    ONPOSITION  $D97D                       ; 2FB2E9/217DD9
    ASMCALL     $8851                       ; 2FB2EC/D05188 // Face towards Kirby
    ASMCALL     $B8B2                       ; 2FB2EF/D0B2B8
    ONTICK      $2FB6C4                     ; 2FB2F2/08C4B62F
    SPRITEMAP   L_329C84                     ; 2FB2F6/1A849C32
    TASK        $846C                       ; 2FB2FA/076C84
    SETXPOS     #$00C0                      ; 2FB2FD/2AC000
    SETYPOS     #$0060                      ; 2FB300/2B6000
    LOOP        #2                          ; 2FB303/0102
        MOV         VAR3,#$00                   ; 2FB305/0D0300
        MOV         REG,#$01                    ; 2FB308/1B01
        ASMCALL     $B8DE                       ; 2FB30A/D0DEB8
        MOV         VAR4,#$00                   ; 2FB30D/0D0400
        A_JSR       L_2FB38E                    ; 2FB310/188EB3
        A_JSR       L_2FB38E                    ; 2FB313/188EB3
        MOV         VAR3,#$01                   ; 2FB316/0D0301
        MOV         REG,#$0A                    ; 2FB319/1B0A
        ASMCALL     $B8DE                       ; 2FB31B/D0DEB8
        A_JSR       L_2FB3B4                    ; 2FB31E/18B4B3
        A_JSR       L_2FB3B4                    ; 2FB321/18B4B3
        MOV         VAR3,#$03                   ; 2FB324/0D0303
        MOV         REG,#$23                    ; 2FB327/1B23
        ASMCALL     $B8DE                       ; 2FB329/D0DEB8
        A_JSR       L_2FB42E                    ; 2FB32C/182EB4
        MOV         VAR3,#$01                   ; 2FB32F/0D0301
        MOV         REG,#$0A                    ; 2FB332/1B0A
        ASMCALL     $B8DE                       ; 2FB334/D0DEB8
        A_JSR       L_2FB3B4                    ; 2FB337/18B4B3
        A_JSR       L_2FB3B4                    ; 2FB33A/18B4B3
        MOV         VAR3,#$03                   ; 2FB33D/0D0303
        MOV         REG,#$23                    ; 2FB340/1B23
        ASMCALL     $B8DE                       ; 2FB342/D0DEB8
        A_JSR       L_2FB464                    ; 2FB345/1864B4
        MOV         VAR3,#$00                   ; 2FB348/0D0300
        MOV         REG,#$01                    ; 2FB34B/1B01
        ASMCALL     $B8DE                       ; 2FB34D/D0DEB8
        MOV         VAR4,#$00                   ; 2FB350/0D0400
        A_JSR       L_2FB38E                    ; 2FB353/188EB3
        MOV         VAR3,#$03                   ; 2FB356/0D0303
        MOV         REG,#$23                    ; 2FB359/1B23
        ASMCALL     $B8DE                       ; 2FB35B/D0DEB8
        A_JSR       L_2FB42E                    ; 2FB35E/182EB4
        MOV         VAR3,#$01                   ; 2FB361/0D0301
        MOV         REG,#$0A                    ; 2FB364/1B0A
        ASMCALL     $B8DE                       ; 2FB366/D0DEB8
        A_JSR       L_2FB3B4                    ; 2FB369/18B4B3
        A_JSR       L_2FB3B4                    ; 2FB36C/18B4B3
        MOV         VAR3,#$03                   ; 2FB36F/0D0303
        MOV         REG,#$34                    ; 2FB372/1B34
        ASMCALL     $B8DE                       ; 2FB374/D0DEB8
        A_JSR       L_2FB4A8                    ; 2FB377/18A8B4
    ENDLOOP                                 ; 2FB37A/02
    MOV         VAR3,#$04                   ; 2FB37B/0D0304
    MOV         REG,#$34                    ; 2FB37E/1B34
    ASMCALL     $B8DE                       ; 2FB380/D0DEB8
    A_JSR       L_2FB6AC                    ; 2FB383/18ACB6
    MOV         VAR3,#$03                   ; 2FB386/0D0303
L_2FB389:
    HALT                                    ; 2FB389/09

; CODE OR DATA -- $2FB38A .. $2FB38E
incbinRange "../split/prg/bank2f.bin", $138A, $138E

L_2FB38E:
    SETYVEL     #$FF00, WAIT #10            ; 2FB38E/CA00FF
L_2FB391:
    SETYVEL     #$FF80, WAIT #10            ; 2FB391/CA80FF
L_2FB394:
    SETYVEL     #$FFE0, WAIT #10            ; 2FB394/CAE0FF
L_2FB397:
    SETYVEL     #$0020, WAIT #10            ; 2FB397/CA2000
L_2FB39A:
    SETYVEL     #$0080, WAIT #10            ; 2FB39A/CA8000
L_2FB39D:
    SETYVEL     #$0100, WAIT #10            ; 2FB39D/CA0001
L_2FB3A0:
    SETYVEL     #$0100, WAIT #10            ; 2FB3A0/CA0001
L_2FB3A3:
    SETYVEL     #$0080, WAIT #10            ; 2FB3A3/CA8000
L_2FB3A6:
    SETYVEL     #$0020, WAIT #10            ; 2FB3A6/CA2000
L_2FB3A9:
    SETYVEL     #$FFE0, WAIT #10            ; 2FB3A9/CAE0FF
L_2FB3AC:
    SETYVEL     #$FF80, WAIT #10            ; 2FB3AC/CA80FF
L_2FB3AF:
    SETYVEL     #$FF00, WAIT #10            ; 2FB3AF/CA00FF
L_2FB3B2:
    ZEROVEL                                 ; 2FB3B2/38
    A_RTS                                   ; 2FB3B3/19

L_2FB3B4:
    SETXVEL     #$FE00                      ; 2FB3B4/B000FE
    SETYVEL     #$FE00, WAIT #6             ; 2FB3B7/C600FE
L_2FB3BA:
    SETXVEL     #$FF00                      ; 2FB3BA/B000FF
    SETYVEL     #$FE00, WAIT #6             ; 2FB3BD/C600FE
L_2FB3C0:
    SETXVEL     #$0000                      ; 2FB3C0/B00000
    SETYVEL     #$FEC0, WAIT #6             ; 2FB3C3/C6C0FE
L_2FB3C6:
    SETXVEL     #$0100                      ; 2FB3C6/B00001
    SETYVEL     #$FF00, WAIT #6             ; 2FB3C9/C600FF
L_2FB3CC:
    SETXVEL     #$0200                      ; 2FB3CC/B00002
    SETYVEL     #$FF80, WAIT #6             ; 2FB3CF/C680FF
L_2FB3D2:
    SETXVEL     #$0200                      ; 2FB3D2/B00002
    SETYVEL     #$0080, WAIT #6             ; 2FB3D5/C68000
L_2FB3D8:
    SETXVEL     #$0100                      ; 2FB3D8/B00001
    SETYVEL     #$0100, WAIT #6             ; 2FB3DB/C60001
L_2FB3DE:
    SETXVEL     #$0000                      ; 2FB3DE/B00000
    SETYVEL     #$0140, WAIT #6             ; 2FB3E1/C64001
L_2FB3E4:
    SETXVEL     #$FF00                      ; 2FB3E4/B000FF
    SETYVEL     #$0200, WAIT #6             ; 2FB3E7/C60002
L_2FB3EA:
    SETXVEL     #$FE00                      ; 2FB3EA/B000FE
    SETYVEL     #$0200, WAIT #6             ; 2FB3ED/C60002
L_2FB3F0:
    SETXVEL     #$FE00                      ; 2FB3F0/B000FE
    SETYVEL     #$0200, WAIT #6             ; 2FB3F3/C60002
L_2FB3F6:
    SETXVEL     #$FF00                      ; 2FB3F6/B000FF
    SETYVEL     #$0200, WAIT #6             ; 2FB3F9/C60002
L_2FB3FC:
    SETXVEL     #$0000                      ; 2FB3FC/B00000
    SETYVEL     #$0140, WAIT #6             ; 2FB3FF/C64001
L_2FB402:
    SETXVEL     #$0100                      ; 2FB402/B00001
    SETYVEL     #$0100, WAIT #6             ; 2FB405/C60001
L_2FB408:
    SETXVEL     #$0200                      ; 2FB408/B00002
    SETYVEL     #$0080, WAIT #6             ; 2FB40B/C68000
L_2FB40E:
    SETXVEL     #$0200                      ; 2FB40E/B00002
    SETYVEL     #$FF80, WAIT #6             ; 2FB411/C680FF
L_2FB414:
    SETXVEL     #$0100                      ; 2FB414/B00001
    SETYVEL     #$FF00, WAIT #6             ; 2FB417/C600FF
L_2FB41A:
    SETXVEL     #$0000                      ; 2FB41A/B00000
    SETYVEL     #$FEC0, WAIT #6             ; 2FB41D/C6C0FE
L_2FB420:
    SETXVEL     #$FF00                      ; 2FB420/B000FF
    SETYVEL     #$FE00, WAIT #6             ; 2FB423/C600FE
L_2FB426:
    SETXVEL     #$FE00                      ; 2FB426/B000FE
    SETYVEL     #$FE00, WAIT #6             ; 2FB429/C600FE
L_2FB42C:
    ZEROVEL                                 ; 2FB42C/38
    A_RTS                                   ; 2FB42D/19

L_2FB42E:
    ZEROVEL                                 ; 2FB42E/38
    WAIT        #40                         ; 2FB42F/0628
L_2FB431:
    ASMCALL     $DED0                       ; 2FB431/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FB434/09
    .byte       $12                         ; 2FB435/12
    .byte       $3F                         ; 2FB436/3F
    .byte       $00                         ; 2FB437/00
    .byte       $F0                         ; 2FB438/F0
    .byte       $00                         ; 2FB439/00
    .byte       $08                         ; 2FB43A/08
    .byte       $00                         ; 2FB43B/00
    ASMCALL     $DED0                       ; 2FB43C/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FB43F/09
    .byte       $12                         ; 2FB440/12
    .byte       $3F                         ; 2FB441/3F
    .byte       $00                         ; 2FB442/00
    .byte       $F0                         ; 2FB443/F0
    .byte       $00                         ; 2FB444/00
    .byte       $09                         ; 2FB445/09
    .byte       $00                         ; 2FB446/00
    ASMCALL     $DED0                       ; 2FB447/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FB44A/09
    .byte       $12                         ; 2FB44B/12
    .byte       $3F                         ; 2FB44C/3F
    .byte       $00                         ; 2FB44D/00
    .byte       $10                         ; 2FB44E/10
    .byte       $00                         ; 2FB44F/00
    .byte       $0A                         ; 2FB450/0A
    .byte       $00                         ; 2FB451/00
    ASMCALL     $DED0                       ; 2FB452/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FB455/09
    .byte       $12                         ; 2FB456/12
    .byte       $3F                         ; 2FB457/3F
    .byte       $00                         ; 2FB458/00
    .byte       $10                         ; 2FB459/10
    .byte       $00                         ; 2FB45A/00
    .byte       $0B                         ; 2FB45B/0B
    .byte       $00                         ; 2FB45C/00
    MOV         $0786,#$01                  ; 2FB45D/11860701
    WAIT        #80                         ; 2FB461/0650
L_2FB463:
    A_RTS                                   ; 2FB463/19

L_2FB464:
    ZEROVEL                                 ; 2FB464/38
    WAIT        #8                          ; 2FB465/0608
L_2FB467:
    SETYVEL     #$FA00, WAIT #10            ; 2FB467/CA00FA
L_2FB46A:
    A_JSR       L_2FB48A                    ; 2FB46A/188AB4
    SETYVEL     #$0600                      ; 2FB46D/C00006
    WAIT        #16                         ; 2FB470/0610
L_2FB472:
    A_JSR       L_2FB48A                    ; 2FB472/188AB4
    SETYVEL     #$FA00, WAIT #12            ; 2FB475/CC00FA
L_2FB478:
    A_JSR       L_2FB48A                    ; 2FB478/188AB4
    SETYVEL     #$0600                      ; 2FB47B/C00006
    WAIT        #16                         ; 2FB47E/0610
L_2FB480:
    A_JSR       L_2FB48A                    ; 2FB480/188AB4
    SETYVEL     #$FA00, WAIT #10            ; 2FB483/CA00FA
L_2FB486:
    A_JSR       L_2FB48A                    ; 2FB486/188AB4
    A_RTS                                   ; 2FB489/19

L_2FB48A:
    ZEROVEL                                 ; 2FB48A/38
    WAIT        #8                          ; 2FB48B/0608
L_2FB48D:
    ASMCALL     $DED0                       ; 2FB48D/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FB490/09
    .byte       $12                         ; 2FB491/12
    .byte       $3F                         ; 2FB492/3F
    .byte       $F2                         ; 2FB493/F2
    .byte       $00                         ; 2FB494/00
    .byte       $00                         ; 2FB495/00
    .byte       $0C                         ; 2FB496/0C
    .byte       $00                         ; 2FB497/00
    SETXVEL     #$0800, WAIT #2             ; 2FB498/B20008
L_2FB49B:
    SETXVEL     #$0400, WAIT #2             ; 2FB49B/B20004
L_2FB49E:
    SETXVEL     #$FC00, WAIT #2             ; 2FB49E/B200FC
L_2FB4A1:
    SETXVEL     #$F800, WAIT #2             ; 2FB4A1/B200F8
L_2FB4A4:
    ZEROVEL                                 ; 2FB4A4/38
    WAIT        #8                          ; 2FB4A5/0608
L_2FB4A7:
    A_RTS                                   ; 2FB4A7/19

L_2FB4A8:
    ASMCALL     $B590                       ; 2FB4A8/D090B5
    TABLEJMP    #3                          ; 2FB4AB/0F03
    .word       L_2FB4B3                    ; 2FB4AD/B3B4
    .word       L_2FB4E0                    ; 2FB4AF/E0B4
    .word       L_2FB538                    ; 2FB4B1/38B5
L_2FB4B3:
    SETXVEL     #$FE00, WAIT #8             ; 2FB4B3/B800FE
L_2FB4B6:
    SETXVEL     #$0400, WAIT #8             ; 2FB4B6/B80004
L_2FB4B9:
    SETXVEL     #$0200, WAIT #8             ; 2FB4B9/B80002
L_2FB4BC:
    SETXVEL     #$0100, WAIT #8             ; 2FB4BC/B80001
L_2FB4BF:
    SETXVEL     #$0080, WAIT #8             ; 2FB4BF/B88000
L_2FB4C2:
    SETXVEL     #$0020, WAIT #8             ; 2FB4C2/B82000
L_2FB4C5:
    SETXVEL     #$0000, WAIT #4             ; 2FB4C5/B40000
L_2FB4C8:
    ASMCALL     $DE4B                       ; 2FB4C8/D04BDE // Play sound effect
    .byte       $2B                         ; 2FB4CB/2B
    SETXVEL     #$FA00                      ; 2FB4CC/B000FA
    WAIT        #32                         ; 2FB4CF/0620
L_2FB4D1:
    SETXVEL     #$FE00, WAIT #8             ; 2FB4D1/B800FE
L_2FB4D4:
    SETXVEL     #$FF00, WAIT #8             ; 2FB4D4/B800FF
L_2FB4D7:
    SETXVEL     #$FF80, WAIT #8             ; 2FB4D7/B880FF
L_2FB4DA:
    ZEROVEL                                 ; 2FB4DA/38
    WAIT        #32                         ; 2FB4DB/0620
L_2FB4DD:
    A_JMP       L_2FB5B6                    ; 2FB4DD/17B6B5

L_2FB4E0:
    SETXVEL     #$0200                      ; 2FB4E0/B00002
    SETYVEL     #$0200, WAIT #8             ; 2FB4E3/C80002
    SETXVEL     #$0100                      ; 2FB4E6/B00001
    SETYVEL     #$0100, WAIT #8             ; 2FB4E9/C80001
    SETXVEL     #$0080                      ; 2FB4EC/B08000
    SETYVEL     #$0080, WAIT #8             ; 2FB4EF/C88000
    SETXVEL     #$0020                      ; 2FB4F2/B02000
    SETYVEL     #$0020, WAIT #8             ; 2FB4F5/C82000
    ZEROVEL                                 ; 2FB4F8/38
    WAIT        #16                         ; 2FB4F9/0610
    ASMCALL     $DE4B                       ; 2FB4FB/D04BDE // Play sound effect
    .byte       $2B                         ; 2FB4FE/2B
    SETXVEL     #$FF80                      ; 2FB4FF/B080FF
    SETYVEL     #$FC00, WAIT #8             ; 2FB502/C800FC
    SETXVEL     #$FF00                      ; 2FB505/B000FF
    SETYVEL     #$FD00, WAIT #8             ; 2FB508/C800FD
    SETXVEL     #$FE00                      ; 2FB50B/B000FE
    SETYVEL     #$FE00, WAIT #8             ; 2FB50E/C800FE
    SETXVEL     #$FD00                      ; 2FB511/B000FD
    SETYVEL     #$FF00, WAIT #8             ; 2FB514/C800FF
    SETXVEL     #$FC00                      ; 2FB517/B000FC
    SETYVEL     #$FF80, WAIT #8             ; 2FB51A/C880FF
    SETXVEL     #$FA00                      ; 2FB51D/B000FA
    SETYVEL     #$FFE0, WAIT #12            ; 2FB520/CCE0FF
    SETXVEL     #$FD00                      ; 2FB523/B000FD
    SETYVEL     #$0100, WAIT #8             ; 2FB526/C80001
    SETXVEL     #$FE00                      ; 2FB529/B000FE
    SETYVEL     #$0200, WAIT #8             ; 2FB52C/C80002
    SETXVEL     #$FF00                      ; 2FB52F/B000FF
    SETYVEL     #$0400, WAIT #8             ; 2FB532/C80004
    A_JMP       L_2FB5B6                    ; 2FB535/17B6B5

L_2FB538:
    SETXVEL     #$0200                      ; 2FB538/B00002
    SETYVEL     #$FE00, WAIT #8             ; 2FB53B/C800FE
L_2FB53E:
    SETXVEL     #$0100                      ; 2FB53E/B00001
    SETYVEL     #$FF00, WAIT #8             ; 2FB541/C800FF
L_2FB544:
    SETXVEL     #$0080                      ; 2FB544/B08000
    SETYVEL     #$FF80, WAIT #8             ; 2FB547/C880FF
L_2FB54A:
    SETXVEL     #$0020                      ; 2FB54A/B02000
    SETYVEL     #$FFE0, WAIT #8             ; 2FB54D/C8E0FF
L_2FB550:
    ZEROVEL                                 ; 2FB550/38
    WAIT        #16                         ; 2FB551/0610
L_2FB553:
    ASMCALL     $DE4B                       ; 2FB553/D04BDE // Play sound effect
    .byte       $2B                         ; 2FB556/2B
    SETXVEL     #$FF80                      ; 2FB557/B080FF
    SETYVEL     #$0400, WAIT #8             ; 2FB55A/C80004
L_2FB55D:
    SETXVEL     #$FF00                      ; 2FB55D/B000FF
    SETYVEL     #$0300, WAIT #8             ; 2FB560/C80003
L_2FB563:
    SETXVEL     #$FE00                      ; 2FB563/B000FE
    SETYVEL     #$0200, WAIT #8             ; 2FB566/C80002
L_2FB569:
    SETXVEL     #$FD00                      ; 2FB569/B000FD
    SETYVEL     #$0100, WAIT #8             ; 2FB56C/C80001
L_2FB56F:
    SETXVEL     #$FC00                      ; 2FB56F/B000FC
    SETYVEL     #$0080, WAIT #8             ; 2FB572/C88000
L_2FB575:
    SETXVEL     #$FA00                      ; 2FB575/B000FA
    SETYVEL     #$0020, WAIT #12            ; 2FB578/CC2000
L_2FB57B:
    SETXVEL     #$FD00                      ; 2FB57B/B000FD
    SETYVEL     #$FF00, WAIT #8             ; 2FB57E/C800FF
L_2FB581:
    SETXVEL     #$FE00                      ; 2FB581/B000FE
    SETYVEL     #$FE00, WAIT #8             ; 2FB584/C800FE
L_2FB587:
    SETXVEL     #$FF00                      ; 2FB587/B000FF
    SETYVEL     #$FC00, WAIT #8             ; 2FB58A/C800FC
L_2FB58D:
    A_JMP       L_2FB631                    ; 2FB58D/1731B6

; CODE OR DATA -- $2FB590 .. $2FB5B6
incbinRange "../split/prg/bank2f.bin", $1590, $15B6

L_2FB5B6:
    MOV         REG,#$49                    ; 2FB5B6/1B49
    ASMCALL     $B8DE                       ; 2FB5B8/D0DEB8
    SETXVEL     #$0200                      ; 2FB5BB/B00002
    SETYVEL     #$0200, WAIT #8             ; 2FB5BE/C80002
L_2FB5C1:
    SETXVEL     #$0200                      ; 2FB5C1/B00002
    SETYVEL     #$0100, WAIT #8             ; 2FB5C4/C80001
L_2FB5C7:
    SETXVEL     #$0200                      ; 2FB5C7/B00002
    SETYVEL     #$FF00, WAIT #8             ; 2FB5CA/C800FF
L_2FB5CD:
    SETXVEL     #$0200                      ; 2FB5CD/B00002
L_2FB5D0:
    SETYVEL     #$FE00, WAIT #8             ; 2FB5D0/C800FE
L_2FB5D3:
    SETXVEL     #$0200                      ; 2FB5D3/B00002
    SETYVEL     #$FE00, WAIT #8             ; 2FB5D6/C800FE
L_2FB5D9:
    SETXVEL     #$0200                      ; 2FB5D9/B00002
    SETYVEL     #$FF00, WAIT #8             ; 2FB5DC/C800FF
L_2FB5DF:
    SETXVEL     #$0200                      ; 2FB5DF/B00002
    SETYVEL     #$0100, WAIT #8             ; 2FB5E2/C80001
L_2FB5E5:
    SETXVEL     #$0200                      ; 2FB5E5/B00002
    SETYVEL     #$0200, WAIT #8             ; 2FB5E8/C80002
L_2FB5EB:
    SETXVEL     #$0200                      ; 2FB5EB/B00002
    SETYVEL     #$0200, WAIT #8             ; 2FB5EE/C80002
L_2FB5F1:
    SETXVEL     #$0200                      ; 2FB5F1/B00002
    SETYVEL     #$0100, WAIT #8             ; 2FB5F4/C80001
L_2FB5F7:
    SETXVEL     #$0400                      ; 2FB5F7/B00004
    SETYVEL     #$0000, WAIT #6             ; 2FB5FA/C60000
L_2FB5FD:
    SETXVEL     #$0200                      ; 2FB5FD/B00002
    SETYVEL     #$FF80, WAIT #6             ; 2FB600/C680FF
L_2FB603:
    SETXVEL     #$0100                      ; 2FB603/B00001
    SETYVEL     #$FF00, WAIT #6             ; 2FB606/C600FF
L_2FB609:
    SETXVEL     #$0080                      ; 2FB609/B08000
    SETYVEL     #$FE00, WAIT #6             ; 2FB60C/C600FE
L_2FB60F:
    SETXVEL     #$FF00                      ; 2FB60F/B000FF
    SETYVEL     #$FE00, WAIT #6             ; 2FB612/C600FE
L_2FB615:
    SETXVEL     #$FE00                      ; 2FB615/B000FE
    SETYVEL     #$FF00, WAIT #6             ; 2FB618/C600FF
L_2FB61B:
    SETXVEL     #$FF00                      ; 2FB61B/B000FF
    SETYVEL     #$0080, WAIT #6             ; 2FB61E/C68000
L_2FB621:
    SETXVEL     #$FF00                      ; 2FB621/B000FF
    SETYVEL     #$0100, WAIT #6             ; 2FB624/C60001
L_2FB627:
    SETXVEL     #$0000                      ; 2FB627/B00000
    SETYVEL     #$0100, WAIT #6             ; 2FB62A/C60001
L_2FB62D:
    ZEROVEL                                 ; 2FB62D/38
    WAIT        #32                         ; 2FB62E/0620
L_2FB630:
    A_RTS                                   ; 2FB630/19

L_2FB631:
    MOV         REG,#$49                    ; 2FB631/1B49
    ASMCALL     $B8DE                       ; 2FB633/D0DEB8
    SETXVEL     #$0200                      ; 2FB636/B00002
    SETYVEL     #$FE00, WAIT #8             ; 2FB639/C800FE
L_2FB63C:
    SETXVEL     #$0200                      ; 2FB63C/B00002
    SETYVEL     #$FF00, WAIT #8             ; 2FB63F/C800FF
L_2FB642:
    SETXVEL     #$0200                      ; 2FB642/B00002
    SETYVEL     #$0100, WAIT #8             ; 2FB645/C80001
L_2FB648:
    SETXVEL     #$0200                      ; 2FB648/B00002
    SETYVEL     #$0200, WAIT #8             ; 2FB64B/C80002
L_2FB64E:
    SETXVEL     #$0200                      ; 2FB64E/B00002
    SETYVEL     #$0200, WAIT #8             ; 2FB651/C80002
L_2FB654:
    SETXVEL     #$0200                      ; 2FB654/B00002
    SETYVEL     #$0100, WAIT #8             ; 2FB657/C80001
L_2FB65A:
    SETXVEL     #$0200                      ; 2FB65A/B00002
    SETYVEL     #$FF00, WAIT #8             ; 2FB65D/C800FF
L_2FB660:
    SETXVEL     #$0200                      ; 2FB660/B00002
    SETYVEL     #$FE00, WAIT #8             ; 2FB663/C800FE
L_2FB666:
    SETXVEL     #$0200                      ; 2FB666/B00002
    SETYVEL     #$FE00, WAIT #8             ; 2FB669/C800FE
L_2FB66C:
    SETXVEL     #$0200                      ; 2FB66C/B00002
    SETYVEL     #$FF00, WAIT #8             ; 2FB66F/C800FF
L_2FB672:
    SETXVEL     #$0400                      ; 2FB672/B00004
    SETYVEL     #$0000, WAIT #6             ; 2FB675/C60000
L_2FB678:
    SETXVEL     #$0200                      ; 2FB678/B00002
    SETYVEL     #$0080, WAIT #6             ; 2FB67B/C68000
L_2FB67E:
    SETXVEL     #$0100                      ; 2FB67E/B00001
    SETYVEL     #$0100, WAIT #6             ; 2FB681/C60001
L_2FB684:
    SETXVEL     #$0080                      ; 2FB684/B08000
    SETYVEL     #$0200, WAIT #6             ; 2FB687/C60002
L_2FB68A:
    SETXVEL     #$FF00                      ; 2FB68A/B000FF
    SETYVEL     #$0200, WAIT #6             ; 2FB68D/C60002
L_2FB690:
    SETXVEL     #$FE00                      ; 2FB690/B000FE
    SETYVEL     #$0100, WAIT #6             ; 2FB693/C60001
L_2FB696:
    SETXVEL     #$FF00                      ; 2FB696/B000FF
    SETYVEL     #$FF80, WAIT #6             ; 2FB699/C680FF
L_2FB69C:
    SETXVEL     #$FF00                      ; 2FB69C/B000FF
    SETYVEL     #$FF00, WAIT #6             ; 2FB69F/C600FF
L_2FB6A2:
    SETXVEL     #$0000                      ; 2FB6A2/B00000
    SETYVEL     #$FF00, WAIT #6             ; 2FB6A5/C600FF
L_2FB6A8:
    ZEROVEL                                 ; 2FB6A8/38
    WAIT        #32                         ; 2FB6A9/0620
L_2FB6AB:
    A_RTS                                   ; 2FB6AB/19

L_2FB6AC:
    ASMCALL     $B6B5                       ; 2FB6AC/D0B5B6
    SETXVEL     #$0100                      ; 2FB6AF/B00001
    WAIT        #60                         ; 2FB6B2/063C
L_2FB6B4:
    A_RTS                                   ; 2FB6B4/19

; CODE OR DATA -- $2FB6B5 .. $2FB89D
incbinRange "../split/prg/bank2f.bin", $16B5, $199B

SCR3F_0C:
            SPRITEMAP   L_329C94                     ; 2FB99B/1A949C32
            ONTICK      $2FB9B1                     ; 2FB99F/08B1B92F
            ASMCALL     $DE4B                       ; 2FB9A3/D04BDE // Play sound effect
            .byte       $0C                         ; 2FB9A6/0C
            SETXVEL     #$FA00                      ; 2FB9A7/B000FA
L_2FB9AA:
            SETPOSE     #$00, WAIT #1               ; 2FB9AA/5100
L_2FB9AC:
            SETPOSE     #$01, WAIT #1               ; 2FB9AC/5101
L_2FB9AE:
            A_JMP       L_2FB9AA                    ; 2FB9AE/17AAB9

; CODE OR DATA -- $2FB9A9 .. $2FB9AA
incbinRange "../split/prg/bank2f.bin", $19b1, $19C8

SCR3F_08:
    A_JSR       L_2FBA60                    ; 2FB9C8/1860BA
    SETXVEL     #$0080                      ; 2FB9CB/B08000
    SETYVEL     #$FE00, WAIT #14            ; 2FB9CE/CE00FE
L_2FB9D1:
    SETXVEL     #$0080                      ; 2FB9D1/B08000
    SETYVEL     #$FF00, WAIT #14            ; 2FB9D4/CE00FF
L_2FB9D7:
    SETXVEL     #$0080                      ; 2FB9D7/B08000
    SETYVEL     #$FF80, WAIT #14            ; 2FB9DA/CE80FF
L_2FB9DD:
    SETXVEL     #$0080                      ; 2FB9DD/B08000
    SETYVEL     #$FFE0, WAIT #14            ; 2FB9E0/CEE0FF
L_2FB9E3:
    ZEROVEL                                 ; 2FB9E3/38
    WAIT        #32                         ; 2FB9E4/0620
L_2FB9E6:
    SETXVEL     #$FA00                      ; 2FB9E6/B000FA
    ASMCALL     $BAB0                       ; 2FB9E9/D0B0BA
    ASMCALL     $DE4B                       ; 2FB9EC/D04BDE // Play sound effect
    .byte       $36                         ; 2FB9EF/36
    HALT                                    ; 2FB9F0/09

SCR3F_09:
    A_JSR       L_2FBA60                    ; 2FB9F1/1860BA
    SETXVEL     #$0020                      ; 2FB9F4/B02000
    SETYVEL     #$FF00, WAIT #14            ; 2FB9F7/CE00FF
L_2FB9FA:
    SETXVEL     #$0020                      ; 2FB9FA/B02000
    SETYVEL     #$FF80, WAIT #14            ; 2FB9FD/CE80FF
L_2FBA00:
    SETXVEL     #$0020                      ; 2FBA00/B02000
    SETYVEL     #$FFE0, WAIT #14            ; 2FBA03/CEE0FF
L_2FBA06:
    SETXVEL     #$0020                      ; 2FBA06/B02000
    SETYVEL     #$FFF8, WAIT #14            ; 2FBA09/CEF8FF
L_2FBA0C:
    ZEROVEL                                 ; 2FBA0C/38
    WAIT        #32                         ; 2FBA0D/0620
L_2FBA0F:
    SETXVEL     #$FA00                      ; 2FBA0F/B000FA
    ASMCALL     $BAB0                       ; 2FBA12/D0B0BA
    HALT                                    ; 2FBA15/09

SCR3F_0A:
    A_JSR       L_2FBA60                    ; 2FBA16/1860BA
    SETXVEL     #$0020                      ; 2FBA19/B02000
    SETYVEL     #$0100, WAIT #14            ; 2FBA1C/CE0001
L_2FBA1F:
    SETXVEL     #$0020                      ; 2FBA1F/B02000
    SETYVEL     #$0080, WAIT #14            ; 2FBA22/CE8000
L_2FBA25:
    SETXVEL     #$0020                      ; 2FBA25/B02000
    SETYVEL     #$0020, WAIT #14            ; 2FBA28/CE2000
L_2FBA2B:
    SETXVEL     #$0020                      ; 2FBA2B/B02000
    SETYVEL     #$0008, WAIT #14            ; 2FBA2E/CE0800
L_2FBA31:
    ZEROVEL                                 ; 2FBA31/38
    WAIT        #32                         ; 2FBA32/0620
L_2FBA34:
    SETXVEL     #$FA00                      ; 2FBA34/B000FA
    ASMCALL     $BAB0                       ; 2FBA37/D0B0BA
    HALT                                    ; 2FBA3A/09

SCR3F_0B:
    A_JSR       L_2FBA60                    ; 2FBA3B/1860BA
    SETXVEL     #$0080                      ; 2FBA3E/B08000
    SETYVEL     #$0200, WAIT #14            ; 2FBA41/CE0002
L_2FBA44:
    SETXVEL     #$0080                      ; 2FBA44/B08000
    SETYVEL     #$0100, WAIT #14            ; 2FBA47/CE0001
L_2FBA4A:
    SETXVEL     #$0080                      ; 2FBA4A/B08000
    SETYVEL     #$0080, WAIT #14            ; 2FBA4D/CE8000
L_2FBA50:
    SETXVEL     #$0080                      ; 2FBA50/B08000
    SETYVEL     #$0020, WAIT #14            ; 2FBA53/CE2000
L_2FBA56:
    ZEROVEL                                 ; 2FBA56/38
    WAIT        #32                         ; 2FBA57/0620
L_2FBA59:
    SETXVEL     #$FA00                      ; 2FBA59/B000FA
    ASMCALL     $BAB0                       ; 2FBA5C/D0B0BA
    HALT                                    ; 2FBA5F/09

L_2FBA60:
    MOV         VAR0,#$01                   ; 2FBA60/0D0001
    SPRITEMAP   L_329C98                     ; 2FBA63/1A989C32
    ONTICK      $2FBA73                     ; 2FBA67/0873BA2F
    MOV         REG,#$00                    ; 2FBA6B/1B00
    ASMCALL     $96B9                       ; 2FBA6D/D0B996 // Unknown ASM $2296B9
    .word       $BA90                       ; 2FBA70/90BA
    A_RTS                                   ; 2FBA72/19

; CODE OR DATA -- $2FBA73 .. $2FBAF0
incbinRange "../split/prg/bank2f.bin", $1A73, $1AF0

SCR3F_01:
    MOV         REG,$0787                   ; 2FBAF0/1C8707
    TABLEJMP    #3                          ; 2FBAF3/0F03
    .word       L_2FBAFB                    ; 2FBAF5/FBBA
    .word       L_2FBB43                    ; 2FBAF7/43BB
    .word       L_2FBB91                    ; 2FBAF9/91BB
L_2FBAFB:
    ASMCALL     $DED0                       ; 2FBAFB/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FBAFE/09
    .byte       $12                         ; 2FBAFF/12
    .byte       $3F                         ; 2FBB00/3F
    .byte       $F2                         ; 2FBB01/F2
    .byte       $00                         ; 2FBB02/00
    .byte       $00                         ; 2FBB03/00
    .byte       $02                         ; 2FBB04/02
    .byte       $00                         ; 2FBB05/00
    WAIT        #16                         ; 2FBB06/0610
L_2FBB08:
    ASMCALL     $91D8                       ; 2FBB08/D0D891
    ASMCALL     $DED0                       ; 2FBB0B/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FBB0E/09
    .byte       $12                         ; 2FBB0F/12
    .byte       $3F                         ; 2FBB10/3F
    .byte       $F2                         ; 2FBB11/F2
    .byte       $00                         ; 2FBB12/00
    .byte       $00                         ; 2FBB13/00
    .byte       $02                         ; 2FBB14/02
    .byte       $00                         ; 2FBB15/00
    WAIT        #16                         ; 2FBB16/0610
L_2FBB18:
    ASMCALL     $91D8                       ; 2FBB18/D0D891
    ASMCALL     $DED0                       ; 2FBB1B/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FBB1E/09
    .byte       $12                         ; 2FBB1F/12
    .byte       $3F                         ; 2FBB20/3F
    .byte       $F2                         ; 2FBB21/F2
    .byte       $00                         ; 2FBB22/00
    .byte       $00                         ; 2FBB23/00
    .byte       $02                         ; 2FBB24/02
    .byte       $00                         ; 2FBB25/00
    MOV         $0787,#$01                  ; 2FBB26/11870701
    END                                     ; 2FBB2A/00

SCR3F_02:
    ASMCALL     $DE4B                       ; 2FBB2B/D04BDE // Play sound effect
    .byte       $36                         ; 2FBB2E/36
    A_JSR       L_2FBBE4                    ; 2FBB2F/18E4BB
    SETXVEL     #$FC00                      ; 2FBB32/B000FC
    SETYVEL     #$0000                      ; 2FBB35/C00000
L_2FBB38:
    SETPOSE     #$00, WAIT #8               ; 2FBB38/5800
L_2FBB3A:
    SETPOSE     #$01, WAIT #8               ; 2FBB3A/5801
L_2FBB3C:
    SETPOSE     #$02, WAIT #8               ; 2FBB3C/5802
L_2FBB3E:
    SETPOSE     #$03, WAIT #8               ; 2FBB3E/5803
L_2FBB40:
    A_JMP       L_2FBB38                    ; 2FBB40/1738BB

L_2FBB43:
    ASMCALL     $DED0                       ; 2FBB43/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FBB46/09
    .byte       $12                         ; 2FBB47/12
    .byte       $3F                         ; 2FBB48/3F
    .byte       $F2                         ; 2FBB49/F2
    .byte       $00                         ; 2FBB4A/00
    .byte       $00                         ; 2FBB4B/00
    .byte       $03                         ; 2FBB4C/03
    .byte       $00                         ; 2FBB4D/00
    ASMCALL     $DED0                       ; 2FBB4E/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FBB51/09
    .byte       $12                         ; 2FBB52/12
    .byte       $3F                         ; 2FBB53/3F
    .byte       $F2                         ; 2FBB54/F2
    .byte       $00                         ; 2FBB55/00
    .byte       $00                         ; 2FBB56/00
    .byte       $04                         ; 2FBB57/04
    .byte       $00                         ; 2FBB58/00
    ASMCALL     $DED0                       ; 2FBB59/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FBB5C/09
    .byte       $12                         ; 2FBB5D/12
    .byte       $3F                         ; 2FBB5E/3F
    .byte       $F2                         ; 2FBB5F/F2
    .byte       $00                         ; 2FBB60/00
    .byte       $00                         ; 2FBB61/00
    .byte       $05                         ; 2FBB62/05
    .byte       $00                         ; 2FBB63/00
    ASMCALL     $DE4B                       ; 2FBB64/D04BDE // Play sound effect
    .byte       $3D                         ; 2FBB67/3D
    MOV         $0787,#$02                  ; 2FBB68/11870702
    END                                     ; 2FBB6C/00

SCR3F_03:
    A_JSR       L_2FBBE4                    ; 2FBB6D/18E4BB
    SETXVEL     #$FDCD                      ; 2FBB70/B0CDFD
    SETYVEL     #$FE4D                      ; 2FBB73/C04DFE
    A_JMP       L_2FBB38                    ; 2FBB76/1738BB

SCR3F_04:
    A_JSR       L_2FBBE4                    ; 2FBB79/18E4BB
    SETXVEL     #$FD00                      ; 2FBB7C/B000FD
    SETYVEL     #$0000                      ; 2FBB7F/C00000
    A_JMP       L_2FBB38                    ; 2FBB82/1738BB

SCR3F_05:
    A_JSR       L_2FBBE4                    ; 2FBB85/18E4BB
    SETXVEL     #$FDCD                      ; 2FBB88/B0CDFD
    SETYVEL     #$01B3                      ; 2FBB8B/C0B301
    A_JMP       L_2FBB38                    ; 2FBB8E/1738BB

L_2FBB91:
    ASMCALL     $DED0                       ; 2FBB91/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FBB94/09
    .byte       $12                         ; 2FBB95/12
    .byte       $3F                         ; 2FBB96/3F
    .byte       $F2                         ; 2FBB97/F2
    .byte       $00                         ; 2FBB98/00
    .byte       $00                         ; 2FBB99/00
    .byte       $06                         ; 2FBB9A/06
    .byte       $00                         ; 2FBB9B/00
    ASMCALL     $DED0                       ; 2FBB9C/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FBB9F/09
    .byte       $12                         ; 2FBBA0/12
    .byte       $3F                         ; 2FBBA1/3F
    .byte       $F2                         ; 2FBBA2/F2
    .byte       $00                         ; 2FBBA3/00
    .byte       $00                         ; 2FBBA4/00
    .byte       $07                         ; 2FBBA5/07
    .byte       $00                         ; 2FBBA6/00
    ASMCALL     $DE4B                       ; 2FBBA7/D04BDE // Play sound effect
    .byte       $36                         ; 2FBBAA/36
    MOV         $0787,#$00                  ; 2FBBAB/11870700
    END                                     ; 2FBBAF/00

SCR3F_06:
    A_JSR       L_2FBBE4                    ; 2FBBB0/18E4BB
    SETXVEL     #$FE00                      ; 2FBBB3/B000FE
    SETYVEL     #$FE00                      ; 2FBBB6/C000FE
    SETPOSE     #$00, WAIT #8               ; 2FBBB9/5800
L_2FBBBB:
    SETPOSE     #$01, WAIT #8               ; 2FBBBB/5801
L_2FBBBD:
    SETXVEL     #$FD00                      ; 2FBBBD/B000FD
    SETYVEL     #$0000                      ; 2FBBC0/C00000
    SETPOSE     #$02, WAIT #8               ; 2FBBC3/5802
L_2FBBC5:
    SETPOSE     #$03, WAIT #8               ; 2FBBC5/5803
L_2FBBC7:
    A_JMP       L_2FBB38                    ; 2FBBC7/1738BB

SCR3F_07:
    A_JSR       L_2FBBE4                    ; 2FBBCA/18E4BB
    SETXVEL     #$FE00                      ; 2FBBCD/B000FE
    SETYVEL     #$0200                      ; 2FBBD0/C00002
    SETPOSE     #$00, WAIT #8               ; 2FBBD3/5800
L_2FBBD5:
    SETPOSE     #$01, WAIT #8               ; 2FBBD5/5801
L_2FBBD7:
    SETXVEL     #$FD00                      ; 2FBBD7/B000FD
    SETYVEL     #$0000                      ; 2FBBDA/C00000
    SETPOSE     #$02, WAIT #8               ; 2FBBDD/5802
L_2FBBDF:
    SETPOSE     #$03, WAIT #8               ; 2FBBDF/5803
L_2FBBE1:
    A_JMP       L_2FBB38                    ; 2FBBE1/1738BB

L_2FBBE4:
    SPRITEMAP   L_329C98                     ; 2FBBE4/1A989C32
    ONTICK      $2FBBF0                     ; 2FBBE8/08F0BB2F
    MOV         VAR0,#$01                   ; 2FBBEC/0D0001
    A_RTS                                   ; 2FBBEF/19

; CODE OR DATA -- $2FBBF0 .. $2FBC07
incbinRange "../split/prg/bank2f.bin", $1BF0, $1C07

L_2FBC07:
    SPRITEMAP   L_329C84                     ; 2FBC07/1A849C32
    SETPOSE     #$FF                        ; 2FBC0B/50FF
    MOV         VAR1,#$40                   ; 2FBC0D/0D0140
    MOV         $0789,#$00                  ; 2FBC10/11890700
    MOV         $078A,#$03                  ; 2FBC14/118A0703
    ASMCALL     $8C71                       ; 2FBC18/D0718C // Unknown ASM $228C71
    .byte       $3F                         ; 2FBC1B/3F
    .byte       $0D                         ; 2FBC1C/0D
    .byte       $00                         ; 2FBC1D/00
    ONTICK      $2FBD02                     ; 2FBC1E/0802BD2F
    TASK        L_2FBCDD                    ; 2FBC22/07DDBC
    WAIT        #65                         ; 2FBC25/0641
L_2FBC27:
    TASK        L_2FBCA9                    ; 2FBC27/07A9BC
    SETXPOS     #$00F8                      ; 2FBC2A/2AF800
    SETYPOS     #$0000                      ; 2FBC2D/2B0000
    ZEROVEL                                 ; 2FBC30/38
    WAIT        #36                         ; 2FBC31/0624
L_2FBC33:
    ASMCALL     $932F                       ; 2FBC33/D02F93

incbinRange "../split/prg/bank2f.bin", $1C36, $1C3B

L_2FBC3B:
    SETYVEL     #$0080, WAIT #10            ; 2FBC3B/CA8000
L_2FBC3E:
    SETYVEL     #$0020, WAIT #10            ; 2FBC3E/CA2000
L_2FBC41:
    SETYVEL     #$0000                      ; 2FBC41/C00000
    WAIT        #16                         ; 2FBC44/0610
L_2FBC46:
    TASK        L_2FBCB7                    ; 2FBC46/07B7BC
    ASMCALL     $DE4B                       ; 2FBC49/D04BDE // Play sound effect
    .byte       $4B                         ; 2FBC4C/4B
    ASMCALL     $9340, WAIT #8              ; 2FBC4D/D84093
    END                                     ; 2FBC50/00

; CODE OR DATA -- $2FBC51 .. $2FBC54
incbinRange "../split/prg/bank2f.bin", $1C51, $1C54

L_2FBC54:
    SETXVEL     #$0200, WAIT #8             ; 2FBC54/B80002
L_2FBC57:
    SETYVEL     #$FE00, WAIT #8             ; 2FBC57/C800FE
L_2FBC5A:
    ASMCALL     $9340, WAIT #6              ; 2FBC5A/D64093
    END                                     ; 2FBC5D/00

; CODE OR DATA -- $2FBC5E .. $2FBC61
incbinRange "../split/prg/bank2f.bin", $1C5E, $1C61

L_2FBC61:
    ASMCALL     $9340, WAIT #4              ; 2FBC61/D44093
    DECPOSE                                 ; 2FBC64/80
    END                                     ; 2FBC65/00

; CODE OR DATA -- $2FBC66 .. $2FBC68
incbinRange "../split/prg/bank2f.bin", $1C66, $1C68

L_2FBC68:
    ASMCALL     $9340, WAIT #6              ; 2FBC68/D64093
    END                                     ; 2FBC6B/00

; CODE OR DATA -- $2FBC6C .. $2FBC6E
incbinRange "../split/prg/bank2f.bin", $1C6C, $1C6E

L_2FBC6E:
    END                                     ; 2FBC6E/00

L_2FBC6F:
    TASK        L_2FBCD2                    ; 2FBC6F/07D2BC
    ASMCALL     $9340, WAIT #6              ; 2FBC72/D64093
    END                                     ; 2FBC75/00

; CODE OR DATA -- $2FBC76 .. $2FBC79
incbinRange "../split/prg/bank2f.bin", $1C76, $1C79

L_2FBC79:
    SETYVEL     #$0200, WAIT #11            ; 2FBC79/CB0002
L_2FBC7C:
    SETXVEL     #$FF00, WAIT #6             ; 2FBC7C/B600FF
L_2FBC7F:
    SETXVEL     #$0100, WAIT #6             ; 2FBC7F/B60001
L_2FBC82:
    SETXVEL     #$0200, WAIT #6             ; 2FBC82/B60002
L_2FBC85:
    ASMCALL     $9340, WAIT #6              ; 2FBC85/D64093
    END                                     ; 2FBC88/00

; CODE OR DATA -- $2FBC89 .. $2FBC8C
incbinRange "../split/prg/bank2f.bin", $1C89, $1C8C

L_2FBC8C:
    ASMCALL     $9340, WAIT #6              ; 2FBC8C/D64093
    END                                     ; 2FBC8F/00

; CODE OR DATA -- $2FBC90 .. $2FBC93
incbinRange "../split/prg/bank2f.bin", $1C90, $1C93

L_2FBC93:
    ASMCALL     $9340, WAIT #6              ; 2FBC93/D64093
    DECPOSE                                 ; 2FBC96/80
    END                                     ; 2FBC97/00

; CODE OR DATA -- $2FBC98 .. $2FBC9A
incbinRange "../split/prg/bank2f.bin", $1C98, $1C9A

L_2FBC9A:
    SETXVEL     #$0020, WAIT #6             ; 2FBC9A/B62000
L_2FBC9D:
    ZEROVEL                                 ; 2FBC9D/38
    WAIT        #18                         ; 2FBC9E/0612
L_2FBCA0:
    MOV         VAR0,#$00                   ; 2FBCA0/0D0000
    MOV         VAR1,#$00                   ; 2FBCA3/0D0100
    SETPOSE     #$FF                        ; 2FBCA6/50FF
    A_RTS                                   ; 2FBCA8/19

L_2FBCA9:
    LOOP        #3                          ; 2FBCA9/0103
        SETPOSE     #$00, WAIT #8               ; 2FBCAB/5800
L_2FBCAD:
        INCPOSE     WAIT #8                     ; 2FBCAD/78
L_2FBCAE:
        INCPOSE     WAIT #8                     ; 2FBCAE/78
L_2FBCAF:
        INCPOSE     WAIT #8                     ; 2FBCAF/78
L_2FBCB0:
    ENDLOOP                                 ; 2FBCB0/02
    SETPOSE     #$00, WAIT #8               ; 2FBCB1/5800
L_2FBCB3:
    INCPOSE     WAIT #8                     ; 2FBCB3/78
L_2FBCB4:
    INCPOSE     WAIT #8                     ; 2FBCB4/78
L_2FBCB5:
    INCPOSE     WAIT #4                     ; 2FBCB5/74
L_2FBCB6:
    ENDTASK                                 ; 2FBCB6/0C

L_2FBCB7:
    SETPOSE     #$00, WAIT #2               ; 2FBCB7/5200
L_2FBCB9:
    SETPOSE     #$04, WAIT #2               ; 2FBCB9/5204
L_2FBCBB:
    INCPOSE     WAIT #2                     ; 2FBCBB/72
L_2FBCBC:
    DECPOSE     WAIT #2                     ; 2FBCBC/82
L_2FBCBD:
    SETPOSE     #$01, WAIT #2               ; 2FBCBD/5201
L_2FBCBF:
    SETPOSE     #$04, WAIT #2               ; 2FBCBF/5204
L_2FBCC1:
    INCPOSE     WAIT #2                     ; 2FBCC1/72
L_2FBCC2:
    DECPOSE     WAIT #2                     ; 2FBCC2/82
L_2FBCC3:
    DEC2POSE    WAIT #2                     ; 2FBCC3/A2
L_2FBCC4:
    INC2POSE    WAIT #2                     ; 2FBCC4/92
L_2FBCC5:
    INCPOSE     WAIT #2                     ; 2FBCC5/72
L_2FBCC6:
    DECPOSE     WAIT #2                     ; 2FBCC6/82
L_2FBCC7:
    DECPOSE     WAIT #2                     ; 2FBCC7/82
L_2FBCC8:
    INCPOSE     WAIT #2                     ; 2FBCC8/72
L_2FBCC9:
    INCPOSE     WAIT #2                     ; 2FBCC9/72
L_2FBCCA:
    DECPOSE     WAIT #2                     ; 2FBCCA/82
L_2FBCCB:
    SETPOSE     #$00, WAIT #2               ; 2FBCCB/5200
L_2FBCCD:
    SETPOSE     #$04, WAIT #2               ; 2FBCCD/5204
L_2FBCCF:
    INCPOSE     WAIT #2                     ; 2FBCCF/72
L_2FBCD0:
    DECPOSE     WAIT #2                     ; 2FBCD0/82
L_2FBCD1:
    ENDTASK                                 ; 2FBCD1/0C

L_2FBCD2:
    LOOP        #19                         ; 2FBCD2/0113
        SETPOSE     #$00, WAIT #1               ; 2FBCD4/5100
L_2FBCD6:
        INCPOSE     WAIT #1                     ; 2FBCD6/71
L_2FBCD7:
        INCPOSE     WAIT #1                     ; 2FBCD7/71
L_2FBCD8:
        INCPOSE     WAIT #1                     ; 2FBCD8/71
L_2FBCD9:
    ENDLOOP                                 ; 2FBCD9/02
    SETPOSE     #$00, WAIT #1               ; 2FBCDA/5100
L_2FBCDC:
    ENDTASK                                 ; 2FBCDC/0C

L_2FBCDD:
    ZEROCAMERAVEL                           ; 2FBCDD/39
    SETYCAMERA  #$02FC                      ; 2FBCDE/31FC02
    SETYCAMERAVEL#$FC00                     ; 2FBCE1/3300FC
    MOV         REG,#$04                    ; 2FBCE4/1B04
    ASMCALL     $C9AA                       ; 2FBCE6/D0AAC9
    LOOP        #4                          ; 2FBCE9/0104
        ASMCALL     $C996, WAIT #6              ; 2FBCEB/D696C9 // Palette fade (out?) step
L_2FBCEE:
    ENDLOOP                                 ; 2FBCEE/02
    WAIT        #119                        ; 2FBCEF/0677
L_2FBCF1:
    SETYCAMERAVEL#$FD00                     ; 2FBCF1/3300FD
    WAIT        #32                         ; 2FBCF4/0620
L_2FBCF6:
    SETYCAMERAVEL#$FE00                     ; 2FBCF6/3300FE
    WAIT        #32                         ; 2FBCF9/0620
L_2FBCFB:
    SETYCAMERAVEL#$FF00                     ; 2FBCFB/3300FF
    WAIT        #32                         ; 2FBCFE/0620
L_2FBD00:
    ZEROCAMERAVEL                           ; 2FBD00/39
    ENDTASK                                 ; 2FBD01/0C

; CODE OR DATA -- $2FBD02 .. $2FBD09
incbinRange "../split/prg/bank2f.bin", $1D02, $1D09

SCR3F_0D:
    MOV         $0042,#$CE                  ; 2FBD09/114200CE
L_2FBD0D:
    ONDRAW      $DDAA                       ; 2FBD0D/20AADD
    SPRITEMAP   L_1C8134                     ; 2FBD10/1A34811C
    MOV         VAR1,#$40                   ; 2FBD14/0D0140
    SETPOSE     #$FF                        ; 2FBD17/50FF
    ASMCALL     $E2F1                       ; 2FBD19/D0F1E2 // Unknown ASM $E2F1
    _is_faraddr $2FBD94                     ; 2FBD1C/94BD2F
    SETXPOS     #$0008                      ; 2FBD1F/2A0800
    SETYPOS     #$00B0                      ; 2FBD22/2BB000
    WAIT        #65                         ; 2FBD25/0641
L_2FBD27:
    TASK        L_2FBDA8                    ; 2FBD27/07A8BD
    ASMCALL     $932F                       ; 2FBD2A/D02F93
    SETZPOS     #$0100                      ; 2FBD2D/3A0001
    END                                     ; 2FBD30/00

; CODE OR DATA -- $2FBD31 .. $2FBD32
incbinRange "../split/prg/bank2f.bin", $1D31, $1D32

L_2FBD32:
    SETYVEL     #$FF00                      ; 2FBD32/C000FF
    WAIT        #20                         ; 2FBD35/0614
L_2FBD37:
    SETYVEL     #$FF80                      ; 2FBD37/C080FF
    WAIT        #20                         ; 2FBD3A/0614
L_2FBD3C:
    ASMCALL     $9340, WAIT #10             ; 2FBD3C/DA4093
    DECPOSE                                 ; 2FBD3F/80
    END                                     ; 2FBD40/00

; CODE OR DATA -- $2FBD41 .. $2FBD43
incbinRange "../split/prg/bank2f.bin", $1D41, $1D43

L_2FBD43:
    SETYVEL     #$0100, WAIT #10            ; 2FBD43/CA0001
L_2FBD46:
    SETXVEL     #$0020, WAIT #10            ; 2FBD46/BA2000
L_2FBD49:
    SETXVEL     #$FFE0, WAIT #6             ; 2FBD49/B6E0FF
L_2FBD4C:
    SETPOSE     #$03, WAIT #2               ; 2FBD4C/5203
L_2FBD4E:
    INCPOSE     WAIT #2                     ; 2FBD4E/72
L_2FBD4F:
    ZEROVEL                                 ; 2FBD4F/38
    SETPOSE     #$0B, WAIT #2               ; 2FBD50/520B
L_2FBD52:
    DECPOSE                                 ; 2FBD52/80
    SETXVEL     #$FF00                      ; 2FBD53/B000FF
    WAIT        #16                         ; 2FBD56/0610
L_2FBD58:
    SETYVEL     #$0020                      ; 2FBD58/C02000
    WAIT        #16                         ; 2FBD5B/0610
L_2FBD5D:
    ASMCALL     $932F                       ; 2FBD5D/D02F93
    TABLEJSR    #128                        ; 2FBD60/1080
    .byte $FF,$80,$00
L_2FBD65:
    SETYVEL     #$0100                      ; 2FBD65/C00001
    WAIT        #16                         ; 2FBD68/0610
L_2FBD6A:
    SETPOSE     #$03, WAIT #2               ; 2FBD6A/5203
L_2FBD6C:
    INCPOSE     WAIT #2                     ; 2FBD6C/72
L_2FBD6D:
    INCPOSE     WAIT #2                     ; 2FBD6D/72
L_2FBD6E:
    INCPOSE     WAIT #2                     ; 2FBD6E/72
L_2FBD6F:
    INCPOSE                                 ; 2FBD6F/70
    ASMCALL     $9340, WAIT #2              ; 2FBD70/D24093
    .byte $E0,$FF,$80,$00
L_2FBD77:
    INCPOSE     WAIT #2                     ; 2FBD77/72
L_2FBD78:
    DECPOSE     WAIT #2                     ; 2FBD78/82
L_2FBD79:
    SETPOSE     #$00                        ; 2FBD79/5000
    ZEROVEL                                 ; 2FBD7B/38
    SETYVEL     #$0020, WAIT #6             ; 2FBD7C/C62000
L_2FBD7F:
    SETYVEL     #$FF80, WAIT #14            ; 2FBD7F/CE80FF
L_2FBD82:
    ZEROVEL                                 ; 2FBD82/38
    WAIT        #14                         ; 2FBD83/060E
L_2FBD85:
    MOV         $05FA,#$01                  ; 2FBD85/11FA0501
    MOV         $05E0,#$0E                  ; 2FBD89/11E0050E
    ASMCALL     $E2F1, WAIT #1              ; 2FBD8D/D1F1E2 // Unknown ASM $E2F1
    _is_faraddr $2FBD9B                     ; 2FBD90/9BBD2F
L_2FBD93:
    END                                     ; 2FBD93/00

L_2FBD94:
    ZEROVEL                                 ; 2FBD94/38
    SETPOSE     #$FF                        ; 2FBD95/50FF
    ONPOSITION  $D97D                       ; 2FBD97/217DD9
L_2FBD9A:
    HALT                                    ; 2FBD9A/09

L_2FBD9B:
    SETXPOS     #$0040                      ; 2FBD9B/2A4000
    SETYPOS     #$0060                      ; 2FBD9E/2B6000
    MOV         VAR1,#$40                   ; 2FBDA1/0D0140
    JML         L_14A084                    ; 2FBDA4/0384A014

L_2FBDA8:
    LOOP        #2                          ; 2FBDA8/0102
L_2FBDAA:
        SETPOSE     #$09                        ; 2FBDAA/5009
        WAIT        #48                         ; 2FBDAC/0630
L_2FBDAE:
        DEC2POSE    WAIT #3                     ; 2FBDAE/A3
L_2FBDAF:
        INCPOSE     WAIT #4                     ; 2FBDAF/74
L_2FBDB0:
        DECPOSE     WAIT #3                     ; 2FBDB0/83
L_2FBDB1:
    ENDLOOP                                 ; 2FBDB1/02
    SETPOSE     #$09                        ; 2FBDB2/5009
    WAIT        #21                         ; 2FBDB4/0615
L_2FBDB6:
    ENDTASK                                 ; 2FBDB6/0C

L_2FBDB7:
    ZEROVEL                                 ; 2FBDB7/38
    ASMCALL_l   $219952                     ; 2FBDB8/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2FBDBC/00
    .byte       $00                         ; 2FBDBD/00
    .byte       $17                         ; 2FBDBE/17
    .byte       $00                         ; 2FBDBF/00
    A_JSR       $83C8                       ; 2FBDC0/18C883
    ASMCALL     $8E7E                       ; 2FBDC3/D07E8E
    ASMCALL_l   $219952                     ; 2FBDC6/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2FBDCA/00
    .byte       $00                         ; 2FBDCB/00
    .byte       $0C                         ; 2FBDCC/0C
    .byte       $00                         ; 2FBDCD/00
    A_JSR       $81DF                       ; 2FBDCE/18DF81
    ASMCALL     $DED0                       ; 2FBDD1/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2FBDD4/09
    .byte       $12                         ; 2FBDD5/12
    .byte       $06                         ; 2FBDD6/06
    .byte       $00                         ; 2FBDD7/00
    .byte       $00                         ; 2FBDD8/00
    .byte       $00                         ; 2FBDD9/00
    .byte       $02                         ; 2FBDDA/02
    .byte       $00                         ; 2FBDDB/00
    SETPOSE     #$FF                        ; 2FBDDC/50FF
    WAIT        #6                          ; 2FBDDE/0606
L_2FBDE0:
    MOV         $0043,#$D6                  ; 2FBDE0/114300D6
    ONTICK      $2FBDFB                     ; 2FBDE4/08FBBD2F
    SPRITEMAP   L_329C84                     ; 2FBDE8/1A849C32
    MOV         VAR3,#$00                   ; 2FBDEC/0D0300
    MOV         REG,#$34                    ; 2FBDEF/1B34
    ASMCALL     $B8DE                       ; 2FBDF1/D0DEB8
    ASMCALL     $B6B5                       ; 2FBDF4/D0B5B6
    SETXVEL     #$0133                      ; 2FBDF7/B03301
L_2FBDFA:
    HALT                                    ; 2FBDFA/09

; CODE OR DATA -- $2FBDFB .. $2FBE20
incbinRange "../split/prg/bank2f.bin", $1DFB, $2000