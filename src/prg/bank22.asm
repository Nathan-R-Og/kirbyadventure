.segment "PRG22": absolute
.byte $20,$A3,$DD
.byte $21,$7D,$D9,$D0,$90,$80,$23,$6B
.byte $D8,$08,$12,$80,$22,$38,$09
B22_8012:
    jsr $802e
    bcc B22_802d
    ldx inhaled_count
    ldy curr_object_slot
    lda OBJ_var0, y
    jsr B3F_e3a7
    inc inhaled_count
    dec inhaling_count
    ldx curr_object_slot
    jmp OBJ_Destroy
B22_802d:
    rts
B22_802e:
    ldx curr_object_slot
    lda OBJ_x_lo, x
    bpl B22_8039
    eor #$ff
    clc
    adc #$01
B22_8039:
    cmp #$0a
    bcs B22_803f
    sec
    rts
B22_803f:
    lda OBJ_x_lo, x
    bmi B22_8049
    lda #$d6
    ldy #$ff
    bne B22_804d
B22_8049:
    lda #$2a
    ldy #$00
B22_804d:
    clc
    adc OBJ_vel_x_lo, x
    sta OBJ_vel_x_lo, x
    tya
    adc OBJ_vel_x_hi, x
    sta OBJ_vel_x_hi, x
    lda OBJ_y_lo, x
    bpl B22_8063
    eor #$ff
    adc #$01
B22_8063:
    sta OBJ_vel_y_hi, x
    lda #$00
    sta OBJ_vel_y_lo, x
    ldy #$03
B22_806d:
    lsr OBJ_vel_y_hi, x
    ror OBJ_vel_y_lo, x
    dey
    bne B22_806d
    lda OBJ_y_lo, x
    bmi B22_808e
    lda OBJ_vel_y_lo, x
    eor #$ff
    adc #$01
    sta OBJ_vel_y_lo, x
    lda OBJ_vel_y_hi, x
    eor #$ff
    adc #$00
    sta OBJ_vel_y_hi, x
B22_808e:
    clc
    rts
B22_8090:
    ldx curr_object_slot
    lda OBJ_store_x_lo, x
    sec
    sbc OBJ_store_x_lo+1
    sta OBJ_x_lo, x
    lda OBJ_store_x_hi, x
    sbc OBJ_store_x_hi+1
    sta OBJ_x_hi, x
    lda OBJ_store_y_lo, x
    sec
    sbc OBJ_store_y_lo+1
    sta OBJ_y_lo, x
    lda OBJ_store_y_hi, x
    sbc OBJ_store_y_hi+1
    sta OBJ_y_hi, x
    rts
    lda OBJ_var3+1
    lsr a
    bcs B22_80c3
    ldx curr_object_slot
    lda OBJ_var4, x
    sta UNK_5E2
B22_80c3:
    rts

B22_80c4:
    ldy #$00
    ldx curr_object_slot
    lda #$00
    sta OBJ_var4, x
    lda $80dc, y
    ldx $80de, y
    jsr B3F_e31d
    ldx curr_object_slot
    lda OBJ_var4, x
    rts

    incbinRange "../split/prg/bank22.bin", $dc, $11d

B22_811d:
    lda #$04
    jsr Rand
    tax
    ldy curr_object_slot
    lda B22_8140, x
    pha
    lda B22_813C, x
    cpx #$02
    bne B22_8137
    ldx OBJ_var1, y
    bmi B22_8137
    lda #$1f
B22_8137:
    sta OBJ_pose, y
    pla
    rts
B22_813C:
.byte $01,$10,$2A,$35
B22_8140:
.byte $0E,$0E,$0A,$09


    incbinRange "../split/prg/bank22.bin", $144, $1a4

B22_81a4:
    lda #$34
    ldx #$8b
    jsr B3F_e31d
    rts
B22_81ac:
    ldx curr_object_slot
    lda OBJ_var5, x
    beq B22_81b7
    dec OBJ_var5, x
    rts
B22_81b7:
    ldx curr_object_slot
    lda #$00
    sta OBJ_var6, x
    lda #$4c
    ldx #$8b
    jsr B3F_e31d
    ldx curr_object_slot
    lda OBJ_var6, x
    bne B22_81d3
    lda #$64
    ldx #$8b
    jsr B3F_e31d
B22_81d3:
    rts

    incbinRange "../split/prg/bank22.bin", $1d4, $301

B22_8301:
    ldx curr_object_slot
    ldy OBJ_var2, x
    inc OBJ_var2, x
    lda OBJ_var1, x
    bmi B22_8313
    tya
    clc
    adc #$06
    tay
B22_8313:
    lda B22_8320, y
    sta OBJ_vel_x_hi, x
    lda B22_832C, y
    sta OBJ_vel_y_hi, x
    rts
B22_8320:
.byte $02,$FE,$FE,$02,$02,$FE,$FE,$02
.byte $02,$FE,$FE,$02
B22_832C:
.byte $01,$FF,$00,$01,$FF,$00,$FF,$01
.byte $00,$FF,$01,$00

.byte $0D,$02,$00,$28,$22,$03,$23,$BA
.byte $24


B22_8341:
    lda #$ff
    ldy #$00
    pha
    tya
    pha
    ldx #$00
    ldy #$06
    jsr $9e67
    jsr B3F_eedb
    bcs B22_8357
    pla
    pla
    rts

B22_8357:
    ldx curr_object_slot
    pla
    sta OBJ_var2, x
    pla
    bmi B22_8363
    sta OBJ_pose, x
B22_8363:
    pla
    pla
    lda #$22
    sta script_bank
    lda #$3b
    ldy #$83
    jmp OBJ_TryReplaceScriptPc


B22_8371:
    lda #$ff
    ldy #$00
    pha
    tya
    pha
    ldx #$00
    ldy #$06
    jsr $9e67
    jsr B3F_eedb
    bcs B22_8387
    pla
    pla
    rts
B22_8387:
    ldx curr_object_slot
    pla
    sta OBJ_var2, x
    pla
    bmi B22_8393
    sta OBJ_pose, x
B22_8393:
    pla
    pla
    pla
    pla
    lda #$22
    sta script_bank
    lda #$3b
    ldy #$83
    jmp OBJ_TryReplaceScriptPc
    lda #$00
    pha
    ldx #$00
    ldy #$07
    jsr $9e67
    jsr B3F_eedb
    bcs B22_83b4
    pla
    rts

B22_83b4:
    ldx curr_object_slot
    pla
    sta OBJ_var2, x
    lda #$22
    sta script_bank
    lda #$3b
    ldy #$83
    jsr OBJ_TryReplaceScriptPc
    sec
    rts

    incbinRange "../split/prg/bank22.bin", $3c8, $470

B22_8470:
    ldx curr_object_slot
    ldy OBJ_var0, x
    sta OBJ_var0, x
    tya
    sta OBJ_var2, x
    sta OBJ_var3, x
    lda OBJ_var1, x
    sta OBJ_0784, x
    lda #$00
    sta OBJ_var7, x
    lda #$bb
    sta obj_onposition_lo, x
    lda #$d9
    sta obj_onposition_hi, x
    lda #$22
    sta OBJ_lower_prg, x
    tsx
    sta palette_faded+3, x
    jsr $8851
    lda OBJ_var2, x
    rts
B22_84a4:
    ldx curr_object_slot
    lda OBJ_var1, x
    sta OBJ_0784, x
    rts
B22_84ad:
    ldx curr_object_slot
    ldy OBJ_var2, x
    lda OBJ_0784, y
    sta OBJ_0784, x
    rts
B22_84b9:
    jsr $84db
    ldx curr_object_slot
    jsr $84d1
    jmp $84e8
.byte $20,$DB,$84,$A6,$6E,$20,$D1,$84
.byte $4C,$03,$85,$A6,$6E
B22_84d1:
    lda OBJ_var1, x
    clc
    adc #$80
    sta OBJ_var1, x
    rts
B22_84db:
    ldx curr_object_slot
    lda OBJ_pose, x
    eor #$01
    sta OBJ_pose, x
    rts
B22_84e6:
    ldx curr_object_slot
B22_84e8:
    lda OBJ_vel_x_hi, x
    eor #$ff
    sta OBJ_vel_x_hi, x
    lda OBJ_vel_x_lo, x
    eor #$ff
    sta OBJ_vel_x_lo, x
    inc OBJ_vel_x_lo, x
    bne B22_8500
    inc OBJ_vel_x_hi, x
B22_8500:
    rts
B22_8501:
    ldx curr_object_slot
    lda OBJ_vel_y_hi, x
    eor #$ff
    sta OBJ_vel_y_hi, x
    lda OBJ_vel_y_lo, x
    eor #$ff
    sta OBJ_vel_y_lo, x
    inc OBJ_vel_y_lo, x
    bne B22_851b
    inc OBJ_vel_y_hi, x
B22_851b:
    rts
B22_851c:
    lda #$15
B22_851e:
    ldx #$03
B22_8520:
    stx UNK_0
    ldx curr_object_slot
    clc
    adc OBJ_vel_y_lo, x
    sta OBJ_vel_y_lo, x
    lda OBJ_vel_y_hi, x
    adc #$00
    sta OBJ_vel_y_hi, x
    cmp UNK_0
    bmi B22_8541
    lda #$00
    sta OBJ_vel_y_lo, x
    lda UNK_0
    sta OBJ_vel_y_hi, x
B22_8541:
    rts
.byte $A6,$6E,$20,$E8,$84,$20,$03,$85
.byte $60
B22_854b:
    and #$e0
    clc
    rol a
    rol a
    rol a
    rol a
    rts
.byte $48,$8A,$48,$98,$20,$DD,$C8,$AA
.byte $68,$85,$01,$68,$85,$00,$A0,$FF
.byte $8A,$C8,$D1,$00,$B0,$FB,$48,$98
.byte $AA,$68,$60,$48,$A9,$09,$8D,$2F
.byte $60,$A9,$12,$8D,$30,$60,$8E,$23
.byte $60,$A6,$6E,$98,$18,$7D,$DC,$61
.byte $8D,$24,$60,$4C,$28,$86
B22_8589:
    pha
    lda #$09
    sta OBJ_min_slot
    lda #$12
    sta OBJ_max_slot
    stx new_object_var0
    sty new_object_var1
    ldx curr_object_slot
    jmp $8628
.byte $A0,$01,$B1,$1E,$AA,$C8,$B1,$1E
.byte $A8,$20,$B0,$85,$A0,$02,$4C,$9D
.byte $8C,$20,$C5,$85,$B0,$0F,$A5,$49
.byte $48,$A9,$24,$20,$96,$D7,$20,$8C
.byte $BA,$68,$20,$96,$D7,$60
B22_85c5:
    txa
    pha
    tya
    pha
    ldx curr_object_slot
    lda OBJ_store_x_lo, x
    sec
    sbc a:camera_x
    lda OBJ_store_x_hi, x
    sbc a:camera_x+1
    bmi B22_860c
    lda a:camera_x+1
    sta UNK_0
    inc UNK_0
    lda OBJ_store_x_lo, x
    sec
    sbc a:camera_x
    lda OBJ_store_x_hi, x
    sbc UNK_0
    bpl B22_860c
    lda OBJ_store_y_lo, x
    sec
    sbc a:camera_y
    sta UNK_2
    lda OBJ_store_y_hi, x
    sbc a:camera_y+1
    bne B22_860c
    lda UNK_2
    cmp #$c0
    bcs B22_860c
    pla
    tay
    pla
    tax
    clc
    rts

B22_860c:
    pla
    tay
    pla
    tax
    sec
    rts
.byte $48,$A9,$09,$8D,$2F,$60,$A9,$12
.byte $8D,$30,$60,$A9,$00,$8D,$23,$60
.byte $98,$8D,$24,$60,$A6,$6E
B22_8628:
    stx new_object_var2
    lda OBJ_store_x_hi, x
    sta new_object_x_hi
    lda OBJ_store_y_hi, x
    sta new_object_y_hi
    lda OBJ_store_z_lo, x
    sta new_object_z_lo
    lda OBJ_store_z_hi, x
    sta new_object_z_hi
    ldy OBJ_store_y_lo, x
    lda OBJ_store_x_lo, x
    tax
    pla
    jmp OBJ_New
B22_864e:
    lda tmp0+1
    bpl B22_8662
    eor #$ff
    sta tmp0+1
    lda tmp0
    eor #$ff
    sta tmp0
    inc tmp0
    bne B22_8662
    inc tmp0+1
B22_8662:
    lda tmp0+1
    rts
.byte $BD,$74,$60,$38,$F9,$74,$60,$85
.byte $10,$BD,$86,$60,$F9,$86,$60,$85
.byte $11,$4C,$4E,$86,$BD,$98,$60,$38
.byte $F9,$98,$60,$85,$10,$BD,$AA,$60
.byte $F9,$AA,$60,$85,$11,$4C,$4E,$86
.byte $A0,$01,$20,$98,$86,$A6,$6E,$9D
.byte $DC,$61,$60
B22_8698:
    lda OBJ_store_x_lo, y
    sta UNK_4
    lda OBJ_store_x_hi, y
    sta UNK_5
    lda OBJ_store_y_lo, y
    sta UNK_6
    lda OBJ_store_y_hi, y
    sta UNK_7
    ldx curr_object_slot
    lda OBJ_store_x_lo, x
    sta UNK_0
    lda OBJ_store_x_hi, x
    sta UNK_1
    lda OBJ_store_y_lo, x
    sta UNK_2
    lda OBJ_store_y_hi, x
    sta UNK_3
    jmp B3F_e012
B22_86c5:
    lda OBJ_x_lo, x
    sta UNK_0
    lda OBJ_x_hi, x
    sta UNK_1
    lda OBJ_y_lo, x
    sta UNK_2
    lda OBJ_store_y_hi, x
    sta UNK_3
    lda OBJ_x_lo, y
    sta UNK_4
    lda OBJ_x_hi, y
    sta UNK_5
    lda OBJ_y_lo, y
    sta UNK_6
    lda OBJ_y_hi, y
    sta UNK_7
    txa
    pha
    tya
    pha
    jsr B3F_e012
    cmp #$80
    bcc B22_86fa
    eor #$ff
    clc
    adc #$01
B22_86fa:
    and #$fc
    lsr a
    tax
    lda B3F_e177, x
    bne B22_873f
    pla
    tay
    lda $e178, x
    bne B22_871c
    pla
    tax
    lda OBJ_y_lo, x
    sec
    sbc OBJ_y_lo, y
    sta tmp0
    lda OBJ_y_hi, x
    sbc OBJ_y_hi, y
    jmp $872b
B22_871c:
    pla
    tax
    lda OBJ_x_lo,x
    sec
    sbc OBJ_x_lo,y
    sta tmp0
    lda OBJ_x_hi,x
    sbc OBJ_x_hi,y
    tax
    bpl B22_873C
    eor #$ff
    tax
    lda tmp0
    eor #$ff
    clc
    adc #$01
    bne B22_873B
    inx
B22_873B:
    rts
B22_873C:
    lda tmp0
    rts

B22_873f:
    sta UNK_0
    pla
    tay
    pla
    tax
    lda OBJ_x_lo, x
    sec
    sbc OBJ_x_lo, y
    sta tmp0
    lda OBJ_x_hi, x
    sbc OBJ_x_hi, y
    tax
    bpl B22_8764
    eor #$ff
    tax
    lda tmp0
    eor #$ff
    clc
    adc #$01
    sta tmp0
    bne B22_8764
    inx
B22_8764:
    lda #$00
    cpx #$00
    bne B22_8772
    ldx tmp0
    ldy UNK_0
    jsr B3E_c56b
    rts
B22_8772:
    lda #$00
    ldx #$ff
    rts

    incbinRange "../split/prg/bank22.bin", $777, $829

B22_8829:
    lda #$00
B22_882b:
    ldx curr_object_slot
    ldy OBJ_var1, x
    bpl B22_8834
    eor #$01
B22_8834:
    sta OBJ_pose, x
    rts
.byte $A9,$00,$49,$01,$4C,$2B,$88,$A4
.byte $6E,$B9,$EE,$61,$10,$05,$A9,$01
.byte $4C,$4D,$88,$A9,$00,$99,$C6,$62
.byte $60
B22_8851:
    jsr $90d6
    lda #$40
    ldy UNK_4
    bne B22_885c
    lda #$c0
B22_885c:
    sta OBJ_var1, x
    rts
.byte $20,$D6,$90,$A9,$C0,$A4,$04,$D0
.byte $02,$A9,$40,$9D,$DC,$61,$60
B22_886f:
    sta UNK_0
    stx UNK_1
    clc
    adc #$08
    bcc B22_8879
    inx
B22_8879:
    sta UNK_2
    stx UNK_3
    clc
    adc #$08
    bcc B22_8883
    inx
B22_8883:
    sta UNK_4
    stx UNK_5
    clc
    adc #$08
    bcc B22_888d
    inx
B22_888d:
    sta UNK_6
    stx UNK_7
    ldx curr_object_slot
    ldy curr_object_slot
    lda OBJ_0784, y
    asl a
    sta tmp0
    lda #$00
    sta tmp0+1
    sta tmp1
    lda OBJ_var1, x
    jsr $854b
    tay
    lda $88b9, y
    sta script_jmp_addr
    lda $88c1, y
    sta script_jmp_addr+1
    ldy tmp0
    jmp (script_jmp_addr)
.byte $C9,$D1
.byte $D9,$E1,$E9
.byte $F1,$F9,$01,$88,$88
.byte $88,$88,$88
.byte $88,$88,$89,$20,$09,$89,$A4,$10
.byte $4C,$CA,$89,$20,$59,$89,$A4,$10
.byte $4C,$CA,$89
B22_88d9:
    jsr $8959
    ldy tmp0
    jmp $8931
B22_88e1:
    jsr $8959
    ldy tmp0
    jmp $897d
B22_88e9:
    jsr $8909
    ldy tmp0
    jmp $897d
.byte $20,$A1,$89,$A4,$10,$4C,$7D,$89
.byte $20,$A1,$89,$A4,$10,$4C,$31,$89
.byte $20,$A1,$89,$A4,$10,$4C,$CA,$89
B22_8909:
    lda OBJ_vel_x_hi, x
    bmi B22_8918
    bne B22_8915
    lda OBJ_vel_x_lo, x
    beq B22_8930
B22_8915:
    iny
    dec tmp0+1
B22_8918:
    lda OBJ_vel_x_lo, x
    clc
    adc (UNK_0), y
    sta OBJ_vel_x_lo, x
    lda OBJ_vel_x_hi, x
    adc (UNK_2), y
    sta OBJ_vel_x_hi, x
    tya
    and #$01
    bne B22_8930
    inc tmp0+1
B22_8930:
    rts
B22_8931:
    lda OBJ_vel_y_hi, x
    bmi B22_8940
    bne B22_893d
    lda OBJ_vel_y_lo, x
    beq B22_8958
B22_893d:
    iny
    dec tmp1
B22_8940:
    lda OBJ_vel_y_lo, x
    clc
    adc (UNK_0), y
    sta OBJ_vel_y_lo, x
    lda OBJ_vel_y_hi, x
    adc (UNK_2), y
    sta OBJ_vel_y_hi, x
    tya
    and #$01
    bne B22_8958
    inc tmp1
B22_8958:
    rts
B22_8959:
    lda OBJ_vel_x_hi, x
    bmi B22_8969
    cmp (UNK_6), y
    bcc B22_8969
    lda OBJ_vel_x_lo, x
    cmp (UNK_4), y
    bcs B22_897c
B22_8969:
    lda OBJ_vel_x_lo, x
    clc
    adc (UNK_0), y
    sta OBJ_vel_x_lo, x
    lda OBJ_vel_x_hi, x
    adc (UNK_2), y
    sta OBJ_vel_x_hi, x
    inc tmp0+1
B22_897c:
    rts
B22_897d:
    lda OBJ_vel_y_hi, x
    bmi B22_898d
    cmp (UNK_6), y
    bcc B22_898d
    lda OBJ_vel_y_lo, x
    cmp (UNK_4), y
    bcs B22_89a0
B22_898d:
    lda OBJ_vel_y_lo, x
    clc
    adc (UNK_0), y
    sta OBJ_vel_y_lo, x
    lda OBJ_vel_y_hi, x
    adc (UNK_2), y
    sta OBJ_vel_y_hi, x
    inc tmp1
B22_89a0:
    rts

    incbinRange "../split/prg/bank22.bin", $9a1, $b61

B22_8b61:
    ldy #$01
    lda (script_ptr), y
    sta UNK_2
    iny
    lda (script_ptr), y
    sta UNK_3
    ldx curr_object_slot
    lda OBJ_0784, x
    asl a
    tay
    lda (UNK_2), y
    sta UNK_0
    iny
    lda (UNK_2), y
    sta UNK_1
    jmp B3F_e247
B22_8b7f:
    ldy #$01
    lda (script_ptr), y
    sta UNK_2
    iny
    lda (script_ptr), y
    sta UNK_3
    ldx curr_object_slot
    lda OBJ_0784, x
    asl a
    tay
    ldx curr_object_slot
    lda (UNK_2), y
    sta OBJ_vel_x_lo, x
    iny
    lda (UNK_2), y
    sta OBJ_vel_x_hi, x
    lda OBJ_var1, x
    bpl B22_8bbb
    lda OBJ_vel_x_hi, x
    eor #$ff
    sta OBJ_vel_x_hi, x
    lda OBJ_vel_x_lo, x
    eor #$ff
    sta OBJ_vel_x_lo, x
    inc OBJ_vel_x_lo, x
    bne B22_8bbb
    inc OBJ_vel_x_hi, x
B22_8bbb:
    ldy #$02
    jmp $8c9d
.byte $A0,$01,$B1,$1E,$85,$02,$C8,$B1
.byte $1E,$85,$03,$A6,$6E,$BD,$84,$07
.byte $0A,$A8,$A6,$6E,$B1,$02,$9D,$04
.byte $61,$C8,$B1,$02,$9D,$16,$61,$A0
.byte $02,$4C,$9D,$8C
B22_8be4:
    jsr $8bed
    ldx curr_script_slot
    sta SCR_sleep_timer, x
    rts
B22_8bed:
    ldy #$01
    lda (script_ptr), y
    sta UNK_0
    iny
    lda (script_ptr), y
    sta UNK_1
    ldx curr_object_slot
    lda OBJ_0784, x
    tay
    lda (UNK_0), y
    ldy #$02
    jmp $8c9d
B22_8c05:
    ldy #$01
    lda (script_ptr), y
    sta UNK_0
    lda #$00
    sta UNK_1
    ldx curr_object_slot
    lda OBJ_var1, x
    bpl B22_8c3b
    jmp $8c2d
.byte $A0,$01,$B1,$1E,$85,$00,$A9,$00
.byte $85,$01,$A6,$6E,$BD,$DC,$61,$30
.byte $11,$4C,$2D,$8C
B22_8c2d:
    dec UNK_1
    lda UNK_0
    eor #$ff
    sta UNK_0
    inc UNK_0
    bne B22_8c3b
    inc UNK_1
B22_8c3b:
    lda OBJ_x_lo, x
    clc
    adc UNK_0
    sta OBJ_x_lo, x
    sta OBJ_store_x_lo, x
    lda OBJ_x_hi, x
    adc UNK_1
    sta OBJ_x_hi, x
    sta OBJ_store_x_hi, x
    ldy #$01
    jmp $8c9d
B22_8c53:
    ldy #$01
    lda (script_ptr), y
    jsr $882b
    ldy #$01
    jmp $8c9d
.byte $A0,$01,$B1,$1E,$48,$C8,$B1,$1E
.byte $A8,$68,$20,$12,$86,$A0,$02,$4C
.byte $9D,$8C,$A0,$01,$B1,$1E,$48,$C8
.byte $B1,$1E,$AA,$C8,$B1,$1E,$A8,$68
.byte $20,$6E,$85,$A0,$03,$4C,$9D,$8C
.byte $A0,$01,$B1,$1E,$48,$C8,$B1,$1E
.byte $AA,$C8,$B1,$1E,$A8,$68,$20,$89
.byte $85,$A0,$03,$4C,$9D,$8C
B22_8c9d:
    pha
    tya
    clc
    adc script_ptr
    sta script_ptr
    bcc B22_8ca8
    inc script_ptr+1
B22_8ca8:
    pla
    rts
B22_8caa:
    ldy #$01

    lda (script_ptr), y
    sta tmp0
    iny
    lda (script_ptr), y
    ldx curr_object_slot
    ldy OBJ_var1, x
    bpl B22_8ccc
    eor #$ff
    sta tmp0+1
    lda tmp0
    eor #$ff
    sta tmp0
    inc tmp0
    bne B22_8cca
    inc tmp0+1
B22_8cca:
    lda tmp0+1
B22_8ccc:
    sta OBJ_vel_x_hi, x
    lda tmp0
    sta OBJ_vel_x_lo, x
    ldy #$02
    jmp $8c9d
.byte $A6,$6E,$A9,$00,$9D,$04,$61,$9D
.byte $16,$61,$60
B22_8ce4:
    lda #$03
    sta UNK_0
    ldx curr_object_slot
    lda OBJ_vel_x_hi, x
    bmi B22_8d08
    lda OBJ_vel_x_lo, x
    sec
    sbc UNK_0
    sta OBJ_vel_x_lo, x
    lda OBJ_vel_x_hi, x
    sbc #$00
    bpl B22_8d04
    lda #$00
    sta OBJ_vel_x_lo, x
B22_8d04:
    sta OBJ_vel_x_hi, x
    rts
B22_8d08:
    lda OBJ_vel_x_lo, x
    clc
    adc UNK_0
    sta OBJ_vel_x_lo, x
    lda OBJ_vel_x_hi, x
    adc #$00
    bmi B22_8d1d
    lda #$00
    sta OBJ_vel_x_lo, x
B22_8d1d:
    sta OBJ_vel_x_hi, x
    rts

    incbinRange "../split/prg/bank22.bin", $d21, $ef0

B22_8ef0:
    pha
    jsr $85c5
    pla
    bcs B22_8efa
    jsr PlaySoundEffect
B22_8efa:
    rts
B22_8efb:
    ldy #$01
    lda (script_ptr), y
    jsr $8ef0
    ldy #$01
    jmp $8c9d

    incbinRange "../split/prg/bank22.bin", $f07, $10d6

B22_90d6:
    ldy #$01
    lda #$00
    sta UNK_4
    ldx curr_object_slot
    lda OBJ_store_x_hi, x
    sta UNK_8
    inc UNK_8
    lda OBJ_store_x_hi, y
    sta UNK_9
    inc UNK_9
    lda OBJ_store_x_lo, x
    sec
    sbc OBJ_store_x_lo, y
    sta UNK_0
    lda UNK_8
    sbc UNK_9
    sta UNK_1
    bpl B22_9111
    inc UNK_4
    lda UNK_1
    eor #$ff
    sta UNK_1
    lda UNK_0
    eor #$ff
    sta UNK_0
    inc UNK_0
    bne B22_9111
    inc UNK_1
B22_9111:
    rts
B22_9112:
    ldy #$01
    lda #$00
    sta UNK_5
    ldx curr_object_slot
    lda OBJ_store_y_hi, x
    sta UNK_8
    inc UNK_8
    lda OBJ_store_y_hi, y
    sta UNK_9
    inc UNK_9
    lda OBJ_store_y_lo, x
    sec
    sbc OBJ_store_y_lo, y
    sta UNK_2
    lda UNK_8
    sbc UNK_9
    sta UNK_3
    bpl B22_914d
    inc UNK_5
    lda UNK_3
    eor #$ff
    sta UNK_3
    lda UNK_2
    eor #$ff
    sta UNK_2
    inc UNK_2
    bne B22_914d
    inc UNK_3
B22_914d:
    rts
.byte $85,$10,$86,$11,$84,$12,$E6,$11
.byte $E6,$12,$A4,$10,$20,$D8,$90,$A5
.byte $01,$D0,$18,$A5,$00,$C5,$11,$B0
.byte $12,$A4,$10,$20,$14,$91,$A5,$03
.byte $D0,$09,$A5,$02,$C5,$12,$B0,$03
.byte $A9,$01,$60,$A9,$00,$60
B22_917c:
    jsr $9183
    sta OBJ_var1, x
    rts
B22_9183:
    jsr $90d6
    jsr $9112
    lda UNK_4
    beq B22_919b
    lda UNK_5
    beq B22_9196
    ldy #$01
    lda #$60
    rts
B22_9196:
    ldy #$00
    lda #$20
    rts

B22_919b:
    lda UNK_5
    beq B22_91a4
    ldy #$02
    lda #$a0
    rts
B22_91a4:
    ldy #$03
    lda #$e0
    rts

    incbinRange "../split/prg/bank22.bin", $11a9, $12cc

B22_92cc:
    lda OBJ_store_x_lo, x
    sec
    sbc a:camera_x
    sta UNK_6
    lda OBJ_store_x_hi, x
    sbc a:camera_x+1
    sta UNK_7
    lda OBJ_store_y_lo, x
    sec
    sbc a:camera_y
    sta UNK_8
    lda OBJ_store_y_hi, x
    sbc a:camera_y+1
    sta UNK_9
    ldx UNK_6
    ldy UNK_8
    rts
B22_92f3:
    ldx curr_object_slot
    jsr $92cc
    ldy #$00
    lda UNK_8
    cmp #$5c
    bcc B22_9302
    ldy #$01
B22_9302:
    rts
.byte $A6,$6E,$BD,$E0,$60,$18,$7D,$5A
.byte $62,$9D,$E0,$60,$BD,$F2,$60,$7D
.byte $6C,$62,$9D,$F2,$60,$60
B22_9319:
    ldx curr_object_slot
    lda OBJ_vel_y_lo, x
    clc
    adc OBJ_vel_z_lo, x
    sta OBJ_vel_y_lo, x
    lda OBJ_vel_y_hi, x
    adc OBJ_vel_z_hi, x
    sta OBJ_vel_y_hi, x
    rts

.byte $A9,$05,$48,$A0,$01,$B1,$1E,$A6
.byte $6F,$9D,$60,$63,$A6,$6E,$C8,$D0
.byte $07
B22_9340:
    lda #$04
    pha
    ldy #$01
    ldx curr_object_slot
    lda OBJ_var1, x
    bmi B22_935a
    lda (script_ptr), y
    sta OBJ_vel_x_lo, x
    iny
    lda (script_ptr), y
    sta OBJ_vel_x_hi, x
    jmp $936e
B22_935a:
    lda (script_ptr),y
    eor #$ff
    clc
    adc #$01
    sta OBJ_vel_x_lo,x
    iny
    lda (script_ptr),y
    eor #$ff
    adc #$00
    sta OBJ_vel_x_hi,x

B22_936e:
    iny
    lda (script_ptr), y
    sta OBJ_vel_y_lo, x
    iny
    lda (script_ptr), y
    sta OBJ_vel_y_hi, x
    pla
    clc
    adc script_ptr
    sta script_ptr
    bcc B22_9384
    inc script_ptr+1
B22_9384:
    rts
.byte $0D,$05,$3C,$06,$01,$D0,$91,$93
.byte $0B,$88,$93,$19,$A6,$6E,$DE,$24
.byte $62,$BD,$24,$62,$8D,$99,$05,$60
B22_939d:
    sta UNK_0
    sty UNK_1
    ldx curr_object_slot
    lda OBJ_var1, x
    jsr B3F_e0f3
    ldx curr_object_slot
    lda UNK_8
    sta OBJ_vel_x_lo, x
    lda UNK_9
    sta OBJ_vel_x_hi, x
    lda UNK_5
    sta OBJ_vel_y_lo, x
    lda UNK_6
    sta OBJ_vel_y_hi, x
    rts

    incbinRange "../split/prg/bank22.bin", $13c0, $16b9

B22_96b9:
    pha
    ldy #$01
    lda (script_ptr), y
    sta ptr0
    iny
    lda (script_ptr), y
    sta ptr0+1
    pla
    ldx curr_object_slot
    sta OBJ_vel_z_hi, x
    tya
    clc
    adc script_ptr
    sta script_ptr
    bcc B22_96d5
    inc script_ptr+1
B22_96d5:
    jsr $96ec
    inc OBJ_vel_z_lo, x
    rts
B22_96dc:
    ldx curr_object_slot
    dec OBJ_vel_z_lo, x
    bne B22_9757
    sta ptr0
    sty ptr0+1
    inc OBJ_vel_z_hi, x
B22_96ea:
    ldx curr_object_slot
B22_96ec:
    lda OBJ_vel_z_hi, x
    asl a
    tay
    lda (ptr0), y
    bpl B22_974e
    cmp #$c0
    bcs B22_973f
    lsr a
    bcs B22_9736
    lsr a
    bcs B22_9728
    lsr a
    bcs B22_9715
    inc OBJ_vel_z_hi, x
    iny
    lda (ptr0), y
    sta OBJ_vel_z_lo, x
    iny
    jsr $9758
    ldx curr_object_slot
    sta OBJ_pose,x
    rts

B22_9715:
    inc OBJ_vel_z_hi,x
    iny
    lda (ptr0),y
    sta OBJ_pose,x
    iny
    jsr $9758
    ldx curr_object_slot
    sta OBJ_vel_z_lo,x
    rts

B22_9728:
    inc OBJ_vel_z_hi, x
    inc OBJ_vel_z_hi, x
    iny
    iny
    jsr $9758
    jmp $96ea
B22_9736:
    iny
    lda (ptr0), y
    sta OBJ_vel_z_hi, x
    jmp $96ea
B22_973f:
    and #$3f
    sta OBJ_pose, x
    lda OBJ_var1, x
    bpl B22_9751
    inc OBJ_pose, x
    bpl B22_9751
B22_974e:
    sta OBJ_pose, x
B22_9751:
    iny
    lda (ptr0), y
    sta OBJ_vel_z_lo, x
B22_9757:
    rts
B22_9758:
    lda (ptr0), y
    sta script_jmp_addr
    iny
    lda (ptr0), y
    sta script_jmp_addr+1
    jmp (script_jmp_addr)
B22_9766:
    ldy #$02
    lda #$00
    sta UNK_A
    lda #$98
    pha
    lda #$ef
    pha
    jsr $9cc7
    jsr $9b32
    bcc B22_97a5
    lda UNK_C
    cmp #$03
    bmi B22_9784
    cmp #$07
    bmi B22_97a8
B22_9784:
    jsr $9c25
    jsr $9c42
    cmp #$03
B22_978c:
    bcs B22_978c
    asl a
    tay
    lda $979f, y
    sta script_jmp_addr
    lda $97a0, y
    sta script_jmp_addr+1
    jmp (script_jmp_addr)
    .addr $9A9E
    .addr $9ABB
    .addr $9AF5

B22_97a5:
    jmp $97e4
B22_97a8:
    lda #$01
    sec
    rts
B22_97ac:
    jmp $97f1

B22_97af:
    ldy #$00
    lda #$00
    sta UNK_A
    lda #$98
    pha
    lda #$ef
    pha
    jsr $9cc7
    jsr $9b32
    bcc B22_97e4
    jsr $9c25
    jsr $9c42
    cmp #$03
B22_97cb:
    bcs B22_97cb
    asl a
    tay
    lda $97de, y
    sta script_jmp_addr
    lda $97df, y
    sta script_jmp_addr+1
    jmp (script_jmp_addr)
    .addr $9A9E
    .addr $9AA2
    .addr $9ADC
B22_97e4:
    lda #$00
    clc
    rts
B22_97e8:
    ldy #$00
B22_97ea:
    ldx #$01
    jmp $97f3
B22_97ef:
    ldy #$00
    ldx #$00
B22_97f3:
    lda #$00
    sta UNK_B
    sta UNK_A
    stx UNK_9
    lda #$98
    pha
    lda #$ef
    pha
    jsr $9cc7
    txa
    beq B22_9817
    ldx a:curr_object_slot
    lda OBJ_vel_y_hi, x
    bmi B22_981f
    ora OBJ_vel_y_lo, x
    bne B22_9875
    jmp $98d2
B22_9817:
    ldx a:curr_object_slot
    lda OBJ_vel_y_hi, x
    bpl B22_9875
B22_981f:
    lda #$01
    sta OBJ_var7, x
    ldy #$07
    jsr $9c5b
    jsr $9b16
    bcc B22_9848
    jsr $9c25
    inc UNK_B
    lda #$03
    ldy UNK_C
    cpy #$02
    beq B22_9843
    lda #$19
    cpy #$07
    beq B22_9843
    lda #$1d
B22_9843:
    clc
    adc UNK_A
    sta UNK_A
B22_9848:
    ldy #$02
    ldx a:curr_object_slot
    lda OBJ_vel_x_hi, x
    bmi B22_9859
    ora OBJ_vel_x_lo, x
    bne B22_9858
    dey
B22_9858:
    dey
B22_9859:
    tya
    cmp #$03
B22_985c:
    bcs B22_985c
    asl a
    tay
    lda $986f, y
    sta script_jmp_addr
    lda $9870, y
    sta script_jmp_addr+1
    jmp (script_jmp_addr)
.byte $30,$99,$3C,$99,$6E,$99
B22_9875:
    ldy #$08
    jsr $9c5b
    jsr $9b6d
    bcc B22_98a5
    jsr $9c25
    inc UNK_B
    lda #$1f
    ldy UNK_C
    cpy #$02
    beq B22_98a0
    lda #$0d
    cpy #$03
    beq B22_98a0
    lda #$0b
    cpy #$04
    beq B22_98a0
    lda #$11
    cpy #$05
    beq B22_98a0
    lda #$0f
B22_98a0:
    clc
    adc UNK_A
    sta UNK_A
B22_98a5:
    ldy #$02
    ldx a:curr_object_slot
    lda OBJ_vel_x_hi, x
    bmi B22_98b6
    ora OBJ_vel_x_lo, x
    bne B22_98b5
    dey
B22_98b5:
    dey
B22_98b6:
    tya
    cmp #$03
B22_98b9:
    bcs B22_98b9
    asl a
    tay
    lda $98cc, y
    sta script_jmp_addr
    lda $98cd, y
    sta script_jmp_addr+1
    jmp (script_jmp_addr)
    .addr $99B6
    .addr $99C0
    .addr $99F2
B22_98d2:
    jsr $9c42
    cmp #$03
B22_98d7:
    bcs B22_98d7
    asl a
    tay
    lda $98ea, y
    sta script_jmp_addr
    lda $98eb, y
    sta script_jmp_addr+1
    jmp (script_jmp_addr)
    .addr $9A46
    .addr $9A4A
    .addr $9A74
    php
    pha
    ldx UNK_A
    lda $98fc, x
    sta UNK_0
    pla
    plp
    rts

    incbinRange "../split/prg/bank22.bin", $18fc, $1930

B22_9930:
    lda UNK_B
    beq B22_9938
    lda #$02
    clc
    rts
B22_9938:
    lda #$00
    clc
    rts
B22_993c:
    ldy #$09
    jsr $9c5b
    lda UNK_9
    beq B22_994d
    jsr $9bd4
    bcc B22_9952
    jmp $9968
B22_994d:
    jsr $9ba2
    bcs B22_9968
B22_9952:
    ldy #$0a
    jsr $9c5b
    lda UNK_9
    beq B22_9963
    jsr $9bd4
    bcs B22_9968
    jmp $99ac
B22_9963:
    jsr $9ba2
    bcc B22_99ac
B22_9968:
    jsr $9c83
    jmp $999d
B22_996e:
    ldy #$09
    jsr $9c5b
    lda UNK_9
    beq B22_997f
    jsr $9bed
    bcc B22_9984
    jmp $999a
B22_997f:
    jsr $9bbb
    bcs B22_999a
B22_9984:
    ldy #$0a
    jsr $9c5b
    lda UNK_9
    beq B22_9995
    jsr $9bed
    bcs B22_999a
    jmp $99ac
B22_9995:
    jsr $9bbb
    bcc B22_99ac
B22_999a:
    jsr $9ca5
    jsr $9c08
    lda #$00
    ldy UNK_B
    beq B22_99a8
    lda #$02
B22_99a8:
    ora #$01
    clc
    rts
B22_99ac:
    lda #$00
    ldy UNK_B
    beq B22_99b4
    lda #$02
B22_99b4:
    clc
    rts
B22_99b6:
    lda #$00
    ldy UNK_B
    beq B22_99be
    sec
    rts
B22_99be:
    clc
    rts
B22_99c0:
    ldy #$0b
    jsr $9c5b
    lda UNK_9
    beq B22_99d1
    jsr $9bd4
    bcc B22_99d6
    jmp $99ec
B22_99d1:
    jsr $9ba2
    bcs B22_99ec
B22_99d6:
    ldy #$0c
    jsr $9c5b
    lda UNK_9
    beq B22_99e7
    jsr $9bd4
    bcs B22_99ec
    jmp $9a3d
B22_99e7:
    jsr $9ba2
    bcc B22_9a3d
B22_99ec:
    jsr $9c83
    jmp $9a21
B22_99f2:
    ldy #$0b
    jsr $9c5b
    lda UNK_9
    beq B22_9a03
    jsr $9bed
    bcc B22_9a08
    jmp $9a1e
B22_9a03:
    jsr $9bbb
    bcs B22_9a1e
B22_9a08:
    ldy #$0c
    jsr $9c5b
    lda UNK_9
    beq B22_9a19
    jsr $9bed
    bcs B22_9a1e
    jmp $9a3d
B22_9a19:
    jsr $9bbb
    bcc B22_9a3d
B22_9a1e:
    jsr $9ca5
B22_9a21:
    jsr $9c08
    lda #$00
    ldx UNK_D
    cpx #$08
    beq B22_9a30
    cpx #$07
    bne B22_9a34
B22_9a30:
    lda #$02
    clc
    rts
B22_9a34:
    clc
    lda UNK_B
    beq B22_9a3a
    sec
B22_9a3a:
    lda #$01
    rts
B22_9a3d:
    clc
    lda UNK_B
    beq B22_9a43
    sec
B22_9a43:
    lda #$00
    rts
B22_9a46:
    lda #$00
    clc
    rts
.byte $A0,$0D,$20,$5B,$9C,$20,$D4,$9B
.byte $B0,$0A,$A0,$0E,$20,$5B,$9C,$20
.byte $D4,$9B,$90,$12,$20,$08,$9C,$20
.byte $83,$9C,$A2,$02,$A5,$0D,$C9,$08
.byte $F0,$01,$CA,$8A,$18,$60,$A9,$00
.byte $18,$60,$A0,$0D,$20,$5B,$9C,$20
.byte $ED,$9B,$B0,$0A,$A0,$0E,$20,$5B
.byte $9C,$20,$ED,$9B,$90,$12,$20,$08
.byte $9C,$20,$A5,$9C,$A2,$02,$A4,$0D
.byte $C0,$07,$F0,$01,$CA,$8A,$18,$60
.byte $A9,$00,$18,$60
B22_9a9e:
    lda #$00
    sec
    rts
B22_9aa2:
    jsr $9c59
    jsr $9ba2
    tay
    lda #$00
    bcc B22_9ab9
    jsr $9c08
    lda #$09
    clc
    adc UNK_A
    sta UNK_A
    lda #$01
B22_9ab9:
    sec
    rts
B22_9abb:
    jsr $9c59
    jsr $9bd4
    tay
    lda #$00
    bcc B22_9ada
    cpy #$03
    bmi B22_9ace
    cpy #$07
    bpl B22_9ada
B22_9ace:
    jsr $9c08
    lda #$09
    clc
    adc UNK_A
    sta UNK_A
    lda #$01

B22_9ada:
    sec
    rts
B22_9adc:
    jsr $9c59
    jsr $9bbb
    tay
    lda #$00
    bcc B22_9af3
    jsr $9c08
    lda #$05
    clc
    adc UNK_A
    sta UNK_A
    lda #$01
B22_9af3:
    sec
    rts
B22_9af5:
    jsr $9c59
    jsr $9bed
    tay
    lda #$00
    bcc B22_9b14
    cpy #$03
    bmi B22_9b08
    cpy #$07
    bpl B22_9b14
B22_9b08:
    jsr $9c08
    lda #$05
    clc
    adc UNK_A
    sta UNK_A
    lda #$01

B22_9b14:
    sec
    rts
B22_9b16:
    ldx curr_object_slot
    ldy #$00
    jsr $9c79
    jsr B3F_f14d
    sta UNK_C
    bcs B22_9b30
    tax
    tya
    bmi B22_9b30
    beq B22_9b30
    cpx #$02
    bmi B22_9b30
    sec
    rts
B22_9b30:
    clc
    rts
B22_9b32:
    ldy #$00
    jsr $9c79
    jsr B3F_f241
    sta UNK_C
    sty tmp1
    cmp #$07
B22_9b40:
    bcs B22_9b40
    asl a
    tay
    lda $9b53, y
    sta script_jmp_addr
    lda $9b54, y
    sta script_jmp_addr+1
    jmp (script_jmp_addr)
    .addr $9B6B
    .addr $9B6B
    .addr $9B61
    .addr $9B61
    .addr $9B61
    .addr $9B61
    .addr $9B61
B22_9b61:
    ldy tmp1
    bmi B22_9b69
    cpy #$08
    bpl B22_9b6b
B22_9b69:
    sec
    rts
B22_9b6b:
    clc
    rts
B22_9b6d:
    ldy #$00
    jsr $9c79
    jsr B3F_f241
    sta UNK_C
    ldx curr_object_slot
    bcs B22_9b88
    lda kirby_0579_unknown_x_offset
    bmi B22_9b8f
    cmp #$09
    bcs B22_9b88
    lda #$00
    beq B22_9b8a
B22_9b88:
    lda #$01
B22_9b8a:
    sta OBJ_var7, x
    clc
    rts
B22_9b8f:
    lda OBJ_var7, x
    bne B22_9b88
    jsr $9eda
    bcc B22_9b88
    lda kirby_0579_unknown_x_offset
    cmp #$f8
    bcc B22_9b88
    sec
    rts
B22_9ba2:
    ldy #$00
    jsr $9c79
    jsr B3F_f4e2
    sta UNK_D
    bcs B22_9bb9
    tax
    tya
    bpl B22_9bb9
    cpx #$02
    bne B22_9bb9
    txa
    sec
    rts
B22_9bb9:
    clc
    rts
B22_9bbb:
    ldy #$02
    jsr $9c79
    jsr B3F_f39e
    sta UNK_D
    bcs B22_9bd2
    tax
    tya
    bmi B22_9bd2
    cpx #$02
    bne B22_9bd2
    txa
    sec
    rts
B22_9bd2:
    clc
    rts
B22_9bd4:
    ldy #$00
    jsr $9c79
    jsr B3F_f4e2
    sta UNK_D
    bcs B22_9beb
    tax
    tya
    bpl B22_9beb
    cpx #$02
    bmi B22_9beb
    txa
    sec
    rts
B22_9beb:
    clc
    rts
B22_9bed:
    ldy #$02
    jsr $9c79
    jsr B3F_f39e
    sta UNK_D
    bcs B22_9c06
    tax
    tya
    bmi B22_9c06
    beq B22_9c06
    cpx #$02
    bmi B22_9c06
    txa
    sec
    rts
B22_9c06:
    clc
    rts
B22_9c08:
    ldx a:curr_object_slot
    lda kirby_0579_unknown_x_offset
    clc
    adc a:OBJ_x_lo, x
    sta a:OBJ_x_lo, x
    sta OBJ_store_x_lo, x
    lda kirby_0579_unknown_x_offset+1
    adc a:OBJ_x_hi, x
    sta a:OBJ_x_hi, x
    sta OBJ_store_x_hi, x
    rts
B22_9c25:
    ldx a:curr_object_slot
    lda kirby_0579_unknown_x_offset
    clc
    adc a:OBJ_y_lo, x
    sta a:OBJ_y_lo, x
    sta OBJ_store_y_lo, x
    lda kirby_0579_unknown_x_offset+1
    adc a:OBJ_y_hi, x
    sta a:OBJ_y_hi, x
    sta OBJ_store_y_hi, x
    rts
B22_9c42:
    ldy #$01
    ldx a:curr_object_slot
    lda OBJ_vel_x_hi, x
    bpl B22_9c4f
    iny
    tya
    rts
B22_9c4f:
    bne B22_9c57
    lda OBJ_vel_x_lo, x
    bne B22_9c57
    dey
B22_9c57:
    tya
    rts
B22_9c59:
    ldy UNK_C
B22_9c5b:
    lda $9c6a, y
    clc
    adc UNK_E
    sta UNK_E
    lda #$00
    adc UNK_F
    sta UNK_F
    rts
.byte $02,$02
.byte $02,$06,$0A
.byte $06
.byte $0A,$0E,$10,$04,$04,$02,$04
.byte $12,$04
B22_9c79:
    lda (UNK_E), y
    tax
    iny
    lda (UNK_E), y
    tay
    jmp $9e67
B22_9c83:
    lda #$09
    ldy UNK_D
    cpy #$02
    beq B22_9c9f
    lda #$0d
    cpy #$03
    beq B22_9c9f
    lda #$11
    cpy #$05
    beq B22_9c9f
    lda #$11
    cpy #$07
    beq B22_9c9f
    lda #$1d
B22_9c9f:
    clc
    adc UNK_A
    sta UNK_A
    rts
B22_9ca5:
    lda #$05
    ldy UNK_D
    cpy #$02
    beq B22_9cc1
    lda #$0b
    cpy #$04
    beq B22_9cc1
    lda #$0f
    cpy #$06
    beq B22_9cc1
    lda #$1d
    cpy #$08
    beq B22_9cc1
    lda #$19
B22_9cc1:
    clc
    adc UNK_A
    sta UNK_A
    rts
B22_9cc7:
    lda $9cd2, y
    sta UNK_E
    lda $9ce0, y
    sta UNK_F
    rts

    incbinRange "../split/prg/bank22.bin", $1cd2, $1e67

B22_9e67:
    stx tmp0+1
    ldx a:curr_object_slot
    lda tmp0+1
    bmi B22_9e80
    clc
    adc a:OBJ_x_lo, x
    pha
    lda a:OBJ_x_hi, x
    adc #$00
    sta a:temp_x_hi
    jmp $9e8d
B22_9e80:
    clc
    adc a:OBJ_x_lo, x
    pha
    lda a:OBJ_x_hi, x
    sbc #$00
    sta a:temp_x_hi
B22_9e8d:
    tya
    bmi B22_9ea0
    clc
    adc a:OBJ_y_lo, x
    tay
    lda a:OBJ_y_hi, x
    adc #$00
    sta a:temp_y_hi
    jmp $9ead
B22_9ea0:
    clc
    adc a:OBJ_y_lo, x
    tay
    lda a:OBJ_y_hi, x
    sbc #$00
    sta a:temp_y_hi
B22_9ead:
    pla
    tax
    rts
.byte $84,$12,$A8,$A6,$6E,$BD,$F2,$60
.byte $10,$0A,$B9,$CE,$9E,$AA,$A4,$12
.byte $20,$5A,$9E,$60,$B9,$D4,$9E,$AA
.byte $A4,$12,$20,$5A,$9E,$60,$F9,$FD
.byte $00,$04,$F6,$08,$07,$04,$00,$FD
.byte $0A,$F8
B22_9eda:
    lda UNK_C
    cmp #$02
    bne B22_9ee7
    lda OBJ_vel_y_hi, x
    bpl B22_9f60
    bmi B22_9f64
B22_9ee7:
    cmp #$05
    bne B22_9efc
    lda OBJ_vel_x_lo, x
    clc
    adc OBJ_vel_y_lo, x
    lda OBJ_vel_x_hi, x
    adc OBJ_vel_y_hi, x
    bpl B22_9f60
    bmi B22_9f64
B22_9efc:
    cmp #$06
    bne B22_9f20
    lda OBJ_vel_x_lo, x
    eor #$ff
    clc
    adc #$01
    tay
    lda OBJ_vel_x_hi, x
    eor #$ff
    adc #$00
    sta UNK_0
    tya
    clc
    adc OBJ_vel_y_lo, x
    lda UNK_0
    adc OBJ_vel_y_hi, x
    bpl B22_9f60
    bmi B22_9f64
B22_9f20:
    cmp #$03
    bne B22_9f3d
    lda OBJ_vel_x_hi, x
    asl a
    lda OBJ_vel_x_hi, x
    ror a
    tay
    lda OBJ_vel_x_lo, x
    ror a
    clc
    adc OBJ_vel_y_lo, x
    tya
    adc OBJ_vel_y_hi, x
    bpl B22_9f60
    bmi B22_9f64
B22_9f3d:
    lda OBJ_vel_x_lo, x
    eor #$ff
    clc
    adc #$01
    sta UNK_0
    lda OBJ_vel_x_hi, x
    eor #$ff
    adc #$00
    tay
    asl a
    tya
    ror a
    tay
    lda UNK_0
    ror a
    clc
    adc OBJ_vel_y_lo, x
    tya
    adc OBJ_vel_y_hi, x
    bmi B22_9f64
B22_9f60:
    sec
    lda tmp0
    rts

B22_9f64:
    clc
    lda tmp0
    rts

    .incbin "../split/prg/bank22.bin", $1f68