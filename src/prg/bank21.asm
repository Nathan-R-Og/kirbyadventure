.segment "PRG21": absolute

    incbinRange "../split/prg/bank21.bin", 0, $15

B21_8015:
    ldx #$00
    lda kirby_05E4
    bmi B21_801d
    inx
B21_801d:
    txa
    rts
B21_801f:
    ldx kirby_05E4
    lda $8045, x
    bmi B21_802e
    ldy #$01
    clc
    adc (script_ptr), y
    bcc B21_8036
B21_802e:
    jsr $8ffb
    asl a
    ldy #$02
    adc (script_ptr), y
B21_8036:
    jsr $8fe6
    lda script_ptr
    clc
    adc #$02
    sta script_ptr
    bcc B21_8044
    inc script_ptr+1
B21_8044:
    rts
.byte $00,$02,$FF,$04
B21_8049:
    jsr $872a
    jsr $8874
    jsr $95cd
    jsr $9021
    jsr $9016
    jmp $904a
B21_805b:
    lda kirby_yellow_flash_timer
    beq B21_8068
    bmi B21_8068
    dec kirby_yellow_flash_timer
    lda kirby_yellow_flash_timer
B21_8068:
    and #$04
    sta kirby_05F2
    jsr $9a8b
    jsr $80fd
    jsr $80c0
    ldx #$00
    lda kirby_05E1
    cmp #$06
    bne B21_8080
    inx
B21_8080:
    lda OBJ_store_y_lo+1
    clc
    adc $80bc, x
    sta kirby_hitbox_y
    lda OBJ_store_y_hi+1
    adc #$00
    sta kirby_hitbox_y+1
    lda $80be, x
    sta kirby_hitbox_height
    lda temp_pad1_press
    and #$10
    beq B21_80b1
    lda kirby_flags
    bmi B21_80b1
    ldx #$00
    stx OBJ_min_slot
    inx
    stx OBJ_max_slot
    lda #$09
    jsr OBJ_New
B21_80b1:
    lda kirby_health
    bpl B21_80bb
    ldx #$ee
    jmp $8cee
B21_80bb:
    rts
.byte $00,$06,$04,$01
B21_80c0:
    ldx #$00
    lda kirby_vel_y+1
    bpl B21_80c8
    inx
B21_80c8:
    ldy $80fb, x
    ldx #$00
    jsr $9d01
    jsr B3F_ed9c
    cmp #$0e
    bne B21_80eb
    lda kirby_flags
    bmi B21_80eb
    lda kirby_yellow_flash_timer
    bne B21_80eb
    bit kirby_flags
    bvs B21_80eb
    jsr B3F_e2c4
    bcc B21_80ec
B21_80eb:
    rts
B21_80ec:
    lda #$08
    jsr $9dfd
    lda #$04
    sta OBJ_var0+1
    ldx #$ed
    jmp $8cee
.byte $00,$00
B21_80fd:
    lda kirby_underwater_flag
    beq B21_8109
    lda frame_counter
    and #$3f
    beq B21_810a
B21_8109:
    rts
B21_810a:
    lda #$0e
    sta new_object_var3
    jmp $9955
B21_8112:
    lda OBJ_var1+1
    bpl B21_812d
    lda kirby_vel_x
    eor #$ff
    clc
    adc #$01
    sta kirby_vel_x_abs
    lda kirby_vel_x+1
    eor #$ff
    adc #$00
    sta kirby_vel_x_abs+1
    rts
B21_812d:
    lda kirby_vel_x
    sta kirby_vel_x_abs
    lda kirby_vel_x+1
    sta kirby_vel_x_abs+1
    rts
B21_813a:
    lda kirby_slope_state
    cmp #$05
    bne B21_8162
    lda kirby_vel_x
    and #$f0
    sta tmp0
    lda kirby_vel_x+1
    and #$0f
    lsr a
    ora tmp0
    ror a
    ror a
    ror a
    ror a
    tax
    lda $836f, x
    sta OBJ_vel_x_lo+1
    lda $846f, x
    sta OBJ_vel_x_hi+1
    rts
B21_8162:
    lda kirby_vel_x
    sta OBJ_vel_x_lo+1
    lda kirby_vel_x+1
    sta OBJ_vel_x_hi+1
    rts


    incbinRange "../split/prg/bank21.bin", $16f, $56f

B21_856f:
    lda OBJ_var1+1
    bpl B21_858a
    lda kirby_vel_x_abs
    eor #$ff
    clc
    adc #$01
    sta kirby_vel_x
    lda kirby_vel_x_abs+1
    eor #$ff
    adc #$00
    sta kirby_vel_x+1
    rts
B21_858a:
    lda kirby_vel_x_abs
    sta kirby_vel_x
    lda kirby_vel_x_abs+1
    sta kirby_vel_x+1
    rts
B21_8597:
    pha
    lda $8629, y
    sta UNK_2
    lda $864e, y
    sta UNK_3
    lda $8673, y
    sta UNK_0
    lda $8698, y
    sta UNK_1
    pla
    beq B21_85f2
    lda kirby_vel_x_abs+1
    bmi B21_85c7
    lda UNK_0
    sec
    sbc kirby_vel_x_abs
    lda UNK_1
    sbc kirby_vel_x_abs+1
    bcs B21_85c7
    lda $86bd, y
    beq B21_85f2
    rts
B21_85c7:
    lda UNK_2
    clc
    adc kirby_vel_x_abs
    sta kirby_vel_x_abs
    bcc B21_85d5
    inc kirby_vel_x_abs+1
B21_85d5:
    lda kirby_vel_x_abs+1
    bmi B21_85f1
    lda UNK_0
    sec
    sbc kirby_vel_x_abs
    lda UNK_1
    sbc kirby_vel_x_abs+1
    bcs B21_85f1
    lda UNK_0
    sta kirby_vel_x_abs
    lda UNK_1
    sta kirby_vel_x_abs+1
B21_85f1:
    rts
B21_85f2:
    lda kirby_vel_x_abs+1
    bmi B21_8613
    lda kirby_vel_x_abs
    sec
    sbc UNK_3
    sta kirby_vel_x_abs
    lda kirby_vel_x_abs+1
    sbc #$00
    sta kirby_vel_x_abs+1
    bcs B21_8612
    lda #$00
    sta kirby_vel_x_abs
    sta kirby_vel_x_abs+1
B21_8612:
    rts
B21_8613:
    lda kirby_vel_x_abs
    clc
    adc UNK_3
    sta kirby_vel_x_abs
    bcc B21_8628
    inc kirby_vel_x_abs+1
    bne B21_8628
    lda #$00
    sta kirby_vel_x_abs
B21_8628:
    rts


    incbinRange "../split/prg/bank21.bin", $629, $6e2

B21_86e2:
    sta tmp0
    sty tmp1
    lda kirby_vel_x_abs+1
    bmi B21_86f9
    cmp tmp1
    bcc B21_86f8
    bne B21_86f8
    lda kirby_vel_x_abs
    cmp tmp0
    beq B21_86f9
B21_86f8:
    rts
B21_86f9:
    clc
    rts
B21_86fb:
    lda #$00
    sta OBJ_vel_x_lo+1
    sta OBJ_vel_x_hi+1
    sta kirby_vel_x
    sta kirby_vel_x+1
    sta kirby_vel_x_abs
    sta kirby_vel_x_abs+1
    rts
B21_8710:
    ldy #$01
    lda (script_ptr), y
    sta kirby_vel_x_abs
    iny
    lda (script_ptr), y
    sta kirby_vel_x_abs+1
    tya
    clc
    adc script_ptr
    sta script_ptr
    bcc B21_8727
    inc script_ptr+1
B21_8727:
    jmp $856f
B21_872a:
    jsr $8112
    ldx kirby_underwater_flag
    beq B21_8734
    ldx #$01
B21_8734:
    ldy $873c, x
    lda #$00
    jmp $8597
.byte $0A,$13
B21_873e:
    lda temp_pad1_hold
    and #$03
    beq B21_8746
    lda #$01
B21_8746:
    ldy #$0a
    jmp $8597
B21_874b:
    lda temp_pad1_hold
    and #$03
    beq B21_8753
    lda #$01
B21_8753:
    ldy #$13
    jmp $8597
B21_8758:
    lda temp_pad1_hold
    and #$03
    beq B21_8760
    lda #$01
B21_8760:
    ldy #$0c
    jmp $8597
B21_8765:
    jsr $8112
    jsr $9899
    tya
    ldx kirby_05F8
    clc
    adc $877f, x
    tay
    jsr $98c3
    lda temp_pad1_hold
    and $8000, x
    jmp $8597
.byte $00,$1A
B21_8781:
    jsr $8112
    jsr $9899
    tya
    ldx kirby_05F8
    clc
    adc $879b, x
    tay
    jsr $98c3
    lda temp_pad1_hold
    and $8000, x
    jmp $8597
.byte $05,$1F
B21_879d:
    jsr $8112
    ldx kirby_05F8
    ldy $87ab, x
    lda #$00
    jmp $8597
.byte $0B
.byte $24
B21_87ad:
    lda kirby_vel_y
    sta OBJ_vel_y_lo+1
    lda kirby_vel_y+1
    sta OBJ_vel_y_hi+1
    rts
B21_87ba:
    lda $8802, y
    clc
    adc kirby_vel_y
    sta kirby_vel_y
    lda $8813, y
    adc kirby_vel_y+1
    sta kirby_vel_y+1
    lda $8813, y
    bmi B21_87e4
    lda kirby_vel_y
    sec
    sbc $8824, y
    lda kirby_vel_y+1
    bmi B21_87e3
    sbc $8835, y
    bcs B21_87f5
B21_87e3:
    rts
B21_87e4:
    lda kirby_vel_y
    sec
    sbc $8824, y
    lda kirby_vel_y+1
    bpl B21_8801
    sbc $8835, y
    bcs B21_8801
B21_87f5:
    lda $8824, y
    sta kirby_vel_y
    lda $8835, y
    sta kirby_vel_y+1
B21_8801:
    rts

    incbinRange "../split/prg/bank21.bin", $802, $846

B21_8846:
    sta kirby_vel_y
    stx kirby_vel_y+1
    rts
B21_884d:
    lda #$00
    sta OBJ_vel_y_lo+1
    sta OBJ_vel_y_hi+1
    sta kirby_vel_y
    sta kirby_vel_y+1
    rts
B21_885c:
    ldy #$01
    lda (script_ptr), y
    sta kirby_vel_y
    iny
    lda (script_ptr), y
    sta kirby_vel_y+1
    tya
    clc
    adc script_ptr
    sta script_ptr
    bcc B21_8873
    inc script_ptr+1
B21_8873:
    rts
B21_8874:
    ldx kirby_underwater_flag
    beq B21_887b
    ldx #$01
B21_887b:
    ldy $8881, x
    jmp $87ba
.byte $00,$02
B21_8883:
    lda kirby_swim_up_timer
    beq B21_888d
    dec kirby_swim_up_timer
    bne B21_889f
B21_888d:
    lda temp_pad1_hold
    and #$88
    beq B21_889f
    lda #$00
    ldx #$ff
    jsr $8846
    lda #$0f
    sta kirby_swim_up_timer
B21_889f:
    ldx #$00
    lda temp_pad1_hold
    and #$04
    beq B21_88a8
    inx
B21_88a8:
    ldy $88ae, x
    jmp $87ba
.byte $02,$04
B21_88b0:
    ldx #$00
    lda temp_pad1_hold
    and #$88
    beq B21_88b9
    inx
B21_88b9:
    ldy $88bf, x
    jmp $87ba
.byte $01,$08
B21_88c1:
    lda kirby_vel_y+1
    bpl B21_88c8
    clc
    rts
B21_88c8:
    sec
    rts
B21_88ca:
    lda kirby_flags
    and #$08
    bne B21_88d3
    clc
    rts
B21_88d3:
    sec
    rts
B21_88d5:
    lda kirby_05E4
    bpl B21_88dc
    clc
    rts
B21_88dc:
    sec
    rts
B21_88de:
    lda temp_pad1_hold
    and #$08
    beq B21_88e8
    lda #$04
    bne B21_8915
B21_88e8:
    lda temp_pad1_hold
    and #$04
    beq B21_88f2
    lda #$05
    bne B21_8915
B21_88f2:
    lda temp_pad1_hold
    and #$01
    beq B21_88fe
    lda #$00
    ldx #$40
    bne B21_8908
B21_88fe:
    lda temp_pad1_hold
    and #$02
    beq B21_891f
    lda #$01
    ldx #$c0
B21_8908:
    stx OBJ_var1+1
    ldx kirby_slope_state
    cpx #$00
    beq B21_8915
    clc
    adc #$02
B21_8915:
    cmp OBJ_var0+1
    beq B21_891f
    sta OBJ_var0+1
    sec
    rts
B21_891f:
    clc
    rts
B21_8921:
    lda inhaled_count
    beq B21_892d
    lda inhaling_count
    bne B21_892d
    sec
    rts
B21_892d:
    clc
    rts
B21_892f:
    lda OBJ_var2+1
    beq B21_8939
    dec OBJ_var2+1
    bpl B21_894b
B21_8939:
    lda temp_pad1_hold
    and #$40
    bne B21_894b
    lda inhaled_count
    bne B21_894b
    lda inhaling_count
    bne B21_894b
    sec
    rts
B21_894b:
    clc
    rts
B21_894d:
    lda temp_pad1_hold
    and #$88
    bne B21_8955
    clc
    rts
B21_8955:
    sec
    rts
B21_8957:
    lda temp_pad1_press
    and #$20
    bne B21_895f
B21_895d:
    clc
    rts
B21_895f:
    lda kirby_flags
    and #$20
    bne B21_895d
    lda #$28
    jsr PlaySoundEffect
    jsr $9e72
    jsr $9e8d
    jsr $9a83
    lda #$ff
    sta kirby_copy_ability
    lda #$00
    sta ability_uses
    sec
    rts
B21_8980:
    lda temp_pad1_hold
    and #$04
    beq B21_899c
    ldy #$07
    ldx #$fa
    jsr $9d01
    jsr B3F_ed91
    bcc B21_899c
    ldy #$07
    ldx #$06
    jsr $9d01
    jmp B3F_ed91
B21_899c:
    clc
    rts
B21_899e:
    lda kirby_underwater_flag
    bne B21_89d7
    jsr $9ced
    jsr B3F_eedb
    bcc B21_89d8
    jsr B3F_e2c4
    bcs B21_89b2
    sec
    rts

B21_89b2:
    lda #$01
    sta kirby_underwater_flag
    ldx OBJ_store_x_lo+1
    lda OBJ_store_x_hi+1
    sta new_object_x_hi
    lda OBJ_store_y_lo+1
    sec
    sbc #$08
    tay
    lda OBJ_store_y_hi+1
    sbc #$00
    sta new_object_y_hi
    lda #$04
    sta new_object_var3
    jsr $9955
B21_89d7:
    clc
B21_89d8:
    rts
B21_89d9:
    lda kirby_underwater_flag
    beq B21_89e0
    clc
    rts
B21_89e0:
    jsr $9ced
    jmp B3F_eedb
B21_89e6:
    lda kirby_underwater_flag
    bne B21_89ed
B21_89eb:
    clc
    rts
B21_89ed:
    jsr $9ced
    jsr B3F_eedb
    bcs B21_89eb
    sec
    rts
B21_89f7:
    lda temp_pad1_hold
    and #$88
    bne B21_89ff
    clc
    rts
B21_89ff:
    lda #$00
    sta kirby_swim_up_timer
    sec
    rts
B21_8a06:
    jsr $9bbe
    cmp kirby_swim_direction
    bne B21_8a10
    clc
    rts
B21_8a10:
    sta kirby_swim_direction
    sec
    rts
B21_8a15:
    lda temp_pad1_hold
    and #$08
    bne B21_8a1d
    clc
    rts
B21_8a1d:
    jsr $9ced
    jmp B3F_eda2
B21_8a23:
    lda kirby_vel_x_abs+1
    bne B21_8a2f
    lda kirby_vel_x_abs
    cmp #$c0
    bcc B21_8a31
B21_8a2f:
    clc
    rts
B21_8a31:
    jsr $86fb
    sec
    rts
B21_8a36:
    lda temp_pad1_hold
    and #$04
    beq B21_8a3e
    clc
    rts
B21_8a3e:
    sec
    rts
B21_8a40:
    lda temp_pad1_hold
    and #$80
    beq B21_8a48
    clc
    rts
B21_8a48:
    sec
    rts
B21_8a4a:
    lda temp_pad1_hold
    and #$03
    bne B21_8a5b
    lda #$4c
    ldy #$01
    jsr $86e2
    bcs B21_8a5b
    sec
    rts
B21_8a5b:
    clc
    rts
B21_8a5d:
    jsr $8ffb
    cpx kirby_last_slope_index
    stx kirby_last_slope_index
    bne B21_8a6a
    clc
    rts
B21_8a6a:
    sec
    rts
B21_8a6c:
    lda kirby_vel_x_abs
    ora kirby_vel_x_abs+1
    beq B21_8a76
    clc
    rts
B21_8a76:
    sec
    rts
B21_8a78:
    jsr $98c3
    lda temp_pad1_hold
    and $8001, x
    bne B21_8a84
    clc
    rts
B21_8a84:
    sec
    rts
B21_8a86:
    ldx #$01
    lda temp_pad1_hold
    and #$02
    bne B21_8a96
    dex
    lda temp_pad1_hold
    and #$01
    bne B21_8a96
    dex
B21_8a96:
    bit kirby_flags
    bvc B21_8aac
    lda #$00
    sta UNK_0
    lda OBJ_var1+1
    bpl B21_8ad8
    inc UNK_0
    cpx UNK_0
    bne B21_8abe
    sec
    rts
B21_8aac:
    txa
    bpl B21_8ac0
    ldx kirby_05BF
    bmi B21_8abe
    inx
    cpx #$10
    bcc B21_8abb
    ldx #$ff
B21_8abb:
    stx kirby_05BF
B21_8abe:
    clc
    rts
B21_8ac0:
    ldy kirby_05BF
    lda #$00
    sta kirby_05BF
    tya
    bmi B21_8abe
    beq B21_8abe
    lda #$00
    sta UNK_0
    lda OBJ_var1+1
    bpl B21_8ad8
    inc UNK_0
B21_8ad8:
    cpx UNK_0
    bne B21_8abe
    sec
    rts
B21_8ade:
    lda temp_pad1_press
    and #$c0
    bne B21_8ae6
    clc
    rts
B21_8ae6:
    sec
    rts
B21_8ae8:
    lda temp_pad1_press
    and #$80
    bne B21_8af0
    clc
    rts
B21_8af0:
    sec
    rts
B21_8af2:
    lda temp_pad1_press
    and #$40
    beq B21_8afa
    sec
    rts
B21_8afa:
    clc
    rts
B21_8afc:
    lda temp_pad1_hold
    and #$40
    bne B21_8b04
    sec
    rts
B21_8b04:
    clc
    rts
B21_8b06:
    lda temp_pad1_hold
    and #$08
    bne B21_8b0e
    clc
    rts
B21_8b0e:
    sec
    rts
B21_8b10:
    lda temp_pad1_hold
    and #$04
    bne B21_8b18
    clc
    rts
B21_8b18:
    sec
    rts
B21_8b1a:
    lda temp_pad1_hold
    and #$02
    beq B21_8b33
    ldx #$f8
    ldy #$fa
    jsr $9d01
    jsr B3F_f39e
    bcs B21_8b4a
    tya
    beq B21_8b4c
    bpl B21_8b4c
    bmi B21_8b4a
B21_8b33:
    lda temp_pad1_hold
    and #$01
    beq B21_8b4c
    ldx #$08
    ldy #$fa
    jsr $9d01
    jsr B3F_f4e2
    bcs B21_8b4a
    tya
    beq B21_8b4c
    bmi B21_8b4c
B21_8b4a:
    sec
    rts
B21_8b4c:
    clc
    rts
B21_8b4e:
    lda #$00
    sta kirby_78E7
    jsr $92af
    bcs B21_8b63
    ldy kirby_0579_unknown_x_offset
    cpy #$0a
    bcc B21_8b85
    cpy #$f6
    bcs B21_8b85
B21_8b63:
    jsr $92ba
    bcs B21_8b73
    ldy kirby_0579_unknown_x_offset
    cpy #$0a
    bcc B21_8b85
    cpy #$f6
    bcs B21_8b85
B21_8b73:
    jsr $92ef
    bcs B21_8b83
    ldy kirby_0579_unknown_x_offset
    cpy #$0a
    bcc B21_8b85
    cpy #$f6
    bcs B21_8b85
B21_8b83:
    sec
    rts
B21_8b85:
    jsr $93b8
    ldx #$00
    lda kirby_05F3
    bpl B21_8b90
    dex
B21_8b90:
    clc
    adc a:OBJ_y_lo+1
    sta a:OBJ_y_lo+1
    sta OBJ_store_y_lo+1
    txa
    adc a:OBJ_y_hi+1
    sta a:OBJ_y_hi+1
    sta OBJ_store_y_hi+1
    lda #$80
    sta a:OBJ_y_frac+1
    clc
    rts
B21_8bab:
    jsr $91c2
    bcs B21_8bb1
    rts
B21_8bb1:
    jsr $8bb9
    jsr $884d
    sec
    rts
B21_8bb9:
    lda kirby_05E1
    cmp #$09
    beq B21_8bd2
    lda kirby_vel_y
    sec
    sbc #$b3
    lda kirby_vel_y+1
    sbc #$00
    bcc B21_8bd2
    lda #$02
    sta kirby_05E4
B21_8bd2:
    rts
B21_8bd3:
    jsr $905c
    bcs B21_8bd9
    rts
B21_8bd9:
    tay
    lda kirby_vel_y
    sec
    sbc #$4d
    lda kirby_vel_y+1
    bpl B21_8bee
    sbc #$ff
    bcs B21_8bee
    lda #$00
    sta kirby_05E4
B21_8bee:
    cpy #$02
    beq B21_8bf5
    jsr $86fb
B21_8bf5:
    jsr $884d
    sec
    rts
B21_8bfa:
    jsr $9128
    bcs B21_8c00
    rts
B21_8c00:
    jsr $98c3
    stx tmp0+1
    jsr $98cc
    cpx tmp0+1
    beq B21_8c0e
    clc
    rts
B21_8c0e:
    jsr $8c16
    jsr $86fb
    sec
    rts
B21_8c16:
    lda kirby_vel_x_abs
    sec
    sbc #$b3
    lda kirby_vel_x_abs+1
    sbc #$00
    bcc B21_8c2c
    jsr $98cc
    lda $8c2d, x
    sta kirby_05E4
B21_8c2c:
    rts
.byte $01,$03
B21_8c2f:
    jsr $8c39
    bcc B21_8c38
    jsr $86fb
    sec
B21_8c38:
    rts
B21_8c39:
    ldx OBJ_store_x_lo+1
    ldy OBJ_store_x_hi+1
    lda kirby_vel_x+1
    bmi B21_8c55
    ora kirby_vel_x
    beq B21_8c5f
    cpx maximum_kirby_x
    bne B21_8c53
    cpy maximum_kirby_x+1
    beq B21_8c5f
B21_8c53:
    clc
    rts
B21_8c55:
    cpx minimum_kirby_x
    bne B21_8c53
    cpy minimum_kirby_x+1
    bne B21_8c53
B21_8c5f:
    sec
    rts
B21_8c61:
    lda kirby_vel_y+1
    bpl B21_8c7b
    lda OBJ_store_y_lo+1
    cmp minimum_kirby_y
    bne B21_8c7b
    lda OBJ_store_y_hi+1
    cmp minimum_kirby_y+1
    bne B21_8c7b
    jsr $884d
    sec
    rts
B21_8c7b:
    clc
    rts
B21_8c7d:
    lda UNK_5E2
    bpl B21_8cd7
    lda OBJ_store_x_lo+1
    and #$0f
    cmp #$02
    bcc B21_8cd7
    cmp #$0f
    bcs B21_8cd7
    lda temp_pad1_hold
    and #$08
    beq B21_8cb4
    ldx OBJ_store_x_lo+1
    lda OBJ_store_x_hi+1
    sta temp_x_hi
    lda OBJ_store_y_lo+1
    clc
    adc #$06
    tay
    lda OBJ_store_y_hi+1
    adc #$00
    sta temp_y_hi
    jsr B3F_ed9c
    cmp #$01
    beq B21_8cd9
    bne B21_8cd7
B21_8cb4:
    lda temp_pad1_hold
    and #$04
    beq B21_8cd7
    ldx OBJ_store_x_lo+1
    lda OBJ_store_x_hi+1
    sta temp_x_hi
    lda OBJ_store_y_lo+1
    clc
    adc #$07
    tay
    lda OBJ_store_y_hi+1
    adc #$00
    sta temp_y_hi
    jsr B3F_ed9c
    cmp #$01
    beq B21_8cd9
B21_8cd7:
    clc
    rts
B21_8cd9:
    lda OBJ_store_x_lo+1
    and #$f0
    ora #$08
    sta a:OBJ_x_lo+1
    sta OBJ_store_x_lo+1
    sec
    rts
B21_8ce8:
    jsr $8cee
    jmp $805b
B21_8cee:
    lda KirbyStateLookupBank, x
    sta script_bank
    lda KirbyStateLookupLo, x
    ldy KirbyStateLookupHi, x
    ldx curr_object_slot
    jmp OBJ_TryReplaceScriptPc



    ; Kirby state ID --> ActionScript pointer
    .feature line_continuations +
    .define KIRBYSTATEPTRTABLE\
        KST00_EnterDoor,\
        KST01_DiscardAbility,\
        KST02_Land,\
        KST03_Idle,\
        KST04_BeginWalk,\
        KST05_Walk,\
        KST06_BeginDash,\
        KST07_Dash,\
        KST08_Skid,\
        KST09_Jump,\
        KST0A_JumpPeak,\
        KST0B_Fall,\
        KST0C_LandHeadEnemy,\
        KST0D_LandHead,\
        KST0E_DropThrough,\
        KST0F_Crouch,\
        KST10_SlideAttack,\
        KST11_Ladder,\
        KST12_HoverBegin,\
        KST13_HoverRise,\
        KST14_HoverUnderwater,\
        KST15_HoverWaterSurface,\
        KST16_HoverSpit,\
        KST17_WaterEnter,\
        KST18_WaterIdle,\
        KST19_WaterWalk,\
        KST1A_WaterSwim,\
        KST1B_WaterGun,\
        KST1C_WaterGunChangeDir,\
        KST1D_WaterSurface,\
        KST1E_CopyLand,\
        KST1F_CopyIdle,\
        KST20_CopyBeginWalk,\
        KST21_CopyWalk,\
        KST22_CopyBeginDash,\
        KST23_CopyDash,\
        KST24_CopySkid,\
        KST25_CopyJump,\
        KST26_CopyJumpPeak,\
        KST27_CopyFall,\
        KST28_CopyLandHeadEnemy,\
        KST29_CopyLandHead,\
        KST2A_CopyDropThrough,\
        KST2B_Crouch,\
        KST2C_CopySlideAttack,\
        KST2D_Ladder,\
        KST2E_CopyHoverBegin,\
        KST2F_CopyHoverRise,\
        KST30_CopyHoverUnderwater,\
        KST31_CopyHoverWaterSurface,\
        KST32_CopyHoverSpit,\
        KST33_CopyWaterEnter,\
        KST34_CopyWaterIdle,\
        KST35_CopyWaterWalk,\
        KST36_CopyWaterSwim,\
        KST37_CopyWaterGun,\
        KST38_CopyWaterGunChangeDir,\
        KST39_CopyWaterSurface,\
        $16A000,\
        $16A054,\
        $16A05C,\
        $16A064,\
        $16A06C,\
        $18AC39,\
        $18AC4A,\
        KST41_HiJumpCancel,\
        $16A16F,\
        $16A29A,\
        $16A317,\
        $18A892,\
        $18A977,\
        $18A922,\
        $18A9D2,\
        $18AA05,\
        $16A3D9,\
        $18ACD7,\
        $18AEC1,\
        $18AEE1,\
        $18AF74,\
        $18AFE4,\
        $18AFEE,\
        $18B0E1,\
        $18B0EC,\
        $18B160,\
        $18B1BD,\
        $18B1D4,\
        $18B23D,\
        $18B24D,\
        $18B29D,\
        $18B32E,\
        $18B4A8,\
        $18B4B8,\
        $18B512,\
        $18B5C3,\
        $18B5E8,\
        $18B66D,\
        KST60_SwordLand,\
        KST61_SwordIdle,\
        KST62_SwordBeginWalk,\
        KST63_SwordWalk,\
        KST64_SwordBeginDash,\
        KST65_SwordDash,\
        KST66_SwordSkid,\
        KST67_SwordJump,\
        KST68_SwordJumpPeak,\
        KST69_SwordFall,\
        KST6A_SwordLandHeadEnemy,\
        KST6B_SwordLandHead,\
        KST6C_SwordDropThrough,\
        KST6D_SwordCrouch,\
        KST6E_SwordSlideAttack,\
        KST6F_SwordLadder,\
        KST70_SwordSlash,\
        KST71_SwordSpin,\
        KST72_SwordHoverBegin,\
        KST73_SwordHoverRise,\
        KST74_SwordHoverUnderwater,\
        KST75_SwordHoverWaterSurface,\
        KST76_SwordHoverSpit,\
        KST77_SwordWaterEnter,\
        KST78_SwordWaterIdle,\
        KST79_SwordWaterWalk,\
        KST7A_SwordWaterSwim,\
        KST7B_SwordWaterSurface,\
        $17A010,\
        $17A025,\
        $17A0BE,\
        $17A0C8,\
        $17A1EC,\
        $17A1F7,\
        $17A294,\
        $17A2E7,\
        $17A2FD,\
        $17A405,\
        $17A52B,\
        $17A5AB,\
        $17A5F8,\
        $17A617,\
        $17A66C,\
        $17A6F5,\
        $17A7C3,\
        $17A892,\
        $17A8CA,\
        $17A976,\
        $17A984,\
        $17A9C8,\
        $17AA15,\
        $17AA22,\
        $17AA7D,\
        $17AB33,\
        $17ABC2,\
        $17ABDA,\
        $17ABEF,\
        $17AC88,\
        $17AC92,\
        $17ADB9,\
        $17ADC4,\
        $17AE61,\
        $17AEB4,\
        $17AEC9,\
        $17AF3D,\
        $17B060,\
        $17B0E0,\
        $17B12D,\
        $17B14C,\
        $17B1A1,\
        $17B22A,\
        $17B2F8,\
        $17B3D0,\
        $17B4AD,\
        $17B4E7,\
        $17B593,\
        $17B5A1,\
        $17B5E5,\
        $17B632,\
        $17B63F,\
        $17B69A,\
        $17B751,\
        $17B7E0,\
        KSTB3_ParasolLand,\
        KSTB4_ParasolIdle,\
        KSTB5_ParasolBeginWalk,\
        KSTB6_ParasolWalk,\
        KSTB7_ParasolBeginDash,\
        KSTB8_ParasolDash,\
        KSTB9_ParasolSkid,\
        KSTBA_ParasolJump,\
        KSTBB_ParasolJumpPeak,\
        KSTBC_ParasolFall,\
        KSTBD_ParasolGlide,\
        KSTBE_ParasolGlideCancel,\
        KSTBF_ParasolLandHeadEnemy,\
        KSTC0_ParasolLandHead,\
        KSTC1_ParasolDropThrough,\
        KSTC2_ParasolCrouch,\
        KSTC3_ParasolSlideAttack,\
        KSTC4_ParasolLadder,\
        KSTC5_ParasolAttack,\
        KSTC6_ParasolHoverBegin,\
        KSTC7_ParasolHoverRise,\
        KSTC8_ParasolHoverUnderwater,\
        KSTC9_ParasolHoverWaterSurface,\
        KSTCA_ParasolHoverSpit,\
        KSTCB_ParasolWaterEnter,\
        KSTCC_ParasolWaterIdle,\
        KSTCD_ParasolWaterWalk,\
        KSTCE_ParasolWaterSwim,\
        KSTCF_ParasolWaterSurface,\
        $19B718,\
        $19B74B,\
        $19B329,\
        $19B3A5,\
        $19B44A,\
        $19B4AC,\
        $19B4C2,\
        $19B522,\
        $19B53B,\
        $19B658,\
        $17B81E,\
        $17B8C9,\
        $17B938,\
        $17B95F,\
        $17BC09,\
        $16A5DF,\
        $16A5FF,\
        $16A9C7,\
        $16A785,\
        $16A7ED,\
        $16A845,\
        $16A89A,\
        $16A8FF,\
        $16A90B,\
        KSTE8_SpecialDamageEnd,\
        KSTE9_CharredKnockbackBounce,\
        KSTEA_IceDamageLand,\
        KSTEB_Unknown,\
        $17BC40,\
        KSTED_SpikeDamage,\
        KSTEE_Miss

    KirbyStateLookupLo:   .lobytes   KIRBYSTATEPTRTABLE
    KirbyStateLookupHi:   .hibytes   KIRBYSTATEPTRTABLE
    KirbyStateLookupBank: bankTable {KIRBYSTATEPTRTABLE}

B21_8fcc:
    lda OBJ_pose+1
B21_8fcf:
    ldx OBJ_var1+1
    cpx #$80
    and #$fe
    adc #$00
    sta OBJ_pose+1
    rts
B21_8fdc:
    ldy #$01
    lda (script_ptr), y
    inc script_ptr
    bne B21_8fe6
    inc script_ptr+1
B21_8fe6:
    ldx a:curr_object_slot
    ldy OBJ_var1, x
    bpl B21_8ff1
    clc
    adc #$01
B21_8ff1:
    sta OBJ_pose, x
    rts
B21_8ff5:
    lda frame_counter
    and #$03
    rts
B21_8ffb:
    ldx #$00
    lda kirby_slope_state
    cmp #$02
    beq B21_9014
    inx
    cmp #$03
    beq B21_9014
    inx
    cmp #$04
    beq B21_9014
    inx
    cmp #$05
    beq B21_9014
    inx
B21_9014:
    txa
    rts
B21_9016:
    jsr $91c2
    bcs B21_901c
    rts
B21_901c:
    jsr $884d
    sec
    rts
B21_9021:
    jsr $9128
    bcs B21_9027
    rts
B21_9027:
    lda kirby_vel_x+1
    eor OBJ_vel_x_hi+1
    bmi B21_9032
    jsr $86fb
B21_9032:
    sec
    rts
B21_9034:
    jsr $9128
    bcs B21_903a
    rts
B21_903a:
    jsr $8c16
    lda kirby_vel_x+1
    eor OBJ_vel_x_hi+1
    bmi B21_9048
    jsr $86fb
B21_9048:
    sec
    rts
B21_904a:
    jsr $905c
    bcs B21_9050
    rts
B21_9050:
    cmp #$02
    beq B21_9057
    jsr $86fb
B21_9057:
    jsr $884d
    sec
    rts
B21_905c:
    ldx #$00
    ldy #$f9
    jsr $9d01
    jsr B3F_f14d
    bcs B21_9074
    ldy kirby_0579_unknown_x_offset
    beq B21_9074
    bmi B21_9074
    jsr $90e3
    bcs B21_90d4
B21_9074:
    ldx #$fa
    ldy #$f9
    jsr $9d01
    jsr B3F_f14d
    bcs B21_90a3
    tay
    cmp #$07
    bne B21_9089
    lda #$fa
    bne B21_908f
B21_9089:
    cmp #$08
    bne B21_9096
    lda #$06
B21_908f:
    clc
    adc kirby_0579_unknown_x_offset
    sta kirby_0579_unknown_x_offset
B21_9096:
    lda kirby_0579_unknown_x_offset
    beq B21_90a3
    bmi B21_90a3
    tya
    jsr $90e3
    bcs B21_90d4
B21_90a3:
    ldx #$06
    ldy #$f9
    jsr $9d01
    jsr B3F_f14d
    bcs B21_90d2
    tay
    cmp #$07
    bne B21_90b8
    lda #$06
    bne B21_90be
B21_90b8:
    cmp #$08
    bne B21_90c5
    lda #$fa
B21_90be:
    clc
    adc kirby_0579_unknown_x_offset
    sta kirby_0579_unknown_x_offset
B21_90c5:
    lda kirby_0579_unknown_x_offset
    beq B21_90d2
    bmi B21_90d2
    tya
    jsr $90e3
    bcs B21_90d4
B21_90d2:
    clc
    rts
B21_90d4:
    pha
    ldx #$00
    lda kirby_0579_unknown_x_offset
    bpl B21_90dd
    dex
B21_90dd:
    jsr $9d56
    pla
    sec
    rts
B21_90e3:
    pha
    cmp #$02
    bne B21_90ef
    lda OBJ_vel_y_hi+1
    bmi B21_9122
    bpl B21_9125
B21_90ef:
    cmp #$07
    bne B21_9104
    lda OBJ_vel_x_lo+1
    clc
    adc OBJ_vel_y_lo+1
    lda OBJ_vel_x_hi+1
    adc OBJ_vel_y_hi+1
    bmi B21_9122
    bpl B21_9125
B21_9104:
    lda OBJ_vel_x_lo+1
    eor #$ff
    clc
    adc #$01
    tay
    lda OBJ_vel_x_hi+1
    eor #$ff
    adc #$00
    sta UNK_0
    tya
    clc
    adc OBJ_vel_y_lo+1
    lda UNK_0
    adc OBJ_vel_y_hi+1
    bpl B21_9125
B21_9122:
    pla
    sec
    rts
B21_9125:
    pla
    clc
    rts
B21_9128:
    lda OBJ_vel_x_hi+1
    bmi B21_913c
    ldy #$06
    jsr $916b
    bcs B21_914b
    ldy #$fa
    jsr $916b
    bcs B21_914b
    rts
B21_913c:
    ldy #$06
    jsr $9199
    bcs B21_914b
    ldy #$fa
    jsr $9199
    bcs B21_914b
    rts
B21_914b:
    lda kirby_0579_unknown_x_offset
    clc
    adc a:OBJ_x_lo+1
    sta a:OBJ_x_lo+1
    sta OBJ_store_x_lo+1
    lda kirby_0579_unknown_x_offset+1
    adc a:OBJ_x_hi+1
    sta a:OBJ_x_hi+1
    sta OBJ_store_x_hi+1
    lda #$80
    sta a:OBJ_x_frac+1
    sec
    rts
B21_916b:
    ldx #$07
    jsr $9d01
    jsr B3F_f4e2
    bcs B21_9197
    cmp #$02
    bne B21_9197
    tya
    bpl B21_9197
    beq B21_9197
    lda a:OBJ_x_frac+1
    sec
    sbc OBJ_vel_x_lo+1
    lda #$00
    sbc OBJ_vel_x_hi+1
    sec
    sbc kirby_0579_unknown_x_offset
    eor #$ff
    clc
    adc #$01
    bmi B21_9197
    sec
    rts
B21_9197:
    clc
    rts
B21_9199:
    ldx #$f9
    jsr $9d01
    jsr B3F_f39e
    bcs B21_91c0
    cmp #$02
    bne B21_91c0
    tya
    bmi B21_91c0
    beq B21_91c0
    lda a:OBJ_x_frac+1
    sec
    sbc OBJ_vel_x_lo+1
    lda #$00
    sbc OBJ_vel_x_hi+1
    sec
    sbc kirby_0579_unknown_x_offset
    bmi B21_91c0
    sec
    rts
B21_91c0:
    clc
    rts
B21_91c2:
    lda kirby_flags
    and #$fb
    sta kirby_flags
    jsr $927a
    jsr $9245
    jsr $920f
    lda kirby_flags
    and #$04
    bne B21_91dc
    clc
    rts
B21_91dc:
    ldx #$00
    lda kirby_05F3
    bpl B21_91e4
    dex
B21_91e4:
    clc
    adc a:OBJ_y_lo+1
    sta a:OBJ_y_lo+1
    txa
    adc a:OBJ_y_hi+1
    sta a:OBJ_y_hi+1
    lda kirby_05F3
    clc
    adc OBJ_store_y_lo+1
    sta OBJ_store_y_lo+1
    txa
    adc OBJ_store_y_hi+1
    sta OBJ_store_y_hi+1
    lda #$80
    sta a:OBJ_y_frac+1
    lda #$00
    sta kirby_78E7
    sec
    rts
B21_920f:
    jsr $92af
    bcs B21_9241
    tay
    lda kirby_0579_unknown_x_offset
    bmi B21_9227
    lda kirby_78E7
    and #$fd
    sta kirby_78E7
    lda kirby_0579_unknown_x_offset
    bne B21_9241
B21_9227:
    lda kirby_78E7
    and #$02
    bne B21_9241
    tya
    jsr $9324
    bcs B21_9242
    lda OBJ_vel_y_hi+1
    bpl B21_9241
    lda kirby_78E7
    ora #$02
    sta kirby_78E7
B21_9241:
    rts
B21_9242:
    jmp $93af
B21_9245:
    jsr $92ba
    bcs B21_9276
    lda kirby_0579_unknown_x_offset
    bmi B21_925c
    lda kirby_78E7
    and #$fb
    sta kirby_78E7
    lda kirby_0579_unknown_x_offset
    bne B21_9276
B21_925c:
    lda kirby_78E7
    and #$04
    bne B21_9276
    tya
    jsr $9324
    bcs B21_9277
    lda OBJ_vel_y_hi+1
    bpl B21_9276
    lda kirby_78E7
    ora #$04
    sta kirby_78E7
B21_9276:
    rts
B21_9277:
    jmp $93af
B21_927a:
    jsr $92ef
    bcs B21_92ab
    lda kirby_0579_unknown_x_offset
    bmi B21_9291
    lda kirby_78E7
    and #$fe
    sta kirby_78E7
    lda kirby_0579_unknown_x_offset
    bne B21_92ab
B21_9291:
    lda kirby_78E7
    and #$01
    bne B21_92ab
    tya
    jsr $9324
    bcs B21_92ac
    lda OBJ_vel_y_hi+1
    bpl B21_92ab
    lda kirby_78E7
    ora #$01
    sta kirby_78E7
B21_92ab:
    rts
B21_92ac:
    jmp $93af
B21_92af:
    ldx #$00
    ldy #$07
    jsr $9d01
    jsr B3F_f241
    rts
B21_92ba:
    ldx #$fa
    ldy #$07
    jsr $9d01
    jsr B3F_f241
    bcs B21_92ee
    tay
    cmp #$04
    bne B21_92cf
    lda #$03
    bne B21_92e5
B21_92cf:
    cmp #$06
    bne B21_92d7
    lda #$06
    bne B21_92e5
B21_92d7:
    cmp #$03
    bne B21_92df
    lda #$fd
    bne B21_92e5
B21_92df:
    cmp #$05
    bne B21_92ec
    lda #$fa
B21_92e5:
    clc
    adc kirby_0579_unknown_x_offset
    sta kirby_0579_unknown_x_offset
B21_92ec:
    tya
    clc
B21_92ee:
    rts
B21_92ef:
    ldx #$06
    ldy #$07
    jsr $9d01
    jsr B3F_f241
    bcs B21_9323
    tay
    cmp #$03
    bne B21_9304
    lda #$03
    bne B21_931a
B21_9304:
    cmp #$05
    bne B21_930c
    lda #$06
    bne B21_931a
B21_930c:
    cmp #$04
    bne B21_9314
    lda #$fd
    bne B21_931a
B21_9314:
    cmp #$06
    bne B21_9321
    lda #$fa
B21_931a:
    clc
    adc kirby_0579_unknown_x_offset
    sta kirby_0579_unknown_x_offset
B21_9321:
    tya
    clc
B21_9323:
    rts
B21_9324:
    pha
    cmp #$02
    bne B21_9330
    lda OBJ_vel_y_hi+1
    bpl B21_93a9
    bmi B21_93ac
B21_9330:
    cmp #$05
    bne B21_9345
    lda OBJ_vel_x_lo+1
    clc
    adc OBJ_vel_y_lo+1
    lda OBJ_vel_x_hi+1
    adc OBJ_vel_y_hi+1
    bpl B21_93a9
    bmi B21_93ac
B21_9345:
    cmp #$06
    bne B21_9369
    lda OBJ_vel_x_lo+1
    eor #$ff
    clc
    adc #$01
    tay
    lda OBJ_vel_x_hi+1
    eor #$ff
    adc #$00
    sta UNK_0
    tya
    clc
    adc OBJ_vel_y_lo+1
    lda UNK_0
    adc OBJ_vel_y_hi+1
    bpl B21_93a9
    bmi B21_93ac
B21_9369:
    cmp #$03
    bne B21_9386
    lda OBJ_vel_x_hi+1
    asl a
    lda OBJ_vel_x_hi+1
    ror a
    tay
    lda OBJ_vel_x_lo+1
    ror a
    clc
    adc OBJ_vel_y_lo+1
    tya
    adc OBJ_vel_y_hi+1
    bpl B21_93a9
    bmi B21_93ac
B21_9386:
    lda OBJ_vel_x_lo+1
    eor #$ff
    clc
    adc #$01
    sta UNK_0
    lda OBJ_vel_x_hi+1
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
    adc OBJ_vel_y_lo+1
    tya
    adc OBJ_vel_y_hi+1
    bmi B21_93ac
B21_93a9:
    pla
    sec
    rts
B21_93ac:
    pla
    clc
    rts
B21_93af:
    ldy kirby_0579_unknown_x_offset
    beq B21_93b8
    cpy #$f5
    bcc B21_93c9
B21_93b8:
    sta kirby_slope_state
    stx kirby_05F8
    sty kirby_05F3
    lda kirby_flags
    ora #$04
    sta kirby_flags
B21_93c9:
    rts
B21_93ca:
    jsr $92af
    bcs B21_93d6
    ldy kirby_0579_unknown_x_offset
    beq B21_93f0
    bmi B21_93f0
B21_93d6:
    jsr $92ba
    bcs B21_93e2
    ldy kirby_0579_unknown_x_offset
    beq B21_93f0
    bmi B21_93f0
B21_93e2:
    jsr $92ef
    bcs B21_93ee
    ldy kirby_0579_unknown_x_offset
    beq B21_93f0
    bmi B21_93f0
B21_93ee:
    clc
    rts
B21_93f0:
    jsr $93af
    sec
    rts
B21_93f5:
    jsr $9ced
    jsr $9511
    jmp $9404
B21_93fe:
    jsr $9ced
    jsr $9533
B21_9404:
    bcs B21_9407
    rts
B21_9407:
    lda #$19
    jsr PlaySoundEffect
    sec
    rts
B21_940e:
    jsr $9420
    bcc B21_941b
    lda kirby_flags
    ora #$08
    sta kirby_flags
B21_941b:
    rts
B21_941c:
    lda #$02
    bne B21_9426
B21_9420:
    lda #$00
    beq B21_9426
B21_9424:
    lda #$01
B21_9426:
    sta UNK_78F1
    lda hitbox1_flags_0501
    bpl B21_9430
    clc
    rts
B21_9430:
    lda #$00
    sta UNK_78F1+1
    lda hitbox1_x
    sec
    sbc hitbox1_width
    and #$f0
    sta UNK_78F1+2
    lda hitbox1_x+1
    sbc #$00
    sta UNK_78F1+3
    lda hitbox1_x
    clc
    adc hitbox1_width
    and #$f0
    sec
    sbc UNK_78F1+2
    lsr a
    lsr a
    lsr a
    lsr a
    sta UNK_78F1+8
    lda hitbox1_y
    sec
    sbc hitbox1_height
    and #$f0
    sta UNK_78F1+4
    lda hitbox1_y+1
    sbc #$00
    sta UNK_78F1+5
    lda hitbox1_y
    clc
    adc hitbox1_height
    and #$f0
    sec
    sbc UNK_78F1+4
    lsr a
    lsr a
    lsr a
    lsr a
    sta UNK_78F1+7
B21_9485:
    lda UNK_78F1+8
    sta UNK_78F1+6
B21_948b:
    ldx UNK_78F1+2
    ldy UNK_78F1+4
    lda UNK_78F1+3
    sta temp_x_hi
    lda UNK_78F1+5
    sta temp_y_hi
    lda UNK_78F1
    bne B21_94a6
    jsr $9511
    jmp $94b3
B21_94a6:
    cmp #$01
    bne B21_94b0
    jsr $9533
    jmp $94b3
B21_94b0:
    jsr $9550
B21_94b3:
    bcc B21_94b8
    inc UNK_78F1+1
B21_94b8:
    lda UNK_78F1+2
    clc
    adc #$10
    sta UNK_78F1+2
    bcc B21_94c6
    inc UNK_78F1+3
B21_94c6:
    dec UNK_78F1+6
    bpl B21_948b
    lda UNK_78F1+8
    clc
    adc #$01
    asl a
    asl a
    asl a
    asl a
    sta tmp0
    lda UNK_78F1+2
    sec
    sbc tmp0
    sta UNK_78F1+2
    bcs B21_94e5
    dec UNK_78F1+3
B21_94e5:
    lda UNK_78F1+4
    clc
    adc #$10
    sta UNK_78F1+4
    bcc B21_94f3
    inc UNK_78F1+5
B21_94f3:
    dec UNK_78F1+7
    bpl B21_9485
    lda UNK_78F1+1
    bne B21_94ff
    clc
    rts
B21_94ff:
    jsr B3F_e330
    lda #$19
    jsr PlaySoundEffect
    lda #$1a
    sta new_object_var3
    jsr $9955
    sec
    rts
B21_9511:
    txa
    pha
    tya
    pha
    jsr B3F_ed9c
    sta tmp0
    pla
    tay
    pla
    tax
    lda tmp0
    cmp #$09
    beq B21_9571
    cmp #$0b
    beq B21_959f
    cmp #$0a
    bne B21_9531
    lda #$0b
    jsr PlaySoundEffect
B21_9531:
    clc
    rts
B21_9533:
    txa
    pha
    tya
    pha
    jsr B3F_ed9c
    sta tmp0
    pla
    tay
    pla
    tax
    lda tmp0
    cmp #$09
    beq B21_9571
    cmp #$0a
    beq B21_9571
    cmp #$0b
    beq B21_959f
    clc
    rts
B21_9550:
    txa
    pha
    tya
    pha
    jsr B3F_ed9c
    sta tmp0
    pla
    tay
    pla
    tax
    lda tmp0
    cmp #$09
    beq B21_9571
    cmp #$0a
    beq B21_9571
    cmp #$0b
    beq B21_959f
    cmp #$0f
    beq B21_959f
    clc
    rts
B21_9571:
    txa
    pha
    tya
    pha
    jsr B3F_eef1
    pla
    and #$f0
    ora #$08
    tay
    pla
    and #$f0
    ora #$08
    tax
    lda temp_x_hi
    sta new_object_x_hi
    lda temp_y_hi
    sta new_object_y_hi
    lda #$03
    sta new_object_var3
    jsr $9955
    lda #$01
    ldx #$00
    jsr B3F_e3a7
    sec
    rts
B21_959f:
    txa
    pha
    tya
    pha
    jsr B3F_eef1
    pla
    and #$f0
    ora #$08
    tay
    pla
    and #$f0
    ora #$08
    tax
    lda temp_x_hi
    sta new_object_x_hi
    lda temp_y_hi
    sta new_object_y_hi
    lda #$12
    sta new_object_var3
    jsr $9955
    lda #$02
    ldx #$00
    jsr B3F_e3a7
    sec
    rts
B21_95cd:
    jsr $856f
    jsr $813a
    jsr $87ad
    lda kirby_flags
    bmi B21_95de
    jsr $97ed
B21_95de:
    lda kirby_05FA
    beq B21_95e6
    jmp $972c
B21_95e6:
    jsr AddObjectVelXY
    lda a:OBJ_x_lo+1
    sec
    sbc minimum_kirby_x
    lda a:OBJ_x_hi+1
    sbc minimum_kirby_x+1
    bpl B21_9607
    lda minimum_kirby_x
    sta a:OBJ_x_lo+1
    lda minimum_kirby_x+1
    sta a:OBJ_x_hi+1
    jmp $9622
B21_9607:
    lda a:OBJ_x_lo+1
    sec
    sbc maximum_kirby_x
    lda a:OBJ_x_hi+1
    sbc maximum_kirby_x+1
    bmi B21_9622
    lda maximum_kirby_x
    sta a:OBJ_x_lo+1
    lda maximum_kirby_x+1
    sta a:OBJ_x_hi+1
B21_9622:
    lda a:OBJ_y_lo+1
    sec
    sbc minimum_kirby_y
    lda a:OBJ_y_hi+1
    sbc minimum_kirby_y+1
    bpl B21_963d
    lda minimum_kirby_y
    sta a:OBJ_y_lo+1
    lda minimum_kirby_y+1
    sta a:OBJ_y_hi+1
B21_963d:
    lda a:OBJ_x_lo+1
    sec
    sbc a:camera_x
    cmp #$70
    bcs B21_9679
    lda a:OBJ_x_lo+1
    sec
    sbc #$70
    sta a:camera_x
    lda a:OBJ_x_hi+1
    sbc #$00
    sta a:camera_x+1
    bmi B21_966a
    lda a:camera_x
    sec
    sbc minimum_scroll_x
    lda a:camera_x+1
    sbc minimum_scroll_x+1
    bcs B21_9679
B21_966a:
    lda minimum_scroll_x
    sta a:camera_x
    lda minimum_scroll_x+1
    sta a:camera_x+1
    jmp $96a8
B21_9679:
    cmp #$80
    bcc B21_96a8
    lda a:OBJ_x_lo+1
    sec
    sbc #$80
    sta a:camera_x
    lda a:OBJ_x_hi+1
    sbc #$00
    sta a:camera_x+1
    ldx maximum_scroll_x+1
    dex
    lda maximum_scroll_x
    sec
    sbc a:camera_x
    txa
    sbc a:camera_x+1
    bcs B21_96a8
    lda maximum_scroll_x
    sta a:camera_x
    stx a:camera_x+1
B21_96a8:
    lda a:OBJ_y_lo+1
    sec
    sbc a:camera_y
    cmp #$60
    bcs B21_96e4
    lda a:OBJ_y_lo+1
    sec
    sbc #$60
    sta a:camera_y
    lda a:OBJ_y_hi+1
    sbc #$00
    sta a:camera_y+1
    bmi B21_96d5
    lda a:camera_y
    sec
    sbc minimum_scroll_y
    lda a:camera_y+1
    sbc minimum_scroll_y+1
    bcs B21_96e4
B21_96d5:
    lda minimum_scroll_y
    sta a:camera_y
    lda minimum_scroll_y+1
    sta a:camera_y+1
    jmp $9713
B21_96e4:
    cmp #$70
    bcc B21_9713
    lda a:OBJ_y_lo+1
    sec
    sbc #$70
    sta a:camera_y
    lda a:OBJ_y_hi+1
    sbc #$00
    sta a:camera_y+1
    ldx maximum_scroll_y+1
    dex
    lda maximum_scroll_y
    sec
    sbc a:camera_y
    txa
    sbc a:camera_y+1
    bcs B21_9713
    lda maximum_scroll_y
    sta a:camera_y
    stx a:camera_y+1
B21_9713:
    lda a:OBJ_x_lo+1
    sta OBJ_store_x_lo+1
    lda a:OBJ_x_hi+1
    sta OBJ_store_x_hi+1
    lda a:OBJ_y_lo+1
    sta OBJ_store_y_lo+1
    lda a:OBJ_y_hi+1
    sta OBJ_store_y_hi+1
    rts

    incbinRange "../split/prg/bank21.bin", $172c, $17ed

B21_97ed:
    ldx wind_type
    bpl B21_9804
    jsr $9ced
    jsr B3F_eeb3
    bcc B21_985e
    sta tmp0
    stx tmp0+1
    asl a
    adc tmp0
    adc tmp0+1
    tax
B21_9804:
    lda OBJ_vel_x_lo+1
    clc
    adc $9862, x
    sta OBJ_vel_x_lo+1
    lda OBJ_vel_x_hi+1
    adc $9871, x
    sta OBJ_vel_x_hi+1
    bmi B21_9823
    cmp #$07
    bcc B21_9831
    lda #$00
    ldy #$07
    bne B21_982b
B21_9823:
    cmp #$f9
    bcs B21_9831
    lda #$00
    ldy #$f9
B21_982b:
    sta OBJ_vel_x_lo+1
    sty OBJ_vel_x_hi+1
B21_9831:
    lda OBJ_vel_y_lo+1
    clc
    adc $985f, x
    sta OBJ_vel_y_lo+1
    lda OBJ_vel_y_hi+1
    adc $986e, x
    sta OBJ_vel_y_hi+1
    bmi B21_9850
    cmp #$07
    bcc B21_985e
    lda #$00
    ldy #$07
    bne B21_9858
B21_9850:
    cmp #$f9
    bcs B21_985e
    lda #$00
    ldy #$f9
B21_9858:
    sta OBJ_vel_y_lo+1
    sty OBJ_vel_y_hi+1
B21_985e:
    rts
.byte $40,$80,$00,$00,$00,$00,$40,$80
.byte $00,$00,$00,$00,$C0,$80,$00,$FF
.byte $FE,$FD,$00,$00,$00,$00,$00,$01
.byte $00,$00,$00,$FF,$FF,$FF
B21_987d:
    jsr $86fb
    jmp $884d
B21_9883:
    lda #$0c
    sta kirby_swim_up_timer
    lda #$00
    sta kirby_swim_direction
B21_988d:
    lda #$01
    sta kirby_underwater_flag
    rts
B21_9893:
    lda #$00
    sta kirby_underwater_flag
    rts
B21_9899:
    ldy #$01
    lda kirby_slope_state
    cmp #$03
    beq B21_98ac
    cmp #$04
    beq B21_98b8
    ldy #$03
    cmp #$05
    bne B21_98b4
B21_98ac:
    lda OBJ_var1+1
    bpl B21_98c2
    iny
    bne B21_98c2
B21_98b4:
    cmp #$06
    bne B21_98c0
B21_98b8:
    lda OBJ_var1+1
    bmi B21_98c2
    iny
    bne B21_98c2
B21_98c0:
    ldy #$00
B21_98c2:
    rts
B21_98c3:
    ldx #$00
    lda OBJ_var1+1
    bpl B21_98cb
    inx
B21_98cb:
    rts
B21_98cc:
    ldx #$00
    lda OBJ_vel_x_hi+1
    bpl B21_98d4
    inx
B21_98d4:
    rts
B21_98d5:
    ldx a:curr_object_slot
    lda OBJ_var1, x
    and #$80
    rts

B21_98de:
    ldx curr_object_slot
    stx new_object_var5
    ldy #$00
    sty new_object_var0
    sty UNK_0
    sty UNK_1
    iny
    lda (script_ptr), y
    ldy OBJ_var1, x
    bpl B21_98f9
    eor #$ff
    clc
    adc #$01
B21_98f9:
    tay
    bpl B21_98fe
    dec UNK_0
B21_98fe:
    clc
    adc OBJ_store_x_lo, x
    pha
    lda UNK_0
    adc OBJ_store_x_hi, x
    sta new_object_x_hi
    ldy #$02
    lda (script_ptr), y
    bpl B21_9913
    dec UNK_1
B21_9913:
    clc
    adc OBJ_store_y_lo, x
    pha
    lda UNK_1
    adc OBJ_store_y_hi, x
    sta new_object_y_hi
    iny
    lda (script_ptr), y
    sta new_object_var3
    iny
    lda (script_ptr), y
    sta new_object_var4
    iny
    lda (script_ptr), y
    ldy OBJ_var1, x
    bpl B21_9939
    eor #$ff
    clc
    adc #$01
B21_9939:
    clc
    adc OBJ_var1, x
    sta new_object_var1
    lda #$05
    clc
    adc script_ptr
    sta script_ptr
    bcc B21_994b
    inc script_ptr+1
B21_994b:
    pla
    tay
    pla
    tax
    jmp $9955

B21_9952:
    jsr $9a01
B21_9955:
    txa
    pha
    tya
    pha
    ldx new_object_var3
    lda $99b8, x
    sta UNK_0
    ldy #$00
    ldx #$03
B21_9965:
    lda OBJ_script, x
    bmi B21_9972
    lda OBJ_var2, x
    cmp UNK_0
    beq B21_9992
    iny
B21_9972:
    inx
    cpx #$06
    bcc B21_9965
    cpy #$03
    bcc B21_9995
    lda UNK_0
    and #$7f
    sta UNK_0
    ldx #$03
B21_9983:
    lda OBJ_var2, x
    cmp UNK_0
    bcc B21_9992
    inx
    cpx #$06
    bcc B21_9983
    pla
    pla
    rts
B21_9992:
    jsr OBJ_Destroy
B21_9995:
    ldx new_object_var3
    lda $99b8, x
    and #$7f
    sta new_object_var2
    lda curr_object_slot
    sta new_object_var0
    lda #$03
    sta OBJ_min_slot
    lda #$06
    sta OBJ_max_slot
    pla
    tay
    pla
    tax
    lda #$02
    jmp OBJ_New
.byte $00,$0A
.byte $00
.byte $0A,$0A,$0A,$0A
.byte $80,$80,$32,$80,$32
.byte $32,$00,$80,$80
.byte $00,$00
.byte $3C,$8A,$32,$32
.byte $32,$32
.byte $A8,$5A,$32
.byte $80,$32
.byte $00,$0A
.byte $0A
B21_99d8:
    lda #$00
    sta OBJ_min_slot
    lda #$12
    sta OBJ_max_slot
    jsr $9a01
    lda #$02
    jmp OBJ_New
B21_99ea:
    lda #$06
    sta OBJ_min_slot
    lda #$09
    sta OBJ_max_slot
    jsr $9a01
    lda curr_object_slot
    sta new_object_var2
    lda #$03
    jmp OBJ_New
B21_9a01:
    ldx curr_object_slot
    ldy #$00
    sty new_object_var0
    sty UNK_0
    sty UNK_1
    iny
    lda (script_ptr), y
    ldy OBJ_var1, x
    bpl B21_9a19
    eor #$ff
    clc
    adc #$01
B21_9a19:
    tay
    bpl B21_9a1e
    dec UNK_0
B21_9a1e:
    clc
    adc OBJ_store_x_lo, x
    pha
    lda UNK_0
    adc OBJ_store_x_hi, x
    sta new_object_x_hi
    ldy #$02
    lda (script_ptr), y
    bpl B21_9a33
    dec UNK_1
B21_9a33:
    clc
    adc OBJ_store_y_lo, x
    pha
    lda UNK_1
    adc OBJ_store_y_hi, x
    sta new_object_y_hi
    iny
    lda (script_ptr), y
    sta new_object_var3
    iny
    lda (script_ptr), y
    ldy OBJ_var1, x
    bpl B21_9a53
    eor #$ff
    clc
    adc #$01
B21_9a53:
    clc
    adc OBJ_var1, x
    sta new_object_var1
    lda #$04
    clc
    adc script_ptr
    sta script_ptr
    bcc B21_9a65
    inc script_ptr+1
B21_9a65:
    pla
    tay
    pla
    tax
    rts
B21_9a6a:
    jsr Script_ReadByte
    sta kirby_05EE_code
    jsr Script_ReadByte
    sta kirby_05EE_code+1
    jsr Script_ReadByte
    sta UNK_5F0
    jsr Script_ReadByte
    sta UNK_5F0+1
    rts
B21_9a83:
    lda #$00
    sta kirby_05EE_code+1
    jmp $9cb3
B21_9a8b:
    lda kirby_05EE_code+1
    bne B21_9a91
    rts
B21_9a91:
    jmp (kirby_05EE_code)
    lda kirby_05E0
    cmp #$01
    beq B21_9aa1
    lda #$00
    sta kirby_05EE_code+1
    rts
B21_9aa1:
    ldx #$00
    lda frame_counter
    and #$07
    bne B21_9aac
    ldx #$04
B21_9aac:
    txa
    clc
    adc #$b8
    tax
    lda #$00
    adc #$9a
    jmp $9cdc
.byte $FF,$35,$25,$0F,$FF,$27,$17,$0F
B21_9ac0:
    lda kirby_05E0
    cmp #$01
    beq B21_9acd
    lda #$00
    sta kirby_05EE_code+1
    rts
B21_9acd:
    ldx #$00
    lda frame_counter
    and #$07
    cmp #$02
    bcs B21_9ada
    ldx #$04
B21_9ada:
    txa
    clc
    adc #$e6
    tax
    lda #$00
    adc #$9a
    jmp $9cdc
.byte $FF,$35,$25,$0F,$FF,$30,$37,$17
.byte $AD,$3D,$60,$29,$08,$4A,$69,$FE
.byte $AA,$A9,$9A,$69,$00,$4C,$DC,$9C
.byte $FF,$36,$16,$0F,$FF,$30,$37,$17
B21_9b06:
    dec UNK_5F0+1
    beq B21_9b0c
    rts
B21_9b0c:
    ldy UNK_5F0
    ldx $9b35, y
    lda $9b4f, x
    sta UNK_5F0+1
    txa
    asl a
    asl a
    adc #$54
    tax
    lda #$00
    adc #$9b
    jsr $9cdc
    inc UNK_5F0
    lda UNK_5F0
    cmp #$1a
    bcc B21_9b34
    lda #$00
    sta kirby_05EE_code+1
B21_9b34:
    rts
.byte $00,$01,$02,$01,$02,$01,$02,$01
.byte $02,$01,$02,$01,$02,$01,$02,$01
.byte $02,$01,$02,$01,$02,$03,$04,$03
.byte $04,$05,$03,$02,$01,$03,$03,$FF
.byte $36,$16,$0F,$FF,$30,$37,$17,$FF
.byte $37,$27,$07,$FF,$30,$37,$17,$FF
.byte $37,$27,$07,$FF,$36,$26,$0F
B21_9b6c:
    lda kirby_05E1
    cmp #$04
    beq B21_9b79
    lda #$00
    sta kirby_05EE_code+1
    rts
B21_9b79:
    lda frame_counter
    and #$02
    sta kirby_05F2
    rts
B21_9b82:
    lda hitbox1_flags_0501
    bpl B21_9b8d
    lda #$00
    sta kirby_05EE_code+1
    rts
B21_9b8d:
    lda frame_counter
    and #$02
    sta kirby_05F2
    rts
B21_9b96:
    jsr $8ffb
    stx kirby_last_slope_index
    jsr $9899
    tya
    ldy kirby_05F8
    clc
    adc $9ba8, y
    rts
.byte $00,$05
B21_9baa:
    jsr $8ffb
    stx kirby_last_slope_index
    jsr $9899
    tya
    ldy kirby_05F8
    clc
    adc $9bbc, y
    rts
.byte $05,$0A
B21_9bbe:
    ldx #$00
    lda temp_pad1_hold
    and #$80
    beq B21_9bc7
    inx
B21_9bc7:
    lda temp_pad1_hold
    and #$0f
    ora $9bd3, x
    tax
    lda $9bd5, x
    rts
.byte $00,$08,$00,$02,$04
.byte $00
.byte $03,$03,$03
.byte $00
.byte $01,$02,$04
B21_9be0:
    ldx #$00
    lda kirby_vel_x_abs
    ora kirby_vel_x_abs+1
    beq B21_9bf5
    inx
    lda #$4c
    ldy #$01
    jsr $86e2
    bcc B21_9bf5
    inx
B21_9bf5:
    txa
    rts
B21_9bf7:
    jsr $9ced
    jsr B3F_eedb
    bcc B21_9c1c
    lda #$01
    sta kirby_underwater_flag
    jsr $93ca
    bcs B21_9c0c
    lda #$06
    rts
B21_9c0c:
    jsr $884d
    ldx #$04
    lda kirby_vel_x
    ora kirby_vel_x+1
    beq B21_9c1a
    inx
B21_9c1a:
    txa
    rts
B21_9c1c:
    lda #$00
    sta kirby_underwater_flag
    lda kirby_05E1
    cmp #$0d
    bne B21_9c2b
    lda #$07
    rts
B21_9c2b:
    lda kirby_vel_y+1
    bmi B21_9c35
    jsr $93ca
    bcs B21_9c38
B21_9c35:
    lda #$03
    rts
B21_9c38:
    jsr $884d
    lda kirby_vel_x
    ora kirby_vel_x+1
    beq B21_9c59
    ldx #$01
    lda kirby_vel_x_abs+1
    bmi B21_9c58
    lda #$4c
    sec
    sbc kirby_vel_x_abs
    lda #$01
    sbc kirby_vel_x_abs+1
    bcs B21_9c58
    inx
B21_9c58:
    txa
B21_9c59:
    rts
B21_9c5a:
    ldx #$01
    lda temp_pad1_hold
    and #$02
    bne B21_9c69
    dex
    lda temp_pad1_hold
    and #$01
    beq B21_9c6f
B21_9c69:
    lda $9c70, x
    sta OBJ_var1+1
B21_9c6f:
    rts
.byte $40,$C0
B21_9c72:
    stx OBJ_slot_hitbox
    sta ptr0
    sty ptr0+1
    ldy #$00
    lda (ptr0), y
    sta hitbox1_flags_0501
    iny
    lda (ptr0), y
    clc
    adc OBJ_store_x_lo+1
    sta hitbox1_x
    iny
    lda (ptr0), y
    adc OBJ_store_x_hi+1
    sta hitbox1_x+1
    iny
    lda (ptr0), y
    clc
    adc OBJ_store_y_lo+1
    sta hitbox1_y
    iny
    lda (ptr0), y
    adc OBJ_store_y_hi+1
    sta hitbox1_y+1
    iny
    lda (ptr0), y
    sta hitbox1_width
    iny
    lda (ptr0), y
    sta hitbox1_height
    rts
B21_9cb3:
    ldx #$00
    lda kirby_copy_ability
    bmi B21_9cc4
    inx
    cmp #$0c
    beq B21_9cc4
    cmp #$0d
    beq B21_9cc4
    inx
B21_9cc4:
    txa
    asl a
    asl a
    adc #$d0
    tax
    lda #$00
    adc #$9c
    bne B21_9ce2

.byte $FF,$35,$25,$0F,$FF,$30,$21,$01,$FF,$36,$26,$0F,$2C,$FB,$05,$50
.byte $01,$60

B21_9ce2:
    stx ptr1
    sta ptr1+1
    lda #$10
    ldy #$04
    jmp B3E_c90e
B21_9ced:
    ldx curr_object_slot
    lda OBJ_store_x_hi, x
    sta temp_x_hi
    lda OBJ_store_y_hi, x
    sta temp_y_hi
    ldy OBJ_store_y_lo, x
    lda OBJ_store_x_lo, x
    tax
    rts
B21_9d01:
    lda #$00
    sta UNK_0
    sta UNK_1
    txa
    bpl B21_9d0c
    dec UNK_0
B21_9d0c:
    ldx curr_object_slot
    clc
    adc OBJ_store_x_lo, x
    sta tmp0+1
    lda UNK_0
    adc OBJ_store_x_hi, x
    sta temp_x_hi
    tya
    bpl B21_9d20
    dec UNK_1
B21_9d20:
    clc
    adc OBJ_store_y_lo, x
    tay
    lda UNK_1
    adc OBJ_store_y_hi, x
    sta temp_y_hi
    ldx tmp0+1
    rts
.byte $8A,$A6,$6E,$18,$65,$DD,$95,$82
.byte $9D,$74,$60,$A5,$4B,$65,$DE,$95
.byte $94,$9D,$86,$60,$98,$18,$65,$E0
.byte $95,$B8,$9D,$98,$60,$A5,$4C,$65
.byte $E1,$95,$CA,$9D,$AA,$60,$60
B21_9d56:
    ldy curr_object_slot
    clc
    adc OBJ_y_lo, y
    sta OBJ_y_lo, y
    sta OBJ_store_y_lo, y
    txa
    adc OBJ_y_hi, y
    sta OBJ_y_hi, y
    sta OBJ_store_y_hi, y
    lda #$80
    sta OBJ_y_frac, y
    rts
B21_9d72:
    ldx #$00
    lda temp_pad1_hold
    and #$08
    beq B21_9d80
    lda kirby_underwater_flag
    bne B21_9d80
    inx
B21_9d80:
    txa
    rts
B21_9d82:
    ldx #$00
    lda kirby_vel_y+1
    bpl B21_9d8a
    inx
B21_9d8a:
    txa
    rts
B21_9d8c:
    ldx #$02
    lda #$00
B21_9d90:
    sta UNK_5CE+3, x
    dex
    bpl B21_9d90
    sta inhaling_count
    sta inhaled_count
    sta UNK_5E7
    sta UNK_5E7+2
    rts
B21_9da3:
    ldx #$01
    lda kirby_05E0
    cmp #$01
    beq B21_9db4
    lda kirby_05E1
    cmp #$0d
    beq B21_9db4
    dex
B21_9db4:
    txa
    rts
B21_9db6:
    lda #$00
    sta kirby_vel_y
    lda #$fd
    sta kirby_vel_y+1
    lda #$00
    sta kirby_vel_x_abs
    lda #$ff
    sta kirby_vel_x_abs+1
    jmp $856f
B21_9dcd:
    lda temp_pad1_hold
    and #$08
    beq B21_9dd6
    lda #$04
    rts
B21_9dd6:
    lda temp_pad1_hold
    and #$04
    beq B21_9ddf
    lda #$05
    rts
B21_9ddf:
    ldx #$00
    lda kirby_slope_state
    cmp #$00
    beq B21_9dea
    ldx #$02
B21_9dea:
    lda OBJ_var1+1
    bpl B21_9df0
    inx
B21_9df0:
    txa
    rts
B21_9df2:
    ldx #$00
    lda temp_pad1_hold
    and #$40
    bne B21_9dfb
    inx
B21_9dfb:
    txa
    rts
B21_9dfd:
    sta tmp0
    lda kirby_health
    sec
    sbc tmp0
    sta kirby_health
    lda kirby_flags
    and #$fe
    sta kirby_flags
    jsr $9e59
    jsr $9e72
    lda #$00
    sta kirby_05EE_code+1
    jsr $9cb3
    lda kirby_health
    bmi B21_9e50
    lda kirby_copy_ability
    bmi B21_9e50
    lda kirby_flags
    and #$20
    bne B21_9e50
    lda #$27
    jsr PlaySoundEffect
    jsr $9e8d
    lda UNK_5FC+1
    cmp #$02
    bcs B21_9e41
    inc UNK_5FC+1
B21_9e41:
    lda #$00
    sta kirby_05E0
    lda #$ff
    sta kirby_copy_ability
    lda #$00
    sta ability_uses
B21_9e50:
    lda kirby_health
    bmi B21_9e57
    clc
    rts
B21_9e57:
    sec
    rts
B21_9e59:
    ldx #$03
B21_9e5b:
    lda OBJ_script, x
    bmi B21_9e6c
    lda OBJ_var2, x
    cmp #$14
    beq B21_9e69
    bcs B21_9e6c
B21_9e69:
    jsr OBJ_Destroy
B21_9e6c:
    inx
    cpx #$06
    bcc B21_9e5b
    rts
B21_9e72:
    ldx #$09
B21_9e74:
    lda OBJ_script, x
    cmp #$07
    bne B21_9e87
    lda #$19
    sta script_bank
    lda #$c8
    ldy #$b2
    jsr OBJ_TryReplaceScriptPc
B21_9e87:
    inx
    cpx #$12
    bcc B21_9e74
    rts
B21_9e8d:
    lda #$09
    sta OBJ_min_slot
    lda #$12
    sta OBJ_max_slot
    ldx OBJ_store_x_lo+1
    lda OBJ_store_x_hi+1
    sta new_object_x_hi
    lda OBJ_store_y_lo+1
    sec
    sbc #$04
    tay
    lda OBJ_store_y_hi+1
    sbc #$00
    sta new_object_y_hi
    lda #$04
    sta new_object_var0
    lda OBJ_var1+1
    eor #$80
    sta new_object_var1
    lda UNK_5FC+1
    sta new_object_var3
    lda kirby_copy_ability
    sta new_object_var4
    lda ability_uses
    sta new_object_var5
    lda #$05
    jmp OBJ_New
B21_9ed3:
    dec palette_fade
    jmp B3E_c977
B21_9ed9:
    lda #$00
    sta palette_fade
    jmp B3E_c977
B21_9ee1:
    lda kirby_flags
    and #$f7
    sta kirby_flags
    rts
B21_9eea:
    jsr FreezeAllObjects
    lda kirby_flags
    ora #$80
    sta kirby_flags
    rts
B21_9ef6:
    jsr UnfreezeAllObjects
    lda kirby_flags
    and #$7f
    sta kirby_flags
    rts



    .incbin "../split/prg/bank21.bin", $1f02