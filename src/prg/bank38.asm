.segment "PRG38": absolute

B38_a000:
    lda current_room+1
    cmp #$ff
    bne B38_a008
    rts
B38_a008:
    lda current_room+1
    bne B38_a022
    lda current_room
    cmp #$2a
    bne B38_a017
    jmp $a864
B38_a017:
    cmp #$08
    bcs B38_a022
    lda #$d8
    sta chr_banks+1
    jsr $a61b
B38_a022:
    lda lower_prg
    pha
    lda #.BANK(UpdateBGMetatile)
    jsr BankSwapLower
    ldx UNK_539+26
    bne B38_a09f
    ldx UNK_539+25
    cpx #$ff
    beq B38_a09f
    lda #$00
    sta UNK_120+45
    jsr $aabf
    lda UNK_120+45
    bne B38_a065
    inx
    cpx #$64
    bcs B38_a076
    jsr $aabf
    lda UNK_120+45
    bne B38_a065
    inx
    cpx #$64
    bcs B38_a076
    jsr $aabf
    lda UNK_120+45
    bne B38_a065
    inx
    cpx #$64
    bcs B38_a076
    jsr $aabf
B38_a065:
    lda frame_counter
    and #$03
    bne B38_a071
    lda #$08
    jsr PlaySoundEffect
B38_a071:
    inx
    cpx #$64
    bcc B38_a09c
B38_a076:
    ldx #$07
B38_a078:
    lda $ed5d, x
    sta ptr0
    lda $ed6d, x
    sta ptr0+1
    lda B3F_ed55, x
    sta ptr1
    lda B3F_ed65, x
    sta ptr1+1
    ldy #$00
B38_a08e:
    lda (ptr0), y
    sta (ptr1), y
    iny
    cpy #$c0
    bcc B38_a08e
    dex
    bpl B38_a078
    ldx #$ff
B38_a09c:
    stx UNK_539+25
B38_a09f:
    lda #$00
    sta UNK_7
    ldx current_room
    lda $8f82, x
    sta ptr1
    lda $90cb, x
    sta ptr1+1
    lda $8f83, x
    sta ptr2
    lda $90cc, x
    sta ptr2+1
    lda current_room+1
    beq B38_a0d3
    lda $9082, x
    sta ptr1
    lda $91cb, x
    sta ptr1+1
    lda $9083, x
    sta ptr2
    lda $91cc, x
    sta ptr2+1
B38_a0d3:
    lda ptr1
    cmp ptr2
    bne B38_a0fb
    lda ptr1+1
    cmp ptr2+1
    bne B38_a0fb
    jsr $abaa
    jsr $a9f0
    jsr $aed0
    pla
    jmp BankSwapLower
B38_a0ec:
    inc UNK_7
    lda ptr1
    clc
    adc #$05
    sta ptr1
    bcc B38_a0d3
    inc ptr1+1
    bne B38_a0d3
B38_a0fb:
    ldy #$03
    lda (ptr1), y
    and #$70
    sta UNK_0
    ldy #$00
    lda (ptr1), y
    lsr a
    lsr a
    lsr a
    lsr a
    ora UNK_0
    cmp #$10
    beq B38_a115
    and #$0f
    beq B38_a0ec
B38_a115:
    sta UNK_0
    lda (ptr1), y
    and #$0f
    sta UNK_1
    iny
    lda (ptr1), y
    sta UNK_2
    ldx #$ff
    lda UNK_1
    sec
B38_a127:
    inx
    sbc map_header
    bcs B38_a127
    adc map_header
    sta temp_obj_screen_x+1
    lda UNK_2
    and #$f0
    sta temp_obj_screen_x
    lda #$c0
    jsr B3E_c698
    stx temp_obj_screen_y+1
    sta temp_obj_screen_y
    lda UNK_2
    asl a
    asl a
    asl a
    asl a
    clc
    adc temp_obj_screen_y
    sta temp_obj_screen_y
    bcc B38_a150
    inc temp_obj_screen_y+1
B38_a150:
    jsr $a342
    bne B38_a0ec
    lda temp_obj_screen_x
    sec
    sbc camera_x
    sta temp_obj_screen_x
    lda temp_obj_screen_x+1
    sbc camera_x+1
    sta temp_obj_screen_x+1
    beq B38_a16c
    cmp #$ff
    bne B38_a17b
    lda temp_obj_screen_x
    bpl B38_a17b
B38_a16c:
    lda temp_obj_screen_y
    sec
    sbc camera_y
    sta temp_obj_screen_y
    lda temp_obj_screen_y+1
    sbc camera_y+1
    sta temp_obj_screen_y+1
    beq B38_a17e
B38_a17b:
    jmp $a285
B38_a17e:
    lda UNK_0
    cmp #$10
    bne B38_a187
    jmp $a291
B38_a187:
    ldx UNK_6601+31
    ldy UNK_564+7
    cpy UNK_7
    beq B38_a193
    ldx #$00
B38_a193:
    ldy $a301, x
    sty UNK_9
    ldy $a305, x
    sty UNK_4
    ldy #$0c
    cmp #$08
    bcc B38_a220
    beq B38_a1f3
    ldy UNK_6601+10
    cmp #$09
    beq B38_a1f3
    cmp #$0d
    bcc B38_a1f8
    bne B38_a1d7
    jsr $a309
    ldy UNK_6601+9
    jsr $a288
    ldy #$01
    jsr $a2a3
    ldy #$02
    jsr $a2a3
    ldx current_level
    lda B3E_cabe, x
    cmp UNK_7DB+1
    bne B38_a1d4
    lda #$00
    sta UNK_4
B38_a1d4:
    jmp $a27e
B38_a1d7:
    ldy #$0b
    cmp #$0e
    beq B38_a1f3
    ldy #$0a
    ldx #$fe
    lda UNK_78D2+2
    bmi B38_a1eb
    ldy UNK_6601+5
    ldx #$fa
B38_a1eb:
    lda UNK_9
    cmp #$ff
    bne B38_a1f3
    stx UNK_9
B38_a1f3:
    sty UNK_0
    jmp $a274
B38_a1f8:
    lda UNK_0
    sec
    sbc #$0a
    tax
    lda UNK_78D2+2
    and B3E_cabe, x
    beq B38_a210
    lda #$00
    sta UNK_4
    ldy $a2fe, x
    jmp $a1f3
B38_a210:
    cpx #$01
    bne B38_a21b
    ldy #$00
    jsr $a2a3
    ldx #$01
B38_a21b:
    ldy UNK_6601+6, x
    bne B38_a1f3
B38_a220:
    lda UNK_6601+12
    sta UNK_8
    lda UNK_0
    tax
    clc
    adc #$15
    sta UNK_0
    dex
    lda UNK_78D2
    and B3E_cabe, x
    bne B38_a248
    lda #$ff
    sta UNK_8
    lda frame_counter
    and #$04
    beq B38_a248
    lda UNK_0
    clc
    adc #$11
    sta UNK_0
B38_a248:
    ldy #$fa
    lda UNK_78D2+1
    and B3E_cabe, x
    beq B38_a254
    ldy #$fe
B38_a254:
    lda UNK_9
    cmp #$ff
    bne B38_a265
    sty UNK_9
    cpy #$fe
    beq B38_a265
    lda UNK_6601+11
    sta UNK_4
B38_a265:
    jsr $a309
    ldy UNK_0
    bmi B38_a26f
    jsr $a288
B38_a26f:
    ldy UNK_8
    jmp $a279
B38_a274:
    jsr $a309
    ldy UNK_0
B38_a279:
    bmi B38_a27e
    jsr $a288
B38_a27e:
    ldy UNK_4
    bmi B38_a285
    jsr $a288
B38_a285:
    jmp $a0ec
B38_a288:
    lda $a370, y
    ldx $a3a5, y
    jmp B3E_dcec
B38_a291:
    lda frame_counter
    and #$0e
    tay
    lda $a79c, y
    ldx $a79d, y
    jsr B3E_dcec
    jmp $a0ec
B38_a2a3:
    lda UNK_6601+2, y
    bmi B38_a2fd
    lda UNK_1
    pha
    lda UNK_2
    pha
    lda temp_obj_screen_x
    pha
    lda temp_obj_screen_x+1
    pha
    lda temp_obj_screen_y
    pha
    lda temp_obj_screen_y+1
    pha
    ldx #$00
    lda UNK_6601+13, y
    bpl B38_a2c2
    dex
B38_a2c2:
    clc
    adc temp_obj_screen_x
    sta temp_obj_screen_x
    txa
    adc temp_obj_screen_x+1
    sta temp_obj_screen_x+1
    ldx #$00
    lda UNK_6601+22, y
    bpl B38_a2d4
    dex
B38_a2d4:
    clc
    adc temp_obj_screen_y
    sta temp_obj_screen_y
    txa
    adc temp_obj_screen_y+1
    sta temp_obj_screen_y+1
    lda UNK_6601+2, y
    tay
    lda $a370, y
    ldx $a3a5, y
    jsr B3E_dcec
    pla
    sta temp_obj_screen_y+1
    pla
    sta temp_obj_screen_y
    pla
    sta temp_obj_screen_x+1
    pla
    sta temp_obj_screen_x
    pla
    sta UNK_2
    pla
    sta UNK_1
B38_a2fd:
    rts
.byte $1D,$0D
.byte $24,$FF,$FB,$FC,$FD,$FF,$FF,$FF
.byte $34
B38_a309:
    lda UNK_0
    pha
    lda UNK_4
    pha
    jsr $a350
    cmp #$f8
    bcs B38_a31e
    pha
    lda UNK_9
    and #$f7
    sta UNK_9
    pla
B38_a31e:
    cmp UNK_9
    beq B38_a33b
    lda UNK_9
    sta (ptr0), y
    sta tmp0
    sty UNK_0
    lda temp_obj_screen_x+1
    bne B38_a33b
    lda temp_obj_screen_y+1
    bne B38_a33b
    lda temp_obj_screen_y
    cmp #$b0
    bcs B38_a33b
    jsr $8000
B38_a33b:
    pla
    sta UNK_4
    pla
    sta UNK_0
    rts
B38_a342:
    jsr $a350
    tax
    lda metatile_attribute, x
    cmp #$28
    beq B38_a34f
    cmp #$58
B38_a34f:
    rts
B38_a350:
    ldx UNK_1
    lda B3F_ed55, x
    sta ptr0
    lda B3F_ed65, x
    sta ptr0+1
    lda UNK_2
    asl a
    asl a
    asl a
    asl a
    sta UNK_3
    lda UNK_2
    lsr a
    lsr a
    lsr a
    lsr a
    ora UNK_3
    tay
    lda (ptr0), y
    rts
.byte $DA,$E7,$F4,$01,$0E,$1B,$34,$4D
.byte $66,$7F,$98,$A5,$B2,$BF,$C8,$D1
.byte $DA,$E3,$EC,$F1,$F6,$FB,$00,$09
.byte $12,$1B,$24,$2D
.byte $36
.byte $3F,$48,$51,$5E,$6B,$7C,$89,$92
.byte $9B,$A4,$AD,$B6,$BF,$C8
.byte $D1,$DA,$E3
.byte $EC,$F5,$FE,$07,$0C,$11,$16,$A3
.byte $A3,$A3,$A4,$A4,$A4,$A4,$A4,$A4
.byte $A4,$A4,$A4,$A4,$A4,$A4,$A4,$A4
.byte $A4,$A4,$A4,$A4,$A4,$A5,$A5,$A5
.byte $A5,$A5,$A5
.byte $A5
.byte $A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5
.byte $A5,$A5,$A5,$A5,$A5,$A5
.byte $A5,$A5,$A5
.byte $A5,$A5,$A5,$A6,$A6,$A6,$A6,$03
.byte $0C,$00,$AE,$03,$04,$00,$9E,$03
.byte $FC,$00,$8E,$03,$03,$0C,$EE,$CC
.byte $43,$04,$EE,$DC,$03,$FC,$EE,$CC
.byte $01,$03,$0C,$EE,$CC,$43,$04,$EE
.byte $DC,$01,$FC,$EE,$CC,$03,$03,$0C
.byte $EE,$CC,$41,$04,$EE,$DC,$03,$FC
.byte $EE,$CC,$03,$03,$0C,$EE,$CC,$43
.byte $04,$EE,$DC,$03,$FC,$EE,$CC,$03
.byte $06,$0C,$EE,$A6,$02,$0C,$DE,$A4
.byte $02,$04,$EE,$B2,$02,$04,$DE,$B0
.byte $02,$FC,$EE,$A2,$01,$FC,$DE,$A0
.byte $01,$06,$0C,$EE,$A6,$02,$0C,$DE
.byte $A4,$02,$FC,$EE,$A2,$02,$FC,$DE
.byte $A0,$02,$04,$EE,$B2,$01,$04,$DE
.byte $B0,$01,$06,$0C,$EE,$A6,$01,$0C
.byte $DE,$A4,$01,$04,$EE,$B2,$02,$04
.byte $DE,$B0,$02,$FC,$EE,$A2,$02,$FC
.byte $DE,$A0,$02,$06,$0C,$EE,$A6,$01
.byte $0C,$DE,$A4,$01,$04,$EE,$B2,$01
.byte $04,$DE,$B0,$01,$FC,$EE,$A2,$01
.byte $FC,$DE,$A0,$01,$06,$0C,$EE,$A6
.byte $02,$0C,$DE,$A4,$02,$04,$EE,$B2
.byte $02,$04,$DE,$B0,$02,$FC,$EE,$A2
.byte $02,$FC,$DE,$A0,$02,$03,$0E,$F0
.byte $F6,$03,$06,$F0,$E6,$03,$FE,$F0
.byte $D6,$03,$03,$FA,$F0,$C8,$03,$02
.byte $F0,$D8,$03,$0A,$F0,$E8,$03,$03
.byte $FC,$EE,$F4,$43,$0C,$EE,$F4,$03
.byte $04,$EE,$E4,$03,$02,$08,$EE,$EC
.byte $42,$00,$EE,$EC,$02,$02,$07,$EE
.byte $FA,$02,$FF,$EE,$EA,$02,$02,$01
.byte $EE,$FA,$42,$09,$EE,$EA,$42,$02
.byte $08,$EE,$B6,$03,$00,$EE,$B4,$03
.byte $02,$08,$EE,$B6,$01,$00,$EE,$B4
.byte $01,$01,$04,$EE,$F8,$01,$01,$04
.byte $EE,$F8,$41,$01,$04,$F2,$C0,$01
.byte $01,$04,$F2,$BE,$01,$02,$08,$EE
.byte $90,$02,$00,$EE,$80,$02,$02,$08
.byte $EE,$92,$02,$00,$EE,$82,$02,$02
.byte $08,$EE,$94,$02,$00,$EE,$84,$02
.byte $02,$00,$EE,$86,$02,$08,$EE,$96
.byte $02,$02,$08,$EE,$98,$02,$00,$EE
.byte $88,$02,$02,$08,$EE,$9A,$02,$00
.byte $EE,$8A,$02
.byte $02,$08,$EE,$9C,$02,$00,$EE,$8C
.byte $02
.byte $02,$08,$EE,$DE,$03,$00,$EE,$CE
.byte $03,$02,$08,$EC,$DA,$03,$00,$EC
.byte $CA,$03,$03,$08,$EC,$DA,$03,$00
.byte $EC,$CA,$03,$04,$EB,$E2,$01,$03
.byte $08,$EC,$DA,$03,$00,$EC,$CA,$03
.byte $08,$EB,$F2,$01,$04,$08,$EC,$DA
.byte $03,$00,$EC,$CA,$03,$12,$EA,$D2
.byte $02,$0B,$EB,$F2,$01,$03,$18,$EA
.byte $D2,$02,$08,$EC,$DA,$03,$00,$EC
.byte $CA,$03,$02,$0D,$F0,$D4,$02,$05
.byte $F0,$C4,$02,$02,$0D,$F0,$F0,$02
.byte $05,$F0,$E0,$02,$02,$FC,$F0,$F0
.byte $42,$04,$F0,$E0,$42,$02,$FB,$F0
.byte $D4,$42,$03,$F0,$C4,$42,$02,$08
.byte $EE,$90,$01,$00,$EE,$80,$01,$02
.byte $08,$EE,$92,$01,$00,$EE,$82,$01
.byte $02,$08,$EE,$94,$01,$00,$EE,$84
.byte $01,$02,$08,$EE,$96,$01,$00,$EE
.byte $86,$01
.byte $02,$08,$EE,$98,$01,$00,$EE,$88
.byte $01,$02,$08,$EE,$9A,$01,$00,$EE
.byte $8A,$01,$02,$08,$EE,$9C,$01,$00
.byte $EE,$8C,$01
.byte $02,$18,$00,$B8,$02,$10,$00,$A8
.byte $02,$02,$18,$00,$BA,$02,$10,$00
.byte $AA,$02,$02,$18,$00,$BC,$02,$10
.byte $00,$AC,$02,$01,$05,$F8,$C6,$03
.byte $01,$05,$F8,$C2,$03,$01,$05,$F8
.byte $C6,$02,$01,$FA,$00,$D0,$01
B38_a61b:
    ldx #$0a
B38_a61d:
    lda UNK_5A3+11, x
    beq B38_a656
    dec UNK_5A3+11, x
    bne B38_a656
    ldy UNK_5A3, x
B38_a62a:
    lda $a6ef, y
    cmp #$ff
    bne B38_a638
    lda $a69c, y
    tay
    jmp $a62a
B38_a638:
    sta UNK_5A3+11, x
    lda $a69c, y
    sta UNK_6601+2, x
    cpx #$03
    bcs B38_a651
    lda $a742, y
    sta UNK_6601+19, x
    lda $a75c, y
    sta UNK_6601+28, x
B38_a651:
    iny
    tya
    sta UNK_5A3, x
B38_a656:
    cpx #$03
    bcs B38_a698
    ldy #$00
    lda UNK_6601+19, x
    bpl B38_a662
    dey
B38_a662:
    sty UNK_0
    asl a
    rol UNK_0
    asl a
    rol UNK_0
    clc
    adc UNK_6601+16, x
    sta UNK_6601+16, x
    lda UNK_0
    adc UNK_6601+13, x
    sta UNK_6601+13, x
    ldy #$00
    lda UNK_6601+28, x
    bpl B38_a681
    dey
B38_a681:
    sty UNK_0
    asl a
    rol UNK_0
    asl a
    rol UNK_0
    clc
    adc UNK_6601+25, x
    sta UNK_6601+25, x
    lda UNK_0
    adc UNK_6601+22, x
    sta UNK_6601+22, x
B38_a698:
    dex
    bpl B38_a61d
    rts
.byte $FF,$13,$13,$13,$13,$13,$FF,$12
.byte $12,$12,$12,$12,$00,$15,$15,$15
.byte $14,$14,$FF,$FF,$14,$14,$15,$15
.byte $15,$0D,$09,$05,$06,$07,$09,$08
.byte $09,$1A,$1D,$1E,$1F,$20,$21,$1E
.byte $22,$1F,$20,$21,$1E,$22,$1F,$20
.byte $21,$1E,$22,$22,$0D,$0E,$0D,$0F
.byte $34,$24,$23,$24,$25,$26,$25,$39
.byte $10,$11,$40,$01,$02,$03,$04,$43
.byte $FF,$31,$FF,$32,$FF,$33,$48,$2E
.byte $2F,$30,$4F,$20,$03,$03,$14,$03
.byte $03,$20,$03,$03,$14,$03,$03,$FF
.byte $06,$06,$0A,$06,$06,$06,$06,$06
.byte $06,$0A,$06,$06,$FF,$F0,$03,$03
.byte $03,$20,$03,$01,$FF,$40,$08,$02
.byte $02,$02,$02,$04,$02,$02,$02,$02
.byte $04,$02,$02,$02,$02,$04,$FF,$20
.byte $20,$20,$20,$FF,$08,$0C,$08,$08
.byte $0C,$08,$FF,$04,$04,$FF,$02,$02
.byte $02,$80,$FF,$02,$02,$02,$02,$02
.byte $02,$FF,$08,$08,$08,$FF,$00,$40
.byte $20,$00,$E0,$C0,$00,$C0,$E0,$00
.byte $20,$40
.byte $FF
.byte $40,$20,$00,$00,$E0,$C0,$C0,$E0
.byte $00,$00,$20,$40
.byte $FF
.byte $00,$C0,$E0,$00,$20,$40,$00,$C0
.byte $E0,$00,$20,$40
.byte $FF
.byte $C0,$E0,$00,$00,$20,$40,$40,$20
.byte $00,$00,$E0,$C0
.byte $FF
B38_a776:
    ldx #$11
    lda #$00
B38_a77a:
    sta UNK_6601+13, x
    dex
    bpl B38_a77a
    ldx #$0a
B38_a782:
    lda $a791, x
    sta UNK_5A3, x
    lda #$01
    sta UNK_5A3+11, x
    dex
    bpl B38_a782
    rts
.byte $00,$0D,$13,$1A,$22,$34,$39,$40
.byte $43,$48,$4F,$AC,$A7,$C1,$A7,$D6
.byte $A7,$EF,$A7,$08,$A8,$1D,$A8,$32
.byte $A8,$4B,$A8,$05,$08,$EC,$7A,$41
.byte $00,$EC,$7A,$01,$FB,$F8,$72,$01
.byte $0E,$00,$72,$41,$FA,$08,$72,$01
.byte $05,$08,$EC,$7A,$41,$00,$EC,$7A
.byte $01,$FA,$FA,$72,$01,$0E,$02,$72
.byte $41,$FA,$0A,$72,$01,$06,$00,$EC
.byte $76,$01,$08,$EC,$78,$01,$0B,$F5
.byte $72,$41,$FA,$FC,$72,$01,$0E,$04
.byte $72,$41,$FA,$0C,$72,$01,$06,$00
.byte $EC,$76,$01,$08,$EC,$78,$01,$FA
.byte $0C,$72,$01,$0C,$F7,$72,$41,$FA
.byte $FE,$72,$01,$0E,$06,$72,$41,$05
.byte $00,$EC,$7A,$81,$08,$EC,$7A,$C1
.byte $0E,$08,$72,$41,$0C,$F8,$72,$41
.byte $FA,$00,$72,$01,$05,$08,$EC,$7A
.byte $C1,$00,$EC,$7A,$81,$0E,$0A,$72
.byte $41,$0E,$FA,$72,$41,$FA,$02,$72
.byte $01,$06,$08,$EC,$76,$C1,$00,$EC
.byte $78,$C1,$FD,$F5,$72,$01,$0E,$0C
.byte $72,$41,$0E,$FC,$72,$41,$FA,$04
.byte $72,$01,$06,$08,$EC,$76,$C1,$00
.byte $EC,$78,$C1,$0E,$0C,$72,$41,$FB
.byte $F7,$72,$01,$0E,$FE,$72,$41,$FA
.byte $06,$72,$01
B38_a864:
    ldx #$e0
    stx chr_banks+1
    lda #$01
    sta UNK_9
    ldy #$0c
B38_a86e:
    lda UNK_5FC+2
    cmp UNK_9
    beq B38_a8a1
    lda $a8f8, y
    sec
    sbc camera_y
    sta temp_obj_screen_y
    lda $a8f9, y
    sbc camera_y+1
    sta temp_obj_screen_y+1
    bne B38_a8a1
    lda temp_obj_screen_y
    cmp #$d0
    bcs B38_a8a1
    lda #$c8
    sta temp_obj_screen_x
    lda #$00
    sta temp_obj_screen_x+1
    tya
    pha
    lda $a906, y
    ldx $a907, y
    jsr B3E_dcec
    pla
    tay
B38_a8a1:
    inc UNK_9
    dey
    dey
    bpl B38_a86e
    lda OBJ_tick_lo+1
    cmp #$16
    bne B38_a8cf
    lda OBJ_tick_hi+1
    cmp #$ad
    bne B38_a8cf
    lda frame_counter
    and #$06
    beq B38_a8cf
    lda #$82
    sta temp_obj_screen_x
    lda #$00
    sta temp_obj_screen_y+1
    lda #$60
    sta temp_obj_screen_y
    lda #$a7
    ldx #$a9
    jsr B3E_dcec
B38_a8cf:
    lda #$b0
    sec
    sbc camera_y
    sta temp_obj_screen_y
    lda #$03
    sbc camera_y+1
    sta temp_obj_screen_y+1
    bne B38_a8f7
    lda temp_obj_screen_y
    cmp #$d0
    bcs B38_a8f7
    lda #$78
    sta temp_obj_screen_x
    lda frame_counter
    and #$0e
    tay
    lda $a79c, y
    ldx $a79d, y
    jmp B3E_da89
B38_a8f7:
    rts
.byte $70,$00,$E0,$00,$50,$01,$C0,$01
.byte $30,$02,$A0,$02,$10,$03,$14,$A9
.byte $29,$A9,$3E,$A9,$53,$A9,$68,$A9
.byte $7D,$A9,$92,$A9,$05,$FC,$F0,$C0
.byte $02,$FC,$00,$C2,$02,$04,$F8,$C4
.byte $02,$F4,$F8,$C6,$02,$FC,$F8,$AC
.byte $02,$05,$FC,$F0,$C0,$02,$FC,$00
.byte $C2,$02,$04,$F8,$C4,$02,$F4,$F8
.byte $C6,$02,$FC,$F8,$BC,$02,$05,$FC
.byte $F0,$C0,$02,$FC,$00,$C2,$02,$04
.byte $F8,$C4,$02,$F4,$F8,$C6,$02,$FC
.byte $F8,$C8,$02,$05,$FC,$F0,$C0,$02
.byte $FC,$00,$C2,$02,$04,$F8,$C4,$02
.byte $F4,$F8,$C6,$02,$FC,$F8,$CA,$02
.byte $05,$FC,$F0,$C0,$02,$FC,$00,$C2
.byte $02,$04,$F8,$C4,$02,$F4,$F8,$C6
.byte $02,$FC,$F8,$CC,$02,$05,$FC,$F0
.byte $C0,$02,$FC,$00,$C2,$02,$04,$F8
.byte $C4,$02,$F4,$F8,$C6,$02,$FC,$F8
.byte $CE,$02,$05,$FC,$F0,$C0,$02,$FC
.byte $00,$C2,$02,$04,$F8,$C4,$02,$F4
.byte $F8,$C6,$02,$FC,$F8,$D0,$02,$12
.byte $10,$E8,$E4,$C2,$08,$E8,$E8,$82
.byte $00,$E8,$E6,$C2,$F8,$E8,$E6,$82
.byte $F0,$E8,$E8,$C2,$E8,$E8,$E4,$82
.byte $10,$08,$E4,$42,$08,$08,$E8,$02
.byte $00,$08,$E6,$42,$F8,$08,$E6,$02
.byte $F0,$08,$E8,$42,$E8,$08,$E4,$02
.byte $10,$F8,$EA,$02,$E8,$F8,$E2,$82
.byte $08,$F8,$B6,$02,$00,$F8,$A6,$02
.byte $F8,$F8,$B4,$02,$F0,$F8,$A4,$02
B38_a9f0:
    ldy wind_type
    bpl B38_a9f6
    rts
B38_a9f6:
lda #$00
    sta temp_obj_screen_x+1
    sta temp_obj_screen_y+1
    sta UNK_8
    sta UNK_9
    lda $aaae, y
    bpl B38_aa07
    dec UNK_8
B38_aa07:
    lda $aaab, y
    bpl B38_aa0e
    dec UNK_9
B38_aa0e:
    ldx #$07
B38_aa10:
    lda wind_smoke_y, x
    cmp #$ff
    beq B38_aa4e
    clc
    adc $aaab, y
    sta wind_smoke_y, x
    sta temp_obj_screen_y
    lda #$00
    adc UNK_9
    bne B38_aa49
    lda wind_smoke_x, x
    clc
    adc $aaae, y
    sta wind_smoke_x, x
    sta temp_obj_screen_x
    lda #$00
    adc UNK_8
    bne B38_aa49
    txa
    pha
    lda #$ba
    ldx #$aa
    jsr B3E_da89
    pla
    tax
    ldy wind_type
    jmp $aa4e
B38_aa49:
    lda #$ff
    sta wind_smoke_y, x
B38_aa4e:
    dex
    bpl B38_aa10
    dec wind_smoke_timer
    bne B38_aa9e
    lda frame_counter
    and #$03
    adc #$01
    sta wind_smoke_timer
    ldx #$07
B38_aa62:
    lda wind_smoke_y, x
    cmp #$ff
    beq B38_aa6d
    dex
    bpl B38_aa62
    rts

B38_aa6d:
    cpy #$03
    bcs B38_aa84
    lda #$a0
B38_aa73:
    sta wind_smoke_y, x
    ldy frame_counter
    lda $fc00, y
    asl a
    asl a
    asl a
    asl a
    sta wind_smoke_x, x
    rts

B38_aa84:
    cpy #$06
    bcs B38_aa9f
    lda #$00
B38_aa8a:
    sta wind_smoke_x, x
    ldy frame_counter
    lda $fc00, y
    asl a
    asl a
    asl a
    asl a
    and #$7f
    adc #$10
    sta wind_smoke_y, x
B38_aa9e:
    rts

B38_aa9f:
    cpy #$09
    bcs B38_aaa7
    lda #$00
    beq B38_aa73
B38_aaa7:
    lda #$f8
    bne B38_aa8a

.byte $F0,$F0,$F0,$00
.byte $00,$00,$10,$10,$10,$00,$00,$00
.byte $F0,$F0,$F0,$01,$FC,$FB,$25,$01

B38_aabf:
    txa
    pha
    lda $abe1, x
    sta UNK_A
    lda $ac45, x
    pha
    sta UNK_B
    lda map_height
    ldx #$c0
    jsr B3E_c698
    sta UNK_8
    stx UNK_9
    jsr $aaf8
    lda #$00
    sec
    sbc UNK_B
    sta UNK_B
    jsr $aaf8
    lda #$00
    sec
    sbc UNK_A
    sta UNK_A
    jsr $aaf8
    pla
    sta UNK_B
    jsr $aaf8
    pla
    tax
    rts
B38_aaf8:
    ldx #$00
    lda UNK_A
    bpl B38_aaff
    dex
B38_aaff:
    asl a
    asl a
    asl a
    asl a
    clc
    adc UNK_539+27
    sta UNK_2
    txa
    adc UNK_539+28
    sta temp_x_hi
    ldx #$00
    lda UNK_B
    bpl B38_ab16
    dex
B38_ab16:
    asl a
    asl a
    asl a
    asl a
    clc
    adc UNK_539+29
    sta UNK_1
    txa
    adc UNK_539+30
    sta temp_y_hi
    lda temp_x_hi
    bmi B38_aba9
    cmp map_header
    bcs B38_aba9
    lda temp_y_hi
    bmi B38_aba9
    lda UNK_1
    sec
    sbc UNK_8
    lda temp_y_hi
    sbc UNK_9
    bcs B38_aba9
    ldx UNK_2
    ldy UNK_1
    jsr B3F_ef90
    lda ptr0
    clc
    adc #$00
    sta ptr1
    lda ptr0+1
    adc #$06
    sta ptr1+1
    ldy tmp0
    sty UNK_0
    lda (ptr1), y
    cmp (ptr0), y
    beq B38_aba9
    sta (ptr0), y
    sta tmp0
    inc UNK_120+45
    lda UNK_2
    sec
    sbc MAYBE_camera_seam_x
    sta temp_obj_screen_x
    lda temp_x_hi
    sbc MAYBE_camera_seam_x+1
    sta temp_obj_screen_x+1
    bne B38_aba9
    lda UNK_1
    sec
    sbc UNK_571
    sta temp_obj_screen_y
    sta UNK_1
    lda temp_y_hi
    sbc UNK_571+1
    sta temp_obj_screen_y+1
    bne B38_aba9
    lda UNK_1
    cmp #$c0
    bcs B38_aba9
    jsr $8000
    ldx #$18
B38_ab92:
    dex
    lda UNK_120+20, x
    cmp #$06
    bcc B38_ab92
    lda #$00
    sta UNK_120+20, x
    lda temp_obj_screen_x
    sta palette_faded+4, x
    lda temp_obj_screen_y
    sta palette_faded+28, x
B38_aba9:
    rts
B38_abaa:
    lda UNK_539+25
    bmi B38_abe0
    lda #$00
    sta temp_obj_screen_x+1
    sta temp_obj_screen_y+1
    ldx #$17
B38_abb7:
    ldy UNK_120+20, x
    cpy #$06
    bcs B38_abdd
    txa
    pha
    inc UNK_120+20, x
    lda palette_faded+4, x
    sta temp_obj_screen_x
    lda palette_faded+28, x
    sta temp_obj_screen_y
    tya
    lsr a
    bcs B38_abdb
    tay
    lda $aca9, y
    ldx $acac, y
    jsr B3E_dcec
B38_abdb:
    pla
    tax
B38_abdd:
    dex
    bpl B38_abb7
B38_abe0:
    rts
.byte $00,$01,$00,$01,$02,$00,$02,$01
.byte $02,$03,$00,$03,$01,$03,$02,$03
.byte $04,$00,$04,$01,$04,$02,$04,$03
.byte $04,$05,$00,$05,$01,$05,$02,$05
.byte $03,$05,$04,$05,$06,$00,$06,$01
.byte $06,$02,$06,$03,$06,$04,$06,$05
.byte $06,$07,$00,$07,$01,$07,$02,$07
.byte $03,$07,$04,$07,$05,$07,$06,$07
.byte $08,$00,$08,$01,$08,$02,$08,$03
.byte $08,$04,$08,$05,$08,$06,$08,$07
.byte $08,$09,$00,$09,$01,$09,$02,$09
.byte $03,$09,$04,$09,$05,$09,$06,$09
.byte $07,$09,$07,$09,$00,$00,$01,$01
.byte $00,$02,$01,$02,$02,$00,$03,$01
.byte $03,$02,$03,$03,$00,$04,$01,$04
.byte $02,$04,$03,$04,$04,$00,$05,$01
.byte $05,$02,$05,$03,$05,$04,$05,$05
.byte $00,$06,$01,$06,$02,$06,$03,$06
.byte $04,$06,$05,$06,$06,$00,$07,$01
.byte $07,$02,$07,$03,$07,$04,$07,$05
.byte $07,$06,$07,$07,$00,$08,$01,$08
.byte $02,$08,$03,$08,$04,$08,$05,$08
.byte $06,$08,$07,$08,$08,$00,$09,$01
.byte $09,$02,$09,$03,$09,$04,$09,$05
.byte $09,$06,$09,$07,$09,$08,$09,$09
.byte $AF,$B8,$C1,$AC,$AC,$AC,$02,$00
.byte $F7,$6A,$41,$F8,$F7,$6A,$01,$02
.byte $00,$F7,$7E,$C1,$F8,$F7,$7E,$01
.byte $02,$00,$F7,$7C,$C1,$F8,$F7,$7C
.byte $01
B38_acca:
    ldx current_room
    lda current_room+1
    bne B38_acd8
    ldy $8618, x
    jmp $acdb
B38_acd8:
    ldy $8718, x
B38_acdb:
    lda $9c5f, y
    sta UNK_56D
    lda $8a4f, y
    sta ptr0
    lda $8a1e, y
    sta ptr0+1
    lda #$ee
    sta ptr1
    lda #$67
    sta ptr1+1
    jsr B3F_f7f6
    lda #$ee
    sta ptr1
    lda #$67
    sta ptr1+1
    ldy #$00
    ldx #$00
B38_ad02:
    lda (ptr1), y
    sta metatile_top_left, x
    iny
    lda (ptr1), y
    sta metatile_top_right, x
    iny
    lda (ptr1), y
    sta metatile_bottom_left, x
    iny
    lda (ptr1), y
    sta metatile_bottom_right, x
    iny
    bne B38_ad1e
    inc ptr1+1
B38_ad1e:
    inx
    bne B38_ad02
B38_ad21:
    lda map_screen_4+102, x
    sta metatile_attribute, x
    inx
    bne B38_ad21
    ldy #$00
B38_ad2c:
    lda map_screen_4+38, y
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    sta metatile_palette, x
    inx
    lda map_screen_4+38, y
    lsr a
    lsr a
    lsr a
    lsr a
    and #$03
    sta metatile_palette, x
    inx
    lda map_screen_4+38, y
    lsr a
    lsr a
    and #$03
    sta metatile_palette, x
    inx
    lda map_screen_4+38, y
    and #$03
    sta metatile_palette, x
    iny
    inx
    bne B38_ad2c
    rts
B38_ad5e:
    lda #$01
    sta wind_smoke_timer
    ldx #$ff
    stx wind_type
    inx
    stx UNK_74C8+1025
    stx has_boss_door_OR_oob_tile_attribute
B38_ad6f:
    lda $9e92, x
    and $9e93, x
    cmp #$ff
    beq B38_ad93
    lda $9e92, x
    cmp current_room
    bne B38_ad8b
    lda $9e93, x
    and #$01
    cmp current_room+1
    beq B38_ad94
B38_ad8b:
    inx
    inx
    inx
    inx
    inx
    inx
    bne B38_ad6f
B38_ad93:
    rts
B38_ad94:
    lda #$00
    sta temp_x_hi
    sta temp_y_hi
    lda $9e93, x
    lsr a
    sta UNK_74C8+1024
    lda $9e94, x
    cmp #$ff
    beq B38_ae13
    cmp #$fe
    bne B38_adaf
    jmp $ae26
B38_adaf:
    asl a
    rol temp_x_hi
    asl a
    rol temp_x_hi
    asl a
    rol temp_x_hi
    asl a
    rol temp_x_hi
    sta UNK_74C8+1028
    lda temp_x_hi
    sta UNK_74C8+1029
    lda $9e95, x
    asl a
    rol temp_y_hi
    asl a
    rol temp_y_hi
    asl a
    rol temp_y_hi
    asl a
    rol temp_y_hi
    sta UNK_74C8+1030
    tay
    lda temp_y_hi
    sta UNK_74C8+1031
    lda $9e97, x
    pha
    lda $9e96, x
    pha
    ldx UNK_74C8+1028
    jsr B3F_ef90
    ldy tmp0
    lda (ptr0), y
    sta UNK_74C8+1026
    pla
    sta (ptr0), y
    ldx UNK_74C8+1028
    lda UNK_74C8+1030
    clc
    adc #$10
    tay
    jsr B3F_ef90
    ldy tmp0
    lda (ptr0), y
    sta UNK_74C8+1027
    pla
    sta (ptr0), y
    lda #$01
    sta UNK_74C8+1025
    sta has_boss_door_OR_oob_tile_attribute
    rts
B38_ae13:
    lda $9e95, x
    sta UNK_74C8+1025
    lda $9e96, x
    sta UNK_74C8+1026
    lda $9e97, x
    sta UNK_74C8+1027
    rts
.byte $BD,$95,$9E,$8D,$D0,$78,$4C,$8B
.byte $AD
B38_ae2f:
    lda UNK_74C8+1024
    beq B38_ae38
    dec UNK_74C8+1024
    rts
B38_ae38:
    ldx UNK_74C8+1025
    beq B38_ae4c
    dex
    beq B38_ae4d
    dex
    bne B38_ae47
    lda #$00
    beq B38_ae49
B38_ae47:
    lda #$ff
B38_ae49:
    sta UNK_74C8+1025
B38_ae4c:
    rts
B38_ae4d:
    lda UNK_59B+3
    beq B38_ae80
    lda #$ff
    sta UNK_59B+4
    lda #$56
    jsr PlaySoundEffect
    lda #$17
    jsr B3F_f859
    lda #$12
    sta OBJ_max_slot
    lda #$09
    sta OBJ_min_slot
    ldy #$00
    sty new_object_x_hi
    sty new_object_y_hi
    sty new_object_var0
    sty new_object_var1
    ldx #$7f
    lda #$05
    jsr OBJ_New
B38_ae80:
    ldy kirby_camera_051E
    lda UNK_74C8+1029
    sta new_object_x_hi
    lda UNK_74C8+1031
    sta new_object_y_hi
    lda UNK_74C8+1028
    clc
    adc #$08
    tax
    bcc B38_ae9b
    inc new_object_x_hi
B38_ae9b:
    lda UNK_74C8+1030
    clc
    adc #$10
    tay
    bcc B38_aea7
    inc new_object_y_hi
B38_aea7:
    jsr B3F_f07d
    lda UNK_74C8+1029
    sta temp_x_hi
    lda UNK_74C8+1031
    sta temp_y_hi
    ldx UNK_74C8+1028
    ldy UNK_74C8+1030
    lda UNK_74C8+1026
    jsr B3F_ef18
    ldx UNK_74C8+1028
    lda UNK_74C8+1030
    clc
    adc #$16
    tay
    lda UNK_74C8+1027
    jmp B3F_ef18
B38_aed0:
    lda UNK_74C8+1025
    bpl B38_aed8
    jmp $af43
B38_aed8:
    cmp #$02
    beq B38_aedd
    rts
B38_aedd:
    lda camera_x
    clc
    adc #$40
    tax
    lda camera_x+1
    adc #$00
    tay
    txa
    sec
    sbc UNK_74C8+1026
    tax
    tya
    sbc UNK_74C8+1027
    bcs B38_aef5
B38_aef4:
    rts
B38_aef5:
    bne B38_aef4
    cpx #$50
    bcs B38_aef4
    cpx #$40
    bcc B38_af31
    lda minimum_scroll_x
    sta UNK_74C8+1028
    lda minimum_scroll_x+1
    sta UNK_74C8+1029
    lda maximum_scroll_x
    sta UNK_74C8+1030
    lda maximum_scroll_x+1
    sta UNK_74C8+1031
    lda camera_x
    sta minimum_scroll_x
    sta maximum_scroll_x
    ldx camera_x+1
    stx minimum_scroll_x+1
    inx
    stx maximum_scroll_x+1
    jsr $afa6
    lda #$03
    sta UNK_74C8+1025
    rts
B38_af31:
    lda OBJ_store_x_lo+1
    clc
    adc #$02
    sta minimum_kirby_x
    lda OBJ_store_x_hi+1
    adc #$00
    sta minimum_kirby_x+1
    rts
B38_af43:
    lda minimum_scroll_x
    sec
    sbc #$06
    sta minimum_scroll_x
    lda minimum_scroll_x+1
    sbc #$00
    sta minimum_scroll_x+1
    lda minimum_scroll_x
    cmp UNK_74C8+1028
    lda minimum_scroll_x+1
    sbc UNK_74C8+1029
    bpl B38_af73
    lda UNK_74C8+1028
    sta minimum_scroll_x
    lda UNK_74C8+1029
    sta minimum_scroll_x+1
    lda #$00
    sta UNK_74C8+1025
B38_af73:
    lda maximum_scroll_x
    clc
    adc #$06
    sta maximum_scroll_x
    lda maximum_scroll_x+1
    adc #$00
    sta maximum_scroll_x+1
    lda maximum_scroll_x
    cmp UNK_74C8+1030
    lda maximum_scroll_x+1
    sbc UNK_74C8+1031
    bmi B38_afa1
    lda UNK_74C8+1030
    sta maximum_scroll_x
    lda UNK_74C8+1031
    sta maximum_scroll_x+1
    jmp $afa6
B38_afa1:
    lda #$ff
    sta UNK_74C8+1025
B38_afa6:
    lda minimum_scroll_x
    clc
    adc #$10
    sta minimum_kirby_x
    lda minimum_scroll_x+1
    adc #$00
    sta minimum_kirby_x+1
    lda maximum_scroll_x
    sec
    sbc #$11
    sta maximum_kirby_x
    lda maximum_scroll_x+1
    sbc #$00
    sta maximum_kirby_x+1
    rts


Script09_PauseScreen:
    ASMCALL     $DE4B                       ; 38AFC9/D04BDE // Play sound effect
    .byte       $2A                         ; 38AFCC/2A
    ASMCALL     $DFE5                       ; 38AFCD/D0E5DF // Freeze all objects
    LOOP        #4                          ; 38AFD0/0104
        ASMCALL     $C996, WAIT #3              ; 38AFD2/D396C9 // Palette fade (out?) step
L_38AFD5:
    ENDLOOP                                 ; 38AFD5/02
    MOV         $058F,#$00                  ; 38AFD6/118F0500
    ASMCALL     $B0C4                       ; 38AFDA/D0C4B0 // Hide all objects
    ASMCALL     $C082                       ; 38AFDD/D082C0 // Write 0x00 to $37 and wait a frame
    ASMCALL     $B13B                       ; 38AFE0/D03BB1 // Tricky graphics stuff
    JNE         L_38AFF4                    ; 38AFE3/0BF4AF
    ASMCALL     $C086                       ; 38AFE6/D086C0 // Write 0xFF to $37 and wait a frame
    LOOP        #4                          ; 38AFE9/0104
        ASMCALL     $C94C, WAIT #3              ; 38AFEB/D34CC9 // Palette fade dark in step
    ENDLOOP                                 ; 38AFEE/02
    ONTICK      $38B061                     ; 38AFEF/0861B038 // Jump to $38B01C when the player presses A, B or Start
    HALT                                    ; 38AFF3/09

L_38AFF4:
    ONDRAW      $DDAA                       ; 38AFF4/20AADD
    ONPOSITION  $D968                       ; 38AFF7/2168D9
    SPRITEMAP   $1A8000                     ; 38AFFA/1A00801A
    SETPOSE     #$00                        ; 38AFFE/5000
    SETXPOS     #$0050                      ; 38B000/2A5000
    SETYPOS     #$00BA                      ; 38B003/2BBA00
    MOV         VAR0,#$00                   ; 38B006/0D0000
    ASMCALL     $C086                       ; 38B009/D086C0 // Write 0xFF to $37 and wait a frame
    LOOP        #4                          ; 38B00C/0104
        ASMCALL     $C94C, WAIT #3              ; 38B00E/D34CC9 // Palette fade dark in step
L_38B011:
    ENDLOOP                                 ; 38B011/02
    ONTICK      $38B076                     ; 38B012/0876B038 // Jump to $38B017 when the player presses A, B or Start (two options: continue/exit stage, stored in VAR0)
    HALT                                    ; 38B016/09

SCR09_Confirm:
    MOV         REG,VAR0                    ; 38B017/1E00
    JNE         L_38B045                    ; 38B019/0B45B0
SCR09_Unpause:
    ASMCALL     $DE4B                       ; 38B01C/D04BDE // Play sound effect
    .byte       $2D                         ; 38B01F/2D
    LOOP        #4                          ; 38B020/0104
        ASMCALL     $C996, WAIT #3              ; 38B022/D396C9 // Palette fade (out?) step
    ENDLOOP                                 ; 38B025/02
    SETPOSE     #$FF                        ; 38B026/50FF
    ASMCALL     $C082                       ; 38B028/D082C0 // Write 0x00 to $37 and wait a frame
    ASMCALL     $B113                       ; 38B02B/D013B1 // Restore palette and CHR banks after unpausing?
    ASMCALL     $E625                       ; 38B02E/D025E6
    ASMCALL     $C086, WAIT #1              ; 38B031/D186C0 // Write 0xFF to $37 and wait a frame
    ASMCALL     $B0DA                       ; 38B034/D0DAB0 // Unhide all objects
    MOV         $058F,#$01                  ; 38B037/118F0501
    LOOP        #4                          ; 38B03B/0104
        ASMCALL     $C94C, WAIT #3              ; 38B03D/D34CC9 // Palette fade dark in step
    ENDLOOP                                 ; 38B040/02
    ASMCALL     $DFFB                       ; 38B041/D0FBDF // Unfreeze all objects
    END                                     ; 38B044/00

L_38B045:
    ASMCALL     $DE4B                       ; 38B045/D04BDE // Play sound effect
    .byte       $07                         ; 38B048/07
    LOOP        #4                          ; 38B049/0104
        ASMCALL     $C996, WAIT #3              ; 38B04B/D396C9 // Palette fade (out?) step
L_38B04E:
    ENDLOOP                                 ; 38B04E/02
    ASMCALL     $B113                       ; 38B04F/D013B1 // Restore palette and CHR banks after unpausing?
    MOVW        $055E,#$FFFF                ; 38B052/275E05FFFF
    MOVW        $0562,#$FFFF                ; 38B057/276205FFFF
    MOV         $056A,#$06                  ; 38B05C/116A0506
    END                                     ; 38B060/00

; CODE OR DATA -- $38B061 .. $3BA000
incbinRange "../split/prg/bank38.bin", $1061, $2000