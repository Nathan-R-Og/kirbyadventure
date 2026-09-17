.segment "PRG3C": absolute

Script65_QuickDraw:
    MOV         REG,VAR1                    ; 3CA000/1E01
    TABLEJMP    #30                         ; 3CA002/0F1E
    .word       L_3CA040                    ; 3CA004/40A0
    .word       L_3CAA2C                    ; 3CA006/2CAA
    .word       L_3CB3FD                    ; 3CA008/FDB3
    .word       L_3CB209                    ; 3CA00A/09B2
    .word       L_3CADE8                    ; 3CA00C/E8AD
    .word       L_3CB371                    ; 3CA00E/71B3
    .word       L_3CB587                    ; 3CA010/87B5
    .word       L_3CAE06                    ; 3CA012/06AE
    .word       L_3CB411                    ; 3CA014/11B4
    .word       L_3CB260                    ; 3CA016/60B2
    .word       L_3CB2AE                    ; 3CA018/AEB2
    .word       L_3CB2C3                    ; 3CA01A/C3B2
    .word       L_3CB2DA                    ; 3CA01C/DAB2
    .word       L_3CB2EE                    ; 3CA01E/EEB2
    .word       L_3CB302                    ; 3CA020/02B3
    .word       L_3CB319                    ; 3CA022/19B3
    .word       L_3CB330                    ; 3CA024/30B3
    .word       L_3CB109                    ; 3CA026/09B1
    .word       L_3CAE24                    ; 3CA028/24AE
    .word       L_3CAE4C                    ; 3CA02A/4CAE
    .word       L_3CB1ED                    ; 3CA02C/EDB1
    .word       L_3CADCB                    ; 3CA02E/CBAD
    .word       L_3CAE66                    ; 3CA030/66AE
    .word       L_3CAE97                    ; 3CA032/97AE
    .word       L_3CAEC3                    ; 3CA034/C3AE
    .word       L_3CB6DA                    ; 3CA036/DAB6
    .word       L_3CB6FD                    ; 3CA038/FDB6
    .word       L_3CA0AE                    ; 3CA03A/AEA0
    .word       L_3CA0BB                    ; 3CA03C/BBA0
    .word       L_3CA0C9                    ; 3CA03E/C9A0
L_3CA040:
    ASMCALL     $A0F2                       ; 3CA040/D0F2A0
    ASMCALL     $A104                       ; 3CA043/D004A1
    ASMCALL     Load_Palette                       ; 3CA046/D061DF // Load_Palette, palette, start_index, entries
    .word       $A9CC                       ; 3CA049/CCA9
    .byte       $00                         ; 3CA04B/00
    .byte       $20                         ; 3CA04C/20
    MOV         VAR1,#$1B                   ; 3CA04D/0D011B
    LOOP        #3                          ; 3CA050/0103
        ASMCALL     $DED0, WAIT #1              ; 3CA052/D1D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
        .byte       $01                         ; 3CA055/01
        .byte       $12                         ; 3CA056/12
        .byte       $65                         ; 3CA057/65
        .byte       $00                         ; 3CA058/00
        .byte       $00                         ; 3CA059/00
        .byte       $00                         ; 3CA05A/00
        .byte       $00                         ; 3CA05B/00
        .byte       $00                         ; 3CA05C/00
        ADD         VAR1,#1                     ; 3CA05D/13010201
    ENDLOOP                                 ; 3CA061/02
    SETXCAMERA  #$0000                      ; 3CA062/300000
    SETYCAMERA  #$0000                      ; 3CA065/310000
    A_JSR       L_3CA0DC                    ; 3CA068/18DCA0
    ONTICK      $3CA17F                     ; 3CA06B/087FA13C
    HALT                                    ; 3CA06F/09

;L_3CA070!!!
.byte $18,$E7
.byte $A0,$D0,$F2,$A0,$D0,$3D,$A1,$D0
.byte $61,$DF,$EC,$A9,$00,$20,$30,$40
.byte $00,$31,$00,$00,$0D,$01,$00,$D0
.byte $E1,$DE,$06,$65,$00,$00,$00,$00
.byte $02,$2A,$60,$00,$2B,$90,$00,$1A
.byte $40,$9B,$3A,$50,$00,$18,$DC,$A0
.byte $D0,$45,$DE,$1A,$08,$95,$A1,$3C
.byte $32,$80,$FF,$09

L_3CA0AE:
    SPRITEMAP   L_3A9E25                     ; 3CA0AE/1A259E3A
    SETXPOS     #$00D0                      ; 3CA0B2/2AD000
L_3CA0B5:
    SETPOSE     #$09                        ; 3CA0B5/5009
    SETYPOS     #$00C0                      ; 3CA0B7/2BC000
    HALT                                    ; 3CA0BA/09

L_3CA0BB:
    SPRITEMAP   L_3A9E25                     ; 3CA0BB/1A259E3A
    SETXPOS     #$00C8                      ; 3CA0BF/2AC800
    MOV         REG,$07D1                   ; 3CA0C2/1CD107
    JNE         L_3CA0B5                    ; 3CA0C5/0BB5A0
    END                                     ; 3CA0C8/00

L_3CA0C9:
    SPRITEMAP   L_3A9E25                     ; 3CA0C9/1A259E3A
    SETXPOS     #$00C0                      ; 3CA0CD/2AC000
    MOV         REG,$07D1                   ; 3CA0D0/1CD107
    TABLEJMP    #3                          ; 3CA0D3/0F03
    .word       L_3CA0DB                    ; 3CA0D5/DBA0
    .word       L_3CA0DB                    ; 3CA0D7/DBA0
    .word       L_3CA0B5                    ; 3CA0D9/B5A0
L_3CA0DB:
    END                                     ; 3CA0DB/00

L_3CA0DC:
    MOV         palette_fade,#$FC                  ; 3CA0DC/11A201FC
    LOOP        #4                          ; 3CA0E0/0104
        ASMCALL     $C94C, WAIT #6              ; 3CA0E2/D64CC9 // Palette fade dark in step
    ENDLOOP                                 ; 3CA0E5/02
    A_RTS                                   ; 3CA0E6/19

.byte $11,$A2
.byte $01,$00,$01,$04,$D6,$96,$C9,$02
.byte $19
B3C_a0f2:
    ldx #$11
B3C_a0f4:
    ldy OBJ_script, x
    bmi B3C_a100
    cpx curr_object_slot
    beq B3C_a100
    jsr OBJ_Destroy
B3C_a100:
    dex
    bne B3C_a0f4
    rts
B3C_a104:
    jsr B3E_c082
    ldx #$80
    stx a:chr_banks
    ldx #$58
    stx a:chr_banks+1
    ldx #$ff
    stx a:chr_banks+2
    ldx #$db
    stx a:chr_banks+3
    ldx #$4d
    stx a:chr_banks+4
    inx
    stx a:chr_banks+5
    lda #$00
    sta scroll_type
    jsr $a1c9
    lda #$06
    ora a:ram_PPUMASK
    sta a:ram_PPUMASK
    lda #$fc
    sta palette_fade
    jsr B3E_c086
    rts
B3C_a13d:
    jsr B3E_c082
    lda #0
    sta MIRROR
    sta kirby_camera_051E
    ldx #$56
    stx a:chr_banks
    ldx #$58
    stx a:chr_banks+1
    ldx #$00
    stx a:chr_banks+2
    ldx #$5e
    stx a:chr_banks+3
    inx
    stx a:chr_banks+4
    ldx #$77
    stx a:chr_banks+5
    jsr $a1e4
    jsr $c42b
    ldx curr_object_slot
    lda #$00
    sta OBJ_var7, x
    sta UNK_796+57
    sta minigame_bonus_lives
    sta minigame_bonus_score
    jsr B3E_c086
    rts
B3C_a17f:
    lda a:pad_press
    and #$c0
    beq B3C_a194
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$70
    ldy #$a0
    jmp OBJ_TryReplaceScriptPc
B3C_a194:
    rts
B3C_a195:
    lda camera_vel_x
    clc
    adc camera_x_frac
    sta camera_x_frac
    ldy #$00
    lda camera_vel_x+1
    bpl B3C_a1a3
    dey
B3C_a1a3:
    adc camera_x
    sta camera_x
    tya
    adc camera_x+1
    sta camera_x+1
    lda camera_x_frac
    bcs B3C_a1b8
    lda camera_x
    bcs B3C_a1b8
    lda camera_x+1
    bcc B3C_a1b9
B3C_a1b8:
    rts
B3C_a1b9:
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$2c
    ldy #$aa
    jmp OBJ_TryReplaceScriptPc
B3C_a1c9:
    lda #$c2
    sta ptr0
    lda #$a2
    sta ptr0+1
    lda #$c8
    sta ptr1
    lda #$68
    sta ptr1+1
    jsr Decompress
    jsr B3E_c0be
    .addr B3C_a240
    jmp B3E_c086
B3C_a1e4:
    lda #$c9
    sta ptr0
    lda #$a7
    sta ptr0+1
    lda #$c8
    sta ptr1
    lda #$68
    sta ptr1+1
    jsr Decompress
    ldx #$3f
B3C_a1f9:
    lda map_screen_5, x
    sta attr_buffer, x
    dex
    bpl B3C_a1f9
    lda #.LOBYTE(B3C_a240)
    ldx #.HIBYTE(B3C_a240)
    jsr B3E_c0da
    lda #.LOBYTE(B3C_a247)
    ldx #.HIBYTE(B3C_a247)
    jsr B3E_c0da
    jmp B3E_c086
B3C_a213:
    ldx #$5e
    inx
    inx
    stx a:chr_banks+5
    rts
B3C_a21b:
    lda #$0b
    sta ptr0
    lda #$a5
    sta ptr0+1
    lda #$c8
    sta ptr1
    lda #$68
    sta ptr1+1
    jsr Decompress
    ldx #$3f
B3C_a230:
    lda map_screen_5, x
    sta attr_buffer, x
    dex
    bpl B3C_a230
    lda #.LOBYTE(B3C_a24e)
    ldx #.HIBYTE(B3C_a24e)
    jmp B3E_c0da

B3C_a240:
.byte $03,$00,$20,$20,$20,$C8,$68
B3C_a247:
.byte $03,$00,$24,$20,$20,$C8,$6C
B3C_a24e:
.byte $03,$00,$20,$20,$20,$C8,$68

incbinRange "../split/prg/bank3c.bin", $255, $a2c

L_3CAA2C:
    MOV         VAR6,#$00                   ; 3CAA2C/0D0600
    ONMOVE      $D8D5                       ; 3CAA2F/23D5D8
    ASMCALL     $DEE1                       ; 3CAA32/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $02                         ; 3CAA35/02
    .byte       $65                         ; 3CAA36/65
    .byte       $00                         ; 3CAA37/00
    .byte       $00                         ; 3CAA38/00
    .byte       $00                         ; 3CAA39/00
    .byte       $00                         ; 3CAA3A/00
    .byte       $03                         ; 3CAA3B/03
    WAIT        #1                          ; 3CAA3C/0601
L_3CAA3E:
    MOV         $61F0,#$FF                  ; 3CAA3E/11F061FF
L_3CAA42:
    SETPOSE     #$00                        ; 3CAA42/5000
    ASMCALL     $ABA8                       ; 3CAA44/D0A8AB
    ASMCALL     $AC7C                       ; 3CAA47/D07CAC
    WAIT        VAR3                        ; 3CAA4A/1F03
L_3CAA4C:
    WAIT        VAR3                        ; 3CAA4C/1F03
L_3CAA4E:
    ONTICK      $3CACA2                     ; 3CAA4E/08A2AC3C
    WAIT        #20                         ; 3CAA52/0614
L_3CAA54:
    SETPOSE     #$00, WAIT #1               ; 3CAA54/5100
L_3CAA56:
    ASMCALL     $DF20                       ; 3CAA56/D020DF // Unknown ASM $DF20
    .byte       $02                         ; 3CAA59/02
    .byte       $38                         ; 3CAA5A/38
    .byte       $B2                         ; 3CAA5B/B2
    .byte       $3C                         ; 3CAA5C/3C
    ASMCALL     $DF20                       ; 3CAA5D/D020DF // Unknown ASM $DF20
    .byte       $06                         ; 3CAA60/06
    .byte       $27                         ; 3CAA61/27
    .byte       $B4                         ; 3CAA62/B4
    .byte       $3C                         ; 3CAA63/3C
    ASMCALL     PlayMusic                       ; 3CAA64/D045DE // Play music
    .byte       $19                         ; 3CAA67/19
    WAIT        #1                          ; 3CAA68/0601
L_3CAA6A:
    ONTICK      $3CAD01                     ; 3CAA6A/0801AD3C
    HALT                                    ; 3CAA6E/09

L_3CAA6F:
    WAIT        #100                        ; 3CAA6F/0664
L_3CAA71:
    A_JMP       L_3CAA42                    ; 3CAA71/1742AA

L_3CAA74:
    ASMCALL     $ABD4                       ; 3CAA74/D0D4AB
    ASMCALL     $DEE1                       ; 3CAA77/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $09                         ; 3CAA7A/09
    .byte       $65                         ; 3CAA7B/65
    .byte       $00                         ; 3CAA7C/00
    .byte       $00                         ; 3CAA7D/00
    .byte       $00                         ; 3CAA7E/00
    .byte       $00                         ; 3CAA7F/00
    .byte       $15                         ; 3CAA80/15
    A_JSR       L_3CB43F                    ; 3CAA81/183FB4
    MOV         REG,VAR7                    ; 3CAA84/1E07
    TABLEJMP    #2                          ; 3CAA86/0F02
    .word       L_3CAA9C                    ; 3CAA88/9CAA
    .word       L_3CAA9C                    ; 3CAA8A/9CAA
    SETPOSE     #$0E, WAIT #15              ; 3CAA8C/5F0E
L_3CAA8E:
    INCPOSE                                 ; 3CAA8E/70
    SETXVEL     #$FF00, WAIT #5             ; 3CAA8F/B500FF
L_3CAA92:
    SETXVEL     #$FF80, WAIT #5             ; 3CAA92/B580FF
L_3CAA95:
    SETXVEL     #$FFE0, WAIT #5             ; 3CAA95/B5E0FF
L_3CAA98:
    ZEROVEL                                 ; 3CAA98/38
    A_JMP       L_3CAAA6                    ; 3CAA99/17A6AA

L_3CAA9C:
    SETPOSE     #$0D, WAIT #1               ; 3CAA9C/510D
L_3CAA9E:
    LOOP        #3                          ; 3CAA9E/0103
        SETPOSE     #$01, WAIT #1               ; 3CAAA0/5101
L_3CAAA2:
        INCPOSE     WAIT #1                     ; 3CAAA2/71
L_3CAAA3:
    ENDLOOP                                 ; 3CAAA3/02
    WAIT        #4                          ; 3CAAA4/0604
L_3CAAA6:
    WAIT        #64                         ; 3CAAA6/0640
L_3CAAA8:
    ONTICK      $3CAD98                     ; 3CAAA8/0898AD3C
    HALT                                    ; 3CAAAC/09

L_3CAAAD:
    ASMCALL     $ABD4                       ; 3CAAAD/D0D4AB
    SETXPOS     #$0065                      ; 3CAAB0/2A6500
    SETYPOS     #$0090                      ; 3CAAB3/2B9000
    ZEROVEL                                 ; 3CAAB6/38
    ASMCALL     $DEE1                       ; 3CAAB7/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $09                         ; 3CAABA/09
    .byte       $65                         ; 3CAABB/65
    .byte       $00                         ; 3CAABC/00
    .byte       $00                         ; 3CAABD/00
    .byte       $00                         ; 3CAABE/00
    .byte       $00                         ; 3CAABF/00
    .byte       $15                         ; 3CAAC0/15
    A_JSR       L_3CB43F                    ; 3CAAC1/183FB4
    ASMCALL     $DEE1                       ; 3CAAC4/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $05                         ; 3CAAC7/05
    .byte       $65                         ; 3CAAC8/65
    .byte       $00                         ; 3CAAC9/00
    .byte       $00                         ; 3CAACA/00
    .byte       $00                         ; 3CAACB/00
    .byte       $00                         ; 3CAACC/00
    .byte       $14                         ; 3CAACD/14
    LOOP        #3                          ; 3CAACE/0103
        SETPOSE     #$07                        ; 3CAAD0/5007
        SETXVEL     #$FFF0, WAIT #2             ; 3CAAD2/B2F0FF
L_3CAAD5:
        INCPOSE                                 ; 3CAAD5/70
        SETXVEL     #$0010, WAIT #2             ; 3CAAD6/B21000
L_3CAAD9:
    ENDLOOP                                 ; 3CAAD9/02
    DECPOSE                                 ; 3CAADA/80
    WAIT        #40                         ; 3CAADB/0628
L_3CAADD:
    ONTICK      $3CAD98                     ; 3CAADD/0898AD3C
    HALT                                    ; 3CAAE1/09

L_3CAAE2:
    SETXPOS     #$0060                      ; 3CAAE2/2A6000
    LOOP        #3                          ; 3CAAE5/0103
        SETPOSE     #$0A, WAIT #2               ; 3CAAE7/520A
L_3CAAE9:
        SETPOSE     #$0D, WAIT #2               ; 3CAAE9/520D
L_3CAAEB:
        SETPOSE     #$0C, WAIT #2               ; 3CAAEB/520C
L_3CAAED:
        SETPOSE     #$0B, WAIT #2               ; 3CAAED/520B
L_3CAAEF:
    ENDLOOP                                 ; 3CAAEF/02
    SETPOSE     #$01, WAIT #2               ; 3CAAF0/5201
L_3CAAF2:
    SETPOSE     #$00, WAIT #1               ; 3CAAF2/5100
L_3CAAF4:
    MOV         REG,VAR6                    ; 3CAAF4/1E06
    JEQ         L_3CAAF2                    ; 3CAAF6/0AF2AA
    MOV         VAR6,#$00                   ; 3CAAF9/0D0600
    ASMCALL     B3E_df06                       ; 3CAAFC/D006DF // Destroy object in slot `arg`
    .byte       $09                         ; 3CAAFF/09
    ONTICK      $3CAC3F                     ; 3CAB00/083FAC3C
    HALT                                    ; 3CAB04/09

L_3CAB05:
    WAIT        #16                         ; 3CAB05/0610
L_3CAB07:
    ASMCALL     $DEE1                       ; 3CAB07/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $06                         ; 3CAB0A/06
    .byte       $65                         ; 3CAB0B/65
    .byte       $00                         ; 3CAB0C/00
    .byte       $00                         ; 3CAB0D/00
    .byte       $00                         ; 3CAB0E/00
    .byte       $00                         ; 3CAB0F/00
    .byte       $08                         ; 3CAB10/08
    A_JMP       L_3CAA42                    ; 3CAB11/1742AA
    rts

L_3CAB15:
    SETXPOS     #$0058                      ; 3CAB15/2A5800
    SETYPOS     #$008C                      ; 3CAB18/2B8C00
    ONMOVE      $D864                       ; 3CAB1B/2364D8
    ONPOSITION  $D968                       ; 3CAB1E/2168D9
    ZEROVEL                                 ; 3CAB21/38
    ASMCALL     $DEE1                       ; 3CAB22/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $09                         ; 3CAB25/09
    .byte       $65                         ; 3CAB26/65
    .byte       $00                         ; 3CAB27/00
    .byte       $00                         ; 3CAB28/00
    .byte       $00                         ; 3CAB29/00
    .byte       $00                         ; 3CAB2A/00
    .byte       $15                         ; 3CAB2B/15
    ASMCALL     $DEE1                       ; 3CAB2C/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $05                         ; 3CAB2F/05
    .byte       $65                         ; 3CAB30/65
    .byte       $00                         ; 3CAB31/00
    .byte       $00                         ; 3CAB32/00
    .byte       $00                         ; 3CAB33/00
    .byte       $00                         ; 3CAB34/00
    .byte       $11                         ; 3CAB35/11
    MOV         $07CF,#$01                  ; 3CAB36/11CF0701
    SETXCAMERAVEL#$FE00                     ; 3CAB3A/3200FE
    ONTICK      $3CA195                     ; 3CAB3D/0895A13C
    TASK        L_3CB4B9                    ; 3CAB41/07B9B4
    LOOP        #3                          ; 3CAB44/0103
        SETYVEL     #$FE00                      ; 3CAB46/C000FE
        SETPOSE     #$07, WAIT #1               ; 3CAB49/5107
L_3CAB4B:
        SETYVEL     #$FF00                      ; 3CAB4B/C000FF
        SETPOSE     #$08, WAIT #1               ; 3CAB4E/5108
L_3CAB50:
    ENDLOOP                                 ; 3CAB50/02
    SETPOSE     #$03, WAIT #6               ; 3CAB51/5603
L_3CAB53:
    SETYVEL     #$FF80                      ; 3CAB53/C080FF
    SETPOSE     #$06, WAIT #6               ; 3CAB56/5606
L_3CAB58:
    SETYVEL     #$FFE0                      ; 3CAB58/C0E0FF
    SETPOSE     #$04, WAIT #6               ; 3CAB5B/5604
L_3CAB5D:
    SETYVEL     #$FFF8                      ; 3CAB5D/C0F8FF
    SETPOSE     #$03, WAIT #6               ; 3CAB60/5603
L_3CAB62:
    SETYVEL     #$0020                      ; 3CAB62/C02000
    SETPOSE     #$06                        ; 3CAB65/5006
    WAIT        #8                          ; 3CAB67/0608
L_3CAB69:
    SETPOSE     #$04                        ; 3CAB69/5004
    WAIT        #8                          ; 3CAB6B/0608
L_3CAB6D:
    SETYVEL     #$0080                      ; 3CAB6D/C08000
    SETPOSE     #$03                        ; 3CAB70/5003
    WAIT        #8                          ; 3CAB72/0608
L_3CAB74:
    SETYVEL     #$0100                      ; 3CAB74/C00001
    SETPOSE     #$05                        ; 3CAB77/5005
    WAIT        #8                          ; 3CAB79/0608
L_3CAB7B:
    ASMCALL     $DEE1                       ; 3CAB7B/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $04                         ; 3CAB7E/04
    .byte       $65                         ; 3CAB7F/65
    .byte       $00                         ; 3CAB80/00
    .byte       $00                         ; 3CAB81/00
    .byte       $00                         ; 3CAB82/00
    .byte       $00                         ; 3CAB83/00
    .byte       $12                         ; 3CAB84/12
    SETXVEL     #$FF80                      ; 3CAB85/B080FF
    SETYVEL     #$0000, WAIT #5             ; 3CAB88/C50000
L_3CAB8B:
    SETXVEL     #$FFE0                      ; 3CAB8B/B0E0FF
    SETPOSE     #$06                        ; 3CAB8E/5006
    WAIT        #5                          ; 3CAB90/0605
L_3CAB92:
    ENDTICK                                 ; 3CAB92/0E
    ZEROCAMERAVEL                           ; 3CAB93/39
    WAIT        #11                         ; 3CAB94/060B
L_3CAB96:
    SETXVEL     #$FFF8                      ; 3CAB96/B0F8FF
    WAIT        #16                         ; 3CAB99/0610
L_3CAB9B:
    SETXVEL     #$0000                      ; 3CAB9B/B00000
    WAIT        #53                         ; 3CAB9E/0635
L_3CABA0:
    MOV         REG,VAR7                    ; 3CABA0/1E07
    JEQ         L_3CB861                    ; 3CABA2/0A61B8
    A_JMP       L_3CB856                    ; 3CABA5/1756B8

B3C_aba8:
    lda #.LOBYTE(B3C_abc6)
    ldx #.HIBYTE(B3C_abc6)
    jsr B3E_c0da
    lda #.LOBYTE(B3C_abcd)
    ldx #.HIBYTE(B3C_abcd)
    jsr B3E_c0da
    lda #$00
    sta UNK_796+55
    sta UNK_796+56
    rts

B3C_abbf:
.byte $01,$63,$21,$01,$02,$94,$95
B3C_abc6:
.byte $01,$63,$21,$01,$02,$92,$93
B3C_abcd:
.byte $01,$64,$21,$01,$02,$92,$93

B3C_abd4:
    ldy curr_object_slot
    ldx OBJ_var7+0, y
    lda B3C_abe0, x
    jsr B3F_f859
    rts

B3C_abe0:
    .byte $16,$16,$18,$18,$18

B3C_abe5:
    ldy curr_object_slot
    ldx OBJ_var7+0, y
    ldy #$15
    lda B3C_ac03, x
    tax
    lda #$03
    jsr $c9e7
    ldx curr_object_slot
    ldy OBJ_var7+0, x
    ldx B3C_ac08, y
    lda B3C_ac0d, y
    jmp B3E_c0da

B3C_ac03:
.byte $0D,$0F,$11,$13,$15
B3C_ac08:
.hibytes B3C_ac36,B3C_ac2d,B3C_ac24,B3C_ac1b,B3C_ac12
B3C_ac0d:
.lobytes B3C_ac36,B3C_ac2d,B3C_ac24,B3C_ac1b,B3C_ac12

B3C_ac12:
.byte $00,$94,$22,$02,$02,$6C,$7C,$6D,$7D
B3C_ac1b:
.byte $00,$92,$22,$02,$02,$64,$74,$65,$75
B3C_ac24:
.byte $00,$90,$22,$02,$02,$68,$78,$69,$79
B3C_ac2d:
.byte $00,$8E,$22,$02,$02,$66,$76,$67,$77
B3C_ac36:
.byte $00,$8C,$22,$02,$02,$6A,$7A,$6B,$7B

.byte $EE,$4A,$62

B3C_ac42:
    ldx curr_object_slot
    inc OBJ_var7, x
    lda OBJ_var7, x
    cmp #$05
    bcc B3C_ac5e
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$72
    ldy #$b9
    jmp OBJ_TryReplaceScriptPc
B3C_ac5e:
    ldx #$02
    lda #$3c
    sta script_bank
    lda #$27
    ldy #$b2
    jsr OBJ_TryReplaceScriptPc
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$05
    ldy #$ab
    jmp OBJ_TryReplaceScriptPc
B3C_ac7c:
    ldy curr_object_slot
    ldx UNK_796+59
    lda $ac8f, x
    jsr Rand
    tax
    lda $ac92, x
    sta OBJ_var3, y
    rts
.byte $04
.byte $08,$10,$70,$74,$78
.byte $7C
.byte $6A,$66,$62,$5E,$CE,$BE,$AE,$8E
.byte $20,$2E,$3E,$4E
B3C_aca2:
    lda a:pad_press
    and #$c0
    bne B3C_acaa
    rts
B3C_acaa:
    inc OBJ_var2+2
    lda OBJ_var2+2
    cmp #$01
    beq B3C_ace0
    ldx #$02
    lda #$3c
    sta script_bank
    lda #$3b
    ldy #$b2
    jsr OBJ_TryReplaceScriptPc
    ldx #$06
    lda #$3c
    sta script_bank
    lda #$10
    ldy #$b4
    jsr OBJ_TryReplaceScriptPc
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$37
    ldy #$b0
    jmp OBJ_TryReplaceScriptPc
B3C_ace0:
    inc UNK_796+57
    ldx #$02
    lda #$3c
    sta script_bank
    lda #$3b
    ldy #$b2
    jsr OBJ_TryReplaceScriptPc
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$7c
    ldy #$b8
    jmp OBJ_TryReplaceScriptPc

B3C_ad01:
    jsr $a255
    lda OBJ_var2+6
    bne B3C_ad11
    lda a:pad_press
    and #$c0
    bne B3C_ad2f
    rts

B3C_ad11:
    ldx #$06
    lda #$3c
    sta script_bank
    lda #$61
    ldy #$b4
    jsr OBJ_TryReplaceScriptPc
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$15
    ldy #$ab
    jmp OBJ_TryReplaceScriptPc
B3C_ad2f:
    ldx #$06
    lda #$3c
    sta script_bank
    lda #$76
    ldy #$b4
    jsr OBJ_TryReplaceScriptPc
    ldx curr_object_slot
    lda OBJ_var7, x
    cmp #$04
    bne B3C_ad72
    ldx #$04
B3C_ad48:
    txa
    pha
    ldy B3C_ad93, x
    lda B3C_ad8e, x
    tax
    lda #0
    jsr $c9e7
    pla
    tax
    dex
    bne B3C_ad48
    lda #.LOBYTE(B3C_ad80)
    ldx #.HIBYTE(B3C_ad80)
    jsr B3E_c0da
    ldx curr_object_slot
    ldx curr_object_slot
    lda #.BANK(L_3CAAAD)
    sta script_bank
    lda #.LOBYTE(L_3CAAAD)
    ldy #.HIBYTE(L_3CAAAD)
    jmp OBJ_TryReplaceScriptPc
B3C_ad72:
    ldx curr_object_slot
    lda #.BANK(L_3CAA74)
    sta script_bank
    lda #.LOBYTE(L_3CAA74)
    ldy #.HIBYTE(L_3CAA74)
    jmp OBJ_TryReplaceScriptPc
B3C_ad80:
.byte $00,$0E,$22,$03,$03,$9D,$AD,$BD,$9E,$AE,$BE,$9F,$AF,$BF
B3C_ad8e:
.byte $0F,$0F,$11,$0F,$11
B3C_ad93:
.byte $11,$11,$11,$13,$13
B3C_ad98:
    ldx curr_object_slot
    lda OBJ_var7, x
    cmp #$04
    beq B3C_adaf
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$e2
    ldy #$aa
    jmp OBJ_TryReplaceScriptPc
B3C_adaf:
    ldx #$05
    lda #$3c
    sta script_bank
    lda #$08
    ldy #$b2
    jsr OBJ_TryReplaceScriptPc
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$f2
    ldy #$aa
    jmp OBJ_TryReplaceScriptPc

L_3CADCB:
    SETXPOS     #$0020                      ; 3CADCB/2A2000
    SETYPOS     #$0060                      ; 3CADCE/2B6000
    SPRITEMAP   L_3A9E04                     ; 3CADD1/1A049E3A
    MOV         REG,$07CF                   ; 3CADD5/1CCF07
    JEQ         L_3CADE1                    ; 3CADD8/0AE1AD
L_3CADDB:
    SETPOSE     #$01, WAIT #6               ; 3CADDB/5601
    INCPOSE     WAIT #10                    ; 3CADDD/7A
    A_JMP       L_3CADDB                    ; 3CADDE/17DBAD

L_3CADE1:
    SETPOSE     #$00, WAIT #4               ; 3CADE1/5400
    INCPOSE     WAIT #2                     ; 3CADE3/72
    A_JMP       L_3CADE1                    ; 3CADE4/17E1AD

rts

L_3CADE8:
    ADDXPOS     #22                         ; 3CADE8/2C1600
    ADDYPOS     #-8                         ; 3CADEB/2DF8FF
    SPRITEMAP   L_3A9DEF                     ; 3CADEE/1AEF9D3A
    SETPOSE     #$01, WAIT #1               ; 3CADF2/5101
    DECPOSE     WAIT #1                     ; 3CADF4/81
    SETXVEL     #$0010                      ; 3CADF5/B01000
    SETYVEL     #$FFFC                      ; 3CADF8/C0FCFF
    SETPOSE     #$02, WAIT #5               ; 3CADFB/5502
    SETXVEL     #$0040                      ; 3CADFD/B04000
    SETYVEL     #$FFF0                      ; 3CAE00/C0F0FF
    WAIT        #16                         ; 3CAE03/0610
    END                                     ; 3CAE05/00

L_3CAE06:
    ADDXPOS     #-8                         ; 3CAE06/2CF8FF
    ADDYPOS     #-8                         ; 3CAE09/2DF8FF
    SPRITEMAP   L_3A9DEF                     ; 3CAE0C/1AEF9D3A
    SETPOSE     #$01, WAIT #1               ; 3CAE10/5101
    DECPOSE     WAIT #1                     ; 3CAE12/81
    SETXVEL     #$FFF0                      ; 3CAE13/B0F0FF
    SETYVEL     #$FFFC                      ; 3CAE16/C0FCFF
    SETPOSE     #$02, WAIT #5               ; 3CAE19/5502
    SETXVEL     #$FFC0                      ; 3CAE1B/B0C0FF
    SETYVEL     #$FFF0                      ; 3CAE1E/C0F0FF
    WAIT        #16                         ; 3CAE21/0610
    END                                     ; 3CAE23/00

L_3CAE24:
    SETXPOS     #$0065                      ; 3CAE24/2A6500
    SETYPOS     #$008C                      ; 3CAE27/2B8C00
    SPRITEMAP   L_3A9DEF                     ; 3CAE2A/1AEF9D3A
    ONMOVE      $D864                       ; 3CAE2E/2364D8
    ONPOSITION  $D968                       ; 3CAE31/2168D9
    SETPOSE     #$01, WAIT #1               ; 3CAE34/5101
    ASMCALL     $AB14                       ; 3CAE36/D014AB
    INCPOSE     WAIT #1                     ; 3CAE39/71
    SETPOSE     #$FF, WAIT #2               ; 3CAE3A/52FF
    SETPOSE     #$01, WAIT #1               ; 3CAE3C/5101
    INCPOSE                                 ; 3CAE3E/70
    SETXVEL     #$0010                      ; 3CAE3F/B01000
    SETYVEL     #$FFFC, WAIT #1             ; 3CAE42/C1FCFF
    SETXVEL     #$FFC0                      ; 3CAE45/B0C0FF
    SETYVEL     #$FFF0, WAIT #2             ; 3CAE48/C2F0FF
    END                                     ; 3CAE4B/00

L_3CAE4C:
    SETXPOS     #$0090                      ; 3CAE4C/2A9000
    SETYPOS     #$0080                      ; 3CAE4F/2B8000
    ZEROVEL                                 ; 3CAE52/38
    SPRITEMAP   L_3A9DEF                     ; 3CAE53/1AEF9D3A
    ADDPOSE     #1, WAIT #2                 ; 3CAE57/6201
    ADDPOSE     #2, WAIT #2                 ; 3CAE59/6202
    INCPOSE     WAIT #2                     ; 3CAE5B/72
    SETXVEL     #$0008                      ; 3CAE5C/B00800
    INCPOSE     WAIT #4                     ; 3CAE5F/74
    SETXVEL     #$0020                      ; 3CAE60/B02000
    INCPOSE     WAIT #5                     ; 3CAE63/75
    INCPOSE     WAIT #5                     ; 3CAE64/75
    END                                     ; 3CAE65/00

L_3CAE66:
    ASMCALL     $AEDA                       ; 3CAE66/D0DAAE
    SPRITEMAP   L_3A9C62                     ; 3CAE69/1A629C3A
    ASMCALL     $AEE3                       ; 3CAE6D/D0E3AE
    JEQ         L_3CAE77                    ; 3CAE70/0A77AE
    SPRITEMAP   L_3A9C58                     ; 3CAE73/1A589C3A
L_3CAE77:
    SETPOSE     VAR7                        ; 3CAE77/2407
    MOV         VAR5,#$00                   ; 3CAE79/0D0500
    ASMCALL     $AF05                       ; 3CAE7C/D005AF
    SETZPOS     #$0001                      ; 3CAE7F/3A0100
    MOV         VAR3,#$00                   ; 3CAE82/0D0300
    MOV         VAR4,#$00                   ; 3CAE85/0D0400
    ONTICK      $3CAFA6                     ; 3CAE88/08A6AF3C
    WAIT        #2                          ; 3CAE8C/0602
    ASMCALL     $AEF1                       ; 3CAE8E/D0F1AE
    WAIT        #8                          ; 3CAE91/0608
    ASMCALL     $AEF1                       ; 3CAE93/D0F1AE
    HALT                                    ; 3CAE96/09

L_3CAE97:
    ASMCALL     $AEDA                       ; 3CAE97/D0DAAE
    SPRITEMAP   L_3A9CAC                     ; 3CAE9A/1AAC9C3A
    MOV         VAR5,#$01                   ; 3CAE9E/0D0501
    WAIT        #2                          ; 3CAEA1/0602
    TASK        TASK_3CAEBA                 ; 3CAEA3/07BAAE
L_3CAEA6:
    ASMCALL     $AEDA                       ; 3CAEA6/D0DAAE
    ASMCALL     $AF05                       ; 3CAEA9/D005AF
    SETZPOS     #$0000                      ; 3CAEAC/3A0000
    MOV         VAR3,#$00                   ; 3CAEAF/0D0300
    MOV         VAR4,#$00                   ; 3CAEB2/0D0400
    ONTICK      $3CAFA6                     ; 3CAEB5/08A6AF3C
    HALT                                    ; 3CAEB9/09

TASK_3CAEBA:
    SETPOSE     #$00, WAIT #2               ; 3CAEBA/5200
    INCPOSE     WAIT #2                     ; 3CAEBC/72
    INCPOSE     WAIT #8                     ; 3CAEBD/78
    DECPOSE     WAIT #2                     ; 3CAEBE/82
    DECPOSE     WAIT #2                     ; 3CAEBF/82
    SETPOSE     #$FF                        ; 3CAEC0/50FF
    ENDTASK                                 ; 3CAEC2/0C

L_3CAEC3:
    SPRITEMAP   L_3A9CAC                     ; 3CAEC3/1AAC9C3A
    MOV         VAR5,#$01                   ; 3CAEC7/0D0501
    WAIT        #4                          ; 3CAECA/0604
    TASK        TASK_3CAED2                 ; 3CAECC/07D2AE
    A_JMP       L_3CAEA6                    ; 3CAECF/17A6AE

TASK_3CAED2:
    SETPOSE     #$01, WAIT #2               ; 3CAED2/5201
    INCPOSE     WAIT #6                     ; 3CAED4/76
    DECPOSE     WAIT #4                     ; 3CAED5/84
    DECPOSE     WAIT #4                     ; 3CAED6/84
    SETPOSE     #$FF                        ; 3CAED7/50FF
    ENDTASK                                 ; 3CAED9/0C

    ldx curr_object_slot
    lda OBJ_var7+1
    sta OBJ_var7, x
    rts
    ldy #$00
    ldx curr_object_slot
    lda OBJ_var2, x
    cmp #$01
    beq B3C_aeef
    iny
B3C_aeef:
    tya
    rts

    jsr $aee3
    cmp #$01
    beq B3C_af04
    ldx curr_object_slot
    lda OBJ_var7, x
    cmp #$04
    bne B3C_af04
    inc OBJ_pose, x
B3C_af04:
    rts

    ldy #$00
    ldx curr_object_slot
    lda OBJ_var2, x
    cmp #$01
    bne B3C_af22
    lda OBJ_var7, x
    cmp #$02
    bmi B3C_af2a
    iny
    iny
    cmp #$04
    bmi B3C_af2a
    iny
    iny
    jmp $af2a
B3C_af22:
    lda OBJ_var7, x
    asl a
    clc
    adc #$06
    tay
B3C_af2a:
    cpx #$0a
    bne B3C_af4a
    lda $af66, y
    sta a:OBJ_x_lo, x
    iny
    lda $af66, y
    sta a:OBJ_x_hi, x
    dey
    lda $af76, y
    sta a:OBJ_y_lo, x
    iny
    lda $af76, y
    sta a:OBJ_y_hi, x
    rts
B3C_af4a:
    lda $af86, y
    sta a:OBJ_x_lo, x
    iny
    lda $af86, y
    sta a:OBJ_x_hi, x
    dey
    lda $af96, y
    sta a:OBJ_y_lo, x
    iny
    lda $af96, y
    sta a:OBJ_y_hi, x
    rts
.word $79,$79,$84,$88,$88,$88,$8E,$8E
.word $88,$88,$86,$88,$88,$88,$88,$88
.word $73,$73,$88,$8E,$8E,$8E,$8E,$8E
.word $8A,$8C,$87,$8A,$8A,$8A,$87,$87
    ldx curr_object_slot
    ldy OBJ_var3, x
    lda $afcd, y
    cpx #$0a
    beq B3C_afb5
    lda $afd4, y
B3C_afb5:
    cmp OBJ_var4, x
    bne B3C_afc2
    lda #$00
    sta OBJ_var4, x
    jmp $afda
B3C_afc2:
    cmp #$ff
    bne B3C_afc9
    jmp OBJ_Destroy
B3C_afc9:
    inc OBJ_var4, x
    rts
.byte $00,$04,$04,$04,$04,$04,$FF,$00
.byte $04,$04,$04,$04,$FF
    tya
    asl a
    tay
    cpx #$0a
    beq B3C_aff1
    lda $b02d, y
    sta OBJ_vel_x_lo, x
    iny
    lda $b02d, y
    sta OBJ_vel_x_hi, x
    jmp $affe
B3C_aff1:
    lda $b021, y
    sta OBJ_vel_x_lo, x
    iny
    lda $b021, y
    sta OBJ_vel_x_hi, x
    lda OBJ_var2, x
    cmp #$01
    beq B3C_b01d
    lda OBJ_vel_x_hi, x
    eor #$ff
    sta OBJ_vel_x_hi, x
    lda OBJ_vel_x_lo, x
    eor #$ff
    sta OBJ_vel_x_lo, x
    inc OBJ_vel_x_lo, x
    bne B3C_b01d
    inc OBJ_vel_x_hi, x
B3C_b01d:
    inc OBJ_var3, x
    rts
.byte $00,$08,$00,$04,$00,$00,$00,$FC
.byte $00,$F8,$00,$00,$00,$08,$00,$04
.byte $00,$FC,$00,$F8,$00,$00

L_3CB037:
    ASMCALL     PlayMusic                       ; 3CB037/D045DE // Play music
    .byte       $1D                         ; 3CB03A/1D
    SPRITEMAP   L_3A9B40                     ; 3CB03B/1A409B3A
    SETPOSE     #$00                        ; 3CB03F/5000
    WAIT        #24                         ; 3CB041/0618
L_3CB043:
    LOOP        #3                          ; 3CB043/0103
        SETPOSE     #$08, WAIT #5               ; 3CB045/5508
L_3CB047:
        SETPOSE     #$07, WAIT #5               ; 3CB047/5507
L_3CB049:
    ENDLOOP                                 ; 3CB049/02
    ONTICK      $3CB04F                     ; 3CB04A/084FB03C
    HALT                                    ; 3CB04E/09

B3C_b04f:
    lda OBJ_var2+2
    cmp #$01
    beq B3C_b05c
    lda OBJ_var2+7
    bne B3C_b062
    rts
B3C_b05c:
    lda OBJ_var2+8
    bne B3C_b062
    rts
B3C_b062:
    ldx #$02
    lda #$3c
    sta script_bank
    lda #$23
    ldy #$b2
    jsr OBJ_TryReplaceScriptPc
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$6f
    ldy #$aa
    jmp OBJ_TryReplaceScriptPc
B3C_b07e:
.byte $2A,$60,$00,$2B,$90,$00,$1A,$C1
.byte $9C,$3A,$50,$00,$60,$04,$C5,$00
.byte $FC,$C0,$00,$FD,$85,$C0,$00,$FE
.byte $85,$C0,$C0,$FE,$85,$01,$03,$50
.byte $00,$B0,$F8,$FF,$C6,$80,$00,$B0
.byte $F0,$FF,$C0,$20,$00,$76,$B0,$C0
.byte $FF,$C0,$10,$00,$76,$B0,$00,$FF
.byte $C0,$00,$00,$76,$76,$B0,$C0,$FF
.byte $C0,$10,$00,$76,$B0,$F0,$FF,$C0
.byte $20,$00,$76,$B0,$F8,$FF,$C0,$80
.byte $00,$76,$B0,$08,$00,$C6,$80,$00
.byte $B0,$10,$00,$C0,$20,$00,$86,$B0
.byte $40,$00,$C0,$10,$00,$86,$B0,$00
.byte $01,$C0,$00,$00,$86,$86,$B0,$40
.byte $00,$C0,$10,$00,$86,$B0,$10,$00
.byte $C0,$20,$00,$86,$B0,$08,$00,$C0
.byte $10,$00,$86,$02,$38,$65,$02,$75
.byte $06,$3C,$00

L_3CB109:
    MOV         VAR3,#$00                   ; 3CB109/0D0300
    ONMOVE      $D864                       ; 3CB10C/2364D8
    ONPOSITION  $D968                       ; 3CB10F/2168D9
    SETXPOS     #$0060                      ; 3CB112/2A6000
    SETYPOS     #$0090                      ; 3CB115/2B9000
    SPRITEMAP   L_3A9CC1                     ; 3CB118/1AC19C3A
    SETXVEL     #$0080                      ; 3CB11C/B08000
    SETYVEL     #$FA00                      ; 3CB11F/C000FA
    SETPOSE     #$06, WAIT #5               ; 3CB122/5506
    SETXVEL     #$00C0                      ; 3CB124/B0C000
    SETYVEL     #$FC00                      ; 3CB127/C000FC
    SETPOSE     #$04, WAIT #5               ; 3CB12A/5504
    SETXVEL     #$0100                      ; 3CB12C/B00001
    SETYVEL     #$FD00                      ; 3CB12F/C000FD
    SETPOSE     #$00, WAIT #5               ; 3CB132/5500
    SETYVEL     #$FE00                      ; 3CB134/C000FE
    SETPOSE     #$02, WAIT #5               ; 3CB137/5502
    SETXVEL     #$FFF0                      ; 3CB139/B0F0FF
    SETYVEL     #$FEC0                      ; 3CB13C/C0C0FE
    SETPOSE     #$00, WAIT #6               ; 3CB13F/5600
    SETXVEL     #$FFF8                      ; 3CB141/B0F8FF
    SETPOSE     #$04, WAIT #6               ; 3CB144/5604
    SETXVEL     #$FFFC                      ; 3CB146/B0FCFF
    SETYVEL     #$0010                      ; 3CB149/C01000
    SETPOSE     #$06, WAIT #6               ; 3CB14C/5606
    SETXVEL     #$0000                      ; 3CB14E/B00000
    SETYVEL     #$0008                      ; 3CB151/C00800
    SETPOSE     #$07, WAIT #6               ; 3CB154/5607
    SETPOSE     #$05, WAIT #6               ; 3CB156/5605
    SETXVEL     #$FFF8                      ; 3CB158/B0F8FF
    SETYVEL     #$0010                      ; 3CB15B/C01000
    SETPOSE     #$01, WAIT #6               ; 3CB15E/5601
    SETXVEL     #$FFF0                      ; 3CB160/B0F0FF
    SETYVEL     #$00C0                      ; 3CB163/C0C000
    SETPOSE     #$03, WAIT #6               ; 3CB166/5603
    SETXVEL     #$FF80                      ; 3CB168/B080FF
    SETPOSE     #$02, WAIT #6               ; 3CB16B/5602
    LOOP        #2                          ; 3CB16D/0102
        SETXVEL     #$FFF8                      ; 3CB16F/B0F8FF
        SETYVEL     #$0010, WAIT #4             ; 3CB172/C41000
        SETXVEL     #$FFF0                      ; 3CB175/B0F0FF
        SETYVEL     #$0080                      ; 3CB178/C08000
        SETPOSE     #$00, WAIT #4               ; 3CB17B/5400
        SETXVEL     #$FFC0                      ; 3CB17D/B0C0FF
        SETYVEL     #$00C0                      ; 3CB180/C0C000
        SETPOSE     #$04, WAIT #4               ; 3CB183/5404
        SETXVEL     #$FF00                      ; 3CB185/B000FF
        SETYVEL     #$0100                      ; 3CB188/C00001
        SETPOSE     #$06, WAIT #4               ; 3CB18B/5406
        SETPOSE     #$07, WAIT #4               ; 3CB18D/5407
        SETXVEL     #$FFC0                      ; 3CB18F/B0C0FF
        SETYVEL     #$00C0                      ; 3CB192/C0C000
        SETPOSE     #$05, WAIT #4               ; 3CB195/5405
        SETXVEL     #$FFF0                      ; 3CB197/B0F0FF
        SETYVEL     #$0080                      ; 3CB19A/C08000
        SETPOSE     #$01, WAIT #4               ; 3CB19D/5401
        SETXVEL     #$FFF8                      ; 3CB19F/B0F8FF
        SETYVEL     #$0010                      ; 3CB1A2/C01000
        SETPOSE     #$03, WAIT #4               ; 3CB1A5/5403
        SETXVEL     #$0010, WAIT #4             ; 3CB1A7/B41000
        SETXVEL     #$0020                      ; 3CB1AA/B02000
        SETYVEL     #$0080                      ; 3CB1AD/C08000
        SETPOSE     #$01, WAIT #4               ; 3CB1B0/5401
        SETXVEL     #$0080                      ; 3CB1B2/B08000
        SETYVEL     #$00C0                      ; 3CB1B5/C0C000
        SETPOSE     #$05, WAIT #4               ; 3CB1B8/5405
        SETXVEL     #$0140                      ; 3CB1BA/B04001
        SETYVEL     #$0100                      ; 3CB1BD/C00001
        SETPOSE     #$07, WAIT #4               ; 3CB1C0/5407
        SETPOSE     #$06, WAIT #4               ; 3CB1C2/5406
        SETXVEL     #$0080                      ; 3CB1C4/B08000
        SETYVEL     #$00C0                      ; 3CB1C7/C0C000
        SETPOSE     #$04, WAIT #4               ; 3CB1CA/5404
        SETXVEL     #$0020                      ; 3CB1CC/B02000
        SETYVEL     #$0080                      ; 3CB1CF/C08000
        SETPOSE     #$00, WAIT #4               ; 3CB1D2/5400
        SETXVEL     #$0010                      ; 3CB1D4/B01000
        SETYVEL     #$0010                      ; 3CB1D7/C01000
        SETPOSE     #$02, WAIT #4               ; 3CB1DA/5402
    ENDLOOP                                 ; 3CB1DC/02
    SETXVEL     #$0000                      ; 3CB1DD/B00000
    SETYVEL     #$0000                      ; 3CB1E0/C00000
    SETPOSE     #$04, WAIT #5               ; 3CB1E3/5504
    SETPOSE     #$06                        ; 3CB1E5/5006
    WAIT        #60                         ; 3CB1E7/063C
    MOV         VAR3,#$01                   ; 3CB1E9/0D0301
    HALT                                    ; 3CB1EC/09

L_3CB1ED:
    SETXPOS     #$0065                      ; 3CB1ED/2A6500
    SETYPOS     #$0084                      ; 3CB1F0/2B8400
    ZEROVEL                                 ; 3CB1F3/38
    SPRITEMAP   L_3A9CC1                     ; 3CB1F4/1AC19C3A
    LOOP        #3                          ; 3CB1F8/0103
        SETPOSE     #$04                        ; 3CB1FA/5004
        SETXVEL     #$0010, WAIT #2             ; 3CB1FC/B21000
        DECPOSE                                 ; 3CB1FF/80
        SETXVEL     #$FFF0, WAIT #2             ; 3CB200/B2F0FF
    ENDLOOP                                 ; 3CB203/02
    SETPOSE     #$04, WAIT #4               ; 3CB204/5404
    ZEROVEL                                 ; 3CB206/38
    HALT                                    ; 3CB207/09

L_3CB208:
    END                                     ; 3CB208/00

L_3CB209:
    SETXPOS     #$0080                      ; 3CB209/2A8000
    SETYPOS     #$0040                      ; 3CB20C/2B4000
    MOV         VAR7,#$00                   ; 3CB20F/0D0700
    SPRITEMAP   L_3A9D19                     ; 3CB212/1A199D3A
    SETPOSE     VAR7                        ; 3CB216/2407
    WAIT        #32                         ; 3CB218/0620
L_3CB21A:
    SETPOSE     #$FF, WAIT #7               ; 3CB21A/57FF
    SETPOSE     VAR7                        ; 3CB21C/2407
    ADDPOSE     #0, WAIT #7                 ; 3CB21E/6700
    A_JMP       L_3CB21A                    ; 3CB220/171AB2

L_3CB223:
    SETPOSE     #$FF                        ; 3CB223/50FF
    WAIT        #100                        ; 3CB225/0664
L_3CB227:
    SETPOSE     VAR7                        ; 3CB227/2407
    ASMCALL     PlayMusic                       ; 3CB229/D045DE // Play music
    .byte       $1A                         ; 3CB22C/1A
    WAIT        #20                         ; 3CB22D/0614
L_3CB22F:
    SETPOSE     #$FF, WAIT #7               ; 3CB22F/57FF
L_3CB231:
    SETPOSE     VAR7                        ; 3CB231/2407
    ADDPOSE     #0, WAIT #7                 ; 3CB233/6700
L_3CB235:
    A_JMP       L_3CB22F                    ; 3CB235/172FB2

L_3CB238:
    SETPOSE     #$05                        ; 3CB238/5005
L_3CB23A:
    HALT                                    ; 3CB23A/09

L_3CB23B:
    ONTICK      $3CB34B                     ; 3CB23B/084BB33C
    HALT                                    ; 3CB23F/09

L_3CB240:
    MOV         VAR1,#$00                   ; 3CB240/0D0100
    ASMCALL     $DEE1                       ; 3CB243/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $07                         ; 3CB246/07
    .byte       $65                         ; 3CB247/65
    .byte       $00                         ; 3CB248/00
    .byte       $00                         ; 3CB249/00
    .byte       $00                         ; 3CB24A/00
    .byte       $00                         ; 3CB24B/00
    .byte       $05                         ; 3CB24C/05
    SETPOSE     #$06                        ; 3CB24D/5006
    HALT                                    ; 3CB24F/09

;L_3CB250!!!
.byte $0D,$01,$00,$D0,$E1,$DE,$08,$65
.byte $00,$00,$00,$00,$05,$50,$06,$09

L_3CB260:
    MOV         REG,VAR0                    ; 3CB260/1E00
    TABLEJMP    #3                          ; 3CB262/0F03
    .word       L_3CB299                    ; 3CB264/99B2
    .word       L_3CB26B                    ; 3CB266/6BB2
    .word       L_3CB285                    ; 3CB268/85B2
    HALT                                    ; 3CB26A/09

L_3CB26B:
    ONMOVE      $D864                       ; 3CB26B/2364D8
    ONPOSITION  $D968                       ; 3CB26E/2168D9
    SETXPOS     #$0080                      ; 3CB271/2A8000
    SETYPOS     #$0040                      ; 3CB274/2B4000
    SETZPOS     #$0081                      ; 3CB277/3A8100
L_3CB27A:
    SPRITEMAP   L_3A9E25                     ; 3CB27A/1A259E3A
    SETPOSE     #$00, WAIT #15              ; 3CB27E/5F00
    MOV         $07CC,#$01                  ; 3CB280/11CC0701
    HALT                                    ; 3CB284/09

L_3CB285:
    SETXPOS     #$0080                      ; 3CB285/2A8000
    SETYPOS     #$0050                      ; 3CB288/2B5000
    SETZPOS     #$0081                      ; 3CB28B/3A8100
L_3CB28E:
    SPRITEMAP   L_3A9E25                     ; 3CB28E/1A259E3A
    SETPOSE     #$01, WAIT #15              ; 3CB292/5F01
    MOV         $07CC,#$01                  ; 3CB294/11CC0701
    HALT                                    ; 3CB298/09

L_3CB299:
    SPRITEMAP   L_3A9E25                     ; 3CB299/1A259E3A
    SETPOSE     #$FF, WAIT #5               ; 3CB29D/55FF
    SETXVEL     #$FD00                      ; 3CB29F/B000FD
    SETYVEL     #$FF00                      ; 3CB2A2/C000FF
    SETPOSE     #$02, WAIT #4               ; 3CB2A5/5402
    SETXVEL     #$FC00, WAIT #4             ; 3CB2A7/B400FC
    ZEROVEL                                 ; 3CB2AA/38
    WAIT        #16                         ; 3CB2AB/0610
    HALT                                    ; 3CB2AD/09

L_3CB2AE:
    SPRITEMAP   L_3A9E25                     ; 3CB2AE/1A259E3A
    SETPOSE     #$FF, WAIT #8               ; 3CB2B2/58FF
    SETXVEL     #$FE00                      ; 3CB2B4/B000FE
    SETYVEL     #$FF00                      ; 3CB2B7/C000FF
    SETPOSE     #$03, WAIT #4               ; 3CB2BA/5403
    SETXVEL     #$FD00, WAIT #4             ; 3CB2BC/B400FD
    ZEROVEL                                 ; 3CB2BF/38
    WAIT        #16                         ; 3CB2C0/0610
    HALT                                    ; 3CB2C2/09

L_3CB2C3:
    SPRITEMAP   L_3A9E25                     ; 3CB2C3/1A259E3A
    SETPOSE     #$FF                        ; 3CB2C7/50FF
    WAIT        #13                         ; 3CB2C9/060D
    SETXVEL     #$FF00                      ; 3CB2CB/B000FF
    SETYVEL     #$FF00                      ; 3CB2CE/C000FF
    SETPOSE     #$04, WAIT #4               ; 3CB2D1/5404
    SETXVEL     #$FE00, WAIT #4             ; 3CB2D3/B400FE
    ZEROVEL                                 ; 3CB2D6/38
    WAIT        #16                         ; 3CB2D7/0610
    HALT                                    ; 3CB2D9/09

L_3CB2DA:
    SPRITEMAP   L_3A9E25                     ; 3CB2DA/1A259E3A
    SETPOSE     #$FF                        ; 3CB2DE/50FF
    WAIT        #19                         ; 3CB2E0/0613
    SETXVEL     #$FF80                      ; 3CB2E2/B080FF
    SETYVEL     #$FF00                      ; 3CB2E5/C000FF
    SETPOSE     #$05, WAIT #8               ; 3CB2E8/5805
    ZEROVEL                                 ; 3CB2EA/38
    WAIT        #16                         ; 3CB2EB/0610
    HALT                                    ; 3CB2ED/09

L_3CB2EE:
    SPRITEMAP   L_3A9E25                     ; 3CB2EE/1A259E3A
    SETPOSE     #$FF                        ; 3CB2F2/50FF
    WAIT        #24                         ; 3CB2F4/0618
    SETXVEL     #$0080                      ; 3CB2F6/B08000
    SETYVEL     #$FF00                      ; 3CB2F9/C000FF
    SETPOSE     #$03, WAIT #8               ; 3CB2FC/5803
    ZEROVEL                                 ; 3CB2FE/38
    WAIT        #16                         ; 3CB2FF/0610
    HALT                                    ; 3CB301/09

L_3CB302:
    SPRITEMAP   L_3A9E25                     ; 3CB302/1A259E3A
    SETPOSE     #$FF                        ; 3CB306/50FF
    WAIT        #29                         ; 3CB308/061D
    SETXVEL     #$0100                      ; 3CB30A/B00001
    SETYVEL     #$FF00                      ; 3CB30D/C000FF
    SETPOSE     #$06, WAIT #4               ; 3CB310/5406
    SETXVEL     #$0200, WAIT #4             ; 3CB312/B40002
    ZEROVEL                                 ; 3CB315/38
    WAIT        #16                         ; 3CB316/0610
    HALT                                    ; 3CB318/09

L_3CB319:
    SPRITEMAP   L_3A9E25                     ; 3CB319/1A259E3A
    SETPOSE     #$FF                        ; 3CB31D/50FF
    WAIT        #35                         ; 3CB31F/0623
    SETXVEL     #$0200                      ; 3CB321/B00002
    SETYVEL     #$FF00                      ; 3CB324/C000FF
    SETPOSE     #$07, WAIT #4               ; 3CB327/5407
    SETXVEL     #$0300, WAIT #4             ; 3CB329/B40003
    ZEROVEL                                 ; 3CB32C/38
    WAIT        #16                         ; 3CB32D/0610
    HALT                                    ; 3CB32F/09

L_3CB330:
    SPRITEMAP   L_3A9E25                     ; 3CB330/1A259E3A
    SETPOSE     #$FF                        ; 3CB334/50FF
    WAIT        #45                         ; 3CB336/062D
    SETXVEL     #$0300                      ; 3CB338/B00003
    SETYVEL     #$FF00                      ; 3CB33B/C000FF
    SETPOSE     #$08, WAIT #4               ; 3CB33E/5408
    SETXVEL     #$0400, WAIT #4             ; 3CB340/B40004
    ZEROVEL                                 ; 3CB343/38
    WAIT        #16                         ; 3CB344/0610
    MOV         $07CC,#$01                  ; 3CB346/11CC0701
    HALT                                    ; 3CB34A/09

B3C_b34b:
    lda OBJ_var2+2
    bne B3C_b35e
    ldx #$02
    lda #$3c
    sta script_bank
    lda #$40
    ldy #$b2
    jmp OBJ_TryReplaceScriptPc
B3C_b35e:
    ldx #$02
    lda #$3c
    sta script_bank
    lda #$50
    ldy #$b2
    jmp OBJ_TryReplaceScriptPc
    ldx OBJ_var3+1
    txa
    rts

L_3CB371:
    SETXPOS     #$0060                      ; 3CB371/2A6000
    SETYPOS     #$0020                      ; 3CB374/2B2000
    SPRITEMAP   L_3A9DCE                     ; 3CB377/1ACE9D3A
    LOOP        #4                          ; 3CB37B/0104
        SETYVEL     #$0400                      ; 3CB37D/C00004
        SETPOSE     #$02, WAIT #2               ; 3CB380/5202
        DECPOSE     WAIT #2                     ; 3CB382/82
        DECPOSE     WAIT #2                     ; 3CB383/82
    ENDLOOP                                 ; 3CB384/02
    SETXVEL     #$FFE0                      ; 3CB385/B0E0FF
    SETYVEL     #$FEC0                      ; 3CB388/C0C0FE
    SETPOSE     #$02, WAIT #5               ; 3CB38B/5502
    SETYVEL     #$FF80                      ; 3CB38D/C080FF
    DECPOSE     WAIT #5                     ; 3CB390/85
    SETYVEL     #$FFF0                      ; 3CB391/C0F0FF
    DECPOSE     WAIT #5                     ; 3CB394/85
    SETYVEL     #$0020                      ; 3CB395/C02000
    SETPOSE     #$02, WAIT #5               ; 3CB398/5502
    SETYVEL     #$00C0                      ; 3CB39A/C0C000
    DECPOSE     WAIT #5                     ; 3CB39D/85
    SETYVEL     #$0200                      ; 3CB39E/C00002
    DECPOSE     WAIT #5                     ; 3CB3A1/85
    ASMCALL     $B3DE                       ; 3CB3A2/D0DEB3
    SETYVEL     #$FE00                      ; 3CB3A5/C000FE
    SETPOSE     #$02, WAIT #5               ; 3CB3A8/5502
    SETYVEL     #$FF40                      ; 3CB3AA/C040FF
    DECPOSE     WAIT #5                     ; 3CB3AD/85
    SETYVEL     #$FFE0                      ; 3CB3AE/C0E0FF
    DECPOSE     WAIT #5                     ; 3CB3B1/85
    SETYVEL     #$0020                      ; 3CB3B2/C02000
    SETPOSE     #$02, WAIT #5               ; 3CB3B5/5502
    SETYVEL     #$00C0                      ; 3CB3B7/C0C000
    DECPOSE     WAIT #5                     ; 3CB3BA/85
    SETYVEL     #$0200                      ; 3CB3BB/C00002
    DECPOSE     WAIT #5                     ; 3CB3BE/85
    LOOP        #3                          ; 3CB3BF/0103
        SETXVEL     #$0000                      ; 3CB3C1/B00000
        SETYVEL     #$0100                      ; 3CB3C4/C00001
        SETPOSE     #$02, WAIT #2               ; 3CB3C7/5202
        SETYVEL     #$0200                      ; 3CB3C9/C00002
        DECPOSE     WAIT #2                     ; 3CB3CC/82
        SETYVEL     #$0600                      ; 3CB3CD/C00006
        DECPOSE     WAIT #2                     ; 3CB3D0/82
    ENDLOOP                                 ; 3CB3D1/02
    SETYVEL     #$0000                      ; 3CB3D2/C00000
    INCPOSE                                 ; 3CB3D5/70
    MOV         VAR2,#$01                   ; 3CB3D6/0D0201
    ONTICK      $3CB734                     ; 3CB3D9/0834B73C
    HALT                                    ; 3CB3DD/09

B3C_b3de:
    ldx #$02
    lda OBJ_var2, x
    cmp #$01
    bne B3C_b3f2
    lda #$c0
    sta OBJ_vel_x_lo+8
    lda #$fe
    sta OBJ_vel_x_hi+8
    rts
B3C_b3f2:
    lda #$80
    sta OBJ_vel_x_lo+7
    lda #$ff
    sta OBJ_vel_x_hi+7
    rts

B3C_b3fd:
L_3CB3FD:
    MOV         VAR7,#$00                   ; 3CB3FD/0D0700
    ASMCALL     $B4FF, WAIT #1              ; 3CB400/D1FFB4
    SETXPOS     #$00A0                      ; 3CB403/2AA000
    SETYPOS     #$0090                      ; 3CB406/2B9000
    SPRITEMAP   L_3A971A                     ; 3CB409/1A1A973A
    SETPOSE     VAR7                        ; 3CB40D/2407
    ZEROVEL                                 ; 3CB40F/38
    HALT                                    ; 3CB410/09

L_3CB411:
    SETXPOS     #$00A0                      ; 3CB411/2AA000
    SETYPOS     #$0020                      ; 3CB414/2B2000
    ASMCALL     $B4FF, WAIT #1              ; 3CB417/D1FFB4
    SETYVEL     #$0700                      ; 3CB41A/C00007
    SPRITEMAP   L_3A971A                     ; 3CB41D/1A1A973A
    SETPOSE     VAR7                        ; 3CB421/2407
    WAIT        #16                         ; 3CB423/0610
    ZEROVEL                                 ; 3CB425/38
    HALT                                    ; 3CB426/09

L_3CB427:
    ONPOSITION  $D9BB                       ; 3CB427/21BBD9
    MOV         VAR2,#$00                   ; 3CB42A/0D0200
    MOV         VAR3,#$00                   ; 3CB42D/0D0300
    ZEROVEL                                 ; 3CB430/38
    SETPOSE     VAR7                        ; 3CB431/2407
    ADDPOSE     #5, WAIT #1                 ; 3CB433/6105
L_3CB435:
    ASMCALL     $B559                       ; 3CB435/D059B5
L_3CB438:
    A_JSR       L_3CB43F                    ; 3CB438/183FB4
    MOV         VAR2,#$01                   ; 3CB43B/0D0201
    HALT                                    ; 3CB43E/09

L_3CB43F:
    MOV         VAR1,#$00                   ; 3CB43F/0D0100
    ASMCALL     $DEE1                       ; 3CB442/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $0A                         ; 3CB445/0A
    .byte       $65                         ; 3CB446/65
    .byte       $00                         ; 3CB447/00
    .byte       $00                         ; 3CB448/00
    .byte       $00                         ; 3CB449/00
    .byte       $00                         ; 3CB44A/00
    .byte       $16                         ; 3CB44B/16
    ASMCALL     $DEE1                       ; 3CB44C/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $0B                         ; 3CB44F/0B
    .byte       $65                         ; 3CB450/65
    .byte       $00                         ; 3CB451/00
    .byte       $00                         ; 3CB452/00
    .byte       $00                         ; 3CB453/00
    .byte       $00                         ; 3CB454/00
    .byte       $17                         ; 3CB455/17
    ASMCALL     $DEE1                       ; 3CB456/D0E1DE // Create in slot `arg1` a child object with script `arg2` offset by (`arg3`, `arg4`, `arg5`). With VAR0=`arg6`, VAR1=(self.VAR1+`arg7`)
    .byte       $0C                         ; 3CB459/0C
    .byte       $65                         ; 3CB45A/65
    .byte       $00                         ; 3CB45B/00
    .byte       $00                         ; 3CB45C/00
    .byte       $00                         ; 3CB45D/00
    .byte       $00                         ; 3CB45E/00
    .byte       $18                         ; 3CB45F/18
    A_RTS                                   ; 3CB460/19

L_3CB461:
    ASMCALL     $ABD4                       ; 3CB461/D0D4AB
    SETPOSE     VAR7                        ; 3CB464/2407
    ADDPOSE     #5, WAIT #1                 ; 3CB466/6105
L_3CB468:
    LOOP        #3                          ; 3CB468/0103
        ADDPOSE     #5, WAIT #1                 ; 3CB46A/6105
L_3CB46C:
        ADDPOSE     #-5, WAIT #1                ; 3CB46C/61FB
L_3CB46E:
    ENDLOOP                                 ; 3CB46E/02
    ADDPOSE     #-5, WAIT #1                ; 3CB46F/61FB
L_3CB471:
    ADDPOSE     #5, WAIT #1                 ; 3CB471/6105
L_3CB473:
    ADDPOSE     #-5, WAIT #5                ; 3CB473/65FB
L_3CB475:
    HALT                                    ; 3CB475/09

L_3CB476:
    WAIT        #4                          ; 3CB476/0604
L_3CB478:
    SETXPOS     #$00B8                      ; 3CB478/2AB800
    SETYPOS     #$0078                      ; 3CB47B/2B7800
    ZEROVEL                                 ; 3CB47E/38
    ONTICK      $3CB753                     ; 3CB47F/0853B73C
    MOV         VAR0,#$10                   ; 3CB483/0D0010
    SETPOSE     VAR7                        ; 3CB486/2407
    ADDPOSE     #10, WAIT #8                ; 3CB488/680A
L_3CB48A:
    TASK        L_3CB4B9                    ; 3CB48A/07B9B4
    MOV         VAR1,#$00                   ; 3CB48D/0D0100
    MOV         REG,VAR7                    ; 3CB490/1E07
    TABLEJMP    #4                          ; 3CB492/0F04
    .word       L_3CB4A8                    ; 3CB494/A8B4
    .word       L_3CB4A8                    ; 3CB496/A8B4
    .word       L_3CB4A8                    ; 3CB498/A8B4
    .word       L_3CB4A8                    ; 3CB49A/A8B4
    ASMCALL     B3E_de51, WAIT #1              ; 3CB49C/D151DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $65                         ; 3CB49F/65
    .byte       $08                         ; 3CB4A0/08
    .byte       $00                         ; 3CB4A1/00
    .byte       $00                         ; 3CB4A2/00
    .byte       $00                         ; 3CB4A3/00
    .byte       $06                         ; 3CB4A4/06
L_3CB4A5:
    A_JMP       L_3CB4B3                    ; 3CB4A5/17B3B4

L_3CB4A8:
    ASMCALL     $DED0, WAIT #1              ; 3CB4A8/D1D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $0D                         ; 3CB4AB/0D
    .byte       $11                         ; 3CB4AC/11
    .byte       $65                         ; 3CB4AD/65
    .byte       $08                         ; 3CB4AE/08
    .byte       $00                         ; 3CB4AF/00
    .byte       $00                         ; 3CB4B0/00
    .byte       $00                         ; 3CB4B1/00
    .byte       $06                         ; 3CB4B2/06
L_3CB4B3:
    ADDPOSE     #10                         ; 3CB4B3/600A
    WAIT        #40                         ; 3CB4B5/0628
L_3CB4B7:
    ENDTICK                                 ; 3CB4B7/0E
    HALT                                    ; 3CB4B8/09

L_3CB4B9:
    UNK37       #$02,#$00                   ; 3CB4B9/370200
    WAIT        #2                          ; 3CB4BC/0602
L_3CB4BE:
    LOOP        #2                          ; 3CB4BE/0102
        UNK36       #$02,#$00                   ; 3CB4C0/360200
        UNK37       #$FC,#$FF                   ; 3CB4C3/37FCFF
        WAIT        #2                          ; 3CB4C6/0602
L_3CB4C8:
        UNK36       #$FC,#$FF                   ; 3CB4C8/36FCFF
        UNK37       #$04,#$00                   ; 3CB4CB/370400
        WAIT        #2                          ; 3CB4CE/0602
L_3CB4D0:
        UNK36       #$04,#$00                   ; 3CB4D0/360400
        UNK37       #$FE,#$FF                   ; 3CB4D3/37FEFF
        WAIT        #2                          ; 3CB4D6/0602
L_3CB4D8:
        UNK36       #$FC,#$FF                   ; 3CB4D8/36FCFF
        UNK37       #$00,#$00                   ; 3CB4DB/370000
        WAIT        #2                          ; 3CB4DE/0602
L_3CB4E0:
        UNK36       #$04,#$00                   ; 3CB4E0/360400
        UNK37       #$02,#$00                   ; 3CB4E3/370200
        WAIT        #2                          ; 3CB4E6/0602
L_3CB4E8:
        UNK36       #$FC,#$FF                   ; 3CB4E8/36FCFF
        UNK37       #$FC,#$FF                   ; 3CB4EB/37FCFF
        WAIT        #2                          ; 3CB4EE/0602
L_3CB4F0:
        UNK36       #$02,#$00                   ; 3CB4F0/360200
        UNK37       #$04,#$00                   ; 3CB4F3/370400
        WAIT        #2                          ; 3CB4F6/0602
L_3CB4F8:
    ENDLOOP                                 ; 3CB4F8/02
    UNK37       #$FE,#$FF                   ; 3CB4F9/37FEFF
    WAIT        #2                          ; 3CB4FC/0602
L_3CB4FE:
    ENDTASK                                 ; 3CB4FE/0C

B3C_b4ff:
    ldx curr_object_slot
    ldy OBJ_var7+1
    sty OBJ_var7+6
    lda B3C_b511, y
    sta a:OBJ_y_lo, x
    jsr B3C_b516
    rts
B3C_b511:
    .byte $20,$20,$20,$18,$1A
B3C_b516:
    lda B3C_b527, y
    sta ptr1
    lda B3C_b52c, y
    sta ptr1+1
    lda #$18
    ldy #$08
    jmp B3E_c90e
B3C_b527:
    .lobytes $B531,$B539,$B541,$B549,$B551
B3C_b52c:
    .hibytes $B531,$B539,$B541,$B549,$B551

.byte $37,$36,$26,$0F
.byte $37,$30,$16,$0F
.byte $37,$36,$26,$0F
.byte $37,$30,$16,$0F

.byte $37,$35,$25,$0F ;kirby palette
.byte $37,$30,$16,$0F ;red(?) palette
.byte $37,$36,$26,$0F ;waddle dee palette
.byte $37,$30,$16,$0F ;red(?) palette

.byte $37,$35,$25,$0F ;kirby palette
.byte $37,$30,$16,$0F ;red(?) palette

B3C_b559:
    ldy curr_object_slot
    lda UNK_796+59
    asl a
    asl a
    asl a
    clc
    adc OBJ_var7, y
    tax
    lda B3C_b56f, x
    ldy curr_script_slot
    sta SCR_sleep_timer, y
    rts

B3C_b56f:
.byte $51,$31
.byte $13,$0E,$09,$00,$00,$00,$3D,$27
.byte $0F,$0C,$08,$00,$00,$00,$28,$1E
.byte $14,$0A,$07,$00,$00,$00

L_3CB587:
    SETXPOS     #$00BF                      ; 3CB587/2ABF00
    SETYPOS     #$0075                      ; 3CB58A/2B7500
    ASMCALL     $B74A, WAIT #1              ; 3CB58D/D14AB7
    MOV         REG,VAR7                    ; 3CB590/1E07
    TABLEJMP    #4                          ; 3CB592/0F04
    .word       L_3CB620                    ; 3CB594/20B6
    .word       L_3CB620                    ; 3CB596/20B6
    .word       L_3CB620                    ; 3CB598/20B6
    .word       L_3CB5A1                    ; 3CB59A/A1B5
    WAIT        #80                         ; 3CB59C/0650
    A_JMP       L_3CB6D6                    ; 3CB59E/17D6B6

L_3CB5A1:
    TASK        TASK_3CB5D8                 ; 3CB5A1/07D8B5
    SETXPOS     #$00BF                      ; 3CB5A4/2ABF00
    SETYPOS     #$0070                      ; 3CB5A7/2B7000
    SPRITEMAP   L_3A974C                     ; 3CB5AA/1A4C973A
    LOOP        #3                          ; 3CB5AE/0103
        SETXVEL     #$0100                      ; 3CB5B0/B00001
        SETYVEL     #$FE00, WAIT #2             ; 3CB5B3/C200FE
        SETXVEL     #$0080                      ; 3CB5B6/B08000
        SETYVEL     #$FF00, WAIT #2             ; 3CB5B9/C200FF
        SETXVEL     #$0020                      ; 3CB5BC/B02000
        SETYVEL     #$FF80, WAIT #2             ; 3CB5BF/C280FF
        SETXVEL     #$0008                      ; 3CB5C2/B00800
        SETYVEL     #$FFE0, WAIT #2             ; 3CB5C5/C2E0FF
    ENDLOOP                                 ; 3CB5C8/02
    LOOP        #2                          ; 3CB5C9/0102
        LOOP        #7                          ; 3CB5CB/0107
            A_JSR       L_3CB5F9                    ; 3CB5CD/18F9B5
        ENDLOOP                                 ; 3CB5D0/02
    ENDLOOP                                 ; 3CB5D1/02
    ZEROVEL                                 ; 3CB5D2/38
    WAIT        #128                        ; 3CB5D3/0680
    A_JMP       L_3CB6B8                    ; 3CB5D5/17B8B6

TASK_3CB5D8:
    LOOP        #3                          ; 3CB5D8/0103
        SETPOSE     VAR7                        ; 3CB5DA/2407
        ADDPOSE     #20, WAIT #2                ; 3CB5DC/6214
        ADDPOSE     #-20, WAIT #2               ; 3CB5DE/62EC
        ADDPOSE     #5, WAIT #2                 ; 3CB5E0/6205
        ADDPOSE     #20, WAIT #2                ; 3CB5E2/6214
    ENDLOOP                                 ; 3CB5E4/02
    LOOP        #2                          ; 3CB5E5/0102
        SETPOSE     VAR7                        ; 3CB5E7/2407
        WAIT        #3                          ; 3CB5E9/0603
        ADDPOSE     #20, WAIT #3                ; 3CB5EB/6314
        ADDPOSE     #-10, WAIT #3               ; 3CB5ED/63F6
        ADDPOSE     #5, WAIT #3                 ; 3CB5EF/6305
        ADDPOSE     #5, WAIT #3                 ; 3CB5F1/6305
        ADDPOSE     #-15, WAIT #3               ; 3CB5F3/63F1
        ADDPOSE     #20, WAIT #3                ; 3CB5F5/6314
    ENDLOOP                                 ; 3CB5F7/02
    ENDTASK                                 ; 3CB5F8/0C

L_3CB5F9:
    SETXVEL     #$0080                      ; 3CB5F9/B08000
    SETYVEL     #$0200, WAIT #1             ; 3CB5FC/C10002
    SETXVEL     #$0020                      ; 3CB5FF/B02000
    SETYVEL     #$0100, WAIT #2             ; 3CB602/C20001
    A_RTS                                   ; 3CB605/19

L_3CB606:
    SETXVEL     #$FF80                      ; 3CB606/B080FF
    SETYVEL     #$0200, WAIT #1             ; 3CB609/C10002
    SETXVEL     #$FFE0                      ; 3CB60C/B0E0FF
    SETYVEL     #$0200, WAIT #2             ; 3CB60F/C20002
    A_RTS                                   ; 3CB612/19

L_3CB613:
    SETXVEL     #$FF80                      ; 3CB613/B080FF
    SETYVEL     #$0200, WAIT #1             ; 3CB616/C10002
    SETXVEL     #$FFE0                      ; 3CB619/B0E0FF
    SETYVEL     #$0100, WAIT #2             ; 3CB61C/C20001
    A_RTS                                   ; 3CB61F/19

L_3CB620:
    SETXPOS     #$00BF                      ; 3CB620/2ABF00
    SETYPOS     #$0075                      ; 3CB623/2B7500
    SPRITEMAP   L_3A974C                     ; 3CB626/1A4C973A
    LOOP        #3                          ; 3CB62A/0103
        SETPOSE     VAR7                        ; 3CB62C/2407
        ADDPOSE     #15                         ; 3CB62E/600F
        SETXVEL     #$0200                      ; 3CB630/B00002
        SETYVEL     #$FE00, WAIT #1             ; 3CB633/C100FE
        ADDPOSE     #-10                        ; 3CB636/60F6
        SETXVEL     #$0140                      ; 3CB638/B04001
        SETYVEL     #$FEC0, WAIT #1             ; 3CB63B/C1C0FE
        ADDPOSE     #5                          ; 3CB63E/6005
        SETXVEL     #$0080                      ; 3CB640/B08000
        SETYVEL     #$0100, WAIT #1             ; 3CB643/C10001
        ADDPOSE     #10                         ; 3CB646/600A
        SETXVEL     #$0010                      ; 3CB648/B01000
        SETYVEL     #$FF80, WAIT #1             ; 3CB64B/C180FF
        ADDPOSE     #-5                         ; 3CB64E/60FB
        SETXVEL     #$0008                      ; 3CB650/B00800
        SETYVEL     #$FFE0, WAIT #1             ; 3CB653/C1E0FF
    ENDLOOP                                 ; 3CB656/02
    LOOP        #2                          ; 3CB657/0102
        SETPOSE     VAR7                        ; 3CB659/2407
        SETXVEL     #$FF00                      ; 3CB65B/B000FF
        SETYVEL     #$0080, WAIT #4             ; 3CB65E/C48000
        SETYVEL     #$0040, WAIT #4             ; 3CB661/C44000
        ADDPOSE     #10                         ; 3CB664/600A
        SETXVEL     #$FF80                      ; 3CB666/B080FF
        SETYVEL     #$0010, WAIT #4             ; 3CB669/C41000
        SETYVEL     #$0008, WAIT #4             ; 3CB66C/C40800
        ADDPOSE     #15                         ; 3CB66F/600F
        SETXVEL     #$FFE0, WAIT #4             ; 3CB671/B4E0FF
        SETYVEL     #$0010, WAIT #4             ; 3CB674/C41000
        ADDPOSE     #-5                         ; 3CB677/60FB
        SETXVEL     #$0020                      ; 3CB679/B02000
        SETYVEL     #$0040, WAIT #4             ; 3CB67C/C44000
        SETYVEL     #$0080, WAIT #4             ; 3CB67F/C48000
        ADDPOSE     #-5                         ; 3CB682/60FB
        SETXVEL     #$0080                      ; 3CB684/B08000
        SETYVEL     #$0100, WAIT #4             ; 3CB687/C40001
        SETYVEL     #$0080, WAIT #4             ; 3CB68A/C48000
        ADDPOSE     #-5                         ; 3CB68D/60FB
        SETXVEL     #$0100                      ; 3CB68F/B00001
        SETYVEL     #$0020, WAIT #4             ; 3CB692/C42000
        SETYVEL     #$0008, WAIT #4             ; 3CB695/C40800
        ADDPOSE     #5                          ; 3CB698/6005
        SETXVEL     #$0080                      ; 3CB69A/B08000
        SETYVEL     #$0100, WAIT #4             ; 3CB69D/C40001
        SETXVEL     #$0020                      ; 3CB6A0/B02000
        SETYVEL     #$0080, WAIT #4             ; 3CB6A3/C48000
        ADDPOSE     #5                          ; 3CB6A6/6005
        SETXVEL     #$FFE0                      ; 3CB6A8/B0E0FF
        SETYVEL     #$0020, WAIT #4             ; 3CB6AB/C42000
        SETXVEL     #$FFF8                      ; 3CB6AE/B0F8FF
        SETYVEL     #$0008, WAIT #4             ; 3CB6B1/C40800
    ENDLOOP                                 ; 3CB6B4/02
    ZEROVEL                                 ; 3CB6B5/38
    WAIT        #100                        ; 3CB6B6/0664
L_3CB6B8:
    SPRITEMAP   L_3A978C                     ; 3CB6B8/1A8C973A
    SETPOSE     VAR7                        ; 3CB6BC/2407
    SETYPOS     #$00A4                      ; 3CB6BE/2BA400
    ASMCALL     $B724                       ; 3CB6C1/D024B7
    ONTICK      $3CB734                     ; 3CB6C4/0834B73C
    HALT                                    ; 3CB6C8/09

L_3CB6C9:
    ONMOVE      $D864                       ; 3CB6C9/2364D8
    ONPOSITION  $D968                       ; 3CB6CC/2168D9
    SETXVEL     #$0000                      ; 3CB6CF/B00000
    WAIT        #1                          ; 3CB6D2/0601
L_3CB6D4:
    ZEROVEL                                 ; 3CB6D4/38
L_3CB6D5:
    HALT                                    ; 3CB6D5/09

L_3CB6D6:
    ASMCALL     $B724                       ; 3CB6D6/D024B7
    HALT                                    ; 3CB6D9/09

L_3CB6DA:
    ASMCALL     $B74A, WAIT #1              ; 3CB6DA/D14AB7
    SETXPOS     #$00C0                      ; 3CB6DD/2AC000
    SETYPOS     #$0001                      ; 3CB6E0/2B0100
    SPRITEMAP   L_3A974C                     ; 3CB6E3/1A4C973A
    TASK        TASK_3CB70D                 ; 3CB6E7/070DB7
    LOOP        #3                          ; 3CB6EA/0103
        LOOP        #3                          ; 3CB6EC/0103
            A_JSR       L_3CB606                    ; 3CB6EE/1806B6
        ENDLOOP                                 ; 3CB6F1/02
        LOOP        #4                          ; 3CB6F2/0104
            A_JSR       L_3CB613                    ; 3CB6F4/1813B6
        ENDLOOP                                 ; 3CB6F7/02
    ENDLOOP                                 ; 3CB6F8/02
    ZEROVEL                                 ; 3CB6F9/38
    WAIT        #16                         ; 3CB6FA/0610
    HALT                                    ; 3CB6FC/09

L_3CB6FD:
    ASMCALL     $B74A, WAIT #1              ; 3CB6FD/D14AB7
    SETXPOS     #$00AD                      ; 3CB700/2AAD00
    SETYPOS     #$0068                      ; 3CB703/2B6800
    SPRITEMAP   L_3A974C                     ; 3CB706/1A4C973A
    SETPOSE     VAR7                        ; 3CB70A/2407
    HALT                                    ; 3CB70C/09

TASK_3CB70D:
    LOOP        #3                          ; 3CB70D/0103
        SETPOSE     VAR7                        ; 3CB70F/2407
        ADDPOSE     #5, WAIT #3                 ; 3CB711/6305
        ADDPOSE     #10, WAIT #3                ; 3CB713/630A
        SETPOSE     #$1E, WAIT #3               ; 3CB715/531E
        DECPOSE     WAIT #3                     ; 3CB717/83
        SETPOSE     #$1F, WAIT #3               ; 3CB718/531F
        SETPOSE     VAR7                        ; 3CB71A/2407
        ADDPOSE     #10, WAIT #3                ; 3CB71C/630A
        ADDPOSE     #-10, WAIT #3               ; 3CB71E/63F6
    ENDLOOP                                 ; 3CB720/02
    ADDPOSE     #5, WAIT #3                 ; 3CB721/6305
    ENDTASK                                 ; 3CB723/0C

;L_3CB724!!!
B3C_b724:
    lda #$01
    sta OBJ_var6+1
    lda OBJ_var7+1
    cmp #$04
    beq B3C_b733
    jsr $b837
B3C_b733:
    rts

B3C_b734:
    lda UNK_796+57
    bne B3C_b73a
    rts
B3C_b73a:
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$c9
    ldy #$b6
    jmp OBJ_TryReplaceScriptPc
    ldy curr_object_slot
    lda OBJ_var7+6
    sta OBJ_var7, y
    rts
B3C_b753:
    ldx curr_object_slot
    lda #$00
    sta UNK_0
    lda OBJ_var0, x
    clc
    adc #$01
    sta OBJ_var0, x
    and #$f0
    beq B3C_b791
    lsr a
    lsr a
    lsr a
    lsr a
    sta UNK_0
    lda OBJ_var7, x
    tax
    lda B3C_b832, x
    clc
    adc UNK_0
    tax
    ldy curr_object_slot
    lda B3C_b792, x
    sta OBJ_vel_x_hi, y
    lda B3C_b7ba, x
    sta OBJ_vel_x_lo, y
    lda B3C_b7e2, x
    sta OBJ_vel_y_hi, y
    lda B3C_b80a, x
    sta OBJ_vel_y_lo, y
B3C_b791:
    rts

B3C_b792:
.byte $00,$03,$01,$00,$00,$00,$00
.byte $00,$00,$03,$01,$00,$00,$00,$00
.byte $00,$00,$03,$01,$00,$00,$00,$00
.byte $00,$00,$03,$01,$00,$00,$00,$00
.byte $00,$00,$04,$01,$00,$00,$00,$00
.byte $00
B3C_b7ba:
.byte $00,$00,$40,$C0,$80,$40,$20
.byte $10,$00,$00,$40,$C0,$80,$40,$20
.byte $10,$00,$00,$40,$C0,$80,$40,$20
.byte $10,$00,$00,$40,$C0,$80,$40,$20
.byte $10,$00,$00,$40,$80,$20,$10,$08
.byte $00
B3C_b7e2:
.byte $00,$FB,$FF,$00,$00,$00,$00
.byte $01,$00,$FB,$FF,$00,$00,$00,$00
.byte $01,$00,$FB,$FF,$00,$00,$00,$00
.byte $01,$00,$FB,$FF,$00,$00,$00,$00
.byte $01,$00,$FB,$FF,$00,$00,$00,$00
.byte $00
B3C_b80a:
.byte $00,$00,$C0,$80,$E0,$20,$80
.byte $40,$00,$00,$C0,$80,$E0,$20,$80
.byte $40,$00,$00,$C0,$80,$E0,$20,$80
.byte $40,$00,$00,$C0,$80,$E0,$20,$80
.byte $40

B3C_b82a:
.byte $00,$00,$C0,$80,$F0,$F8,$00
.byte $00
B3C_b832:
.byte $00,$08,$10,$18,$20,$A6,$6E

B3C_b839:
    lda OBJ_var7+1
    asl a
    tay
    lda B3C_b84c, y
    sta a:OBJ_x_lo, x
    iny
    lda B3C_b84c, y
    sta a:OBJ_x_hi, x
    rts

B3C_b84c:
.word $B8,$C8,$D8,$E8,$F8

L_3CB856:
    ONTICK      $3CBA9F                     ; 3CB856/089FBA3C
    HALT                                    ; 3CB85A/09

L_3CB85B:
    ASMCALL     $BA16                       ; 3CB85B/D016BA
    JNE         L_3CB893                    ; 3CB85E/0B93B8
L_3CB861:
    MOV         VAR3,#$00                   ; 3CB861/0D0300
    ASMCALL     $A213                       ; 3CB864/D013A2
    MOV         VAR1,#$09                   ; 3CB867/0D0109
    ASMCALL     B3E_de51                       ; 3CB86A/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $65                         ; 3CB86D/65
    .byte       $00                         ; 3CB86E/00
    .byte       $00                         ; 3CB86F/00
    .byte       $00                         ; 3CB870/00
    .byte       $01                         ; 3CB871/01
    .byte       $00                         ; 3CB872/00
    ASMCALL     PlayMusic                       ; 3CB873/D045DE // Play music
    .byte       $2E                         ; 3CB876/2E
    WAIT        #128                        ; 3CB877/0680
    A_JMP       L_3CB9E4                    ; 3CB879/17E4B9

L_3CB87C:
    ASMCALL     PlayMusic                       ; 3CB87C/D045DE // Play music
    .byte       $1D                         ; 3CB87F/1D
    SETPOSE     #$00                        ; 3CB880/5000
    WAIT        #24                         ; 3CB882/0618
    LOOP        #3                          ; 3CB884/0103
        SETPOSE     #$08, WAIT #5               ; 3CB886/5508
        SETPOSE     #$07, WAIT #5               ; 3CB888/5507
    ENDLOOP                                 ; 3CB88A/02
    WAIT        #80                         ; 3CB88B/0650
    ASMCALL     $BA16                       ; 3CB88D/D016BA
    JEQ         L_3CB861                    ; 3CB890/0A61B8
L_3CB893:
    WAIT        #30                         ; 3CB893/061E
L_3CB895:
    LOOP        #4                          ; 3CB895/0104
        ASMCALL     $C996, WAIT #4              ; 3CB897/D496C9 // Palette fade (out?) step
L_3CB89A:
    ENDLOOP                                 ; 3CB89A/02
L_3CB89B:
    A_JSR       L_3CB909                    ; 3CB89B/1809B9
    LOOP        #4                          ; 3CB89E/0104
        ASMCALL     $C94C, WAIT #4              ; 3CB8A0/D44CC9 // Palette fade dark in step
L_3CB8A3:
    ENDLOOP                                 ; 3CB8A3/02
    SETXPOS     #$0080                      ; 3CB8A4/2A8000
    SETYPOS     #$0080                      ; 3CB8A7/2B8000
    MOV         VAR3,#$01                   ; 3CB8AA/0D0301
    MOV         VAR1,#$00                   ; 3CB8AD/0D0100
    SPRITEMAP   L_3A9E9C                     ; 3CB8B0/1A9C9E3A
    ASMCALL     $BA2C                       ; 3CB8B4/D02CBA
    MOV         VAR2,#$00                   ; 3CB8B7/0D0200
    WAIT        #15                         ; 3CB8BA/060F
L_3CB8BC:
    ASMCALL     $B922                       ; 3CB8BC/D022B9
    LOOP        REG                         ; 3CB8BF/22
        ASMCALL     PlayMusic                       ; 3CB8C0/D045DE // Play music
        .byte       $16                         ; 3CB8C3/16
        ASMCALL     $BA49                       ; 3CB8C4/D049BA
        SETPOSE     VAR2                        ; 3CB8C7/2402
        WAIT        #15                         ; 3CB8C9/060F
L_3CB8CB:
    ENDLOOP                                 ; 3CB8CB/02
    ASMCALL     $B961                       ; 3CB8CC/D061B9
    JEQ         L_3CB8E4                    ; 3CB8CF/0AE4B8
    ASMCALL     PlayMusic                       ; 3CB8D2/D045DE // Play music
    .byte       $16                         ; 3CB8D5/16
    ASMCALL     B3E_de51                       ; 3CB8D6/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $65                         ; 3CB8D9/65
    .byte       $00                         ; 3CB8DA/00
    .byte       $00                         ; 3CB8DB/00
    .byte       $00                         ; 3CB8DC/00
    .byte       $00                         ; 3CB8DD/00
    .byte       $1A                         ; 3CB8DE/1A
    MOV         VAR2,#$05                   ; 3CB8DF/0D0205
    SETPOSE     VAR2                        ; 3CB8E2/2402
L_3CB8E4:
    WAIT        #16                         ; 3CB8E4/0610
L_3CB8E6:
    MOV         $07CC,#$00                  ; 3CB8E6/11CC0700
    ASMCALL     PlayMusic                       ; 3CB8EA/D045DE // Play music
    .byte       $30                         ; 3CB8ED/30
    ASMCALL     B3E_de51                       ; 3CB8EE/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $65                         ; 3CB8F1/65
    .byte       $00                         ; 3CB8F2/00
    .byte       $00                         ; 3CB8F3/00
    .byte       $00                         ; 3CB8F4/00
    .byte       $02                         ; 3CB8F5/02
    .byte       $09                         ; 3CB8F6/09
    ASMCALL     $B92D                       ; 3CB8F7/D02DB9
    A_JMP       L_3CB9E1                    ; 3CB8FA/17E1B9

;L_3CB8FD!!!
.byte $01,$05,$50,$FF
.byte $06,$10,$24,$02,$06,$10,$02,$0C

L_3CB909:
    ASMCALL     $A0F2                       ; 3CB909/D0F2A0
    SETPOSE     #$FF                        ; 3CB90C/50FF
    ASMCALL     Load_Palette                       ; 3CB90E/D061DF // Load_Palette, palette, start_index, entries
    .word       $AA0C                       ; 3CB911/0CAA
    .byte       $00                         ; 3CB913/00
    .byte       $20                         ; 3CB914/20
    ASMCALL     $A213                       ; 3CB915/D013A2
    ASMCALL     $A21B                       ; 3CB918/D01BA2
    SETXCAMERA  #$0000                      ; 3CB91B/300000
    SETYCAMERA  #$0000                      ; 3CB91E/310000
    A_RTS                                   ; 3CB921/19

B3C_b922:
    ldx OBJ_var7+1
    cpx #5
    bcc @exit
    ldx #4
    @exit:
    txa
    rts

B3C_b92d:
    lda UNK_796+58
    bne @exit
    ldx OBJ_var7+1
    lda B3C_b94f, x
    beq B3C_b93e
    sta minigame_bonus_lives
    @exit:
    rts

B3C_b93e:
    txa
    asl a
    tay
    lda B3C_b955, y
    sta minigame_bonus_score
    iny
    lda B3C_b955, y
    sta minigame_bonus_score+1
    rts

B3C_b94f:
.byte $00,$00,$00,$00,$01,$03

B3C_b955:
.word 0,$64,$12C,$1F4,0,0

B3C_b961:
    ldy #0
    lda OBJ_var7+1
    cmp #4
    bmi @exit
    lda UNK_796+57
    bne @exit
    iny
    @exit:
    tya
    rts


L_3CB972:
    WAIT        #30                         ; 3CB972/061E
L_3CB974:
    LOOP        #4                          ; 3CB974/0104
        ASMCALL     $C996, WAIT #4              ; 3CB976/D496C9 // Palette fade (out?) step
L_3CB979:
    ENDLOOP                                 ; 3CB979/02
    ASMCALL     $BA22                       ; 3CB97A/D022BA
    JNE         L_3CB89B                    ; 3CB97D/0B9BB8
    A_JSR       L_3CB909                    ; 3CB980/1809B9
    LOOP        #4                          ; 3CB983/0104
        ASMCALL     $C94C, WAIT #4              ; 3CB985/D44CC9 // Palette fade dark in step
    ENDLOOP                                 ; 3CB988/02
    SETXPOS     #$0080                      ; 3CB989/2A8000
    SETYPOS     #$0080                      ; 3CB98C/2B8000
    MOV         VAR3,#$02                   ; 3CB98F/0D0302
    SPRITEMAP   L_3A9E9C                     ; 3CB992/1A9C9E3A
    ASMCALL     $BA2C                       ; 3CB996/D02CBA
    MOV         VAR2,#$00                   ; 3CB999/0D0200
    WAIT        #15                         ; 3CB99C/060F
    LOOP        #4                          ; 3CB99E/0104
        ASMCALL     PlayMusic                       ; 3CB9A0/D045DE // Play music
        .byte       $16                         ; 3CB9A3/16
        ASMCALL     $BA49                       ; 3CB9A4/D049BA
        SETPOSE     VAR2                        ; 3CB9A7/2402
        WAIT        #15                         ; 3CB9A9/060F
    ENDLOOP                                 ; 3CB9AB/02
    SETPOSE     VAR2                        ; 3CB9AC/2402
    MOV         VAR1,#$00                   ; 3CB9AE/0D0100
    ASMCALL     B3E_de51                       ; 3CB9B1/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $65                         ; 3CB9B4/65
    .byte       $00                         ; 3CB9B5/00
    .byte       $00                         ; 3CB9B6/00
    .byte       $00                         ; 3CB9B7/00
    .byte       $00                         ; 3CB9B8/00
    .byte       $19                         ; 3CB9B9/19
    WAIT        #20                         ; 3CB9BA/0614
    ASMCALL     PlayMusic                       ; 3CB9BC/D045DE // Play music
    .byte       $2F                         ; 3CB9BF/2F
    WAIT        #60                         ; 3CB9C0/063C
    MOV         VAR2,#$05                   ; 3CB9C2/0D0205
    SETPOSE     VAR2                        ; 3CB9C5/2402
    MOV         $07CC,#$00                  ; 3CB9C7/11CC0700
    MOV         VAR1,#$09                   ; 3CB9CB/0D0109
    LOOP        #8                          ; 3CB9CE/0108
        ASMCALL     B3E_de51                       ; 3CB9D0/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
        .byte       $65                         ; 3CB9D3/65
        .byte       $00                         ; 3CB9D4/00
        .byte       $D0                         ; 3CB9D5/D0
        .byte       $00                         ; 3CB9D6/00
        .byte       $00                         ; 3CB9D7/00
        .byte       $00                         ; 3CB9D8/00
        ADD         VAR1,#1                     ; 3CB9D9/13010201
    ENDLOOP                                 ; 3CB9DD/02
    ASMCALL     $B92D                       ; 3CB9DE/D02DB9
L_3CB9E1:
    TASK        L_3CBA00                    ; 3CB9E1/0700BA
L_3CB9E4:
    WAIT        #64                         ; 3CB9E4/0640
L_3CB9E6:
    ONTICK      $3CBAB5                     ; 3CB9E6/08B5BA3C
    WAIT        #128                        ; 3CB9EA/0680
L_3CB9EC:
    LOOP        #4                          ; 3CB9EC/0104
        ASMCALL     $C996, WAIT #4              ; 3CB9EE/D496C9 // Palette fade (out?) step
L_3CB9F1:
    ENDLOOP                                 ; 3CB9F1/02
    ASMCALL     $A0F2                       ; 3CB9F2/D0F2A0
    SETXCAMERA  #$0000                      ; 3CB9F5/300000
    SETYCAMERA  #$0000                      ; 3CB9F8/310000
    MOV         $056A,#$05                  ; 3CB9FB/116A0505
    END                                     ; 3CB9FF/00

L_3CBA00:
    SPRITEMAP   L_3A9E9C                     ; 3CBA00/1A9C9E3A
    WAIT        #2                          ; 3CBA04/0602
L_3CBA06:
    SPRITEMAP   L_3A9EAC                     ; 3CBA06/1AAC9E3A
    WAIT        #2                          ; 3CBA0A/0602
L_3CBA0C:
    A_JMP       L_3CBA00                    ; 3CBA0C/1700BA

B3C_ba0f:
.byte $01,$04,$D1,$4C,$C9,$02,$0C

B3C_ba16:
    ldy #0
    ldx curr_object_slot
    lda OBJ_var7, x
    beq @exit
    iny
    @exit:
    tya
    rts

B3C_ba22:
    ldy #0
    lda OBJ_var2+2
    bmi @exit
    iny
    @exit:
    tya
    rts

B3C_ba2c:
    ldy curr_object_slot
    lda OBJ_var7, y
    asl a
    B3C_ba32:
    pha
    tax
    ldy #$0d
    lda B3C_ba5d, x
    tax
    lda #$00
    jsr $c9e7
    pla
    sta UNK_0
    dec UNK_0
    lda UNK_0
    bne B3C_ba32
    rts

    ldx curr_object_slot
    ldy OBJ_var2, x
    lda B3C_ba68, y
    ldx B3C_ba6d, y
    jsr B3E_c0da
    ldx curr_object_slot
    inc OBJ_var2, x
    rts

B3C_ba5d:
.byte $09,$0B,$09
.byte $0D,$0D,$11,$0F,$13,$13,$17,$15

B3C_ba68:
.lobytes B3C_ba96,B3C_ba8d,B3C_ba84,B3C_ba7b,B3C_ba72
B3C_ba6d:
.hibytes B3C_ba96,B3C_ba8d,B3C_ba84,B3C_ba7b,B3C_ba72

B3C_ba72:
.byte $00,$95,$21,$02,$02,$00,$00,$00,$00
B3C_ba7b:
.byte $00,$92,$21,$02,$02,$6A,$7A,$6B,$7B
B3C_ba84:
.byte $00,$8F,$21,$02,$02,$68,$78,$69,$79
B3C_ba8d:
.byte $00,$8C,$21,$02,$02,$66,$76,$67,$77
B3C_ba96:
.byte $00,$89,$21,$02,$02,$64,$74,$65,$75

B3C_ba9f:
    lda OBJ_var3+5
    bne B3C_baa5
    rts
B3C_baa5:
    ldx curr_object_slot
    ldx curr_object_slot
    lda #.BANK(L_3CB85B)
    sta script_bank
    lda #.LOBYTE(L_3CB85B)
    ldy #.HIBYTE(L_3CB85B)
    jmp OBJ_TryReplaceScriptPc

B3C_bab5:
    lda a:pad_press
    and #$10
    beq B3C_bacc
    ldx curr_object_slot
    ldx curr_object_slot
    lda #$3c
    sta script_bank
    lda #$ec
    ldy #$b9
    jmp OBJ_TryReplaceScriptPc
B3C_bacc:
    rts

L_3CBACD:
    ONMOVE      $D864                       ; 3CBACD/2364D8
    ONPOSITION  $D968                       ; 3CBAD0/2168D9
    SPRITEMAP   L_3A85DE                     ; 3CBAD3/1ADE853A
    ASMCALL     $BB73                       ; 3CBAD7/D073BB
    SETPOSE     #$FF                        ; 3CBADA/50FF
    SETXPOS     #$00C0                      ; 3CBADC/2AC000
    SETYPOS     #$0060                      ; 3CBADF/2B6000
    SETZPOS     #$0080                      ; 3CBAE2/3A8000
    WAIT        #1                          ; 3CBAE5/0601
L_3CBAE7:
    MOV         VAR3,#$00                   ; 3CBAE7/0D0300
    ASMCALL     $BBA9                       ; 3CBAEA/D0A9BB
    JEQ         L_3CBAF3                    ; 3CBAED/0AF3BA
    MOV         VAR3,#$01                   ; 3CBAF0/0D0301
L_3CBAF3:
    ASMCALL     $DE4B                       ; 3CBAF3/D04BDE // Play sound effect
    .byte       $23                         ; 3CBAF6/23
    ONTICK      $3CBC11                     ; 3CBAF7/0811BC3C
    ASMCALL     $BDCF                       ; 3CBAFB/D0CFBD
    MOV         REG,VAR3                    ; 3CBAFE/1E03
    JNE         L_3CBB0D                    ; 3CBB00/0B0DBB
    A_JMP       L_3CBB06                    ; 3CBB03/1706BB

L_3CBB06:
    SETPOSE     #$02, WAIT #7               ; 3CBB06/5702
L_3CBB08:
    DECPOSE     WAIT #7                     ; 3CBB08/87
L_3CBB09:
    DECPOSE     WAIT #7                     ; 3CBB09/87
L_3CBB0A:
    A_JMP       L_3CBB06                    ; 3CBB0A/1706BB

L_3CBB0D:
    SETPOSE     #$03                        ; 3CBB0D/5003
    HALT                                    ; 3CBB0F/09
L_3CBB10:
    END                                     ; 3CBB10/00

L_3CBB11:
    ONTICK      $3CBC61                     ; 3CBB11/0861BC3C
    HALT                                    ; 3CBB15/09

L_3CBB16:
    ASMCALL     $DE4B                       ; 3CBB16/D04BDE // Play sound effect
    .byte       $0E                         ; 3CBB19/0E
    ZEROVEL                                 ; 3CBB1A/38
    WAIT        #20                         ; 3CBB1B/0614
L_3CBB1D:
    END                                     ; 3CBB1D/00

;L_3CBB1E!!!
.byte $1E,$03,$0A,$28,$BB,$11,$B2
.byte $07,$01,$00,$16,$B1,$07,$02,$01
.byte $D2,$58,$BD,$38,$00,$00

L_3CBB33:
    ASMCALL     $BE61                       ; 3CBB33/D061BE
    SETYPOS     #$0039                      ; 3CBB36/2B3900
    SETZPOS     #$007F                      ; 3CBB39/3A7F00
    SPRITEMAP   L_3A855E                     ; 3CBB3C/1A5E853A
L_3CBB40:
    SETPOSE     #$FF, WAIT #1               ; 3CBB40/51FF
L_3CBB42:
    MOV         REG,$07B3                   ; 3CBB42/1CB307
    JEQ         L_3CBB40                    ; 3CBB45/0A40BB
    LOOP        #96                         ; 3CBB48/0160
        SETPOSE     #$02, WAIT #1               ; 3CBB4A/5102
L_3CBB4C:
        INCPOSE     WAIT #1                     ; 3CBB4C/71
L_3CBB4D:
    ENDLOOP                                 ; 3CBB4D/02
    END                                     ; 3CBB4E/00

L_3CBB4F:
    SPRITEMAP   L_3A9E9C                     ; 3CBB4F/1A9C9E3A
    SETXPOS     #$0080                      ; 3CBB53/2A8000
    SETYPOS     #$005E                      ; 3CBB56/2B5E00
    SETZPOS     #$0080                      ; 3CBB59/3A8000
    ASMCALL     $BE75                       ; 3CBB5C/D075BE
    ASMCALL     $BE90                       ; 3CBB5F/D090BE
    SETPOSE     VAR7                        ; 3CBB62/2407
L_3CBB64:
    SPRITEMAP   L_3A9E9C                     ; 3CBB64/1A9C9E3A
    WAIT        #2                          ; 3CBB68/0602
L_3CBB6A:
    SPRITEMAP   L_3A9EAC                     ; 3CBB6A/1AAC9E3A
    WAIT        #2                          ; 3CBB6E/0602
L_3CBB70:
    A_JMP       L_3CBB64                    ; 3CBB70/1764BB

B3C_bb73:
    ldx a:curr_object_slot
    lda OBJ_var3+3
    sta OBJ_var7, x
    asl a
    asl a
    asl a
    clc
    adc UNK_796+22
    tay
    lda B3C_bb91, y
    sta OBJ_var0, x
    lda UNK_796+22
    sta OBJ_var2, x
    rts

B3C_bb91:
.byte $21,$1D,$1C,$1A
.byte $15,$14,$14,$14,$31,$2A,$27,$22
.byte $1B,$17,$17,$17,$40,$38,$33,$2C
.byte $24,$20,$20,$20

B3C_bba9:
    ldy #$ff
B3C_bbab:
    iny
    lda UNK_796+26
    cmp UNK_7DB+3, y
    bne B3C_bbbf
    lda #$77
    sta a:random_number
    sta a:random_number+1
    jmp B3C_bbc3
B3C_bbbf:
    cpy #$02
    bcc B3C_bbab
B3C_bbc3:
    lda UNK_796+59
    asl a
    asl a
    asl a
    clc
    adc UNK_796+21
    tax
    lda B3C_bbe1, x
    jsr Rand
    tay
    lda B3C_bc01, y
    bne B3C_bbdd
    inc UNK_796+26
B3C_bbdd:
    rts

B3C_bbde:
.byte $0A,$14,$1C

B3C_bbe1:
.byte $06,$05,$04,$04
.byte $00,$00,$00,$00,$05,$03,$04,$03
.byte $04,$02,$02,$02,$03,$03,$03,$03
.byte $02,$02,$02,$02,$02,$02,$02,$02
.byte $02,$02,$02,$02

B3C_bc01:
.byte $01,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00

B3C_bc11:
    jsr $bc78
    ldx a:curr_object_slot
    dec OBJ_var0, x
    beq B3C_bc1d
    rts

B3C_bc1d:
    lda OBJ_var0+2
    beq B3C_bc3e
    lda OBJ_var3, x
    beq B3C_bc2d
    inc UNK_796+28
    jmp $bc36
B3C_bc2d:
    inc UNK_796+27
    jsr $bce2
    jsr $bd58
    inc OBJ_var7+2
    ldx curr_object_slot
    jmp OBJ_Destroy
B3C_bc3e:
    inc OBJ_var7+2
    jsr $beea
    lda UNK_796+28
    bne B3C_bc4e
    lda #$1c
    jsr PlaySoundEffect
B3C_bc4e:
    ldx a:curr_object_slot
    lda #$3c
    sta OBJ_tick_bank, x
    lda #$bc
    sta OBJ_tick_hi, x
    lda #$61
    sta OBJ_tick_lo, x
    rts

B3C_bc61:
    jsr $bc78
    jsr $bd2f
    bcs B3C_bc6a
    rts

B3C_bc6a:
    ldx curr_object_slot
    lda #.BANK(L_3CBB16)
    sta a:script_bank
    lda #.LOBYTE(L_3CBB16)
    ldy #.HIBYTE(L_3CBB16)
    jmp OBJ_TryReplaceScriptPc
    ldx a:curr_object_slot
    lda OBJ_var2, x
    asl a
    tay
    jsr B3C_bc84
    rts

B3C_bc84:
    lda B3C_bc99, y
    clc
    adc OBJ_vel_y_lo, x
    sta OBJ_vel_y_lo, x
    iny
    lda B3C_bc99, y
    adc OBJ_vel_y_hi, x
    sta OBJ_vel_y_hi, x
    rts

B3C_bc99:
.byte $20,$00,$2A,$00
.byte $30,$00,$40,$00,$60,$00,$70,$00
.byte $70,$00,$70,$00

B3C_bca9:
    ldx a:curr_object_slot
    lda OBJ_var7, x
    asl a
    asl a
    clc
    adc OBJ_var2, x
    tay
    lda OBJ_vel_y_lo, x
    clc
    adc B3C_bcca, y
    sta OBJ_vel_y_lo, x
    lda OBJ_vel_y_hi, x
    adc B3C_bcd6, y
    sta OBJ_vel_y_hi, x
    rts

B3C_bcca:
.byte $20,$30,$40
.byte $60,$20,$30,$40,$60,$20,$30,$40
.byte $60

B3C_bcd6:
.byte $00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00

B3C_bce2:
    lda UNK_796+59
    asl a
    asl a
    asl a
    clc
    adc UNK_796+21
    tax
    lda UNK_796+27
    cmp B3C_bcff, x
    bne @exit
    inc UNK_796+21
    lda B3C_bd17, x
    sta UNK_796+22
    @exit:
    rts

B3C_bcff:
.byte $0A,$14,$1E,$28,$00,$00
.byte $00,$00,$05,$0A,$0F,$14,$19,$1E
.byte $23,$28,$05,$0A,$0F,$14,$19,$1E
.byte $23,$28

B3C_bd17:
.byte $01,$02,$03,$04,$00,$00
.byte $00,$00,$03,$01,$04,$02,$03,$00
.byte $03,$04,$04,$03,$04,$05,$04,$03
.byte $04,$05

B3C_bd2f:
    ldx a:curr_object_slot
    lda OBJ_store_x_lo, x
    cmp #$38
    bpl B3C_bd4d
    ldx curr_object_slot
    lda #$ee
    sta OBJ_spritemap_lo, x
    lda #$85
    sta OBJ_spritemap_hi, x
    lda #$3a
    sta OBJ_spritemap_bank, x
    jmp $bd56
B3C_bd4d:
    lda a:OBJ_store_y_lo, x
    cmp #$9a
    bmi B3C_bd56
    sec
    rts
B3C_bd56:
    clc
    rts

B3C_bd58:
    lda UNK_796+27
    beq B3C_bdb0
    cmp #$1f
    bpl B3C_bdb0
    cmp UNK_796+33
    beq B3C_bdb0
    sta UNK_796+33
    lda UNK_796+31
    clc
    adc #$02
    tax
    lda UNK_796+32
    clc
    adc #$06
    tay
    jsr B3E_c08d
    sta UNK_2
    txa
    ora #$80
    sta UNK_3
    lda #$00
    sta UNK_0
    lda #$03
    sta UNK_1
    jsr $bdb1
    jsr AddToPPUQueue
    lda UNK_796+33
    lsr a
    bcs B3C_bd9e
    dec UNK_796+32
    dec UNK_796+32
    dec UNK_796+32
B3C_bd9e:
    lda UNK_796+32
    bpl B3C_bdb0
    dec UNK_796+31
    lda UNK_796+31
    bmi B3C_bdb0
    lda #$0c
    sta UNK_796+32
B3C_bdb0:
    rts

B3C_bdb1:
    lda UNK_796+33
    lsr a
    bcc B3C_bdc0
    lda #.LOBYTE(B3C_bdc9)
    sta ptr0
    lda #.HIBYTE(B3C_bdc9)
    sta ptr0+1
    rts

B3C_bdc0:
    lda #.LOBYTE(B3C_bdcc)
    sta ptr0
    lda #.HIBYTE(B3C_bdcc)
    sta ptr0+1
    rts

B3C_bdc9:
.byte $4D,$49,$4C
B3C_bdcc:
.byte $4A,$4B,$4C

B3C_bdcf:
    ldx a:curr_object_slot
    lda OBJ_var7, x
    asl a
    asl a
    asl a
    clc
    adc OBJ_var2, x
    asl a
    tay
    jsr B3C_bde2
    rts

B3C_bde2:
    ldx a:curr_object_slot
    lda B3C_be01, y
    sta OBJ_vel_x_lo, x
    iny
    lda B3C_be01, y
    sta OBJ_vel_x_hi, x
    dey
    lda B3C_be31, y
    sta OBJ_vel_y_lo, x
    iny
    lda B3C_be31, y
    sta OBJ_vel_y_hi, x
    rts

B3C_be01:
.byte $80,$FD,$30,$FD
.byte $00,$FD,$A0,$FC,$F0,$FB,$00,$FC
.byte $00,$FC,$00,$FC,$50,$FE,$10,$FE
.byte $E0,$FD,$80,$FD,$C0,$FC,$C0,$FC
.byte $C0,$FC,$C0,$FC,$B0,$FE,$78,$FE
.byte $60,$FE,$20,$FE,$A0,$FD,$A0,$FD
.byte $A0,$FD,$A0,$FD

B3C_be31:
.byte $80,$FF,$60,$FF
.byte $50,$FF,$00,$FF,$B0,$FE,$60,$FE
.byte $60,$FE,$60,$FE,$00,$FE,$E0,$FD
.byte $D0,$FD,$80,$FD,$30,$FD,$20,$FD
.byte $20,$FD,$20,$FD,$E0,$FC,$60,$FC
.byte $50,$FC,$D0,$FB,$00,$FB,$E0,$FA
.byte $E0,$FA,$E0,$FA

B3C_be61:
    ldx curr_object_slot
    ldy OBJ_var3+1
    lda B3C_be72, y
    sta a:OBJ_x_lo, x
    lda #0
    sta a:OBJ_x_hi, x
    rts

B3C_be72:
.byte $68,$80,$98
.byte $20,$BE,$C0,$7B,$BE,$60,$00,$4E
.byte $21,$04,$04,$58,$5A,$5A,$5C,$59
.byte $00,$00,$59,$59,$00,$00,$59,$5B
.byte $5A,$5A,$5D

B3C_be90:
    ldx #$00
B3C_be92:
    lda UNK_796+27
    cmp B3C_bed2, x
    bcc B3C_bea5
    inx
    cpx #$05
    bcc B3C_be92
    cmp #$1e
    bne B3C_bea5
    lda #$05
B3C_bea5:
    stx UNK_0
    lda UNK_796+58
    bne B3C_bec7
    lda B3C_bed8, x
    beq B3C_beb7
    sta minigame_bonus_lives
    jmp B3C_bec7
B3C_beb7:
    txa
    asl a
    tay
    lda B3C_bede, y
    sta minigame_bonus_score
    iny
    lda B3C_bede, y
    sta minigame_bonus_score+1
B3C_bec7:
    lda UNK_0
    ldy curr_object_slot
    sta OBJ_pose, y
    sta OBJ_var7, y
    rts

B3C_bed2:
.byte $07,$0D,$13,$19,$1E,$1F

B3C_bed8:
.byte 0,0,0,0,1,3

B3C_bede:
.word $32,$64,$12C,$1F4,0,0

B3C_beea:
    lda OBJ_vel_y_hi, x
    bmi B3C_bf2a
    jsr $bf2b
    lsr OBJ_vel_x_hi, x
    rol OBJ_vel_x_lo, x
    lda OBJ_vel_x_hi, x
    bne B3C_bf09
    lda OBJ_vel_x_lo, x
    cmp #$80
    bcs B3C_bf09
    adc #$80
    sta OBJ_vel_x_lo, x
B3C_bf09:
    jsr $bf2b
    lsr OBJ_vel_y_hi, x
    lsr OBJ_vel_y_lo, x
    lda OBJ_vel_y_hi, x
    eor #$ff
    sta OBJ_vel_y_hi, x
    lda OBJ_vel_y_lo, x
    eor #$ff
    sta OBJ_vel_y_lo, x
    inc OBJ_vel_y_lo, x
    bne B3C_bf2a
    inc OBJ_vel_y_hi, x
B3C_bf2a:
    rts

B3C_bf2b:
    lda #$00
    sec
    sbc OBJ_vel_x_lo, x
    sta OBJ_vel_x_lo, x
    lda #$00
    sbc OBJ_vel_x_hi, x
    sta OBJ_vel_x_hi, x
    rts

B3C_bf3d:
    inc OBJ_vel_y_hi, x
    rts

B3C_bf41:
    lda #$00
    sec
    sbc OBJ_vel_x_lo, x
    sta OBJ_vel_x_lo, x
    lda #$00
    sbc OBJ_vel_x_hi, x
    sta OBJ_vel_x_hi, x
    rts

.byte $F7,$FF
.byte $FD,$FF,$FF,$FF,$BF,$FF,$FF,$FF
.byte $FF,$F7,$FF,$FF,$F7,$FF,$FF,$FF
.byte $DF,$FF,$FD,$FF,$FD,$FF,$FF,$FF
.byte $7F,$FF,$FF,$FF,$04,$FF,$FF,$FF
.byte $DF,$FF,$DD,$FF,$FF,$FB,$FF,$FF
.byte $DF,$FF,$FF,$FF,$DD,$FF,$FF,$BF
.byte $DF,$FF,$DB,$FF,$DF,$FF,$FF,$FF
.byte $7F,$FF,$7F,$FF,$FF,$FF,$FF,$FF
.byte $7F,$FF,$FF,$FF,$7F,$EF,$FF,$FF
.byte $EF,$FE,$FF,$FF,$FD,$FF,$FD,$FF
.byte $DF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FD,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$F7,$FF,$FF,$FF,$5F,$FF
.byte $FF,$FF,$FF,$FF,$5F,$FF,$FF,$FF
.byte $DF,$FF,$FF,$FF,$9D,$FF,$FF,$FF
.byte $F7,$FF,$F7,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$F7,$FF
.byte $FF,$FF,$FD,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$DF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$7F,$FF,$FF,$FF,$FF,$FF
.byte $48,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $21,$FF,$FF
