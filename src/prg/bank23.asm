.segment "PRG23": absolute
Script06_WarpStar:
    SETBANK     #$22                        ; 23A000/2822
    MOV         REG,VAR0                    ; 23A002/1E00
    TABLEJMP    #10                         ; 23A004/0F0A
    .word       L_23A01A                    ; 23A006/1AA0
    .word       L_23ADAB                    ; 23A008/ABAD
    .word       L_23A385                    ; 23A00A/85A3
    .word       L_23B302                    ; 23A00C/02B3
    .word       L_23B0D5                    ; 23A00E/D5B0
    .word       L_23B3BF                    ; 23A010/BFB3
    .word       L_23A52D                    ; 23A012/2DA5
    .word       L_23A9F0                    ; 23A014/F0A9
    .word       L_23A791                    ; 23A016/91A7
    .word       L_23BCB0                    ; 23A018/B0BC
L_23A01A:
    SETBANK     #$22                        ; 23A01A/2822
    ONPOSITION  $D97D                       ; 23A01C/217DD9
    SPRITEMAP   $1C9CD7                     ; 23A01F/1AD79C1C
    ASMCALL     $A20F                       ; 23A023/D00FA2
    ONTICK      $23A043                     ; 23A026/0843A023
L_23A02A:
    SETPOSE     #$10, WAIT #8               ; 23A02A/5810
L_23A02C:
    INCPOSE     WAIT #8                     ; 23A02C/78
L_23A02D:
    INCPOSE     WAIT #8                     ; 23A02D/78
L_23A02E:
    INCPOSE     WAIT #8                     ; 23A02E/78
L_23A02F:
    A_JMP       L_23A02A                    ; 23A02F/172AA0

L_23A032:
    SETPOSE     #$FF                        ; 23A032/50FF
    ZEROVEL                                 ; 23A034/38
L_23A035:
    ASMCALL     $B092, WAIT #4              ; 23A035/D492B0
L_23A038:
    JNE         L_23A035                    ; 23A038/0B35A0
    ASMCALL     $A13D                       ; 23A03B/D03DA1
    END                                     ; 23A03E/00

L_23A03F:
    ASMCALL     $A2E1                       ; 23A03F/D0E1A2
    END                                     ; 23A042/00

; CODE OR DATA -- $23A043 .. $23A385
incbinRange "../split/prg/bank23.bin", $0043, $0385

L_23A385:
    MOV         $059A,#$FF                  ; 23A385/119A05FF
    ASMCALL     $A455                       ; 23A389/D055A4 // Check if not in room `arg`
    .word       $000C                       ; 23A38C/0C00
    JNE         L_23A3A4                    ; 23A38E/0BA4A3
    WAIT        #60                         ; 23A391/063C
L_23A393:
    LOOP        #4                          ; 23A393/0104
        ASMCALL     $C996                       ; 23A395/D096C9 // Palette fade (out?) step
        WAIT        #4                          ; 23A398/0604
L_23A39A:
    ENDLOOP                                 ; 23A39A/02
    MOV         $056A,#$05                  ; 23A39B/116A0505
    ASMCALL     $DE45                       ; 23A39F/D045DE // Play music
    .byte       $FF                         ; 23A3A2/FF
    END                                     ; 23A3A3/00

L_23A3A4:
    ASMCALL     $A4C2                       ; 23A3A4/D0C2A4
    MOV         VAR6,#$00                   ; 23A3A7/0D0600
    MOV         REG,$0558                   ; 23A3AA/1C5805
    JEQ         L_23A3BA                    ; 23A3AD/0ABAA3
    ADD         REG,#-7                     ; 23A3B0/2502F9
    JNE         L_23A3C0                    ; 23A3B3/0BC0A3
    JML         L_36B647                    ; 23A3B6/0347B636

L_23A3BA:
    ADDYPOS     #16                         ; 23A3BA/2D1000
    TASK        L_23A40C                    ; 23A3BD/070CA4
L_23A3C0:
    SETBANK     #$22                        ; 23A3C0/2822
    MOV         $0043,#$CE                  ; 23A3C2/114300CE
    ASMCALL     $A4F3                       ; 23A3C6/D0F3A4
    ONPOSITION  $D97D                       ; 23A3C9/217DD9
    SPRITEMAP   $3180F8                     ; 23A3CC/1AF88031
    ONDRAW      $DA89                       ; 23A3D0/2089DA
    ONTICK      $23A46C                     ; 23A3D3/086CA423
    TASK        L_23A428                    ; 23A3D7/0728A4
    TASK        L_23A42F                    ; 23A3DA/072FA4
L_23A3DD:
    SETPOSE     #$24, WAIT #2               ; 23A3DD/5224
L_23A3DF:
    INCPOSE     WAIT #2                     ; 23A3DF/72
L_23A3E0:
    DECPOSE     WAIT #2                     ; 23A3E0/82
L_23A3E1:
    INC2POSE    WAIT #2                     ; 23A3E1/92
L_23A3E2:
    DEC2POSE    WAIT #2                     ; 23A3E2/A2
L_23A3E3:
    SETPOSE     #$27, WAIT #2               ; 23A3E3/5227
L_23A3E5:
    SETPOSE     #$24, WAIT #2               ; 23A3E5/5224
L_23A3E7:
    SETPOSE     #$28, WAIT #2               ; 23A3E7/5228
L_23A3E9:
    SETPOSE     #$24, WAIT #2               ; 23A3E9/5224
L_23A3EB:
    SETPOSE     #$29, WAIT #2               ; 23A3EB/5229
L_23A3ED:
    SETPOSE     #$24, WAIT #2               ; 23A3ED/5224
L_23A3EF:
    SETPOSE     #$2A, WAIT #2               ; 23A3EF/522A
L_23A3F1:
    SETPOSE     #$24, WAIT #2               ; 23A3F1/5224
L_23A3F3:
    SETPOSE     #$2B, WAIT #2               ; 23A3F3/522B
L_23A3F5:
    SETPOSE     #$24, WAIT #2               ; 23A3F5/5224
L_23A3F7:
    SETPOSE     #$2C, WAIT #2               ; 23A3F7/522C
L_23A3F9:
    SETPOSE     #$24, WAIT #2               ; 23A3F9/5224
L_23A3FB:
    SETPOSE     #$2D, WAIT #2               ; 23A3FB/522D
L_23A3FD:
    SETPOSE     #$24, WAIT #2               ; 23A3FD/5224
L_23A3FF:
    SETPOSE     #$2E, WAIT #2               ; 23A3FF/522E
L_23A401:
    SETPOSE     #$24, WAIT #2               ; 23A401/5224
L_23A403:
    SETPOSE     #$2F, WAIT #2               ; 23A403/522F
L_23A405:
    SETPOSE     #$24, WAIT #2               ; 23A405/5224
L_23A407:
    SETPOSE     #$30, WAIT #2               ; 23A407/5230
L_23A409:
    A_JMP       L_23A3DD                    ; 23A409/17DDA3

L_23A40C:
    MOV         VAR6,#$01                   ; 23A40C/0D0601
    ADDXPOS     #-16                        ; 23A40F/2CF0FF
    ADDYPOS     #-8                         ; 23A412/2DF8FF
    SETXVEL     #$FC00, WAIT #8             ; 23A415/B800FC
L_23A418:
    SETXVEL     #$FE00, WAIT #8             ; 23A418/B800FE
L_23A41B:
    SETXVEL     #$FF00, WAIT #8             ; 23A41B/B800FF
L_23A41E:
    SETXVEL     #$FF80, WAIT #8             ; 23A41E/B880FF
L_23A421:
    SETXVEL     #$0000                      ; 23A421/B00000
    MOV         VAR6,#$00                   ; 23A424/0D0600
    ENDTASK                                 ; 23A427/0C

L_23A428:
    WAIT        #50                         ; 23A428/0632
L_23A42A:
    ASMCALL     $DE45                       ; 23A42A/D045DE // Play music
    .byte       $05                         ; 23A42D/05
    ENDTASK                                 ; 23A42E/0C

L_23A42F:
    ZEROVEL                                 ; 23A42F/38
    SETYVEL     #$FFC0                      ; 23A430/C0C0FF
    WAIT        #16                         ; 23A433/0610
L_23A435:
    SETYVEL     #$FFA0                      ; 23A435/C0A0FF
    WAIT        #16                         ; 23A438/0610
L_23A43A:
    SETYVEL     #$FFC0                      ; 23A43A/C0C0FF
    WAIT        #16                         ; 23A43D/0610
L_23A43F:
    ZEROVEL                                 ; 23A43F/38
    SETYVEL     #$0040                      ; 23A440/C04000
    WAIT        #16                         ; 23A443/0610
L_23A445:
    SETYVEL     #$0060                      ; 23A445/C06000
    WAIT        #16                         ; 23A448/0610
L_23A44A:
    SETYVEL     #$0040                      ; 23A44A/C04000
    WAIT        #16                         ; 23A44D/0610
L_23A44F:
    ZEROVEL                                 ; 23A44F/38
    WAIT        #16                         ; 23A450/0610
L_23A452:
    A_JMP       L_23A42F                    ; 23A452/172FA4

; CODE OR DATA -- $23A455 .. $23A52D
incbinRange "../split/prg/bank23.bin", $0455, $052D

L_23A52D:
    MOV         VAR3,#$00                   ; 23A52D/0D0300
L_23A530:
    MOV         $0043,#$EC                  ; 23A530/114300EC
    SETBANK     #$22                        ; 23A534/2822
    SETZPOS     #$001C                      ; 23A536/3A1C00
    SPRITEMAP   $3783DC                     ; 23A539/1ADC8337
    MOV         $07DB,#$00                  ; 23A53D/11DB0700
    ONTICK      $23A5C7                     ; 23A541/08C7A523
    MOV         VAR2,#$00                   ; 23A545/0D0200
    SETPOSE     #$00                        ; 23A548/5000
L_23A54A:
    HALT                                    ; 23A54A/09

L_23A54B:
    MOV         $0042,#$EA                  ; 23A54B/114200EA
    SPRITEMAP   $378406                     ; 23A54F/1A068437
    ASMCALL     $A5AA                       ; 23A553/D0AAA5
    MOV         VAR2,#$01                   ; 23A556/0D0201
    MOV         VAR3,#$FF                   ; 23A559/0D03FF
    SETPOSE     #$0A, WAIT #4               ; 23A55C/540A
L_23A55E:
    ONTICK      $23A658                     ; 23A55E/0858A623
    DECPOSE                                 ; 23A562/80
L_23A563:
    HALT                                    ; 23A563/09

L_23A564:
    ASMCALL     $DF20                       ; 23A564/D020DF // Unknown ASM $DF20
    .byte       $01                         ; 23A567/01
    .byte       $00                         ; 23A568/00
    .byte       $A0                         ; 23A569/A0
    .byte       $14                         ; 23A56A/14
    MOV         $050C,#$00                  ; 23A56B/110C0500
    MOV         VAR3,#$1E                   ; 23A56F/0D031E
    A_JMP       L_23A530                    ; 23A572/1730A5

L_23A575:
    ZEROVEL                                 ; 23A575/38
    SETPOSE     #$FF                        ; 23A576/50FF
L_23A578:
    HALT                                    ; 23A578/09

L_23A579:
    ASMCALL     $8C87                       ; 23A579/D0878C // Unknown ASM $228C87
    .byte       $06                         ; 23A57C/06
    .byte       $08                         ; 23A57D/08
    .byte       $04                         ; 23A57E/04
    ASMCALL_l   $219952                     ; 23A57F/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 23A583/00
    .byte       $00                         ; 23A584/00
    .byte       $0C                         ; 23A585/0C
    .byte       $00                         ; 23A586/00
    ZEROVEL                                 ; 23A587/38
    SETPOSE     #$01, WAIT #8               ; 23A588/5801
L_23A58A:
    DECPOSE                                 ; 23A58A/80
    SETYVEL     #$FA00, WAIT #2             ; 23A58B/C200FA
L_23A58E:
    SETYVEL     #$FD00, WAIT #2             ; 23A58E/C200FD
L_23A591:
    SETYVEL     #$0300, WAIT #2             ; 23A591/C20003
L_23A594:
    INCPOSE                                 ; 23A594/70
    SETYVEL     #$0600, WAIT #2             ; 23A595/C20006
L_23A598:
    DECPOSE                                 ; 23A598/80
    SETYVEL     #$FE00, WAIT #2             ; 23A599/C200FE
L_23A59C:
    INCPOSE                                 ; 23A59C/70
    SETYVEL     #$0200, WAIT #2             ; 23A59D/C20002
L_23A5A0:
    ZEROVEL                                 ; 23A5A0/38
    LOOP        #2                          ; 23A5A1/0102
        DECPOSE     WAIT #4                     ; 23A5A3/84
L_23A5A4:
        INCPOSE     WAIT #4                     ; 23A5A4/74
L_23A5A5:
    ENDLOOP                                 ; 23A5A5/02
    DECPOSE                                 ; 23A5A6/80
    A_JMP       L_23A530                    ; 23A5A7/1730A5

; CODE OR DATA -- $23A5AA .. $23A6EF
incbinRange "../split/prg/bank23.bin", $05AA, $06EF

L_23A6EF:
    A_JSR       L_23A77C                    ; 23A6EF/187CA7
    ZEROVEL                                 ; 23A6F2/38
    SETPOSE     #$08, WAIT #6               ; 23A6F3/5608
L_23A6F5:
    SETPOSE     #$00                        ; 23A6F5/5000
    SETYVEL     #$FC00, WAIT #2             ; 23A6F7/C200FC
L_23A6FA:
    SETYVEL     #$FE00, WAIT #2             ; 23A6FA/C200FE
L_23A6FD:
    SETYVEL     #$0200, WAIT #2             ; 23A6FD/C20002
L_23A700:
    SETYVEL     #$0400, WAIT #2             ; 23A700/C20004
L_23A703:
    ZEROVEL                                 ; 23A703/38
    LOOP        #2                          ; 23A704/0102
        SETPOSE     #$08, WAIT #2               ; 23A706/5208
L_23A708:
        SETPOSE     #$00, WAIT #2               ; 23A708/5200
L_23A70A:
    ENDLOOP                                 ; 23A70A/02
    HALT                                    ; 23A70B/09

; CODE OR DATA -- $23A70C .. $23A77C
incbinRange "../split/prg/bank23.bin", $070C, $077C

L_23A77C:
    ASMCALL     $8C71                       ; 23A77C/D0718C // Unknown ASM $228C71
    .byte       $06                         ; 23A77F/06
    .byte       $08                         ; 23A780/08
    .byte       $04                         ; 23A781/04
    ASMCALL_l   $219952                     ; 23A782/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 23A786/00
    .byte       $00                         ; 23A787/00
    .byte       $0C                         ; 23A788/0C
    .byte       $00                         ; 23A789/00
    ASMCALL     $8C71                       ; 23A78A/D0718C // Unknown ASM $228C71
    .byte       $06                         ; 23A78D/06
    .byte       $08                         ; 23A78E/08
    .byte       $00                         ; 23A78F/00
    A_RTS                                   ; 23A790/19

L_23A791:
    SETZPOS     #$0080                      ; 23A791/3A8000
    MOV         REG,VAR1                    ; 23A794/1E01
    TABLEJMP    #8                          ; 23A796/0F08
    .word       L_23A81B                    ; 23A798/1BA8
    .word       L_23A81B                    ; 23A79A/1BA8
    .word       L_23A81B                    ; 23A79C/1BA8
    .word       L_23A81B                    ; 23A79E/1BA8
    .word       L_23A7A8                    ; 23A7A0/A8A7
    .word       L_23A7A8                    ; 23A7A2/A8A7
    .word       L_23A7A8                    ; 23A7A4/A8A7
    .word       L_23A7A8                    ; 23A7A6/A8A7
L_23A7A8:
    SETBANK     #$22                        ; 23A7A8/2822
    SPRITEMAP   $308AA2                     ; 23A7AA/1AA28A30
    ASMCALL     $A7BB                       ; 23A7AE/D0BBA7
    LOOP        #6                          ; 23A7B1/0106
        SETPOSE     #$00, WAIT #1               ; 23A7B3/5100
L_23A7B5:
        LOOP        #7                          ; 23A7B5/0107
            INCPOSE     WAIT #1                     ; 23A7B7/71
L_23A7B8:
        ENDLOOP                                 ; 23A7B8/02
    ENDLOOP                                 ; 23A7B9/02
    END                                     ; 23A7BA/00

; CODE OR DATA -- $23A7BB .. $23A81B
incbinRange "../split/prg/bank23.bin", $07BB, $081B

L_23A81B:
    SETBANK     #$22                        ; 23A81B/2822
    SPRITEMAP   $378406                     ; 23A81D/1A068437
    ONPOSITION  $D97D                       ; 23A821/217DD9
    ONTICK      $23A839                     ; 23A824/0839A823
    ASMCALL     $A969                       ; 23A828/D069A9
    JNE         L_23A82F                    ; 23A82B/0B2FA8
    HALT                                    ; 23A82E/09

L_23A82F:
    WAIT        #2                          ; 23A82F/0602
L_23A831:
    INCPOSE     WAIT #2                     ; 23A831/72
    INCPOSE     WAIT #2                     ; 23A832/72
    SETPOSE     #$0C                        ; 23A833/500C
    INCPOSE     WAIT #2                     ; 23A835/72
    A_JMP       L_23A831                    ; 23A836/1731A8

; CODE OR DATA -- $23A839 .. $23A9F0
incbinRange "../split/prg/bank23.bin", $0839, $09F0

L_23A9F0:
    SETBANK     #$22                        ; 23A9F0/2822
    ONPOSITION  $D9BB                       ; 23A9F2/21BBD9
    SPRITEMAP   $308B7A                     ; 23A9F5/1A7A8B30
    MOV         REG,VAR1                    ; 23A9F9/1E01
    JNE         L_23AA10                    ; 23A9FB/0B10AA
    ASMCALL     $8C87                       ; 23A9FE/D0878C // Unknown ASM $228C87
    .byte       $06                         ; 23AA01/06
    .byte       $07                         ; 23AA02/07
    .byte       $01                         ; 23AA03/01
    ASMCALL     $8C87                       ; 23AA04/D0878C // Unknown ASM $228C87
    .byte       $06                         ; 23AA07/06
    .byte       $07                         ; 23AA08/07
    .byte       $02                         ; 23AA09/02
    ASMCALL     $8C87, WAIT #1              ; 23AA0A/D1878C // Unknown ASM $228C87
    .byte       $06                         ; 23AA0D/06
    .byte       $07                         ; 23AA0E/07
    .byte       $03                         ; 23AA0F/03
L_23AA10:
    ASMCALL     $AA68                       ; 23AA10/D068AA
    SETPOSE     #$04                        ; 23AA13/5004
    ASMCALL     $AA1E, WAIT #8              ; 23AA15/D81EAA
L_23AA18:
    ASMCALL     $AA2A                       ; 23AA18/D02AAA
    WAIT        #48                         ; 23AA1B/0630
L_23AA1D:
    END                                     ; 23AA1D/00

; CODE OR DATA -- $23AA1E .. $23AA9C
incbinRange "../split/prg/bank23.bin", $0A1E, $0A9C

Script0B_CannonFuse:
    SETBANK     #$22                        ; 23AA9C/2822
    SPRITEMAP   $37856A                     ; 23AA9E/1A6A8537
    ONTICK      $23AAAF                     ; 23AAA2/08AFAA23
    SETZPOS     #$00FF                      ; 23AAA6/3AFF00
    ADDXPOS     #4                          ; 23AAA9/2C0400
    SETPOSE     #$00                        ; 23AAAC/5000
L_23AAAE:
    HALT                                    ; 23AAAE/09

; CODE OR DATA -- $23AAAF .. $23AABC
incbinRange "../split/prg/bank23.bin", $0AAF, $0ABC

L_23AABC:
    SETZPOS     #$0080                      ; 23AABC/3A8000
    ASMCALL     $AC25                       ; 23AABF/D025AC
    SETYVEL     #$0200                      ; 23AAC2/C00002
    ONTICK      $23AAD2                     ; 23AAC5/08D2AA23
L_23AAC9:
    SETPOSE     #$01, WAIT #2               ; 23AAC9/5201
L_23AACB:
    LOOP        #20                         ; 23AACB/0114
        INCPOSE     WAIT #2                     ; 23AACD/72
L_23AACE:
    ENDLOOP                                 ; 23AACE/02
    A_JMP       L_23AAC9                    ; 23AACF/17C9AA

; CODE OR DATA -- $23AAD2 .. $23ADAB
incbinRange "../split/prg/bank23.bin", $0AD2, $0DAB

L_23ADAB:
    MOV         $0043,#$C8                  ; 23ADAB/114300C8
    SETBANK     #$22                        ; 23ADAF/2822
    ONPOSITION  $D9BB                       ; 23ADB1/21BBD9
    SPRITEMAP   $1C9CD7                     ; 23ADB4/1AD79C1C
    ASMCALL     $AF28, WAIT #2              ; 23ADB8/D228AF
L_23ADBB:
    ONTICK      $23AE53                     ; 23ADBB/0853AE23
    ASMCALL     $AF4F                       ; 23ADBF/D04FAF
    JNE         L_23ADDE                    ; 23ADC2/0BDEAD
L_23ADC5:
    SETYVEL     #$FFE0                      ; 23ADC5/C0E0FF
    SETPOSE     #$10, WAIT #8               ; 23ADC8/5810
L_23ADCA:
    INCPOSE     WAIT #8                     ; 23ADCA/78
L_23ADCB:
    SETYVEL     #$FFF8                      ; 23ADCB/C0F8FF
    INCPOSE     WAIT #8                     ; 23ADCE/78
L_23ADCF:
    INCPOSE     WAIT #8                     ; 23ADCF/78
L_23ADD0:
    SETYVEL     #$0008                      ; 23ADD0/C00800
    SETPOSE     #$10, WAIT #8               ; 23ADD3/5810
L_23ADD5:
    INCPOSE     WAIT #8                     ; 23ADD5/78
L_23ADD6:
    SETYVEL     #$0020                      ; 23ADD6/C02000
    INCPOSE     WAIT #8                     ; 23ADD9/78
L_23ADDA:
    INCPOSE     WAIT #8                     ; 23ADDA/78
L_23ADDB:
    A_JMP       L_23ADC5                    ; 23ADDB/17C5AD

L_23ADDE:
    SETYVEL     #$0020                      ; 23ADDE/C02000
    SETPOSE     #$10, WAIT #8               ; 23ADE1/5810
L_23ADE3:
    INCPOSE     WAIT #8                     ; 23ADE3/78
L_23ADE4:
    SETYVEL     #$0008                      ; 23ADE4/C00800
    INCPOSE     WAIT #8                     ; 23ADE7/78
L_23ADE8:
    INCPOSE     WAIT #8                     ; 23ADE8/78
L_23ADE9:
    SETYVEL     #$FFE0                      ; 23ADE9/C0E0FF
    SETPOSE     #$10, WAIT #8               ; 23ADEC/5810
L_23ADEE:
    INCPOSE     WAIT #8                     ; 23ADEE/78
L_23ADEF:
    SETYVEL     #$FFF8                      ; 23ADEF/C0F8FF
    INCPOSE     WAIT #8                     ; 23ADF2/78
L_23ADF3:
    INCPOSE     WAIT #8                     ; 23ADF3/78
L_23ADF4:
    A_JMP       L_23ADDE                    ; 23ADF4/17DEAD

L_23ADF7:
    SETZPOS     #$007F                      ; 23ADF7/3A7F00
    SPRITEMAP   $378000                     ; 23ADFA/1A008037
    MOV         REG,$07DD                   ; 23ADFE/1CDD07
    JEQ         L_23AE0A                    ; 23AE01/0A0AAE
    ASMCALL     $8C87                       ; 23AE04/D0878C // Unknown ASM $228C87
    .byte       $06                         ; 23AE07/06
    .byte       $07                         ; 23AE08/07
    .byte       $00                         ; 23AE09/00
L_23AE0A:
    ONDRAW      $DDAA                       ; 23AE0A/20AADD
    ONPOSITION  $D97D                       ; 23AE0D/217DD9
    ASMCALL     $B038                       ; 23AE10/D038B0
    SETYVEL     #$0100, WAIT #8             ; 23AE13/C80001
L_23AE16:
    SETYVEL     #$0080, WAIT #8             ; 23AE16/C88000
L_23AE19:
    SETYVEL     #$0020, WAIT #8             ; 23AE19/C82000
L_23AE1C:
    MOV         VAR9,#$00                   ; 23AE1C/0D0900
    MOV         VAR8,#$01                   ; 23AE1F/0D0801
    MOV         VAR6,#$03                   ; 23AE22/0D0603
    MOV         VAR5,#$84                   ; 23AE25/0D0584
    MOV         VAR3,#$00                   ; 23AE28/0D0300
    ASMCALL     $AF7A                       ; 23AE2B/D07AAF
L_23AE2E:
    ASMCALL     $8C87                       ; 23AE2E/D0878C // Unknown ASM $228C87
    .byte       $0D                         ; 23AE31/0D
    .byte       $07                         ; 23AE32/07
    .byte       $00                         ; 23AE33/00
    ASMCALL     $DE4B                       ; 23AE34/D04BDE // Play sound effect
    .byte       $11                         ; 23AE37/11
    ONTICK      $23AE7E                     ; 23AE38/087EAE23
    SETYVEL     #$FFC0                      ; 23AE3C/C0C0FF
L_23AE3F:
    ASMCALL     $AFE8                       ; 23AE3F/D0E8AF
L_23AE42:
    JNE         L_23AE3F                    ; 23AE42/0B3FAE
    HALT                                    ; 23AE45/09

L_23AE46:
    ZEROVEL                                 ; 23AE46/38
    SETPOSE     #$FF                        ; 23AE47/50FF
L_23AE49:
    ASMCALL     $B092, WAIT #4              ; 23AE49/D492B0
L_23AE4C:
    JNE         L_23AE49                    ; 23AE4C/0B49AE
    ASMCALL     $AEEC                       ; 23AE4F/D0ECAE
    END                                     ; 23AE52/00

; CODE OR DATA -- $23AE53 .. $23B0D5
incbinRange "../split/prg/bank23.bin", $0E53, $10D5

L_23B0D5:
    SETBANK     #$22                        ; 23B0D5/2822
    ONPOSITION  $D97D                       ; 23B0D7/217DD9
    ZEROVEL                                 ; 23B0DA/38
    ASMCALL     $C086                       ; 23B0DB/D086C0 // Write 0xFF to $37 and wait a frame
    ASMCALL     $B04F                       ; 23B0DE/D04FB0
    TABLEJMP    #5                          ; 23B0E1/0F05
    .word       L_23B0ED                    ; 23B0E3/EDB0
    .word       L_23BD35                    ; 23B0E5/35BD
    .word       L_23BD35                    ; 23B0E7/35BD
    .word       L_23BDEA                    ; 23B0E9/EABD
    .word       L_23BE05                    ; 23B0EB/05BE
L_23B0ED:
    ASMCALL     $E2D9                       ; 23B0ED/D0D9E2 // Unknown ASM $E2D9 (Set $05A0 and $05A1)
    .byte       $04                         ; 23B0F0/04
L_23B0F1:
    ASMCALL     $B0BC, WAIT #4              ; 23B0F1/D4BCB0
L_23B0F4:
    JNE         L_23B0F1                    ; 23B0F4/0BF1B0
    ASMCALL     $A33C                       ; 23B0F7/D03CA3
L_23B0FA:
    ASMCALL     $E2D9                       ; 23B0FA/D0D9E2 // Unknown ASM $E2D9 (Set $05A0 and $05A1)
    .byte       $04                         ; 23B0FD/04
    MOV         VAR2,#$00                   ; 23B0FE/0D0200
    ZEROCAMERAVEL                           ; 23B101/39
    ONTICK      $23A0D1                     ; 23B102/08D1A023
    ASMCALL     $B2EE, WAIT #1              ; 23B106/D1EEB2
L_23B109:
    SETPOSE     #$FF                        ; 23B109/50FF
    MOV         REG,VAR3                    ; 23B10B/1E03
    TABLEJMP    #22                         ; 23B10D/0F16
    .word       L_23B175                    ; 23B10F/75B1
    .word       L_23B13B                    ; 23B111/3BB1
    .word       L_23B175                    ; 23B113/75B1
    .word       L_23B175                    ; 23B115/75B1
    .word       L_23B198                    ; 23B117/98B1
    .word       L_23B2ED                    ; 23B119/EDB2
    .word       L_23B175                    ; 23B11B/75B1
    .word       L_23B1D0                    ; 23B11D/D0B1
    .word       L_23B175                    ; 23B11F/75B1
    .word       L_23B1FD                    ; 23B121/FDB1
    .word       L_23B175                    ; 23B123/75B1
    .word       L_23B216                    ; 23B125/16B2
    .word       L_23B175                    ; 23B127/75B1
    .word       L_23B287                    ; 23B129/87B2
    .word       L_23B175                    ; 23B12B/75B1
    .word       L_23B2ED                    ; 23B12D/EDB2
    .word       L_23B2E9                    ; 23B12F/E9B2
    .word       L_23B1C0                    ; 23B131/C0B1
    .word       L_23B2E9                    ; 23B133/E9B2
    .word       L_23B163                    ; 23B135/63B1
    .word       L_23B23E                    ; 23B137/3EB2
    .word       L_23B2E9                    ; 23B139/E9B2
L_23B13B:
    ZEROCAMERAVEL                           ; 23B13B/39
    WAIT        #24                         ; 23B13C/0618
L_23B13E:
    SETXCAMERAVEL#$0100                     ; 23B13E/320001
    WAIT        #2                          ; 23B141/0602
L_23B143:
    SETXCAMERAVEL#$0200                     ; 23B143/320002
    WAIT        #2                          ; 23B146/0602
L_23B148:
    SETXCAMERAVEL#$0400                     ; 23B148/320004
    WAIT        #2                          ; 23B14B/0602
L_23B14D:
    SETXCAMERAVEL#$0600                     ; 23B14D/320006
    WAIT        #38                         ; 23B150/0626
L_23B152:
    SETXCAMERAVEL#$0400                     ; 23B152/320004
    WAIT        #2                          ; 23B155/0602
L_23B157:
    SETXCAMERAVEL#$0200                     ; 23B157/320002
    WAIT        #2                          ; 23B15A/0602
L_23B15C:
    SETXCAMERAVEL#$0100                     ; 23B15C/320001
    WAIT        #2                          ; 23B15F/0602
L_23B161:
    ZEROCAMERAVEL                           ; 23B161/39
    HALT                                    ; 23B162/09

L_23B163:
    ZEROCAMERAVEL                           ; 23B163/39
    SETYCAMERAVEL#$FC00                     ; 23B164/3300FC
    WAIT        #84                         ; 23B167/0654
L_23B169:
    SETYCAMERAVEL#$FE00                     ; 23B169/3300FE
    WAIT        #16                         ; 23B16C/0610
L_23B16E:
    SETYCAMERAVEL#$FF00                     ; 23B16E/3300FF
    WAIT        #16                         ; 23B171/0610
L_23B173:
    ZEROCAMERAVEL                           ; 23B173/39
    HALT                                    ; 23B174/09

L_23B175:
    ZEROCAMERAVEL                           ; 23B175/39
    WAIT        #102                        ; 23B176/0666
L_23B178:
    SETYCAMERAVEL#$FF00                     ; 23B178/3300FF
    WAIT        #8                          ; 23B17B/0608
L_23B17D:
    SETYCAMERAVEL#$FE00                     ; 23B17D/3300FE
    WAIT        #9                          ; 23B180/0609
L_23B182:
    SETYCAMERAVEL#$FC00                     ; 23B182/3300FC
    WAIT        #10                         ; 23B185/060A
L_23B187:
    SETYCAMERAVEL#$FA00                     ; 23B187/3300FA
    WAIT        #42                         ; 23B18A/062A
L_23B18C:
    SETYCAMERAVEL#$FC00                     ; 23B18C/3300FC
    WAIT        #10                         ; 23B18F/060A
L_23B191:
    SETYCAMERAVEL#$FE00                     ; 23B191/3300FE
    WAIT        #9                          ; 23B194/0609
L_23B196:
    ZEROCAMERAVEL                           ; 23B196/39
    HALT                                    ; 23B197/09

L_23B198:
    ZEROCAMERAVEL                           ; 23B198/39
    WAIT        #146                        ; 23B199/0692
    SETXCAMERAVEL#$0100                     ; 23B19B/320001
    WAIT        #8                          ; 23B19E/0608
    SETXCAMERAVEL#$0200                     ; 23B1A0/320002
    WAIT        #8                          ; 23B1A3/0608
    SETXCAMERAVEL#$0400                     ; 23B1A5/320004
    WAIT        #10                         ; 23B1A8/060A
    SETXCAMERAVEL#$0600                     ; 23B1AA/320006
    WAIT        #64                         ; 23B1AD/0640
    SETXCAMERAVEL#$0400                     ; 23B1AF/320004
    WAIT        #10                         ; 23B1B2/060A
    SETXCAMERAVEL#$0200                     ; 23B1B4/320002
    WAIT        #8                          ; 23B1B7/0608
    SETXCAMERAVEL#$0100                     ; 23B1B9/320001
    WAIT        #8                          ; 23B1BC/0608
    ZEROCAMERAVEL                           ; 23B1BE/39
    HALT                                    ; 23B1BF/09

L_23B1C0:
    ZEROCAMERAVEL                           ; 23B1C0/39
    LOOP        #128                        ; 23B1C1/0180
        SETYCAMERAVEL#$FA00                     ; 23B1C3/3300FA
        WAIT        #1                          ; 23B1C6/0601
L_23B1C8:
        SETYCAMERAVEL#$FA00                     ; 23B1C8/3300FA
        WAIT        #1                          ; 23B1CB/0601
L_23B1CD:
    ENDLOOP                                 ; 23B1CD/02
    ZEROCAMERAVEL                           ; 23B1CE/39
    HALT                                    ; 23B1CF/09

L_23B1D0:
    ZEROCAMERAVEL                           ; 23B1D0/39
    WAIT        #40                         ; 23B1D1/0628
L_23B1D3:
    SETXCAMERAVEL#$0080                     ; 23B1D3/328000
    WAIT        #64                         ; 23B1D6/0640
L_23B1D8:
    SETXCAMERAVEL#$0100                     ; 23B1D8/320001
    WAIT        #64                         ; 23B1DB/0640
L_23B1DD:
    SETXCAMERAVEL#$0200                     ; 23B1DD/320002
    WAIT        #16                         ; 23B1E0/0610
L_23B1E2:
    SETXCAMERAVEL#$0400                     ; 23B1E2/320004
    WAIT        #10                         ; 23B1E5/060A
L_23B1E7:
    SETXCAMERAVEL#$0600                     ; 23B1E7/320006
    WAIT        #48                         ; 23B1EA/0630
L_23B1EC:
    SETXCAMERAVEL#$0400                     ; 23B1EC/320004
    WAIT        #8                          ; 23B1EF/0608
L_23B1F1:
    SETXCAMERAVEL#$0200                     ; 23B1F1/320002
    WAIT        #8                          ; 23B1F4/0608
L_23B1F6:
    SETXCAMERAVEL#$0100                     ; 23B1F6/320001
    WAIT        #8                          ; 23B1F9/0608
    ZEROCAMERAVEL                           ; 23B1FB/39
    HALT                                    ; 23B1FC/09

L_23B1FD:
    ZEROCAMERAVEL                           ; 23B1FD/39
    WAIT        #32                         ; 23B1FE/0620
L_23B200:
    SETXCAMERAVEL#$0400                     ; 23B200/320004
    WAIT        #12                         ; 23B203/060C
L_23B205:
    SETXCAMERAVEL#$0100                     ; 23B205/320001
    WAIT        #16                         ; 23B208/0610
L_23B20A:
    SETXCAMERAVEL#$0200                     ; 23B20A/320002
    WAIT        #16                         ; 23B20D/0610
L_23B20F:
    SETXCAMERAVEL#$0400                     ; 23B20F/320004
    WAIT        #40                         ; 23B212/0628
L_23B214:
    ZEROCAMERAVEL                           ; 23B214/39
L_23B215:
    HALT                                    ; 23B215/09

L_23B216:
    ZEROCAMERAVEL                           ; 23B216/39
    WAIT        #32                         ; 23B217/0620
L_23B219:
    SETXCAMERAVEL#$0100                     ; 23B219/320001
    WAIT        #8                          ; 23B21C/0608
L_23B21E:
    SETXCAMERAVEL#$0200                     ; 23B21E/320002
    WAIT        #8                          ; 23B221/0608
L_23B223:
    SETXCAMERAVEL#$0300                     ; 23B223/320003
    WAIT        #8                          ; 23B226/0608
L_23B228:
    SETXCAMERAVEL#$0400                     ; 23B228/320004
    WAIT        #40                         ; 23B22B/0628
L_23B22D:
    SETXCAMERAVEL#$0300                     ; 23B22D/320003
    WAIT        #8                          ; 23B230/0608
L_23B232:
    SETXCAMERAVEL#$0200                     ; 23B232/320002
    WAIT        #8                          ; 23B235/0608
L_23B237:
    SETXCAMERAVEL#$0100                     ; 23B237/320001
    WAIT        #8                          ; 23B23A/0608
L_23B23C:
    ZEROCAMERAVEL                           ; 23B23C/39
    HALT                                    ; 23B23D/09

L_23B23E:
    ZEROCAMERAVEL                           ; 23B23E/39
    SETYCAMERAVEL#$FF00                     ; 23B23F/3300FF
    WAIT        #8                          ; 23B242/0608
L_23B244:
    SETYCAMERAVEL#$FE00                     ; 23B244/3300FE
    WAIT        #9                          ; 23B247/0609
L_23B249:
    SETYCAMERAVEL#$FC00                     ; 23B249/3300FC
    WAIT        #10                         ; 23B24C/060A
L_23B24E:
    SETYCAMERAVEL#$FA00                     ; 23B24E/3300FA
    WAIT        #42                         ; 23B251/062A
L_23B253:
    SETYCAMERAVEL#$FC00                     ; 23B253/3300FC
    WAIT        #10                         ; 23B256/060A
L_23B258:
    SETYCAMERAVEL#$FE00                     ; 23B258/3300FE
    WAIT        #9                          ; 23B25B/0609
L_23B25D:
    SETYCAMERAVEL#$FF00                     ; 23B25D/3300FF
    WAIT        #8                          ; 23B260/0608
L_23B262:
    SETYCAMERAVEL#$0100                     ; 23B262/330001
    WAIT        #9                          ; 23B265/0609
L_23B267:
    SETYCAMERAVEL#$0200                     ; 23B267/330002
    WAIT        #8                          ; 23B26A/0608
L_23B26C:
    SETYCAMERAVEL#$0400                     ; 23B26C/330004
    WAIT        #8                          ; 23B26F/0608
L_23B271:
    SETYCAMERAVEL#$0600                     ; 23B271/330006
    WAIT        #13                         ; 23B274/060D
L_23B276:
    SETYCAMERAVEL#$0400                     ; 23B276/330004
    WAIT        #8                          ; 23B279/0608
L_23B27B:
    SETYCAMERAVEL#$0200                     ; 23B27B/330002
    WAIT        #8                          ; 23B27E/0608
L_23B280:
    SETYCAMERAVEL#$0100                     ; 23B280/330001
    WAIT        #9                          ; 23B283/0609
L_23B285:
    ZEROCAMERAVEL                           ; 23B285/39
    HALT                                    ; 23B286/09

L_23B287:
    ZEROCAMERAVEL                           ; 23B287/39
    WAIT        #80                         ; 23B288/0650
L_23B28A:
    SETYCAMERAVEL#$0080                     ; 23B28A/338000
    WAIT        #4                          ; 23B28D/0604
L_23B28F:
    SETYCAMERAVEL#$0100                     ; 23B28F/330001
    WAIT        #4                          ; 23B292/0604
L_23B294:
    SETYCAMERAVEL#$0200                     ; 23B294/330002
    WAIT        #6                          ; 23B297/0606
L_23B299:
    SETYCAMERAVEL#$0400                     ; 23B299/330004
    WAIT        #6                          ; 23B29C/0606
L_23B29E:
    SETYCAMERAVEL#$0600                     ; 23B29E/330006
    WAIT        #18                         ; 23B2A1/0612
L_23B2A3:
    SETYCAMERAVEL#$0400                     ; 23B2A3/330004
    WAIT        #6                          ; 23B2A6/0606
L_23B2A8:
    SETYCAMERAVEL#$0200                     ; 23B2A8/330002
    WAIT        #6                          ; 23B2AB/0606
L_23B2AD:
    SETYCAMERAVEL#$0100                     ; 23B2AD/330001
    WAIT        #4                          ; 23B2B0/0604
L_23B2B2:
    SETYCAMERAVEL#$0080                     ; 23B2B2/338000
    WAIT        #4                          ; 23B2B5/0604
L_23B2B7:
    ZEROCAMERAVEL                           ; 23B2B7/39
    WAIT        #4                          ; 23B2B8/0604
L_23B2BA:
    SETYCAMERAVEL#$FF80                     ; 23B2BA/3380FF
    WAIT        #6                          ; 23B2BD/0606
L_23B2BF:
    SETYCAMERAVEL#$FF00                     ; 23B2BF/3300FF
    WAIT        #6                          ; 23B2C2/0606
L_23B2C4:
    SETYCAMERAVEL#$FE00                     ; 23B2C4/3300FE
    WAIT        #6                          ; 23B2C7/0606
L_23B2C9:
    SETYCAMERAVEL#$FC00                     ; 23B2C9/3300FC
    WAIT        #6                          ; 23B2CC/0606
L_23B2CE:
    SETYCAMERAVEL#$FA00                     ; 23B2CE/3300FA
    WAIT        #81                         ; 23B2D1/0651
L_23B2D3:
    SETYCAMERAVEL#$FC00                     ; 23B2D3/3300FC
    WAIT        #6                          ; 23B2D6/0606
L_23B2D8:
    SETYCAMERAVEL#$FE00                     ; 23B2D8/3300FE
    WAIT        #6                          ; 23B2DB/0606
L_23B2DD:
    SETYCAMERAVEL#$FF00                     ; 23B2DD/3300FF
    WAIT        #6                          ; 23B2E0/0606
L_23B2E2:
    SETYCAMERAVEL#$FF80                     ; 23B2E2/3380FF
    WAIT        #6                          ; 23B2E5/0606
L_23B2E7:
    ZEROCAMERAVEL                           ; 23B2E7/39
    HALT                                    ; 23B2E8/09

L_23B2E9:
    ONTICK      $23A0E3                     ; 23B2E9/08E3A023
L_23B2ED:
    HALT                                    ; 23B2ED/09

; CODE OR DATA -- $23B2EE .. $23B302
incbinRange "../split/prg/bank23.bin", $12EE, $1302

L_23B302:
    ONDRAW      $DDAA                       ; 23B302/20AADD
    SETZPOS     #$007F                      ; 23B305/3A7F00
    SPRITEMAP   $378000                     ; 23B308/1A008037
    MOV         VAR9,#$00                   ; 23B30C/0D0900
    MOV         VAR8,#$00                   ; 23B30F/0D0800
    MOV         VAR6,#$03                   ; 23B312/0D0603
    MOV         VAR5,#$00                   ; 23B315/0D0500
    MOV         VAR3,#$00                   ; 23B318/0D0300
    ONTICK      $23B354                     ; 23B31B/0854B323
    WAIT        #1                          ; 23B31F/0601
L_23B321:
    MOV         REG,VAR1                    ; 23B321/1E01
    TABLEJMP    #22                         ; 23B323/0F16
    .word       L_23B518                    ; 23B325/18B5
    .word       L_23B41E                    ; 23B327/1EB4
    .word       L_23B518                    ; 23B329/18B5
    .word       L_23B518                    ; 23B32B/18B5
    .word       L_23B5D0                    ; 23B32D/D0B5
    .word       L_23B68A                    ; 23B32F/8AB6
    .word       L_23B518                    ; 23B331/18B5
    .word       L_23B872                    ; 23B333/72B8
    .word       L_23B518                    ; 23B335/18B5
    .word       L_23B9FA                    ; 23B337/FAB9
    .word       L_23B518                    ; 23B339/18B5
    .word       L_23BACC                    ; 23B33B/CCBA
    .word       L_23B518                    ; 23B33D/18B5
    .word       L_23BBD3                    ; 23B33F/D3BB
    .word       L_23B518                    ; 23B341/18B5
    .word       L_23BC74                    ; 23B343/74BC
    .word       L_23BCC3                    ; 23B345/C3BC
    .word       L_23B6FD                    ; 23B347/FDB6
    .word       L_23B78F                    ; 23B349/8FB7
    .word       L_23B477                    ; 23B34B/77B4
    .word       L_23BB72                    ; 23B34D/72BB
    .word       L_23B9A0                    ; 23B34F/A0B9
    ONDRAW      $D920                       ; 23B351/2020D9
    DEC2POSE    WAIT #6                     ; 23B354/A6
    ADDPOSE     #-67, WAIT #14              ; 23B355/6EBD
    END                                     ; 23B357/00

; CODE OR DATA -- $23B358 .. $23B3BF
incbinRange "../split/prg/bank23.bin", $1358, $13BF

L_23B3BF:
    ONPOSITION  $D9BB                       ; 23B3BF/21BBD9
    SETZPOS     #$007E                      ; 23B3C2/3A7E00
    ONDRAW      $DA89                       ; 23B3C5/2089DA
    ASMCALL     $B3E0                       ; 23B3C8/D0E0B3
    JNE         L_23B3D5                    ; 23B3CB/0BD5B3
    SPRITEMAP   $1C94CE                     ; 23B3CE/1ACE941C
    SETPOSE     #$0A                        ; 23B3D2/500A
    HALT                                    ; 23B3D4/09

L_23B3D5:
    SPRITEMAP   $339DAF                     ; 23B3D5/1AAF9D33
L_23B3D9:
    SETPOSE     #$01, WAIT #3               ; 23B3D9/5301
L_23B3DB:
    INCPOSE     WAIT #3                     ; 23B3DB/73
L_23B3DC:
    INCPOSE     WAIT #3                     ; 23B3DC/73
L_23B3DD:
    A_JMP       L_23B3D9                    ; 23B3DD/17D9B3

; CODE OR DATA -- $23B3E0 .. $23B3FE
incbinRange "../split/prg/bank23.bin", $13E0, $13FE

L_23B3FE:
    ASMCALL     $8C87                       ; 23B3FE/D0878C // Unknown ASM $228C87
    .byte       $0D                         ; 23B401/0D
    .byte       $07                         ; 23B402/07
    .byte       $00                         ; 23B403/00
    ASMCALL     $859F                       ; 23B404/D09F85 // Unknown ASM $22859F
    .word       $000C                       ; 23B407/0C00
    A_RTS                                   ; 23B409/19

L_23B40A:
    ASMCALL     $859F                       ; 23B40A/D09F85 // Unknown ASM $22859F
    .word       $0000                       ; 23B40D/0000
    A_RTS                                   ; 23B40F/19

L_23B410:
    ASMCALL     $8C87                       ; 23B410/D0878C // Unknown ASM $228C87
    .byte       $06                         ; 23B413/06
    .byte       $07                         ; 23B414/07
    .byte       $00                         ; 23B415/00
    A_RTS                                   ; 23B416/19

L_23B417:
    ASMCALL     $8C87                       ; 23B417/D0878C // Unknown ASM $228C87
    .byte       $06                         ; 23B41A/06
    .byte       $09                         ; 23B41B/09
    .byte       $00                         ; 23B41C/00
    A_RTS                                   ; 23B41D/19

L_23B41E:
    SETPOSE     #$42                        ; 23B41E/5042
    SETXVEL     #$0000                      ; 23B420/B00000
    SETYVEL     #$0080, WAIT #8             ; 23B423/C88000
L_23B426:
    SETYVEL     #$0100, WAIT #8             ; 23B426/C80001
L_23B429:
    SETYVEL     #$0080, WAIT #8             ; 23B429/C88000
L_23B42C:
    ONMOVE      $D86A                       ; 23B42C/236AD8
    ASMCALL     $B396                       ; 23B42F/D096B3
    ONTICK      $23B351                     ; 23B432/0851B323
    SETXVEL     #$FF80                      ; 23B436/B080FF
    MOV         VAR8,#$01                   ; 23B439/0D0801
    MOV         VAR6,#$06                   ; 23B43C/0D0606
    MOV         VAR5,#$83                   ; 23B43F/0D0583
    SETYVEL     #$F800, WAIT #6             ; 23B442/C600F8
L_23B445:
    MOV         VAR5,#$93                   ; 23B445/0D0593
    SETYVEL     #$FC00, WAIT #6             ; 23B448/C600FC
L_23B44B:
    MOV         VAR5,#$A3                   ; 23B44B/0D05A3
    SETYVEL     #$FF00, WAIT #6             ; 23B44E/C600FF
L_23B451:
    MOV         VAR5,#$B3                   ; 23B451/0D05B3
    SETYVEL     #$FF80, WAIT #6             ; 23B454/C680FF
L_23B457:
    MOV         VAR5,#$00                   ; 23B457/0D0500
    SETYVEL     #$0100, WAIT #6             ; 23B45A/C60001
L_23B45D:
    SETYVEL     #$0200, WAIT #6             ; 23B45D/C60002
L_23B460:
    SETYVEL     #$0400, WAIT #6             ; 23B460/C60004
L_23B463:
    MOV         VAR5,#$84                   ; 23B463/0D0584
    ASMCALL     $DE4B                       ; 23B466/D04BDE // Play sound effect
    .byte       $3D                         ; 23B469/3D
    SETXVEL     #$FE00                      ; 23B46A/B000FE
    SETYVEL     #$F800, WAIT #13            ; 23B46D/CD00F8
L_23B470:
    ASMCALL     $8F32                       ; 23B470/D0328F
    ENDLOOP                                 ; 23B473/02
    ENDLOOP                                 ; 23B474/02
    LOOP        #0                          ; 23B475/0100
L_23B477:
        ONMOVE      $D86A                       ; 23B477/236AD8
        ASMCALL     $B396                       ; 23B47A/D096B3
        ONTICK      $23B351                     ; 23B47D/0851B323
        SETPOSE     #$42                        ; 23B481/5042
        MOV         VAR8,#$01                   ; 23B483/0D0801
        MOV         VAR5,#$83                   ; 23B486/0D0583
        SETXVEL     #$FC00                      ; 23B489/B000FC
        SETYVEL     #$F800, WAIT #4             ; 23B48C/C400F8
L_23B48F:
        MOV         VAR5,#$63                   ; 23B48F/0D0563
        SETYVEL     #$FA00, WAIT #4             ; 23B492/C400FA
L_23B495:
        SETYVEL     #$FC00, WAIT #3             ; 23B495/C300FC
L_23B498:
        SETYVEL     #$FE00, WAIT #3             ; 23B498/C300FE
L_23B49B:
        SETYVEL     #$0200, WAIT #3             ; 23B49B/C30002
L_23B49E:
        MOV         VAR5,#$00                   ; 23B49E/0D0500
        SETYVEL     #$0400, WAIT #4             ; 23B4A1/C40004
L_23B4A4:
        SETYVEL     #$0600, WAIT #4             ; 23B4A4/C40006
L_23B4A7:
        SETXVEL     #$0000, WAIT #2             ; 23B4A7/B20000
L_23B4AA:
        MOV         VAR5,#$B3                   ; 23B4AA/0D05B3
        ASMCALL     $DE4B                       ; 23B4AD/D04BDE // Play sound effect
        .byte       $3D                         ; 23B4B0/3D
        SETXVEL     #$0100                      ; 23B4B1/B00001
        SETYVEL     #$F800, WAIT #4             ; 23B4B4/C400F8
L_23B4B7:
        SETXVEL     #$0200, WAIT #3             ; 23B4B7/B30002
L_23B4BA:
        SETXVEL     #$0400                      ; 23B4BA/B00004
        SETYVEL     #$FA00, WAIT #4             ; 23B4BD/C400FA
L_23B4C0:
        SETYVEL     #$FC00, WAIT #4             ; 23B4C0/C400FC
L_23B4C3:
        SETYVEL     #$FE00, WAIT #4             ; 23B4C3/C400FE
L_23B4C6:
        SETYVEL     #$0200, WAIT #4             ; 23B4C6/C40002
L_23B4C9:
        MOV         VAR5,#$00                   ; 23B4C9/0D0500
        SETYVEL     #$0400, WAIT #4             ; 23B4CC/C40004
L_23B4CF:
        SETYVEL     #$0600, WAIT #8             ; 23B4CF/C80006
L_23B4D2:
        ASMCALL     $DE4B                       ; 23B4D2/D04BDE // Play sound effect
        .byte       $3D                         ; 23B4D5/3D
        SETXVEL     #$0000                      ; 23B4D6/B00000
        SETYVEL     #$FA00, WAIT #2             ; 23B4D9/C200FA
L_23B4DC:
        MOV         VAR5,#$53                   ; 23B4DC/0D0553
        SETXVEL     #$FA00, WAIT #3             ; 23B4DF/B300FA
L_23B4E2:
        SETYVEL     #$FC00, WAIT #3             ; 23B4E2/C300FC
L_23B4E5:
        SETYVEL     #$FE00, WAIT #3             ; 23B4E5/C300FE
L_23B4E8:
        SETYVEL     #$0400, WAIT #3             ; 23B4E8/C30004
L_23B4EB:
        MOV         VAR5,#$00                   ; 23B4EB/0D0500
        SETYVEL     #$0600, WAIT #3             ; 23B4EE/C30006
L_23B4F1:
        SETYVEL     #$0800, WAIT #3             ; 23B4F1/C30008
L_23B4F4:
        ASMCALL     $DE4B                       ; 23B4F4/D04BDE // Play sound effect
        .byte       $3D                         ; 23B4F7/3D
        ZEROVEL                                 ; 23B4F8/38
        SETYVEL     #$FA00, WAIT #2             ; 23B4F9/C200FA
L_23B4FC:
        MOV         VAR5,#$B3                   ; 23B4FC/0D05B3
        SETXVEL     #$0400                      ; 23B4FF/B00004
        SETYVEL     #$FE00, WAIT #14            ; 23B502/CE00FE
L_23B505:
        SETYVEL     #$FF00, WAIT #10            ; 23B505/CA00FF
L_23B508:
        MOV         VAR5,#$A3                   ; 23B508/0D05A3
        SETYVEL     #$FF80, WAIT #8             ; 23B50B/C880FF
L_23B50E:
        SETYVEL     #$0080, WAIT #8             ; 23B50E/C88000
L_23B511:
        ASMCALL     $8F32                       ; 23B511/D0328F
    ENDLOOP                                 ; 23B514/02
    ENDLOOP                                 ; 23B515/02
    LOOP        #0                          ; 23B516/0100
L_23B518:
        SETPOSE     #$42                        ; 23B518/5042
        SETXVEL     #$0600                      ; 23B51A/B00006
        SETYVEL     #$FD00, WAIT #6             ; 23B51D/C600FD
L_23B520:
        MOV         VAR8,#$01                   ; 23B520/0D0801
        SETXVEL     #$0200                      ; 23B523/B00002
        SETYVEL     #$FE00, WAIT #6             ; 23B526/C600FE
L_23B529:
        SETXVEL     #$0100                      ; 23B529/B00001
        SETYVEL     #$FF00, WAIT #6             ; 23B52C/C600FF
L_23B52F:
        SETXVEL     #$FF00                      ; 23B52F/B000FF
        SETYVEL     #$FF80, WAIT #6             ; 23B532/C680FF
L_23B535:
        SETXVEL     #$FE00, WAIT #6             ; 23B535/B600FE
L_23B538:
        SETXVEL     #$FC00                      ; 23B538/B000FC
        SETYVEL     #$0020, WAIT #6             ; 23B53B/C62000
L_23B53E:
        SETXVEL     #$FA00                      ; 23B53E/B000FA
        SETYVEL     #$0080, WAIT #6             ; 23B541/C68000
L_23B544:
        SETXVEL     #$FC00                      ; 23B544/B000FC
        SETYVEL     #$0100, WAIT #6             ; 23B547/C60001
L_23B54A:
        SETXVEL     #$FE00                      ; 23B54A/B000FE
        SETYVEL     #$0200, WAIT #6             ; 23B54D/C60002
L_23B550:
        SETXVEL     #$FF00                      ; 23B550/B000FF
        SETYVEL     #$0300, WAIT #6             ; 23B553/C60003
L_23B556:
        SETXVEL     #$0080                      ; 23B556/B08000
        SETYVEL     #$0200, WAIT #6             ; 23B559/C60002
L_23B55C:
        SETXVEL     #$0100                      ; 23B55C/B00001
        SETYVEL     #$0100, WAIT #6             ; 23B55F/C60001
L_23B562:
        ONMOVE      $D86A                       ; 23B562/236AD8
        ASMCALL     $B396                       ; 23B565/D096B3
        ONTICK      $23B351                     ; 23B568/0851B323
        SETXVEL     #$0200                      ; 23B56C/B00002
        SETYVEL     #$0080, WAIT #6             ; 23B56F/C68000
L_23B572:
        SETXVEL     #$0400, WAIT #6             ; 23B572/B60004
L_23B575:
        SETXVEL     #$0200, WAIT #6             ; 23B575/B60002
L_23B578:
        SETXVEL     #$0100, WAIT #12            ; 23B578/BC0001
L_23B57B:
        MOV         VAR5,#$82                   ; 23B57B/0D0582
        A_JSR       L_23B3FE                    ; 23B57E/18FEB3
        TASK        L_23B682                    ; 23B581/0782B6
        SETYVEL     #$0100, WAIT #8             ; 23B584/C80001
L_23B587:
        SETXVEL     #$0080, WAIT #8             ; 23B587/B88000
L_23B58A:
        SETXVEL     #$0020, WAIT #8             ; 23B58A/B82000
L_23B58D:
        SETXVEL     #$FFE0, WAIT #8             ; 23B58D/B8E0FF
L_23B590:
        SETXVEL     #$FF80, WAIT #8             ; 23B590/B880FF
L_23B593:
        SETXVEL     #$FF00, WAIT #8             ; 23B593/B800FF
L_23B596:
        SETXVEL     #$FF80                      ; 23B596/B080FF
        SETYVEL     #$0080, WAIT #8             ; 23B599/C88000
L_23B59C:
        ZEROVEL                                 ; 23B59C/38
        SETYVEL     #$FE00, WAIT #10            ; 23B59D/CA00FE
L_23B5A0:
        SETYVEL     #$FC00, WAIT #10            ; 23B5A0/CA00FC
L_23B5A3:
        SETYVEL     #$FA00                      ; 23B5A3/C000FA
        WAIT        #16                         ; 23B5A6/0610
L_23B5A8:
        ASMCALL     $DE4B                       ; 23B5A8/D04BDE // Play sound effect
        .byte       $14                         ; 23B5AB/14
        SETPOSE     #$FF                        ; 23B5AC/50FF
        ZEROVEL                                 ; 23B5AE/38
        SETXVEL     #$00C0                      ; 23B5AF/B0C000
        MOV         VAR5,#$00                   ; 23B5B2/0D0500
        WAIT        #48                         ; 23B5B5/0630
L_23B5B7:
        ONDRAW      $DA89                       ; 23B5B7/2089DA
        SPRITEMAP   $1C94CE                     ; 23B5BA/1ACE941C
        SETZPOS     #$00FF                      ; 23B5BE/3AFF00
        SETPOSE     #$0A                        ; 23B5C1/500A
        ZEROVEL                                 ; 23B5C3/38
        SETYVEL     #$0080                      ; 23B5C4/C08000
        WAIT        #200                        ; 23B5C7/06C8
L_23B5C9:
        ASMCALL     $8F32                       ; 23B5C9/D0328F
    ENDLOOP                                 ; 23B5CC/02
    ENDLOOP                                 ; 23B5CD/02
    LOOP        #0                          ; 23B5CE/0100
L_23B5D0:
        SETPOSE     #$42                        ; 23B5D0/5042
        ZEROVEL                                 ; 23B5D2/38
        SETYVEL     #$0100, WAIT #8             ; 23B5D3/C80001
        SETYVEL     #$0080, WAIT #8             ; 23B5D6/C88000
        SETYVEL     #$0020, WAIT #4             ; 23B5D9/C42000
        SETYVEL     #$FF80, WAIT #4             ; 23B5DC/C480FF
        SETYVEL     #$FF00, WAIT #6             ; 23B5DF/C600FF
        SETYVEL     #$FE00, WAIT #6             ; 23B5E2/C600FE
        SETYVEL     #$FC00, WAIT #6             ; 23B5E5/C600FC
        SETXVEL     #$0100, WAIT #4             ; 23B5E8/B40001
        SETXVEL     #$0200, WAIT #4             ; 23B5EB/B40002
        SETXVEL     #$0400, WAIT #4             ; 23B5EE/B40004
        SETYVEL     #$FE00, WAIT #4             ; 23B5F1/C400FE
        SETYVEL     #$FF00, WAIT #4             ; 23B5F4/C400FF
        SETXVEL     #$0200                      ; 23B5F7/B00002
        SETYVEL     #$0100, WAIT #4             ; 23B5FA/C40001
        SETXVEL     #$0100, WAIT #4             ; 23B5FD/B40001
        SETXVEL     #$0080                      ; 23B600/B08000
        SETYVEL     #$0140, WAIT #4             ; 23B603/C44001
        SETXVEL     #$0020                      ; 23B606/B02000
        SETYVEL     #$0200, WAIT #4             ; 23B609/C40002
        SETXVEL     #$FFE0                      ; 23B60C/B0E0FF
        SETYVEL     #$0300, WAIT #4             ; 23B60F/C40003
        SETXVEL     #$FF00, WAIT #4             ; 23B612/B400FF
        SETXVEL     #$FE00, WAIT #4             ; 23B615/B400FE
        SETXVEL     #$FC00                      ; 23B618/B000FC
        SETYVEL     #$0200, WAIT #4             ; 23B61B/C40002
        SETYVEL     #$0100, WAIT #4             ; 23B61E/C40001
        SETYVEL     #$FF80, WAIT #8             ; 23B621/C880FF
        SETYVEL     #$FE00, WAIT #4             ; 23B624/C400FE
        SETXVEL     #$FE00                      ; 23B627/B000FE
        SETYVEL     #$FC00, WAIT #4             ; 23B62A/C400FC
        SETXVEL     #$FF00, WAIT #4             ; 23B62D/B400FF
        SETXVEL     #$FF80                      ; 23B630/B080FF
        SETYVEL     #$FF00, WAIT #4             ; 23B633/C400FF
        SETXVEL     #$FFE0                      ; 23B636/B0E0FF
        SETYVEL     #$FF80, WAIT #4             ; 23B639/C480FF
        MOV         VAR5,#$C4                   ; 23B63C/0D05C4
        TASK        L_23B682                    ; 23B63F/0782B6
        ZEROVEL                                 ; 23B642/38
        LOOP        #4                          ; 23B643/0104
            SETXVEL     #$0200, WAIT #2             ; 23B645/B20002
            SETXVEL     #$FE00, WAIT #2             ; 23B648/B200FE
        ENDLOOP                                 ; 23B64B/02
        A_JSR       L_23B3FE                    ; 23B64C/18FEB3
        SETXVEL     #$0200, WAIT #2             ; 23B64F/B20002
        SETXVEL     #$FE00, WAIT #2             ; 23B652/B200FE
        ONMOVE      $D86A                       ; 23B655/236AD8
        ASMCALL     $B396                       ; 23B658/D096B3
        ONTICK      $23B351                     ; 23B65B/0851B323
        SETXVEL     #$FF00, WAIT #4             ; 23B65F/B400FF
        SETXVEL     #$FF80, WAIT #4             ; 23B662/B480FF
        LOOP        #23                         ; 23B665/0117
            SETXVEL     #$0400                      ; 23B667/B00004
            SETYVEL     #$FF00, WAIT #2             ; 23B66A/C200FF
            SETXVEL     #$0000                      ; 23B66D/B00000
            SETYVEL     #$0100, WAIT #2             ; 23B670/C20001
        ENDLOOP                                 ; 23B673/02
        ZEROVEL                                 ; 23B674/38
        ASMCALL     $DE4B                       ; 23B675/D04BDE // Play sound effect
        .byte       $14                         ; 23B678/14
        WAIT        #16                         ; 23B679/0610
        ASMCALL     $8F32                       ; 23B67B/D0328F
    ENDLOOP                                 ; 23B67E/02
    ENDLOOP                                 ; 23B67F/02
    LOOP        #0                          ; 23B680/0100
L_23B682:
        LOOP        #13                         ; 23B682/010D
            ASMCALL     $DE4B, WAIT #5              ; 23B684/D54BDE // Play sound effect
            .byte       $19                         ; 23B687/19
L_23B688:
        ENDLOOP                                 ; 23B688/02
    ENDTASK                                 ; 23B689/0C

L_23B68A:
    SETPOSE     #$42                        ; 23B68A/5042
    ZEROVEL                                 ; 23B68C/38
    SETYVEL     #$0080, WAIT #6             ; 23B68D/C68000
L_23B690:
    SETYVEL     #$0100, WAIT #6             ; 23B690/C60001
L_23B693:
    SETYVEL     #$0080, WAIT #6             ; 23B693/C68000
L_23B696:
    SETXVEL     #$FF80                      ; 23B696/B080FF
    SETYVEL     #$FF80, WAIT #4             ; 23B699/C480FF
L_23B69C:
    SETXVEL     #$FF00                      ; 23B69C/B000FF
    SETYVEL     #$FF00, WAIT #4             ; 23B69F/C400FF
L_23B6A2:
    SETXVEL     #$FD00                      ; 23B6A2/B000FD
    SETYVEL     #$FC00, WAIT #4             ; 23B6A5/C400FC
L_23B6A8:
    SETYVEL     #$FE00, WAIT #4             ; 23B6A8/C400FE
L_23B6AB:
    SETYVEL     #$FF00, WAIT #4             ; 23B6AB/C400FF
L_23B6AE:
    SETYVEL     #$0100, WAIT #4             ; 23B6AE/C40001
L_23B6B1:
    SETYVEL     #$0200, WAIT #4             ; 23B6B1/C40002
L_23B6B4:
    SETXVEL     #$FE00, WAIT #8             ; 23B6B4/B800FE
L_23B6B7:
    SETXVEL     #$FF00                      ; 23B6B7/B000FF
    SETYVEL     #$0100, WAIT #8             ; 23B6BA/C80001
L_23B6BD:
    SETXVEL     #$FF80                      ; 23B6BD/B080FF
    SETYVEL     #$0080, WAIT #8             ; 23B6C0/C88000
L_23B6C3:
    MOV         VAR8,#$01                   ; 23B6C3/0D0801
    MOV         VAR5,#$A4                   ; 23B6C6/0D05A4
    LOOP        #8                          ; 23B6C9/0108
        SETXVEL     #$0200                      ; 23B6CB/B00002
        SETYVEL     #$FE00, WAIT #2             ; 23B6CE/C200FE
L_23B6D1:
        SETXVEL     #$FE00                      ; 23B6D1/B000FE
        SETYVEL     #$0200, WAIT #2             ; 23B6D4/C20002
L_23B6D7:
    ENDLOOP                                 ; 23B6D7/02
    A_JSR       L_23B3FE                    ; 23B6D8/18FEB3
    SETXVEL     #$0200                      ; 23B6DB/B00002
    SETYVEL     #$FE00, WAIT #2             ; 23B6DE/C200FE
L_23B6E1:
    SETXVEL     #$FE00                      ; 23B6E1/B000FE
    SETYVEL     #$0200, WAIT #2             ; 23B6E4/C20002
L_23B6E7:
    SETXVEL     #$0800                      ; 23B6E7/B00008
    SETYVEL     #$FA00, WAIT #12            ; 23B6EA/CC00FA
L_23B6ED:
    SETXVEL     #$0600, WAIT #4             ; 23B6ED/B40006
L_23B6F0:
    SETXVEL     #$0400, WAIT #4             ; 23B6F0/B40004
L_23B6F3:
    SETXVEL     #$0300, WAIT #4             ; 23B6F3/B40003
L_23B6F6:
    ASMCALL     $8F32                       ; 23B6F6/D0328F
    ENDLOOP                                 ; 23B6F9/02
    ENDLOOP                                 ; 23B6FA/02
    LOOP        #0                          ; 23B6FB/0100
L_23B6FD:
        ONMOVE      $D86A                       ; 23B6FD/236AD8
        ASMCALL     $B396                       ; 23B700/D096B3
        ONTICK      $23B351                     ; 23B703/0851B323
        SETPOSE     #$FF                        ; 23B707/50FF
        ZEROVEL                                 ; 23B709/38
        SETXVEL     #$0800, WAIT #1             ; 23B70A/B10008
L_23B70D:
        SETPOSE     #$42                        ; 23B70D/5042
        MOV         VAR8,#$01                   ; 23B70F/0D0801
        LOOP        #3                          ; 23B712/0103
            MOV         VAR5,#$B4                   ; 23B714/0D05B4
            SETXVEL     #$0800                      ; 23B717/B00008
            SETYVEL     #$FE00, WAIT #12            ; 23B71A/CC00FE
L_23B71D:
            SETXVEL     #$0600, WAIT #6             ; 23B71D/B60006
L_23B720:
            SETXVEL     #$0400, WAIT #6             ; 23B720/B60004
L_23B723:
            MOV         VAR5,#$9F                   ; 23B723/0D059F
            SETXVEL     #$0200, WAIT #4             ; 23B726/B40002
L_23B729:
            SETXVEL     #$0100, WAIT #4             ; 23B729/B40001
L_23B72C:
            SETXVEL     #$0080, WAIT #4             ; 23B72C/B48000
L_23B72F:
            MOV         VAR5,#$54                   ; 23B72F/0D0554
            SETXVEL     #$FF00                      ; 23B732/B000FF
            SETYVEL     #$FEC0, WAIT #4             ; 23B735/C4C0FE
L_23B738:
            SETXVEL     #$FE00                      ; 23B738/B000FE
            SETYVEL     #$FF00, WAIT #4             ; 23B73B/C400FF
L_23B73E:
            SETXVEL     #$FC00                      ; 23B73E/B000FC
            SETYVEL     #$FF80, WAIT #4             ; 23B741/C480FF
L_23B744:
            MOV         VAR5,#$00                   ; 23B744/0D0500
            SETPOSE     #$FF                        ; 23B747/50FF
            SETXVEL     #$F800                      ; 23B749/B000F8
            SETYVEL     #$0300                      ; 23B74C/C00003
            WAIT        #18                         ; 23B74F/0612
L_23B751:
            SETPOSE     #$42                        ; 23B751/5042
            SETXVEL     #$FC00                      ; 23B753/B000FC
            SETYVEL     #$0100, WAIT #4             ; 23B756/C40001
L_23B759:
            SETXVEL     #$FE00, WAIT #2             ; 23B759/B200FE
L_23B75C:
            MOV         VAR5,#$B4                   ; 23B75C/0D05B4
            SETXVEL     #$0200                      ; 23B75F/B00002
            SETYVEL     #$FF80, WAIT #2             ; 23B762/C280FF
L_23B765:
            SETXVEL     #$0400                      ; 23B765/B00004
            SETYVEL     #$FF00, WAIT #4             ; 23B768/C400FF
L_23B76B:
        ENDLOOP                                 ; 23B76B/02
        ASMCALL     $DE4B                       ; 23B76C/D04BDE // Play sound effect
        .byte       $14                         ; 23B76F/14
        SETXVEL     #$0800                      ; 23B770/B00008
        SETYVEL     #$FE00, WAIT #4             ; 23B773/C400FE
L_23B776:
        SETYVEL     #$FD00, WAIT #4             ; 23B776/C400FD
L_23B779:
        MOV         VAR5,#$9F                   ; 23B779/0D059F
        SETYVEL     #$FA00, WAIT #4             ; 23B77C/C400FA
L_23B77F:
        MOV         VAR5,#$8F                   ; 23B77F/0D058F
        SETYVEL     #$F800, WAIT #6             ; 23B782/C600F8
L_23B785:
        ZEROVEL                                 ; 23B785/38
        WAIT        #6                          ; 23B786/0606
L_23B788:
        ASMCALL     $8F32                       ; 23B788/D0328F
    ENDLOOP                                 ; 23B78B/02
    ENDLOOP                                 ; 23B78C/02
    LOOP        #0                          ; 23B78D/0100
L_23B78F:
        ADDYPOS     #48                         ; 23B78F/2D3000
        ADDYPOS     #-2                         ; 23B792/2DFEFF
        MOV         VAR8,#$01                   ; 23B795/0D0801
        MOV         VAR5,#$B4                   ; 23B798/0D05B4
        SETPOSE     #$42                        ; 23B79B/5042
        SETXVEL     #$0600                      ; 23B79D/B00006
        SETYVEL     #$FD00, WAIT #14            ; 23B7A0/CE00FD
L_23B7A3:
        MOV         VAR5,#$94                   ; 23B7A3/0D0594
        SETYVEL     #$FC00, WAIT #4             ; 23B7A6/C400FC
L_23B7A9:
        SETYVEL     #$FA00, WAIT #4             ; 23B7A9/C400FA
L_23B7AC:
        ASMCALL     $DE4B                       ; 23B7AC/D04BDE // Play sound effect
        .byte       $1E                         ; 23B7AF/1E
        MOV         VAR5,#$84                   ; 23B7B0/0D0584
        LOOP        #3                          ; 23B7B3/0103
            SETXVEL     #$0600                      ; 23B7B5/B00006
            SETYVEL     #$FA00, WAIT #2             ; 23B7B8/C200FA
L_23B7BB:
            SETXVEL     #$FA00                      ; 23B7BB/B000FA
            SETYVEL     #$0600, WAIT #1             ; 23B7BE/C10006
L_23B7C1:
        ENDLOOP                                 ; 23B7C1/02
        ZEROVEL                                 ; 23B7C2/38
        LOOP        #3                          ; 23B7C3/0103
            SETYVEL     #$FA00, WAIT #2             ; 23B7C5/C200FA
L_23B7C8:
            SETYVEL     #$0600, WAIT #1             ; 23B7C8/C10006
L_23B7CB:
        ENDLOOP                                 ; 23B7CB/02
        LOOP        #2                          ; 23B7CC/0102
            SETYVEL     #$FE00, WAIT #1             ; 23B7CE/C100FE
L_23B7D1:
            SETYVEL     #$0200, WAIT #1             ; 23B7D1/C10002
L_23B7D4:
        ENDLOOP                                 ; 23B7D4/02
        MOV         VAR5,#$00                   ; 23B7D5/0D0500
        SETYVEL     #$0000, WAIT #8             ; 23B7D8/C80000
L_23B7DB:
        SETXVEL     #$FFF8                      ; 23B7DB/B0F8FF
        SETYVEL     #$0008, WAIT #4             ; 23B7DE/C40800
L_23B7E1:
        SETXVEL     #$FFE0                      ; 23B7E1/B0E0FF
        SETYVEL     #$0020, WAIT #4             ; 23B7E4/C42000
L_23B7E7:
        SETXVEL     #$FF80                      ; 23B7E7/B080FF
        SETYVEL     #$0080, WAIT #4             ; 23B7EA/C48000
L_23B7ED:
        SETXVEL     #$FF00                      ; 23B7ED/B000FF
        SETYVEL     #$0100, WAIT #4             ; 23B7F0/C40001
L_23B7F3:
        SETXVEL     #$FE00                      ; 23B7F3/B000FE
        SETYVEL     #$0200, WAIT #4             ; 23B7F6/C40002
L_23B7F9:
        SETXVEL     #$FC00                      ; 23B7F9/B000FC
        SETYVEL     #$0400, WAIT #6             ; 23B7FC/C60004
L_23B7FF:
        SETXVEL     #$F800, WAIT #10            ; 23B7FF/BA00F8
L_23B802:
        A_JSR       L_23B410                    ; 23B802/1810B4
        A_JSR       L_23B3FE                    ; 23B805/18FEB3
        ASMCALL     $DE4B                       ; 23B808/D04BDE // Play sound effect
        .byte       $22                         ; 23B80B/22
        TASK        L_23B864                    ; 23B80C/0764B8
        SETXVEL     #$FF80                      ; 23B80F/B080FF
        SETYVEL     #$FC00, WAIT #4             ; 23B812/C400FC
L_23B815:
        SETYVEL     #$FD00, WAIT #4             ; 23B815/C400FD
L_23B818:
        SETYVEL     #$FE00, WAIT #4             ; 23B818/C400FE
L_23B81B:
        SETYVEL     #$FEC0, WAIT #4             ; 23B81B/C4C0FE
L_23B81E:
        SETYVEL     #$FF00, WAIT #4             ; 23B81E/C400FF
L_23B821:
        SETYVEL     #$FF40, WAIT #4             ; 23B821/C440FF
L_23B824:
        SETYVEL     #$FF80, WAIT #4             ; 23B824/C480FF
L_23B827:
        SETYVEL     #$0080, WAIT #4             ; 23B827/C48000
L_23B82A:
        SETYVEL     #$00C0, WAIT #4             ; 23B82A/C4C000
L_23B82D:
        SETYVEL     #$0100, WAIT #4             ; 23B82D/C40001
L_23B830:
        SETYVEL     #$0140, WAIT #4             ; 23B830/C44001
L_23B833:
        SETYVEL     #$0200, WAIT #4             ; 23B833/C40002
L_23B836:
        ASMCALL     $DE4B                       ; 23B836/D04BDE // Play sound effect
        .byte       $55                         ; 23B839/55
        SPRITEMAP   $1C8DA6                     ; 23B83A/1AA68D1C
        SETPOSE     #$00                        ; 23B83E/5000
        SETYVEL     #$0300, WAIT #4             ; 23B840/C40003
L_23B843:
        SETPOSE     #$4D                        ; 23B843/504D
        SETYVEL     #$0400, WAIT #2             ; 23B845/C20004
L_23B848:
        A_JSR       L_23B40A                    ; 23B848/180AB4
        SETPOSE     #$03                        ; 23B84B/5003
        SETYVEL     #$FF00, WAIT #8             ; 23B84D/C800FF
L_23B850:
        SETYVEL     #$FF80, WAIT #8             ; 23B850/C880FF
L_23B853:
        SETYVEL     #$0080, WAIT #8             ; 23B853/C88000
L_23B856:
        ASMCALL     $DE4B                       ; 23B856/D04BDE // Play sound effect
        .byte       $05                         ; 23B859/05
        SETYVEL     #$0100, WAIT #8             ; 23B85A/C80001
L_23B85D:
        A_JSR       L_23B40A                    ; 23B85D/180AB4
        ZEROVEL                                 ; 23B860/38
        A_JMP       L_23BD19                    ; 23B861/1719BD

L_23B864:
        SPRITEMAP   $1C8DA6                     ; 23B864/1AA68D1C
        LOOP        #3                          ; 23B868/0103
            SETPOSE     #$4A, WAIT #4               ; 23B86A/544A
L_23B86C:
            SETPOSE     #$4D, WAIT #4               ; 23B86C/544D
L_23B86E:
            DECPOSE     WAIT #4                     ; 23B86E/84
L_23B86F:
            DECPOSE     WAIT #4                     ; 23B86F/84
L_23B870:
        ENDLOOP                                 ; 23B870/02
    ENDTASK                                 ; 23B871/0C

L_23B872:
    SETPOSE     #$43                        ; 23B872/5043
    ZEROVEL                                 ; 23B874/38
    SETYVEL     #$0080, WAIT #8             ; 23B875/C88000
L_23B878:
    SETYVEL     #$0100, WAIT #8             ; 23B878/C80001
L_23B87B:
    MOV         VAR5,#$94                   ; 23B87B/0D0594
    SETXVEL     #$FF80                      ; 23B87E/B080FF
    SETYVEL     #$0080, WAIT #8             ; 23B881/C88000
L_23B884:
    MOV         VAR5,#$00                   ; 23B884/0D0500
    ZEROVEL                                 ; 23B887/38
    SETXVEL     #$FF00, WAIT #8             ; 23B888/B800FF
L_23B88B:
    SETXVEL     #$FF80, WAIT #8             ; 23B88B/B880FF
L_23B88E:
    ONMOVE      $D86A                       ; 23B88E/236AD8
    ASMCALL     $B396                       ; 23B891/D096B3
    ONTICK      $23B351                     ; 23B894/0851B323
    SETXVEL     #$0400                      ; 23B898/B00004
    SETYVEL     #$FF80, WAIT #2             ; 23B89B/C280FF
L_23B89E:
    SETXVEL     #$0200, WAIT #8             ; 23B89E/B80002
L_23B8A1:
    SETYVEL     #$FF00, WAIT #8             ; 23B8A1/C800FF
L_23B8A4:
    SETXVEL     #$0100, WAIT #8             ; 23B8A4/B80001
L_23B8A7:
    MOV         VAR6,#$05                   ; 23B8A7/0D0605
    MOV         VAR5,#$42                   ; 23B8AA/0D0542
    SETXVEL     #$0080, WAIT #8             ; 23B8AD/B88000
L_23B8B0:
    SETXVEL     #$FF80                      ; 23B8B0/B080FF
    SETYVEL     #$FE00, WAIT #8             ; 23B8B3/C800FE
L_23B8B6:
    SETXVEL     #$FF00, WAIT #4             ; 23B8B6/B400FF
L_23B8B9:
    LOOP        #4                          ; 23B8B9/0104
        ASMCALL     $DE4B                       ; 23B8BB/D04BDE // Play sound effect
        .byte       $19                         ; 23B8BE/19
        SETXVEL     #$FC00                      ; 23B8BF/B000FC
        SETYVEL     #$FF80, WAIT #2             ; 23B8C2/C280FF
L_23B8C5:
        ASMCALL     $DE4B                       ; 23B8C5/D04BDE // Play sound effect
        .byte       $19                         ; 23B8C8/19
        SETXVEL     #$0200                      ; 23B8C9/B00002
        SETYVEL     #$FF00, WAIT #2             ; 23B8CC/C200FF
L_23B8CF:
    ENDLOOP                                 ; 23B8CF/02
    LOOP        #4                          ; 23B8D0/0104
        ASMCALL     $DE4B                       ; 23B8D2/D04BDE // Play sound effect
        .byte       $19                         ; 23B8D5/19
        SETXVEL     #$FC00                      ; 23B8D6/B000FC
        SETYVEL     #$0080, WAIT #2             ; 23B8D9/C28000
L_23B8DC:
        ASMCALL     $DE4B                       ; 23B8DC/D04BDE // Play sound effect
        .byte       $19                         ; 23B8DF/19
        SETXVEL     #$0140                      ; 23B8E0/B04001
        SETYVEL     #$0100, WAIT #2             ; 23B8E3/C20001
L_23B8E6:
    ENDLOOP                                 ; 23B8E6/02
    LOOP        #4                          ; 23B8E7/0104
        ASMCALL     $DE4B                       ; 23B8E9/D04BDE // Play sound effect
        .byte       $19                         ; 23B8EC/19
        SETXVEL     #$FD00                      ; 23B8ED/B000FD
        SETYVEL     #$0080, WAIT #2             ; 23B8F0/C28000
L_23B8F3:
        ASMCALL     $DE4B                       ; 23B8F3/D04BDE // Play sound effect
        .byte       $19                         ; 23B8F6/19
        SETXVEL     #$0100                      ; 23B8F7/B00001
        SETYVEL     #$FF80, WAIT #2             ; 23B8FA/C280FF
L_23B8FD:
    ENDLOOP                                 ; 23B8FD/02
    LOOP        #4                          ; 23B8FE/0104
        ASMCALL     $DE4B                       ; 23B900/D04BDE // Play sound effect
        .byte       $19                         ; 23B903/19
        SETXVEL     #$FA00                      ; 23B904/B000FA
        ASMCALL     $DE4B                       ; 23B907/D04BDE // Play sound effect
        .byte       $19                         ; 23B90A/19
        SETYVEL     #$FF00, WAIT #2             ; 23B90B/C200FF
L_23B90E:
        ASMCALL     $DE4B                       ; 23B90E/D04BDE // Play sound effect
        .byte       $19                         ; 23B911/19
        SETXVEL     #$0200                      ; 23B912/B00002
        SETYVEL     #$FF80, WAIT #2             ; 23B915/C280FF
L_23B918:
    ENDLOOP                                 ; 23B918/02
    SETXVEL     #$0300                      ; 23B919/B00003
    SETYVEL     #$0200, WAIT #8             ; 23B91C/C80002
L_23B91F:
    LOOP        #2                          ; 23B91F/0102
        ASMCALL     $DE4B                       ; 23B921/D04BDE // Play sound effect
        .byte       $19                         ; 23B924/19
        SETXVEL     #$FA00                      ; 23B925/B000FA
        SETYVEL     #$FF00, WAIT #2             ; 23B928/C200FF
L_23B92B:
        ASMCALL     $DE4B                       ; 23B92B/D04BDE // Play sound effect
        .byte       $19                         ; 23B92E/19
        SETXVEL     #$0200, WAIT #2             ; 23B92F/B20002
L_23B932:
    ENDLOOP                                 ; 23B932/02
    SETXVEL     #$0020                      ; 23B933/B02000
    SETYVEL     #$0080, WAIT #8             ; 23B936/C88000
L_23B939:
    LOOP        #4                          ; 23B939/0104
        ASMCALL     $DE4B                       ; 23B93B/D04BDE // Play sound effect
        .byte       $19                         ; 23B93E/19
        SETXVEL     #$FE00                      ; 23B93F/B000FE
        SETYVEL     #$FF00, WAIT #2             ; 23B942/C200FF
L_23B945:
        ASMCALL     $DE4B                       ; 23B945/D04BDE // Play sound effect
        .byte       $19                         ; 23B948/19
        SETXVEL     #$FC00                      ; 23B949/B000FC
        SETYVEL     #$FD00, WAIT #2             ; 23B94C/C200FD
L_23B94F:
    ENDLOOP                                 ; 23B94F/02
    SETXVEL     #$0400                      ; 23B950/B00004
    SETYVEL     #$FA00, WAIT #4             ; 23B953/C400FA
L_23B956:
    SETXVEL     #$0200                      ; 23B956/B00002
    SETYVEL     #$FC00, WAIT #4             ; 23B959/C400FC
L_23B95C:
    SETYVEL     #$FE00, WAIT #4             ; 23B95C/C400FE
L_23B95F:
    SETYVEL     #$FF00, WAIT #2             ; 23B95F/C200FF
L_23B962:
    SETYVEL     #$FF80, WAIT #2             ; 23B962/C280FF
L_23B965:
    SETYVEL     #$FFE0, WAIT #2             ; 23B965/C2E0FF
L_23B968:
    SETYVEL     #$0020, WAIT #2             ; 23B968/C22000
L_23B96B:
    SETYVEL     #$0080, WAIT #2             ; 23B96B/C28000
L_23B96E:
    SETYVEL     #$0100, WAIT #2             ; 23B96E/C20001
L_23B971:
    SETYVEL     #$0200, WAIT #4             ; 23B971/C40002
L_23B974:
    SETYVEL     #$0400, WAIT #4             ; 23B974/C40004
L_23B977:
    SETYVEL     #$0600, WAIT #8             ; 23B977/C80006
L_23B97A:
    SETYVEL     #$0400, WAIT #4             ; 23B97A/C40004
L_23B97D:
    SETYVEL     #$0200, WAIT #4             ; 23B97D/C40002
L_23B980:
    SETYVEL     #$0100, WAIT #4             ; 23B980/C40001
L_23B983:
    SETYVEL     #$0080, WAIT #2             ; 23B983/C28000
L_23B986:
    SETYVEL     #$0020, WAIT #2             ; 23B986/C22000
L_23B989:
    SETYVEL     #$FFE0, WAIT #2             ; 23B989/C2E0FF
L_23B98C:
    SETYVEL     #$FF80, WAIT #2             ; 23B98C/C280FF
L_23B98F:
    SETYVEL     #$FF00, WAIT #4             ; 23B98F/C400FF
L_23B992:
    SETYVEL     #$FE00, WAIT #4             ; 23B992/C400FE
L_23B995:
    SETYVEL     #$FC00, WAIT #4             ; 23B995/C400FC
L_23B998:
    ZEROVEL                                 ; 23B998/38
    ASMCALL     $8F32                       ; 23B999/D0328F
    ENDLOOP                                 ; 23B99C/02
    ENDLOOP                                 ; 23B99D/02
    LOOP        #0                          ; 23B99E/0100
L_23B9A0:
        ASMCALL     $DE4B                       ; 23B9A0/D04BDE // Play sound effect
        .byte       $14                         ; 23B9A3/14
        ADDYPOS     #-120                       ; 23B9A4/2D88FF
        SETPOSE     #$43                        ; 23B9A7/5043
        SETXVEL     #$0200                      ; 23B9A9/B00002
        SETYVEL     #$0200                      ; 23B9AC/C00002
        WAIT        #44                         ; 23B9AF/062C
L_23B9B1:
        ASMCALL     $DE4B                       ; 23B9B1/D04BDE // Play sound effect
        .byte       $22                         ; 23B9B4/22
        A_JSR       L_23B410                    ; 23B9B5/1810B4
        A_JSR       L_23B3FE                    ; 23B9B8/18FEB3
        SPRITEMAP   $1C8DA6                     ; 23B9BB/1AA68D1C
        SETPOSE     #$05                        ; 23B9BF/5005
        SETXVEL     #$FF00                      ; 23B9C1/B000FF
        SETYVEL     #$FD00, WAIT #8             ; 23B9C4/C800FD
L_23B9C7:
        SETYVEL     #$FE00, WAIT #8             ; 23B9C7/C800FE
L_23B9CA:
        SETYVEL     #$FF00, WAIT #8             ; 23B9CA/C800FF
L_23B9CD:
        DECPOSE                                 ; 23B9CD/80
        SETYVEL     #$FF80, WAIT #8             ; 23B9CE/C880FF
L_23B9D1:
        SETYVEL     #$0080, WAIT #8             ; 23B9D1/C88000
L_23B9D4:
        DEC2POSE                                ; 23B9D4/A0
        SETYVEL     #$0100, WAIT #8             ; 23B9D5/C80001
L_23B9D8:
        ASMCALL     $DE4B                       ; 23B9D8/D04BDE // Play sound effect
        .byte       $38                         ; 23B9DB/38
        SPRITEMAP   $1A8000                     ; 23B9DC/1A00801A
        SETPOSE     #$22                        ; 23B9E0/5022
        SETYVEL     #$0200, WAIT #8             ; 23B9E2/C80002
L_23B9E5:
        SETPOSE     #$2A                        ; 23B9E5/502A
        SETYVEL     #$0300, WAIT #8             ; 23B9E7/C80003
L_23B9EA:
        SETYVEL     #$0400, WAIT #8             ; 23B9EA/C80004
L_23B9ED:
        ZEROVEL                                 ; 23B9ED/38
        ASMCALL     $DE4B                       ; 23B9EE/D04BDE // Play sound effect
        .byte       $38                         ; 23B9F1/38
        A_JSR       L_23B40A                    ; 23B9F2/180AB4
        SETPOSE     #$2E, WAIT #8               ; 23B9F5/582E
L_23B9F7:
        A_JMP       L_23BD19                    ; 23B9F7/1719BD

L_23B9FA:
        SETPOSE     #$42                        ; 23B9FA/5042
        ZEROVEL                                 ; 23B9FC/38
        SETYVEL     #$0080, WAIT #8             ; 23B9FD/C88000
L_23BA00:
        SETYVEL     #$0100, WAIT #8             ; 23BA00/C80001
L_23BA03:
        SETXVEL     #$FF80                      ; 23BA03/B080FF
        SETYVEL     #$0080, WAIT #8             ; 23BA06/C88000
L_23BA09:
        ZEROVEL                                 ; 23BA09/38
        SETXVEL     #$FF00, WAIT #8             ; 23BA0A/B800FF
L_23BA0D:
        MOV         VAR5,#$C4                   ; 23BA0D/0D05C4
        SETXVEL     #$FF80, WAIT #8             ; 23BA10/B880FF
L_23BA13:
        SETXVEL     #$0800                      ; 23BA13/B00008
        SETYVEL     #$FE00, WAIT #8             ; 23BA16/C800FE
L_23BA19:
        SETXVEL     #$0200, WAIT #8             ; 23BA19/B80002
L_23BA1C:
        SETXVEL     #$0100, WAIT #8             ; 23BA1C/B80001
L_23BA1F:
        SETXVEL     #$FF00, WAIT #8             ; 23BA1F/B800FF
L_23BA22:
        SETXVEL     #$FE00, WAIT #8             ; 23BA22/B800FE
L_23BA25:
        SETXVEL     #$FF00                      ; 23BA25/B000FF
        SETYVEL     #$FF00, WAIT #8             ; 23BA28/C800FF
L_23BA2B:
        SETYVEL     #$FF80, WAIT #8             ; 23BA2B/C880FF
L_23BA2E:
        SETXVEL     #$FF80                      ; 23BA2E/B080FF
        SETYVEL     #$0100, WAIT #8             ; 23BA31/C80001
L_23BA34:
        SETXVEL     #$0080, WAIT #8             ; 23BA34/B88000
L_23BA37:
        SETXVEL     #$0100, WAIT #8             ; 23BA37/B80001
L_23BA3A:
        SETXVEL     #$0200                      ; 23BA3A/B00002
        SETYVEL     #$0080, WAIT #8             ; 23BA3D/C88000
L_23BA40:
        SETXVEL     #$0600                      ; 23BA40/B00006
        WAIT        #33                         ; 23BA43/0621
L_23BA45:
        MOV         VAR5,#$00                   ; 23BA45/0D0500
        SETPOSE     #$FF                        ; 23BA48/50FF
        ZEROVEL                                 ; 23BA4A/38
        SETYVEL     #$0020                      ; 23BA4B/C02000
        WAIT        #16                         ; 23BA4E/0610
L_23BA50:
        SETPOSE     #$42                        ; 23BA50/5042
        MOV         VAR5,#$4F                   ; 23BA52/0D054F
        SETYVEL     #$0000, WAIT #1             ; 23BA55/C10000
L_23BA58:
        SETPOSE     #$FF                        ; 23BA58/50FF
        SETXVEL     #$FA00, WAIT #10            ; 23BA5A/BA00FA
L_23BA5D:
        SETPOSE     #$42, WAIT #9               ; 23BA5D/5942
L_23BA5F:
        MOV         VAR5,#$46                   ; 23BA5F/0D0546
        WAIT        #10                         ; 23BA62/060A
L_23BA64:
        SETXVEL     #$FF00, WAIT #8             ; 23BA64/B800FF
L_23BA67:
        SETXVEL     #$FF80, WAIT #8             ; 23BA67/B880FF
L_23BA6A:
        SETXVEL     #$0080                      ; 23BA6A/B08000
        SETYVEL     #$FFE0, WAIT #8             ; 23BA6D/C8E0FF
L_23BA70:
        MOV         VAR5,#$00                   ; 23BA70/0D0500
        SETXVEL     #$0100, WAIT #3             ; 23BA73/B30001
L_23BA76:
        SETPOSE     #$FF                        ; 23BA76/50FF
        ZEROVEL                                 ; 23BA78/38
        SETXVEL     #$0400, WAIT #12            ; 23BA79/BC0004
L_23BA7C:
        ONDRAW      $DA89                       ; 23BA7C/2089DA
        SPRITEMAP   $1C9CD7                     ; 23BA7F/1AD79C1C
        SETPOSE     #$11                        ; 23BA83/5011
        SETYVEL     #$FFE0                      ; 23BA85/C0E0FF
        WAIT        #18                         ; 23BA88/0612
L_23BA8A:
        SETPOSE     #$FF                        ; 23BA8A/50FF
        ZEROVEL                                 ; 23BA8C/38
        SETXVEL     #$0040                      ; 23BA8D/B04000
        WAIT        #16                         ; 23BA90/0610
L_23BA92:
        SPRITEMAP   $1C94CE                     ; 23BA92/1ACE941C
        SETZPOS     #$00FF                      ; 23BA96/3AFF00
        SETPOSE     #$0A                        ; 23BA99/500A
        SETXVEL     #$FE00                      ; 23BA9B/B000FE
        SETYVEL     #$FFE0, WAIT #7             ; 23BA9E/C7E0FF
L_23BAA1:
        SETPOSE     #$FF                        ; 23BAA1/50FF
        SETYVEL     #$0000, WAIT #8             ; 23BAA3/C80000
L_23BAA6:
        SETPOSE     #$0A                        ; 23BAA6/500A
        SETYVEL     #$FFE0                      ; 23BAA8/C0E0FF
        WAIT        #23                         ; 23BAAB/0617
L_23BAAD:
        SETPOSE     #$FF                        ; 23BAAD/50FF
        ZEROVEL                                 ; 23BAAF/38
        WAIT        #16                         ; 23BAB0/0610
L_23BAB2:
        SETPOSE     #$0A                        ; 23BAB2/500A
        SETXVEL     #$0200                      ; 23BAB4/B00002
        SETYVEL     #$FFE0, WAIT #5             ; 23BAB7/C5E0FF
L_23BABA:
        SETPOSE     #$FF, WAIT #10              ; 23BABA/5AFF
L_23BABC:
        SETPOSE     #$0A, WAIT #6               ; 23BABC/560A
L_23BABE:
        SETPOSE     #$FF, WAIT #10              ; 23BABE/5AFF
L_23BAC0:
        SETPOSE     #$0A, WAIT #6               ; 23BAC0/560A
L_23BAC2:
        SETPOSE     #$FF                        ; 23BAC2/50FF
        WAIT        #24                         ; 23BAC4/0618
L_23BAC6:
        SETPOSE     #$0A, WAIT #6               ; 23BAC6/560A
L_23BAC8:
        ZEROVEL                                 ; 23BAC8/38
        A_JMP       L_23BD19                    ; 23BAC9/1719BD

L_23BACC:
        SETPOSE     #$42                        ; 23BACC/5042
        SETXVEL     #$F800                      ; 23BACE/B000F8
        SETYVEL     #$0200, WAIT #8             ; 23BAD1/C80002
L_23BAD4:
        SETXVEL     #$FC00, WAIT #8             ; 23BAD4/B800FC
L_23BAD7:
        SETXVEL     #$FE00                      ; 23BAD7/B000FE
        SETYVEL     #$0100, WAIT #8             ; 23BADA/C80001
L_23BADD:
        SETXVEL     #$FF00                      ; 23BADD/B000FF
        SETYVEL     #$0080, WAIT #8             ; 23BAE0/C88000
L_23BAE3:
        ONMOVE      $D86A                       ; 23BAE3/236AD8
        ASMCALL     $B396                       ; 23BAE6/D096B3
        ONTICK      $23B351                     ; 23BAE9/0851B323
        MOV         VAR8,#$01                   ; 23BAED/0D0801
        MOV         VAR5,#$C4                   ; 23BAF0/0D05C4
        SETXVEL     #$0100                      ; 23BAF3/B00001
        SETYVEL     #$FF00, WAIT #8             ; 23BAF6/C800FF
L_23BAF9:
        A_JSR       L_23B3FE                    ; 23BAF9/18FEB3
        SETXVEL     #$0200                      ; 23BAFC/B00002
        SETYVEL     #$FE00, WAIT #8             ; 23BAFF/C800FE
L_23BB02:
        SETXVEL     #$0400                      ; 23BB02/B00004
        SETYVEL     #$FC00, WAIT #4             ; 23BB05/C400FC
L_23BB08:
        SETXVEL     #$0600                      ; 23BB08/B00006
        SETYVEL     #$FE00, WAIT #4             ; 23BB0B/C400FE
L_23BB0E:
        SETYVEL     #$FF00, WAIT #4             ; 23BB0E/C400FF
L_23BB11:
        SETXVEL     #$0400                      ; 23BB11/B00004
        SETYVEL     #$0080, WAIT #3             ; 23BB14/C38000
L_23BB17:
        SETYVEL     #$0200, WAIT #4             ; 23BB17/C40002
L_23BB1A:
        SETXVEL     #$0300                      ; 23BB1A/B00003
        SETYVEL     #$0400, WAIT #4             ; 23BB1D/C40004
L_23BB20:
        SETXVEL     #$0200                      ; 23BB20/B00002
        SETYVEL     #$0600, WAIT #4             ; 23BB23/C40006
L_23BB26:
        SETXVEL     #$0100                      ; 23BB26/B00001
        SETYVEL     #$0800, WAIT #2             ; 23BB29/C20008
L_23BB2C:
        SETXVEL     #$FF00, WAIT #2             ; 23BB2C/B200FF
L_23BB2F:
        SETXVEL     #$FE00                      ; 23BB2F/B000FE
        SETYVEL     #$0600, WAIT #4             ; 23BB32/C40006
L_23BB35:
        SETXVEL     #$FD00                      ; 23BB35/B000FD
        SETYVEL     #$0400, WAIT #4             ; 23BB38/C40004
L_23BB3B:
        SETXVEL     #$FC00                      ; 23BB3B/B000FC
        SETYVEL     #$0200, WAIT #4             ; 23BB3E/C40002
L_23BB41:
        SETXVEL     #$FA00                      ; 23BB41/B000FA
        SETYVEL     #$0100, WAIT #4             ; 23BB44/C40001
L_23BB47:
        MOV         VAR5,#$00                   ; 23BB47/0D0500
        SETYVEL     #$0080, WAIT #4             ; 23BB4A/C48000
L_23BB4D:
        SETXVEL     #$FC00                      ; 23BB4D/B000FC
        SETYVEL     #$0008, WAIT #4             ; 23BB50/C40800
L_23BB53:
        SETXVEL     #$FD00                      ; 23BB53/B000FD
        SETYVEL     #$FFE0, WAIT #4             ; 23BB56/C4E0FF
L_23BB59:
        MOV         VAR5,#$94                   ; 23BB59/0D0594
        SETXVEL     #$FE00, WAIT #2             ; 23BB5C/B200FE
L_23BB5F:
        SETXVEL     #$0080                      ; 23BB5F/B08000
        SETYVEL     #$F000, WAIT #4             ; 23BB62/C400F0
L_23BB65:
        SETXVEL     #$0100                      ; 23BB65/B00001
        SETYVEL     #$F800, WAIT #12            ; 23BB68/CC00F8
L_23BB6B:
        ASMCALL     $8F32                       ; 23BB6B/D0328F
    ENDLOOP                                 ; 23BB6E/02
    ENDLOOP                                 ; 23BB6F/02
    LOOP        #0                          ; 23BB70/0100
L_23BB72:
        SETPOSE     #$42                        ; 23BB72/5042
        ONMOVE      $D86A                       ; 23BB74/236AD8
        ASMCALL     $B396                       ; 23BB77/D096B3
        ONTICK      $23B351                     ; 23BB7A/0851B323
        MOV         VAR8,#$00                   ; 23BB7E/0D0800
        MOV         VAR5,#$84                   ; 23BB81/0D0584
        SETXVEL     #$0080                      ; 23BB84/B08000
        SETYVEL     #$FE00, WAIT #15            ; 23BB87/CF00FE
L_23BB8A:
        WAIT        #33                         ; 23BB8A/0621
L_23BB8C:
        SETYVEL     #$FEC0, WAIT #8             ; 23BB8C/C8C0FE
L_23BB8F:
        SETYVEL     #$FF00, WAIT #8             ; 23BB8F/C800FF
L_23BB92:
        SETYVEL     #$FF40, WAIT #8             ; 23BB92/C840FF
L_23BB95:
        SETYVEL     #$FF80, WAIT #8             ; 23BB95/C880FF
L_23BB98:
        SETYVEL     #$FFC0, WAIT #8             ; 23BB98/C8C0FF
L_23BB9B:
        MOV         VAR5,#$00                   ; 23BB9B/0D0500
        SETYVEL     #$FFE0, WAIT #8             ; 23BB9E/C8E0FF
L_23BBA1:
        ASMCALL     $DE4B                       ; 23BBA1/D04BDE // Play sound effect
        .byte       $14                         ; 23BBA4/14
        SETYVEL     #$0020, WAIT #8             ; 23BBA5/C82000
L_23BBA8:
        ONDRAW      $DA89                       ; 23BBA8/2089DA
        SPRITEMAP   $1C9CD7                     ; 23BBAB/1AD79C1C
        SETPOSE     #$11                        ; 23BBAF/5011
        SETYVEL     #$0040, WAIT #8             ; 23BBB1/C84000
L_23BBB4:
        SPRITEMAP   $1C94CE                     ; 23BBB4/1ACE941C
        SETZPOS     #$00FF                      ; 23BBB8/3AFF00
        SETPOSE     #$0A                        ; 23BBBB/500A
        SETYVEL     #$0080, WAIT #8             ; 23BBBD/C88000
L_23BBC0:
        SETYVEL     #$00C0, WAIT #8             ; 23BBC0/C8C000
L_23BBC3:
        SETYVEL     #$0100, WAIT #8             ; 23BBC3/C80001
L_23BBC6:
        SETYVEL     #$0140, WAIT #8             ; 23BBC6/C84001
L_23BBC9:
        WAIT        #32                         ; 23BBC9/0620
L_23BBCB:
        ZEROVEL                                 ; 23BBCB/38
        ASMCALL     $8F32                       ; 23BBCC/D0328F
    ENDLOOP                                 ; 23BBCF/02
    ENDLOOP                                 ; 23BBD0/02
    LOOP        #0                          ; 23BBD1/0100
L_23BBD3:
        SETPOSE     #$42                        ; 23BBD3/5042
        ZEROVEL                                 ; 23BBD5/38
        SETYVEL     #$0100, WAIT #8             ; 23BBD6/C80001
L_23BBD9:
        SETXVEL     #$0100                      ; 23BBD9/B00001
        SETYVEL     #$0080, WAIT #8             ; 23BBDC/C88000
L_23BBDF:
        SETYVEL     #$0020, WAIT #8             ; 23BBDF/C82000
L_23BBE2:
        SETYVEL     #$FF80, WAIT #8             ; 23BBE2/C880FF
L_23BBE5:
        SETXVEL     #$0080                      ; 23BBE5/B08000
        SETYVEL     #$FF00, WAIT #8             ; 23BBE8/C800FF
L_23BBEB:
        SETXVEL     #$FF00                      ; 23BBEB/B000FF
        SETYVEL     #$FE00, WAIT #8             ; 23BBEE/C800FE
L_23BBF1:
        SETXVEL     #$FE00                      ; 23BBF1/B000FE
        SETYVEL     #$FF00, WAIT #8             ; 23BBF4/C800FF
L_23BBF7:
        SETYVEL     #$FF80, WAIT #8             ; 23BBF7/C880FF
L_23BBFA:
        ONMOVE      $D86A                       ; 23BBFA/236AD8
        ASMCALL     $B396                       ; 23BBFD/D096B3
        ONTICK      $23B351                     ; 23BC00/0851B323
        SETYVEL     #$0100, WAIT #8             ; 23BC04/C80001
L_23BC07:
        SETYVEL     #$0200, WAIT #8             ; 23BC07/C80002
L_23BC0A:
        SETYVEL     #$0400, WAIT #8             ; 23BC0A/C80004
L_23BC0D:
        SETXVEL     #$FF00                      ; 23BC0D/B000FF
        SETYVEL     #$0600, WAIT #4             ; 23BC10/C40006
L_23BC13:
        SETXVEL     #$FF80                      ; 23BC13/B080FF
        SETYVEL     #$0400, WAIT #4             ; 23BC16/C40004
L_23BC19:
        SETXVEL     #$FFE0                      ; 23BC19/B0E0FF
        SETYVEL     #$0200, WAIT #4             ; 23BC1C/C40002
L_23BC1F:
        SETXVEL     #$FFF8                      ; 23BC1F/B0F8FF
        SETYVEL     #$0100, WAIT #4             ; 23BC22/C40001
L_23BC25:
        SETYVEL     #$0080, WAIT #4             ; 23BC25/C48000
L_23BC28:
        SETYVEL     #$0020, WAIT #6             ; 23BC28/C62000
L_23BC2B:
        SETYVEL     #$0008, WAIT #15            ; 23BC2B/CF0800
L_23BC2E:
        MOV         VAR8,#$01                   ; 23BC2E/0D0801
        MOV         VAR5,#$84                   ; 23BC31/0D0584
        WAIT        #15                         ; 23BC34/060F
L_23BC36:
        ZEROVEL                                 ; 23BC36/38
        WAIT        #2                          ; 23BC37/0602
L_23BC39:
        SETYVEL     #$0200, WAIT #2             ; 23BC39/C20002
L_23BC3C:
        SETYVEL     #$0100, WAIT #2             ; 23BC3C/C20001
L_23BC3F:
        A_JSR       L_23B3FE                    ; 23BC3F/18FEB3
        SETYVEL     #$0020, WAIT #4             ; 23BC42/C42000
L_23BC45:
        MOV         VAR5,#$A4                   ; 23BC45/0D05A4
        SETXVEL     #$0020                      ; 23BC48/B02000
        SETYVEL     #$FF00                      ; 23BC4B/C000FF
        WAIT        #16                         ; 23BC4E/0610
L_23BC50:
        SETXVEL     #$0080                      ; 23BC50/B08000
        WAIT        #16                         ; 23BC53/0610
L_23BC55:
        MOV         VAR5,#$C4                   ; 23BC55/0D05C4
        SETXVEL     #$0100                      ; 23BC58/B00001
        WAIT        #16                         ; 23BC5B/0610
L_23BC5D:
        SETXVEL     #$0140                      ; 23BC5D/B04001
        WAIT        #16                         ; 23BC60/0610
L_23BC62:
        SETXVEL     #$0200                      ; 23BC62/B00002
        WAIT        #16                         ; 23BC65/0610
L_23BC67:
        SETXVEL     #$0300                      ; 23BC67/B00003
        WAIT        #40                         ; 23BC6A/0628
L_23BC6C:
        ZEROVEL                                 ; 23BC6C/38
        ASMCALL     $8F32                       ; 23BC6D/D0328F
    ENDLOOP                                 ; 23BC70/02
    ENDLOOP                                 ; 23BC71/02
    LOOP        #0                          ; 23BC72/0100
L_23BC74:
        ASMCALL     $DE4B                       ; 23BC74/D04BDE // Play sound effect
        .byte       $14                         ; 23BC77/14
        SETPOSE     #$42                        ; 23BC78/5042
        SETXVEL     #$0600                      ; 23BC7A/B00006
        SETYVEL     #$FE00, WAIT #7             ; 23BC7D/C700FE
L_23BC80:
        A_JSR       L_23B417                    ; 23BC80/1817B4
        WAIT        #1                          ; 23BC83/0601
L_23BC85:
        SETYVEL     #$FF00, WAIT #5             ; 23BC85/C500FF
L_23BC88:
        A_JSR       L_23B417                    ; 23BC88/1817B4
        WAIT        #3                          ; 23BC8B/0603
L_23BC8D:
        SETYVEL     #$FF80, WAIT #3             ; 23BC8D/C380FF
L_23BC90:
        A_JSR       L_23B417                    ; 23BC90/1817B4
        WAIT        #1                          ; 23BC93/0601
L_23BC95:
        SETYVEL     #$0080, WAIT #4             ; 23BC95/C48000
L_23BC98:
        SETYVEL     #$0100, WAIT #1             ; 23BC98/C10001
L_23BC9B:
        A_JSR       L_23B417                    ; 23BC9B/1817B4
        WAIT        #5                          ; 23BC9E/0605
L_23BCA0:
        SETYVEL     #$0200, WAIT #1             ; 23BCA0/C10002
L_23BCA3:
        A_JSR       L_23B417                    ; 23BCA3/1817B4
        WAIT        #7                          ; 23BCA6/0607
L_23BCA8:
        ZEROVEL                                 ; 23BCA8/38
        ASMCALL     $8F32                       ; 23BCA9/D0328F
    ENDLOOP                                 ; 23BCAC/02
    ENDLOOP                                 ; 23BCAD/02
    LOOP        #0                          ; 23BCAE/0100
L_23BCB0:
        SETBANK     #$22                        ; 23BCB0/2822
        ONDRAW      $DA89                       ; 23BCB2/2089DA
        ZEROVEL                                 ; 23BCB5/38
        SPRITEMAP   $3085E8                     ; 23BCB6/1AE88530
        SETPOSE     #$2A                        ; 23BCBA/502A
        WAIT        #1                          ; 23BCBC/0601
L_23BCBE:
        LOOP        #10                         ; 23BCBE/010A
            INCPOSE     WAIT #1                     ; 23BCC0/71
L_23BCC1:
        ENDLOOP                                 ; 23BCC1/02
    END                                     ; 23BCC2/00

L_23BCC3:
    ADDYPOS     #-8                         ; 23BCC3/2DF8FF
    SETPOSE     #$42                        ; 23BCC6/5042
    SETXVEL     #$0100                      ; 23BCC8/B00001
    SETYVEL     #$0200                      ; 23BCCB/C00002
    WAIT        #61                         ; 23BCCE/063D
L_23BCD0:
    ASMCALL     $DE4B                       ; 23BCD0/D04BDE // Play sound effect
    .byte       $22                         ; 23BCD3/22
    TASK        L_23BD28                    ; 23BCD4/0728BD
    A_JSR       L_23B410                    ; 23BCD7/1810B4
    A_JSR       L_23B3FE                    ; 23BCDA/18FEB3
    SETXVEL     #$0080                      ; 23BCDD/B08000
    SETYVEL     #$FC00, WAIT #8             ; 23BCE0/C800FC
L_23BCE3:
    SETYVEL     #$FE00, WAIT #8             ; 23BCE3/C800FE
L_23BCE6:
    SETYVEL     #$FF00, WAIT #8             ; 23BCE6/C800FF
L_23BCE9:
    SETYVEL     #$FF80, WAIT #8             ; 23BCE9/C880FF
L_23BCEC:
    SETYVEL     #$0080, WAIT #8             ; 23BCEC/C88000
L_23BCEF:
    SETYVEL     #$0100, WAIT #8             ; 23BCEF/C80001
L_23BCF2:
    SETYVEL     #$0200, WAIT #8             ; 23BCF2/C80002
L_23BCF5:
    SETYVEL     #$0400, WAIT #8             ; 23BCF5/C80004
L_23BCF8:
    ASMCALL     $DE4B                       ; 23BCF8/D04BDE // Play sound effect
    .byte       $55                         ; 23BCFB/55
    SPRITEMAP   $1A8000                     ; 23BCFC/1A00801A
    SETPOSE     #$24                        ; 23BD00/5024
    A_JSR       L_23B40A                    ; 23BD02/180AB4
    SETYVEL     #$FF00, WAIT #8             ; 23BD05/C800FF
L_23BD08:
    SETYVEL     #$FF80, WAIT #8             ; 23BD08/C880FF
L_23BD0B:
    SETYVEL     #$0080, WAIT #8             ; 23BD0B/C88000
L_23BD0E:
    ASMCALL     $DE4B                       ; 23BD0E/D04BDE // Play sound effect
    .byte       $05                         ; 23BD11/05
    SETYVEL     #$0100, WAIT #8             ; 23BD12/C80001
L_23BD15:
    A_JSR       L_23B40A                    ; 23BD15/180AB4
    ZEROVEL                                 ; 23BD18/38
L_23BD19:
    ASMCALL     $DE4B                       ; 23BD19/D04BDE // Play sound effect
    .byte       $FF                         ; 23BD1C/FF
    ASMCALL     $8F32                       ; 23BD1D/D0328F
    ENDLOOP                                 ; 23BD20/02
    ENDLOOP                                 ; 23BD21/02
    LOOP        #210                        ; 23BD22/01D2
        ASMCALL     $00E2, WAIT #9              ; 23BD24/D9E200
L_23BD27:
    END                                     ; 23BD27/00

L_23BD28:
    SPRITEMAP   $1C8DA6                     ; 23BD28/1AA68D1C
    LOOP        #3                          ; 23BD2C/0103
        SETPOSE     #$4A, WAIT #4               ; 23BD2E/544A
L_23BD30:
        INCPOSE     WAIT #4                     ; 23BD30/74
L_23BD31:
        INC2POSE    WAIT #4                     ; 23BD31/94
L_23BD32:
        DECPOSE     WAIT #4                     ; 23BD32/84
L_23BD33:
    ENDLOOP                                 ; 23BD33/02
    ENDTASK                                 ; 23BD34/0C

L_23BD35:
    ONDRAW      $DDAA                       ; 23BD35/20AADD
    SETZPOS     #$00FE                      ; 23BD38/3AFE00
    SPRITEMAP   $378000                     ; 23BD3B/1A008037
    ADDYPOS     #-104                       ; 23BD3F/2D98FF
    ASMCALL     $BDA6                       ; 23BD42/D0A6BD
L_23BD45:
    ASMCALL     $B0BC, WAIT #4              ; 23BD45/D4BCB0
L_23BD48:
    JNE         L_23BD45                    ; 23BD48/0B45BD
    SETYVEL     #$0200                      ; 23BD4B/C00002
    ASMCALL     $E26A                       ; 23BD4E/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 23BD51/0001
    WAIT        #61                         ; 23BD53/063D
L_23BD55:
    TASK        L_23BDC0                    ; 23BD55/07C0BD
    A_JSR       L_23B410                    ; 23BD58/1810B4
    A_JSR       L_23B3FE                    ; 23BD5B/18FEB3
    ASMCALL     $E26A                       ; 23BD5E/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 23BD61/8000
    SETYVEL     #$FC00, WAIT #8             ; 23BD63/C800FC
L_23BD66:
    SETYVEL     #$FE00, WAIT #8             ; 23BD66/C800FE
L_23BD69:
    SETYVEL     #$FF00, WAIT #8             ; 23BD69/C800FF
L_23BD6C:
    SETYVEL     #$FF80, WAIT #8             ; 23BD6C/C880FF
L_23BD6F:
    SETYVEL     #$0080, WAIT #8             ; 23BD6F/C88000
L_23BD72:
    SETYVEL     #$0100, WAIT #8             ; 23BD72/C80001
L_23BD75:
    SETYVEL     #$0200, WAIT #8             ; 23BD75/C80002
L_23BD78:
    SETYVEL     #$0400, WAIT #8             ; 23BD78/C80004
L_23BD7B:
    ASMCALL     $DE4B                       ; 23BD7B/D04BDE // Play sound effect
    .byte       $55                         ; 23BD7E/55
    A_JSR       L_23B40A                    ; 23BD7F/180AB4
    SETYVEL     #$FF00, WAIT #8             ; 23BD82/C800FF
L_23BD85:
    SETYVEL     #$FF80, WAIT #8             ; 23BD85/C880FF
L_23BD88:
    SETYVEL     #$0080, WAIT #8             ; 23BD88/C88000
L_23BD8B:
    ASMCALL     $DE4B                       ; 23BD8B/D04BDE // Play sound effect
    .byte       $05                         ; 23BD8E/05
    SETYVEL     #$0100, WAIT #8             ; 23BD8F/C80001
L_23BD92:
    ASMCALL     $DE4B                       ; 23BD92/D04BDE // Play sound effect
    .byte       $FF                         ; 23BD95/FF
    ZEROVEL                                 ; 23BD96/38
    A_JSR       L_23B40A                    ; 23BD97/180AB4
    MOV         $07DA,#$00                  ; 23BD9A/11DA0700
    MOV         $050C,#$00                  ; 23BD9E/110C0500
    JML         Script01_Kirby              ; 23BDA2/0300A014

; CODE OR DATA -- $23BDA6 .. $23BDC0
incbinRange "../split/prg/bank23.bin", $1DA6, $1DC0

L_23BDC0:
    SPRITEMAP   $1C8DA6                     ; 23BDC0/1AA68D1C
    ASMCALL     $8AE7                       ; 23BDC4/D0E78A // Get facing as 0 or 1
    JNE         L_23BDDA                    ; 23BDC7/0BDABD
    LOOP        #4                          ; 23BDCA/0104
        SETPOSE     #$4D, WAIT #4               ; 23BDCC/544D
L_23BDCE:
        SETPOSE     #$4A, WAIT #4               ; 23BDCE/544A
L_23BDD0:
        INCPOSE     WAIT #4                     ; 23BDD0/74
L_23BDD1:
        INCPOSE     WAIT #4                     ; 23BDD1/74
L_23BDD2:
    ENDLOOP                                 ; 23BDD2/02
    SPRITEMAP   $1A8000                     ; 23BDD3/1A00801A
    SETPOSE     #$24                        ; 23BDD7/5024
    ENDTASK                                 ; 23BDD9/0C

L_23BDDA:
    LOOP        #4                          ; 23BDDA/0104
        SETPOSE     #$4C, WAIT #4               ; 23BDDC/544C
L_23BDDE:
        DECPOSE     WAIT #4                     ; 23BDDE/84
L_23BDDF:
        DECPOSE     WAIT #4                     ; 23BDDF/84
L_23BDE0:
        SETPOSE     #$4D, WAIT #4               ; 23BDE0/544D
L_23BDE2:
    ENDLOOP                                 ; 23BDE2/02
    SPRITEMAP   $1A8000                     ; 23BDE3/1A00801A
    SETPOSE     #$25                        ; 23BDE7/5025
    ENDTASK                                 ; 23BDE9/0C

L_23BDEA:
    MOV         VAR1,#$40                   ; 23BDEA/0D0140
L_23BDED:
    ASMCALL     $B0BC, WAIT #4              ; 23BDED/D4BCB0
L_23BDF0:
    JNE         L_23BDED                    ; 23BDF0/0BEDBD
    SPRITEMAP   $1C8DA6                     ; 23BDF3/1AA68D1C
    ONDRAW      $DDAA                       ; 23BDF7/20AADD
    SETPOSE     #$03                        ; 23BDFA/5003
    ZEROVEL                                 ; 23BDFC/38
    SETYVEL     #$0600                      ; 23BDFD/C00006
    ONTICK      $23BE5A                     ; 23BE00/085ABE23
    HALT                                    ; 23BE04/09

L_23BE05:
    ASMCALL     Load_Palette                ; 23BE05/D061DF // Load_Palette, palette, start_index, entries
    .word       $BE39                       ; 23BE08/39BE
    .byte       $10                         ; 23BE0A/10
    .byte       $04                         ; 23BE0B/04
    MOV         $05E3,#$FF                  ; 23BE0C/11E305FF
L_23BE10:
    ASMCALL     $B0BC, WAIT #4              ; 23BE10/D4BCB0
L_23BE13:
    JNE         L_23BE10                    ; 23BE13/0B10BE
    ONDRAW      $DDAA                       ; 23BE16/20AADD
    SPRITEMAP   $378000                     ; 23BE19/1A008037
    SETPOSE     #$42                        ; 23BE1D/5042
    SETYVEL     #$0600                      ; 23BE1F/C00006
    SETXVEL     #$0080                      ; 23BE22/B08000
    MOV         VAR9,#$00                   ; 23BE25/0D0900
    MOV         VAR8,#$01                   ; 23BE28/0D0801
    MOV         VAR6,#$04                   ; 23BE2B/0D0604
    MOV         VAR5,#$F4                   ; 23BE2E/0D05F4
    MOV         VAR3,#$00                   ; 23BE31/0D0300
    ONTICK      $23BE44                     ; 23BE34/0844BE23
    HALT                                    ; 23BE38/09

; CODE OR DATA -- $23BE39 .. $23BE3D
incbinRange "../split/prg/bank23.bin", $1E39, $1E3D

L_23BE3D:
    ONTICK      $23BE57                     ; 23BE3D/0857BE23
    A_JMP       L_23BD55                    ; 23BE41/1755BD

; CODE OR DATA -- $23BE44 .. $24A000
incbinRange "../split/prg/bank23.bin", $1E44, $2000