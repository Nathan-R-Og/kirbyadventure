.segment "PRG2B": absolute
L_2BA000:
    SETBANK     #$22                        ; 2BA000/2822
    ONPOSITION  $D9BB                       ; 2BA002/21BBD9
    SPRITEMAP   L_3284CE                     ; 2BA005/1ACE8432
    ASMCALL     $84A4                       ; 2BA009/D0A484 // Store VAR1 in $0784[self]
    MOV         VAR0,#$02                   ; 2BA00C/0D0002
    MOV         VAR5,#$00                   ; 2BA00F/0D0500
    MOV         VAR3,#$01                   ; 2BA012/0D0301
    MOV         REG,#$04                    ; 2BA015/1B04
    ASMCALL     $C8DD                       ; 2BA017/D0DDC8
    JNE         L_2BA023                    ; 2BA01A/0B23A0
    MOV         VAR2,#$03                   ; 2BA01D/0D0203
    A_JMP       L_2BA026                    ; 2BA020/1726A0

L_2BA023:
    MOV         VAR2,#$01                   ; 2BA023/0D0201
L_2BA026:
    ONTICK      $2BA21D                     ; 2BA026/081DA22B
L_2BA02A:
    WAIT        #1                          ; 2BA02A/0601
L_2BA02C:
    MOV         REG,VAR2                    ; 2BA02C/1E02
    ADD         REG,#-4                     ; 2BA02E/2502FC
    JNE         L_2BA02A                    ; 2BA031/0B2AA0
    ASMCALL     $DE4B                       ; 2BA034/D04BDE // Play sound effect
    .byte       $51                         ; 2BA037/51
    HALT                                    ; 2BA038/09

L_2BA039:
    ONTICK      $2BA1F4                     ; 2BA039/08F4A12B
    SETYVEL     #$FF80                      ; 2BA03D/C080FF
L_2BA040:
    MOV         REG,VAR3                    ; 2BA040/1E03
    JEQ         L_2BA04A                    ; 2BA042/0A4AA0
    WAIT        #1                          ; 2BA045/0601
L_2BA047:
    A_JMP       L_2BA040                    ; 2BA047/1740A0

L_2BA04A:
    ONTICK      $2BA110                     ; 2BA04A/0810A12B
    ZEROVEL                                 ; 2BA04E/38
    MOV         VAR3,#$78                   ; 2BA04F/0D0378
    HALT                                    ; 2BA052/09

L_2BA053:
    ONTICK      $2BA0E3                     ; 2BA053/08E3A02B
    SETXVEL     #$0000                      ; 2BA057/B00000
L_2BA05A:
    MOV         REG,VAR3                    ; 2BA05A/1E03
    JNE         L_2BA064                    ; 2BA05C/0B64A0
    WAIT        #1                          ; 2BA05F/0601
L_2BA061:
    A_JMP       L_2BA05A                    ; 2BA061/175AA0

L_2BA064:
    MOV         REG,VAR5                    ; 2BA064/1E05
    JNE         L_2BA070                    ; 2BA066/0B70A0
    MOV         VAR5,#$01                   ; 2BA069/0D0501
    ONTICK      $2BA08E                     ; 2BA06C/088EA02B
L_2BA070:
    HALT                                    ; 2BA070/09

; CODE OR DATA -- $2BA071 .. $2BA083
incbinRange "../split/prg/bank2b.bin", $0071, $0083

L_2BA083:
    SETPOSE     #$00                        ; 2BA083/5000
    A_JMP       $8003                       ; 2BA085/170380

; CODE OR DATA -- $2BA088 .. $2BA389
incbinRange "../split/prg/bank2b.bin", $0088, $0389

Script17_Flamer:
    SETBANK     #$22                        ; 2BA389/2822
    ONPOSITION  $D9BB                       ; 2BA38B/21BBD9
    SPRITEMAP   L_3083D5                     ; 2BA38E/1AD58330
    ASMCALL     $84A4                       ; 2BA392/D0A484 // Store VAR1 in $0784[self]
    ASMCALL     $A50A                       ; 2BA395/D00AA5
    MOV         VAR0,#$02                   ; 2BA398/0D0002
    MOV         VAR3,#$01                   ; 2BA39B/0D0301
    MOV         VAR5,#$00                   ; 2BA39E/0D0500
    SETPOSE     #$00                        ; 2BA3A1/5000
    MOV         VAR6,#$00                   ; 2BA3A3/0D0600
    ASMCALL     $A519                       ; 2BA3A6/D019A5
    MOV         REG,VAR6                    ; 2BA3A9/1E06
    JNE         L_2BA3BC                    ; 2BA3AB/0BBCA3
L_2BA3AE:
    MOV         VAR2,#$00                   ; 2BA3AE/0D0200
    MOV         VAR6,#$02                   ; 2BA3B1/0D0602
    ONTICK      $2BA6AC                     ; 2BA3B4/08ACA62B
    ZEROVEL                                 ; 2BA3B8/38
    SETPOSE     #$00                        ; 2BA3B9/5000
    HALT                                    ; 2BA3BB/09

L_2BA3BC:
    ONTICK      $2BA6F3                     ; 2BA3BC/08F3A62B
    ZEROVEL                                 ; 2BA3C0/38
L_2BA3C1:
    SETPOSE     #$00                        ; 2BA3C1/5000
    ASMCALL     $8BE4                       ; 2BA3C3/D0E48B // Unknown ASM $228BE4
    .word       $A4F7                       ; 2BA3C6/F7A4
L_2BA3C8:
    INCPOSE                                 ; 2BA3C8/70
    ASMCALL     $8BE4                       ; 2BA3C9/D0E48B // Unknown ASM $228BE4
    .word       $A4F7                       ; 2BA3CC/F7A4
L_2BA3CE:
    A_JMP       L_2BA3C1                    ; 2BA3CE/17C1A3

; CODE OR DATA -- $2BA3D1 .. $2BA3DC
incbinRange "../split/prg/bank2b.bin", $03D1, $03DC

L_2BA3DC:
    ONTICK      $2BAA13                     ; 2BA3DC/0813AA2B
    ASMCALL     $8851                       ; 2BA3E0/D05188 // Face towards Kirby
    ASMCALL     $8CAA                       ; 2BA3E3/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0080                       ; 2BA3E6/8000
    SETPOSE     #$00                        ; 2BA3E8/5000
    SETYVEL     #$FD00, WAIT #8             ; 2BA3EA/C800FD
L_2BA3ED:
    SETPOSE     #$02                        ; 2BA3ED/5002
    SETYVEL     #$FE00, WAIT #8             ; 2BA3EF/C800FE
L_2BA3F2:
    SETPOSE     #$03                        ; 2BA3F2/5003
    SETYVEL     #$FE80, WAIT #8             ; 2BA3F4/C880FE
L_2BA3F7:
    ONTICK      $2BAA13                     ; 2BA3F7/0813AA2B
    SETYVEL     #$FF00                      ; 2BA3FB/C000FF
    SETPOSE     #$04, WAIT #6               ; 2BA3FE/5604
L_2BA400:
    SETYVEL     #$FF4D                      ; 2BA400/C04DFF
    SETPOSE     #$05, WAIT #6               ; 2BA403/5605
L_2BA405:
    SETYVEL     #$FF9A                      ; 2BA405/C09AFF
    SETPOSE     #$06, WAIT #6               ; 2BA408/5606
L_2BA40A:
    SETYVEL     #$0000                      ; 2BA40A/C00000
    SETPOSE     #$04, WAIT #6               ; 2BA40D/5604
L_2BA40F:
    LOOP        #5                          ; 2BA40F/0105
        SETPOSE     #$04, WAIT #2               ; 2BA411/5204
L_2BA413:
        SETPOSE     #$07, WAIT #1               ; 2BA413/5107
L_2BA415:
        SETPOSE     #$05, WAIT #2               ; 2BA415/5205
L_2BA417:
        SETPOSE     #$08, WAIT #1               ; 2BA417/5108
L_2BA419:
        SETPOSE     #$06, WAIT #2               ; 2BA419/5206
L_2BA41B:
        SETPOSE     #$09, WAIT #1               ; 2BA41B/5109
L_2BA41D:
    ENDLOOP                                 ; 2BA41D/02
    ONTICK      $2BA618                     ; 2BA41E/0818A62B
L_2BA422:
    ASMCALL     $868D                       ; 2BA422/D08D86
    MOV         VAR2,#$01                   ; 2BA425/0D0201
L_2BA428:
    SETPOSE     #$06                        ; 2BA428/5006
    LOOP        #4                          ; 2BA42A/0104
        INCPOSE     WAIT #1                     ; 2BA42C/71
L_2BA42D:
    ENDLOOP                                 ; 2BA42D/02
    A_JMP       L_2BA428                    ; 2BA42E/1728A4

L_2BA431:
    ONTICK      $2BA57D                     ; 2BA431/087DA52B
    ASMCALL     $8851                       ; 2BA435/D05188 // Face towards Kirby
    SETYVEL     #$0000                      ; 2BA438/C00000
    SETPOSE     #$06                        ; 2BA43B/5006
    ASMCALL     $8CAA                       ; 2BA43D/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FE80                       ; 2BA440/80FE
    LOOP        #4                          ; 2BA442/0104
        INCPOSE     WAIT #2                     ; 2BA444/72
L_2BA445:
    ENDLOOP                                 ; 2BA445/02
    SETPOSE     #$06                        ; 2BA446/5006
    ASMCALL     $8CAA                       ; 2BA448/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $FF40                       ; 2BA44B/40FF
    LOOP        #4                          ; 2BA44D/0104
        INCPOSE     WAIT #2                     ; 2BA44F/72
L_2BA450:
    ENDLOOP                                 ; 2BA450/02
    ASMCALL     $DE4B                       ; 2BA451/D04BDE // Play sound effect
    .byte       $3E                         ; 2BA454/3E
    ASMCALL     $8CAA                       ; 2BA455/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
    .word       $0400                       ; 2BA458/0004
L_2BA45A:
    SETPOSE     #$06                        ; 2BA45A/5006
    LOOP        #4                          ; 2BA45C/0104
        ASMCALL     $92B1                       ; 2BA45E/D0B192
        JNE         L_2BA469                    ; 2BA461/0B69A4
        INCPOSE     WAIT #1                     ; 2BA464/71
L_2BA465:
    ENDLOOP                                 ; 2BA465/02
    A_JMP       L_2BA45A                    ; 2BA466/175AA4

L_2BA469:
    LOOP        #3                          ; 2BA469/0103
        SETPOSE     #$06                        ; 2BA46B/5006
        LOOP        #4                          ; 2BA46D/0104
            INCPOSE     WAIT #1                     ; 2BA46F/71
L_2BA470:
        ENDLOOP                                 ; 2BA470/02
    ENDLOOP                                 ; 2BA471/02
    ASMCALL     $9340                       ; 2BA472/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0300                       ; 2BA475/0003
    .word       $FF00                       ; 2BA477/00FF
    SETPOSE     #$07, WAIT #2               ; 2BA479/5207
L_2BA47B:
    SETPOSE     #$08, WAIT #2               ; 2BA47B/5208
L_2BA47D:
    SETPOSE     #$09, WAIT #2               ; 2BA47D/5209
L_2BA47F:
    ASMCALL     $9340                       ; 2BA47F/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0200                       ; 2BA482/0002
    .word       $FE00                       ; 2BA484/00FE
    SETPOSE     #$0A, WAIT #2               ; 2BA486/520A
L_2BA488:
    SETPOSE     #$07, WAIT #2               ; 2BA488/5207
L_2BA48A:
    SETPOSE     #$08, WAIT #2               ; 2BA48A/5208
L_2BA48C:
    ASMCALL     $9340                       ; 2BA48C/D04093 // Set X velocity to `arg1` (respect facing) and Y velocity to `arg2`
    .word       $0100                       ; 2BA48F/0001
    .word       $FD00                       ; 2BA491/00FD
    SETPOSE     #$09, WAIT #2               ; 2BA493/5209
L_2BA495:
    SETPOSE     #$0A, WAIT #2               ; 2BA495/520A
L_2BA497:
    SETPOSE     #$07, WAIT #2               ; 2BA497/5207
L_2BA499:
    MOV         REG,VAR5                    ; 2BA499/1E05
    JNE         L_2BA4BE                    ; 2BA49B/0BBEA4
    SETXVEL     #$0000                      ; 2BA49E/B00000
    SETYVEL     #$FE00                      ; 2BA4A1/C000FE
    SETPOSE     #$08, WAIT #2               ; 2BA4A4/5208
L_2BA4A6:
    SETPOSE     #$09, WAIT #2               ; 2BA4A6/5209
L_2BA4A8:
    SETPOSE     #$0A, WAIT #2               ; 2BA4A8/520A
L_2BA4AA:
    SETYVEL     #$FF00                      ; 2BA4AA/C000FF
    SETPOSE     #$07, WAIT #2               ; 2BA4AD/5207
L_2BA4AF:
    SETPOSE     #$08, WAIT #2               ; 2BA4AF/5208
L_2BA4B1:
    SETPOSE     #$09, WAIT #2               ; 2BA4B1/5209
L_2BA4B3:
    ONTICK      $2BA59A                     ; 2BA4B3/089AA52B
    ZEROVEL                                 ; 2BA4B7/38
    MOV         VAR5,#$01                   ; 2BA4B8/0D0501
    A_JMP       L_2BA422                    ; 2BA4BB/1722A4

L_2BA4BE:
    SETPOSE     #$08, WAIT #2               ; 2BA4BE/5208
    SETPOSE     #$09, WAIT #2               ; 2BA4C0/5209
    SETPOSE     #$0A, WAIT #2               ; 2BA4C2/520A
L_2BA4C4:
    SETPOSE     #$06                        ; 2BA4C4/5006
    LOOP        #4                          ; 2BA4C6/0104
        INCPOSE     WAIT #2                     ; 2BA4C8/72
    ENDLOOP                                 ; 2BA4C9/02
    A_JMP       L_2BA4C4                    ; 2BA4CA/17C4A4

L_2BA4CD:
    ONTICK      $2BAA13                     ; 2BA4CD/0813AA2B
    MOV         VAR9,#$14                   ; 2BA4D1/0D0914
    ZEROVEL                                 ; 2BA4D4/38
    LOOP        #5                          ; 2BA4D5/0105
        SETPOSE     #$04, WAIT #2               ; 2BA4D7/5204
L_2BA4D9:
        SETPOSE     #$07, WAIT #1               ; 2BA4D9/5107
L_2BA4DB:
        SETPOSE     #$05, WAIT #2               ; 2BA4DB/5205
L_2BA4DD:
        SETPOSE     #$08, WAIT #1               ; 2BA4DD/5108
L_2BA4DF:
        SETPOSE     #$06, WAIT #2               ; 2BA4DF/5206
L_2BA4E1:
        SETPOSE     #$09, WAIT #1               ; 2BA4E1/5109
L_2BA4E3:
    ENDLOOP                                 ; 2BA4E3/02
    SETPOSE     #$04, WAIT #6               ; 2BA4E4/5604
L_2BA4E6:
    SETPOSE     #$05, WAIT #6               ; 2BA4E6/5605
L_2BA4E8:
    SETPOSE     #$06, WAIT #6               ; 2BA4E8/5606
L_2BA4EA:
    SETPOSE     #$04, WAIT #6               ; 2BA4EA/5604
L_2BA4EC:
    SETPOSE     #$00, WAIT #8               ; 2BA4EC/5800
L_2BA4EE:
    SETPOSE     #$02, WAIT #8               ; 2BA4EE/5802
L_2BA4F0:
    SETPOSE     #$03, WAIT #8               ; 2BA4F0/5803
L_2BA4F2:
    SETPOSE     #$00, WAIT #8               ; 2BA4F2/5800
L_2BA4F4:
    A_JMP       L_2BA3AE                    ; 2BA4F4/17AEA3

; CODE OR DATA -- $2BA4F7 .. $2BAA3E
incbinRange "../split/prg/bank2b.bin", $04F7, $0A3E

Script23_Rocky:
    SETBANK     #$22                        ; 2BAA3E/2822
    ONPOSITION  $D9BB                       ; 2BAA40/21BBD9
    SPRITEMAP   L_328526                     ; 2BAA43/1A268532
    MOV         VAR0,#$02                   ; 2BAA47/0D0002
    ASMCALL     $8851                       ; 2BAA4A/D05188 // Face towards Kirby
    SETYVEL     #$0000                      ; 2BAA4D/C00000
    MOV         VAR5,#$00                   ; 2BAA50/0D0500
L_2BAA53:
    ONTICK      $2BAB2F                     ; 2BAA53/082FAB2B
    ASMCALL     $8829                       ; 2BAA57/D02988 // Set pose to 0 (respect facing)
    LOOP        #2                          ; 2BAA5A/0102
        ASMCALL     $8CAA, WAIT #4              ; 2BAA5C/D4AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $0200                       ; 2BAA5F/0002
L_2BAA61:
        ASMCALL     $8CAA, WAIT #4              ; 2BAA61/D4AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $0100                       ; 2BAA64/0001
L_2BAA66:
        SETXVEL     #$0000                      ; 2BAA66/B00000
        WAIT        #51                         ; 2BAA69/0633
L_2BAA6B:
        ASMCALL     $8CAA                       ; 2BAA6B/D0AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $0100                       ; 2BAA6E/0001
        INC2POSE    WAIT #4                     ; 2BAA70/94
L_2BAA71:
        ASMCALL     $8CAA, WAIT #4              ; 2BAA71/D4AA8C // Set X velocity, respect facing (negative to "walk backwards")
        .word       $0080                       ; 2BAA74/8000
L_2BAA76:
        SETXVEL     #$0000                      ; 2BAA76/B00000
        WAIT        #51                         ; 2BAA79/0633
L_2BAA7B:
        DEC2POSE                                ; 2BAA7B/A0
    ENDLOOP                                 ; 2BAA7C/02
L_2BAA7D:
    ONTICK      $2BAB08                     ; 2BAA7D/0808AB2B
    ASMCALL     $8C53                       ; 2BAA81/D0538C // Set pose (respect facing)
    .byte       $04                         ; 2BAA84/04
    LOOP        #6                          ; 2BAA85/0106
        WAIT        #32                         ; 2BAA87/0620
L_2BAA89:
        INC2POSE    WAIT #8                     ; 2BAA89/98
L_2BAA8A:
        DEC2POSE                                ; 2BAA8A/A0
    ENDLOOP                                 ; 2BAA8B/02
    MOV         REG,VAR2                    ; 2BAA8C/1E02
    JEQ         L_2BAA94                    ; 2BAA8E/0A94AA
    ASMCALL     $8851                       ; 2BAA91/D05188 // Face towards Kirby
L_2BAA94:
    ASMCALL     $8829                       ; 2BAA94/D02988 // Set pose to 0 (respect facing)
    WAIT        #32                         ; 2BAA97/0620
    A_JMP       L_2BAA53                    ; 2BAA99/1753AA

; CODE OR DATA -- $2BAA9C .. $2BAAC0
incbinRange "../split/prg/bank2b.bin", $0A9C, $0AC0

L_2BAAC0:
    ONTICK      $2BABBA                     ; 2BAAC0/08BAAB2B
    ASMCALL     $8C53                       ; 2BAAC4/D0538C // Set pose (respect facing)
    .byte       $04                         ; 2BAAC7/04
    SETXVEL     #$0000                      ; 2BAAC8/B00000
    SETYVEL     #$0400                      ; 2BAACB/C00004
L_2BAACE:
    WAIT        #1                          ; 2BAACE/0601
L_2BAAD0:
    ADDPOSE     #4, WAIT #1                 ; 2BAAD0/6104
L_2BAAD2:
    ADDPOSE     #-4                         ; 2BAAD2/60FC
    A_JMP       L_2BAACE                    ; 2BAAD4/17CEAA

L_2BAAD7:
    ONTICK      $2BABD3                     ; 2BAAD7/08D3AB2B
    ASMCALL_l   $219952                     ; 2BAADB/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2BAADF/00
    .byte       $00                         ; 2BAAE0/00
    .byte       $0C                         ; 2BAAE1/0C
    .byte       $00                         ; 2BAAE2/00
    ZEROVEL                                 ; 2BAAE3/38
    ASMCALL     $8C53                       ; 2BAAE4/D0538C // Set pose (respect facing)
    .byte       $06                         ; 2BAAE7/06
    LOOP        #20                         ; 2BAAE8/0114
        DEC2POSE    WAIT #1                     ; 2BAAEA/A1
L_2BAAEB:
        INC2POSE    WAIT #1                     ; 2BAAEB/91
L_2BAAEC:
    ENDLOOP                                 ; 2BAAEC/02
    A_JMP       L_2BAA7D                    ; 2BAAED/177DAA

L_2BAAF0:
    ASMCALL     $AAF6                       ; 2BAAF0/D0F6AA
    A_JMP       $8003                       ; 2BAAF3/170380

; CODE OR DATA -- $2BAAF6 .. $2BABFF
incbinRange "../split/prg/bank2b.bin", $0AF6, $0BFF

Script42_MetaKnightBoss:
    SETBANK     #$22                        ; 2BABFF/2822
    ONPOSITION  $D97D                       ; 2BAC01/217DD9
    MOV         REG,VAR0                    ; 2BAC04/1E00
    TABLEJMP    #5                          ; 2BAC06/0F05
    .word       L_2BAC12                    ; 2BAC08/12AC
    .word       L_2BBA14                    ; 2BAC0A/14BA
    .word       L_2BBB33                    ; 2BAC0C/33BB
    .word       L_2BBBEF                    ; 2BAC0E/EFBB
    .word       L_2BBBF5                    ; 2BAC10/F5BB
L_2BAC12:
    MOV         $0043,#$A4                  ; 2BAC12/114300A4
    SPRITEMAP   L_318000                     ; 2BAC16/1A008031
    MOV         VAR0,#$00                   ; 2BAC1A/0D0000
    ASMCALL     $AC4D                       ; 2BAC1D/D04DAC // Set on-screen position to (0xE4, 0x30)
    SETPOSE     #$00                        ; 2BAC20/5000
    ASMCALL     $DED0                       ; 2BAC22/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2BAC25/09
    .byte       $12                         ; 2BAC26/12
    .byte       $05                         ; 2BAC27/05
    .byte       $00                         ; 2BAC28/00
    .byte       $00                         ; 2BAC29/00
    .byte       $00                         ; 2BAC2A/00
    .byte       $05                         ; 2BAC2B/05
    .byte       $00                         ; 2BAC2C/00
    MOV         VAR3,REG                    ; 2BAC2D/1D03
    ONTICK      $2BAC34                     ; 2BAC2F/0834AC2B
L_2BAC33:
    HALT                                    ; 2BAC33/09

; CODE OR DATA -- $2BAC34 .. $2BAC6E
incbinRange "../split/prg/bank2b.bin", $0C34, $0C6E

SCR42_MetaKnightFight:
    TASK        L_2BACA6                    ; 2BAC6E/07A6AC
    WAIT        #40                         ; 2BAC71/0628
L_2BAC73:
    INCPOSE     WAIT #5                     ; 2BAC73/75
L_2BAC74:
    INCPOSE     WAIT #5                     ; 2BAC74/75
L_2BAC75:
    INCPOSE     WAIT #5                     ; 2BAC75/75
L_2BAC76:
    INCPOSE     WAIT #6                     ; 2BAC76/76
L_2BAC77:
    SETPOSE     #$09                        ; 2BAC77/5009
    WAIT        #40                         ; 2BAC79/0628
L_2BAC7B:
    SETPOSE     #$06, WAIT #2               ; 2BAC7B/5206
L_2BAC7D:
    INCPOSE     WAIT #2                     ; 2BAC7D/72
L_2BAC7E:
    SETPOSE     #$09                        ; 2BAC7E/5009
    WAIT        #24                         ; 2BAC80/0618
L_2BAC82:
    MOV         VAR5,#$00                   ; 2BAC82/0D0500
    MOV         $078B,#$00                  ; 2BAC85/118B0700
    MOV         $078A,#$00                  ; 2BAC89/118A0700
    MOV         $07A9,#$00                  ; 2BAC8D/11A90700
    MOV         $0788,#$00                  ; 2BAC91/11880700
    ASMCALL     $DED0                       ; 2BAC95/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2BAC98/09
    .byte       $12                         ; 2BAC99/12
    .byte       $42                         ; 2BAC9A/42
    .byte       $00                         ; 2BAC9B/00
    .byte       $00                         ; 2BAC9C/00
    .byte       $00                         ; 2BAC9D/00
    .byte       $01                         ; 2BAC9E/01
    .byte       $00                         ; 2BAC9F/00
    MOV         VAR1,#$C0                   ; 2BACA0/0D01C0
    A_JMP       L_2BAD0B                    ; 2BACA3/170BAD

L_2BACA6:
    A_JSR       $8452                       ; 2BACA6/185284
    ENDTASK                                 ; 2BACA9/0C

MST0D_JumpUpAirSlash:
    ASMCALL     $B61B                       ; 2BACAA/D01BB6 // Face towards Kirby, set random state transition timer and store 0x00 to $0786
    MOV         VAR6,#$00                   ; 2BACAD/0D0600
L_2BACB0:
    ONTICK      $2BB113                     ; 2BACB0/0813B12B
    MOV         $0789,#$00                  ; 2BACB4/11890700
    MOV         $0788,#$00                  ; 2BACB8/11880700
L_2BACBC:
    ASMCALL     $B55C                       ; 2BACBC/D05CB5 // Set Meta Knight's walking pose
L_2BACBF:
    A_JMP       L_2BACBC                    ; 2BACBF/17BCAC

MST01_Retreat:
    ASMCALL     $B5EF                       ; 2BACC2/D0EFB5 // Change Meta Knight's walking direction, set random state transition timer and store 0x00 to $0786
    A_JMP       L_2BACB0                    ; 2BACC5/17B0AC

L_2BACC8:
    ASMCALL     $B609                       ; 2BACC8/D009B6 // Set random state transition timer and store 0x02 to $0786
    A_JMP       L_2BACB0                    ; 2BACCB/17B0AC

MST00_Rest:
    ASMCALL     $B665                       ; 2BACCE/D065B6 // Set state transition timer to 48 frames and store 0x00 to $0786
    A_JMP       L_2BACB0                    ; 2BACD1/17B0AC

L_2BACD4:
    ASMCALL     $B632                       ; 2BACD4/D032B6 // Set random state transition timer and store 0x00 to $0786
    A_JMP       L_2BACB0                    ; 2BACD7/17B0AC

MST06_Walk:
    ONTICK      $2BB290                     ; 2BACDA/0890B22B
    ASMCALL     $B678                       ; 2BACDE/D078B6
    ASMCALL     $E26A                       ; 2BACE1/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 2BACE4/0001
    A_JMP       L_2BACBC                    ; 2BACE6/17BCAC

MST0C_JumpForwardAirSlash:
    ASMCALL     $8851                       ; 2BACE9/D05188 // Face towards Kirby
    ASMCALL     $E26A                       ; 2BACEC/D06AE2 // Set X velocity (respect facing)
    .word       $0180                       ; 2BACEF/8001
    MOV         VAR3,#$07                   ; 2BACF1/0D0307
    A_JMP       L_2BAD13                    ; 2BACF4/1713AD

MST13_Unknown:
    ASMCALL     $8851                       ; 2BACF7/D05188 // Face towards Kirby
    ZEROVEL                                 ; 2BACFA/38
    MOV         VAR3,#$09                   ; 2BACFB/0D0309
    A_JMP       L_2BAD13                    ; 2BACFE/1713AD

MST05_JumpUp:
    ASMCALL     $8851                       ; 2BAD01/D05188 // Face towards Kirby
    ZEROVEL                                 ; 2BAD04/38
    A_JMP       L_2BAD10                    ; 2BAD05/1710AD

MST04_JumpForward:
    ASMCALL     $8851                       ; 2BAD08/D05188 // Face towards Kirby
L_2BAD0B:
    ASMCALL     $E26A                       ; 2BAD0B/D06AE2 // Set X velocity (respect facing)
    .word       $0180                       ; 2BAD0E/8001
L_2BAD10:
    MOV         VAR3,#$00                   ; 2BAD10/0D0300
L_2BAD13:
    ASMCALL     $DE4B                       ; 2BAD13/D04BDE // Play sound effect
    .byte       $23                         ; 2BAD16/23
    MOV         VAR2,#$00                   ; 2BAD17/0D0200
    ONTICK      $2BB2B5                     ; 2BAD1A/08B5B22B
    SETYVEL     #$FD00                      ; 2BAD1E/C000FD
    ASMCALL     $8C53, WAIT #4              ; 2BAD21/D4538C // Set pose (respect facing)
    .byte       $32                         ; 2BAD24/32
L_2BAD25:
    INC2POSE    WAIT #15                    ; 2BAD25/9F
L_2BAD26:
    INC2POSE    WAIT #9                     ; 2BAD26/99
L_2BAD27:
    INC2POSE    WAIT #6                     ; 2BAD27/96
L_2BAD28:
    INC2POSE    WAIT #5                     ; 2BAD28/95
L_2BAD29:
    ADDPOSE     #-6                         ; 2BAD29/60FA
    HALT                                    ; 2BAD2B/09

MST14_Unknown:
    ONTICK      $2BB2E6                     ; 2BAD2C/08E6B22B
    ZEROVEL                                 ; 2BAD30/38
    ASMCALL     $8C53                       ; 2BAD31/D0538C // Set pose (respect facing)
    .byte       $34                         ; 2BAD34/34
    HALT                                    ; 2BAD35/09

MST15_LandStrikeDown:
    ASMCALL_l   $219952                     ; 2BAD36/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2BAD3A/00
    .byte       $00                         ; 2BAD3B/00
    .byte       $15                         ; 2BAD3C/15
    .byte       $00                         ; 2BAD3D/00
    A_JMP       L_2BAD45                    ; 2BAD3E/1745AD

MST0A_Landing:
    ASMCALL     $DE4B                       ; 2BAD41/D04BDE // Play sound effect
    .byte       $22                         ; 2BAD44/22
L_2BAD45:
    ONTICK      $2BB2F7                     ; 2BAD45/08F7B22B
    ZEROVEL                                 ; 2BAD49/38
    ASMCALL     $8C53, WAIT #12             ; 2BAD4A/DC538C // Set pose (respect facing)
    .byte       $32                         ; 2BAD4D/32
L_2BAD4E:
    ASMCALL     $8C53                       ; 2BAD4E/D0538C // Set pose (respect facing)
    .byte       $08                         ; 2BAD51/08
    WAIT        #56                         ; 2BAD52/0638
L_2BAD54:
    MOV         REG,$0786                   ; 2BAD54/1C8607
    JEQ         MST0D_JumpUpAirSlash        ; 2BAD57/0AAAAC
    A_JMP       L_2BACD4                    ; 2BAD5A/17D4AC

MST02_DoubleSlashUp:
    ONTICK      $2BB2FB                     ; 2BAD5D/08FBB22B
    ZEROVEL                                 ; 2BAD61/38
    A_JSR       L_2BAD8E                    ; 2BAD62/188EAD
    MOV         REG,$0786                   ; 2BAD65/1C8607
    JEQ         MST0D_JumpUpAirSlash        ; 2BAD68/0AAAAC
    A_JMP       L_2BACD4                    ; 2BAD6B/17D4AC

MST0B_Unknown:
    ONTICK      $2BB2FB                     ; 2BAD6E/08FBB22B
    ZEROVEL                                 ; 2BAD72/38
    A_JSR       L_2BAD8E                    ; 2BAD73/188EAD
    A_JSR       L_2BAD8E                    ; 2BAD76/188EAD
    MOV         REG,$0786                   ; 2BAD79/1C8607
    JEQ         MST0D_JumpUpAirSlash        ; 2BAD7C/0AAAAC
    A_JMP       L_2BACD4                    ; 2BAD7F/17D4AC

MST07_AirSlash:
    ONTICK      $2BB2FF                     ; 2BAD82/08FFB22B
    A_JSR       L_2BAD8E                    ; 2BAD86/188EAD
    ASMCALL     $8C53                       ; 2BAD89/D0538C // Set pose (respect facing)
    .byte       $34                         ; 2BAD8C/34
    HALT                                    ; 2BAD8D/09

L_2BAD8E:
    MOV         VAR2,#$01                   ; 2BAD8E/0D0201
L_2BAD91:
    ASMCALL     $DE4B                       ; 2BAD91/D04BDE // Play sound effect
    .byte       $3A                         ; 2BAD94/3A
    ASMCALL     $8C53, WAIT #4              ; 2BAD95/D4538C // Set pose (respect facing)
    .byte       $2E                         ; 2BAD98/2E
L_2BAD99:
    ADDPOSE     #32, WAIT #2                ; 2BAD99/6220
L_2BAD9B:
    INC2POSE    WAIT #2                     ; 2BAD9B/92
L_2BAD9C:
    ADDPOSE     #4, WAIT #2                 ; 2BAD9C/6204
L_2BAD9E:
    INC2POSE    WAIT #4                     ; 2BAD9E/94
L_2BAD9F:
    INC2POSE    WAIT #6                     ; 2BAD9F/96
L_2BADA0:
    MOV         REG,VAR2                    ; 2BADA0/1E02
    JEQ         L_2BADAE                    ; 2BADA2/0AAEAD
    MOV         VAR2,#$00                   ; 2BADA5/0D0200
    ASMCALL     $8A6C                       ; 2BADA8/D06C8A
    JNE         L_2BAD91                    ; 2BADAB/0B91AD
L_2BADAE:
    A_RTS                                   ; 2BADAE/19

MST08_SpinSlash:
    ONTICK      $2BB2FF                     ; 2BADAF/08FFB22B
    ASMCALL     $8AE7                       ; 2BADB3/D0E78A // Get facing as 0 or 1
    JNE         L_2BADC6                    ; 2BADB6/0BC6AD
L_2BADB9:
    ASMCALL     $DE4B                       ; 2BADB9/D04BDE // Play sound effect
    .byte       $3A                         ; 2BADBC/3A
    SETPOSE     #$3E, WAIT #1               ; 2BADBD/513E
L_2BADBF:
    LOOP        #7                          ; 2BADBF/0107
        INCPOSE     WAIT #1                     ; 2BADC1/71
L_2BADC2:
    ENDLOOP                                 ; 2BADC2/02
    A_JMP       L_2BADB9                    ; 2BADC3/17B9AD

L_2BADC6:
    SETPOSE     #$45, WAIT #1               ; 2BADC6/5145
L_2BADC8:
    LOOP        #7                          ; 2BADC8/0107
        DECPOSE     WAIT #1                     ; 2BADCA/81
L_2BADCB:
    ENDLOOP                                 ; 2BADCB/02
    A_JMP       L_2BADC6                    ; 2BADCC/17C6AD

MST09_StrikeDown:
    ZEROVEL                                 ; 2BADCF/38
    SETPOSE     #$3D                        ; 2BADD0/503D
    WAIT        #32                         ; 2BADD2/0620
L_2BADD4:
    SETYVEL     #$0200                      ; 2BADD4/C00002
    ONTICK      $2BB31C                     ; 2BADD7/081CB32B
    HALT                                    ; 2BADDB/09

MST03_Charge:
    ONTICK      $2BB334                     ; 2BADDC/0834B32B
    ASMCALL     $8851                       ; 2BADE0/D05188 // Face towards Kirby
L_2BADE3:
    ASMCALL     $8C53, WAIT #4              ; 2BADE3/D4538C // Set pose (respect facing)
    .byte       $0E                         ; 2BADE6/0E
L_2BADE7:
    DEC2POSE    WAIT #2                     ; 2BADE7/A2
L_2BADE8:
    DEC2POSE    WAIT #4                     ; 2BADE8/A4
L_2BADE9:
    INC2POSE    WAIT #2                     ; 2BADE9/92
L_2BADEA:
    INC2POSE    WAIT #4                     ; 2BADEA/94
L_2BADEB:
    INC2POSE    WAIT #2                     ; 2BADEB/92
L_2BADEC:
    INC2POSE    WAIT #4                     ; 2BADEC/94
    DEC2POSE    WAIT #2                     ; 2BADED/A2
    A_JMP       L_2BADE3                    ; 2BADEE/17E3AD

MST0E_Slash:
    ASMCALL     $DE4B                       ; 2BADF1/D04BDE // Play sound effect
    .byte       $3A                         ; 2BADF4/3A
    ONTICK      $2BB359                     ; 2BADF5/0859B32B
    ZEROVEL                                 ; 2BADF9/38
    MOV         VAR2,#$FF                   ; 2BADFA/0D02FF
    ASMCALL     $8C53, WAIT #4              ; 2BADFD/D4538C // Set pose (respect facing)
    .byte       $08                         ; 2BAE00/08
L_2BAE01:
    ADDPOSE     #16, WAIT #8                ; 2BAE01/6810
L_2BAE03:
    INC2POSE    WAIT #1                     ; 2BAE03/91
L_2BAE04:
    INC2POSE    WAIT #1                     ; 2BAE04/91
L_2BAE05:
    INC2POSE    WAIT #1                     ; 2BAE05/91
L_2BAE06:
    INC2POSE    WAIT #1                     ; 2BAE06/91
L_2BAE07:
    INC2POSE    WAIT #2                     ; 2BAE07/92
L_2BAE08:
    INC2POSE    WAIT #1                     ; 2BAE08/91
L_2BAE09:
    INC2POSE    WAIT #3                     ; 2BAE09/93
L_2BAE0A:
    INC2POSE    WAIT #4                     ; 2BAE0A/94
L_2BAE0B:
    INC2POSE    WAIT #4                     ; 2BAE0B/94
L_2BAE0C:
    ASMCALL     $8C53                       ; 2BAE0C/D0538C // Set pose (respect facing)
    .byte       $08                         ; 2BAE0F/08
    WAIT        #48                         ; 2BAE10/0630
L_2BAE12:
    A_JMP       L_2BACC8                    ; 2BAE12/17C8AC

MST0F_TripleSlash:
    ONTICK      $2BB359                     ; 2BAE15/0859B32B
    ZEROVEL                                 ; 2BAE19/38
    MOV         VAR2,#$FF                   ; 2BAE1A/0D02FF
    LOOP        #3                          ; 2BAE1D/0103
        ASMCALL     $DE4B                       ; 2BAE1F/D04BDE // Play sound effect
        .byte       $3A                         ; 2BAE22/3A
        ASMCALL     $8C53, WAIT #1              ; 2BAE23/D1538C // Set pose (respect facing)
        .byte       $18                         ; 2BAE26/18
L_2BAE27:
        INC2POSE    WAIT #1                     ; 2BAE27/91
L_2BAE28:
        INC2POSE    WAIT #1                     ; 2BAE28/91
L_2BAE29:
        ADDPOSE     #4, WAIT #1                 ; 2BAE29/6104
L_2BAE2B:
        INC2POSE    WAIT #1                     ; 2BAE2B/91
L_2BAE2C:
        ADDPOSE     #4, WAIT #2                 ; 2BAE2C/6204
L_2BAE2E:
        ADDPOSE     #-4, WAIT #1                ; 2BAE2E/61FC
L_2BAE30:
        DEC2POSE    WAIT #1                     ; 2BAE30/A1
L_2BAE31:
        ADDPOSE     #-4, WAIT #1                ; 2BAE31/61FC
L_2BAE33:
        DEC2POSE    WAIT #1                     ; 2BAE33/A1
L_2BAE34:
    ENDLOOP                                 ; 2BAE34/02
    ADDPOSE     #12, WAIT #15               ; 2BAE35/6F0C
    ASMCALL     $8C53                       ; 2BAE37/D0538C // Set pose (respect facing)
    .byte       $08                         ; 2BAE3A/08
    WAIT        #48                         ; 2BAE3B/0630
    A_JMP       L_2BACC8                    ; 2BAE3D/17C8AC

MST10_Lunge:
    ONTICK      $2BB399                     ; 2BAE40/0899B32B
    MOV         VAR2,#$FF                   ; 2BAE44/0D02FF
    ZEROVEL                                 ; 2BAE47/38
    ASMCALL     $8C53, WAIT #8              ; 2BAE48/D8538C // Set pose (respect facing)
    .byte       $2C                         ; 2BAE4B/2C
L_2BAE4C:
    INC2POSE    WAIT #2                     ; 2BAE4C/92
L_2BAE4D:
    INC2POSE                                ; 2BAE4D/90
    WAIT        #48                         ; 2BAE4E/0630
L_2BAE50:
    ASMCALL     $8C53                       ; 2BAE50/D0538C // Set pose (respect facing)
    .byte       $08                         ; 2BAE53/08
    WAIT        #48                         ; 2BAE54/0630
L_2BAE56:
    A_JMP       L_2BACC8                    ; 2BAE56/17C8AC

MST12_Block:
    ONTICK      $2BB3D9                     ; 2BAE59/08D9B32B
    ASMCALL     $B805                       ; 2BAE5D/D005B8
    MOV         VAR2,#$14                   ; 2BAE60/0D0214
    ZEROVEL                                 ; 2BAE63/38
    HALT                                    ; 2BAE64/09

MST11_Unknown:
    ZEROVEL                                 ; 2BAE65/38
    MOV         VAR2,#$3C                   ; 2BAE66/0D023C
    ONTICK      $2BB4B8                     ; 2BAE69/08B8B42B
    ASMCALL     $8851                       ; 2BAE6D/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 2BAE70/D0538C // Set pose (respect facing)
    .byte       $16                         ; 2BAE73/16
    HALT                                    ; 2BAE74/09

L_2BAE75:
    MOV         VAR0,#$00                   ; 2BAE75/0D0000
    ZEROVEL                                 ; 2BAE78/38
    ASMCALL_l   $219952                     ; 2BAE79/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2BAE7D/00
    .byte       $00                         ; 2BAE7E/00
    .byte       $0C                         ; 2BAE7F/0C
    .byte       $00                         ; 2BAE80/00
    A_JSR       $83C8                       ; 2BAE81/18C883
    ONTICK      $2BB527                     ; 2BAE84/0827B52B
    MOV         $0784,#$00                  ; 2BAE88/11840700
    ASMCALL     $B7F4                       ; 2BAE8C/D0F4B7
    ASMCALL     $8AC6                       ; 2BAE8F/D0C68A
    JEQ         MST16_17_DropSword          ; 2BAE92/0A96AE
    HALT                                    ; 2BAE95/09

MST16_17_DropSword:
    MOV         $0043,#$CE                  ; 2BAE96/114300CE
    ASMCALL     $DED0                       ; 2BAE9A/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2BAE9D/09
    .byte       $12                         ; 2BAE9E/12
    .byte       $42                         ; 2BAE9F/42
    .byte       $00                         ; 2BAEA0/00
    .byte       $00                         ; 2BAEA1/00
    .byte       $00                         ; 2BAEA2/00
    .byte       $02                         ; 2BAEA3/02
    .byte       $00                         ; 2BAEA4/00
    SPRITEMAP   L_3180F8                     ; 2BAEA5/1AF88031
    ASMCALL     $B765                       ; 2BAEA9/D065B7 // Meta Knight leap after being defeated
    ONTICK      $2BB537                     ; 2BAEAC/0837B52B
    ASMCALL     $8851                       ; 2BAEB0/D05188 // Face towards Kirby
    ASMCALL     $8C53                       ; 2BAEB3/D0538C // Set pose (respect facing)
    .byte       $22                         ; 2BAEB6/22
    HALT                                    ; 2BAEB7/09

MST18_MaskBreak:
    ZEROVEL                                 ; 2BAEB8/38
    ASMCALL     $8C53                       ; 2BAEB9/D0538C // Set pose (respect facing)
    .byte       $0C                         ; 2BAEBC/0C
    WAIT        #32                         ; 2BAEBD/0620
L_2BAEBF:
    ASMCALL     $DED0                       ; 2BAEBF/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2BAEC2/09
    .byte       $12                         ; 2BAEC3/12
    .byte       $42                         ; 2BAEC4/42
    .byte       $00                         ; 2BAEC5/00
    .byte       $00                         ; 2BAEC6/00
    .byte       $00                         ; 2BAEC7/00
    .byte       $03                         ; 2BAEC8/03
    .byte       $00                         ; 2BAEC9/00
    ASMCALL     $DED0                       ; 2BAECA/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2BAECD/09
    .byte       $12                         ; 2BAECE/12
    .byte       $42                         ; 2BAECF/42
    .byte       $00                         ; 2BAED0/00
    .byte       $00                         ; 2BAED1/00
    .byte       $00                         ; 2BAED2/00
    .byte       $04                         ; 2BAED3/04
    .byte       $00                         ; 2BAED4/00
    WAIT        #48                         ; 2BAED5/0630
L_2BAED7:
    ASMCALL     $DE4B                       ; 2BAED7/D04BDE // Play sound effect
    .byte       $0B                         ; 2BAEDA/0B
    ASMCALL     $8C53                       ; 2BAEDB/D0538C // Set pose (respect facing)
    .byte       $12                         ; 2BAEDE/12
    WAIT        #10                         ; 2BAEDF/060A
L_2BAEE1:
    SETYVEL     #$FC00, WAIT #4             ; 2BAEE1/C400FC
L_2BAEE4:
    SETYVEL     #$FF00, WAIT #4             ; 2BAEE4/C400FF
L_2BAEE7:
    SETYVEL     #$0100, WAIT #4             ; 2BAEE7/C40001
L_2BAEEA:
    SETYVEL     #$0400, WAIT #4             ; 2BAEEA/C40004
L_2BAEED:
    ZEROVEL                                 ; 2BAEED/38
    WAIT        #32                         ; 2BAEEE/0620
L_2BAEF0:
    INC2POSE                                ; 2BAEF0/90
    WAIT        #20                         ; 2BAEF1/0614
L_2BAEF3:
    LOOP        #5                          ; 2BAEF3/0105
        INC2POSE    WAIT #4                     ; 2BAEF5/94
L_2BAEF6:
    ENDLOOP                                 ; 2BAEF6/02
    SETPOSE     #$1E, WAIT #8               ; 2BAEF7/581E
L_2BAEF9:
    SETPOSE     #$21, WAIT #8               ; 2BAEF9/5821
L_2BAEFB:
    DECPOSE                                 ; 2BAEFB/80
    WAIT        #16                         ; 2BAEFC/0610
L_2BAEFE:
    SETYVEL     #$F900                      ; 2BAEFE/C000F9
    ONTICK      $2BB547                     ; 2BAF01/0847B52B
    ASMCALL     $DE4B                       ; 2BAF05/D04BDE // Play sound effect
    .byte       $36                         ; 2BAF08/36
L_2BAF09:
    SETPOSE     #$1E, WAIT #2               ; 2BAF09/521E
L_2BAF0B:
    INCPOSE     WAIT #2                     ; 2BAF0B/72
L_2BAF0C:
    A_JMP       L_2BAF09                    ; 2BAF0C/1709AF

MST19_Fled:
    SETPOSE     #$FF                        ; 2BAF0F/50FF
    WAIT        #60                         ; 2BAF11/063C
L_2BAF13:
    ASMCALL     $DED0                       ; 2BAF13/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2BAF16/09
    .byte       $12                         ; 2BAF17/12
    .byte       $06                         ; 2BAF18/06
    .byte       $00                         ; 2BAF19/00
    .byte       $00                         ; 2BAF1A/00
    .byte       $00                         ; 2BAF1B/00
    .byte       $02                         ; 2BAF1C/02
    .byte       $00                         ; 2BAF1D/00
    END                                     ; 2BAF1E/00

; CODE OR DATA -- $2BAF1F .. $2BBA14
incbinRange "../split/prg/bank2b.bin", $0F1F, $1A14

L_2BBA14:
    ONTICK      $2BBA19                     ; 2BBA14/0819BA2B
L_2BBA18:
    HALT                                    ; 2BBA18/09

; CODE OR DATA -- $2BBA19 .. $2BBB33
incbinRange "../split/prg/bank2b.bin", $1A19, $1B33

L_2BBB33:
    SETBANK     #$22                        ; 2BBB33/2822
    SPRITEMAP   L_318000                     ; 2BBB35/1A008031
    ONPOSITION  $D9BB                       ; 2BBB39/21BBD9
    ASMCALL     $BB65                       ; 2BBB3C/D065BB
    SETZPOS     #$007F                      ; 2BBB3F/3A7F00
    SETYVEL     #$FC00                      ; 2BBB42/C000FC
    ONTICK      $2BBBA9                     ; 2BBB45/08A9BB2B
L_2BBB49:
    SETPOSE     #$73, WAIT #2               ; 2BBB49/5273
L_2BBB4B:
    INCPOSE     WAIT #2                     ; 2BBB4B/72
L_2BBB4C:
    INCPOSE     WAIT #2                     ; 2BBB4C/72
L_2BBB4D:
    SETPOSE     #$6E, WAIT #2               ; 2BBB4D/526E
L_2BBB4F:
    LOOP        #4                          ; 2BBB4F/0104
        INCPOSE     WAIT #2                     ; 2BBB51/72
L_2BBB52:
    ENDLOOP                                 ; 2BBB52/02
    A_JMP       L_2BBB49                    ; 2BBB53/1749BB

L_2BBB56:
    MOV         $0784,#$01                  ; 2BBB56/11840701
    ADDYPOS     #-1                         ; 2BBB5A/2DFFFF
    ZEROVEL                                 ; 2BBB5D/38
    SETPOSE     #$6D, WAIT #1               ; 2BBB5E/516D
L_2BBB60:
    ONTICK      $2BBBC2                     ; 2BBB60/08C2BB2B
L_2BBB64:
    HALT                                    ; 2BBB64/09

; CODE OR DATA -- $2BBB65 .. $2BBBEF
incbinRange "../split/prg/bank2b.bin", $1B65, $1BEF

L_2BBBEF:
    SETZPOS     #$0082                      ; 2BBBEF/3A8200
    A_JMP       L_2BBBF8                    ; 2BBBF2/17F8BB

L_2BBBF5:
    SETZPOS     #$0081                      ; 2BBBF5/3A8100
L_2BBBF8:
    SETBANK     #$22                        ; 2BBBF8/2822
    ONPOSITION  $D9BB                       ; 2BBBFA/21BBD9
    SPRITEMAP   L_3180F8                     ; 2BBBFD/1AF88031
    ASMCALL     $BC19                       ; 2BBC01/D019BC
    ONDRAW      $DDE7                       ; 2BBC04/20E7DD
    WAIT        #4                          ; 2BBC07/0604
L_2BBC09:
    ONDRAW      $DA89                       ; 2BBC09/2089DA
    WAIT        #44                         ; 2BBC0C/062C
L_2BBC0E:
    ASMCALL     $BC37                       ; 2BBC0E/D037BC
    ONTICK      $2BBC4B                     ; 2BBC11/084BBC2B
    SETYVEL     #$FD00                      ; 2BBC15/C000FD
    HALT                                    ; 2BBC18/09

; CODE OR DATA -- $2BBC19 .. $2CA000
incbinRange "../split/prg/bank2b.bin", $1C19, $2000