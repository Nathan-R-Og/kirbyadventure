.segment "PRG12": absolute

;updates a given bg metatile on screen, along with it's attr
;tmp0 = index into metatile arrays
;UNK0 = attr y,x in nybbles
UpdateBGMetatile:
    ;grab and write bg tiles
    ldy tmp0
    lda metatile_top_left, y
    sta palette_faded
    lda metatile_bottom_left, y
    sta palette_faded+1
    lda metatile_top_right, y
    sta palette_faded+2
    lda metatile_bottom_right, y
    sta palette_faded+3
    ;???
    lda metatile_palette, y
    sta palette_faded+4
    sta palette_faded+5

    ;UNK_0 is currently y,x in attr space in both nybbles
    ;so to get the ntbl tile, multiply both by 2

    .define attr_x UNK_5
    .define attr_y UNK_4
    .define ntbl_lo UNK_2
    .define ntbl_hi UNK_3

    ;get y
    ;attr_y = UNK_0 >> 4
    lda UNK_0
    lsr a
    lsr a
    lsr a
    lsr a
    sta attr_y

    ;get x
    ;attr_x = UNK_0 & 0xf
    lda UNK_0
    and #$0f
    sta attr_x

    ;convert the x and y to tiles

    ;write to first ntbl
    ;ntbl_lo = attr_y_lookuptbl1[attr_y] | (attr_x << 1)
    lda attr_x
    asl a
    ldy attr_y
    ora attr_y_lookuptbl1, y
    sta ntbl_lo

    ;ntbl_hi = attr_y_lookuptbl2[attr_y]
    lda attr_y_lookuptbl2, y
    sta ntbl_hi

    ; ntbl_hi:ntbl_lo form a ppuaddr pointer

    ;??? flag
    lda #0
    sta UNK_0
    ;copy count
    lda #2
    sta UNK_1
    ;read from
    lda #.LOBYTE(palette_faded)
    sta ptr0
    lda #.HIBYTE(palette_faded)
    sta ptr0+1
    jsr AddToPPUQueue

    inc ntbl_lo
    ;read from
    lda #.LOBYTE(palette_faded+2)
    sta ptr0
    jsr AddToPPUQueue

    ;write to second ntbl

    ;ntbl_lo = attr_y_lookuptbl3[attr_y] | (attr_x << 1)
    lda attr_x
    asl a
    ldy attr_y
    ora attr_y_lookuptbl3, y
    sta ntbl_lo

    ;ntbl_hi = attr_y_lookuptbl4[attr_y]
    lda attr_y_lookuptbl4, y
    sta ntbl_hi

    ;read from
    lda #.LOBYTE(palette_faded)
    sta ptr0
    jsr AddToPPUQueue

    inc ntbl_lo
    ;read from
    lda #.LOBYTE(palette_faded+2)
    sta ptr0
    jsr AddToPPUQueue

    ldx attr_x
    ldy attr_y

    ;mask index = palette_faded+4 | B12_80dc[attr_x] | B12_80ec[attr_y]
    lda palette_faded+4
    ora B12_80dc, x
    ora B12_80ec, y
    tax

    ;attr_buffer index = B12_8104[attr_y] | (attr_x >> 1)
    lda attr_x
    lsr a
    ora B12_8104, y

    jsr UpdateBGMetatileAttr

    ldx attr_x
    ldy attr_y

    ;mask index = palette_faded+4 | B12_80dc[attr_x] |
    ;B12_80ec[attr_y] | B12_80f8[attr_y]
    lda palette_faded+4
    ora B12_80dc, x
    ora B12_80ec, y
    eor B12_80f8, y
    tax

    ;attr_buffer index = B12_8110[attr_y] | (attr_x >> 1)
    lda attr_x
    lsr a
    ora B12_8110, y

    jmp UpdateBGMetatileAttr

;ppuaddr lo
attr_y_lookuptbl1:
.byte $00,$40,$80,$C0
.byte $00,$40,$80,$C0
.byte $00,$40,$80,$C0
;ppuaddr hi
attr_y_lookuptbl2:
.byte $A0,$A0,$A0,$A0
.byte $A1,$A1,$A1,$A1
.byte $A2,$A2,$A2,$A2

attr_y_lookuptbl3:
.byte $00,$40,$80,$00
.byte $40,$80,$C0,$00
.byte $40,$80,$C0,$00
attr_y_lookuptbl4:
.byte $A3,$A3,$A3,$A8
.byte $A8,$A8,$A8,$A9
.byte $A9,$A9,$A9,$AA

B12_80dc:
.byte $00,$04,$00,$04
.byte $00,$04,$00,$04
.byte $00,$04,$00,$04
.byte $00,$04,$00,$04
B12_80ec:
.byte $00,$08,$00,$08
.byte $00,$08,$00,$08
.byte $00,$08,$00,$08
B12_80f8:
.byte $00,$00,$00,$08
.byte $08,$08,$08,$08
.byte $08,$08,$08,$08
B12_8104:
.byte $00,$00,$08,$08
.byte $10,$10,$18,$18
.byte $20,$20,$28,$28
B12_8110:
.byte $30,$30,$38,$40
.byte $40,$48,$48,$50
.byte $50,$58,$58,$60

;args:
;x == mask index
;a == attr_buffer index
UpdateBGMetatileAttr:
    ;attr_buffer[abi] == (attr_buffer[abi] & B12_8150[x]) | B12_8160[x]
    tay
    lda attr_buffer, y
    and B12_8150, x
    ora B12_8160, x
    sta attr_buffer, y

    lda #1
    sta UNK_1

    ;attr_buffer index += 0xC0
    tya
    clc
    adc #$c0
    ;if > 0xff, branch
    bcs @overflow
    ;else
    ;ntbl_lo = attr_buffer index
    sta ntbl_lo
    ;ntbl_hi = 0x23
    lda #$23
    bne @continue
    @overflow:
    ;ntbl_lo = attr_buffer index + another 0xC0
    adc #$bf
    sta ntbl_lo
    ;ntbl_hi = 0x2b
    lda #$2b
    @continue:
    sta ntbl_hi

    ;attr_buffer index restore
    ;write new attr to ppu
    ;ptr0 = attr_buffer + attr_buffer index
    tya
    clc
    adc #.LOBYTE(attr_buffer)
    sta ptr0
    lda #.HIBYTE(attr_buffer)
    adc #0
    sta ptr0+1

    jmp AddToPPUQueue

B12_8150:
.byte $FC,$FC,$FC,$FC
.byte $F3,$F3,$F3,$F3
.byte $CF,$CF,$CF,$CF
.byte $3F,$3F,$3F,$3F
B12_8160:
.byte $00,$01,$02,$03
.byte $00,$04,$08,$0C
.byte $00,$10,$20,$30
.byte $00,$40,$80,$C0


B12_8170:
    ldx tmp0
    stx UNK_0
    lda tmp1
    jsr B3F_ebab
    lda tmp1
    lsr a
    lsr a
    lsr a
    sta attr_x
    lda #$10
    sta UNK_1
    lda tmp0+1
    and #$f0
    lsr a
    lsr a
    lsr a
    tax
    lsr a
    tay
B12_818e:
    sty ntbl_lo
    lda (ptr0), y
    tay
    lda tmp1
    and #$08
    bne B12_81a5
    lda metatile_top_left, y
    sta palette_faded, x
    lda metatile_top_right, y
    jmp $81ae
B12_81a5:
    lda metatile_bottom_left, y
    sta palette_faded, x
    lda metatile_bottom_right, y
B12_81ae:
    sta palette_faded+1, x
    stx ntbl_hi
    lda metatile_palette, y
    pha
    ldx ntbl_lo
    lda attr_x
    lsr a
    tay
    pla
    jsr B3F_ec58
    ldx ntbl_hi
    inx
    inx
    ldy ntbl_lo
    iny
    cpy #$10
    bcc B12_81d9
    inc UNK_0
    ldx UNK_0
    lda tmp1
    jsr B3F_ebab
    ldx #$00
    ldy #$00
B12_81d9:
    dec UNK_1
    bne B12_818e
    ldy attr_x
    lda #$00
    sta UNK_0
    lda #$20
    sta UNK_1
    lda $8256, y
    sta ntbl_lo
    lda $826e, y
    sta ntbl_hi
    lda #$00
    sta ptr0
    lda #$01
    sta ptr0+1
    jsr AddToPPUQueue
    ldy attr_x
    lda $8286, y
    sta ntbl_lo
    lda $829e, y
    sta ntbl_hi
    jsr AddToPPUQueue
    ldy attr_x
    lda #$08
    sta UNK_1
    lda $82b6, y
    ora #$c0
    sta ntbl_lo
    lda #$23
    sta ntbl_hi
    lda #$ed
    clc
    adc $82b6, y
    sta ptr0
    lda #$66
    adc #$00
    sta ptr0+1
    jsr AddToPPUQueue
    ldy attr_x
    lda $82ce, y
    and #$3f
    ora #$c0
    sta ntbl_lo
    lda $82ce, y
    and #$40
    beq B12_8241
    lda #$08
B12_8241:
    ora #$23
    sta ntbl_hi
    lda #$ed
    clc
    adc $82ce, y
    sta ptr0
    lda #$66
    adc #$00
    sta ptr0+1
    jmp AddToPPUQueue


    incbinRange "../split/prg/bank12.bin", $256, $2e6

B12_82e6:
    ldx tmp0
    stx UNK_0
    ldy map_bg_delay, x
    lda B3F_ed55, y
    sta ptr0
    lda B3F_ed65, y
    sta ptr0+1
    lda tmp1
    and #$f8
    lsr a
    lsr a
    lsr a
    tax
    lda #$18
    sta UNK_1
    lda tmp1
    and #$f0
    sta ntbl_lo
    lda tmp0+1
    lsr a
    lsr a
    lsr a
    sta attr_x
    lsr a
    ora ntbl_lo
B12_8313:
    sta ntbl_lo
    tay
    lda (ptr0), y
    tay
    lda tmp0+1
    and #$08
    bne B12_8330
    txa
    and #$01
B12_8322:
    bne B12_832a
    lda metatile_top_left, y
    jmp $833e
B12_832a:
    lda metatile_bottom_left, y
    jmp $833e
B12_8330:
    txa
    and #$01
    bne B12_833b
    lda metatile_top_right, y
    jmp $833e
B12_833b:
    lda metatile_bottom_right, y
B12_833e:
    sta palette_faded, x
    sta palette_faded+24, x
    stx ntbl_hi
    lda metatile_palette, y
    pha
    txa
    lsr a
    tay
    lda attr_x
    lsr a
    tax
    pla
    jsr B3F_ec58
    ldx ntbl_hi
    inx
    txa
    and #$01
    beq B12_8362
    lda ntbl_lo
    jmp $8388
B12_8362:
    lda ntbl_lo
    clc
    adc #$10
    cmp #$c0
    bcc B12_8388
    sbc #$c0
    pha
    lda UNK_0
    clc
    adc map_header
    sta UNK_0
    tax
    ldy map_bg_delay, x
    lda B3F_ed55, y
    sta ptr0
    lda B3F_ed65, y
    sta ptr0+1
    lda #$00
    tax
    pla
B12_8388:
    dec UNK_1
    bne B12_8313
    lda #$00
    sta UNK_0
    lda #$1e
    sta UNK_1
    lda attr_x
    sta ntbl_lo
    lda #$a0
    sta ntbl_hi
    lda #$00
    sta ptr0
    lda #$01
    sta ptr0+1
    jsr AddToPPUQueue
    lda #$12
    sta UNK_1
    lda #$a8
    sta ntbl_hi
    lda #$1e
    sta ptr0
    lda #$01
    sta ptr0+1
    jsr AddToPPUQueue
    jsr B3E_c0be
    .addr $83C5
    jsr B3E_c0be
    .addr $83CC
    rts

    .incbin "../split/prg/bank12.bin", $3c5