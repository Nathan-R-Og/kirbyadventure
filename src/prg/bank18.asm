.segment "PRG18": absolute

    incbinRange "../split/prg/bank18.bin", 0, $51
InitObjModule:
    lda #.LOBYTE($DA29)
    sta $603B
    lda #.HIBYTE($DA29)
    sta $603C

    ldx #-1
    stx first_obj
    stx OBJ_next+MAX_OBJ-1
    stx SCR_next+MAX_SCR-1

    inx ; ldx #0
    stx OBJ_next_free
    stx SCR_next_free
    stx ram6600

    ldx #MAX_OBJ-1
    @loop1:
    txa
    sta OBJ_next-1,x
    dex
    bne @loop1

    ldx #MAX_SCR-1
    @loop2:
    txa
    sta SCR_next-1,x
    dex
    bne @loop2

    ldx #MAX_OBJ-1
    lda #-1
    @loop3:
    sta OBJ_script,x
    dex
    bpl @loop3

    lda #0
    sta camera_vel_x
    sta camera_vel_x+1

    sta camera_vel_y
    sta camera_vel_y+1

    sta camera_x
    sta camera_x+1

    sta camera_y
    sta camera_y+1

    lda #$80
    sta camera_x_frac
    sta camera_y_frac
    jmp ClearOam

incbinRange "../split/prg/bank18.bin", $a7, $0311

L_18A311:
    MOV         REG,$6601                   ; 18A311/1C0166
    JNE         L_18A3AC                    ; 18A314/0BACA3
    WAIT        #30                         ; 18A317/061E
L_18A319:
    MOV         $058A,#$02                  ; 18A319/118A0502
    WAIT        #180                        ; 18A31D/06B4
L_18A31F:
    MOV         $058A,#$03                  ; 18A31F/118A0503
    WAIT        #250                        ; 18A323/06FA
L_18A325:
    WAIT        #127                        ; 18A325/067F
L_18A327:
    MOV         $058A,#$04                  ; 18A327/118A0504
    WAIT        #132                        ; 18A32B/0684
L_18A32D:
    MOV         $058A,#$05                  ; 18A32D/118A0505
    WAIT        #252                        ; 18A331/06FC
L_18A333:
    MOV         $058A,#$06                  ; 18A333/118A0506
    WAIT        #250                        ; 18A337/06FA
L_18A339:
    WAIT        #168                        ; 18A339/06A8
L_18A33B:
    MOV         $058A,#$07                  ; 18A33B/118A0507
    WAIT        #250                        ; 18A33F/06FA
L_18A341:
    WAIT        #200                        ; 18A341/06C8
L_18A343:
    MOV         $058A,#$08                  ; 18A343/118A0508
    WAIT        #250                        ; 18A347/06FA
L_18A349:
    MOV         $058A,#$09                  ; 18A349/118A0509
    WAIT        #192                        ; 18A34D/06C0
L_18A34F:
    MOV         $058A,#$0A                  ; 18A34F/118A050A
    WAIT        #232                        ; 18A353/06E8
L_18A355:
    MOV         $058A,#$0B                  ; 18A355/118A050B
    WAIT        #250                        ; 18A359/06FA
L_18A35B:
    WAIT        #64                         ; 18A35B/0640
L_18A35D:
    MOV         $058A,#$0C                  ; 18A35D/118A050C
    MOV         $0043,#$A2                  ; 18A361/114300A2
    WAIT        #240                        ; 18A365/06F0
L_18A367:
    MOV         $058A,#$0D                  ; 18A367/118A050D
    WAIT        #250                        ; 18A36B/06FA
L_18A36D:
    WAIT        #64                         ; 18A36D/0640
L_18A36F:
    MOV         $058A,#$0E                  ; 18A36F/118A050E
    MOV         $0043,#$9E                  ; 18A373/1143009E
    WAIT        #250                        ; 18A377/06FA
L_18A379:
    WAIT        #28                         ; 18A379/061C
L_18A37B:
    MOV         $058A,#$0F                  ; 18A37B/118A050F
    MOV         $0043,#$AC                  ; 18A37F/114300AC
    WAIT        #250                        ; 18A383/06FA
L_18A385:
    WAIT        #180                        ; 18A385/06B4
L_18A387:
    MOV         $058A,#$10                  ; 18A387/118A0510
    WAIT        #250                        ; 18A38B/06FA
L_18A38D:
    MOV         $058A,#$11                  ; 18A38D/118A0511
    WAIT        #138                        ; 18A391/068A
L_18A393:
    MOV         $058A,#$12                  ; 18A393/118A0512
    WAIT        #250                        ; 18A397/06FA
L_18A399:
    WAIT        #250                        ; 18A399/06FA
L_18A39B:
    MOV         $058A,#$13                  ; 18A39B/118A0513
    WAIT        #250                        ; 18A39F/06FA
L_18A3A1:
    MOV         $058A,#$14                  ; 18A3A1/118A0514
    WAIT        #250                        ; 18A3A5/06FA
    MOV         $056A,#$01                  ; 18A3A7/116A0501
    END                                     ; 18A3AB/00

L_18A3AC:
    ASMCALL     $A40C                       ; 18A3AC/D00CA4
    MOV         palette_fade,#$04                  ; 18A3AF/11A20104
    LOOP        #4                          ; 18A3B3/0104
        ASMCALL     $C996, WAIT #2              ; 18A3B5/D296C9 // Palette fade (out?) step
L_18A3B8:
    ENDLOOP                                 ; 18A3B8/02
    WAIT        #240                        ; 18A3B9/06F0
L_18A3BB:
    WAIT        #120                        ; 18A3BB/0678
L_18A3BD:
    ADD         $058A,#1                    ; 18A3BD/168A050201
    ASMCALL     $DFA3                       ; 18A3C2/D0A3DF // SUB reg, #arg2, arg1
    .word       $6601                       ; 18A3C5/0166
    .byte       $07                         ; 18A3C7/07
    JEQ         L_18A3DE                    ; 18A3C8/0ADEA3
    WAIT        #240                        ; 18A3CB/06F0
L_18A3CD:
    WAIT        #120                        ; 18A3CD/0678
L_18A3CF:
    MOV         palette_fade,#$00                  ; 18A3CF/11A20100
    LOOP        #4                          ; 18A3D3/0104
        ASMCALL     $C94C, WAIT #2              ; 18A3D5/D24CC9 // Palette fade dark in step
L_18A3D8:
    ENDLOOP                                 ; 18A3D8/02
    MOV         $056A,#$01                  ; 18A3D9/116A0501
    END                                     ; 18A3DD/00

L_18A3DE:
    WAIT        #240                        ; 18A3DE/06F0
L_18A3E0:
    WAIT        #120                        ; 18A3E0/0678
L_18A3E2:
    MOV         palette_fade,#$00                  ; 18A3E2/11A20100
    MOV         $0603,#$FF                  ; 18A3E6/110306FF
    LOOP        #4                          ; 18A3EA/0104
        LOOP        #8                          ; 18A3EC/0108
            ADD         $0603,#-8                   ; 18A3EE/16030602F8
            WAIT        #1                          ; 18A3F3/0601
L_18A3F5:
        ENDLOOP                                 ; 18A3F5/02
        ASMCALL     $C94C                       ; 18A3F6/D04CC9 // Palette fade dark in step
    ENDLOOP                                 ; 18A3F9/02
    ASMCALL     $DF0D                       ; 18A3FA/D00DDF // Destroy all other objects
    ASMCALL     $DE45                       ; 18A3FD/D045DE // Play music
    .byte       $FF                         ; 18A400/FF
    WAIT        #60                         ; 18A401/063C
L_18A403:
    MOV         $0603,#$FF                  ; 18A403/110306FF
    MOV         $056A,#$01                  ; 18A407/116A0501
    END                                     ; 18A40B/00

; CODE OR DATA -- $18A40C .. $18A847
incbinRange "../split/prg/bank18.bin", $040C, $0847

CopyAttack_Wheel:
    MOV         $05E0,#$0A                  ; 18A847/11E0050A
    ASMCALL     $DE4B                       ; 18A84B/D04BDE // Play sound effect
    .byte       $4F                         ; 18A84E/4F
    SPRITEMAP   L_1B9CAE                     ; 18A84F/1AAE9C1B
    ONTICK      $18A882                     ; 18A853/0882A818
    ASMCALL     $8710                       ; 18A857/D01087 // Set Kirby's X velocity
    .word       $FE80                       ; 18A85A/80FE
    A_JSR       L_18A877                    ; 18A85C/1877A8
    ASMCALL     $8710                       ; 18A85F/D01087 // Set Kirby's X velocity
    .word       $0400                       ; 18A862/0004
    ASMCALL     $9BF7                       ; 18A864/D0F79B // Get Kirby's sub-state (0=STOP, 1=WALK, 2=DASH, 3=FALL, 4=WATER_STOP, 5=WATER_WALK, 6=SWIM, 7=LEAVE_WATER)
    TABLEJMP    #7                          ; 18A867/0F07
    .word       KST45_WheelLand                    ; 18A869/92A8
    .word       KST45_WheelLand                    ; 18A86B/92A8
    .word       KST45_WheelLand                    ; 18A86D/92A8
    .word       KST46_WheelFall                    ; 18A86F/77A9
    .word       KST45_WheelLand                    ; 18A871/92A8
    .word       KST45_WheelLand                    ; 18A873/92A8
    .word       KST46_WheelFall                    ; 18A875/77A9
L_18A877:
    LOOP        #2                          ; 18A877/0102
        ASMCALL     $8FDC, WAIT #2              ; 18A879/D2DC8F // Set pose (respect facing)
        .byte       $00                         ; 18A87C/00
L_18A87D:
        INC2POSE    WAIT #2                     ; 18A87D/92
L_18A87E:
        INC2POSE    WAIT #2                     ; 18A87E/92
L_18A87F:
        INC2POSE    WAIT #2                     ; 18A87F/92
L_18A880:
    ENDLOOP                                 ; 18A880/02
    A_RTS                                   ; 18A881/19

; CODE OR DATA -- $18A882 .. KST45_WheelLand
incbinRange "../split/prg/bank18.bin", $0882, $0892

KST45_WheelLand:
    MOV         $05E1,#$07                  ; 18A892/11E10507
    ASMCALL     $DE4B                       ; 18A896/D04BDE // Play sound effect
    .byte       $4F                         ; 18A899/4F
    ASMCALL     $9952                       ; 18A89A/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 18A89D/00
    .byte       $00                         ; 18A89E/00
    .byte       $01                         ; 18A89F/01
    .byte       $00                         ; 18A8A0/00
    ONTICK      $18A8AB                     ; 18A8A1/08ABA818
    ASMCALL     $8710                       ; 18A8A5/D01087 // Set Kirby's X velocity
    .word       $0400                       ; 18A8A8/0004
L_18A8AA:
    HALT                                    ; 18A8AA/09

; CODE OR DATA -- $18A8AB .. KST47_WheelTurn
incbinRange "../split/prg/bank18.bin", $08AB, $0922

KST47_WheelTurn:
    MOV         $05E1,#$03                  ; 18A922/11E10503
    ASMCALL     $DE4B                       ; 18A926/D04BDE // Play sound effect
    .byte       $50                         ; 18A929/50
    ASMCALL     $9952                       ; 18A92A/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 18A92D/00
    .byte       $00                         ; 18A92E/00
    .byte       $01                         ; 18A92F/01
    .byte       $00                         ; 18A930/00
    ONTICK      $18A949                     ; 18A931/0849A918
    ASMCALL     $8710                       ; 18A935/D01087 // Set Kirby's X velocity
    .word       $0200                       ; 18A938/0002
    LOOP        #4                          ; 18A93A/0104
        ASMCALL     $8FDC, WAIT #2              ; 18A93C/D2DC8F // Set pose (respect facing)
        .byte       $10                         ; 18A93F/10
L_18A940:
        INC2POSE    WAIT #2                     ; 18A940/92
L_18A941:
    ENDLOOP                                 ; 18A941/02
    ADD         VAR1,#-128                  ; 18A942/13010280
    A_JMP       KST45_WheelLand                    ; 18A946/1792A8

; CODE OR DATA -- $18A949 .. KST46_WheelFall
incbinRange "../split/prg/bank18.bin", $0949, $0977

KST46_WheelFall:
    MOV         $05E1,#$05                  ; 18A977/11E10505
    ONTICK      $18A980                     ; 18A97B/0880A918
    HALT                                    ; 18A97F/09

; CODE OR DATA -- $18A980 .. KST48_WheelEnd
incbinRange "../split/prg/bank18.bin", $0980, $09D2

KST48_WheelEnd:
    MOV         $05E1,#$00                  ; 18A9D2/11E10500
    ONTICK      $18A9E4                     ; 18A9D6/08E4A918
    ASMCALL     $A9EA                       ; 18A9DA/D0EAA9 // Limit Kirby's velocity to 2.0px/f
    A_JSR       L_18A877                    ; 18A9DD/1877A8
    JML         L_14B2D9                    ; 18A9E0/03D9B214

; CODE OR DATA -- $18A9E4 .. KST49_WheelBonk
incbinRange "../split/prg/bank18.bin", $09E4, $0A05

KST49_WheelBonk:
    ASMCALL     $DE4B                       ; 18AA05/D04BDE // Play sound effect
    .byte       $40                         ; 18AA08/40
    ASMCALL     $9952                       ; 18AA09/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 18AA0C/00
    .byte       $00                         ; 18AA0D/00
    .byte       $0C                         ; 18AA0E/0C
    .byte       $00                         ; 18AA0F/00
    ASMCALL     $9DB6                       ; 18AA10/D0B69D // Set Kirby's velocities to (-1.0, -3.0), respecting facing
    JML         L_14B2D9                    ; 18AA13/03D9B214

CopyAttack_Tornado:
    MOV         $05E1,#$01                  ; 18AA17/11E10501
    MOV         VAR0,#$00                   ; 18AA1B/0D0000
    ASMCALL     $DE4B                       ; 18AA1E/D04BDE // Play sound effect
    .byte       $51                         ; 18AA21/51
    SPRITEMAP   L_1B9E5A                     ; 18AA22/1A5A9E1B
    ONTICK      $18AA69                     ; 18AA26/0869AA18
    ASMCALL     $AADF                       ; 18AA2A/D0DFAA // Set VAR2 and VAR3
    .byte       $00                         ; 18AA2D/00
    .byte       $01                         ; 18AA2E/01
    ASMCALL     $98D5                       ; 18AA2F/D0D598 // Get facing as 0 or 0x80
    JNE         L_18AA4F                    ; 18AA32/0B4FAA
    SETPOSE     #$0F, WAIT #2               ; 18AA35/520F
L_18AA37:
    SETPOSE     #$08, WAIT #2               ; 18AA37/5208
L_18AA39:
    INCPOSE     WAIT #2                     ; 18AA39/72
L_18AA3A:
    INCPOSE     WAIT #2                     ; 18AA3A/72
L_18AA3B:
    ASMCALL     $AADF                       ; 18AA3B/D0DFAA // Set VAR2 and VAR3
    .byte       $00                         ; 18AA3E/00
    .byte       $02                         ; 18AA3F/02
    INCPOSE     WAIT #2                     ; 18AA40/72
L_18AA41:
    INCPOSE     WAIT #2                     ; 18AA41/72
L_18AA42:
    INCPOSE     WAIT #2                     ; 18AA42/72
L_18AA43:
    INCPOSE     WAIT #2                     ; 18AA43/72
L_18AA44:
    LOOP        #2                          ; 18AA44/0102
        SETPOSE     #$10, WAIT #2               ; 18AA46/5210
L_18AA48:
        INCPOSE     WAIT #2                     ; 18AA48/72
L_18AA49:
        INCPOSE     WAIT #2                     ; 18AA49/72
L_18AA4A:
        INCPOSE     WAIT #2                     ; 18AA4A/72
L_18AA4B:
    ENDLOOP                                 ; 18AA4B/02
    A_JMP       L_18AAEC                    ; 18AA4C/17ECAA

L_18AA4F:
    SETPOSE     #$09, WAIT #2               ; 18AA4F/5209
L_18AA51:
    DECPOSE     WAIT #2                     ; 18AA51/82
L_18AA52:
    SETPOSE     #$0F, WAIT #2               ; 18AA52/520F
L_18AA54:
    DECPOSE     WAIT #2                     ; 18AA54/82
L_18AA55:
    ASMCALL     $AADF                       ; 18AA55/D0DFAA // Set VAR2 and VAR3
    .byte       $00                         ; 18AA58/00
    .byte       $02                         ; 18AA59/02
    DECPOSE     WAIT #2                     ; 18AA5A/82
L_18AA5B:
    DECPOSE     WAIT #2                     ; 18AA5B/82
L_18AA5C:
    DECPOSE     WAIT #2                     ; 18AA5C/82
L_18AA5D:
    DECPOSE     WAIT #2                     ; 18AA5D/82
L_18AA5E:
    LOOP        #2                          ; 18AA5E/0102
        SETPOSE     #$13, WAIT #2               ; 18AA60/5213
L_18AA62:
        DECPOSE     WAIT #2                     ; 18AA62/82
L_18AA63:
        DECPOSE     WAIT #2                     ; 18AA63/82
L_18AA64:
        DECPOSE     WAIT #2                     ; 18AA64/82
L_18AA65:
    ENDLOOP                                 ; 18AA65/02
    A_JMP       L_18AAEC                    ; 18AA66/17ECAA

; CODE OR DATA -- $18AA69 .. $18AAEC
incbinRange "../split/prg/bank18.bin", $0A69, $0AEC

L_18AAEC:
    MOV         $05E0,#$0C                  ; 18AAEC/11E0050C
    MOV         $05E1,#$02                  ; 18AAF0/11E10502
    ASMCALL     $9952                       ; 18AAF4/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 18AAF7/00
    .byte       $00                         ; 18AAF8/00
    .byte       $1F                         ; 18AAF9/1F
    .byte       $00                         ; 18AAFA/00
    ASMCALL     $AADF                       ; 18AAFB/D0DFAA // Set VAR2 and VAR3
    .byte       $00                         ; 18AAFE/00
    .byte       $04                         ; 18AAFF/04
    ONTICK      $18AB0F                     ; 18AB00/080FAB18
    LOOP        #16                         ; 18AB04/0110
        SETPOSE     #$00, WAIT #1               ; 18AB06/5100
L_18AB08:
        INC2POSE    WAIT #1                     ; 18AB08/91
L_18AB09:
        INC2POSE    WAIT #1                     ; 18AB09/91
L_18AB0A:
        INC2POSE    WAIT #1                     ; 18AB0A/91
L_18AB0B:
    ENDLOOP                                 ; 18AB0B/02
    A_JMP       L_18AB33                    ; 18AB0C/1733AB

; CODE OR DATA -- $18AB0F .. $18AB33
incbinRange "../split/prg/bank18.bin", $0B0F, $0B33

L_18AB33:
    MOV         $05E0,#$02                  ; 18AB33/11E00502
    MOV         $05E1,#$01                  ; 18AB37/11E10501
    ONTICK      $18AA69                     ; 18AB3B/0869AA18
    ASMCALL     $AADF                       ; 18AB3F/D0DFAA // Set VAR2 and VAR3
    .byte       $00                         ; 18AB42/00
    .byte       $02                         ; 18AB43/02
    ASMCALL     $98D5                       ; 18AB44/D0D598 // Get facing as 0 or 0x80
    JNE         L_18AB63                    ; 18AB47/0B63AB
    SETPOSE     #$10, WAIT #2               ; 18AB4A/5210
L_18AB4C:
    INCPOSE     WAIT #2                     ; 18AB4C/72
L_18AB4D:
    INCPOSE     WAIT #2                     ; 18AB4D/72
L_18AB4E:
    INCPOSE     WAIT #2                     ; 18AB4E/72
L_18AB4F:
    SETPOSE     #$10, WAIT #2               ; 18AB4F/5210
L_18AB51:
    INCPOSE     WAIT #2                     ; 18AB51/72
L_18AB52:
    ASMCALL     $AADF                       ; 18AB52/D0DFAA // Set VAR2 and VAR3
    .byte       $00                         ; 18AB55/00
    .byte       $01                         ; 18AB56/01
    INCPOSE     WAIT #2                     ; 18AB57/72
L_18AB58:
    INCPOSE     WAIT #2                     ; 18AB58/72
L_18AB59:
    SETPOSE     #$08, WAIT #2               ; 18AB59/5208
L_18AB5B:
    LOOP        #6                          ; 18AB5B/0106
        INCPOSE     WAIT #2                     ; 18AB5D/72
L_18AB5E:
    ENDLOOP                                 ; 18AB5E/02
    JML         L_14B2D9                    ; 18AB5F/03D9B214

L_18AB63:
    SETPOSE     #$13, WAIT #2               ; 18AB63/5213
L_18AB65:
    DECPOSE     WAIT #2                     ; 18AB65/82
L_18AB66:
    DECPOSE     WAIT #2                     ; 18AB66/82
L_18AB67:
    DECPOSE     WAIT #2                     ; 18AB67/82
L_18AB68:
    SETPOSE     #$13, WAIT #2               ; 18AB68/5213
L_18AB6A:
    DECPOSE     WAIT #2                     ; 18AB6A/82
L_18AB6B:
    MOV         VAR3,#$02                   ; 18AB6B/0D0302
    DECPOSE     WAIT #2                     ; 18AB6E/82
L_18AB6F:
    DECPOSE     WAIT #2                     ; 18AB6F/82
L_18AB70:
    SETPOSE     #$0A, WAIT #2               ; 18AB70/520A
L_18AB72:
    LOOP        #5                          ; 18AB72/0105
        INCPOSE     WAIT #2                     ; 18AB74/72
L_18AB75:
    ENDLOOP                                 ; 18AB75/02
    SETPOSE     #$08, WAIT #2               ; 18AB76/5208
L_18AB78:
    JML         L_14B2D9                    ; 18AB78/03D9B214

L_18AB7C:
    MOV         $05E0,#$07                  ; 18AB7C/11E00507
    MOV         $05E1,#$00                  ; 18AB80/11E10500
    ASMCALL     $9CB3                       ; 18AB84/D0B39C // Load some palette? (Kirby's palette?)
    SPRITEMAP   L_1C8216                     ; 18AB87/1A16821C
    ONTICK      $18ABD5                     ; 18AB8B/08D5AB18
    ASMCALL     $8FDC                       ; 18AB8F/D0DC8F // Set pose (respect facing)
    .byte       $8A                         ; 18AB92/8A
    WAIT        #8                          ; 18AB93/0608
L_18AB95:
    INC2POSE    WAIT #3                     ; 18AB95/93
L_18AB96:
    DEC2POSE                                ; 18AB96/A0
    WAIT        #8                          ; 18AB97/0608
L_18AB99:
    INC2POSE                                ; 18AB99/90
    WAIT        #16                         ; 18AB9A/0610
L_18AB9C:
    DEC2POSE                                ; 18AB9C/A0
    WAIT        #20                         ; 18AB9D/0614
L_18AB9F:
    LOOP        #3                          ; 18AB9F/0103
        ASMCALL     $DE4B                       ; 18ABA1/D04BDE // Play sound effect
        .byte       $52                         ; 18ABA4/52
        ASMCALL     $8FDC                       ; 18ABA5/D0DC8F // Set pose (respect facing)
        .byte       $8E                         ; 18ABA8/8E
        WAIT        #32                         ; 18ABA9/0620
L_18ABAB:
        INC2POSE    WAIT #12                    ; 18ABAB/9C
L_18ABAC:
        ASMCALL     $9952                       ; 18ABAC/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $08                         ; 18ABAF/08
        .byte       $02                         ; 18ABB0/02
        .byte       $02                         ; 18ABB1/02
        .byte       $00                         ; 18ABB2/00
        INC2POSE                                ; 18ABB3/90
        WAIT        #64                         ; 18ABB4/0640
L_18ABB6:
        DEC2POSE    WAIT #8                     ; 18ABB6/A8
L_18ABB7:
    ENDLOOP                                 ; 18ABB7/02
    MOV         $05E0,#$00                  ; 18ABB8/11E00500
    MOV         $05E3,#$FF                  ; 18ABBC/11E305FF
    ASMCALL     $9CB3                       ; 18ABC0/D0B39C // Load some palette? (Kirby's palette?)
    ASMCALL     $DE4B                       ; 18ABC3/D04BDE // Play sound effect
    .byte       $0F                         ; 18ABC6/0F
    ASMCALL     $8FDC                       ; 18ABC7/D0DC8F // Set pose (respect facing)
    .byte       $94                         ; 18ABCA/94
    WAIT        #16                         ; 18ABCB/0610
L_18ABCD:
    INC2POSE    WAIT #4                     ; 18ABCD/94
L_18ABCE:
    DEC2POSE                                ; 18ABCE/A0
    WAIT        #16                         ; 18ABCF/0610
L_18ABD1:
    JML         KST01_DiscardAbility        ; 18ABD1/034BA714

; CODE OR DATA -- $18ABD5 .. $18ABDB
incbinRange "../split/prg/bank18.bin", $0BD5, $0BDB

CopyAttack_Fireball:
    MOV         $05E0,#$09                  ; 18ABDB/11E00509
    MOV         $05E1,#$0C                  ; 18ABDF/11E1050C
    ASMCALL     $9A6A                       ; 18ABE3/D06A9A // Unknown ASM $219A6A
    .word       $9B06                       ; 18ABE6/069B
    .word       $0100                       ; 18ABE8/0001
    ASMCALL     $DE4B                       ; 18ABEA/D04BDE // Play sound effect
    .byte       $3E                         ; 18ABED/3E
    ONTICK      $18AC5A                     ; 18ABEE/085AAC18
    ASMCALL     $8710                       ; 18ABF2/D01087 // Set Kirby's X velocity
    .word       $FE00                       ; 18ABF5/00FE
    ASMCALL     $885C                       ; 18ABF7/D05C88 // Set Kirby's Y velocity
    .word       $FF00                       ; 18ABFA/00FF
    ASMCALL     $8FDC, WAIT #1              ; 18ABFC/D1DC8F // Set pose (respect facing)
    .byte       $16                         ; 18ABFF/16
L_18AC00:
    ASMCALL     $884D, WAIT #2              ; 18AC00/D24D88 // Zero Kirby's Y velocity
L_18AC03:
    ASMCALL     $9952                       ; 18AC03/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $04                         ; 18AC06/04
    .byte       $00                         ; 18AC07/00
    .byte       $0F                         ; 18AC08/0F
    .byte       $00                         ; 18AC09/00
    INC2POSE    WAIT #2                     ; 18AC0A/92
L_18AC0B:
    ASMCALL     $9952, WAIT #1              ; 18AC0B/D15299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $04                         ; 18AC0E/04
    .byte       $00                         ; 18AC0F/00
    .byte       $0F                         ; 18AC10/0F
    .byte       $00                         ; 18AC11/00
L_18AC12:
    ONTICK      $18AC66                     ; 18AC12/0866AC18
    ASMCALL     $8710                       ; 18AC16/D01087 // Set Kirby's X velocity
    .word       $0400                       ; 18AC19/0004
    INC2POSE    WAIT #8                     ; 18AC1B/98
L_18AC1C:
    LOOP        #3                          ; 18AC1C/0103
        ASMCALL     $8FDC, WAIT #2              ; 18AC1E/D2DC8F // Set pose (respect facing)
        .byte       $1C                         ; 18AC21/1C
L_18AC22:
        INC2POSE    WAIT #2                     ; 18AC22/92
L_18AC23:
        INC2POSE    WAIT #2                     ; 18AC23/92
L_18AC24:
    ENDLOOP                                 ; 18AC24/02
    MOV         $05E0,#$02                  ; 18AC25/11E00502
    ONTICK      $18AC9A                     ; 18AC29/089AAC18
    ASMCALL     $8710                       ; 18AC2D/D01087 // Set Kirby's X velocity
    .word       $0180                       ; 18AC30/8001
    INC2POSE    WAIT #4                     ; 18AC32/94
L_18AC33:
    INC2POSE    WAIT #4                     ; 18AC33/94
L_18AC34:
    INC2POSE    WAIT #4                     ; 18AC34/94
L_18AC35:
    JML         L_14B2D9                    ; 18AC35/03D9B214

KST3F_FireballBonkWall:
    ASMCALL     $DE4B                       ; 18AC39/D04BDE // Play sound effect
    .byte       $40                         ; 18AC3C/40
    ASMCALL     $9952                       ; 18AC3D/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 18AC40/00
    .byte       $00                         ; 18AC41/00
    .byte       $0C                         ; 18AC42/0C
    .byte       $00                         ; 18AC43/00
    ASMCALL     $9DB6                       ; 18AC44/D0B69D // Set Kirby's velocities to (-1.0, -3.0), respecting facing
    A_JMP       L_18AC4F                    ; 18AC47/174FAC

KST40_FireballBonkSlope:
    ASMCALL     $8710                       ; 18AC4A/D01087 // Set Kirby's X velocity
    .word       $0180                       ; 18AC4D/8001
L_18AC4F:
    MOV         $05F0,#$19                  ; 18AC4F/11F00519
    ASMCALL     $ACBE                       ; 18AC53/D0BEAC // Destroy fireball particles
    JML         L_14B2D9                    ; 18AC56/03D9B214

; CODE OR DATA -- $18AC5A .. KST4B_Inhale
incbinRange "../split/prg/bank18.bin", $0C5A, $0CD7

KST4B_Inhale:
    SPRITEMAP   L_1A8846                     ; 18ACD7/1A46881A
    MOV         $05E1,#$09                  ; 18ACDB/11E10509
    ASMCALL     $9D8C                       ; 18ACDF/D08C9D
    MOV         VAR2,#$1E                   ; 18ACE2/0D021E
    MOV         VAR4,#$01                   ; 18ACE5/0D0401
    ONTICK      $18ACF6                     ; 18ACE8/08F6AC18
    ASMCALL     $DE4B                       ; 18ACEC/D04BDE // Play sound effect
    .byte       $01                         ; 18ACEF/01
    ASMCALL     $8FDC, WAIT #8              ; 18ACF0/D8DC8F // Set pose (respect facing)
    .byte       $00                         ; 18ACF3/00
L_18ACF4:
    INC2POSE                                ; 18ACF4/90
    HALT                                    ; 18ACF5/09

; CODE OR DATA -- $18ACF6 .. KST4C_InhaleEnd
incbinRange "../split/prg/bank18.bin", $0CF6, $0EC1

KST4C_InhaleEnd:
    ASMCALL     $DE4B                       ; 18AEC1/D04BDE // Play sound effect
    .byte       $FF                         ; 18AEC4/FF
    ONTICK      $18AED1                     ; 18AEC5/08D1AE18
    ASMCALL     $8FDC, WAIT #8              ; 18AEC9/D8DC8F // Set pose (respect facing)
    .byte       $00                         ; 18AECC/00
L_18AECD:
    JML         KST01_DiscardAbility        ; 18AECD/034BA714

; CODE OR DATA -- $18AED1 .. KST4D_MouthfulGrab
incbinRange "../split/prg/bank18.bin", $0ED1, $0EE1

KST4D_MouthfulGrab:
    ASMCALL     $DE4B                       ; 18AEE1/D04BDE // Play sound effect
    .byte       $02                         ; 18AEE4/02
    ONTICK      $18AF17                     ; 18AEE5/0817AF18
    SETPOSE     #$04, WAIT #4               ; 18AEE9/5404
L_18AEEB:
    INC2POSE    WAIT #1                     ; 18AEEB/91
L_18AEEC:
    INC2POSE    WAIT #1                     ; 18AEEC/91
L_18AEED:
    DEC2POSE    WAIT #1                     ; 18AEED/A1
L_18AEEE:
    ADDPOSE     #4, WAIT #1                 ; 18AEEE/6104
L_18AEF0:
    ADDPOSE     #-4, WAIT #1                ; 18AEF0/61FC
L_18AEF2:
    INC2POSE    WAIT #1                     ; 18AEF2/91
L_18AEF3:
    DEC2POSE    WAIT #1                     ; 18AEF3/A1
L_18AEF4:
    ASMCALL     $AF3B                       ; 18AEF4/D03BAF
    TABLEJMP    #3                          ; 18AEF7/0F03
    .word       KST59_Swallow                    ; 18AEF9/2EB3
    .word       L_18AF14                    ; 18AEFB/14AF
    .word       L_18AF0D                    ; 18AEFD/0DAF
    ASMCALL     $9A6A                       ; 18AEFF/D06A9A // Unknown ASM $219A6A
    .word       $9AC0                       ; 18AF02/C09A
    .word       $0000                       ; 18AF04/0000
    ASMCALL     $E2D9                       ; 18AF06/D0D9E2 // Unknown ASM $E2D9 (Set $05A0 and $05A1)
    .byte       $09                         ; 18AF09/09
    A_JMP       L_18AF50                    ; 18AF0A/1750AF

L_18AF0D:
    ASMCALL     $9A6A                       ; 18AF0D/D06A9A // Unknown ASM $219A6A
    .word       $9A94                       ; 18AF10/949A
    .word       $0000                       ; 18AF12/0000
L_18AF14:
    A_JMP       L_18AF50                    ; 18AF14/1750AF

; CODE OR DATA -- $18AF17 .. $18AF50
incbinRange "../split/prg/bank18.bin", $0F17, $0F50

L_18AF50:
    A_JSR       L_18AF68                    ; 18AF50/1868AF
L_18AF53:
    ASMCALL     $9BF7                       ; 18AF53/D0F79B // Get Kirby's sub-state (0=STOP, 1=WALK, 2=DASH, 3=FALL, 4=WATER_STOP, 5=WATER_WALK, 6=SWIM, 7=LEAVE_WATER)
    TABLEJMP    #8                          ; 18AF56/0F08
    .word       KST4E_MouthfulIdle                    ; 18AF58/74AF
    .word       KST4F_MouthfulWalk                    ; 18AF5A/E4AF
    .word       KST52_MouthfulDashSlopeChange                    ; 18AF5C/ECB0
    .word       KST56_MouthfulFall                    ; 18AF5E/3DB2
    .word       KST5B_MouthfulWaterIdle                ; 18AF60/B8B4
    .word       KST5C_MouthfulWaterWalk                ; 18AF62/12B5
    .word       KST5D_MouthfulWaterSwim                    ; 18AF64/C3B5
    .word       $0000                       ; 18AF66/0000
L_18AF68:
    MOV         $05E0,#$01                  ; 18AF68/11E00501
    SPRITEMAP   L_1A8846                     ; 18AF6C/1A46881A
    ASMCALL     $9CB3                       ; 18AF70/D0B39C // Load some palette? (Kirby's palette?)
    A_RTS                                   ; 18AF73/19

KST4E_MouthfulIdle:
    MOV         $05E1,#$00                  ; 18AF74/11E10500
    ONTICK      $18AF83                     ; 18AF78/0883AF18
    A_JSR       L_18B67A                    ; 18AF7C/187AB6
    ASMCALL     $AFD8                       ; 18AF7F/D0D8AF // Set Kirby's idle pose (mouthful)
    HALT                                    ; 18AF82/09

; CODE OR DATA -- $18AF83 .. KST4F_MouthfulWalk
incbinRange "../split/prg/bank18.bin", $0F83, $0FE4

KST4F_MouthfulWalk:
    MOV         REG,$05F8                   ; 18AFE4/1CF805
    JEQ         KST50_MouthfulWalkSlopeChange                    ; 18AFE7/0AEEAF
    ASMCALL     $DE4B                       ; 18AFEA/D04BDE // Play sound effect
    .byte       $31                         ; 18AFED/31
KST50_MouthfulWalkSlopeChange:
    MOV         $05E1,#$01                  ; 18AFEE/11E10501
    MOV         $05BF,#$00                  ; 18AFF2/11BF0500
    ONTICK      $18B074                     ; 18AFF6/0874B018
    A_JSR       L_18B67A                    ; 18AFFA/187AB6
    ASMCALL     $9B96                       ; 18AFFD/D0969B
L_18B000:
    TABLEJMP    #15                         ; 18B000/0F0F
    .word       L_18B020                    ; 18B002/20B0
    .word       L_18B020                    ; 18B004/20B0
    .word       L_18B020                    ; 18B006/20B0
    .word       L_18B040                    ; 18B008/40B0
    .word       L_18B04B                    ; 18B00A/4BB0
    .word       L_18B050                    ; 18B00C/50B0
    .word       L_18B050                    ; 18B00E/50B0
    .word       L_18B050                    ; 18B010/50B0
    .word       L_18B05B                    ; 18B012/5BB0
    .word       L_18B04B                    ; 18B014/4BB0
    .word       L_18B062                    ; 18B016/62B0
    .word       L_18B062                    ; 18B018/62B0
    .word       L_18B062                    ; 18B01A/62B0
    .word       L_18B06D                    ; 18B01C/6DB0
    .word       L_18B04B                    ; 18B01E/4BB0
L_18B020:
    ASMCALL     $8FF5                       ; 18B020/D0F58F // Return (frame_counter & 3)
    TABLEJMP    #4                          ; 18B023/0F04
    .word       L_18B02D                    ; 18B025/2DB0
    .word       L_18B031                    ; 18B027/31B0
    .word       L_18B035                    ; 18B029/35B0
    .word       L_18B039                    ; 18B02B/39B0
L_18B02D:
    ASMCALL     $8FDC, WAIT #12             ; 18B02D/DCDC8F // Set pose (respect facing)
    .byte       $20                         ; 18B030/20
L_18B031:
    ASMCALL     $8FDC, WAIT #6              ; 18B031/D6DC8F // Set pose (respect facing)
    .byte       $22                         ; 18B034/22
L_18B035:
    ASMCALL     $8FDC, WAIT #12             ; 18B035/DCDC8F // Set pose (respect facing)
    .byte       $24                         ; 18B038/24
L_18B039:
    ASMCALL     $8FDC, WAIT #6              ; 18B039/D6DC8F // Set pose (respect facing)
    .byte       $22                         ; 18B03C/22
L_18B03D:
    A_JMP       L_18B02D                    ; 18B03D/172DB0

L_18B040:
    ASMCALL     $8FDC, WAIT #12             ; 18B040/DCDC8F // Set pose (respect facing)
    .byte       $26                         ; 18B043/26
L_18B044:
    INC2POSE    WAIT #6                     ; 18B044/96
L_18B045:
    INC2POSE    WAIT #12                    ; 18B045/9C
L_18B046:
    DEC2POSE    WAIT #6                     ; 18B046/A6
L_18B047:
    DEC2POSE    WAIT #12                    ; 18B047/AC
L_18B048:
    A_JMP       L_18B044                    ; 18B048/1744B0

L_18B04B:
    ASMCALL     $8FDC                       ; 18B04B/D0DC8F // Set pose (respect facing)
    .byte       $2C                         ; 18B04E/2C
    HALT                                    ; 18B04F/09

L_18B050:
    ASMCALL     $8FDC, WAIT #8              ; 18B050/D8DC8F // Set pose (respect facing)
    .byte       $20                         ; 18B053/20
L_18B054:
    INC2POSE    WAIT #4                     ; 18B054/94
L_18B055:
    INC2POSE    WAIT #8                     ; 18B055/98
L_18B056:
    DEC2POSE    WAIT #4                     ; 18B056/A4
L_18B057:
    DEC2POSE    WAIT #8                     ; 18B057/A8
L_18B058:
    A_JMP       L_18B054                    ; 18B058/1754B0

L_18B05B:
    ASMCALL     $8FDC, WAIT #8              ; 18B05B/D8DC8F // Set pose (respect facing)
    .byte       $26                         ; 18B05E/26
L_18B05F:
    A_JMP       L_18B054                    ; 18B05F/1754B0

L_18B062:
    ASMCALL     $8FDC, WAIT #6              ; 18B062/D6DC8F // Set pose (respect facing)
    .byte       $20                         ; 18B065/20
L_18B066:
    INC2POSE    WAIT #3                     ; 18B066/93
L_18B067:
    INC2POSE    WAIT #6                     ; 18B067/96
L_18B068:
    DEC2POSE    WAIT #3                     ; 18B068/A3
L_18B069:
    DEC2POSE    WAIT #6                     ; 18B069/A6
L_18B06A:
    A_JMP       L_18B066                    ; 18B06A/1766B0

L_18B06D:
    ASMCALL     $8FDC, WAIT #6              ; 18B06D/D6DC8F // Set pose (respect facing)
    .byte       $26                         ; 18B070/26
    A_JMP       L_18B066                    ; 18B071/1766B0

; CODE OR DATA -- $18B074 .. KST51_MouthfulDash
incbinRange "../split/prg/bank18.bin", $1074, $10E1

KST51_MouthfulDash:
    ASMCALL     $DE4B                       ; 18B0E1/D04BDE // Play sound effect
    .byte       $37                         ; 18B0E4/37
    ASMCALL     $9952                       ; 18B0E5/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 18B0E8/00
    .byte       $00                         ; 18B0E9/00
    .byte       $01                         ; 18B0EA/01
    .byte       $00                         ; 18B0EB/00
KST52_MouthfulDashSlopeChange:
    MOV         $05E1,#$02                  ; 18B0EC/11E10502
    ONTICK      $18B0FD                     ; 18B0F0/08FDB018
    A_JSR       L_18B67A                    ; 18B0F4/187AB6
    ASMCALL     $9BAA                       ; 18B0F7/D0AA9B
    A_JMP       L_18B000                    ; 18B0FA/1700B0

; CODE OR DATA -- $18B0FD .. KST53_MouthfulSkid
incbinRange "../split/prg/bank18.bin", $10FD, $1160

KST53_MouthfulSkid:
    MOV         $05E1,#$03                  ; 18B160/11E10503
    ASMCALL     $DE4B                       ; 18B164/D04BDE // Play sound effect
    .byte       $31                         ; 18B167/31
    ONTICK      $18B178                     ; 18B168/0878B118
    ASMCALL     $8FDC                       ; 18B16C/D0DC8F // Set pose (respect facing)
    .byte       $2E                         ; 18B16F/2E
    ASMCALL     $9952                       ; 18B170/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 18B173/00
    .byte       $00                         ; 18B174/00
    .byte       $01                         ; 18B175/01
    .byte       $00                         ; 18B176/00
    HALT                                    ; 18B177/09

; CODE OR DATA -- $18B178 .. KST54_MouthfulJump
incbinRange "../split/prg/bank18.bin", $1178, $11BD

KST54_MouthfulJump:
    MOV         $05E1,#$04                  ; 18B1BD/11E10504
    ONTICK      $18B1E7                     ; 18B1C1/08E7B118
    ASMCALL     $885C                       ; 18B1C5/D05C88 // Set Kirby's Y velocity
    .word       $FC70                       ; 18B1C8/70FC
    ASMCALL     $DE4B                       ; 18B1CA/D04BDE // Play sound effect
    .byte       $04                         ; 18B1CD/04
    ASMCALL     $8FDC, WAIT #10             ; 18B1CE/DADC8F // Set pose (respect facing)
    .byte       $34                         ; 18B1D1/34
L_18B1D2:
    DEC2POSE    WAIT #9                     ; 18B1D2/A9
L_18B1D3:
    DEC2POSE    WAIT #4                     ; 18B1D3/A4
KST55_MouthfulJumpPeak:
    ASMCALL     $885C                       ; 18B1D4/D05C88 // Set Kirby's Y velocity
    .word       $FF50                       ; 18B1D7/50FF
    ONTICK      $18B1F1                     ; 18B1D9/08F1B118
    ASMCALL     $8FDC, WAIT #5              ; 18B1DD/D5DC8F // Set pose (respect facing)
    .byte       $30                         ; 18B1E0/30
L_18B1E1:
    ASMCALL     $884D                       ; 18B1E1/D04D88 // Zero Kirby's Y velocity
    A_JMP       KST56_MouthfulFall                    ; 18B1E4/173DB2

; CODE OR DATA -- $18B1E7 .. KST56_MouthfulFall
incbinRange "../split/prg/bank18.bin", $11E7, $123D

KST56_MouthfulFall:
    MOV         $05E1,#$05                  ; 18B23D/11E10505
    ONTICK      $18B258                     ; 18B241/0858B218
    A_JSR       L_18B67A                    ; 18B245/187AB6
    ASMCALL     $8FDC                       ; 18B248/D0DC8F // Set pose (respect facing)
    .byte       $36                         ; 18B24B/36
    HALT                                    ; 18B24C/09

KST57_MouthfulLand:
    ASMCALL     $9BE0                       ; 18B24D/D0E09B // Get Kirby's walking state (0=stopped, 1=walking, 2=dashing). Dashing is defined as `vel_x > 0x014C`, roughly 1.3 px/f
    TABLEJMP    #3                          ; 18B250/0F03
    .word       KST4E_MouthfulIdle                    ; 18B252/74AF
    .word       KST4F_MouthfulWalk                    ; 18B254/E4AF
    .word       KST51_MouthfulDash                    ; 18B256/E1B0
    DEC2POSE                                ; 18B258/A0
    END                                     ; 18B259/00

; CODE OR DATA -- $18B25A .. KST58_MouthfulSpit
incbinRange "../split/prg/bank18.bin", $125A, $129D

KST58_MouthfulSpit:
    MOV         $05E0,#$00                  ; 18B29D/11E00500
    MOV         $05E1,#$0A                  ; 18B2A1/11E1050A
    ASMCALL     $B308                       ; 18B2A5/D008B3
    ONTICK      $18B2DF                     ; 18B2A8/08DFB218
    JSL         L_18B2BA                    ; 18B2AC/04BAB218
    ASMCALL     $8FDC, WAIT #12             ; 18B2B0/DCDC8F // Set pose (respect facing)
    .byte       $38                         ; 18B2B3/38
L_18B2B4:
    INC2POSE    WAIT #6                     ; 18B2B4/96
L_18B2B5:
    INC2POSE    WAIT #6                     ; 18B2B5/96
L_18B2B6:
    JML         KST01_DiscardAbility        ; 18B2B6/034BA714

L_18B2BA:
    ASMCALL     $9A83                       ; 18B2BA/D0839A
    MOV         $05E2,#$FF                  ; 18B2BD/11E205FF
    ASMCALL     $B315                       ; 18B2C1/D015B3
    JEQ         L_18B2D3                    ; 18B2C4/0AD3B2
    ASMCALL     $99EA                       ; 18B2C7/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 18B2CA/08
    .byte       $FC                         ; 18B2CB/FC
    .byte       $00                         ; 18B2CC/00
    .byte       $00                         ; 18B2CD/00
    ASMCALL     $DE4B                       ; 18B2CE/D04BDE // Play sound effect
    .byte       $1B                         ; 18B2D1/1B
    A_RTL                                   ; 18B2D2/05

L_18B2D3:
    ASMCALL     $99EA                       ; 18B2D3/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 18B2D6/08
    .byte       $FC                         ; 18B2D7/FC
    .byte       $08                         ; 18B2D8/08
    .byte       $00                         ; 18B2D9/00
    ASMCALL     $DE4B                       ; 18B2DA/D04BDE // Play sound effect
    .byte       $32                         ; 18B2DD/32
    A_RTL                                   ; 18B2DE/05

; CODE OR DATA -- $18B2DF .. KST59_Swallow
incbinRange "../split/prg/bank18.bin", $12DF, $132E

KST59_Swallow:
    MOV         $05E1,#$0B                  ; 18B32E/11E1050B
    ASMCALL     $9A83                       ; 18B332/D0839A
    ONTICK      $18B3E7                     ; 18B335/08E7B318
    ASMCALL     $E2D9                       ; 18B339/D0D9E2 // Unknown ASM $E2D9 (Set $05A0 and $05A1)
    .byte       $00                         ; 18B33C/00
    ASMCALL     $B471                       ; 18B33D/D071B4
    TABLEJMP    #3                          ; 18B340/0F03
    .word       L_18B365                    ; 18B342/65B3
    .word       L_18B3A7                    ; 18B344/A7B3
    .word       L_18B38A                    ; 18B346/8AB3
L_18B348:
    ASMCALL     $B483                       ; 18B348/D083B4
    TABLECALL   #8                          ; 18B34B/2908
    _is_faraddr KST01_DiscardAbility        ; 18B34D/4BA714
    _is_faraddr L_14B2D9                    ; 18B350/D9B214
    _is_faraddr L_15A000                    ; 18B353/00A015
    _is_faraddr L_17ABCF                    ; 18B356/CFAB17
    _is_faraddr L_15AC09                    ; 18B359/09AC15
    _is_faraddr L_17A000                    ; 18B35C/00A017
    _is_faraddr L_18AB7C                    ; 18B35F/7CAB18
    _is_faraddr L_17B7ED                    ; 18B362/EDB717
L_18B365:
    MOV         $05E2,#$FF                  ; 18B365/11E205FF
    MOV         $05E3,#$FF                  ; 18B369/11E305FF
    MOV         $0598,#$00                  ; 18B36D/11980500
    ASMCALL     $E2D9                       ; 18B371/D0D9E2 // Unknown ASM $E2D9 (Set $05A0 and $05A1)
    .byte       $08                         ; 18B374/08
    ASMCALL     $DE4B                       ; 18B375/D04BDE // Play sound effect
    .byte       $03                         ; 18B378/03
    LOOP        #2                          ; 18B379/0102
        ASMCALL     $8FDC, WAIT #1              ; 18B37B/D1DC8F // Set pose (respect facing)
        .byte       $0C                         ; 18B37E/0C
L_18B37F:
        INC2POSE    WAIT #1                     ; 18B37F/91
L_18B380:
        INC2POSE    WAIT #1                     ; 18B380/91
L_18B381:
        DEC2POSE    WAIT #1                     ; 18B381/A1
L_18B382:
    ENDLOOP                                 ; 18B382/02
    ASMCALL     $8FDC, WAIT #6              ; 18B383/D6DC8F // Set pose (respect facing)
    .byte       $14                         ; 18B386/14
L_18B387:
    A_JMP       L_18B348                    ; 18B387/1748B3

L_18B38A:
    ASMCALL     $9EEA                       ; 18B38A/D0EA9E // Freeze all objects and set kirby flag 0x80 (can't pause flag?)
    ONTICK      $18B3ED                     ; 18B38D/08EDB318
    MOV         VAR0,#$00                   ; 18B391/0D0000
    MOV         $66EC,#$01                  ; 18B394/11EC6601
L_18B398:
    ASMCALL     $DE4B                       ; 18B398/D04BDE // Play sound effect
    .byte       $2C                         ; 18B39B/2C
    ASMCALL     $B417                       ; 18B39C/D017B4
L_18B39F:
    JNE         L_18B398                    ; 18B39F/0B98B3
    MOV         $66EC,#$00                  ; 18B3A2/11EC6600
    ENDTICK                                 ; 18B3A6/0E
L_18B3A7:
    ASMCALL     $B45B                       ; 18B3A7/D05BB4
    ASMCALL     $DE4B                       ; 18B3AA/D04BDE // Play sound effect
    .byte       $29                         ; 18B3AD/29
    LOOP        #2                          ; 18B3AE/0102
        ASMCALL     $8FDC, WAIT #1              ; 18B3B0/D1DC8F // Set pose (respect facing)
        .byte       $0C                         ; 18B3B3/0C
L_18B3B4:
        INC2POSE    WAIT #1                     ; 18B3B4/91
L_18B3B5:
        INC2POSE    WAIT #1                     ; 18B3B5/91
L_18B3B6:
        DEC2POSE    WAIT #1                     ; 18B3B6/A1
L_18B3B7:
    ENDLOOP                                 ; 18B3B7/02
L_18B3B8:
    ASMCALL     $9EEA                       ; 18B3B8/D0EA9E // Freeze all objects and set kirby flag 0x80 (can't pause flag?)
    ASMCALL     $987D                       ; 18B3BB/D07D98 // Zero Kirby's velocities
    ONTICK      $21805B                     ; 18B3BE/085B8021
    ASMCALL     $9CB3                       ; 18B3C2/D0B39C // Load some palette? (Kirby's palette?)
    ASMCALL     $9ED3                       ; 18B3C5/D0D39E // Fade-out step
    ASMCALL     $9952                       ; 18B3C8/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 18B3CB/00
    .byte       $00                         ; 18B3CC/00
    .byte       $1E                         ; 18B3CD/1E
    .byte       $00                         ; 18B3CE/00
    LOOP        #3                          ; 18B3CF/0103
        ASMCALL     $8FDC, WAIT #2              ; 18B3D1/D2DC8F // Set pose (respect facing)
        .byte       $12                         ; 18B3D4/12
L_18B3D5:
        INC2POSE    WAIT #2                     ; 18B3D5/92
L_18B3D6:
    ENDLOOP                                 ; 18B3D6/02
    JSL         PerformCopyGetDemo                    ; 18B3D7/04ADB019
    ASMCALL     $9ED9                       ; 18B3DB/D0D99E
    ASMCALL     $9EF6                       ; 18B3DE/D0F69E // Unfreeze all objects and clear kirby flag 0x80 (can't pause flag?)
    ASMCALL     $B407                       ; 18B3E1/D007B4
    A_JMP       L_18B348                    ; 18B3E4/1748B3

; CODE OR DATA -- $18B3E7 .. KST5A_MouthfulWaterEnter
incbinRange "../split/prg/bank18.bin", $13E7, $14A8

KST5A_MouthfulWaterEnter:
    A_JSR       L_18AF68                    ; 18B4A8/1868AF
    ASMCALL     $9883                       ; 18B4AB/D08398 // Set swimming flag??
    ASMCALL     $9952                       ; 18B4AE/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 18B4B1/00
    .byte       $F8                         ; 18B4B2/F8
    .byte       $04                         ; 18B4B3/04
    .byte       $00                         ; 18B4B4/00
    A_JMP       L_18AF53                    ; 18B4B5/1753AF

KST5B_MouthfulWaterIdle:
    MOV         $05E1,#$00                  ; 18B4B8/11E10500
    ONTICK      $18B4C7                     ; 18B4BC/08C7B418
    A_JSR       L_18B67A                    ; 18B4C0/187AB6
    ASMCALL     $AFD8                       ; 18B4C3/D0D8AF // Set Kirby's idle pose (mouthful)
    HALT                                    ; 18B4C6/09

; CODE OR DATA -- $18B4C7 .. KST5C_MouthfulWaterWalk
incbinRange "../split/prg/bank18.bin", $14C7, $1512

KST5C_MouthfulWaterWalk:
    MOV         $05E1,#$01                  ; 18B512/11E10501
    ONTICK      $18B54D                     ; 18B516/084DB518
    A_JSR       L_18B67A                    ; 18B51A/187AB6
    ASMCALL     $9B96                       ; 18B51D/D0969B
    TABLEJMP    #10                         ; 18B520/0F0A
    .word       L_18B536                    ; 18B522/36B5
    .word       L_18B536                    ; 18B524/36B5
    .word       L_18B536                    ; 18B526/36B5
    .word       L_18B541                    ; 18B528/41B5
    .word       L_18B548                    ; 18B52A/48B5
    .word       L_18B536                    ; 18B52C/36B5
    .word       L_18B536                    ; 18B52E/36B5
    .word       L_18B536                    ; 18B530/36B5
    .word       L_18B541                    ; 18B532/41B5
    .word       L_18B548                    ; 18B534/48B5
L_18B536:
    ASMCALL     $8FDC, WAIT #12             ; 18B536/DCDC8F // Set pose (respect facing)
    .byte       $20                         ; 18B539/20
L_18B53A:
    INC2POSE    WAIT #6                     ; 18B53A/96
    INC2POSE    WAIT #12                    ; 18B53B/9C
    DEC2POSE    WAIT #6                     ; 18B53C/A6
    DEC2POSE    WAIT #12                    ; 18B53D/AC
    A_JMP       L_18B53A                    ; 18B53E/173AB5

L_18B541:
    ASMCALL     $8FDC, WAIT #12             ; 18B541/DCDC8F // Set pose (respect facing)
    .byte       $26                         ; 18B544/26
    A_JMP       L_18B53A                    ; 18B545/173AB5

L_18B548:
    ASMCALL     $8FDC                       ; 18B548/D0DC8F // Set pose (respect facing)
    .byte       $2C                         ; 18B54B/2C
    HALT                                    ; 18B54C/09

; CODE OR DATA -- $18B54D .. KST5D_MouthfulWaterSwim
incbinRange "../split/prg/bank18.bin", $154D, $15C3

KST5D_MouthfulWaterSwim:
    MOV         $05E1,#$05                  ; 18B5C3/11E10505
    ONTICK      $18B5F3                     ; 18B5C7/08F3B518
    MOV         REG,$05F5                   ; 18B5CB/1CF505
    TABLEJMP    #5                          ; 18B5CE/0F05
    .word       L_18B5DA                    ; 18B5D0/DAB5
    .word       L_18B5DD                    ; 18B5D2/DDB5
    .word       L_18B5DD                    ; 18B5D4/DDB5
    .word       L_18B5E5                    ; 18B5D6/E5B5
    .word       L_18B5DD                    ; 18B5D8/DDB5
L_18B5DA:
    SETPOSE     #$36                        ; 18B5DA/5036
    HALT                                    ; 18B5DC/09

L_18B5DD:
    SETPOSE     #$3E, WAIT #5               ; 18B5DD/553E
L_18B5DF:
    INC2POSE    WAIT #4                     ; 18B5DF/94
L_18B5E0:
    INC2POSE    WAIT #5                     ; 18B5E0/95
    DEC2POSE    WAIT #4                     ; 18B5E1/A4
    A_JMP       L_18B5DD                    ; 18B5E2/17DDB5

L_18B5E5:
    SETPOSE     #$44                        ; 18B5E5/5044
    HALT                                    ; 18B5E7/09

KST5E_MouthfulWaterLand:
    ASMCALL     $9BE0                       ; 18B5E8/D0E09B // Get Kirby's walking state (0=stopped, 1=walking, 2=dashing). Dashing is defined as `vel_x > 0x014C`, roughly 1.3 px/f
    TABLEJMP    #3                          ; 18B5EB/0F03
    .word       KST5B_MouthfulWaterIdle                ; 18B5ED/B8B4
    .word       KST5C_MouthfulWaterWalk                ; 18B5EF/12B5
    .word       KST5C_MouthfulWaterWalk                ; 18B5F1/12B5
    ONDRAW      $B640                       ; 18B5F3/2040B6
    ONDRAW      $9C5A                       ; 18B5F6/205A9C
    ONDRAW      $8FCC                       ; 18B5F9/20CC8F
    ONDRAW      $8112                       ; 18B5FC/201281
    ONDRAW      $874B                       ; 18B5FF/204B87
    ONDRAW      $95CD                       ; 18B602/20CD95
    ONDRAW      $9021                       ; 18B605/202190
    ONDRAW      $8BAB                       ; 18B608/20AB8B
    INC2POSE                                ; 18B60B/90
    A_RTL                                   ; 18B60C/05

; CODE OR DATA -- $18B60D .. KST5F_MouthfulWaterSurface
incbinRange "../split/prg/bank18.bin", $160D, $166D

KST5F_MouthfulWaterSurface:
    ASMCALL     $9893                       ; 18B66D/D09398 // Clear Kirby's underwater flag
    ASMCALL     $9952                       ; 18B670/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 18B673/00
    .byte       $F8                         ; 18B674/F8
    .byte       $05                         ; 18B675/05
    .byte       $00                         ; 18B676/00
    A_JMP       KST54_MouthfulJump                    ; 18B677/17BDB1

L_18B67A:
    ASMCALL     $B68C                       ; 18B67A/D08CB6
    JNE         L_18B68B                    ; 18B67D/0B8BB6
    ASMCALL     $DE4B                       ; 18B680/D04BDE // Play sound effect
    .byte       $05                         ; 18B683/05
    ASMCALL     $9952                       ; 18B684/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 18B687/00
    .byte       $00                         ; 18B688/00
    .byte       $00                         ; 18B689/00
    .byte       $00                         ; 18B68A/00
L_18B68B:
    A_RTS                                   ; 18B68B/19

; CODE OR DATA -- $18B68C .. $19A000
incbinRange "../split/prg/bank18.bin", $168C, $2000