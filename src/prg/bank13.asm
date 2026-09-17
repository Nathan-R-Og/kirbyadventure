.segment "PRG13": absolute

;kirby init?
;room start?
B13_a000:
    lda #$12
    jsr BankSwapLower

    ldx #$11
    @B13_a007:
    lda OBJ_script, x
    cmp #$02
    bne @B13_a015
    lda OBJ_var3, x
    cmp #$19
    beq @B13_a018
    @B13_a015:
    jsr OBJ_Destroy
    @B13_a018:
    dex
    bpl @B13_a007

    ldx #$07
    lda #$00
    sta kirby_056C
B13_a022:
    sta UNK_120+56, x
    dex
    bpl B13_a022
    sta new_object_var0
    sta new_object_var1
    sta new_object_var2
    sta new_object_var3
    sta UNK_51B
    sta ram6600
    sta UNK_59B+3
    sta UNK_59B+4
    lda #$fc
    sta UNK_57E+17
    lda #$18
    sta a:ram_PPUMASK
    lda current_room+1
    cmp #$00
    bne B13_a06f
    lda current_room
    cmp #$0c
    bne B13_a06f
    lda #$0d
    sta current_room
    lda #$00
    sta current_room+1
    lda #$00
    sta UNK_560
    lda #$78
    sta UNK_560+1
    jmp $a319
B13_a06f:
    lda current_room+1
    cmp #$ff
    bne B13_a0bf
    lda room_0562+1
    cmp #$ff
    bne B13_a0a4
    lda room_055A
    sta current_room
    sta room_0562
    lda room_055A+1
    sta current_room+1
    sta room_0562+1
    lda UNK_55C
    sta UNK_564
    sta UNK_560
    lda UNK_55C+1
    sta UNK_564+1
    sta UNK_560+1
    jmp $a319
B13_a0a4:
    lda room_0562
    sta current_room
    lda room_0562+1
    sta current_room+1
    lda UNK_564
    sta UNK_560
    lda UNK_564+1
    sta UNK_560+1
    jmp $a319
B13_a0bf:
    ldy current_room
    lda current_room+1
    bne B13_a0d0
    ldx $8f82, y
    lda $90cb, y
    jmp $a0d6
B13_a0d0:
    ldx $9082, y
    lda $91cb, y
B13_a0d6:
    stx ptr0
    sta ptr0+1
    lda UNK_564+7
    ldx #$05
    jsr B3E_c698
    tay
    ldx #$00
B13_a0e5:
    lda (ptr0), y
    sta UNK_1, x
    iny
    inx
    cpx #$05
    bcc B13_a0e5
    lda UNK_4
    ldy UNK_1
    jsr B3F_f071
    and #$7f
    sta UNK_0
    lda UNK_1
    and #$0f
    sta UNK_1
    lda UNK_4
    and #$0f
    sta UNK_6
    lda UNK_4
    asl a
    rol a
    and #$01
    sta UNK_4
    lda UNK_0
    sta kirby_056C
    bne B13_a162
B13_a115:
    ldx UNK_3
    lda $84d1, x
    ldy UNK_4
    beq B13_a121
    lda $85d1, x
B13_a121:
    sta UNK_7
    bit UNK_7
    bpl B13_a13d
    lda current_room
    sta room_0562
    lda current_room+1
    sta room_0562+1
    lda UNK_1
    sta UNK_564
    lda UNK_2
    sta UNK_564+1
B13_a13d:
    stx current_room
    sty current_room+1
    lda UNK_6
    sta UNK_560
    lda UNK_5
    sta UNK_560+1
    bit UNK_7
    bmi B13_a15f
    stx room_0562
    sty room_0562+1
    sta UNK_564+1
    lda UNK_6
    sta UNK_564
B13_a15f:
    jmp $a319
B13_a162:
    and #$0f
    beq B13_a169
    jmp $a1fe
B13_a169:
    lda UNK_0
    and #$f0
    cmp #$70
    bne B13_a198
    lda UNK_564+2
    sta current_room
    sta room_0562
    lda UNK_564+3
    sta current_room+1
    sta room_0562+1
    lda UNK_564+4
    sta UNK_560
    sta UNK_564
    lda UNK_564+5
    sta UNK_560+1
    sta UNK_564+1
    jmp $a319
B13_a198:
    cmp #$10
    bne B13_a1a3
    lda #$00
    sta UNK_51F+1
    beq B13_a1c9
B13_a1a3:
    cmp #$20
    bne B13_a1ae
    lda #$01
    sta UNK_51F+1
    bne B13_a1c9
B13_a1ae:
    lda room_0562
    sta current_room
    lda room_0562+1
    sta current_room+1
    lda UNK_564
    sta UNK_560
    lda UNK_564+1
    sta UNK_560+1
    jmp $a319
B13_a1c9:
    lda UNK_3
    sta room_0562
    lda UNK_4
    sta room_0562+1
    lda UNK_6
    sta UNK_564
    lda UNK_5
    sta UNK_564+1
    lda #$05
    jsr B3F_f859
    lda #$2a
    sta current_room
    lda #$00
    sta current_room+1
    lda #$04
    sta UNK_560
    lda #$8b
    sta UNK_560+1
    lda #$01
    sta UNK_51B
    jmp $a319
B13_a1fe:
    cmp #$08
    bcs B13_a226
    sta current_stage
    dec current_stage
    lda #$46
    sta mul_10_lut
    lda current_room
    sta room_055A
    lda current_room+1
    sta room_055A+1
    lda UNK_1
    sta UNK_55C
    lda UNK_2
    sta UNK_55C+1
    jmp $a115
B13_a226:
    ldx #$07
    stx current_stage
    cmp #$09
    bcs B13_a232
    jmp $a115
B13_a232:
    cmp #$0a
    bcs B13_a246
    lda #$78
    sta UNK_59B+3
    sta UNK_59B+4
    jsr $a115
    lda #$56
    jmp PlaySoundEffect
B13_a246:
    cmp #$0d
    bcs B13_a28e
    sec
    sbc #$0a
    sta UNK_51F+1
    lda UNK_0
    lsr a
    lsr a
    lsr a
    lsr a
    ldx a:extra_game_flag
    beq B13_a25d
    lda #$03
B13_a25d:
    sta UNK_796+59
    dec UNK_796+59
    jsr $a928
    lda #$00
    sta kirby_camera_051E
    sta scroll_type
    sta UNK_564+6
    sta UNK_796+58
    lda #$02
    sta UNK_51B
    ldx #$01
    stx OBJ_min_slot
    inx
    stx OBJ_max_slot
    ldy UNK_51F+1
    lda $a28b, y
    jmp OBJ_New
.byte $65,$66
.byte $67
B13_a28e:
    cmp #$0e
    bcs B13_a295
    jmp $a115
B13_a295:
    cmp #$0e
    beq B13_a2a3
    ldy current_level
    lda level_boss_status, y
    and #$80
    beq B13_a2b0
B13_a2a3:
    lda current_level
    cmp #$06
    bne B13_a2ad
    inc current_level
B13_a2ad:
    jmp $a115
B13_a2b0:
    lda current_room
    sta room_055A
    sta room_0562
    lda current_room+1
    sta room_055A+1
    sta room_0562+1
    lda UNK_1
    sta UNK_55C
    sta UNK_564
    lda UNK_2
    sta UNK_55C+1
    sta UNK_564+1
    lda current_level
    asl a
    clc
    adc current_level
    tay
    lda $9c4a, y
    sta current_room
    lda $9c4b, y
    asl a
    rol a
    and #$01
    sta current_room+1
    lda $9c4b, y
    and #$7f
    sta UNK_560
    lda $9c4c, y
    sta UNK_560+1
    jsr $a928
    lda #$07
    sta UNK_51F+1
    lda #$03
    sta UNK_51B
    lda current_room
    cmp #$0c
    bne B13_a319
    lda current_room+1
    cmp #$00
    bne B13_a319
    lda #$05
    sta UNK_560
B13_a319:
    jsr LongCall
.byte $8B,$A9,$2E
    lda #$00
    sta UNK_564+6
    ldx #$02
B13_a326:
    lda current_room
    cmp $a37a, x
    bne B13_a336
    lda current_room+1
    cmp $a37d, x
    beq B13_a339
B13_a336:
    dex
    bpl B13_a326
B13_a339:
    inx
    lda $a380, x
    sta scroll_type
    lda current_room+1
    bne B13_a35a
    lda current_room
    cmp #$07
    bcs B13_a35a
    cmp current_level
    sta current_level
    beq B13_a35a
    jsr B3F_ea87
    lda current_level
B13_a35a:
    ldx #$05
B13_a35c:
    lda current_room+1
    cmp $a386, x
    bne B13_a36c
    lda current_room
    cmp $a382, x
    beq B13_a371
B13_a36c:
    dex
    cpx #$02
    bcs B13_a35c
B13_a371:
    stx kirby_camera_051E
    jsr B3E_c42f
    jmp B3F_e640
.byte $0F,$11,$10
.byte $00
.byte $00
.byte $00
.byte $01
.byte $02,$03,$05
.byte $CD,$D4,$DF,$E6,$00,$00,$00,$00
B13_a38c:
    ldy kirby_camera_051E
    cpy #$02
    bcc B13_a3b3
    dec map_height
    ldx $a3a5, y
    lda $a3a9, y
    sta map_screen_0, x
    lda $a3ad, y
    sta map_screen_0+16, x

.byte $D0,$0C,$5A,$5A,$3D,$7D,$22,$42
.byte $22,$22,$4A,$22,$42,$42

B13_a3b3:
    lda current_room+1
    cmp #$00
    bne B13_a3f9
    lda current_room
    cmp #$0c
    bne B13_a3f9
    lda #$05
    sta map_header
    ldx #$09
B13_a3c8:
    lda $a3ef, x
    sta map_bg_delay, x
    dex
    bpl B13_a3c8
    ldx #$00
B13_a3d3:
    lda map_screen_2, x
    sta map_screen_3, x
    lda map_screen_1, x
    sta map_screen_2, x
    sta map_screen_4, x
    sta map_screen_5, x
    sta map_screen_6, x
    inx
    cpx #$c0
    bcc B13_a3d3
    bcs B13_a3f9
    brk
.byte $01,$02,$01,$02,$03,$04,$05,$04
.byte $05
B13_a3f9:
    lda #$00
    tay
B13_a3fc:
    sta map_width_multiply_lut, y
    clc
    adc map_header
    iny
    bpl B13_a3fc
    ldx map_height
    lda map_header
    jsr B3E_c698
    sta UNK_676E+127
    lda #$01
    sta ram6600
    ldx #$ff
    stx UNK_539+25
    jsr LongCall
.byte $5E,$AD,$38
    ldx current_room+1
    bne B13_a431
    ldx current_room
    cpx #$07
    bcs B13_a431
    jsr $abd2
B13_a431:
    lda UNK_560
    iny
    ldx #$00
B13_a437:
    cmp map_header
    bcc B13_a442
    sbc map_header
    inx
    bne B13_a437
B13_a442:
    sta new_object_x_hi
    lda #$c0
    jsr B3E_c698
    sta tmp1
    stx new_object_y_hi
    lda UNK_560+1
    and #$f0
    ora #$08
    sta tmp0+1
    sec
    sbc #$78
    sta camera_x
    lda new_object_x_hi
    sbc #$00
    bcs B13_a468
    lda #$00
    sta camera_x
B13_a468:
    sta camera_x+1
    lda UNK_560+1
    asl a
    asl a
    asl a
    asl a
    ora #$09
    clc
    adc tmp1
    sta tmp1
    bcc B13_a47d
    inc new_object_y_hi
B13_a47d:
    sec
    sbc #$70
    sta camera_y
    lda new_object_y_hi
    sbc #$00
    bcs B13_a48d
    lda #$00
    sta camera_y
B13_a48d:
    sta camera_y+1
    ldx #$01
    stx OBJ_min_slot
    inx
    stx OBJ_max_slot
    lda #$01
    ldx tmp0+1
    ldy tmp1
    jsr OBJ_New
    lda current_room+1
    cmp #$00
    bne B13_a4c3
    lda current_room
    cmp #$0d
    bne B13_a4c3
    ldx #$09
    stx OBJ_min_slot
    ldx #$12
    stx OBJ_max_slot
    lda #$02
    sta new_object_var0
    lda #$06
    jsr OBJ_New
B13_a4c3:
    lda map_height
    ldx #$c0
    jsr B3E_c698
    clc
    adc #$48
    sta maximum_scroll_y
    txa
    adc #$00
    sta maximum_scroll_y+1
    lda #$00
    sta minimum_scroll_x
    sta minimum_scroll_x+1
    sta minimum_scroll_y+1
    sta maximum_scroll_x
    lda #$08
    sta minimum_scroll_y
    lda map_header
    sta maximum_scroll_x+1
    lda current_room
    cmp #$0e
    bne B13_a50e
    lda current_room+1
    cmp #$00
    bne B13_a50e
    ldy #$00
    sty camera_x
    iny
    sty minimum_scroll_x+1
    sty camera_x+1
    iny
    sty maximum_scroll_x+1
    bne B13_a56a
B13_a50e:
    ldy camera_x+1
    lda camera_x
    cpy minimum_scroll_x+1
    beq B13_a519
    bcs B13_a524
B13_a519:
    cmp minimum_scroll_x
    bcs B13_a524
    lda minimum_scroll_x
    ldy minimum_scroll_x+1
B13_a524:
    iny
    cpy maximum_scroll_x+1
    bcc B13_a537
    bne B13_a531
    cmp maximum_scroll_x
    bcc B13_a537
B13_a531:
    lda maximum_scroll_x
    ldy maximum_scroll_x+1
B13_a537:
    dey
    sty camera_x+1
    sta camera_x
    ldy camera_y+1
    lda camera_y
    cpy minimum_scroll_y+1
    beq B13_a547
    bcs B13_a552
B13_a547:
    cmp minimum_scroll_y
    bcs B13_a552
    lda minimum_scroll_y
    ldy minimum_scroll_y+1
B13_a552:
    iny
    cpy maximum_scroll_y+1
    bcc B13_a565
    bne B13_a55f
    cmp maximum_scroll_y
    bcc B13_a565
B13_a55f:
    lda maximum_scroll_y
    ldy maximum_scroll_y+1
B13_a565:
    dey
    sty camera_y+1
    sta camera_y
B13_a56a:
    jsr $a904
    jsr $a916
    lda minimum_scroll_y
    clc
    adc #$1c
    sta minimum_kirby_y
    lda minimum_scroll_y+1
    adc #$00
    sta minimum_kirby_y+1
    ldy kirby_camera_051E
    cpy #$02
    bcc B13_a5be
    lda $a5b0, y
    sta minimum_scroll_x
    sta UNK_51F
    lda #$00
    sta minimum_scroll_x+1
    jsr $a904
.byte $85,$DE,$AD,$C8,$05,$85,$DD,$B9
.byte $B4,$A5,$8D,$C2,$05,$B9,$B8,$A5
.byte $8D,$C3,$05,$20,$16,$A9,$4C,$BE
.byte $A5,$20,$00,$08,$34,$24,$92,$09
.byte $19,$04,$03,$04,$03
B13_a5be:
    lda camera_y
    pha
    and #$f0
    sta camera_y
    lda camera_y+1
    pha
    lda #$00
    sta UNK_578
    jsr $a7d0
    lda #$18
    sta UNK_F
B13_a5d4:
    jsr $8170
    dec UNK_F
    beq B13_a5f7
    lda tmp1
    clc
    adc #$08
    cmp #$c0
    bcs B13_a5e8
    sta tmp1
    bcc B13_a5d4
B13_a5e8:
    sbc #$c0
    sta tmp1
    lda tmp0
    clc
    adc map_header
    sta tmp0
    jmp $a5d4
B13_a5f7:
    pla
    sta camera_y+1
    pla
    sta camera_y
    jsr $adcb
    lda map_bg_palette
    sta chr_banks+1
    lda #$30
    sta color_palette+21
    lda #$37
    sta color_palette+22
    lda #$17
    sta color_palette+23
    lda map_spr_bank
    ldx #$06
    jsr B3E_c698
    clc
    adc #$55
    sta ptr0
    txa
    adc #$8e
    sta ptr0+1
    ldy #$00
B13_a628:
    lda (ptr0), y
    sta color_palette+25, y
    iny
    cpy #$03
    bcc B13_a628
B13_a632:
    lda (ptr0), y
    sta color_palette+26, y
    iny
    cpy #$06
    bcc B13_a632
    ldy #$08
    lda #$ff
B13_a640:
    sta UNK_57E+1, y
    dey
    bpl B13_a640
    ldy current_room
    lda current_room+1
    bne B13_a65d
    lda $8a80, y
    sta upper_prg_057D
    lda $8d0e, y
    ldx $8bc7, y
    jmp $a669
B13_a65d:
    lda $8b80, y
    sta upper_prg_057D
    lda $8e0e, y
    ldx $8cc7, y
B13_a669:
    sta ptr0
    clc
    adc #$02
    sta UNK_ED
    stx ptr0+1
    txa
    adc #$00
    sta UNK_ED+1
    lda camera_x+1
    sta temp_x_hi
    lda camera_y+1
    sta temp_y_hi
    lda camera_x
    sta tmp0+1
    sta last_camera_x_057B
    lda camera_y
    sta tmp1
    sta last_camera_y_057C
    jmp B3F_e684
B13_a690:
    lda #$05
    jsr BankSwapLower
    ldy map_chr_index
    lda current_room+1
    bne B13_a6a4
    lda current_room
    cmp #$07
    bcc B13_a6a8
B13_a6a4:
    lda #$00
    sta chr_banks+2
B13_a6a8:
    lda $9418, y
    sta chr_banks+3
    lda $9518, y
    sta chr_banks+4
    lda $9618, y
    sta chr_banks+5
    sta UNK_57E+16
    ldy map_bg_bank
B13_a6bd:
    lda #$00
    jsr BankSwapLower
B13_a6c2:
    lda $8000, y
    sta color_palette
    sta color_palette+4
    sta color_palette+8
    sta color_palette+12
    sta color_palette+16
    sta color_palette+20
    sta color_palette+24
    sta color_palette+28
    lda $8100, y
    sta color_palette+1
    lda $8200, y
    sta color_palette+2
    lda $8300, y
    sta color_palette+3
    lda $8400, y
    sta color_palette+5
    lda $8500, y
    sta color_palette+6
    lda $8600, y
    sta color_palette+7
    lda $8700, y
    sta color_palette+9
    lda $8800, y
    sta color_palette+10
    lda $8900, y
    sta color_palette+11
    lda current_room
    cmp #$11
    bne B13_a721
    lda current_room+1
    cmp #$00
    beq B13_a756
B13_a721:
    ldy #$08
B13_a723:
    lda current_room
    cmp $a766, y
    bne B13_a733
    lda current_room+1
    cmp $a76f, y
    beq B13_a746
B13_a733:
    dey
    bpl B13_a723
    lda #$37
    sta color_palette+13
    lda #$27
    sta color_palette+14
    lda #$07
    sta color_palette+15
    rts
B13_a746:
    lda #$20
    sta color_palette+13
    lda #$10
    sta color_palette+14
    lda #$00
    sta color_palette+15
    rts
B13_a756:
    lda #$0f
    sta color_palette+13
    lda #$00
    sta color_palette+14
    lda #$20
    sta color_palette+15
    rts

.byte $9A,$9B,$9C,$9D,$9E,$9F,$A0,$A1
.byte $A2
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00
B13_a778:
    lda camera_y
    pha
    and #$f0
    sta camera_y
    lda camera_y+1
    pha
    lda camera_x
    pha
    lda camera_x+1
    pha
    ldx #$03
B13_a78a:
    lda current_room+1
    cmp $a388, x
    bne B13_a79a
    lda current_room
    cmp $a384, x
    beq B13_a79f
B13_a79a:
    dex
    bpl B13_a78a
    bmi B13_a7a7
B13_a79f:
    lda temp_camera_x
    sta camera_x
    lda temp_camera_x+1
    sta camera_x+1
B13_a7a7:
    jsr $a7d0
    lda #$20
    sta UNK_F
B13_a7ae:
    jsr $82e6
    dec UNK_F
    beq B13_a7c3
    lda tmp0+1
    clc
    adc #$08
    sta tmp0+1
    bcc B13_a7ae
    inc tmp0
    jmp $a7ae
B13_a7c3:
    pla
    sta camera_x+1
    pla
    sta camera_x
    pla
    sta camera_y+1
    pla
    sta camera_y
    rts
B13_a7d0:
    ldy camera_y
    ldx camera_y+1
    stx UNK_571+2
    lda camera_x+1
    sta temp_camera_x+1
    sta MAYBE_camera_seam_x+1
    sta UNK_571+3
    jsr B3F_ecf1
    sty temp_camera_y
    sty tmp1
    sta tmp0
    lda camera_y+1
    sta UNK_571+1
    lda camera_x
    sta temp_camera_x
    sta MAYBE_camera_seam_x
    sta last_camera_x_057B
    sta tmp0+1
    lda camera_y
    sta UNK_571
    sta last_camera_y_057C
    rts
.byte $A5,$DD,$85,$EB,$A5,$DE,$4A,$66
.byte $EB,$4A,$66,$EB,$4A,$66,$EB,$85
.byte $EC,$A5,$EB,$18,$6D,$1F,$05,$85
.byte $EB,$90,$02,$E6,$EC,$A5,$DD,$4A
.byte $4A,$29,$03,$49,$03,$48,$18,$69
.byte $51,$85,$46,$68,$18,$69,$02,$29
.byte $03,$18,$69,$51,$85,$47,$A5,$DD
.byte $CD,$C2,$05,$D0,$08,$A6,$DE,$E8
.byte $EC,$C3,$05,$F0,$01,$60,$8D,$C0
.byte $05,$A5,$DE,$8D,$C1,$05,$20,$04
.byte $A9,$AC,$1E,$05,$B9,$B2,$A8,$8D
.byte $2B,$60,$A9,$00,$8D,$2C,$60,$BE
.byte $B6,$A8,$B9,$AE,$A8,$A8,$20,$7D
.byte $F0,$AC,$1E,$05,$B9,$BA,$A8,$85
.byte $00,$A8,$A9,$50,$85,$10,$99,$C8
.byte $68,$20,$00,$80,$AC,$1E,$05,$B9
.byte $BE,$A8,$85,$00,$A8,$A9,$58,$85
.byte $10,$99,$C8,$68,$20,$00,$80,$AE
.byte $1E,$05,$BC,$C2,$A8,$B9,$55,$ED
.byte $85,$16,$B9,$65,$ED,$85,$17,$BC
.byte $C6,$A8,$A9,$58,$91,$16,$A9,$06
.byte $8D,$1E,$05,$60,$64,$64,$44,$84
.byte $03,$02,$03,$02,$48,$E8,$78,$7A
.byte $5A,$5A,$3D,$7D,$6A,$6A,$4D,$8D
.byte $06,$02,$03,$02,$64,$6E,$47,$87

L_13A8CC:
    ASMCALL_l   $219952                     ; 13A8CC/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 13A8D0/00
    .byte       $00                         ; 13A8D1/00
    .byte       $0C                         ; 13A8D2/0C
    .byte       $00                         ; 13A8D3/00
    ZEROVEL                                 ; 13A8D4/38
    SETZPOS     #$00FF                      ; 13A8D5/3AFF00
    SPRITEMAP   L_308AA2                     ; 13A8D8/1AA28A30
    LOOP        #3                          ; 13A8DC/0103
        SETPOSE     #$00, WAIT #1               ; 13A8DE/5100
L_13A8E0:
        LOOP        #7                          ; 13A8E0/0107
            INCPOSE     WAIT #1                     ; 13A8E2/71
L_13A8E3:
        ENDLOOP                                 ; 13A8E3/02
    ENDLOOP                                 ; 13A8E4/02
    END                                     ; 13A8E5/00

B13_a8e6:
    lda UNK_57E+17
    beq B13_a903
    lda map_bg_bank
    cmp #$0d
    bne B13_a903
    lda frame_counter
    lsr a
    lsr a
    lsr a
    and #$03
    ora #$80
    tay
    jsr $a6bd
    jmp B3E_c977
B13_a903:
    rts
B13_a904:
    lda minimum_scroll_x
    clc
    adc #$10
    sta minimum_kirby_x
    lda minimum_scroll_x+1
    adc #$00
    sta minimum_kirby_x+1
    rts
B13_a916:
    lda maximum_scroll_x
    sec
    sbc #$11
    sta maximum_kirby_x
    lda maximum_scroll_x+1
    sbc #$00
    sta maximum_kirby_x+1
    rts
B13_a928:
    lda UNK_3
    sta UNK_564+2
    lda UNK_4
    sta UNK_564+3
    lda UNK_6
    sta UNK_564+4
    lda UNK_5
    sta UNK_564+5
    rts
B13_a93d:
    tya
    pha
    lda temp_x_hi
    bmi B13_a984
    cmp map_header
    bcs B13_a984
    ldy tmp1
    ldx temp_y_hi
    lda temp_x_hi
    jsr B3F_ecf1
    bmi B13_a984
    cmp UNK_676E+127
    bcs B13_a984
    sty UNK_0
    tax
    ldy map_bg_delay, x
    lda B3F_ed55, y
    sta ptr0
    lda B3F_ed65, y
    sta ptr0+1
    lda UNK_0
    ldy tmp0+1
    jsr B3F_f071
    sta UNK_0
    tay
    lda (ptr0), y
    tay
    lda metatile_attribute, y
    cmp #$1c
    beq B13_a988
    cmp #$4c
    beq B13_a988
    cmp #$6f
    beq B13_a988
B13_a984:
    pla
    tay
    clc
    rts
B13_a988:
    pla
    tya
    sec
    sbc UNK_56D
    ldy UNK_0
    sta (ptr0), y
    sta tmp0
    ldy #$02
    sty OBJ_min_slot
    iny
    sty OBJ_max_slot
    lda #$01
    ldx kirby_copy_ability
    bmi B13_a9a6
    lda #$05
B13_a9a6:
    sta new_object_var0
    lda tmp0+1
    ora #$08
    tax
    lda temp_x_hi
    sta new_object_x_hi
    lda tmp1
    ora #$08
    tay
    lda temp_y_hi
    sta new_object_y_hi
    lda #$04
    jsr OBJ_New
    inc inhaling_count
    lda UNK_5E7+2
    ora #$40
    sta UNK_5E7+2
    jsr $8000
    sec
    rts
.byte $0E,$0E,$0E,$0E,$0F
.byte $0F,$0F
.byte $0F,$10,$10,$10
.byte $10,$10,$10
.byte $10,$11,$11,$12,$12
.byte $12
.byte $13,$13
.byte $13,$14,$14,$14
.byte $16
.byte $16,$16
.byte $18,$18
.byte $18
.byte $18,$18,$19,$19,$29,$29,$2A,$2A
.byte $2A,$2A,$2A,$2A
.byte $2A
.byte $2A
.byte $2B,$2D,$2D
.byte $2E,$2E
.byte $1B,$1B,$05,$05
.byte $05
.byte $0E
.byte $0E
.byte $0E
.byte $0E,$0E,$0E
.byte $0E,$0E,$25,$17
.byte $17
.byte $17
.byte $24,$24,$24
.byte $17,$17,$26,$1D
.byte $1D,$1D,$1D,$1D,$1A
.byte $38,$38,$38
.byte $38,$38,$38
.byte $38,$38,$38
.byte $38
.byte $38,$38,$1F,$1F,$1A,$1A,$2C,$2C
.byte $2F,$2F,$2F
.byte $2F
.byte $2F
.byte $41,$41,$41
.byte $41
.byte $1C,$1C,$1C,$1C,$1C,$39,$39,$39
.byte $39,$39
.byte $39,$40
.byte $40
.byte $40,$40
.byte $40
.byte $40,$40,$40,$40,$40,$30,$30,$30
.byte $30,$30
.byte $30
.byte $30,$30,$36
.byte $36
.byte $36,$30,$30,$30,$30,$0C
.byte $23,$05
.byte $28,$37
.byte $3A
.byte $3A
.byte $20
.byte $3B,$3B
.byte $21,$3C
.byte $3C,$1E,$1E,$1E
.byte $1E
.byte $1E,$1E,$1E,$1E,$1E,$1E,$1E
.byte $1E
.byte $1E,$1E,$1E
.byte $1E
.byte $1A,$0C,$0C,$0C
.byte $48
.byte $48,$4C
.byte $4C
.byte $49,$49,$4A,$4A
.byte $4B
.byte $4B,$4F,$4F
.byte $22
.byte $22
.byte $4D
.byte $4D,$0C,$0C,$0C,$0C,$0C,$0C,$0C
.byte $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
.byte $0C
.byte $43
.byte $0C,$44,$45,$46,$3D,$0C,$42,$47
.byte $3F,$4E,$0C,$0C,$0C,$0C,$0C,$0A
.byte $0A
.byte $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A
.byte $0A
.byte $0A,$0A,$0A,$0A,$0A
.byte $06,$06,$06,$06,$06,$06,$06,$06
.byte $06
.byte $06
.byte $06
.byte $0B
.byte $0C,$0C
.byte $6F
.byte $6F
.byte $00,$10,$20,$30,$00
.byte $10,$20
.byte $30,$00,$10,$20
.byte $30,$01,$02
.byte $03,$00,$10,$00,$10
.byte $20
.byte $00,$10
.byte $20,$00,$10,$20
.byte $00
.byte $10,$20
.byte $00,$10
.byte $02
.byte $01,$03,$00,$10,$00,$10,$00,$01
.byte $02,$03,$04,$05
.byte $06
.byte $07
.byte $00,$00,$10
.byte $00,$10
.byte $00,$10,$00,$01
.byte $02
.byte $01
.byte $11
.byte $21
.byte $31,$02,$12
.byte $22,$32,$00,$00
.byte $10
.byte $20
.byte $00,$10,$20
.byte $01,$21,$00,$00
.byte $10,$01,$02,$12,$10
.byte $00,$10,$01
.byte $11,$02,$12
.byte $03,$13,$04
.byte $14
.byte $05,$15,$00,$10,$00,$01,$00,$10
.byte $00,$10,$01
.byte $02
.byte $12
.byte $00,$10,$01
.byte $11
.byte $00,$10,$01,$11,$02,$00,$01,$11
.byte $02,$12
.byte $03,$00
.byte $10
.byte $01,$11
.byte $02
.byte $12,$03,$13,$04,$14,$00,$10,$20
.byte $30,$40
.byte $50
.byte $60,$70,$00
.byte $10
.byte $01,$80,$90,$A0,$B0,$00
.byte $00,$03
.byte $00,$00
.byte $00
.byte $10
.byte $00
.byte $00,$10
.byte $00,$00
.byte $10,$00,$10,$01
.byte $11
.byte $02,$12,$03,$13,$04,$14,$05
.byte $15
.byte $06,$07,$17
.byte $08
.byte $11,$00,$00,$00
.byte $00
.byte $10,$00
.byte $10
.byte $00,$10,$00,$10
.byte $00
.byte $10,$00,$10
.byte $00
.byte $10
.byte $00
.byte $10,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00
.byte $00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $01
.byte $02,$03,$04,$05,$06,$07,$08,$09
.byte $0A
.byte $0B,$0C,$0D,$0E,$0F
.byte $01,$11,$21,$31,$41,$51,$61,$00
.byte $10
.byte $06
.byte $16
.byte $00
.byte $00,$00
.byte $00
.byte $10
B13_abd2:
    ldy #$00
    ldx #$07
B13_abd6:
    lda level_progress, x
    and $adbd, x
    bne B13_abe6
    lda level_switch_progress, x
    and $adc4, x
    beq B13_abeb
B13_abe6:
    tya
    ora B3E_cabe, x
    tay
B13_abeb:
    dex
    bpl B13_abd6
    sty UNK_7DB+1
    ldy #$00
    ldx current_level
    lda level_progress, x
    cmp UNK_539+1, x
    beq B13_abff
    iny
B13_abff:
    sty UNK_78D2+3
    jsr $ad9a
    jsr LongCall
.byte $76,$A7,$38
    jsr $ad5a
    ldx current_level
    lda level_progress, x
    sta UNK_A
    lda level_switch_progress, x
    sta UNK_B
    jsr $ac80
    jsr $ad5a
    ldx current_level
    lda UNK_539+1, x
    sta UNK_A
    lda UNK_539+9, x
    sta UNK_B
    jsr $ac80
    ldx #$ff
    ldy #$07
B13_ac35:
    lda level_progress, y
    cmp UNK_539+1, y
    beq B13_ac3f
    ldx #$00
B13_ac3f:
    sta UNK_539+1, y
    lda level_switch_progress, y
    cmp UNK_539+9, y
    beq B13_ac4c
    ldx #$00
B13_ac4c:
    sta UNK_539+9, y
    lda level_boss_status, y
    pha
    eor UNK_539+17, y
    and #$40
    beq B13_ac5c
    ldx #$00
B13_ac5c:
    pla
    sta UNK_539+17, y
    dey
    bpl B13_ac35
    stx UNK_539+25
    lda #$00
    sta UNK_6601+31
    lda #$01
    sta UNK_539+26
    ldx #$17
    lda #$ff
B13_ac74:
    sta UNK_120+20, x
    dex
    bpl B13_ac74
    lda #$01
    sta UNK_120+44
    rts
B13_ac80:
    lda current_level
    asl a
    asl a
    asl a
    asl a
    sta UNK_0
    ldx #$00
B13_ac8b:
    jsr $ac94
    inx
    cpx #$0f
    bcc B13_ac8b
    rts
B13_ac94:
    txa
    beq B13_acab
    cpx #$08
    bcs B13_aca3
    lda UNK_A
    and $cabd, x
    bne B13_acab
    rts
B13_aca3:
    lda UNK_B
    and $cab6, x
    bne B13_acab
    rts
B13_acab:
    txa
    pha
    ora UNK_0
    tax
    lda $9c7e, x
    sta ptr2
    lda $9cee, x
    sta ptr2+1
    beq B13_acd2
B13_acbc:
    jsr $acd5
    ldy #$00
    lda (ptr2), y
    bmi B13_acd2
    lda ptr2
    clc
    adc #$04
    sta ptr2
    bcc B13_acbc
    inc ptr2+1
    bne B13_acbc
B13_acd2:
    pla
    tax
    rts
B13_acd5:
    ldy #$00
    lda (ptr2), y
    and #$7f
    sta UNK_2
    iny
    lda (ptr2), y
    sta tmp0
    iny
    lda (ptr2), y
    sta tmp0+1
    iny
    lda (ptr2), y
    sta tmp1
B13_acec:
    ldx UNK_2
    lda tmp0
    and #$f0
    clc
    adc B3F_ed55, x
    sta ptr0
    lda B3F_ed65, x
    adc #$00
    sta ptr0+1
    lda tmp0
    and #$f0
    clc
    adc $ed5d, x
    sta ptr1
    lda $ed6d, x
    adc #$00
    sta ptr1+1
    lda tmp0
    and #$0f
    tay
    ldx tmp0+1
B13_ad17:
    lda (ptr1), y
    sta (ptr0), y
    iny
    cpy #$10
    bcc B13_ad38
    ldy #$00
    lda ptr0
    clc
    adc #$c0
    sta ptr0
    bcc B13_ad2d
    inc ptr0+1
B13_ad2d:
    lda ptr1
    clc
    adc #$c0
    sta ptr1
    bcc B13_ad38
    inc ptr1+1
B13_ad38:
    dex
    bne B13_ad17
    dec tmp1
    bne B13_ad40
    rts
B13_ad40:
    lda tmp0
    clc
    adc #$10
    cmp #$c0
    bcc B13_ad55
    and #$0f
    tax
    lda UNK_2
    clc
    adc map_header
    sta UNK_2
    txa
B13_ad55:
    sta tmp0
    jmp $acec
B13_ad5a:
    ldx #$07
B13_ad5c:
    stx UNK_2
    lda B3F_ed55, x
    sta ptr0
    lda B3F_ed65, x
    sta ptr0+1
    lda $ed5d, x
    sta ptr1
    lda $ed6d, x
    sta ptr1+1
    ldy #$00
B13_ad74:
    lda (ptr0), y
    sta (ptr1), y
    tya
    and #$10
    lsr a
    lsr a
    lsr a
    sta UNK_3
    tya
    and #$01
    ora UNK_3
    tax
    lda $ad96, x
    sta (ptr0), y
    iny
    cpy #$c0
    bcc B13_ad74
    ldx UNK_2
    dex
    bpl B13_ad5c
    rts
.byte $F8,$F9,$F9,$F8
B13_ad9a:
    ldx current_level
    lda UNK_539+1, x
    sta UNK_78D2
    lda UNK_539+17, x
    sta UNK_78D2+2
    lda UNK_539+9, x
    ora $adb6, x
    and UNK_539+1, x
    sta UNK_78D2+1
    rts
.byte $7F,$7F,$5E,$5A,$46,$40,$5E,$08
.byte $10,$20,$00,$00,$00,$00,$00,$00
.byte $00,$20,$20,$20,$20
B13_adcb:
    jsr $b505
    sta UNK_66E9
    sta unknown_kirby_health_66E5
    sta unknown_extra_lives_66E8
    sta UNK_66E7
    sta UNK_66E9+1
    lda #$01
    sta UNK_59B+2
    sta UNK_59B+5
    sta UNK_59B+6
    lda #$80
    sta MAYBE_copy_ability_icon
    ldy #$17
    lda #$ff
B13_adf1:
    sta UNK_66EC+105, y
    dey
    bpl B13_adf1
    jsr B3E_c0be
.byte $6C,$AE
    lda UNK_57E+12
    beq B13_ae15
    lda $b532
    ldx $b55f
    jsr $b516
    lda #$01
    sta UNK_57E+13
    lda #$3e
    ldx #$3f
    bne B13_ae65
B13_ae15:
    sta UNK_57E+13
    lda current_room+1
    bne B13_ae24
    lda current_room
    cmp #$07
    bcc B13_ae31
B13_ae24:
    lda #$7a
    ldx #$ae
    jsr $b516
    lda #$3e
    ldx #$3f
    bne B13_ae65
B13_ae31:
    lda #$d5
    ldx #$ae
    jsr $b516
    lda current_room
    clc
    adc #$dd
    sta palette_faded
    lda #$d8
    sta palette_faded+1
    lda current_room
    asl a
    asl a
    asl a
    asl a
    tay
    ldx #$00
B13_ae50:
    lda $af2b, y
    sta palette_faded+2, x
    iny
    inx
    cpx #$10
    bcc B13_ae50
    jsr B3E_c0be
.byte $73,$AE
    lda #$3a
    ldx #$3f
B13_ae65:
    sta status_bar_background_chr
    stx status_bar_text_chr
    jmp $af9b
.byte $03,$E8,$2B,$18,$01,$55,$67,$03
.byte $0C,$2B,$12,$01,$00,$01,$02,$DA
.byte $DA,$B2,$2D,$CF,$01,$C5,$CD,$23
.byte $CF,$27,$81,$03,$DA,$82,$B4,$B3
.byte $2D,$81,$01,$C6,$B0,$2B,$81,$09
.byte $BD,$82,$B5,$81,$F0,$EE,$F7,$E7
.byte $FE,$C4,$28,$81,$00,$D0,$2B,$81
.byte $02,$BE,$82,$B6,$23,$81,$D5,$00
.byte $5E,$22,$81,$02,$BF,$82,$B7,$9C
.byte $00,$62,$03,$C0,$82,$B8,$B9,$2D
.byte $81,$01,$D3,$B1,$2B,$81,$03,$C1
.byte $DB,$DB,$BA,$2D,$C7,$01,$D4,$CE
.byte $23,$C7,$27,$81,$00,$DB,$3F,$82
.byte $FF,$02,$82,$82,$84,$41,$98,$88
.byte $00,$8F,$4A,$88,$98,$00,$94,$22
.byte $82,$00,$87,$23,$81,$00,$8B,$35
.byte $81,$00,$97,$22,$82,$00,$86,$23
.byte $81,$01,$8E,$81,$62,$91,$31,$81
.byte $00,$96,$F0,$27,$00,$1F,$00,$8C
.byte $4A,$8A,$89,$00,$99,$89,$00,$1F
.byte $05,$F0,$EE,$F7,$E7,$FE,$D8,$28
.byte $81,$01,$90,$D9,$87,$00,$3A,$00
.byte $85,$41,$98,$88,$00,$9B,$4A,$88
.byte $98,$00,$95,$E4,$20,$82,$FF,$FB
.byte $EA,$EC,$EA,$F9,$E6,$E7,$F1,$EA
.byte $81,$FB,$E6,$F1,$F1,$EA,$FE,$EE
.byte $E8,$EA,$81,$E8,$F7,$EA,$E6,$F2
.byte $81,$EE,$F8,$F1,$E6,$F3,$E9,$81
.byte $E7,$FA,$F9,$F9,$EA,$F7,$81,$E7
.byte $FA,$EE,$F1,$E9,$EE,$F3,$EC,$81
.byte $81,$EC,$F7,$E6,$F5,$EA,$81,$EC
.byte $E6,$F7,$E9,$EA,$F3,$81,$81,$81
.byte $81,$FE,$F4,$EC,$FA,$F7,$F9,$81
.byte $FE,$E6,$F7,$E9,$81,$81,$81,$81
.byte $81,$F4,$F7,$E6,$F3,$EC,$EA,$81
.byte $F4,$E8,$EA,$E6,$F3,$81,$81,$81
.byte $F7,$E6,$EE,$F3,$E7,$F4,$FC,$81
.byte $F7,$EA,$F8,$F4,$F7,$F9,$81
B13_af9b:
    ldy UNK_57E+12
    beq B13_afe8
    cpy UNK_57E+13
    beq B13_afe0
    cpy #$01
    beq B13_afae
    lda UNK_57E+13
    bne B13_afb1
B13_afae:
    jmp $adcb
B13_afb1:
    sty UNK_57E+13
    cpy #$20
    bcs B13_afbe
    lda #$da
    ldx #$db
    bne B13_afc2
B13_afbe:
    lda #$fe
    ldx #$ff
B13_afc2:
    sta status_bar_health_chr
    stx status_bar_copy_chr
    lda $b531, y
    sta ptr0
    lda $b55e, y
    sta ptr0+1
    lda #$c8
    sta ptr1
    lda #$74
    sta ptr1+1
    jsr Decompress
    jsr B3E_c0be
.byte $E1,$AF
B13_afe0:
    rts
.byte $03,$E4,$2A,$19,$05,$C8,$74
B13_afe8:
    lda UNK_57E+13
    beq B13_aff0
    jmp $adcb
B13_aff0:
    lda #$12
    jsr LoadBankLower
    lda scroll_type
    beq B13_affe
    cmp #$04
    bne B13_afff
B13_affe:
    rts
B13_afff:
    lda current_room+1
    bne B13_b05c
    lda current_room
    cmp #$07
    bcs B13_b05c
    lda kirby_health
    cmp unknown_kirby_health_66E5
    beq B13_b052
    sta unknown_kirby_health_66E5
    bpl B13_b01c
    ldy #$00
    beq B13_b029
B13_b01c:
    cmp #$28
    bcc B13_b024
    ldy #$06
    bne B13_b029
B13_b024:
    lsr a
    lsr a
    lsr a
    tay
    iny
B13_b029:
    ldx #$00
B13_b02b:
    lda #$9c
    sta palette_faded, x
    dey
    bpl B13_b036
    inc palette_faded, x
B13_b036:
    inx
    cpx #$06
    bcc B13_b02b
    lda a:extra_game_flag
    cmp #$01
    bne B13_b04d
    lda #$81
    sta palette_faded+3
    sta palette_faded+4
    sta palette_faded+5
B13_b04d:
    jsr B3E_c0be
.byte $55,$B0
B13_b052:
    jmp $b27f
.byte $03,$70,$2B,$06,$01,$00,$01
B13_b05c:
    lda unknown_camera_obj_slot_059A
    cmp #$ff
    beq B13_b071
    and #$7f
    tax
    lda OBJ_script, x
    cmp UNK_59B+1
    beq B13_b074
    jsr $b505
B13_b071:
    jmp $b139
B13_b074:
    ldy OBJ_var0, x
    bpl B13_b07b
    ldy #$00
B13_b07b:
    lda unknown_camera_obj_slot_059A
    bmi B13_b0b7
    cpy UNK_66E9
    bcc B13_b0cf
    lda kirby_health
    cmp unknown_kirby_health_66E5
    beq B13_b091
    ldx #$3c
    bne B13_b0d1
B13_b091:
    sty UNK_66E9
    lda UNK_59B
    beq B13_b071
    dec UNK_59B
    beq B13_b0a1
    jmp $b203
B13_b0a1:
    lda UNK_74C8+1025
    cmp #$01
    beq B13_b0b2
    cmp #$03
    beq B13_b0b2
    jsr $b50a
.byte $4C,$39,$B1
B13_b0b2:
    lda #$1e
    sta UNK_59B
B13_b0b7:
    lda UNK_59B+1
    and #$7f
    cmp #$47
    bne B13_b0ca
    tya
    sta UNK_0
    lsr a
    lsr a
    clc
    adc UNK_0
    lsr a
    tay
B13_b0ca:
    cpy UNK_66E9
    beq B13_b129
B13_b0cf:
    ldx #$78
B13_b0d1:
    lda UNK_59B+3
    beq B13_b0e5
    lda #$56
    jsr PlaySoundEffect
    lda UNK_59B+4
    cmp #$f0
    bcs B13_b0e5
    stx UNK_59B+4
B13_b0e5:
    lda #$f0
    sta UNK_59B
    sty UNK_66E9
    iny
    tya
    lsr a
    pha
    ldx #$00
B13_b0f3:
    tay
    cmp #$04
    bcc B13_b0fa
    lda #$04
B13_b0fa:
    clc
    adc #$93
    sta palette_faded+7, x
    tya
    sec
    sbc #$04
    bpl B13_b108
    lda #$00
B13_b108:
    inx
    cpx #$07
    bcc B13_b0f3
    pla
    bne B13_b114
    lda #$81
    bne B13_b116
B13_b114:
    lda #$92
B13_b116:
    sta palette_faded+6
    ldx #$05
B13_b11b:
    lda $b12c, x
    sta palette_faded, x
    dex
    bpl B13_b11b
    jsr B3E_c0be
.byte $32,$B1
B13_b129:
    jmp $b203
.byte $EA,$F3,$EA,$F2,$FE,$C4,$03,$43
.byte $2B,$0E,$01,$00,$01
B13_b139:
    lda current_score
    cmp unknown_score_66E3
    bne B13_b154
    lda current_score+1
    cmp unknown_score_66E3+1
    bne B13_b154
    lda current_score+2
    cmp unknown_score_66E3+2
    bne B13_b154
    jmp $b203
B13_b154:
    lda current_score
    sta unknown_score_66E3
    sta UNK_0
    lda current_score+1
    sta unknown_score_66E3+1
    sta UNK_1
    lda current_score+2
    sta unknown_score_66E3+2
    sta UNK_2
    lda UNK_0
    cmp unknown_MAYBE_score_0590
    lda UNK_1
    sbc unknown_MAYBE_score_0590+1
    lda UNK_2
    sbc unknown_MAYBE_score_0590+2
    bcs B13_b18c
    lda UNK_0
    sta unknown_MAYBE_score_0590
    lda UNK_1
    sta unknown_MAYBE_score_0590+1
    lda UNK_2
    sta unknown_MAYBE_score_0590+2
B13_b18c:
    lda #$0f
    ldx #$42
    ldy #$40
    jsr $b4db
    cmp #$dc
    bne B13_b19b
    lda #$81
B13_b19b:
    sta palette_faded+6
    lda #$01
    ldx #$86
    ldy #$a0
    jsr $b4db
    sta palette_faded+7
    lda #$00
    ldx #$27
    ldy #$10
    jsr $b4db
    sta palette_faded+8
    lda #$00
    ldx #$03
    ldy #$e8
    jsr $b4bd
    sta palette_faded+9
    lda #$00
    ldx #$00
    ldy #$64
    jsr $b4bd
    sta palette_faded+10
    ldx #$0a
    jsr $b4a6
    sta palette_faded+11
    lda UNK_0
    clc
    adc #$dc
    sta palette_faded+12
    lda #$dc
    sta palette_faded+13
    ldx #$05
B13_b1e5:
    lda $b1f6, x
    sta palette_faded, x
    dex
    bpl B13_b1e5
    jsr B3E_c0be
.byte $FC,$B1
    jmp $b203
.byte $F8,$E8,$F4,$F7,$EA,$C4,$03,$43
.byte $2B,$0E,$01,$00,$01
B13_b203:
    lda kirby_health
    cmp unknown_kirby_health_66E5
    beq B13_b27f
    sta unknown_kirby_health_66E5
    lda kirby_health
    bpl B13_b217
    ldy #$00
    beq B13_b224
B13_b217:
    cmp #$28
    bcc B13_b21f
    ldy #$06
    bne B13_b224
B13_b21f:
    lsr a
    lsr a
    lsr a
    tay
    iny
B13_b224:
    ldx #$00
B13_b226:
    dey
    bmi B13_b23a
    lda #$1a
    sta palette_faded, x
    lda #$1b
    sta palette_faded+6, x
    lda #$1c
    sta palette_faded+12, x
    bne B13_b247
B13_b23a:
    lda #$81
    sta palette_faded, x
    sta palette_faded+12, x
    lda #$98
    sta palette_faded+6, x
B13_b247:
    inx
    cpx #$06
    bcc B13_b226
    lda a:extra_game_flag
    cmp #$01
    bne B13_b270
    lda #$81
    sta palette_faded+3
    sta palette_faded+4
    sta palette_faded+5
    sta palette_faded+15
    sta palette_faded+16
    sta palette_faded+17
    sta palette_faded+9
    sta palette_faded+10
    sta palette_faded+11
B13_b270:
    jsr B3E_c0be
.byte $78,$B2
    jmp $b27f
.byte $03,$EA,$2A,$06,$03,$00,$01
B13_b27f:
    ldy UNK_59B+6
    beq B13_b28d
    dey
    sty UNK_59B+6
    bne B13_b28d
    sty UNK_59B+5
B13_b28d:
    lda UNK_59B+5
    beq B13_b299
    clc
    adc #$19
    tax
    jmp $b2ab
B13_b299:
    bit kirby_flags
    bvc B13_b2a2
    ldx #$23
    bne B13_b2ab
B13_b2a2:
    ldx kirby_copy_ability
    cpx #$1a
    bcc B13_b2ab
    ldx #$ff
B13_b2ab:
    cpx MAYBE_copy_ability_icon
    beq B13_b310
    stx MAYBE_copy_ability_icon
    inx
    lda $b338, x
    lsr a
    lsr a
    lsr a
    lsr a
    beq B13_b2c2
    tay
    dey
    sty UNK_59B+2
B13_b2c2:
    lda $b313, x
    sta a:status_bar_copy_chr
    ldy #$04
B13_b2ca:
    lda $b35d, y
    sta palette_faded, y
    dey
    bpl B13_b2ca
    ldy #$00
    clc
B13_b2d6:
    tya
    adc $b338, x
    and #$0f
    ora #$40
    sta palette_faded+5, y
    ora #$10
    sta palette_faded+10, y
    eor #$30
    sta palette_faded+15, y
    ora #$10
    sta palette_faded+20, y
    iny
    cpy #$05
    bcc B13_b2d6
    lda current_room+1
    bne B13_b309
    lda current_room
    cmp #$07
    bcs B13_b309
    lda palette_faded+1
    sbc #$0f
    sta palette_faded+1
B13_b309:
    lda #$00
    ldx #$01
    jsr B3E_c0da
B13_b310:
    jmp $b362
.byte $41,$44
.byte $40
.byte $41,$40,$41,$44,$44,$42,$42,$42
.byte $43,$45,$46,$46,$46,$43,$49,$43
.byte $49,$45,$47,$4A,$48,$4B
.byte $4A,$48,$47
.byte $47,$48
.byte $48,$45,$49,$4A,$4B,$4B,$40,$10
.byte $10
.byte $10
.byte $1A,$1A,$15,$15,$2A,$10,$15,$1A
.byte $1A,$10,$10,$1A,$15,$10,$15,$15
.byte $10,$2A,$25,$15,$1A,$10
.byte $10,$10,$00
.byte $0A,$10
.byte $05,$05,$0A,$0A,$05,$0A,$05,$01
.byte $F3,$2A,$04,$05
B13_b362:
    lda UNK_66EC
    beq B13_b368
    rts
B13_b368:
    lda current_room+1
    bne B13_b37c
    lda current_room
    cmp #$07
    bcs B13_b37c
    lda #$02
    sta UNK_59B+2
    jmp $b41e
B13_b37c:
    lda UNK_59B+2
    cmp UNK_66E9+1
    beq B13_b3a1
    sta UNK_66E9+1
    lda #$ff
    sta unknown_extra_lives_66E8
    sta UNK_66E7
    lda UNK_59B+2
    bne B13_b39c
    jsr B3E_c0be
.byte $A4,$B3
    jmp $b41e
B13_b39c:
    jsr B3E_c0be
    sbc (OBJ_y_frac+13,x)
B13_b3a1:
    jmp $b41e
.byte $00,$D7,$2A,$08,$07,$99,$9F,$A1
.byte $A1,$A1,$A1,$A1,$A7,$9A,$A0,$A2
.byte $A2,$A2,$A2,$A2,$A8,$9B,$16,$18
.byte $81,$81,$81,$81,$81,$CA,$17,$19
.byte $D9,$81,$81,$81,$81,$9C,$81,$81
.byte $81,$81,$81,$81,$81,$9D,$A3,$A5
.byte $A5,$A5,$A5,$A5,$A9,$9E,$A4,$A6
.byte $A6,$A6,$A6,$A6,$AA
.byte $00,$D7,$2A,$08,$07,$CB,$D6,$CF
.byte $CF,$CF,$CF,$CF,$BB,$AC,$1F,$1D
.byte $81,$81,$81,$81,$BC,$CA,$20,$1E
.byte $D9,$81,$81,$81,$81,$CA,$16,$18
.byte $81,$81,$81,$81,$81,$CA,$17,$19
.byte $D9,$81,$81,$81,$81,$AD,$AE,$81
.byte $81,$81,$81,$81,$C2,$CC,$AF,$C7
.byte $C7,$C7,$C7,$C7,$C3
B13_b41e:
    lda extra_lives
    cmp #$63
    bcc B13_b42a
    lda #$63
    sta extra_lives
B13_b42a:
    cmp unknown_extra_lives_66E8
    beq B13_b475
    sta unknown_extra_lives_66E8
    sta UNK_0
    ldx #$0a
    jsr $b4a6
    sta palette_faded
    lda UNK_0
    clc
    adc #$dc
    sta palette_faded+1
    ldy UNK_59B+2
    bne B13_b44f
    jsr B3E_c0be
.byte $60,$B4
    rts
B13_b44f:
    dey
    bne B13_b45a
    jsr B3E_c0be
.byte $67,$B4,$4C,$75,$B4
B13_b45a:
    jsr B3E_c0be
.byte $6E,$B4
    rts
.byte $03,$3B,$2B,$02,$01,$00,$01
.byte $03,$5B,$2B,$02,$01,$00,$01
.byte $03,$7A,$2B,$02,$01,$00,$01
B13_b475:
    lda UNK_59B+2
    cmp #$01
    bne B13_b49e
    lda ability_uses
    cmp UNK_66E7
    beq B13_b49e
    sta UNK_66E7
    sta UNK_0
    ldx #$0a
    jsr $b4a6
.byte $8D,$00,$01,$A5,$00,$18,$69,$DC
.byte $8D,$01,$01,$20,$BE,$C0,$9F,$B4
B13_b49e:
    rts
.byte $03,$1B,$2B,$02,$01,$00,$01
B13_b4a6:
    stx UNK_1
    ldy #$00
    lda UNK_0
B13_b4ac:
    sec
    sbc UNK_1
    bcc B13_b4b4
    iny
    bne B13_b4ac
B13_b4b4:
    adc UNK_1
    sta UNK_0
    tya
    clc
    adc #$dc
    rts
B13_b4bd:
    sty UNK_2
    stx UNK_3
    ldy #$00
B13_b4c3:
    lda UNK_0
    sec
    sbc UNK_2
    tax
    lda UNK_1
    sbc UNK_3
    bcc B13_b4d6
    stx UNK_0
    sta UNK_1
    iny
    bne B13_b4c3
B13_b4d6:
    tya
    clc
    adc #$dc
    rts
B13_b4db:
    sty UNK_3
    stx UNK_4
    sta UNK_5
    ldy #$00
B13_b4e3:
    lda UNK_0
    sec
    sbc UNK_3
    tax
    lda UNK_1
    sbc UNK_4
    sta UNK_6
    lda UNK_2
    sbc UNK_5
    bcc B13_b500
    stx UNK_0
    sta UNK_2
    lda UNK_6
    sta UNK_1
    iny
    bne B13_b4e3
B13_b500:
    tya
    clc
    adc #$dc
    rts
B13_b505:
    lda #$ff
    sta unknown_camera_obj_slot_059A
    lda #$ff
    sta unknown_score_66E3
    sta unknown_score_66E3+1
    sta unknown_score_66E3+2
    rts
B13_b516:
    sta ptr0
    stx ptr0+1
    lda #$c8
    sta ptr1
    lda #$74
    sta ptr1+1
    jsr Decompress
    jsr B3E_c0be
.byte $2B,$B5
    rts




; CODE OR DATA -- $13A8E6 .. $14A000
.incbin "../split/prg/bank13.bin", $152b