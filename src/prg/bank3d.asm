L_36AA8D := $36AA8D
L_3DB11F := $3DB11F

.segment "PRG3D": absolute
Script68_FirstYouDrawACircle:
    A_JSR       L_3DBF50                    ; 3DA000/1850BF
    MOV         REG,VAR0                    ; 3DA003/1E00
    TABLEJMP    #6                          ; 3DA005/0F06
    .word       L_3DA013                    ; 3DA007/13A0
    .word       L_3DA237                    ; 3DA009/37A2
    .word       L_3DA1D1                    ; 3DA00B/D1A1
    .word       L_3DA288                    ; 3DA00D/88A2
    .word       L_3DA2C8                    ; 3DA00F/C8A2
    .word       L_3DA2D0                    ; 3DA011/D0A2

L_3DA013:
    ASMCALL     B3E_c082                    ; 3DA013/D082C0 // Write 0x00 to $37 and wait a frame
    ASMCALL     B3D_a304                    ; 3DA016/D004A3
    SETXCAMERA  #$0000                      ; 3DA019/300000
    SETYCAMERA  #$0010                      ; 3DA01C/311000
    ASMCALL     Load_Palette                ; 3DA01F/D061DF // Load_Palette, palette, start_index, entries
    .word       Intro_Palette               ; 3DA022/94AD
    .byte       $00                         ; 3DA024/00
    .byte       $20                         ; 3DA025/20
    ASMCALL     B3D_a3fc                    ; 3DA026/D0FCA3
    ASMCALL     B3E_c086                    ; 3DA029/D086C0 // Write 0xFF to $37 and wait a frame

    L_3DA02C:
    ASMCALL     B3D_a2eb, WAIT #4           ; 3DA02C/D4EBA2
    JNE         L_3DA02C                    ; 3DA02F/0B2CA0

    ASMCALL     B3E_dee1                    ; 3DA032/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $01                         ; 3DA035/01
    .byte       $68                         ; 3DA036/68
    .byte       $00                         ; 3DA037/00
    .byte       $00                         ; 3DA038/00
    .byte       $00                         ; 3DA039/00
    .byte       $05                         ; 3DA03A/05
    .byte       $00                         ; 3DA03B/00

    WAIT        #2                          ; 3DA03C/0602

    ASMCALL     B3E_de51                    ; 3DA03E/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $68                         ; 3DA041/68
    .byte       $00                         ; 3DA042/00
    .byte       $00                         ; 3DA043/00
    .byte       $00                         ; 3DA044/00
    .byte       $04                         ; 3DA045/04
    .byte       $00                         ; 3DA046/00

    ;"First you draw a Circle"
    ASMCALL     PlayMusic                       ; 3DA047/D045DE // Play music
    .byte       $31                         ; 3DA04A/31

    SETXPOS     #$0080                      ; 3DA04B/2A8000
    SETYPOS     #$00B0                      ; 3DA04E/2BB000
    MOV         VAR4,#$05                   ; 3DA051/0D0405
    SETXVEL     #$FC00                      ; 3DA054/B000FC
    SETYVEL     #$0000                      ; 3DA057/C00000
    TASK        TASK_3DA26C                 ; 3DA05A/076CA2
    ONTICK      B3D_a52c                     ; 3DA05D/082CA53D
    LOOP        #9                          ; 3DA061/0109
        WAIT        #2                          ; 3DA063/0602
        ADDXVEL     #$0080                      ; 3DA065/2E8000
        ADDYVEL     #$FF80                      ; 3DA068/2F80FF
    ENDLOOP                                 ; 3DA06B/02
    WAIT        #2                          ; 3DA06C/0602
    SETXVEL     #$0000                      ; 3DA06E/B00000
    SETYVEL     #$FC00, WAIT #2             ; 3DA071/C200FC
    LOOP        #9                          ; 3DA074/0109
        WAIT        #2                          ; 3DA076/0602
        ADDXVEL     #$0080                      ; 3DA078/2E8000
        ADDYVEL     #$0080                      ; 3DA07B/2F8000
    ENDLOOP                                 ; 3DA07E/02
    WAIT        #2                          ; 3DA07F/0602
    SETXVEL     #$0400                      ; 3DA081/B00004
    SETYVEL     #$0000                      ; 3DA084/C00000
    LOOP        #9                          ; 3DA087/0109
        WAIT        #2                          ; 3DA089/0602
        ADDXVEL     #$FF80                      ; 3DA08B/2E80FF
        ADDYVEL     #$0080                      ; 3DA08E/2F8000
    ENDLOOP                                 ; 3DA091/02
    WAIT        #2                          ; 3DA092/0602
    SETXVEL     #$0000                      ; 3DA094/B00000
    SETYVEL     #$0400                      ; 3DA097/C00004
    LOOP        #9                          ; 3DA09A/0109
        WAIT        #2                          ; 3DA09C/0602
        ADDXVEL     #$FF80                      ; 3DA09E/2E80FF
        ADDYVEL     #$FF80                      ; 3DA0A1/2F80FF
    ENDLOOP                                 ; 3DA0A4/02
    WAIT        #2                          ; 3DA0A5/0602
    ZEROVEL                                 ; 3DA0A7/38
    ENDLASTTASK                             ; 3DA0A8/12
    WAIT        #6                          ; 3DA0A9/0606
    SETPOSE     #$FF                        ; 3DA0AB/50FF
    ENDTICK                                 ; 3DA0AD/0E
    ASMCALL     $DE51, WAIT #1              ; 3DA0AE/D151DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $68                         ; 3DA0B1/68
    .byte       $00                         ; 3DA0B2/00
    .byte       $00                         ; 3DA0B3/00
    .byte       $00                         ; 3DA0B4/00
    .byte       $02                         ; 3DA0B5/02
    .byte       $00                         ; 3DA0B6/00
    MOV         VAR5,REG                    ; 3DA0B7/1D05
    ONTICK      $3DA467                     ; 3DA0B9/0867A43D
    HALT                                    ; 3DA0BD/09

L_3DA0BE:
    ASMCALL     $DE51                       ; 3DA0BE/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $68                         ; 3DA0C1/68
    .byte       $00                         ; 3DA0C2/00
    .byte       $00                         ; 3DA0C3/00
    .byte       $00                         ; 3DA0C4/00
    .byte       $01                         ; 3DA0C5/01
    .byte       $00                         ; 3DA0C6/00
    MOV         VAR6,REG                    ; 3DA0C7/1D06
    WAIT        #1                          ; 3DA0C9/0601
    ONTICK      $3DA480                     ; 3DA0CB/0880A43D
    HALT                                    ; 3DA0CF/09

L_3DA0d0:
    MOV         VAR2,#$00                   ; 3DA0D0/0D0200
    SETXPOS     #$0088                      ; 3DA0D3/2A8800
    SETYPOS     #$0050                      ; 3DA0D6/2B5000
    TASK        TASK_3DA26C                 ; 3DA0D9/076CA2
    ZEROVEL                                 ; 3DA0DC/38
    ONTICK      $3DA52C                     ; 3DA0DD/082CA53D
    SETXVEL     #$0400                      ; 3DA0E1/B00004
    SETYVEL     #$0100, WAIT #6             ; 3DA0E4/C60001
    SETXVEL     #$0200                      ; 3DA0E7/B00002
    SETYVEL     #$0140, WAIT #6             ; 3DA0EA/C64001
    SETXVEL     #$0140                      ; 3DA0ED/B04001
    SETYVEL     #$0200, WAIT #6             ; 3DA0F0/C60002
    SETXVEL     #$0100                      ; 3DA0F3/B00001
    SETYVEL     #$0400, WAIT #6             ; 3DA0F6/C60004
    ZEROVEL                                 ; 3DA0F9/38
    MOV         VAR2,#$00                   ; 3DA0FA/0D0200
    SETXPOS     #$0058                      ; 3DA0FD/2A5800
    SETYPOS     #$0070                      ; 3DA100/2B7000
    SETXVEL     #$FE00                      ; 3DA103/B000FE
    SETYVEL     #$0400, WAIT #5             ; 3DA106/C50004
    SETYVEL     #$0300, WAIT #5             ; 3DA109/C50003
    SETYVEL     #$0200, WAIT #4             ; 3DA10C/C40002
    SETXVEL     #$0400                      ; 3DA10F/B00004
    SETYVEL     #$00C0, WAIT #4             ; 3DA112/C4C000
    SETYVEL     #$0100, WAIT #4             ; 3DA115/C40001
    ENDLASTTASK                             ; 3DA118/12
    SETPOSE     #$FF                        ; 3DA119/50FF
    SETXPOS     #$0078                      ; 3DA11B/2A7800
    SETYPOS     #$00B0                      ; 3DA11E/2BB000
    TASK        TASK_3DA26C                 ; 3DA121/076CA2
    ZEROVEL                                 ; 3DA124/38
    MOV         VAR2,#$00                   ; 3DA125/0D0200
    ONTICK      $3DA52C                     ; 3DA128/082CA53D
    SETXVEL     #$FC00                      ; 3DA12C/B000FC
    SETYVEL     #$0200, WAIT #4             ; 3DA12F/C40002
    SETYVEL     #$FC00, WAIT #4             ; 3DA132/C400FC
    SETXVEL     #$FE00                      ; 3DA135/B000FE
    SETYVEL     #$FE00, WAIT #4             ; 3DA138/C400FE
    SETXVEL     #$0200                      ; 3DA13B/B00002
    SETYVEL     #$FC00, WAIT #4             ; 3DA13E/C400FC
    SETYVEL     #$FE00, WAIT #4             ; 3DA141/C400FE
    SETXVEL     #$0200                      ; 3DA144/B00002
    SETYVEL     #$0400, WAIT #4             ; 3DA147/C40004
    SETXVEL     #$0200, WAIT #4             ; 3DA14A/B40002
    SETXVEL     #$0400                      ; 3DA14D/B00004
    SETYVEL     #$0200, WAIT #4             ; 3DA150/C40002
    ZEROVEL                                 ; 3DA153/38
    MOV         VAR2,#$00                   ; 3DA154/0D0200
    SETXPOS     #$00A8                      ; 3DA157/2AA800
    SETYPOS     #$00A0                      ; 3DA15A/2BA000
    SETXVEL     #$0400                      ; 3DA15D/B00004
    SETYVEL     #$0200, WAIT #4             ; 3DA160/C40002
    SETXVEL     #$0100                      ; 3DA163/B00001
    SETYVEL     #$0200, WAIT #4             ; 3DA166/C40002
    SETXVEL     #$FE00                      ; 3DA169/B000FE
    SETYVEL     #$0200, WAIT #4             ; 3DA16C/C40002
    SETXVEL     #$FF00, WAIT #4             ; 3DA16F/B400FF
    SETXVEL     #$FE00                      ; 3DA172/B000FE
    SETYVEL     #$0000, WAIT #4             ; 3DA175/C40000
    SETYVEL     #$FE00, WAIT #4             ; 3DA178/C400FE
    SETXVEL     #$FE00                      ; 3DA17B/B000FE
    SETYVEL     #$FC00, WAIT #4             ; 3DA17E/C400FC
    ENDLASTTASK                             ; 3DA181/12
    SETPOSE     #$FF                        ; 3DA182/50FF
    ZEROVEL                                 ; 3DA184/38
    ENDTICK                                 ; 3DA185/0E
    ASMCALL     $DE51, WAIT #1              ; 3DA186/D151DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $68                         ; 3DA189/68
    .byte       $00                         ; 3DA18A/00
    .byte       $00                         ; 3DA18B/00
    .byte       $00                         ; 3DA18C/00
    .byte       $03                         ; 3DA18D/03
    .byte       $00                         ; 3DA18E/00
    MOV         VAR7,REG                    ; 3DA18F/1D07
    WAIT        #2                          ; 3DA191/0602
    ONTICK      $3DA499                     ; 3DA193/0899A43D
    HALT                                    ; 3DA197/09

L_3DA198:
    ASMCALL     $A35A                       ; 3DA198/D05AA3
    ASMCALL     $DF61                       ; 3DA19B/D061DF // Load_Palette, palette, start_index, entries
    .word       Intro_Palette_insert1       ; 3DA19E/A4AD
    .byte       $14                         ; 3DA1A0/14
    .byte       $04                         ; 3DA1A1/04
    ASMCALL     $DF61, WAIT #1              ; 3DA1A2/D161DF // Load_Palette, palette, start_index, entries
    .word       Intro_Palette_insert2       ; 3DA1A5/B4AD
    .byte       $04                         ; 3DA1A7/04
    .byte       $04                         ; 3DA1A8/04
    ONTICK      $3DA4F1                     ; 3DA1A9/08F1A43D
    HALT                                    ; 3DA1AD/09

L_3DA1AE:
    ASMCALL     $DF06                       ; 3DA1AE/D006DF // Destroy object in slot `arg`
    .byte       $01                         ; 3DA1B1/01
    ONTICK      $3DA80B                     ; 3DA1B2/080BA83D
    SETYCAMERAVEL#$0100                     ; 3DA1B6/330001
    WAIT        #8                          ; 3DA1B9/0608
    UNK35       #$00,#$01                   ; 3DA1BB/350001
    WAIT        #8                          ; 3DA1BE/0608
    UNK35       #$00,#$01                   ; 3DA1C0/350001
    WAIT        #8                          ; 3DA1C3/0608
    UNK35       #$00,#$01                   ; 3DA1C5/350001
    WAIT        #35                         ; 3DA1C8/0623
    LOOP        #4                          ; 3DA1CA/0104
        ASMCALL     $C94C, WAIT #1              ; 3DA1CC/D14CC9 // Palette fade dark in step
    ENDLOOP                                 ; 3DA1CF/02
    HALT                                    ; 3DA1D0/09

L_3DA1D1:
    SETXPOS     #$0088                      ; 3DA1D1/2A8800
    SETYPOS     #$0068                      ; 3DA1D4/2B6800
    TASK        TASK_3DA26C                 ; 3DA1D7/076CA2
    SETXVEL     #$0000                      ; 3DA1DA/B00000
    SETYVEL     #$0200                      ; 3DA1DD/C00002
    WAIT        #16                         ; 3DA1E0/0610
    ENDLASTTASK                             ; 3DA1E2/12
    ZEROVEL                                 ; 3DA1E3/38
    SETXPOS     #$0078                      ; 3DA1E4/2A7800
    SETYPOS     #$0068                      ; 3DA1E7/2B6800
    TASK        TASK_3DA26C                 ; 3DA1EA/076CA2
    SETYVEL     #$0200, WAIT #10            ; 3DA1ED/CA0002
    ENDLASTTASK                             ; 3DA1F0/12
    ZEROVEL                                 ; 3DA1F1/38
    WAIT        #1                          ; 3DA1F2/0601
    SETXPOS     #$0080                      ; 3DA1F4/2A8000
    SETYPOS     #$0070                      ; 3DA1F7/2B7000
    SPRITEMAP   $359969                     ; 3DA1FA/1A699935
    SETPOSE     #$00                        ; 3DA1FE/5000
    WAIT        #80                         ; 3DA200/0650
    MOV         VAR3,#$01                   ; 3DA202/0D0301
    HALT                                    ; 3DA205/09

L_3DA206:
    SETZPOS     #$0002                      ; 3DA206/3A0200
    SPRITEMAP   $359969                     ; 3DA209/1A699935
    SETPOSE     #$02                        ; 3DA20D/5002
    ZEROVEL                                 ; 3DA20F/38
    LOOP        #4                          ; 3DA210/0104
        SETXVEL     #$FF00                      ; 3DA212/B000FF
        SETYVEL     #$FF00, WAIT #2             ; 3DA215/C200FF
L_3DA218:
        SETXVEL     #$0100                      ; 3DA218/B00001
        SETYVEL     #$0100, WAIT #2             ; 3DA21B/C20001
L_3DA21E:
    ENDLOOP                                 ; 3DA21E/02
    ZEROVEL                                 ; 3DA21F/38
    HALT                                    ; 3DA220/09

L_3DA221:
    SETPOSE     #$03                        ; 3DA221/5003
    LOOP        #4                          ; 3DA223/0104
        SETXVEL     #$0100                      ; 3DA225/B00001
        SETYVEL     #$FF00, WAIT #2             ; 3DA228/C200FF
L_3DA22B:
        SETXVEL     #$FF00                      ; 3DA22B/B000FF
        SETYVEL     #$0100, WAIT #2             ; 3DA22E/C20001
L_3DA231:
    ENDLOOP                                 ; 3DA231/02
    ZEROVEL                                 ; 3DA232/38
    HALT                                    ; 3DA233/09

L_3DA234:
    SETPOSE     #$00                        ; 3DA234/5000
    HALT                                    ; 3DA236/09

L_3DA237:
    SETXPOS     #$0080                      ; 3DA237/2A8000
    SETYPOS     #$0080                      ; 3DA23A/2B8000
    TASK        L_3DA26C                    ; 3DA23D/076CA2
    SETXVEL     #$FFC0                      ; 3DA240/B0C0FF
    SETYVEL     #$FE00, WAIT #4             ; 3DA243/C400FE
L_3DA246:
    SETXVEL     #$0200                      ; 3DA246/B00002
    SETYVEL     #$0000, WAIT #4             ; 3DA249/C40000
L_3DA24C:
    SETXVEL     #$FFC0                      ; 3DA24C/B0C0FF
    SETYVEL     #$0200, WAIT #4             ; 3DA24F/C40002
L_3DA252:
    ENDLASTTASK                             ; 3DA252/12
    ZEROVEL                                 ; 3DA253/38
    SETXPOS     #$0080                      ; 3DA254/2A8000
    SETYPOS     #$0080                      ; 3DA257/2B8000
    SPRITEMAP   $359969                     ; 3DA25A/1A699935
    SETPOSE     #$01                        ; 3DA25E/5001
    WAIT        #64                         ; 3DA260/0640
L_3DA262:
    MOV         VAR3,#$01                   ; 3DA262/0D0301
    HALT                                    ; 3DA265/09

L_3DA266:
    SETPOSE     #$FF                        ; 3DA266/50FF
    HALT                                    ; 3DA268/09

L_3DA269:
    SETPOSE     #$01                        ; 3DA269/5001
    HALT                                    ; 3DA26B/09

TASK_3DA26C:
L_3DA26C:
    SPRITEMAP   B35_997d                     ; 3DA26C/1A7D9935
    SETPOSE     #$00, WAIT #4               ; 3DA270/5400
L_3DA272:
    INCPOSE     WAIT #4                     ; 3DA272/74
L_3DA273:
    INCPOSE     WAIT #4                     ; 3DA273/74
L_3DA274:
    INCPOSE     WAIT #4                     ; 3DA274/74
L_3DA275:
    A_JMP       L_3DA26C                    ; 3DA275/176CA2

L_3DA278:
    SPRITEMAP   B35_9979                     ; 3DA278/1A799935
    LOOP        #3                          ; 3DA27C/0103
        SETPOSE     #$01, WAIT #1               ; 3DA27E/5101
L_3DA280:
        SETPOSE     #$00, WAIT #1               ; 3DA280/5100
L_3DA282:
        SETPOSE     #$01, WAIT #1               ; 3DA282/5101
L_3DA284:
        SETPOSE     #$FF, WAIT #1               ; 3DA284/51FF
L_3DA286:
    ENDLOOP                                 ; 3DA286/02
    END                                     ; 3DA287/00

L_3DA288:
    SETXPOS     #$00B8                      ; 3DA288/2AB800
    SETYPOS     #$00B0                      ; 3DA28B/2BB000
    SETZPOS     #$0008                      ; 3DA28E/3A0800
    MOV         VAR1,#$00                   ; 3DA291/0D0100
    SPRITEMAP   $359971                     ; 3DA294/1A719935
    SETPOSE     #$01, WAIT #7               ; 3DA298/5701
L_3DA29A:
    SETXVEL     #$FC00                      ; 3DA29A/B000FC
    SETYVEL     #$FC00, WAIT #6             ; 3DA29D/C600FC
L_3DA2A0:
    MOV         VAR1,#$01                   ; 3DA2A0/0D0101
    SETXVEL     #$F800                      ; 3DA2A3/B000F8
    SETYVEL     #$F800                      ; 3DA2A6/C000F8
    SETPOSE     #$00, WAIT #13              ; 3DA2A9/5D00
L_3DA2AB:
    SETXPOS     #$0048                      ; 3DA2AB/2A4800
    SETYPOS     #$00B0                      ; 3DA2AE/2BB000
    ZEROVEL                                 ; 3DA2B1/38
    SETPOSE     #$03, WAIT #7               ; 3DA2B2/5703
L_3DA2B4:
    SETXVEL     #$0400                      ; 3DA2B4/B00004
    SETYVEL     #$FC00, WAIT #6             ; 3DA2B7/C600FC
L_3DA2BA:
    MOV         VAR1,#$02                   ; 3DA2BA/0D0102
    SETXVEL     #$0800                      ; 3DA2BD/B00008
    SETYVEL     #$F800                      ; 3DA2C0/C000F8
    SETPOSE     #$02, WAIT #12              ; 3DA2C3/5C02
L_3DA2C5:
    WAIT        #32                         ; 3DA2C5/0620
L_3DA2C7:
    END                                     ; 3DA2C7/00

L_3DA2C8:
    ASMCALL     $A83B                       ; 3DA2C8/D03BA8
    ONTICK      $3DA86C                     ; 3DA2CB/086CA83D
L_3DA2CF:
    HALT                                    ; 3DA2CF/09

L_3DA2D0:
    ONTICK      $3DA2D5                     ; 3DA2D0/08D5A23D
L_3DA2D4:
    HALT                                    ; 3DA2D4/09

B3D_a2d5:
    lda a:pad_press
    and #$90
    bne B3D_a2dd
    rts
B3D_a2dd:
    ldx curr_object_slot
    lda #.BANK(L_3DA9D4)
    sta script_bank
    lda #.LOBYTE(L_3DA9D4)
    ldy #.HIBYTE(L_3DA9D4)
    jmp OBJ_TryReplaceScriptPc
B3D_a2eb:
    lda palette_fade
    bne B3D_a2f6
    ldx curr_script_slot
    sta SCR_sleep_timer, x
    rts
B3D_a2f6:
    bmi B3D_a2fe
    jsr B3E_c996
    lda #$01
    rts
B3D_a2fe:
    jsr Palette_FadeDarkIn
    lda #$01
    rts
B3D_a304:
    ldx #$6c
    stx a:chr_banks
    ldx #$6e
    stx a:chr_banks+2
    inx
    stx a:chr_banks+3
    inx
    stx a:chr_banks+4
    ldx #$db
    stx a:chr_banks+5
    jsr $a337
    lda #$00
    sta UNK_7DB+23
    sta UNK_7DB+24
    sta UNK_796+24
    sta UNK_796+23
    lda #$47
    sta UNK_7DB+8
    lda #$a7
    sta UNK_7DB+9
    rts
B3D_a337:
    lda #0
    sta scroll_type

    lda #6
    ora a:ram_PPUMASK
    sta a:ram_PPUMASK

    lda #1
    sta MIRROR

    lda #0
    sta kirby_camera_051E

    ldx curr_object_slot
    sta OBJ_var1, x
    sta OBJ_var2, x
    sta OBJ_var3, x
    rts
B3D_a35a:
    ldy #$07
B3D_a35c:
    tya
    pha
    ldx B3D_a375, y
    lda B3D_a36d, y
    jsr B3E_c0da
    pla
    tay
    dey
    bne B3D_a35c
    rts

B3D_a36d:
.byte $A5,$A5,$B0,$BB,$C6,$D1,$E6,$F3
B3D_a375:
.byte $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
.byte $0B,$0B,$0B,$0B,$0B,$0B,$0D,$0D
.byte $0D,$0D,$0F,$0F,$0F,$11,$13,$13
.byte $13,$15,$15,$15,$0D,$0D,$0F,$11
.byte $13,$15,$0F,$13,$15,$17,$0F,$15
.byte $17,$0F,$0B,$0D,$0F,$0B,$0D,$0F
.byte $00,$CC,$21,$03,$02,$33,$43,$53
.byte $34,$44,$54,$00,$D1,$21,$03,$02
.byte $33,$43,$53,$34,$44,$54,$00,$72
.byte $21,$03,$02,$7B,$61,$71,$BD,$88
.byte $BD,$00,$B3,$21,$03,$02,$BD,$8D
.byte $83,$53,$73,$84,$00,$AA,$21,$02
.byte $08,$32,$42,$38,$51,$87,$62,$BD
.byte $BD,$8E,$86,$4C,$93,$4D,$BE,$4E
.byte $BE,$00,$6C,$22,$02,$04,$BE,$7D
.byte $BE,$7E,$BE,$BE,$36,$6F,$00,$AE
.byte $22,$02,$02,$94,$BD,$95,$64

B3D_a3fc:
    lda #.LOBYTE(IntroTilemap)
    sta ptr0
    lda #.HIBYTE(IntroTilemap)
    sta ptr0+1

    lda #.LOBYTE(map_screen_0)
    sta ptr1
    lda #.HIBYTE(map_screen_0)
    sta ptr1+1

    jsr Decompress

    ldx #$3f
B3D_a411:
    lda map_screen_5, x
    sta UNK_66EC+1, x
    dex
    bpl B3D_a411
    lda #.LOBYTE(B3D_a453)
    ldx #.HIBYTE(B3D_a453)
    jsr B3E_c0da
    lda #.LOBYTE(B3D_a45a)
    ldx #.HIBYTE(B3D_a45a)
    jsr B3E_c0da
    jmp B3E_c086
B3D_a42b:
    lda #.LOBYTE(TitleTilemap)
    sta ptr0
    lda #.HIBYTE(TitleTilemap)
    sta ptr0+1

    lda #.LOBYTE(map_screen_0)
    sta ptr1
    lda #.HIBYTE(map_screen_0)
    sta ptr1+1
    jsr Decompress

    ldx #$3f
B3D_a440:
    lda map_screen_5, x
    sta UNK_66EC+65, x
    dex
    bpl B3D_a440
    lda #.LOBYTE(B3D_a460)
    ldx #.HIBYTE(B3D_a460)
    jsr B3E_c0da
    jmp B3E_c086

B3D_a453:
.byte $03,$00,$20,$20,$20,$C8,$68

B3D_a45a:
.byte $02,$C0,$2B,$40,$01,$AA

B3D_a460:
.byte $03,$00,$28,$20,$20,$C8,$68

B3D_a467:
    ldy curr_object_slot
    ldx OBJ_var5, y
    lda OBJ_var3, x
    bne B3D_a472
    rts
B3D_a472:
    ldx curr_object_slot
    lda #$3d
    sta script_bank
    lda #$be
    ldy #$a0
    jmp OBJ_TryReplaceScriptPc
B3D_a480:
    ldy curr_object_slot
    ldx OBJ_var6, y
    lda OBJ_var3, x
    bne B3D_a48b
    rts
B3D_a48b:
    ldx curr_object_slot
    lda #$3d
    sta script_bank
    lda #$d0
    ldy #$a0
    jmp OBJ_TryReplaceScriptPc
B3D_a499:
    ldy curr_object_slot
    ldx OBJ_var7, y
    lda OBJ_var1, x
    cmp #$01
    beq B3D_a4aa
    cmp #$02
    beq B3D_a4cf
    rts
B3D_a4aa:
    lda #$03
    sta OBJ_var1, x
    ldx OBJ_var5, y
    lda #$3d
    sta script_bank
    lda #$06
    ldy #$a2
    jsr OBJ_TryReplaceScriptPc
    ldy curr_object_slot
    ldx OBJ_var6, y
    lda #$3d
    sta script_bank
    lda #$66
    ldy #$a2
    jmp OBJ_TryReplaceScriptPc
B3D_a4cf:
    lda #$03
    sta OBJ_var1, x
    ldx OBJ_var5, y
    lda #$3d
    sta script_bank
    lda #$21
    ldy #$a2
    jsr OBJ_TryReplaceScriptPc
    ldx curr_object_slot
    lda #$3d
    sta script_bank
    lda #$98
    ldy #$a1
    jmp OBJ_TryReplaceScriptPc
B3D_a4f1:
    ldy curr_object_slot
    ldx OBJ_var7, y
    lda OBJ_script, x
    cmp #$ff
    beq B3D_a4fe
    rts
B3D_a4fe:
    ldx OBJ_var5, y
    lda #$3d
    sta script_bank
    lda #$34
    ldy #$a2
    jsr OBJ_TryReplaceScriptPc
    ldy curr_object_slot
    ldx OBJ_var6, y
    lda #$3d
    sta script_bank
    lda #$69
    ldy #$a2
    jsr OBJ_TryReplaceScriptPc
    ldx curr_object_slot
    lda #$3d
    sta script_bank
    lda #$ae
    ldy #$a1
    jmp OBJ_TryReplaceScriptPc
B3D_a52c:
    ldx #$12
    ldy #$00
    sty UNK_0
B3D_a532:
    lda OBJ_script, x
    cmp #$6b
    bne B3D_a547
    lda UNK_0
    clc
    adc #$01
    sta UNK_0
    cmp #$04
    bcc B3D_a547
    jmp $a5a8
B3D_a547:
    cpx #$00
    beq B3D_a54f
    dex
    jmp $a532
B3D_a54f:
    ldx curr_object_slot
    lda OBJ_var4, x
    bne B3D_a560
    lda #$06
    jsr Rand
    sta OBJ_var4, x
    beq B3D_a565
B3D_a560:
    dec OBJ_var4, x
    beq B3D_a568
B3D_a565:
    jmp $a5a8
B3D_a568:
    lda #$00
    sta OBJ_var4, x
    lda #$09
    jsr Rand
    ldy #$00
    tax
    lda $a614, x
    bpl B3D_a57b
    dey
B3D_a57b:
    ldx curr_object_slot
    adc OBJ_x_lo, x
    pha
    tya
    adc OBJ_x_hi, x
    sta new_object_x_hi
    lda #$09
    jsr Rand
    ldy #$00
    tax
    lda $a61d, x
    bpl B3D_a594
    dey
B3D_a594:
    ldx curr_object_slot
    adc OBJ_y_lo, x
    pha
    tya
    adc OBJ_y_hi, x
    sta new_object_y_hi
    pla
    tay
    pla
    tax
    lda #$6b
    jsr OBJ_NewFresh
B3D_a5a8:
    ldy curr_object_slot
    lda OBJ_var2, y
    clc
    adc #$01
    sta OBJ_var2, y
    and #$03
    beq B3D_a5ba
    jmp $a60d
B3D_a5ba:
    lda #$00
    sta OBJ_var2, y
    lda OBJ_var3, y
    tax
    lda $a626, x
    sta UNK_7DB+17
    lda OBJ_var1, y
    cmp UNK_7DB+17
    beq B3D_a60e
    lda #$03
    sta UNK_7DB+3
    ldy curr_object_slot
    lda OBJ_var1, y
    tax
    lda $a6eb, x
    sta UNK_7DB+4
    lda $a71b, x
    sta UNK_7DB+5
    lda #$02
    sta UNK_7DB+6
    sta UNK_7DB+7
    lda UNK_7DB+8
    clc
    adc #$04
    sta UNK_7DB+8
    lda UNK_7DB+9
    adc #$00
    sta UNK_7DB+9
    lda #$de
    ldx #$07
    jsr B3E_c0da
    ldx curr_object_slot
    inc OBJ_var1, x
B3D_a60d:
    rts
B3D_a60e:
    ldx curr_object_slot
    inc OBJ_var3, x
    rts

.byte $FF,$00,$01,$00,$FE,$03,$01,$00
.byte $FD,$02,$FD,$00,$01,$00,$FF,$03
.byte $FE,$00,$16,$05
.byte $05,$08,$08,$0F,$0D,$0D,$0B,$0B
.byte $0B,$0B,$0B,$0D,$0F,$0F,$11,$11
.byte $13,$15,$15,$15,$15,$15,$13,$13
.byte $11,$11,$13,$15,$15,$15,$0B,$09
.byte $09,$09,$0B,$0F,$0D,$0B,$0B,$0B
.byte $0D,$0D,$0F,$13,$15,$15,$15,$13
.byte $13,$11,$11,$0F,$0D,$0D,$0B,$0B
.byte $0B,$0B,$0B,$0D,$0F,$0F,$11,$11
.byte $13,$15,$15,$15,$15,$15,$13,$13
.byte $11,$11,$13,$15,$15,$15,$0B,$09
.byte $09,$09,$0B,$0F,$0D,$0B,$0B,$0B
.byte $0D,$0D,$0F,$13,$15,$15,$15,$13
.byte $13,$11,$11,$17,$17,$15,$15,$13
.byte $11,$0F,$0D,$0D,$0D,$0B,$0B,$0D
.byte $0D,$0D,$0F,$11,$13,$15,$15,$17
.byte $17,$0B,$0B,$0B,$0D,$0F,$0F,$0F
.byte $11,$13,$13,$17,$17,$17,$15,$13
.byte $13,$15,$15,$15,$15,$17,$19,$17
.byte $19,$17,$19,$15,$15,$13,$13,$11
.byte $0F,$0D,$0B,$0B,$0B,$09,$09,$0B
.byte $0B,$0B,$0D,$0F,$11,$13,$13,$15
.byte $15,$09,$09,$09,$0B,$0D,$0D,$0D
.byte $0F,$11,$11,$15,$15,$15,$13,$11
.byte $11,$13,$13,$13,$13,$15,$17,$15
.byte $17,$15,$17
.byte $AE,$AC,$6C,$6A,$2A,$EA,$AA,$6A
.byte $6C,$6E,$2E,$30,$70,$72,$74,$B4
.byte $F4,$34,$74,$72,$B2,$B0,$30,$32
.byte $34,$74,$B4,$AA,$A8,$E8,$28,$2A
.byte $AE,$AC,$AA,$6A,$2A,$2C,$6C,$6E
.byte $72,$74,$B4,$F4,$B2,$F2,$B0
.byte $F0
.byte $22,$22,$22,$22,$22,$21,$21,$21
.byte $21,$21,$21,$21,$21,$21,$21,$21
.byte $21,$22,$22,$22,$22,$22,$21,$21
.byte $21,$21,$21,$21,$21,$21,$22,$22
.byte $22,$22,$22,$22,$22,$22,$22,$22
.byte $22,$22,$22,$22,$22,$22,$22
.byte $22
.byte $15,$BD,$16,$18,$10,$12,$BC,$BC
.byte $BD,$BD,$0F,$BD,$BC,$09,$BC,$0A
.byte $02,$07,$BC,$08,$00,$06,$01,$BD
.byte $BC,$04,$BC,$05,$BC,$BC,$BC,$03
.byte $0B,$11,$0C,$BD,$14,$BD,$BD,$BD
.byte $BC,$BC,$13,$17,$BC,$BC,$19,$1B
.byte $BD,$1C,$BD,$BD,$1F,$21,$BD,$22
.byte $BC,$BC,$27,$BC,$28,$BC,$29,$BC
.byte $2A,$2F,$BD,$30,$2B,$31,$2C,$BC
.byte $2D,$BC,$2E,$BC,$BD,$BD,$BD,$25
.byte $20,$26,$BC,$BC,$BD,$1D,$1A,$1E
.byte $BC,$BC,$19,$40,$BC,$BC,$50,$60
.byte $BC,$BC,$70,$80,$63,$81,$27,$82
.byte $28,$83,$29,$84,$32,$42,$38,$05
.byte $BC,$BC,$BC,$58,$BC,$3D,$BC,$3E
.byte $BC,$3B,$BC,$3C,$4B,$07,$4C,$08
.byte $6E,$BD,$7F,$64,$10,$12,$36,$6F
.byte $4F,$5F,$BD,$49,$4D,$09,$4E,$49
.byte $4B,$5B,$4C,$08,$6B,$BD,$6C,$7C
.byte $BE,$7D,$0F,$7E,$BD,$BD,$5D,$BD
.byte $BD,$BD,$BD,$90,$56,$BC,$57,$67
.byte $BE,$68,$59,$69,$5A,$6A,$BC,$BC
.byte $91,$92,$39,$BE,$8C,$4A,$BC,$BC
.byte $BD,$1D,$37,$47
.byte $8A,$8B,$BC,$BC
B3D_a80b:
    jsr $a2d5
B3D_a80e:
    lda camera_vel_y
    clc
    adc camera_y_frac
    sta camera_y_frac
    ldy #$00
    lda camera_vel_y+1
    bpl B3D_a81c
    dey
B3D_a81c:
    adc camera_y
    sta camera_y
    tya
    adc camera_y+1
    sta camera_y+1
    lda camera_y+1
    bne B3D_a82f
    lda camera_y
    cmp #$e0
    bcs B3D_a830
    B3D_a82f:
    rts
B3D_a830:
    jsr B3E_c082
    jsr B3E_df0d
    ldx curr_object_slot
    jmp OBJ_Destroy
B3D_a83b:
    lda #$73
    sta UNK_7DB+15
    lda #$a9
    sta UNK_7DB+16
    ldx curr_object_slot
    lda #$00
    sta OBJ_var1, x
    sta OBJ_var2, x
    sta OBJ_var3, x
    lda #$60
    ldx #$a8
    jsr B3E_c0da
    lda #$66
    ldx #$a8
    jmp B3E_c0da
.byte $02,$F0,$23,$08,$01,$00,$02,$F8
.byte $23,$08,$01,$AA
B3D_a86c:
    ldy curr_object_slot
    lda OBJ_var1, y
    cmp #$5f
    beq B3D_a88d
    tax
    lda $a914, x
    sta UNK_7DB+20
    lda OBJ_var2, y
    clc
    adc #$01
    cmp UNK_7DB+20
    sta OBJ_var2, y
    beq B3D_a890
    jmp $a8d9
B3D_a88d:
    jmp $a8d9
B3D_a890:
    lda #$00
    sta OBJ_var2, y
    lda OBJ_var3, y
    cmp #$18
    beq B3D_a8da
    lda #$03
    sta UNK_7DB+10
    ldy curr_object_slot
    lda OBJ_var3, y
    clc
    adc #$45
    sta UNK_7DB+11
    lda #$23
    sta UNK_7DB+12
    lda #$01
    sta UNK_7DB+13
    sta UNK_7DB+14
    lda UNK_7DB+15
    clc
    adc #$01
    sta UNK_7DB+15
    lda UNK_7DB+16
    adc #$00
    sta UNK_7DB+16
    lda #$e5
    ldx #$07
    jsr B3E_c0da
    ldx curr_object_slot
    inc OBJ_var1, x
    inc OBJ_var3, x
B3D_a8d9:
    rts
B3D_a8da:
    ldx curr_object_slot
    lda #$00
    sta OBJ_var3, x
    lda UNK_7DB+20
    sta OBJ_var2, x
    dec OBJ_var2, x
    lda #.LOBYTE(B3D_a8f1)
    ldx #.HIBYTE(B3D_a8f1)
    jmp B3E_c0da

B3D_a8f1:
.byte $00,$40,$23,$1E,$01,$BC,$BC,$BC
.byte $BC,$BC,$BC,$BC,$BC,$BC,$BC,$BC
.byte $BC,$BC,$BC,$BC,$BC,$BC,$BC,$BC
.byte $BC,$BC,$BC,$BC,$BC,$BC,$BC,$BC
.byte $BC,$BC,$BC,$01,$01,$01,$01,$01
.byte $01,$01,$01,$01,$01,$01,$01,$01
.byte $01,$01,$01,$01,$01,$01,$01,$01
.byte $01,$01,$01,$44,$01,$01,$01,$01
.byte $01,$01,$01,$01,$01,$01,$01,$01
.byte $01,$01,$01,$01,$01,$01,$01,$01
.byte $01,$01,$01,$48,$01,$01,$01,$01
.byte $01,$01,$01,$01,$01,$01,$01,$01
.byte $01,$01,$01,$01,$01,$01,$01,$01
.byte $01,$01,$01,$48,$01,$01,$01,$01
.byte $01,$01,$01,$01,$01,$01,$01,$64
.byte $01,$01,$01,$01,$18,$01,$01,$01
.byte $01,$01
.byte $01
.byte $DF,$C8,$D1,$D2,$D3,$BC,$D8,$CE
.byte $D4,$BC,$C3,$D1,$C0,$D6,$BC,$C0
.byte $BC,$C2,$C8,$D1,$C2,$CB,$C4,$F6
.byte $ED,$C7,$C4,$CD,$BC,$D8,$CE,$D4
.byte $BC,$C3,$CE,$D3,$BC,$D3,$C7,$C4
.byte $BC,$C4,$D8,$C4,$D2,$F6,$BC,$BC
.byte $DA,$C3,$C3,$BC,$C0,$BC,$C6,$D1
.byte $C4,$C0,$D3,$BC,$C1,$C8,$C6,$BC
.byte $D2,$CC,$C8,$CB,$C4,$BC,$BC,$BC
.byte $DA,$CD,$C3,$BC,$CF,$D1,$C4,$D2
.byte $D3,$CE,$F6,$BC,$C8,$D3,$F5,$D2
.byte $BC,$E4,$C8,$D1,$C1,$D8,$F4
.byte $BC

L_3DA9D4:
    ZEROVEL                                 ; 3DA9D4/38
    ASMCALL     $DFE5                       ; 3DA9D5/D0E5DF // Freeze all objects
    LOOP        #4                          ; 3DA9D8/0104
        ASMCALL     $C94C, WAIT #4              ; 3DA9DA/D44CC9 // Palette fade dark in step
    ENDLOOP                                 ; 3DA9DD/02
    ASMCALL     $DF0D                       ; 3DA9DE/D00DDF // Destroy all other objects
    SETYCAMERAVEL#$0E00                     ; 3DA9E1/33000E
    ONTICK      B3D_a80e                     ; 3DA9E4/080EA83D
    SETPOSE     #$FF                        ; 3DA9E8/50FF
    HALT                                    ; 3DA9EA/09


Script69_TitleScreen:
    MOV         REG,VAR0                    ; 3DA9EB/1E00
    TABLEJMP    #5                          ; 3DA9ED/0F05
    .word       L_3DA9F9                    ; 3DA9EF/F9A9
    .word       L_3DAAAD                    ; 3DA9F1/ADAA
    .word       L_3DADD8                    ; 3DA9F3/D8AD
    .word       L_3DADDC                    ; 3DA9F5/DCAD
    .word       L_3DADFB                    ; 3DA9F7/FBAD
L_3DA9F9:
    A_JSR       L_3DBF50                    ; 3DA9F9/1850BF
    A_JSR       L_3DAA25                    ; 3DA9FC/1825AA
    ASMCALL     $DEE1                       ; 3DA9FF/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $03                         ; 3DAA02/03
    .byte       $69                         ; 3DAA03/69
    .byte       $00                         ; 3DAA04/00
    .byte       $00                         ; 3DAA05/00
    .byte       $00                         ; 3DAA06/00
    .byte       $02                         ; 3DAA07/02
    .byte       $00                         ; 3DAA08/00
    ASMCALL     $A42B                       ; 3DAA09/D02BA4
    A_JSR       L_3DAAE4                    ; 3DAA0C/18E4AA
    MOV         VAR4,#$00                   ; 3DAA0F/0D0400
    MOV         REG,$07F4                   ; 3DAA12/1CF407
    JEQ         L_3DAA1E                    ; 3DAA15/0A1EAA
    WAIT        #60                         ; 3DAA18/063C
L_3DAA1A:
    MOV         $07F4,#$00                  ; 3DAA1A/11F40700
L_3DAA1E:
    WAIT        #20                         ; 3DAA1E/0614
L_3DAA20:
    ONTICK      $3DAABA                     ; 3DAA20/08BAAA3D
L_3DAA24:
    HALT                                    ; 3DAA24/09

L_3DAA25:
    ASMCALL     $DF0D                       ; 3DAA25/D00DDF // Destroy all other objects
    MOV         REG,$07F3                   ; 3DAA28/1CF307
    TABLEJMP    #2                          ; 3DAA2B/0F02
    .word       L_3DAA31                    ; 3DAA2D/31AA
    .word       L_3DAA35                    ; 3DAA2F/35AA
L_3DAA31:
    ASMCALL     PlayMusic                       ; 3DAA31/D045DE // Play music
    .byte       $35                         ; 3DAA34/35
L_3DAA35:
    ASMCALL     $AA4E                       ; 3DAA35/D04EAA
    MOV         $01A2,#$04                  ; 3DAA38/11A20104
    ONMOVE      $D8D5                       ; 3DAA3C/23D5D8
    ZEROCAMERAVEL                           ; 3DAA3F/39
    SETXCAMERA  #$0000                      ; 3DAA40/300000
    SETYCAMERA  #$0100                      ; 3DAA43/310001
    ASMCALL     $DF61                       ; 3DAA46/D061DF // Load_Palette, palette, start_index, entries
    .word       $ADB8                       ; 3DAA49/B8AD
    .byte       $00                         ; 3DAA4B/00
    .byte       $20                         ; 3DAA4C/20
    A_RTS                                   ; 3DAA4D/19

B3D_aa4e:
    lda #$d0
    sta a:chr_banks
    lda #$ba
    sta a:chr_banks+1
    lda #$68
    sta a:chr_banks+2
    lda #$69
    sta a:chr_banks+3
    lda #$6a
    sta a:chr_banks+4
    lda #$6b
    sta a:chr_banks+5
    jsr $a337
    lda #$fc
    sta palette_fade
    jsr B3E_c086
    lda #$00
    sta UNK_796+24
    sta UNK_796+23
    rts


.byte $01,$08,$D2,$4C,$C9,$02,$D0,$2B
.byte $A4,$30,$00,$00,$31,$00,$01,$18
.byte $25,$AA,$18,$E4,$AA,$06,$28

L_3DAA97:
    MOV         VAR4,#$00                   ; 3DAA97/0D0400
    ONTICK      $3DAABA                     ; 3DAA9A/08BAAA3D
L_3DAA9E:
    HALT                                    ; 3DAA9E/09

.byte $18,$E4,$AA,$08,$BA,$AA,$3D,$09

L_3DAAA7:
    MOV         VAR4,#$01                   ; 3DAAA7/0D0401
    A_JMP       L_3DAF1B                    ; 3DAAAA/171BAF

L_3DAAAD:
    SETXPOS     #$00B8                      ; 3DAAAD/2AB800
    SETYPOS     #$0148                      ; 3DAAB0/2B4801
    SPRITEMAP   $37967D                     ; 3DAAB3/1A7D9637
    SETPOSE     #$02                        ; 3DAAB7/5002
    HALT                                    ; 3DAAB9/09

B3D_aaba:
    lda a:pad_press
    and #$90
    bne B3D_aac2
B3D_aac1:
    rts
B3D_aac2:
    lda OBJ_var0+3
    bne B3D_aac1
    lda #$00
    ldx curr_object_slot
    sta OBJ_var0, x
    sta UNK_7DB+23
    lda #$10
    jsr PlaySoundEffect
    ldx curr_object_slot
    lda #$3d
    sta script_bank
    lda #.LOBYTE(L_3DAAA7)
    ldy #.HIBYTE(L_3DAAA7)
    jmp OBJ_TryReplaceScriptPc

L_3DAAE4:
    LOOP        #4                          ; 3DAAE4/0104
        ASMCALL     B3E_c996, WAIT #4              ; 3DAAE6/D496C9 // Palette fade (out?) step
L_3DAAE9:
    ENDLOOP                                 ; 3DAAE9/02
    A_RTS                                   ; 3DAAEA/19

L_3DAAEB:
    LOOP        #4                          ; 3DAAEB/0104
        ASMCALL     Palette_FadeDarkIn, WAIT #4              ; 3DAAED/D44CC9 // Palette fade dark in step
L_3DAAF0:
    ENDLOOP                                 ; 3DAAF0/02
    A_RTS                                   ; 3DAAF1/19



IntroTilemap:
    incbinRange "../split/prg/bank3d.bin", $af2, $b5c

TitleTilemap:
    incbinRange "../split/prg/bank3d.bin", $b5c, $d94

Intro_Palette:
.byte $30,$30,$10,$0F
.byte $30,$30,$30,$0F
.byte $30,$30,$30,$30
.byte $30,$30,$30,$30
Intro_Palette_insert1:
.byte $30,$35,$25,$0F
.byte $30,$30,$30,$0F
.byte $30,$37,$25,$06
.byte $30,$30,$37,$17
Intro_Palette_insert2:
.byte $30,$35,$25,$0F

Title_Palette:
.byte $30,$25,$14,$0F
.byte $30,$3A,$1A,$0F
.byte $30,$34,$21,$0F
.byte $30,$37,$21,$0F
.byte $30,$36,$26,$0F
.byte $21,$30,$37,$17
.byte $30,$35,$25,$0F
.byte $30,$38,$0F,$0F

L_3DADD8:
    JML         L_36AA8D                    ; 3DADD8/038DAA36

L_3DADDC:
    ONMOVE      $D864                       ; 3DADDC/2364D8
    ONPOSITION  $D968                       ; 3DADDF/2168D9
    SPRITEMAP   $37967D                     ; 3DADE2/1A7D9637
    SETPOSE     #$FF                        ; 3DADE6/50FF
    MOV         VAR9,#$00                   ; 3DADE8/0D0900
    ASMCALL     $AE21                       ; 3DADEB/D021AE
L_3DADEE:
    SETPOSE     #$0B                        ; 3DADEE/500B
    TASK        L_3DAE19                    ; 3DADF0/0719AE
    ASMCALL     $AE5E                       ; 3DADF3/D05EAE
L_3DADF6:
    ZEROVEL                                 ; 3DADF6/38
    ENDLASTTASK                             ; 3DADF7/12
    SETPOSE     #$FF                        ; 3DADF8/50FF
    END                                     ; 3DADFA/00

L_3DADFB:
    ONMOVE      $D864                       ; 3DADFB/2364D8
    SPRITEMAP   $37967D                     ; 3DADFE/1A7D9637
    SETPOSE     #$FF                        ; 3DAE02/50FF
    MOV         VAR9,#$01                   ; 3DAE04/0D0901
    ASMCALL     $AE21                       ; 3DAE07/D021AE
L_3DAE0A:
    SETPOSE     #$0B                        ; 3DAE0A/500B
    TASK        L_3DAE19                    ; 3DAE0C/0719AE
    ASMCALL     $AEA0                       ; 3DAE0F/D0A0AE
    WAIT        #12                         ; 3DAE12/060C
L_3DAE14:
    ZEROVEL                                 ; 3DAE14/38
    ENDLASTTASK                             ; 3DAE15/12
    SETPOSE     #$FF                        ; 3DAE16/50FF
    END                                     ; 3DAE18/00

L_3DAE19:
    SETPOSE     #$0B, WAIT #4               ; 3DAE19/540B
L_3DAE1B:
    INCPOSE     WAIT #4                     ; 3DAE1B/74
L_3DAE1C:
    INCPOSE     WAIT #4                     ; 3DAE1C/74
L_3DAE1D:
    INCPOSE     WAIT #4                     ; 3DAE1D/74
L_3DAE1E:
    A_JMP       L_3DAE19                    ; 3DAE1E/1719AE

B3D_ae21:
    ldx curr_object_slot
    ldy OBJ_var2, x
    lda OBJ_var7, y
    sta OBJ_var7, x
    tay
    lda OBJ_vel_z_hi, x
    beq B3D_ae38
    lda B3D_ae49, y
    jmp B3D_ae3b
B3D_ae38:
    lda B3D_ae41, y
B3D_ae3b:
    ldx curr_script_slot
    sta SCR_sleep_timer, x
    rts
B3D_ae41:
.byte $11,$10,$0F,$0E,$13,$12,$11,$10
B3D_ae49:
.byte $07,$06,$05,$04,$03,$02,$01,$00
    ldx curr_object_slot
    ldy OBJ_vel_z_hi, x
    bne B3D_ae5b
    jmp $ae5e
B3D_ae5b:
    jmp $aea0
B3D_ae5e:
    ldx curr_object_slot
    ldy OBJ_var7, x
    lda $aec2, y
    sta a:OBJ_x_lo, x
    lda #$00
    sta a:OBJ_x_hi, x
    lda $aeca, y
    sta a:OBJ_y_lo, x
    lda #$00
    sta a:OBJ_y_hi, x
    ldx curr_script_slot
    lda $af12, y
    sta SCR_sleep_timer, x
    ldx curr_object_slot
    tya
    asl a
    tay
    lda $aed2, y
    sta OBJ_vel_x_lo, x
    lda $aee2, y
    sta OBJ_vel_y_lo, x
    iny
    lda $aed2, y
    sta OBJ_vel_x_hi, x
    lda $aee2, y
    sta OBJ_vel_y_hi, x
    rts
B3D_aea0:
    ldx curr_object_slot
    ldy OBJ_var7, x
    tya
    asl a
    tay
    lda $aef2, y
    sta OBJ_vel_x_lo, x
    lda $af02, y
    sta OBJ_vel_y_lo, x
    iny
    lda $aef2, y
    sta OBJ_vel_x_hi, x
    lda $af02, y
    sta OBJ_vel_y_hi, x
    rts
.byte $08,$F8,$08,$F8,$80,$80,$06,$FA
.byte $00,$00,$EF,$EF,$00,$EF,$78,$78
.byte $00,$06,$00,$FA,$00,$06,$00,$FA
.byte $00,$00,$00,$00,$00,$08,$00,$F8
.byte $00,$06,$00,$06,$00,$FA,$00,$FA
.byte $00,$08,$00,$F8,$00,$00,$00,$00
.byte $00,$03,$00,$FD,$00,$03,$00,$FD
.byte $00,$00,$00,$00,$00,$04,$00,$FC
.byte $00,$03,$00,$03,$00,$FD,$00,$FD
.byte $00,$04,$00,$FC,$00,$00,$00,$00
.byte $14,$14,$14,$14,$0F,$0F,$0F,$0F
    rts
L_3DAF1B:
    MOV         VAR9,#$01                   ; 3DAF1B/0D0901
L_3DAF1E:
    SETBANK     #$35                        ; 3DAF1E/2835
    MOV         VAR5,#$17                   ; 3DAF20/0D0517
    SETPOSE     #$FF                        ; 3DAF23/50FF
    MOV         REG,VAR9                    ; 3DAF25/1E09
    TABLEJMP    #19                         ; 3DAF27/0F13
    .word       L_3DAF5D                    ; 3DAF29/5DAF
    .word       L_3DB728                    ; 3DAF2B/28B7
    .word       L_3DB251                    ; 3DAF2D/51B2
    .word       L_3DB147                    ; 3DAF2F/47B1
    .word       L_3DB137                    ; 3DAF31/37B1
    .word       L_3DB12A                    ; 3DAF33/2AB1
    .word       L_3DB298                    ; 3DAF35/98B2
    .word       L_3DB2B3                    ; 3DAF37/B3B2
    .word       L_3DB104                    ; 3DAF39/04B1
    .word       L_3DB2C6                    ; 3DAF3B/C6B2
    .word       L_3DB719                    ; 3DAF3D/19B7
    .word       L_3DB259                    ; 3DAF3F/59B2
    .word       L_3DB6E9                    ; 3DAF41/E9B6
    .word       L_3DB032                    ; 3DAF43/32B0
    .word       L_3DB08B                    ; 3DAF45/8BB0
    .word       L_3DB0A0                    ; 3DAF47/A0B0
    .word       L_3DB0F3                    ; 3DAF49/F3B0
    .word       L_3DB0BC                    ; 3DAF4B/BCB0
    .word       L_3DAFFD                    ; 3DAF4D/FDAF

B3D_af4f:
    ldx curr_object_slot
    lda #.BANK(L_3DAF1E)
    sta script_bank
    lda #.LOBYTE(L_3DAF1E)
    ldy #.HIBYTE(L_3DAF1E)
    jmp OBJ_TryReplaceScriptPc

L_3DAF5D:
    A_JSR       L_3DAAEB                    ; 3DAF5D/18EBAA
    ASMCALL     $DF0D                       ; 3DAF60/D00DDF // Destroy all other objects
    MOV         $0180,#$00                  ; 3DAF63/11800100
    MOV         REG,VAR7                    ; 3DAF67/1E07
    JEQ         L_3DAF7F                    ; 3DAF69/0A7FAF
    MOV         $00F4,#$01                  ; 3DAF6C/11F40001
    MOV         $0599,#$02                  ; 3DAF70/11990502
    MOV         $0597,#$17                  ; 3DAF74/11970517
    MOV         $0596,#$17                  ; 3DAF78/11960517
    A_JMP       L_3DAF8B                    ; 3DAF7C/178BAF

L_3DAF7F:
    ASMCALL     $AFF5                       ; 3DAF7F/D0F5AF
    JEQ         L_3DAF8B                    ; 3DAF82/0A8BAF
    ASMCALL     $BCDF                       ; 3DAF85/D0DFBC
    A_JMP       L_3DAF8E                    ; 3DAF88/178EAF

L_3DAF8B:
    ASMCALL     $AF9D                       ; 3DAF8B/D09DAF
L_3DAF8E:
    ASMCALL     PlayMusic                       ; 3DAF8E/D045DE // Play music
    .byte       $FF                         ; 3DAF91/FF
    ASMCALL     $DE4B                       ; 3DAF92/D04BDE // Play sound effect
    .byte       $FF                         ; 3DAF95/FF
    MOV         VAR0,#$01                   ; 3DAF96/0D0001
    ASMCALL     $AFDA                       ; 3DAF99/D0DAAF
    END                                     ; 3DAF9C/00

B3D_af9d:
    ldx #$ff
    stx current_room+1
    stx room_0562+1
    lda #$12
    jsr B3F_f025
    lda $9215
    sta room_055A
    lda $9216
    asl a
    rol a
    and #$01
    sta room_055A+1
    lda $9216
    and #$0f
    sta UNK_55C
    lda $9217
    sta UNK_55C+1
    lda #$00
    sta UNK_55C
    lda #$34
    sta UNK_55C+1
    lda #$83
    sta UNK_7DA
    jmp B3F_f03b
B3D_afda:
    lda kirby_max_health
    sta kirby_health
    lda #$00
    sta UNK_57E+12
    sta current_score
    sta current_score+1
    sta current_score+2
    sta kirby_05E0
    sta kirby_copy_ability
    rts
B3D_aff5:
    jsr $bdff
    ldy #$02
    lda (UNK_6), y
    rts

L_3DAFFD:
    A_JSR       L_3DAAEB                    ; 3DAFFD/18EBAA
    ASMCALL     $DF0D                       ; 3DB000/D00DDF // Destroy all other objects
    MOV         $0180,#$00                  ; 3DB003/11800100
    MOV         $00F4,#$02                  ; 3DB007/11F40002
    MOV         $0599,#$00                  ; 3DB00B/11990500
    ASMCALL     $B019                       ; 3DB00F/D019B0
    MOV         VAR0,#$01                   ; 3DB012/0D0001
    ASMCALL     $AFDA                       ; 3DB015/D0DAAF
    END                                     ; 3DB018/00

B3D_b019:
    lda #$08
    sta room_0562
    lda #$00
    sta room_0562+1
    ldx #$00
    stx UNK_564
    dex
    stx current_room+1
    lda #$13
    sta UNK_564+1
    rts

L_3DB032:
    A_JSR       L_3DAAEB                    ; 3DB032/18EBAA
    SETPOSE     #$FF                        ; 3DB035/50FF
    ASMCALL     $DF0D                       ; 3DB037/D00DDF // Destroy all other objects
    ASMCALL     $B059                       ; 3DB03A/D059B0
    ONTICK      B3D_b042                    ; 3DB03D/0842B03D
    HALT                                    ; 3DB041/09

B3D_b042:
    ldx #$01
    lda OBJ_script, x
    bmi B3D_b04a
    rts
B3D_b04a:
    lda #$0c
    ldx curr_object_slot
    sta OBJ_vel_z_hi, x
    lda #$02
    sta UNK_7DB+24
    jmp $af4f
B3D_b059:
    ldx curr_object_slot
    lda OBJ_var7, x
    sta UNK_796+59
    ldy OBJ_var6, x
    lda $b088, y
    pha
    lda #$00
    sta kirby_camera_051E
    sta scroll_type
    sta a:file_select_irq_line
    ldx #$00
    stx new_object_var1
    ldx #$01
    stx OBJ_min_slot
    stx UNK_796+58
    inx
    stx OBJ_max_slot
    pla
    jmp OBJ_New

B3D_b088:
.byte $67,$65,$66

L_3DB08B:
    ASMCALL     B3D_b091                       ; 3DB08B/D091B0
    A_JMP       L_3DB11F                    ; 3DB08E/171FB1

B3D_b091:
    lda UNK_7DB+15
    bne @exit
    lda UNK_7DB+13
    jsr B3F_f859
    inc UNK_7DB+15
    @exit:
    rts

L_3DB0A0:
    ASMCALL     B3D_b0A6                       ; 3DB0A0/D0A6B0
    A_JMP       L_3DB11F                    ; 3DB0A3/171FB1

B3D_b0A6:
    lda UNK_7DB+16
    beq B3D_b0b0
    lda #$ff
    jsr PlaySoundEffect
B3D_b0b0:
    lda UNK_7DB+14
    jsr PlaySoundEffect
    lda #$01
    sta UNK_7DB+16
    rts

L_3DB0BC:
    ASMCALL     B3D_b0c8                       ; 3DB0BC/D0C8B0
    MOV         VAR9,#$03                   ; 3DB0BF/0D0903
    JNE         L_3DB0F6                    ; 3DB0C2/0BF6B0
    A_JMP       L_3DB11F                    ; 3DB0C5/171FB1

B3D_b0c8:
    ldx curr_object_slot
    ldy OBJ_var7, x
    cpy #$04
    beq B3D_b0f0
    lda UNK_7DB+15, y
    beq B3D_b0f0
    cpy #$00
    bne B3D_b0e5
    lda #$ff
    jsr B3F_f859
    lda #$00
    sta UNK_7DB+15
    rts
B3D_b0e5:
    lda #$ff
    jsr PlaySoundEffect
    lda #$00
    sta UNK_7DB+16
    rts
B3D_b0f0:
    lda #$01
    rts

L_3DB0F3:
    MOV         VAR9,#$02                   ; 3DB0F3/0D0902
L_3DB0F6:
    ASMCALL     PlayMusic                       ; 3DB0F6/D045DE // Play music
    .byte       $35                         ; 3DB0F9/35
    ASMCALL     $DE4B                       ; 3DB0FA/D04BDE // Play sound effect
    .byte       $FF                         ; 3DB0FD/FF
    ASMCALL     $B1AB                       ; 3DB0FE/D0ABB1
    A_JMP       L_3DAF1E                    ; 3DB101/171EAF

L_3DB104:
    MOV         VAR7,#$00                   ; 3DB104/0D0700
    MOV         $07E8,#$00                  ; 3DB107/11E80700
    MOV         $07E9,#$00                  ; 3DB10B/11E90700
    MOV         $07EA,#$00                  ; 3DB10F/11EA0700
    MOV         $07EB,#$00                  ; 3DB113/11EB0700
    ASMCALL     $B747                       ; 3DB117/D047B7
    INCPOSE     WAIT #4                     ; 3DB11A/74
    SETXVEL     #$9DD0, WAIT #7             ; 3DB11B/B7D09D
    SETXVEL     #$090D, WAIT #1             ; 3DB11E/B10D09
    ONTICK      $13050D                     ; 3DB121/080D0513
    ONTICK      $3DB1C3                     ; 3DB125/08C3B13D
    HALT                                    ; 3DB129/09

L_3DB12A:
    MOV         VAR7,#$00                   ; 3DB12A/0D0700
    ASMCALL     $B747                       ; 3DB12D/D047B7
    INCPOSE     WAIT #4                     ; 3DB130/74
    INC2POSE    WAIT #13                    ; 3DB131/9D
    ONTICK      $3DB1C3                     ; 3DB132/08C3B13D
    HALT                                    ; 3DB136/09

L_3DB137:
    ASMCALL     $B747                       ; 3DB137/D047B7
    JML         $050D9D                     ; 3DB13A/039D0D05

;?????
B3D_b13e:
.byte $1F,$0D,$07,$00
.byte $08,$C3,$B1,$3D,$09

L_3DB147:
    ASMCALL     $B169                       ; 3DB147/D069B1
    JNE         L_3DB15A                    ; 3DB14A/0B5AB1
    A_JSR       L_3DAAEB                    ; 3DB14D/18EBAA
    ASMCALL     $DF0D                       ; 3DB150/D00DDF // Destroy all other objects
    MOV         $0180,#$00                  ; 3DB153/11800100
    A_JMP       L_3DAF7F                    ; 3DB157/177FAF

L_3DB15A:
    OR          VAR5,#$10                   ; 3DB15A/13050110
    MOV         VAR7,#$00                   ; 3DB15E/0D0700
    ASMCALL     $B45D                       ; 3DB161/D05DB4
    ONTICK      $3DB1C3                     ; 3DB164/08C3B13D
    HALT                                    ; 3DB168/09

B3D_b169:
    lda #$00
    sta UNK_0
    jsr $bdff
    ldy #$03
    lda (UNK_6), y
    sec
    sbc #$08
    bcc B3D_b193
    cmp #$02
    bcs B3D_b193
    tay
    lda UNK_0
    ora $b19b, y
    sta UNK_0
    ldy #$02
    lda (UNK_6), y
    cmp #$3f
    bcc B3D_b193
    lda UNK_0
    ora #$05
    sta UNK_0
B3D_b193:
    lda UNK_0
    ldx curr_object_slot
    sta OBJ_var5, x
    rts
.byte $03,$0B
B3D_b19d:
    ldx #$03
    lda #$36
    sta script_bank
    lda #$50
    ldy #$ab
    jmp OBJ_TryReplaceScriptPc
    ldx #$04
    lda OBJ_script, x
    bmi B3D_b1b5
    jsr OBJ_Destroy
B3D_b1b5:
    ldx #$03
    lda #$36
    sta script_bank
    lda #$2f
    ldy #$ab
    jmp OBJ_TryReplaceScriptPc
B3D_b1c3:
    jsr $b44a
    ldx curr_object_slot
    lda OBJ_var5, x
    sta UNK_0
    jsr $b2f2
    bcs B3D_b1d3
    rts
B3D_b1d3:
    bne B3D_b20d
    ldx curr_object_slot
    ldy OBJ_vel_z_hi, x
    lda OBJ_var7, x
    cpy #$04
    bne B3D_b1e4
    sta OBJ_var6, x
B3D_b1e4:
    cpy #$06
    beq B3D_b1f3
    cpy #$02
    bne B3D_b1f6
    cmp #$04
    beq B3D_b1f3
    sta UNK_78F1+247
B3D_b1f3:
    sta UNK_78F1+246
B3D_b1f6:
    dey
    dey
    lda $b21e, y
    sta ptr0
    lda $b225, y
    sta ptr0+1
    ldy OBJ_var7, x
    lda (ptr0), y
B3D_b207:
    sta OBJ_vel_z_hi, x
    jmp $af4f
B3D_b20d:
    ldy OBJ_vel_z_hi, x
    dey
    dey
    lda B3D_b217, y
    bne B3D_b207
B3D_b217:
.byte $0a,$02,$03,$04,$02,$02,$11,$2c
.byte $31,$36,$3b,$40,$45,$4c,$b2,$b2
.byte $B2,$B2,$B2,$B2,$B2,$03,$03,$03
.byte $FF,$06,$00,$04,$00,$08,$02,$05
.byte $05,$05,$12,$02,$0D,$0D,$0D,$FF
.byte $02,$07,$07,$07,$FF,$02,$00,$00
.byte $00,$00,$00,$02,$09,$0E,$0F,$00
.byte $00,$10

L_3DB251:
    ASMCALL     $B747                       ; 3DB251/D047B7
    DEC2POSE    WAIT #11                    ; 3DB254/AB
    INC2POSE    WAIT #12                    ; 3DB255/9C
    ASMCALL     $B548                       ; 3DB256/D048B5
L_3DB259:
    MOV         REG,$79E8                   ; 3DB259/1CE879
    MOV         VAR7,REG                    ; 3DB25C/1D07
    MOV         VAR9,#$02                   ; 3DB25E/0D0902
    ASMCALL     $DF61                       ; 3DB261/D061DF // Load_Palette, palette, start_index, entries
    .word       $B270                       ; 3DB264/70B2
    .byte       $05                         ; 3DB266/05
    .byte       $01                         ; 3DB267/01
    ASMCALL     $B271                       ; 3DB268/D071B2
    ONTICK      $3DB1C3                     ; 3DB26B/08C3B13D
    HALT                                    ; 3DB26F/09

.byte $3A

B3D_b271:
    ldx #$02
    stx UNK_78F1+246
    lda #$00
    sta UNK_0
B3D_b27a:
    jsr $bdff
    ldy #$02
    lda (UNK_6), y
    bne B3D_b290
    ldy UNK_78F1+246
    dey
    sty UNK_78F1+246
    bpl B3D_b27a
    lda #$07
    bne B3D_b292
B3D_b290:
    lda #$17
B3D_b292:
    ldx curr_object_slot
    sta OBJ_var5, x
    rts

L_3DB298:
    MOV         VAR7,#$04                   ; 3DB298/0D0704
    ASMCALL     $DF38                       ; 3DB29B/D038DF // Unknown ASM $DF38
    .byte       $02                         ; 3DB29E/02
    .byte       $B8                         ; 3DB29F/B8
    ASMCALL     $B49F                       ; 3DB2A0/D09FB4
    ASMCALL     $DF61                       ; 3DB2A3/D061DF // Load_Palette, palette, start_index, entries
    .word       $B2B2                       ; 3DB2A6/B2B2
    .byte       $05                         ; 3DB2A8/05
    .byte       $01                         ; 3DB2A9/01
    MOV         VAR5,#$17                   ; 3DB2AA/0D0517
    ONTICK      $3DB1C3                     ; 3DB2AD/08C3B13D
    HALT                                    ; 3DB2B1/09

.byte $2a

L_3DB2B3:
    MOV         VAR7,#$05                   ; 3DB2B3/0D0705
    ASMCALL     $B520                       ; 3DB2B6/D020B5
    ASMCALL     $DF38                       ; 3DB2B9/D038DF // Unknown ASM $DF38
    .byte       $29                         ; 3DB2BC/29
    .byte       $B8                         ; 3DB2BD/B8
    ONTICK      $3DB1C3                     ; 3DB2BE/08C3B13D
    MOV         VAR5,#$30                   ; 3DB2C2/0D0530
    HALT                                    ; 3DB2C5/09

L_3DB2C6:
    ASMCALL     $B2CF                       ; 3DB2C6/D0CFB2
    MOV         VAR9,#$02                   ; 3DB2C9/0D0902
    A_JMP       L_3DAF1E                    ; 3DB2CC/171EAF

B3D_b2cf:
    jsr $bdff
    ldy #$02
    lda #$00
    sta (UNK_6), y
    ldy #$0a
    sta (UNK_6), y
    ldy #$03
    sta (UNK_6), y
    jsr $beb9
    ldy #$02
    lda #$00
    sta (UNK_0), y
    ldy #$0a
    sta (UNK_0), y
    ldy #$03
    sta (UNK_0), y
    rts

B3D_b2f2:
    ldx curr_object_slot
    lda a:pad_press
    tay
    and #$90
    beq B3D_b325
    ldx curr_object_slot
    lda OBJ_vel_z_hi, x
    cmp #$06
    bne B3D_b316
    lda OBJ_var7, x
    sta UNK_78F1+246
    jsr $bdff
    ldy #$02
    lda (UNK_6), y
    beq B3D_b323
    bne B3D_b31a
B3D_b316:
    cmp #$08
    beq B3D_b31f
B3D_b31a:
    lda #$2d
    jsr PlaySoundEffect
B3D_b31f:
    lda #$00
    sec
    rts
B3D_b323:
    clc
    rts
B3D_b325:
    tya
    and #$40
    beq B3D_b33c
    ldx curr_object_slot
    lda OBJ_vel_z_hi, x
    cmp #$08
    beq B3D_b338
    lda #$23
    jsr PlaySoundEffect
B3D_b338:
    lda #$01
    sec
    rts
B3D_b33c:
    lda OBJ_vel_z_hi, x
    cmp #$07
    beq B3D_b35b
    cmp #$08
    bne B3D_b36d
    tya
    and #$02
    beq B3D_b351
    lda #$ff
    jmp B3D_b3d2
B3D_b351:
    tya
    and #$01
    beq B3D_b36d
    lda #$01
    jmp B3D_b3d2
B3D_b35b:
    tya
    and #$02
    beq B3D_b364
    lda #$05
B3D_b362:
    bne B3D_b397
B3D_b364:
    tya
    and #$01
    beq B3D_b3a6
    lda #$06
    bne B3D_b397
B3D_b36d:
    tya
    and #$24
    beq B3D_b384
    ldy OBJ_var7, x
B3D_b375:
    iny
    cpy #$05
    beq B3D_b3a6
    lda UNK_0
    and B3E_cabe, y
    beq B3D_b375
    tya
    bne B3D_b397
B3D_b384:
    tya
    and #$08
    beq B3D_b3a6
    ldy OBJ_var7, x
B3D_b38c:
    dey
    bmi B3D_b3a6
    lda UNK_0
    and B3E_cabe, y
    beq B3D_b38c
    tya
B3D_b397:
    sta OBJ_var7, x
    lda OBJ_vel_z_hi, x
    cmp #$08
    beq B3D_b3a6
    lda #$2c
    jsr PlaySoundEffect
B3D_b3a6:
    ldy OBJ_var7, x
    lda $b43c, y
    sta a:OBJ_x_lo, x
    lda $b443, y
    sta a:OBJ_y_lo, x
    lda OBJ_vel_z_hi, x
    cmp #$02
    beq B3D_b3c0
    cmp #$06
    bne B3D_b3d0
B3D_b3c0:
    cpy #$04
    bne B3D_b3c9
    jsr $b6ae
    clc
    rts
B3D_b3c9:
    lda OBJ_var7, x
    tay
    jsr $b69e
B3D_b3d0:
    clc
    rts
B3D_b3d2:
    sta UNK_1
    lda OBJ_var7, x
    cmp #$04
    beq B3D_b3d0
    cmp #$00
    bne B3D_b422
    lda UNK_7DB+13
    clc
    adc UNK_1
    cmp #$ff
    beq B3D_b3f1
    cmp #$3a
    bne B3D_b3f3
    lda #$00
    beq B3D_b3f3
B3D_b3f1:
    lda #$39
B3D_b3f3:
    sta UNK_7DB+13
    sta UNK_1
    and #$f0
    lsr a
    lsr a
    lsr a
    lsr a
    adc #$9c
    sta UNK_7DB+10
    lda UNK_1
    and #$0f
    clc
    adc #$9c
    sta UNK_7DB+11
    lda OBJ_var7, x
    asl a
    tay
    iny
    sty UNK_1
    lda #$02
    ldy #$08
    ldx #$14
    stx UNK_0
    jsr $bba9
    clc
    rts
B3D_b422:
    lda UNK_7DB+14
    clc
    adc UNK_1
    cmp #$ff
    beq B3D_b434
    cmp #$58
    bne B3D_b436
    lda #$00
    beq B3D_b436
B3D_b434:
    lda #$57
B3D_b436:
    sta UNK_7DB+14
    jmp $b3f6
.byte $24,$24,$24,$24,$24
.byte $A0,$C8
.byte $BC,$CC,$DC
.byte $EC
.byte $FC
.byte $FC,$FC
B3D_b44a:
    ldx curr_object_slot
    inc OBJ_vel_z_lo, x
    lda OBJ_vel_z_lo, x
    and #$18
    lsr a
    lsr a
    lsr a
    adc #$0b
    sta OBJ_pose, x
    rts
B3D_b45d:
    ldx #$00
    stx UNK_7DB+16
    ldx curr_object_slot
    lda OBJ_var5, x
    sta UNK_7DB+15
B3D_b46a:
    lda #$06
    sta UNK_0
    ldx UNK_7DB+16
    lda $b497, x
    sta UNK_1
    lsr UNK_7DB+15
    bcs B3D_b47f
    lda #$04
    bne B3D_b482
B3D_b47f:
    lda $b49b, x
B3D_b482:
    ldy #$03
    jsr $bba9
    inc UNK_7DB+16
    ldx UNK_7DB+16
    cpx #$04
    bne B3D_b46a
    jsr B3E_c0be
.byte $02,$B8
    rts
.byte $00,$02,$04,$06,$19,$1A,$1B
.byte $1C,$A2,$02,$8E,$E7,$79,$20,$FF
.byte $BD,$A0,$02,$B1,$06,$D0,$03,$4C
.byte $10,$B5,$20,$5C,$B6,$90,$0F,$A9
.byte $9D,$8D,$E5,$07,$A9,$9C,$8D,$E6
.byte $07,$8D,$E7,$07,$D0,$16,$C9,$9C
.byte $D0,$02,$A9,$FC,$8D,$E6,$07,$A9
.byte $FC,$8D,$E5,$07,$A5,$00,$18,$69
.byte $9C,$8D,$E7,$07,$A9,$7B,$8D,$E8
.byte $07,$A9,$FC,$8D,$E9,$07,$AE,$E7
.byte $79,$BC,$1D,$B5,$C8,$84,$01,$A9
.byte $02,$A0,$01,$A2,$18,$86,$00,$20
.byte $A9,$BB,$4C,$FB,$B4,$A9,$0F,$85
.byte $00,$AE,$E7,$79,$BD,$1D,$B5,$85
.byte $01,$E6,$01,$A9,$18,$A0,$0A,$20
.byte $A9,$BB,$AE,$E7,$79,$CA,$8E,$E7
.byte $79,$30,$03,$4C,$A4,$B4,$60,$00
.byte $02,$04,$A2,$02,$8A,$48,$CD,$E7
.byte $79,$F0,$16,$A9,$06,$85,$00,$BD
.byte $45,$B5,$85,$01,$A9,$04,$E0,$00
.byte $D0,$02,$A9,$05,$A0,$03,$20,$A9
.byte $BB,$68,$AA,$CA,$10,$DE,$60,$00
.byte $02,$04
B3D_b548:
    ldx #$02
    stx UNK_78F1+246
B3D_b54d:
    jsr $bdff
    ldy #$02
    lda (UNK_6), y
    bne B3D_b572
    ldx UNK_78F1+246
    lda $b659, x
    sta UNK_1
    lda #$00
    cpx #$00
    bne B3D_b566
    lda #$01
B3D_b566:
    ldy #$00
    ldx #$11
    stx UNK_0
    jsr $bba9
    jmp $b63d
B3D_b572:
    jsr $b65c
    bcc B3D_b57a
    jmp $b60b
B3D_b57a:
    cmp #$9c
    bne B3D_b580
    lda #$fc
B3D_b580:
    sta UNK_7DB+10
    lda UNK_0
    clc
    adc #$9c
    sta UNK_7DB+11
    lda #$7b
    sta UNK_7DB+12
    lda #$fc
    sta UNK_7DB+13
    lda #$98
    sta UNK_7DB+14
    ldx UNK_78F1+246
    ldy $b659, x
    iny
    sty UNK_1
    lda #$02
    ldy #$01
    ldx #$10
    stx UNK_0
    jsr $bba9
    jsr $bdff
    ldy #$03
    lda (UNK_6), y
    cmp #$08
    bne B3D_b5d5
    ldx UNK_78F1+246
    ldy $b659, x
    sty UNK_1
    lda #$1d
    cpx #$00
    bne B3D_b5c9
    lda #$1e
B3D_b5c9:
    ldy #$09
    ldx #$16
    stx UNK_0
    jsr $bba9
    jmp $b63d
B3D_b5d5:
    clc
    adc #$9d
    sta UNK_7DB+10
    ldx UNK_78F1+246
    ldy $b659, x
    iny
    sty UNK_1
    lda #$02
    ldy #$05
    ldx #$1c
    stx UNK_0
    jsr $bba9
    ldx UNK_78F1+246
    ldy $b659, x
    sty UNK_1
    lda #$16
    cpx #$00
    bne B3D_b5ff
    lda #$17
B3D_b5ff:
    ldy #$06
    ldx #$16
    stx UNK_0
    jsr $bba9
    jmp $b63d
B3D_b60b:
    jsr $bdff
    ldx UNK_78F1+246
    ldy #$03
    lda (UNK_6), y
    cmp #$09
    bne B3D_b623
    lda #$14
    cpx #$00
    bne B3D_b62f
    lda #$15
    bne B3D_b62f
B3D_b623:
    cmp #$08
    bne B3D_b63d
    lda #$12
    cpx #$00
    bne B3D_b62f
    lda #$13
B3D_b62f:
    ldy $b659, x
    sty UNK_1
    ldy #$04
    ldx #$0f
    stx UNK_0
    jsr $bba9
B3D_b63d:
    ldx UNK_78F1+246
    dex
    stx UNK_78F1+246
    bmi B3D_b649
    jmp $b54d
B3D_b649:
    lda UNK_78F1+247
    cmp #$03
    bcc B3D_b655
    lda #$00
    sta UNK_78F1+247
B3D_b655:
    tay
    jmp $b69e
.byte $00,$02,$04
B3D_b65c:
    cmp #$3f
    bcc B3D_b662
    sec
    rts
B3D_b662:
    ldx #$64
    jsr B3E_c698
    ldy #$3f
    jsr B3E_c56b
    sta UNK_0
    jsr $b673
    clc
    rts
B3D_b673:
    ldx #$0a
    stx UNK_1
    ldy #$00
    lda UNK_0
B3D_b67b:
    sec
    sbc UNK_1
    bcc B3D_b683
    iny
    bne B3D_b67b
B3D_b683:
    adc UNK_1
    sta UNK_0
    tya
    ora UNK_0
    bne B3D_b68e
    inc UNK_0
B3D_b68e:
    tya
    cmp #$0a
    bcc B3D_b697
    lda #$09
    sta UNK_0
B3D_b697:
    sta UNK_78F1+248
    clc
    adc #$9c
    rts
B3D_b69e:
    lda $be0d, y
    sta UNK_6
    lda $be10, y
    sta UNK_7
    ldy #$02
    lda (UNK_6), y
    bne B3D_b6b5
B3D_b6ae:
    lda #$0b
    sta UNK_78F1+248
    bne B3D_b6c9
B3D_b6b5:
    jsr $b65c
    bcc B3D_b6c9
    ldy #$03
    lda (UNK_6), y
    ldy #$0a
    cmp #$09
    bne B3D_b6c6
    ldy #$0c
B3D_b6c6:
    sty UNK_78F1+248
B3D_b6c9:
    ldy #$06
    sty UNK_1
    ldy UNK_78F1+248
    lda $b6dc, y
    ldy #$02
    ldx #$0e
    stx UNK_0
    jmp $bba9
.byte $03,$06,$07,$08,$0A,$0B,$0C,$09
.byte $0D,$0E,$0F,$11,$10

L_3DB6E9:
    A_JSR       L_3DAA25                    ; 3DB6E9/1825AA
    MOV         $051E,#$00                  ; 3DB6EC/111E0500
    ASMCALL     $C42F                       ; 3DB6F0/D02FC4
    MOV         $0065,#$34                  ; 3DB6F3/11650034
    MOV         $0180,#$06                  ; 3DB6F7/11800106
    SETYCAMERA  #$0128                      ; 3DB6FB/312801
    ASMCALL     $A42B                       ; 3DB6FE/D02BA4
    ASMCALL     $B747, WAIT #1              ; 3DB701/D147B7
    JML         $E1D09D                     ; 3DB704/039DD0E1

.byte $DE,$03,$69,$00,$00,$00,$02,$00
.byte $18,$E4,$AA,$0D,$09,$04,$17,$3C
.byte $B1

L_3DB719:
    ENDTICK                                 ; 3DB719/0E
    A_JSR       L_3DB7E2                    ; 3DB71A/18E2B7
    MOV         $07AE,#$00                  ; 3DB71D/11AE0700
    MOV         $07AD,#$00                  ; 3DB721/11AD0700
    A_JMP       L_3DAA97                    ; 3DB725/1797AA

L_3DB728:
    ENDTICK                                 ; 3DB728/0E
    ASMCALL     $BE50                       ; 3DB729/D050BE
    ASMCALL     $B747                       ; 3DB72C/D047B7
    DEC2POSE    WAIT #11                    ; 3DB72F/AB
    INC2POSE    WAIT #12                    ; 3DB730/9C
    ASMCALL     $B548                       ; 3DB731/D048B5
    A_JSR       L_3DB7C6                    ; 3DB734/18C6B7
    SPRITEMAP   $37967D                     ; 3DB737/1A7D9637
    SETXPOS     #$0000                      ; 3DB73B/2A0000
    SETYPOS     #$0100                      ; 3DB73E/2B0001
    MOV         VAR9,#$0B                   ; 3DB741/0D090B
    A_JMP       L_3DAF1E                    ; 3DB744/171EAF

B3D_b747:
    jsr Script_ReadByte
    sta ptr0
    jsr Script_ReadByte
    sta ptr0+1
    lda #$c8
    sta ptr1
    lda #$68
    sta ptr1+1
    jsr Decompress
    jsr B3E_c0be
    .addr B3D_b767
    jsr B3E_c0be
    .addr B3D_b76e
    rts
B3D_b767:
.byte $03,$00,$20,$20,$0E,$C8,$68
B3D_b76e:
.byte $02,$C0,$23,$20,$01,$55

.byte $02,$FF,$FF,$89,$39,$EB,$00,$88
.byte $23,$FF,$00,$92,$22,$FC,$04,$66
.byte $6E,$6C,$62,$5C,$28,$FC,$00,$9C
.byte $C7,$00,$34,$00,$91,$87,$00,$1E
.byte $36,$FC,$88,$00,$3D,$0B,$6C,$68
.byte $6E,$67,$5D,$FC,$5E,$5F,$5F,$5E
.byte $5C,$6D,$F0,$33,$00,$32,$9F,$00
.byte $46,$F0,$3F,$00,$86,$9F,$00,$46
.byte $03,$6A,$6E,$62,$6D,$97,$00,$4A
.byte $00,$97,$39,$EC,$00,$DE,$E4,$61
.byte $FF,$FF

L_3DB7C6:
    MOV         $0065,#$00                  ; 3DB7C6/11650000
    MOV         $0180,#$06                  ; 3DB7CA/11800106
    ONTICK      $00D8A6                     ; 3DB7CE/08A6D800
    SETYCAMERAVEL#$0188                     ; 3DB7D2/338801
    LOOP        #26                         ; 3DB7D5/011A
        ASMCALL     B3D_b7dd, WAIT #1              ; 3DB7D7/D1DDB7
L_3DB7DA:
    ENDLOOP                                 ; 3DB7DA/02
    ZEROCAMERAVEL                           ; 3DB7DB/39
    A_RTS                                   ; 3DB7DC/19

B3D_b7dd:
    inc file_select_irq_line
    inc file_select_irq_line
    rts

L_3DB7E2:
    MOV         $0065,#$34                  ; 3DB7E2/11650034
    MOV         $0180,#$06                  ; 3DB7E6/11800106
    ONTICK      $00D8A6                     ; 3DB7EA/08A6D800
    SETYCAMERAVEL#$FE78                     ; 3DB7EE/3378FE
    LOOP        #26                         ; 3DB7F1/011A
        ASMCALL     B3D_b7fd, WAIT #1              ; 3DB7F3/D1FDB7
L_3DB7F6:
    ENDLOOP                                 ; 3DB7F6/02
    ZEROCAMERAVEL                           ; 3DB7F7/39
    MOV         $0180,#$00                  ; 3DB7F8/11800100
    A_RTS                                   ; 3DB7FC/19

B3D_b7fd:
    dec file_select_irq_line
    dec file_select_irq_line
    rts

.byte $00,$06,$21,$11,$02,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$6A,$6E
.byte $62,$6D,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $00,$06,$21,$17,$02,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$5A,$6B,$5E,$FC
.byte $72,$68,$6E,$FC,$6C,$6E,$6B,$5E
.byte $7C,$FC,$FC,$67,$4E,$FC,$FC,$FC
.byte $72,$44,$52
.byte $EB,$EB,$EB,$EB,$EB,$EB,$EB,$EB
.byte $EB,$EB,$EB,$EB,$EB,$EB,$EB,$EB
.byte $EB,$EB,$EB,$EB,$EB,$EB,$EB,$5C
.byte $68,$67,$6D,$62,$67,$6E,$5E,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$69,$65,$5A
.byte $72,$FC,$5B,$68,$67,$6E,$6C,$FC
.byte $60,$5A,$66,$5E,$6C,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$69,$65,$5A,$72,$FC
.byte $5E,$71,$6D,$6B,$5A,$FC,$60,$5A
.byte $66,$5E,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$65
.byte $62,$6C,$6D,$5E,$67,$FC,$6D,$68
.byte $FC,$6C,$68,$6E,$67,$5D,$6C,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$6C,$6D,$5A,$6B,$6D,$FC
.byte $FC,$FC,$FC,$FC
.byte $EB,$EB,$EB,$EB,$EB,$EB,$EB,$EB
.byte $EB,$EB,$6C,$6D,$5A,$6B,$6D,$FC
.byte $FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC
.byte $EB,$EB,$EB,$EB,$EB,$EB,$EB,$EB
.byte $EB,$EB,$EB,$EB,$EB,$EB,$EB,$EB
.byte $EB,$EB,$EB,$EB,$EB,$EB,$EB,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$65,$5E,$6F,$5E,$65
.byte $EB,$EB,$EB,$EB,$EB,$65,$5E,$6F
.byte $5E,$65,$FC,$5D,$44,$4B,$44,$53
.byte $44,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$5F,$62,$67,$62,$6C,$61
.byte $FC
.byte $EB,$EB,$EB,$EB,$EB,$EB,$EB,$5F
.byte $62,$67,$62,$6C,$61,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$9D,$9C
.byte $9C,$7B,$FC,$98,$FC,$5E,$71,$6D
.byte $6B,$5A,$FC,$FC
.byte $EB,$EB,$EB,$EB,$EB,$EB,$EB,$EB
.byte $EB,$EB,$EB,$EB,$EB,$EB,$9D,$9C
.byte $9C,$7B,$FC,$98,$FC,$5E,$71,$6D
.byte $6B,$5A,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$9D,$9C
.byte $9C,$7B,$FC,$98,$FC,$69,$5E,$6B
.byte $5F,$5E,$5C,$6D,$EB,$EB,$EB,$EB
.byte $EB,$EB,$EB,$EB,$EB,$EB,$EB,$EB
.byte $EB,$EB,$9D,$9C,$9C,$7B,$FC,$98
.byte $FC,$69,$5E,$6B,$5F,$5E,$5C,$6D
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$7F
.byte $FC,$70,$40,$53,$44,$51,$FC,$5D
.byte $51,$4E,$4F,$FC,$FC,$7F,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$7F,$FC,$6C
.byte $4E,$4D,$FC,$4E,$45,$FC,$70,$48
.byte $4D,$43,$FC,$7F,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$7F,$65,$48,$75,$4B
.byte $FC,$6D,$51,$40,$55,$44,$4B,$44
.byte $51,$7F,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$7F,$6C,$56,$48,$45,$53,$FC
.byte $61,$54,$4D,$53,$44,$51,$FC,$7F
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$7F
.byte $6C,$53,$40,$51,$FC,$60,$44,$4D
.byte $44,$51,$40,$4B,$FC,$7F,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$7F,$FC,$6C
.byte $53,$40,$51,$FC,$61,$44,$51,$40
.byte $4B,$43,$FC,$7F,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$7F,$5D,$51,$44,$40
.byte $4C,$FC,$61,$54,$4D,$53,$44,$51
.byte $FC,$7F,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$7F,$5D,$51,$44,$40,$4C,$FC
.byte $70,$40,$51,$51,$48,$4E,$51,$7F
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$7F
.byte $FC,$FC,$60,$51,$44,$40,$53,$FC
.byte $5A,$42,$44,$FC,$FC,$7F
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$7F
.byte $FC,$5F,$48,$4D,$40,$4B,$FC,$6C
.byte $53,$40,$51,$FC,$FC,$7F
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$7F
.byte $61,$44,$51,$4E,$FC,$4E,$45,$FC
.byte $65,$4E,$51,$44,$FC,$7F
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
.byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$7F
.byte $FC,$6C,$54,$4F,$44,$51,$FC,$6C
.byte $53,$40,$51,$FC,$FC,$7F
B3D_bba9:
    tax
    lda $bbc9, y
    sta UNK_7DB+6
    lda $bbd4, y
    sta UNK_7DB+7
    lda $bbdf, x
    sta UNK_7DB+8
    lda $bbfe, x
    sta UNK_7DB+9
    ldx UNK_0
    ldy UNK_1
    jmp $bc1d
.byte $0A,$05,$0F,$17,$0E
.byte $01,$05,$06,$02
.byte $07
.byte $09
.byte $02,$01,$02,$02,$02
.byte $01,$02,$02,$01
.byte $02
.byte $01
.byte $14
.byte $28
.byte $E5
.byte $41
.byte $3C
.byte $6A,$5F,$7D,$9B,$B9,$D7,$F5,$13
.byte $31
.byte $4F
.byte $6D
.byte $8B
.byte $3C
.byte $D1
.byte $ED
.byte $09,$25,$98,$A2,$AC
.byte $5C,$8A,$B8
.byte $E6,$B5
.byte $C3,$B9
.byte $B9
.byte $07
.byte $BA
.byte $B9
.byte $B9,$BA,$BA,$BA,$BA,$BA,$BA,$BB
.byte $BB
.byte $BB
.byte $BB
.byte $BB
.byte $B9
.byte $B9
.byte $B9
.byte $BA,$BA,$B9,$B9,$B9
.byte $B8,$B8,$B8
.byte $B8,$B9
.byte $B9
B3D_bc1d:
    lda #$03
    sta UNK_7DB+3
    jsr B3E_c08d
    sta UNK_7DB+4
    stx UNK_7DB+5
    lda #$de
    ldx #$07
    jmp B3E_c0da
B3D_bc32:
    lsr current_score+2
    ror current_score+1
    ror current_score
    ldx #$00
    stx ability_uses
    stx kirby_05E0
    stx current_stage
    stx UNK_564+6
    stx UNK_51B+1
    stx UNK_7DA
    dex
    stx kirby_copy_ability
    ldx #$04
    lda #$2f
    ldy extra_game_flag
    beq B3D_bc5f
    ldx #$02
    lda #$17
B3D_bc5f:
    stx extra_lives
    sta kirby_health
    sta kirby_max_health
    jsr $bc9e
    lda #$ff
    sta current_room+1
    lda $bcad, x
    sta room_0562
    lda $bcb6, x
    sta room_0562+1
    lda $bcbf, x
    sta UNK_564
    lda $bcc8, x
    sta UNK_564+1
    cpx #$08
    bne B3D_bc92
    lda #$04
    sta UNK_7F5
    dex
B3D_bc92:
    stx UNK_539+31
    stx UNK_78F1+248
    jsr $bcd1
    jmp $bee5
B3D_bc9e:
    ldx #$ff
B3D_bca0:
    inx
    cpx #$08
    beq B3D_bcac
    lda level_boss_status, x
    and #$80
    bne B3D_bca0
B3D_bcac:
    rts
.byte $00
.byte $01
.byte $02,$03,$04,$05,$06,$0F,$10,$00
.byte $00
.byte $00,$00,$00,$00,$00,$00,$00,$02
.byte $03
.byte $03,$03,$00,$00,$00,$04,$00,$46
.byte $21
.byte $23,$28,$23,$2A,$2C,$47,$00
B3D_bcd1:
    ldy #$07
B3D_bcd3:
    lda level_boss_status, y
    and #$80
    sta level_boss_status, y
    dey
    bpl B3D_bcd3
    rts
B3D_bcdf:
    ldx #$00
    stx UNK_7DA
    dex
    stx current_room+1
    lda #$01
    sta UNK_2
    jsr $bd96
    jsr $bcd1
    jsr $bee5
    lda UNK_78F1+248
    sta UNK_539+31
    rts
B3D_bcfc:
    lda extra_game_flag
    cmp #$02
    bne B3D_bd03
    rts
B3D_bd03:
    lda #$01
    sta $f7
    sta UNK_2
    jsr $bd96
    lda #$08
    ldy extra_game_flag
    beq B3D_bd14
    lda #$09
B3D_bd14:
    sta level_progress+7
    lda #$ff
    sta current_room+1
    lda #$06
    sta room_0562
    lda #$00
    sta room_0562+1
    lda #$00
    sta UNK_564
    lda #$f9
    sta UNK_564+1
    lda #$06
    sta UNK_78F1+248
    jmp $bd4e
B3D_bd38:
    ldy current_level
    sty UNK_78F1+248
B3D_bd3e:
    lda #$00
    sta $f7
    lda UNK_78F1+248
    cmp #$07
    bcs B3D_bd4d
    lda extra_game_flag
    beq B3D_bd4e
B3D_bd4d:
    rts
B3D_bd4e:
    lda #$00
    sta $f5
    lda extra_game_flag
    bne B3D_bd6a
    jsr $bdff
    ldy #$02
    lda (UNK_6), y
    cmp #$3f
    bcc B3D_bd6a
    iny
    lda (UNK_6), y
    cmp #$08
    bcc B3D_bd6a
    inc $f5
B3D_bd6a:
    lda #$00
    sta UNK_2
    jsr $bd96
    lda extra_game_flag
    bne B3D_bd8c
    jsr $be13
    cmp #$3f
    bcc B3D_bd8c
    ldy #$03
    lda (UNK_6), y
    cmp #$08
    bcc B3D_bd8c
    lda $f5
    bne B3D_bd8c
    lda #$02
    sta $f5
B3D_bd8c:
    jsr $be91
    lda #$00
    sta UNK_2
    jmp $bec7
B3D_bd96:
    lda #$00
    sta UNK_3
    lda #$03
    sta UNK_4
    jsr $bdff
B3D_bda1:
    ldx UNK_3
    lda $bddc, x
    sta UNK_0
    inx
    lda $bddc, x
    sta UNK_1
    and UNK_0
    cmp #$ff
    beq B3D_bddb
    inx
    ldy $bddc, x
    inx
    stx UNK_3
B3D_bdbb:
    dey
    bmi B3D_bda1
    sty UNK_9
    lda UNK_2
    bne B3D_bdcf
    lda (UNK_0), y
    ldy UNK_4
    sta (UNK_6), y
    ldy UNK_9
    jmp $bdd7
B3D_bdcf:
    ldy UNK_4
    lda (UNK_6), y
    ldy UNK_9
    sta (UNK_0), y
B3D_bdd7:
    inc UNK_4
    bne B3D_bdbb
B3D_bddb:
    rts
.byte $21,$05,$08,$29,$05,$08,$31,$05
.byte $08,$E9,$79,$01,$58,$05,$01,$62
.byte $05,$02,$64,$05,$01,$65,$05,$01
.byte $5A,$05,$02,$5C,$05,$01,$5D,$05
.byte $01,$FF,$FF
B3D_bdff:
    ldy UNK_78F1+246
    lda $be0d, y
    sta UNK_6
    lda $be10, y
    sta UNK_7
    rts
.byte $03,$4F,$9B,$79,$79,$79
B3D_be13:
    lda #$00
    sta UNK_5
    ldx #$02
B3D_be19:
    lda $be4a, x
    sta UNK_0
    lda $be4d, x
    sta UNK_1
    ldy #$06
B3D_be25:
    lda (UNK_0), y
    cpx #$02
    bne B3D_be2d
    and #$80
B3D_be2d:
    asl a
    bcc B3D_be32
    inc UNK_5
B3D_be32:
    bne B3D_be2d
    dey
    bpl B3D_be25
    dex
    bpl B3D_be19
    lda level_progress+7
    and #$08
    beq B3D_be43
    inc UNK_5
B3D_be43:
    lda UNK_5
    ldy #$02
    sta (UNK_6), y
    rts
.byte $21,$29,$31,$05,$05,$05
B3D_be50:
    lda #$02
    sta UNK_78F1+246
B3D_be55:
    jsr $bdff
    jsr $be7b
    bcs B3D_be63
B3D_be5d:
    dec UNK_78F1+246
    bpl B3D_be55
    rts
B3D_be63:
    lda #$01
    sta UNK_2
    jsr $bec7
    jsr $be7b
    bcc B3D_be5d
    ldy #$02
    lda #$00
    sta (UNK_6), y
    ldy #$03
    sta (UNK_6), y
    bne B3D_be5d
B3D_be7b:
    jsr $bea0
    ldy #$00
    cmp (UNK_6), y
    bne B3D_be8f
    jsr $bead
    ldy #$01
    cmp (UNK_6), y
    bne B3D_be8f
    clc
    rts
B3D_be8f:
    sec
    rts
B3D_be91:
    jsr $bea0
    ldy #$00
    sta (UNK_6), y
    jsr $bead
    ldy #$01
    sta (UNK_6), y
    rts
B3D_bea0:
    ldy #$02
    lda #$00
    clc
B3D_bea5:
    adc (UNK_6), y
    iny
    cpy #$26
    bne B3D_bea5
    rts
B3D_bead:
    ldy #$02
    lda #$00
B3D_beb1:
    eor (UNK_6), y
    iny
    cpy #$26
    bne B3D_beb1
    rts
B3D_beb9:
    ldy UNK_78F1+246
    lda $bedf, y
    sta UNK_0
    lda $bee2, y
    sta UNK_1
    rts
B3D_bec7:
    jsr $beb9
    ldy #$25
B3D_becc:
    lda UNK_2
    bne B3D_bed7
    lda (UNK_6), y
    sta (UNK_0), y
    jmp $bedb
B3D_bed7:
  lda (UNK_0), y
  sta (UNK_6), y
B3D_bedb:
    dey
    bpl B3D_becc
    rts
.byte $29
.byte $75,$C1
.byte $79
.byte $79,$79

B3D_bee5:
    ldy #$07
B3D_bee7:
    lda level_progress, y
    sta UNK_539+1, y
    lda level_switch_progress, y
    sta UNK_539+9, y
    lda level_boss_status, y
    sta UNK_539+17, y
    dey
    bpl B3D_bee7
    rts

.byte $AD,$5F,$05,$C9,$00,$D0,$08,$AD
.byte $5E,$05,$C9,$0C,$D0,$01,$60,$EE
.byte $58,$05,$AC,$58,$05,$B9,$30,$BF
.byte $8D,$62,$05,$B9,$38,$BF,$8D,$63
.byte $05,$B9,$40,$BF,$8D,$64,$05,$B9
.byte $48,$BF,$8D,$65,$05,$A9,$FF,$8D
.byte $5F,$05,$60,$08,$09,$0A,$0B,$0C
.byte $6C,$0E,$0F,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$0B,$05
.byte $00,$01,$04,$13,$26,$86,$39,$31
.byte $29,$26,$47

L_3DBF50:
    MOV         $0180,#$00                  ; 3DBF50/11800100
    WAIT        #1                          ; 3DBF54/0601
L_3DBF56:
    A_RTS                                   ; 3DBF56/19

.byte $41,$05,$B9,$31,$05,$99,$49,$05
.byte $88,$10,$EB,$60,$AD,$5F,$05,$C9
.byte $00,$D0,$08,$AD,$5E,$05,$C9,$0C
.byte $D0,$01,$60,$EE,$58,$05,$AC,$58
.byte $05,$B9,$96,$BF,$8D,$62,$05,$B9
.byte $9E,$BF,$8D,$63,$05,$B9,$A6,$BF
.byte $8D,$64,$05,$B9,$AE,$BF,$8D,$65
.byte $05,$A9,$FF,$8D,$5F,$05,$60,$08
.byte $09,$0A,$0B,$0C,$6C,$0E,$0F,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$0B,$05,$00,$01,$04,$13
.byte $26,$86,$39,$31,$29,$26,$47,$11
.byte $80,$01,$00,$06,$01,$19,$FF,$FF
.byte $FF,$FF,$FF,$FF,$DF,$FF,$FF,$FF
.byte $FF,$FF,$F7,$FF,$FF,$FF,$DF,$FF
.byte $7F,$FF,$FF,$FF,$FF,$FF,$7F,$FF
.byte $FF,$FF,$7F,$FF,$7E,$FF,$FF,$FF
.byte $EF,$FF,$F7,$FF,$FF,$FF,$F7,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$DF,$F7,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF
