.segment "PRG3A": absolute
.byte $06,$10,$1A,$DE,$85,$3A,$2A,$66
.byte $00,$2B,$9A,$00,$3A,$02,$00,$C0
.byte $80,$FF,$01,$06,$51,$04,$71,$02
.byte $C0,$C0,$FF,$01,$02,$51,$04,$51
.byte $FF,$51,$05,$51,$FF,$02,$00

B3A_8027:
    ora (OBJ_x_hi+14), y
    ora ($fc, x)
    ora (UNK_2+2, x)
    dec temp_y_hi, x
    cmp #$02
    .byte $19
B3A_8032:
    ora (OBJ_x_hi+14), y
    ora (UNK_0, x)
    ora (UNK_2+2, x)
    dec OBJ_x_hi+2, x
    cmp #$02
    ora OBJ_x_hi+14, y
    dec $61ef
    lda $61ef
    beq @exit
    inx
    @exit:
    txa
    rts

B3A_804a:
    ldx curr_object_slot
    lda $07b1
    cmp #$0a
    bcc @exit
    lda #$0a
    @exit:
    sta $61ee, x
    rts

B3A_8059:
    jsr B3A_80d9
    beq B3A_806c
    ldx curr_object_slot
    lda #.BANK(L_3BA22E)
    sta $6031
    lda #.LOBYTE(L_3BA22E)
    ldy #.HIBYTE(L_3BA22E)
    jmp OBJ_TryReplaceScriptPc
B3A_806c:
    lda $61cc
    bne B3A_808d
    ldx #$00
    lda a:pad_hold
    and #$c0
    beq B3A_80c0
    inx
    txa
    sta $61cc
    ldx curr_object_slot
    lda #.BANK(L_3BA204)
    sta $6031
    lda #.LOBYTE(L_3BA204)
    ldy #.HIBYTE(L_3BA204)
    jmp OBJ_TryReplaceScriptPc
B3A_808d:
    ldx #$00
    lda a:pad_hold
    and #$c0
    bne B3A_80a8
    txa
    sta $61cc
    ldx curr_object_slot
    lda #.BANK(L_3BA1D8)
    sta $6031
    lda #.LOBYTE(L_3BA1D8)
    ldy #.HIBYTE(L_3BA1D8)
    jmp OBJ_TryReplaceScriptPc
B3A_80a8:
    lda $624a
    beq B3A_80d8
    lda #$00
    sta $624a
    ldx curr_object_slot
    lda #.BANK(L_3BA20E)
    sta $6031
    lda #.LOBYTE(L_3BA20E)
    ldy #.HIBYTE(L_3BA20E)
    jmp OBJ_TryReplaceScriptPc
B3A_80c0:
    lda $624a
    beq B3A_80d8
    lda #$00
    sta $624a
    ldx curr_object_slot
    lda #.BANK(L_3BA1F8)
    sta $6031
    lda #.LOBYTE(L_3BA1F8)
    ldy #.HIBYTE(L_3BA1F8)
    jmp OBJ_TryReplaceScriptPc
B3A_80d8:
    rts

B3A_80d9:
    ldx #$00
    lda $07b2
    bne B3A_80ea
    lda $07b0
    cmp #$1e
    bcc B3A_80eb
    jmp B3A_80ed
B3A_80ea:
    inx
B3A_80eb:
    txa
    rts

B3A_80ed:
    ldx #$00
    ldy #$05
B3A_80f1:
    lda $6128, y
    cmp #$ff
    bne B3A_8101
    cpy #$10
    bcs B3A_8100
    iny
    jmp B3A_80f1
B3A_8100:
    inx
B3A_8101:
    txa
    rts

B3A_8103:
    jsr B3A_8113
    tax
    lda B3A_810f, x
    jsr $f859
    txa
    rts

B3A_810f:
.byte $2E,$30,$30,$2F

B3A_8113:
    ldx #$00
    lda $07b1
    beq B3A_8126
    inx
    ldy $07b2
    bne B3A_8126
    inx
    cmp #$1e
    bcc B3A_8126
    inx
B3A_8126:
    txa
    rts

B3A_8128:
    ldx #$00
    lda $07b2
    bne B3A_8138
    lda $07b0
    cmp #$1e
    bcs B3A_8137
    rts
B3A_8137:
    inx
B3A_8138:
    inx
    stx $07af
    ldx curr_object_slot
    lda #.BANK(L_3BA0ED)
    sta $6031
    lda #.LOBYTE(L_3BA0ED)
    ldy #.HIBYTE(L_3BA0ED)
    jmp OBJ_TryReplaceScriptPc

B3A_814a:
    lda a:pad_press
    and #$c0
    beq @exit
    ldx curr_object_slot
    lda #.BANK(L_3BA068)
    sta $6031
    lda #.LOBYTE(L_3BA068)
    ldy #.HIBYTE(L_3BA068)
    jmp OBJ_TryReplaceScriptPc
    @exit:
    rts

B3A_8160:
    incbinRange "../split/prg/bank3a.bin", $160, $25f

B3A_825f:
    incbinRange "../split/prg/bank3a.bin", $25f, $337

B3A_8337:
    incbinRange "../split/prg/bank3a.bin", $337, $55e

B3A_855e:
    incbinRange "../split/prg/bank3a.bin", $55e, $5de

B3A_85de:
    .incbin "../split/prg/bank3a.bin", $5de