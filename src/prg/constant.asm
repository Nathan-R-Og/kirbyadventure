Script_Ptrs := $180000
Script_Ptrs_Hi := $a117
Script_Ptrs_Lo := $a0a7
Script_Banks := $a187

.segment "CONSTANT": absolute
B3E_C000:
    lda #$08
    sta PPUCTRL
    lda #$18
    sta PPUMASK
    lda #$00
    sta DMC_FREQ
    lda #$40
    sta FRAME_COUNTER
    sta IRQDISABLE
    lda PPUSTATUS
    lda #$10
    sta soft_reset_timer
    tax
B3E_c01f:
    sta PPUADDR
    sta PPUADDR
    eor #$10
    dex
    bne B3E_c01f
    stx PPUMASK
B3E_c02d:
    lda PPUSTATUS
    bpl B3E_c02d
B3E_c032:
    lda PPUSTATUS
    bmi B3E_c032
B3E_c037:
    lda PPUSTATUS
    bpl B3E_c037
B3E_c03c:
    lda PPUSTATUS
    bmi B3E_c03c
    cld
    ldx #$ff
    txs
    lda #$80
    sta ram_BANKSELECT
    lda #$80
    sta PRGRAMPROTECT
    jsr LongCall
	_is_faraddr $18a000
    jmp B3F_e3e4

B3E_c057:
    lda ram_PPUCTRL
    and #$7f
B3E_c05b:
    sta PPUCTRL
    sta ram_PPUCTRL
    rts
B3E_c061:
    lda ram_PPUCTRL
    ora #$80
    bne B3E_c05b
B3E_c067:
    pha
    lda ram_PPUCTRL
    bpl B3E_c076
    lda #$00
    sta nmi_done_flag
B3E_c070:
    lda nmi_done_flag
B3E_c072:
    beq B3E_c070
    pla
    rts

B3E_c076:
	lda PPUSTATUS
    bmi B3E_c076
B3E_c07b:
    lda PPUSTATUS
    bpl B3E_c07b
    pla
    rts

B3E_c082:
    lda #$00
    beq B3E_c088
B3E_c086:
    lda #$ff
B3E_c088:
    sta screen_on
    jmp B3E_c067
B3E_c08d:
    txa
    and #$1f
    sta UNK_0
    lda #$00
    sta UNK_1
    tya
    asl a
    asl a
    asl a
    asl a
    rol UNK_1
    asl a
    rol UNK_1
    adc UNK_0
    pha
    lda UNK_1
    cpx #$20
    bcs B3E_c0b1
    cpy #$20
    bcc B3E_c0b5
    ora #$28
    bne B3E_c0bb
B3E_c0b1:
    cpy #$20
    bcc B3E_c0b9
B3E_c0b5:
    ora #$20
    bne B3E_c0bb
B3E_c0b9:
    ora #$24
B3E_c0bb:
    tax
    pla
    rts
B3E_c0be:
    pla
    sta ptr0
    pla
    sta ptr0+1
    tay
    lda ptr0
    clc
    adc #$02
    tax
    bcc B3E_c0ce
    iny
B3E_c0ce:
    tya
    pha
    txa
    pha
    ldy #$02
    lda (ptr0),y
    tax
    dey
    lda (ptr0),y
B3E_c0da:
    sta ptr0
    stx ptr0+1
    ldy #$00
    lda (ptr0),y
    sta UNK_0
    iny
    lda (ptr0),y
    sta UNK_2
    iny
    lda (ptr0),y
    sta UNK_3
    iny
    lda (ptr0),y
    sta UNK_1
    iny
    lda (ptr0),y
    sta UNK_0+4
    iny
    lda UNK_0
    cmp #$03
    bcs B3E_c10b
    tya
    clc
    adc ptr0
    tax
    lda ptr0+1
    adc #$00
    jmp B3E_c115
B3E_c10b:
    sbc #$03
    sta UNK_0
    lda (ptr0),y
    tax
    iny
    lda (ptr0),y
B3E_c115:
    stx ptr0
    sta ptr0+1
    lda UNK_0
    cmp #$01
    beq B3E_c14b
    cmp #$02
    beq B3E_c125
    lda #$00
B3E_c125:
    sta UNK_0
B3E_c127:
    jsr AddToPPUQueue
    dec UNK_0+4
    beq B3E_c174
    lda UNK_0
    bne B3E_c13d
    lda ptr0
    clc
    adc UNK_1
    sta ptr0
    bcc B3E_c13d
    inc ptr0+1
B3E_c13d:
    lda UNK_2
    clc
    adc #$20
    sta UNK_2
    bcc B3E_c127
    inc UNK_3
    jmp B3E_c127
B3E_c14b:
    lda UNK_1
    ldx UNK_0+4
    sta UNK_0+4
    stx UNK_1
    lda UNK_3
    ora #$80
    sta UNK_3
    lda #$00
    sta UNK_0
B3E_c15d:
    jsr AddToPPUQueue
    dec UNK_0+4
    beq B3E_c174
    lda ptr0
    clc
    adc UNK_1
    sta ptr0
    bcc B3E_c16f
    inc ptr0+1
B3E_c16f:
    inc UNK_2
    jmp B3E_c15d
B3E_c174:
    rts

;args(?)
;UNK_3:UNK_2 ppuaddr pointer
;UNK_0 == ??? flag
;UNK_1 == copy count
;ptr0 == read pointer to write bytes to vram_update_queue
AddToPPUQueue:
    ;if top half of pointer somehow oob of ppu
    ;if UNK_3 < 0x3F, branch
    ;is this not effectively a bne
    lda UNK_3
    and #$3f
    cmp #$3f
    bcc B3E_c1a9
    ;if UNK_3 == 0x3f,

    lda UNK_1
    pha
    ldx UNK_2
    ldy #$00
B3E_c184:
    lda (ptr0),y
    cmp palette_buffer, x
    beq B3E_c195
    sta palette_buffer, x
    txa
    ora palette_update_something
    sta palette_update_something
B3E_c195:
    lda UNK_0
    bne B3E_c19a
    iny
B3E_c19a:
    inx
    dec UNK_1
    bne B3E_c184
    pla
    sta UNK_1
    lda screen_on
    bne B3E_c1d5
    jmp B3E_c282

B3E_c1a9:
    ;if screen on, branch
    lda screen_on
    bne B3E_c1e3
    ;else,

    lda ram_PPUCTRL
    ldy UNK_3
    bpl B3E_c1b7
    ora #$04
    bne B3E_c1b9
B3E_c1b7:
    and #$fb
B3E_c1b9:
    sta PPUCTRL
    sty PPUADDR
    lda UNK_2
    sta PPUADDR
    lda UNK_0
    bne B3E_c1d6
    ldy #$00
    ldx UNK_1
B3E_c1cc:
    lda (ptr0),y
    sta PPUDATA
    iny
    dex
    bne B3E_c1cc
B3E_c1d5:
    rts
B3E_c1d6:
    ldy #$00
    ldx UNK_1
    lda (ptr0),y
B3E_c1dc:
    sta PPUDATA
    dex
    bne B3E_c1dc
    rts

B3E_c1e3:
    ;check if has room
    ;a = (vram_update_queue_end - vram_update_queue_begin) - 1
    lda vram_update_queue_end
    clc
    sbc vram_update_queue_begin
    ;a -= UNK_1 copy count
    sec
    sbc UNK_1
    ;if a just went negative, branch
    bcc B3E_c1f1
    ;else,

    ;this operation will take 3 bytes (?)
    ;a -= 3
    sbc #3
    ;if a is still positive, branch
    bcs B3E_c1f7
B3E_c1f1:
    jsr B3E_c067
    jmp B3E_c1e3
B3E_c1f7:
    ldx vram_update_queue_begin
    ;write UNK_1, UNK_3:UNK_2 to vram queue
    lda UNK_1
    sta vram_update_queue, x
    inx
    lda UNK_3
    sta vram_update_queue, x
    inx
    lda UNK_2
    sta vram_update_queue, x
    inx
    ;if UNK_0 == 0, branch
    lda UNK_0
    beq B3E_c21f
    ldy #$00
    lda (ptr0),y
    ldy UNK_1
B3E_c215:
    sta vram_update_queue, x
    inx
    dey
    bne B3E_c215
    stx vram_update_queue_begin
    rts
B3E_c21f:
    ;write loop
    ldy #0
    @loop:
    lda (ptr0),y
    sta vram_update_queue, x
    inx
    iny
    cpy UNK_1
    bcc @loop

    ;write back new beginning
    stx vram_update_queue_begin
    rts

B3E_c22f:
    ldy palette_update_something
    beq B3E_c23e
    sta tmp1+1
    jsr B3E_c282
    lda tmp1+1
    sec
    sbc #$26
B3E_c23e:
    ldx vram_update_queue_end
    cpx vram_update_queue_begin
    beq B3E_c27f
B3E_c244:
    sec
    sbc vram_update_queue, x
    bcc B3E_c27f
    sbc #$05
    bcc B3E_c27f
    sta tmp1+1
    lda vram_update_queue, x
    sta tmp2
    inx
    lda ram_PPUCTRL
    ldy vram_update_queue, x
    bpl B3E_c25f
    ora #$04
B3E_c25f:
    sta PPUCTRL
    sty PPUADDR
    inx
    lda vram_update_queue, x
    sta PPUADDR
    inx
    ldy tmp2
B3E_c26f:
    lda vram_update_queue, x
    sta PPUDATA
    inx
    dey
    bne B3E_c26f
    lda tmp1+1
    cpx vram_update_queue_begin
    bne B3E_c244
B3E_c27f:
    stx vram_update_queue_end
    rts
B3E_c282:
    lda #$3f
    sta PPUADDR
    lda #$00
    sta PPUADDR
    ldy #$00
B3E_c28e:
    lda $6000
    sta PPUDATA
    lda $6001,y
    sta PPUDATA
    lda $6002,y
    sta PPUDATA
    lda $6003,y
    sta PPUDATA
    iny
    iny
    iny
    iny
    cpy #$20
    bcc B3E_c28e
    lda #$3f
    sta PPUADDR
    lda #$00
    sta PPUADDR
    sta PPUADDR
    sta PPUADDR
    sta palette_update_something
    rts
B3E_c2c2:
    ldx #$00
    jsr B3E_c301
B3E_c2c7:
    sta tmp2
    jsr B3E_c301
    cmp tmp2
    bne B3E_c2c7
    jsr B3E_c2e0
    inx
    jsr B3E_c301
B3E_c2d7:
    sta tmp2
    jsr B3E_c301
    cmp tmp2
    bne B3E_c2d7
B3E_c2e0:
    lda tmp2
    and #$0c
    cmp #$0c
    bne B3E_c2ee
    lda tmp2
    and #$f3
    sta tmp2
B3E_c2ee:
    lda tmp2
    and #$03
    cmp #$03
    bne B3E_c2fc
    lda tmp2
    and #$fc
    sta tmp2
B3E_c2fc:
    lda tmp2
    sta pad_hold,x
    rts
B3E_c301:
    ldy #$01
    sty JOY1
    dey
    sty JOY1
    ldy #$07
    lda #$00
    sta tmp1+1
B3E_c310:
    lda JOY1,x
    and #$03
    beq B3E_c31e
    lda $c324,y
    ora tmp1+1
    sta tmp1+1
B3E_c31e:
    dey
    bpl B3E_c310
    lda tmp1+1
    rts
.byte $01,$02,$04,$08,$10,$20,$40,$80
B3E_c32c:
    ldx #$00
    jsr B3E_c332
    inx
B3E_c332:
    lda $6021,x
    eor #$ff
    and pad_hold,x
    sta pad_press,x
    lda pad_hold,x
    sta $6021,x
    rts

NMI:
    pha
    txa
    pha
    tya
    pha
    lda ram_PPUMASK
    and screen_on
    sta PPUMASK
    sta IRQDISABLE
    beq B3E_c378
    lda $603d
    and #$01
    tax
    lda #$00
    sta OAMADDR
    lda B3E_c3a2,x
    sta OAMDMA
    lda #$6a
    jsr B3E_c22f
    jsr B3E_c3a4
    jsr B3E_cace
    jsr B3E_c401
    lda #$01
    sta $01a5
    bne B3E_c37c
B3E_c378:
    lda vram_update_queue_begin
    sta vram_update_queue_end
B3E_c37c:
    inc nmi_done_flag
    jsr B3E_c2c2
    jsr B3F_f8a0
    lda pad_hold
    and #$f0
    cmp #$f0
    bne B3E_c393
    dec soft_reset_timer
    bne B3E_c397
    jmp Reset
B3E_c393:
    lda #$10
    sta soft_reset_timer
B3E_c397:
    lda ram_BANKSELECT
    sta BANKSELECT
    pla
    tay
    pla
    tax
    pla
    rti
B3E_c3a2:
	.byte $03,$02
B3E_c3a4:
    lda #$00
    sta PPUADDR
    sta PPUADDR
    lda $051e
    bne B3E_c3d9
    lda camera_x
    clc
    adc $01a3
    sta PPUSCROLL
    lda camera_y
    clc
    adc $01a4
    sta PPUSCROLL
    lda ram_PPUCTRL
    and #$fc
    sta tmp1+1
    lda camera_x+1
    lsr a
    lda camera_y+1
    and #$01
    rol a
    ora tmp1+1
    sta ram_PPUCTRL
    sta PPUCTRL
    rts
B3E_c3d9:
    cmp #$07
    beq B3E_c3f7
    lda temp_camera_x
    clc
    adc $01a3
    sta PPUSCROLL
    lda temp_camera_y
    clc
    adc $01a4
    sta PPUSCROLL
    lda ram_PPUCTRL
    and #$fc
    sta PPUCTRL
    rts
B3E_c3f7:
    lda ram_PPUCTRL
    and #$fc
    sta ram_PPUCTRL
    sta PPUCTRL
    rts
B3E_c401:
    lda ram_BANKSELECT
    pha
    ldx #$05
B3E_c406:
    txa
    ora #$80
    sta ram_BANKSELECT
    sta BANKSELECT
    lda chr_banks,x
    sta BANKDATA
    dex
    bne B3E_c406
    lda $01a5
    bne B3E_c427
    lda #$80
    sta ram_BANKSELECT
    sta BANKSELECT
    lda chr_banks
    sta BANKDATA
B3E_c427:
    pla
    sta ram_BANKSELECT
    rts
B3E_c42b:
    lda #$00
    beq B3E_c431
B3E_c42f:
    lda #$01
B3E_c431:
    sta nametable_mirroring
    sta MIRROR
    sta MIRROR
    rts


;ptr0 = source
;ptr1 = dest
Decompress:
	lda ptr1
	sta $04
	lda ptr1+1
	sta $05
	ldy #0
	ldx #0
Decompress_Loop:
	lda (ptr0),y

    ;if byte == $ff, exit immediately
	cmp #$ff
	bne @not_exit
	rts
    @not_exit:

    ;if type == 7, get longer data
    and #$e0
    cmp #$e0
    bne @not_type_7

    ;;;type seven changes the `type` and `length` properties
    ;;;such that type = ((bytes[i] << 3) & 0b11100000) >> 5
    ;make and push type
    lda (ptr0),y
    asl a
    asl a
    asl a
    and #$e0
    pha
    ;get byte again and y++
    jsr Decompress_Ptr016BitInc

    ;low two bits of byte == length.hi
    and #%00000011
    sta UNK_1
    ;get next byte and y++
    jsr Decompress_Ptr016BitInc
    ;next byte == length.lo
    sta UNK_0
    jmp B3E_c474

    ;else,
    @not_type_7:
    ;push type
    pha
    ;get next byte and y++
    jsr Decompress_Ptr016BitInc
    ;get length to UNK_0
    and #%00011111
    sta UNK_0

    ;?
    stx UNK_1


    B3E_c474: ;normal proc?
    ;length++
    inc UNK_0
    ;a <-- type
    pla

    ;if type < 4, skip over jump
    bpl @do_normal_type
    ;else, jump to lz handler
    jmp B3E_c4dd
    @do_normal_type:
    ;if type == 1, branch
    cmp #1 << 5
    beq Decompress_Type1
    ;elif type == 2, branch
    cmp #2 << 5
    beq Decompress_Type2
    ;elif type == 3, branch
    cmp #3 << 5
    beq Decompress_Type3

    ;else, type is 0
Decompress_Type0:
    ;;; copy sequence verbatim
    ;get byte
    jsr Decompress_Ptr016BitInc
    ;write byte
    jsr Decompress_Ptr116BitInc
    ;if length.lo != 0, loop
    dec UNK_0
    bne Decompress_Type0
    ;if length.hi > -1, loop
    dec UNK_1
    bpl Decompress_Type0
    ;exit
    jmp Decompress_Loop

Decompress_Type1:
    ;;; copy byte length times
    ;get byte
    jsr Decompress_Ptr016BitInc
    @type1_loop:
    ;write byte
    jsr Decompress_Ptr116BitInc
    ;if length.lo != 0, loop
    dec UNK_0
    bne @type1_loop
    ;if length.hi > -1, loop
    dec UNK_1
    bpl @type1_loop
    ;exit
    jmp Decompress_Loop

Decompress_Type2:
    ;;; copy 2 bytes length times
    byte1 := UNK_2
    byte2 := UNK_3
    jsr Decompress_Ptr016BitInc
    sta byte1
    jsr Decompress_Ptr016BitInc
    sta byte2
    @type2_loop:
    ;write byte1
    lda byte1
    jsr Decompress_Ptr116BitInc
    ;write byte2
    lda byte2
    jsr Decompress_Ptr116BitInc
    ;if length.lo != 0, loop
    dec UNK_0
    bne @type2_loop
    ;if length.hi > -1, loop
    dec UNK_1
    bpl @type2_loop
    ;exit
    jmp Decompress_Loop

Decompress_Type3:
    ;;; increment per copy
    ;get byte
    jsr Decompress_Ptr016BitInc
    @type3_loop:
    ;write byte
    jsr Decompress_Ptr116BitInc
    ;byte++
    clc
    adc #1
    ;if length.lo != 0, loop
    dec UNK_0
    bne @type3_loop
    ;if length.hi > -1, loop
    dec UNK_1
    bpl @type3_loop
    ;exit
    jmp Decompress_Loop

B3E_c4dd:
    sta UNK_2
    jsr Decompress_Ptr016BitInc
    sta ptr2+1
    jsr Decompress_Ptr016BitInc
    clc
    adc UNK_0+4
    sta ptr2
    lda ptr2+1
    adc UNK_0+5
    sta ptr2+1
    tya
    pha
    ldy #$00
    lda UNK_2
    cmp #$80
    beq B3E_c504
    cmp #$a0
    beq B3E_c517
    cmp #$c0
    beq B3E_c534
B3E_c504:
    jsr B3E_c555
    jsr Decompress_Ptr116BitInc
    dec UNK_0
    bne B3E_c504
    dec UNK_1
    bpl B3E_c504
    pla
    tay
    jmp Decompress_Loop
B3E_c517:
    jsr B3E_c555
    sta UNK_2
    ldx #$08
B3E_c51e:
    asl UNK_2
    ror a
    dex
    bne B3E_c51e
    jsr Decompress_Ptr116BitInc
    dec UNK_0
    bne B3E_c517
    dec UNK_1
    bpl B3E_c517
    pla
    tay
    jmp Decompress_Loop
B3E_c534:
    lda (ptr2),y
    dey
    cpy #$ff
    bne B3E_c53d
    dec ptr2+1
B3E_c53d:
    jsr Decompress_Ptr116BitInc
    dec UNK_0
    bne B3E_c534
    dec UNK_1
    bpl B3E_c534
    pla
    tay
    jmp Decompress_Loop

;retrieve ptr0[y]++
Decompress_Ptr016BitInc:
    lda (ptr0),y
    iny
    bne @no_16bit
    inc ptr0+1
    @no_16bit:
    rts

B3E_c555:
    lda (ptr2),y
    iny
    bne B3E_c55e
    inc ptr2+1
    bmi B3E_c55f
B3E_c55e:
    rts
B3E_c55f:
	pla
	pla
	rts

;write ptr1[x] = a
;ptr1++
Decompress_Ptr116BitInc:
    sta (ptr1,x)
    inc ptr1
    bne @no_16bit
    inc ptr1+1
    @no_16bit:
    rts

B3E_c56b:
    cpy #$02
    bcc B3E_c599
    dey
    dey
    sta tmp0
    txa
    pha
    lda tmp0
    ldx B3E_c59a,y
    jsr B3E_c698
    stx tmp0+1
    pla
    sta tmp0
    lda tmp0+1
    pha
    lda tmp0
    ldx B3E_c59a,y
    jsr B3E_c698
    sta tmp0
    pla
    clc
    adc tmp0
    pha
    txa
    adc #$00
    tax
    pla
B3E_c599:
    rts
B3E_c59a:
.byte $80,$55,$40,$33,$2A,$24,$20,$1C
.byte $19,$17,$15,$13,$12,$11,$10,$0F
.byte $0E,$0D
.res 2, 12
.res 2, 11
.res 2, 10
.res 3, 9
.res 4, 8
.res 4, 7
.res 6, 6
.res 9, 5
.res 13, 4
.res 21, 3
.res 43, 2
.res 127, 1

B3E_c698:
    sta tmp0
    stx tmp0+1
    stx UNK_D
    and tmp0+1
    and #$01
    sta UNK_E
    ldx tmp0
    lda B3E_c7dd,x
    sta UNK_F
    clc
    lda UNK_E
    adc B3E_c6dd,x
    ldx tmp0+1
    adc B3E_c6dd,x
    sta UNK_E
    lda UNK_F
    adc B3E_c7dd,x
    sta UNK_F
    lda tmp0
    cmp tmp0+1
    bcs B3E_c6c9
    sta UNK_D
    lda tmp0+1
B3E_c6c9:
    sec
    sbc UNK_D
    tax
    lda UNK_E
    sbc B3E_c6dd,x
    sta tmp0
    lda UNK_F
    sbc B3E_c7dd,x
    tax
    lda tmp0
    rts
B3E_c6dd:
.byte $00,$00,$02,$04,$08,$0C,$12,$18
.byte $20,$28,$32,$3C,$48,$54,$62,$70
.byte $80,$90,$A2,$B4,$C8,$DC,$F2,$08
.byte $20,$38,$52,$6C,$88,$A4,$C2,$E0
.byte $00,$20,$42,$64,$88,$AC,$D2,$F8
.byte $20,$48,$72,$9C,$C8,$F4,$22,$50
.byte $80,$B0,$E2,$14,$48,$7C,$B2,$E8
.byte $20,$58,$92,$CC,$08,$44,$82,$C0
.byte $00,$40,$82,$C4,$08,$4C,$92,$D8
.byte $20,$68,$B2,$FC,$48,$94,$E2,$30
.byte $80,$D0,$22,$74,$C8,$1C,$72,$C8
.byte $20,$78,$D2,$2C,$88,$E4,$42,$A0
.byte $00,$60,$C2,$24,$88,$EC,$52,$B8
.byte $20,$88,$F2,$5C,$C8,$34,$A2,$10
.byte $80,$F0,$62,$D4,$48,$BC,$32,$A8
.byte $20,$98,$12,$8C,$08,$84,$02,$80
.byte $00,$80,$02,$84,$08,$8C,$12,$98
.byte $20,$A8,$32,$BC,$48,$D4,$62,$F0
.byte $80,$10,$A2,$34,$C8,$5C,$F2,$88
.byte $20,$B8,$52,$EC,$88,$24,$C2,$60
.byte $00,$A0,$42,$E4,$88,$2C,$D2,$78
.byte $20,$C8,$72,$1C,$C8,$74,$22,$D0
.byte $80,$30,$E2,$94,$48,$FC,$B2,$68
.byte $20,$D8,$92,$4C,$08,$C4,$82,$40
.byte $00,$C0,$82,$44,$08,$CC,$92,$58
.byte $20,$E8,$B2,$7C,$48,$14,$E2,$B0
.byte $80,$50,$22,$F4,$C8,$9C,$72,$48
.byte $20,$F8,$D2,$AC,$88,$64,$42,$20
.byte $00,$E0,$C2,$A4,$88,$6C,$52,$38
.byte $20,$08,$F2,$DC,$C8,$B4,$A2,$90
.byte $80,$70,$62,$54,$48,$3C,$32,$28
.byte $20,$18,$12,$0C,$08,$04,$02,$00
B3E_c7dd:
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$01
.byte $01,$01,$01,$01,$01,$01,$01,$01
.byte $02,$02,$02,$02,$02,$02,$02,$02
.byte $03,$03,$03,$03,$03,$03,$04,$04
.byte $04,$04,$04,$05,$05,$05,$05,$05
.byte $06,$06,$06,$06,$07,$07,$07,$07
.byte $08,$08,$08,$08,$09,$09,$09,$09
.byte $0A,$0A,$0A,$0A,$0B,$0B,$0B,$0C
.byte $0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E
.byte $0F,$0F,$0F,$10,$10,$10,$11,$11
.byte $12,$12,$12,$13,$13,$13,$14,$14
.byte $15,$15,$15,$16,$16,$17,$17,$18
.byte $18,$18,$19,$19,$1A,$1A,$1B,$1B
.byte $1C,$1C,$1D,$1D,$1E,$1E,$1F,$1F
.byte $20,$20,$21,$21,$22,$22,$23,$23
.byte $24,$24,$25,$25,$26,$26,$27,$27
.byte $28,$29,$29,$2A,$2A,$2B,$2B,$2C
.byte $2D,$2D,$2E,$2E,$2F,$30,$30,$31
.byte $32,$32,$33,$33,$34,$35,$35,$36
.byte $37,$37,$38,$39,$39,$3A,$3B,$3B
.byte $3C,$3D,$3D,$3E,$3F,$3F,$40,$41
.byte $42,$42,$43,$44,$45,$45,$46,$47
.byte $48,$48,$49,$4A,$4B,$4B,$4C,$4D
.byte $4E,$4E,$4F,$50,$51,$52,$52,$53
.byte $54,$55,$56,$56,$57,$58,$59,$5A
.byte $5B,$5B,$5C,$5D,$5E,$5F,$60,$61
.byte $62,$62,$63,$64,$65,$66,$67,$68
.byte $69,$6A,$6A,$6B,$6C,$6D,$6E,$6F
.byte $70,$71,$72,$73,$74,$75,$76,$77
.byte $78,$79,$7A,$7B,$7C,$7D,$7E,$7F


Rand:
	sta tmp0
	txa
	pha
	lda tmp0
	pha
	lda random_number
	ldx #$0b
	@B3E_c8e8:
	asl random_number
	rol random_number+1
	rol a
	rol a
	eor random_number
	rol a
	eor random_number
	lsr a
	lsr a
	eor #$ff
	and #$01
	ora random_number
	sta random_number
	dex
	bne @B3E_c8e8
	tax
	pla
	beq @B3E_c907
	jsr B3E_c698
	@B3E_c907:
	stx tmp0+1
	pla
	tax
	lda tmp0+1
	rts

;a == start index
;y == count
;ptr1 == palette data
B3E_c90e:
	;UNK_1 = y
	sty UNK_1

	;store a
	pha

	;ptr0 = color_palette + a
	clc
	adc #.LOBYTE(color_palette)
	sta ptr0
	lda #0
	adc #.HIBYTE(color_palette)
	sta ptr0+1

	ldx palette_fade

	dey
	@get_color:
	lda (ptr1),y
	bmi @msb
	sta (ptr0),y
	@msb:
	lda (ptr0),y
	jsr B3E_c9b1
	sta palette_faded,y
	dey
	bpl @get_color
	pla
	clc
	adc #$00
	sta $02
	lda #$00
	adc #$3f
	sta $03
	lda #$00
	sta ptr0
	lda #$01
	sta ptr0+1
	lda #$00
	sta $00
	jmp AddToPPUQueue

;$1a2 == way
Palette_FadeDarkIn:
	ldx palette_fade
	inx
	bmi @B3E_c958
	cpx #5
	bcc @B3E_c958
	ldx #4
	@B3E_c958:
  	stx palette_fade
B3E_c95b:
  	ldy #$1f
	@B3E_c95d:
	lda color_palette,y
	jsr B3E_c9b1
	sta palette_faded,y
	dey
	bpl @B3E_c95d
	lda #$70
	ldx #$c9
	jmp B3E_c0da
B3E_c970:
	.byte $03,$00,$3F,$20,$01,$00,$01
B3E_c977:
    ldx palette_fade
    ldy #$0f
B3E_c97c:
    lda $0182,y
    jsr B3E_c9b1
    sta $0100,y
    dey
    bpl B3E_c97c
    lda #$8f
    ldx #$c9
    jmp B3E_c0da
B3E_c98f:
	.byte $03,$00,$3F,$10,$01,$00,$01
B3E_c996:
    ldx palette_fade
    dex
    bpl B3E_c9a2
    cpx #$fc
    bcs B3E_c9a2
    ldx #$fc
B3E_c9a2:
    stx palette_fade
    jmp B3E_c95b
B3E_c9a8:
    lda #$00
B3E_c9aa:
    sta palette_fade
    tax
    jmp B3E_c95b
B3E_c9b1:
    cpx #$00
    bmi B3E_c9cc
    cmp #$0f
    bne B3E_c9bb
    lda #$f0
B3E_c9bb:
    clc
    adc B3E_c9e2,x
    cmp #$f0
    bne B3E_c9c5
    lda #$0f
B3E_c9c5:
    cmp #$40
    bcc B3E_c9cb
    lda #$30
B3E_c9cb:
    rts
B3E_c9cc:
    stx tmp0+1
    pha
    txa
    eor #$ff
    clc
    adc #$01
    tax
    pla
    sec
    sbc B3E_c9e2,x
    bcs B3E_c9df
    lda #$0f
B3E_c9df:
    ldx tmp0+1
    rts
B3E_c9e2:
.byte $00,$10,$20,$30,$40,$85,$00,$8A
.byte $0A,$29,$04,$05,$00,$85,$00,$98
.byte $0A,$0A,$29,$08,$05,$00,$85,$00
.byte $8A,$4A,$4A,$29,$07,$85,$01,$98
.byte $0A,$29,$38,$05,$01,$85,$01,$A5
.byte $4A,$29,$01,$D0,$40,$A4,$01,$8A
.byte $29,$20,$F0,$04,$98,$09,$40,$A8
.byte $A6,$00,$B9,$ED,$66,$3D,$8E,$CA
.byte $1D,$9E,$CA,$99,$ED,$66,$98,$18
.byte $69,$ED,$85,$16,$A9,$66,$69,$00
.byte $85,$17,$98,$29,$3F,$09,$C0,$85
.byte $02,$98,$29,$40,$4A,$4A,$4A,$4A
.byte $09,$23,$85,$03,$A9,$01,$85,$00
.byte $85,$01,$4C,$75,$C1,$A6,$01,$98
.byte $29,$20,$F0,$04,$8A,$09,$40,$AA
.byte $A4,$00,$BD,$ED,$66,$39,$8E,$CA
.byte $19,$9E,$CA,$9D,$ED,$66,$8A,$18
.byte $69,$ED,$85,$16,$A9,$66,$69,$00
.byte $85,$17,$8A,$29,$3F,$09,$C0,$85
.byte $02,$8A,$29,$40,$4A,$4A,$4A,$09
.byte $23,$85,$03,$A9,$01,$85,$00,$85
.byte $01,$4C,$75,$C1,$FC,$FC,$FC,$FC
.byte $F3,$F3,$F3,$F3,$CF,$CF,$CF,$CF
.byte $3F,$3F,$3F,$3F,$00,$01,$02,$03
.byte $00,$04,$08,$0C,$00,$10,$20,$30
.byte $00,$40,$80,$C0,$FE,$FD,$FB,$F7
.byte $EF,$DF,$BF,$7F,$7F,$BF,$DF,$EF
.byte $F7,$FB,$FD,$FE


B3E_cabe:
.byte %00000001
.byte %00000010
.byte %00000100
.byte %00001000
.byte %00010000
.byte %00100000
.byte %01000000
.byte %10000000

B3E_cab6:
.byte %10000000
.byte %01000000
.byte %00100000
.byte %00010000
.byte %00001000
.byte %00000100
.byte %00000010
.byte %00000001

B3E_cace:
    ldy $0180
    cpy #$07
    bcs B3E_caf0
    lda $cae2,y
    sta UNK_1C
    lda $cae9,y
    sta UNK_1C+1
    jmp (UNK_1C)
.byte $F0,$1A,$34,$34,$F7,$0B,$4C,$CA
.byte $CB,$CB,$CB,$CA,$CB,$CB
B3E_caf0:
    sty $0181
    sta IRQDISABLE
    rts


B3E_caf7:
    sty last_scroll_type
    lda #$00
    sta $30
    lda #$e0
    sta $31
    lda #$9f
    ldy #$43
    ldx #$fb
    jmp SetIrqHandler
    lda $60
    clc
    adc #$07
    sta $60
    sta PPUSCROLL
    lda temp_camera_y
    sta PPUSCROLL
B3E_cb1a:
    sty last_scroll_type
    lda #$01
    sta $30
    lda #$20
    sta $31 ;Modify STA $xxxx to STA $0120
    lda ram_PPUMASK
    and #$ef
    sta $2b
    lda #$af
    ldy #$40
    ldx #$f9
    jmp SetIrqHandler
    cpy last_scroll_type
    bne B3E_cb1a
    lda $60
    sta PPUSCROLL
    lda temp_camera_y
    sta PPUSCROLL
    lda #$01
    sta file_select_irq_line
    lda $5b
    jmp SetIrqHandler_inargs
    sty last_scroll_type
    lda #$00
    sta $30
    lda #$e0
    sta $31
    lda #$ef
    sec
    sbc file_select_irq_line
    sbc file_select_irq_line
    ldy #$bf
    ldx #$fb

;A  = line counter
SetIrqHandler:
    sty irq_code_pointer
    stx irq_code_pointer+1
	SetIrqHandler_inargs:
    sta IRQLATCH
    sta IRQRELOAD
    sta IRQENABLE
    cli
    rts

;Global version of InitializeObjects
OBJ_InitModule:
    jsr LongCall
    _is_faraddr InitObjModule
    rts

OBJ_NewFresh:
    pha
    lda #$00
    sta new_object_z_lo
    sta new_object_z_hi
    sta new_object_var0
    sta new_object_var1
    sta new_object_var2
    sta new_object_var3
    sta new_object_var4
    sta new_object_var5
    sta new_object_var6
    sta new_object_var7

    sta OBJ_min_slot
    lda #MAX_OBJ
    sta OBJ_max_slot

    pla
    ; FALLTHROUGH

OBJ_New:
    pha
    tya
    pha
    txa
    pha
    jsr OBJ_GetFreeSlot
    bcc @success
    pla
    pla
    pla
    lda #-1 ; Return invalid object slot
    rts

    @success:
    jsr SCR_GetFreeSlot
    tya
    sta OBJ_script_slot,x
    lda #-1
    sta SCR_next,y

    lda #.LOBYTE(B3E_d97d) ; TODO
    sta obj_onposition_lo,x
    lda #.HIBYTE(B3E_d97d) ; TODO
    sta obj_onposition_hi,x

    lda #.LOBYTE(B3E_da89) ; TODO
    sta obj_draw_lo,x
    lda #.HIBYTE(B3E_da89) ; TODO
    sta obj_draw_hi,x

    lda #.LOBYTE(AS_Move_ApplyXY_Absolute) ; TODO
    sta obj_move_lo,x
    lda #.HIBYTE(AS_Move_ApplyXY_Absolute) ; TODO
    sta obj_move_hi,x

    lda #$FF
    sta OBJ_lower_prg,x

    lda new_object_var0
    sta OBJ_var0,x
    lda new_object_var1
    sta OBJ_var1,x
    lda new_object_var2
    sta OBJ_var2,x
    lda new_object_var3
    sta OBJ_var3,x
    lda new_object_var4
    sta OBJ_var4,x
    lda new_object_var5
    sta OBJ_var5,x
    lda new_object_var6
    sta OBJ_var6,x
    lda new_object_var7
    sta OBJ_var7,x

    lda #$80
    sta OBJ_x_frac,x
    sta OBJ_y_frac,x
    sta OBJ_z_frac,x

    pla
    sta OBJ_x_lo,x
    sta OBJ_store_x_lo,x

    lda new_object_x_hi
    sta OBJ_x_hi,x
    sta OBJ_store_x_hi,x

    pla
    sta OBJ_y_lo,x
    sta OBJ_store_y_lo,x

    lda new_object_y_hi
    sta OBJ_y_hi,x
    sta OBJ_store_y_hi,x

    lda #$80
    sta OBJ_z_lo,x
    sta OBJ_store_z_lo,x
    sta OBJ_z_hi,x
    sta OBJ_store_z_hi,x

    jsr OBJ_Link

    pla
    jmp OBJ_SetScript

; $CC4B
OBJ_ReplaceScript:
    pha
    lda OBJ_script,x
    bpl @valid
    pla
    rts
    @valid:
    jsr SCR_Unlink
    jsr SCR_GetFreeSlot
    tya
    sta OBJ_script_slot,x
    lda #-1
    sta SCR_next,y

    pla
    ; FALLTHROUGH

OBJ_SetScript:
    sta OBJ_script,x
    tay

    lda upper_prg
    pha
    lda #^Script_Ptrs
    jsr UpperBankswitch

    lda #$00
    sta OBJ_vel_x_lo,x
    sta OBJ_vel_x_hi,x
    sta OBJ_vel_y_lo,x
    sta OBJ_vel_y_hi,x
    sta OBJ_vel_z_lo,x
    sta OBJ_vel_z_hi,x

    lda #-1
    sta OBJ_pose,x

    lda Script_Banks,y ; a187
    sta script_bank
    lda Script_Ptrs_Lo,y ; a0a7
    pha
    lda Script_Ptrs_Hi,y ; a117
    tay
    pla
    jsr OBJ_SetScriptPc

    pla
    jsr UpperBankswitch
    txa ; Return object slot
    rts


; $CCA0
OBJ_TryReplaceScriptPcUpper:
    ldx upper_prg
    stx script_bank
    ldx curr_object_slot
    ; FALLTHROUGH
;YA = script pointer
OBJ_TryReplaceScriptPc:
    pha
    tya
    pha
    lda OBJ_script,x
    bpl OBJ_ReplaceScriptPc
    pla
    pla
    rts

;YA = script pointer
OBJ_ReplaceScriptPc:
    jsr SCR_Unlink
    jsr SCR_GetFreeSlot
    tya
    sta OBJ_script_slot,x
    lda #-1
    sta SCR_next,y

    pla
    tay
    pla
    ; FALLTHROUGH
;YA = script pointer
OBJ_SetScriptPc:
    pha
    tya
    pha

    jsr OBJ_EndTick

    ldy OBJ_script_slot,x
    lda script_bank
    sta SCR_bank,y
    pla
    sta SCR_pc_hi,y
    pla
    sta SCR_pc_lo,y

    lda #0
    sta SCR_sleep_timer,y
    sta SCR_stack_pointer,y
    txa
    rts

OBJ_Main:
    jsr ClearOam
    ldx first_obj
    bmi @tickdone
    @tickloop:
    stx curr_object_slot
    lda OBJ_next,x
    sta OBJ_next_slot

    lda OBJ_tick_bank,x
    bmi @ticknext
    jsr OBJ_DoTick
    @ticknext:
    ldx OBJ_next_slot
    bpl @tickloop

    @tickdone:
    lda ram6600
    beq @skipbankswitch
    lda upper_prg
    pha
    lda #$38
    jsr UpperBankswitch
    jsr $A000 ; TODO
    pla
    jsr UpperBankswitch
    @skipbankswitch:
    jsr CallFrom603B

    ldx OBJ_first_draw
    bmi @drawdone
    @drawloop:
    txa
    pha
    sta curr_object_slot

    lda obj_onposition_lo,x
    ldy obj_onposition_hi,x
    jsr CallFromYA

    lda OBJ_spritemap_bank,x
    bmi @drawnext
    jsr LowerBankswitch

    lda obj_draw_lo,x
    sta script_jmp_addr
    lda obj_draw_hi,x
    sta script_jmp_addr+1

    lda OBJ_pose,x
    cmp #$FF
    beq @drawnext

    ldy #$00
    asl a
    bcc @skip1
    iny
    @skip1:
    sty ptr0+1
    clc
    adc OBJ_spritemap_lo,x
    sta ptr0
    lda ptr0+1
    adc OBJ_spritemap_hi,x
    sta ptr0+1

    ldy #$01
    lda (ptr0),y
    tax
    dey
    lda (ptr0),y
    jsr CallFromJmpPtr

    @drawnext:
    pla
    tay
    ldx OBJ_draw_sorting,y
    bpl @drawloop

    @drawdone:
    lda #$00
    sta use_dynamic_chr0_bank
    inc frame_counter
    rts

OBJ_DoTick:
    lda OBJ_lower_prg,x
    bmi @skipbankswitch
    jsr LowerBankswitch
    @skipbankswitch:
    ldy OBJ_script_slot,x
    @scriptloop:
    sty curr_script_slot
    lda SCR_next,y
    sta next_script
    jsr SCR_Interpret
    ldy next_script
    bpl @scriptloop

    ldx curr_object_slot
    lda obj_move_lo,x
    ldy obj_move_hi,x
    jsr CallFromYA

    ldx curr_object_slot
    lda OBJ_tick_bank,x
    jsr UpperBankswitch
    lda OBJ_tick_lo,x
    ldy OBJ_tick_hi,x
    jmp CallFromYA


SCR_Interpret:
    ldx curr_script_slot
    lda SCR_sleep_timer,x
    bne SRC_sleeping

    lda SCR_pc_lo,x
    sta script_ptr
    lda SCR_pc_hi,x
    sta script_ptr+1
    lda SCR_bank,x
    jsr UpperBankswitch

    lda #$00
    sta script_stack+1
    txa
    asl a
    asl a
    rol script_stack+1
    asl a
    rol script_stack+1
    asl a
    rol script_stack+1
    adc #<$6400
    sta script_stack
    lda script_stack+1
    adc #>$6400
    sta script_stack+1

    SRC_loop:
    ldy #$00
    lda (script_ptr),y
    cmp #$50
    bcc @notwaited
    pha
    and #$0F
    sta SCR_sleep_timer,x
    pla
    sec
    sbc #$50
    lsr a
    lsr a
    lsr a
    lsr a
    tax
    lda as_waitedlo,x
    sta script_jmp_addr
    lda as_waitedhi,x
    sta script_jmp_addr+1
    jmp (script_jmp_addr)

    @notwaited:
    tax
    lda as_ptrs_lo,x
    sta script_jmp_addr
    lda as_ptrs_hi,x
    sta script_jmp_addr+1
    jmp (script_jmp_addr)

SCR_NextInstruction:
    clc
    adc script_ptr
    sta script_ptr
    bcc @no_inc
    inc script_ptr+1
    @no_inc:
    ldx curr_script_slot
    lda SCR_sleep_timer,x
    beq SRC_loop

    lda script_ptr
    sta SCR_pc_lo,x
    lda script_ptr+1
    sta SCR_pc_hi,x

SRC_sleeping:
    dec SCR_sleep_timer,x
    rts

as_ptrs_lo:
    .lobytes AS_End
    .lobytes SCR_LoopImm
    .lobytes SCR_EndLoop
    .lobytes SCR_Jml
    .lobytes AS_Jsl
    .lobytes AS_Rtl
    .lobytes AS_Wait
    .lobytes AS_Task
    .lobytes AS_OnTick
    .lobytes AS_Halt
    .lobytes AS_Jeq
    .lobytes AS_Jne
    .lobytes AS_EndTask
    .lobytes AS_MoveVarImm
    .lobytes AS_NopTick
    .lobytes AS_MultiJmp
    .lobytes AS_MultiJsr
    .lobytes AS_MoveMemImm
    .lobytes AS_EndLastTask
    .lobytes AS_BinopVar
    .lobytes AS_BreakEq
    .lobytes AS_BreakNe
    .lobytes AS_BinopMem
    .lobytes SCR_Jmp
    .lobytes SCR_Jsr
    .lobytes AS_Rts
    .lobytes AS_Instr_1A
    .lobytes AS_MovRegImm
    .lobytes AS_MovRegMem
    .lobytes AS_MoveVarReg
    .lobytes AS_MovRegObjvar
    .lobytes AS_WaitVar
    .lobytes AS_OnDraw
    .lobytes AS_Instr_21
    .lobytes SCR_LoopReg
    .lobytes AS_OnMove
    .lobytes AS_SetPoseVar
    .lobytes AS_BinopReg
    .lobytes AS_AsmCallLower
    .lobytes AS_Instr_27
    .lobytes AS_SetBank
    .lobytes AS_Instr_29
    .lobytes AS_SetXPos
    .lobytes AS_SetYPos
    .lobytes AS_AddXPos
    .lobytes AS_AddYPos
    .lobytes AS_AddXVel
    .lobytes AS_AddYVel
    .lobytes AS_SetCameraX
    .lobytes AS_SetCameraY
    .lobytes AS_SetCameraXVel
    .lobytes AS_SetCameraYVel
    .lobytes AS_Instr_34
    .lobytes AS_Instr_35
    .lobytes AS_Instr_36
    .lobytes AS_Instr_37
    .lobytes AS_ZeroVel
    .lobytes AS_Instr_39
    .lobytes AS_SetZPos
    .lobytes AS_AddZPos
    .lobytes AS_SetZVel
    .lobytes AS_AddZVel
    .lobytes AS_Instr_3E
as_ptrs_hi:
    .hibytes AS_End ;0
    .hibytes SCR_LoopImm ;1
    .hibytes SCR_EndLoop ;2
    .hibytes SCR_Jml ;3
    .hibytes AS_Jsl ;4
    .hibytes AS_Rtl ;5
    .hibytes AS_Wait ;6
    .hibytes AS_Task ;7
    .hibytes AS_OnTick ;8
    .hibytes AS_Halt ;9
    .hibytes AS_Jeq ;$a
    .hibytes AS_Jne ;$b
    .hibytes AS_EndTask ;$c
    .hibytes AS_MoveVarImm ;$d
    .hibytes AS_NopTick ;$e
    .hibytes AS_MultiJmp ;$f
    .hibytes AS_MultiJsr ;$10
    .hibytes AS_MoveMemImm ;$11
    .hibytes AS_EndLastTask ;$12
    .hibytes AS_BinopVar ;$13
    .hibytes AS_BreakEq ;$14
    .hibytes AS_BreakNe ;$15
    .hibytes AS_BinopMem ;$16
    .hibytes SCR_Jmp ;$17
    .hibytes SCR_Jsr ;$18
    .hibytes AS_Rts ;$19
    .hibytes AS_Instr_1A ;$1a
    .hibytes AS_MovRegImm ;$1b
    .hibytes AS_MovRegMem ;$1c
    .hibytes AS_MoveVarReg ;$1d
    .hibytes AS_MovRegObjvar ;$1e
    .hibytes AS_WaitVar ;$1f
    .hibytes AS_OnDraw ;$20
    .hibytes AS_Instr_21 ;$21
    .hibytes SCR_LoopReg ;$22
    .hibytes AS_OnMove ;$23
    .hibytes AS_SetPoseVar ;$24
    .hibytes AS_BinopReg ;$25
    .hibytes AS_AsmCallLower ;$26
    .hibytes AS_Instr_27 ;$27
    .hibytes AS_SetBank ;$28
    .hibytes AS_Instr_29 ;$29
    .hibytes AS_SetXPos ;$2A
    .hibytes AS_SetYPos ;$2B
    .hibytes AS_AddXPos ;$2C
    .hibytes AS_AddYPos ;$2D
    .hibytes AS_AddXVel ;$2E
    .hibytes AS_AddYVel ;$2F
    .hibytes AS_SetCameraX ;$30
    .hibytes AS_SetCameraY ;$31
    .hibytes AS_SetCameraXVel ;$32
    .hibytes AS_SetCameraYVel ;$33
    .hibytes AS_Instr_34 ;$34
    .hibytes AS_Instr_35 ;$35
    .hibytes AS_Instr_36 ;$36
    .hibytes AS_Instr_37 ;$37
    .hibytes AS_ZeroVel ;$38
    .hibytes AS_Instr_39 ;$39
    .hibytes AS_SetZPos ;$3A
    .hibytes AS_AddZPos ;$3b
    .hibytes AS_SetZVel ;$3c
    .hibytes AS_AddZVel ;$3d
    .hibytes AS_Instr_3E ;$3e

as_waitedlo:
    .lobytes AS_Pose
    .lobytes AS_AddPose
    .lobytes AS_IncPose
    .lobytes AS_DecPose
    .lobytes AS_Inc2Pose
    .lobytes AS_Dec2Pose
    .lobytes AS_SetXVel
    .lobytes AS_SetYVel
    .lobytes AS_AsmCall
as_waitedhi:
    .hibytes AS_Pose
    .hibytes AS_AddPose
    .hibytes AS_IncPose
    .hibytes AS_DecPose
    .hibytes AS_Inc2Pose
    .hibytes AS_Dec2Pose
    .hibytes AS_SetXVel
    .hibytes AS_SetYVel
    .hibytes AS_AsmCall

; Instruction 00
AS_End:
    ldx curr_object_slot
    jsr OBJ_Destroy
    ldx curr_script_slot
    lda #-1
    sta SCR_sleep_timer,x
    sta next_script
    jmp SCR_NextInstruction


;Instruction 01
SCR_LoopImm:
    ldx curr_script_slot
    ldy #1
    lda (script_ptr),y
    iny
SCR_LoopCommon:
    sty tmp0
    pha

    ldy SCR_stack_pointer,x
    lda script_ptr
    clc
    adc tmp0
    sta (script_stack),y
    iny
    lda script_ptr+1
    adc #$00
    sta (script_stack),y
    iny

    pla
    sta (script_stack),y
    iny
    tya
    sta SCR_stack_pointer,x
    lda tmp0
    jmp SCR_NextInstruction

;Instruction 22
SCR_LoopReg:
    ldx curr_script_slot
    lda SCR_work_register,x
    ldy #1
    bne SCR_LoopCommon

;Instruction 02
SCR_EndLoop:
    ldx curr_script_slot
    ldy SCR_stack_pointer,x
    dey
    lda (script_stack),y
    sec
    sbc #$01
    sta (script_stack),y
    beq @nomore
    dey
    lda (script_stack),y
    sta script_ptr+1
    dey
    lda (script_stack),y
    sta script_ptr
    lda #0
    jmp SCR_NextInstruction

@nomore:
    dey
    dey
    tya
    sta SCR_stack_pointer,x
    lda #1
    jmp SCR_NextInstruction

;Instruction 17
SCR_Jmp:
    ldy #1
    lda (script_ptr),y
    pha
    iny
    lda (script_ptr),y
    sta script_ptr+1
    pla
    sta script_ptr
    lda #0
    jmp SCR_NextInstruction

;Instruction 03
SCR_Jml:
    ldy #1
    lda (script_ptr),y
    pha
    iny
    lda (script_ptr),y
    pha
    iny
    lda (script_ptr),y
    ldx curr_script_slot
    sta SCR_bank,x
    jsr UpperBankswitch
    pla
    sta script_ptr+1
    pla
    sta script_ptr
    lda #0
    jmp SCR_NextInstruction

;Instruction 18
SCR_Jsr:
    ldy #1
    lda (script_ptr),y
    pha
    iny
    lda (script_ptr),y
    pha
    lda #3
    clc
    adc script_ptr
    ldx curr_script_slot
    ldy SCR_stack_pointer,x
    sta (script_stack),y
    iny
    lda script_ptr+1
    adc #$00
    sta (script_stack),y
    iny
    tya
    sta SCR_stack_pointer,x
    pla
    sta script_ptr+1
    pla
    sta script_ptr

    lda #0
    jmp SCR_NextInstruction

;Instruction 04
AS_Jsl:
    ldy #1
    lda (script_ptr),y
    pha
    iny
    lda (script_ptr),y
    pha
    iny
    lda (script_ptr),y
    pha

    lda #4
    clc
    adc script_ptr

    ldx curr_script_slot
    ldy SCR_stack_pointer,x
    sta (script_stack),y
    iny

    lda script_ptr+1
    adc #$00
    sta (script_stack),y
    iny
    lda SCR_bank,x
    sta (script_stack),y
    iny

    tya
    sta SCR_stack_pointer,x

    pla
    sta SCR_bank,x
    jsr UpperBankswitch
    pla
    sta script_ptr+1
    pla
    sta script_ptr

    lda #0
    jmp SCR_NextInstruction

;Instruction 19
AS_Rts:
    ldx curr_script_slot
    ldy SCR_stack_pointer,x
    bne B3e_cfe5
    jmp AS_EndTask
;Instruction 05
AS_Rtl:
    ldx curr_script_slot
    ldy SCR_stack_pointer,x
    bne B3e_cfdc
    jmp AS_EndTask
    B3e_cfdc:
    dey
    lda (script_stack),y
    sta SCR_bank,x
    jsr UpperBankswitch
    B3e_cfe5:
    dey
    lda (script_stack),y
    sta script_ptr+1
    dey
    lda (script_stack),y
    sta script_ptr
    tya
    sta SCR_stack_pointer,x
    lda #$00
    jmp SCR_NextInstruction
;Instruction 06
AS_Wait:
    ldx curr_script_slot
    ldy #$01
    lda (script_ptr),y
    sta SCR_sleep_timer,x
    lda #$02
    jmp SCR_NextInstruction
;Instruction 5x
AS_Pose:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    sta OBJ_pose,x
    lda #$02
    jmp SCR_NextInstruction
;Instruction 2A
AS_SetXPos:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    sta OBJ_x_lo,x
    iny
    lda (script_ptr),y
    sta OBJ_x_hi,x
    lda #$80
    sta OBJ_x_frac,x
    lda #$03
    jmp SCR_NextInstruction
;Instruction 2B
AS_SetYPos:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    sta OBJ_y_lo,x
    iny
    lda (script_ptr),y
    sta OBJ_y_hi,x
    lda #$80
    sta OBJ_y_frac,x
    lda #$03
    jmp SCR_NextInstruction
;Instruction 3A
AS_SetZPos:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    sta OBJ_z_lo,x
    iny
    lda (script_ptr),y
    sta OBJ_z_hi,x
    lda #$80
    sta OBJ_z_frac,x
    lda #$03
    jmp SCR_NextInstruction
;Instruction Bx
AS_SetXVel:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    sta OBJ_vel_x_lo,x
    iny
    lda (script_ptr),y
    sta OBJ_vel_x_hi,x
    lda #$03
    jmp SCR_NextInstruction
;Instruction Cx
AS_SetYVel:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    sta OBJ_vel_y_lo,x
    iny
    lda (script_ptr),y
    sta OBJ_vel_y_hi,x
    lda #$03
    jmp SCR_NextInstruction
;Instruction 3C
AS_SetZVel:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    sta OBJ_vel_z_lo,x
    iny
    lda (script_ptr),y
    sta OBJ_vel_z_hi,x
    lda #$03
    jmp SCR_NextInstruction
;Instruction 2E
AS_AddXVel:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    clc
    adc OBJ_vel_x_lo,x
    sta OBJ_vel_x_lo,x
    iny
    lda (script_ptr),y
    adc OBJ_vel_x_hi,x
    sta OBJ_vel_x_hi,x
    lda #$03
    jmp SCR_NextInstruction

;Instruction 2F
AS_AddYVel:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    clc
    adc OBJ_vel_y_lo,x
    sta OBJ_vel_y_lo,x
    iny
    lda (script_ptr),y
    adc OBJ_vel_y_hi,x
    sta OBJ_vel_y_hi,x
    lda #$03
    jmp SCR_NextInstruction

;Instruction 3D
AS_AddZVel:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    clc
    adc OBJ_vel_z_lo,x
    sta OBJ_vel_z_lo,x
    iny
    lda (script_ptr),y
    adc OBJ_vel_z_hi,x
    sta OBJ_vel_z_hi,x
    lda #$03
    jmp SCR_NextInstruction

;Instruction 30
AS_SetCameraX:
    ldy #1
    lda (script_ptr),y
    sta camera_x
    iny
    lda (script_ptr),y
    sta camera_x+1

    lda #$80
    sta camera_x_frac

    lda #3
    jmp SCR_NextInstruction

;Instruction 31
AS_SetCameraY:
    ldy #1
    lda (script_ptr),y
    sta camera_y

    iny
    lda (script_ptr),y
    sta camera_y+1

    lda #$80
    sta camera_y_frac

    lda #3
    jmp SCR_NextInstruction

;Instruction 32
AS_SetCameraXVel:
    ldy #1
    lda (script_ptr),y
    sta camera_vel_x

    iny
    lda (script_ptr),y
    sta camera_vel_x+1

    lda #3
    jmp SCR_NextInstruction

;Instruction 33
AS_SetCameraYVel:
    ldy #1
    lda (script_ptr),y
    sta camera_vel_y

    iny
    lda (script_ptr),y
    sta camera_vel_y+1

    lda #3
    jmp SCR_NextInstruction

;Instruction 34
AS_Instr_34:
    ldy #$01
    lda (script_ptr),y
    clc
    adc camera_vel_x
    sta camera_vel_x
    iny
    lda (script_ptr),y
    adc camera_vel_x+1
    sta camera_vel_x+1
    lda #$03
    jmp SCR_NextInstruction
;Instruction 35
AS_Instr_35:
    ldy #$01
    lda (script_ptr),y
    clc
    adc camera_vel_y
    sta camera_vel_y
    iny
    lda (script_ptr),y
    adc camera_vel_y+1
    sta camera_vel_y+1
    lda #$03
    jmp SCR_NextInstruction
;Instruction 2C
AS_AddXPos:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    clc
    adc OBJ_x_lo,x
    sta OBJ_x_lo,x
    iny
    lda (script_ptr),y
    adc OBJ_x_hi,x
    sta OBJ_x_hi,x
    lda #$03
    jmp SCR_NextInstruction
;Instruction 2D
AS_AddYPos:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    clc
    adc OBJ_y_lo,x
    sta OBJ_y_lo,x
    iny
    lda (script_ptr),y
    adc OBJ_y_hi,x
    sta OBJ_y_hi,x
    lda #$03
    jmp SCR_NextInstruction
;Instruction 3B
AS_AddZPos:
    ldx curr_object_slot
    ldy #$01
    lda (script_ptr),y
    clc
    adc OBJ_z_lo,x
    sta OBJ_z_lo,x
    iny
    lda (script_ptr),y
    adc OBJ_z_hi,x
    sta OBJ_z_hi,x
    lda #$03
    jmp SCR_NextInstruction
;Instruction 36
AS_Instr_36:
    ldy #$01
    lda (script_ptr),y
    clc
    adc camera_x
    sta camera_x
    iny
    lda (script_ptr),y
    adc camera_x+1
    sta camera_x+1
    lda #$03
    jmp SCR_NextInstruction

;Instruction 37
AS_Instr_37:
    ldy #$01
    lda (script_ptr),y
    clc
    adc camera_y
    sta camera_y
    iny
    lda (script_ptr),y
    adc camera_y+1
    sta camera_y+1
    lda #$03
    jmp SCR_NextInstruction

;Instruction 38
AS_ZeroVel:
    ldx curr_object_slot
    lda #$00
    sta OBJ_vel_x_lo,x
    sta OBJ_vel_x_hi,x
    sta OBJ_vel_y_lo,x
    sta OBJ_vel_y_hi,x
    lda #$01
    jmp SCR_NextInstruction

;Instruction 39
AS_Instr_39:
    lda #0
    sta camera_vel_x
    sta camera_vel_x+1
    sta camera_vel_y
    sta camera_vel_y+1

    lda #1
    jmp SCR_NextInstruction

;Instruction Dx
AS_AsmCall:
    ldy #$01
    lda (script_ptr),y
    sta script_jmp_addr
    iny
    lda (script_ptr),y
    sta script_jmp_addr+1
    lda #$02
    clc
    adc script_ptr
    sta script_ptr
    bcc B3e_d207
    inc script_ptr+1
    B3e_d207:
    ldx curr_script_slot
    lda SCR_work_register,x
    jsr CallFromJmpPtr
    ldx curr_script_slot
    sta SCR_work_register,x
    lda #$01
    jmp SCR_NextInstruction
;Instruction 26
AS_AsmCallLower:
	lda lower_prg
	pha
	ldy #$01
	lda (script_ptr),y
	sta script_jmp_addr
	iny
	lda (script_ptr),y
	sta script_jmp_addr+1
	iny
	lda (script_ptr),y
	jsr LowerBankswitch
	lda #$03
	clc
	adc script_ptr
	sta script_ptr
	bcc B3e_d23a
	inc script_ptr+1
    B3e_d23a:
	ldx curr_script_slot
	lda SCR_work_register,x
	jsr CallFromJmpPtr
	ldx curr_script_slot
	sta SCR_work_register,x
	pla
	jsr LowerBankswitch
	lda #$01
	jmp SCR_NextInstruction
;Instruction 0A
AS_Jeq:
	ldx curr_script_slot
	lda SCR_work_register,x
	bne B3e_d269
    B3e_d257:
	ldy #$01
	lda (script_ptr),y
	pha
	iny
	lda (script_ptr),y
	sta script_ptr+1
	pla
	sta script_ptr
	lda #$00
	jmp SCR_NextInstruction
    B3e_d269:
	lda #$03
	jmp SCR_NextInstruction
;Instruction 0B
AS_Jne:
	ldx curr_script_slot
	lda SCR_work_register,x
	beq B3e_d269
	jmp B3e_d257
;Instruction 0F
AS_MultiJmp:
	ldx curr_script_slot
	lda SCR_work_register,x
	sta $10
	ldy #$01
	lda (script_ptr),y
	cmp $10
	bcc B3e_d289
	bne B3e_d28f
    B3e_d289:
	asl a
	adc #$02
	jmp SCR_NextInstruction
    B3e_d28f:
	lda $10
	asl a
	tay
	iny
	iny
	lda (script_ptr),y
	pha
	iny
	lda (script_ptr),y
	sta script_ptr+1
	pla
	sta script_ptr
	lda #$00
	jmp SCR_NextInstruction
;Instruction 10
AS_MultiJsr:
	ldx curr_script_slot
	lda SCR_work_register,x
	sta $10
	ldy #$01
	lda (script_ptr),y
	cmp $10
	bcc B3e_d289
	beq B3e_d289
	ldx curr_script_slot
	ldy SCR_stack_pointer,x
	asl a
	adc #$02
	adc script_ptr
	sta (script_stack),y
	iny
	lda #$00
	adc script_ptr+1
	sta (script_stack),y
	iny
	tya
	sta SCR_stack_pointer,x
	jmp B3e_d28f
;Instruction 29
AS_Instr_29:
	ldx curr_script_slot
	lda SCR_work_register,x
	sta $10
	ldy #$01
	lda (script_ptr),y
	cmp $10
	bcc B3e_d2e2
	bne B3e_d2ec
    B3e_d2e2:
	sta $10
	asl a
	adc $10
	adc #$02
	jmp SCR_NextInstruction
    B3e_d2ec:
	lda $10
	asl a
	adc $10
	tay
	iny
	iny
	lda (script_ptr),y
	pha
	iny
	lda (script_ptr),y
	pha
	iny
	lda (script_ptr),y
	sta SCR_bank,x
	jsr UpperBankswitch
	pla
	sta script_ptr+1
	pla
	sta script_ptr
	lda #$00
	jmp SCR_NextInstruction
;Instruction 3E
AS_Instr_3E:
    ldx curr_script_slot
    lda SCR_work_register,x
    sta tmp0
    ldy #$01
    lda (script_ptr),y
    cmp tmp0
    bcc B3e_d2e2
    beq B3e_d2e2
    ldx curr_script_slot
    ldy SCR_stack_pointer,x
    sta $00
    asl a
    adc $00
    adc #$02
    adc script_ptr
    sta (script_stack),y
    iny
	lda #$00
	adc script_ptr+1
	sta (script_stack),y
	iny
	lda SCR_bank,x
	sta (script_stack),y
	iny
	tya
	sta SCR_stack_pointer,x
	jmp B3e_d2ec
;Instruction 0C
AS_EndTask:
	ldy curr_script_slot
    B3e_d347:
	ldx curr_object_slot
	jsr L_D6FD
	lda #$ff
	sta SCR_sleep_timer,y
	lda OBJ_script_slot,x
	bpl B3e_d359
	jmp AS_End
    B3e_d359:
	lda #$01
	jmp SCR_NextInstruction
;Instruction 07
AS_Task:
	jsr SCR_GetFreeSlot
	bcs B3e_d391
	sty next_script
	ldx curr_script_slot
	lda SCR_next,x
	sta SCR_next,y
	tya
	sta SCR_next,x
	tya
	tax
	lda #$00
	sta SCR_stack_pointer,x
	sta SCR_sleep_timer,x
	ldy #$01
	lda (script_ptr),y
	sta SCR_pc_lo,x
	iny
	lda (script_ptr),y
	sta SCR_pc_hi,x
	ldy curr_script_slot
	lda SCR_bank,y
	sta SCR_bank,x
    B3e_d391:
	lda #$03
	jmp SCR_NextInstruction
;Instruction 12
AS_EndLastTask:
	ldx curr_script_slot
	ldy SCR_next,x
	jmp B3e_d347
;Instruction 08
AS_OnTick:
	ldx curr_object_slot
	ldy #$01
	lda (script_ptr),y
	sta OBJ_tick_lo,x
	iny
	lda (script_ptr),y
	sta OBJ_tick_hi,x
	iny
	lda (script_ptr),y
	sta OBJ_tick_bank,x
	lda #$04
	jmp SCR_NextInstruction
;Instruction 09
AS_Halt:
	ldx curr_script_slot
	lda #$ff
	sta SCR_sleep_timer,x
	lda #$00
	jmp SCR_NextInstruction
;Instruction 7x
AS_IncPose:
	ldx curr_object_slot
	inc OBJ_pose,x
	lda #$01
	jmp SCR_NextInstruction
;Instruction 8x
AS_DecPose:
	ldx curr_object_slot
	dec OBJ_pose,x
	lda #$01
	jmp SCR_NextInstruction
;Instruction 9x
AS_Inc2Pose:
	ldx curr_object_slot
	inc OBJ_pose,x
	inc OBJ_pose,x
	lda #$01
	jmp SCR_NextInstruction
;Instruction Ax
AS_Dec2Pose:
	ldx curr_object_slot
	dec OBJ_pose,x
	dec OBJ_pose,x
	lda #$01
	jmp SCR_NextInstruction
;Instruction 6x
AS_AddPose:
	ldx curr_object_slot
	ldy #$01
	lda (script_ptr),y
	clc
	adc OBJ_pose,x
	sta OBJ_pose,x
	lda #$02
	jmp SCR_NextInstruction
;Instruction 16
AS_BinopMem:
	ldy #$01
	lda (script_ptr),y
	sta $18
	iny
	lda (script_ptr),y
	sta $19
	lda #$05
    B3e_d411:
	pha
	iny
	lda (script_ptr),y
	tax
	iny
	lda (script_ptr),y
	sta $10
	lda $d45d,x
	sta script_jmp_addr
	lda $d461,x
	sta script_jmp_addr+1
	ldy #$00
	jsr CallFromJmpPtr
	pla
	jmp SCR_NextInstruction
;Instruction 13
AS_BinopVar:
	ldy #$01
	lda (script_ptr),y
	tax
	lda $d4a7,x
	sta $19
	lda $d49d,x
	clc
	adc curr_object_slot
	sta $18
	bcc B3e_d446
	inc $19
    B3e_d446:
	lda #$04
	bne B3e_d411
;Instruction 25
AS_BinopReg:
	lda #$e0
	clc
	adc curr_script_slot
	sta $18
	lda #$63
	adc #$00
	sta $19
	ldy #$00
	lda #$03
	bne B3e_d411

    B3e_d45f:
    .byte $65,$6C,$73,$7B,$D4,$D4,$D4,$D4
    B3e_d465:
    .byte $B1,$18,$25,$10,$91,$18,$60
    B3e_d46c:
    .byte $B1,$18,$05,$10,$91,$18,$60
    B3e_d473:
    .byte $B1,$18,$18,$65,$10,$91,$18,$60
    B3e_d47b:
    .byte $B1,$18,$45,$10,$91,$18,$60
;Instruction 0D
AS_MoveVarImm:
	ldy #$01
	lda (script_ptr),y
	tax
	lda $d49d,x
	sta ptr0
	lda $d4a7,x
	sta ptr0+1
	iny
	lda (script_ptr),y
	ldy curr_object_slot
	sta (ptr0),y
	lda #$03
	jmp SCR_NextInstruction
B3E_D49D:
    .byte $CA,$DC,$EE,$00,$12,$24,$36,$48
    .byte $5A,$6C,$61,$61,$61,$62,$62,$62
    .byte $62,$62,$62,$62
;Instruction 0E
AS_NopTick:
	ldx curr_object_slot
	jsr OBJ_EndTick
	lda #$01
	jmp SCR_NextInstruction
;Instruction 11
AS_MoveMemImm:
	ldy #$01
	lda (script_ptr),y
	sta ptr0
	iny
	lda (script_ptr),y
	sta ptr0+1
	iny
	lda (script_ptr),y
	ldy #$00
	sta (ptr0),y
	lda #$04
	jmp SCR_NextInstruction
;Instruction 27
AS_Instr_27:
	ldy #$01
	lda (script_ptr),y
	sta ptr0
	iny
	lda (script_ptr),y
	sta ptr0+1
	iny
	lda (script_ptr),y
	pha
	iny
	lda (script_ptr),y
	ldy #$01
	sta (ptr0),y
	pla
	dey
	sta (ptr0),y
	lda #$05
	jmp SCR_NextInstruction
;Instruction 14
AS_BreakEq:
	ldx curr_script_slot
	lda SCR_work_register,x
	bne B3e_d513
    B3e_d4f8:
	ldy #$01
	lda (script_ptr),y
	pha
	iny
	lda (script_ptr),y
	sta script_ptr+1
	pla
	sta script_ptr
	lda SCR_stack_pointer,x
	sec
	sbc #$03
	sta SCR_stack_pointer,x
	lda #$00
	jmp SCR_NextInstruction
    B3e_d513:
	lda #$03
	jmp SCR_NextInstruction
;Instruction 15
AS_BreakNe:
	ldx curr_script_slot
	lda SCR_work_register,x
	beq B3e_d513
	jmp B3e_d4f8
;Instruction 1A
AS_Instr_1A:
	ldx curr_object_slot
	ldy #$01
	lda (script_ptr),y
	sta OBJ_spritemap_lo,x
	iny
	lda (script_ptr),y
	sta OBJ_spritemap_hi,x
	iny
	lda (script_ptr),y
	sta OBJ_spritemap_bank,x
	lda #$04
	jmp SCR_NextInstruction
;Instruction 1B
AS_MovRegImm:
	ldy #$01
	lda (script_ptr),y
	ldx curr_script_slot
	sta SCR_work_register,x
	lda #$02
	jmp SCR_NextInstruction
;Instruction 1C
AS_MovRegMem:
	ldy #$01
	lda (script_ptr),y
	sta ptr0
	iny
	lda (script_ptr),y
	sta ptr0+1
	ldy #$00
	lda (ptr0),y
	ldx curr_script_slot
	sta SCR_work_register,x
	lda #$03
	jmp SCR_NextInstruction
;Instruction 1D
AS_MoveVarReg:
	ldy #$01
	lda (script_ptr),y
	tax
	lda $d49d,x
	sta ptr0
	lda $d4a7,x
	sta ptr0+1
	ldx curr_script_slot
	lda SCR_work_register,x
	ldy curr_object_slot
	sta (ptr0),y
	lda #$02
	jmp SCR_NextInstruction
;Instruction 1E
AS_MovRegObjvar:
	ldy #$01
	lda (script_ptr),y
	tax
	lda $d49d,x
	sta ptr0
	lda $d4a7,x
	sta ptr0+1
	ldy curr_object_slot
	lda (ptr0),y
	ldx curr_script_slot
	sta SCR_work_register,x
	lda #$02
	jmp SCR_NextInstruction
;Instruction 1F
AS_WaitVar:
	ldy #$01
	lda (script_ptr),y
	tax
	lda $d49d,x
	sta ptr0
	lda $d4a7,x
	sta ptr0+1
	ldy curr_object_slot
	lda (ptr0),y
	ldy curr_script_slot
	sta SCR_sleep_timer,y
	lda #$02
	jmp SCR_NextInstruction
;Instruction 24
AS_SetPoseVar:
	ldy #$01
	lda (script_ptr),y
	tax
	lda $d49d,x
	sta ptr0
	lda $d4a7,x
	sta ptr0+1
	ldy curr_object_slot
	lda (ptr0),y
	sta OBJ_pose,y
	lda #$02
	jmp SCR_NextInstruction
;Instruction 20
AS_OnDraw:
	ldx curr_object_slot
	ldy #$01
	lda (script_ptr),y
	sta obj_draw_lo,x
	iny
	lda (script_ptr),y
	sta obj_draw_hi,x
	lda #$03
	jmp SCR_NextInstruction
;Instruction 21
AS_Instr_21:
	ldx curr_object_slot
	ldy #$01
	lda (script_ptr),y
	sta obj_onposition_lo,x
	iny
	lda (script_ptr),y
	sta obj_onposition_hi,x
	lda #$03
	jmp SCR_NextInstruction
;Instruction 23
AS_OnMove:
	ldx curr_object_slot
	ldy #$01
	lda (script_ptr),y
	sta obj_move_lo,x
	iny
	lda (script_ptr),y
	sta obj_move_hi,x
	lda #$03
	jmp SCR_NextInstruction
;Instruction 28
AS_SetBank:
	ldx curr_object_slot
	ldy #$01
	lda (script_ptr),y
	sta OBJ_lower_prg,x
	jsr LowerBankswitch
	lda #$02
	jmp SCR_NextInstruction

OBJ_GetFreeSlot:
    lda SCR_next_free
    bmi @failed         ; Fail if there's no free script slot
    ldy #-1
    lda OBJ_next_free
    bmi @failed         ; Fail if there's no free object slot
    @loop:
    tax
    cpx OBJ_min_slot
    bcc @next
    cpx OBJ_max_slot
    bcc @success
    @next:
    txa
    tay
    lda OBJ_next,x
    bpl @loop
    @failed:
    sec
    rts

@success:
    tya
    bpl @notfirst
    lda OBJ_next,x
    sta OBJ_next_free
    clc
    rts

@notfirst:
    lda OBJ_next,x
    sta OBJ_next,y
    clc
    rts

OBJ_Destroy:
    pha
    tya
    pha

    lda OBJ_script,x
    bmi @return

    lda #-1
    sta OBJ_script,x
    jsr OBJ_EndTick
    jsr SCR_Unlink
    jsr OBJ_Unlink
    jsr OBJ_UpdateNextFree ; this->next = OBJ_next_free; OBJ_next_free = this
@return:
    pla
    tay
    pla
    rts

OBJ_Link:
    lda #-1
    sta OBJ_next,x
    lda first_obj
    bpl @loop
    stx first_obj
    bmi @return  ; Always taken

    ; Put list tail in Y
    @loop:
    tay
    lda OBJ_next,y
    bpl @loop

    txa
    sta OBJ_next,y ; Append X to list

    lda OBJ_next_slot
    bpl @return
    stx OBJ_next_slot
    @return:
    rts

OBJ_Unlink:
    jsr OBJ_TraverseTillX
    lda OBJ_next,x
    cpy #-1
    beq @sethead
    sta OBJ_next,y
    bne @setnext
    @sethead:
    sta first_obj
    @setnext:
    cpx OBJ_next_slot
    bne @return
    sta OBJ_next_slot
    @return:
    rts

OBJ_UpdateNextFree:
    lda OBJ_next_free
    sta OBJ_next,x
    stx OBJ_next_free
    rts

SCR_Unlink:
    lda OBJ_script_slot,x
    bmi @return           ; Bail out if object has no script
    txa
    pha

    lda SCR_next_free
    pha

    lda OBJ_script_slot,x
    sta SCR_next_free

    ; Put list tail in X
    @loop:
    tax
    lda SCR_next,x
    bpl @loop

    pla
    sta SCR_next,x

    pla
    tax
    @return:
    rts

; Traverse object list until finding X. Put node in Y
OBJ_TraverseTillX:
    stx tmp0+1
    ldy #-1

    ldx first_obj
    @loop: cpx tmp0+1
    beq @return
    txa
    tay
    lda OBJ_next,x
    tax
    jmp @loop

    @return:
    ldx tmp0+1
    rts

SCR_GetFreeSlot:
    ldy SCR_next_free
    bpl @success
    sec
    rts

    @success:
    lda SCR_next,y
    sta SCR_next_free
    clc
    rts

L_D6FD:
    jsr L_D70D
    jmp SCR_UpdateNextFree ; this->next = SCR_next_free; SCR_next_free = this

SCR_UpdateNextFree:
    lda SCR_next_free
    sta SCR_next,y
    sty SCR_next_free
    rts

L_D70D:
    txa
    pha

    jsr SCR_TraverseTillY
    lda SCR_next,y
    sta tmp0
    cpx #-1
    beq @L_D723
    sta SCR_next,x
    pla
    tax
    jmp @L_D72A
    @L_D723:
    pla
    tax
    lda tmp0
    sta OBJ_script_slot,x
    @L_D72A:
    cpy next_script
    bne @return
    lda tmp0
    sta next_script
    @return:
    rts

; Traverse script list until finding X. Put node in Y
SCR_TraverseTillY:
    sty tmp1
    ldy OBJ_script_slot,x
    ldx #-1
    @loop:
    cpy tmp1
    beq @return
    tya
    tax
    lda SCR_next,y
    tay
    jmp @loop

    @return:
    ldy tmp1
    rts

; $D74C
; Count how many scripts it takes to traverse till Y (why?)
SCR_CountTillY:
    sty tmp1
    lda #0
    sta $00

    lda OBJ_script_slot,x
    cmp tmp1
    beq @return
    @loop:
    inc $00
    tay
    lda SCR_next,y
    cmp tmp1
    bne @loop

@return:
    lda $00
    rts


; $D766
L_D766:
    ldy OBJ_script_slot,x
    sec
    sbc #$01
    bcs @return

    @loop:
    lda SCR_next,y
    tay
    sbc #$01
    bcs @loop

    @return:
    rts

OBJ_EndTick:
    lda #.LOBYTE(@return)
    sta OBJ_tick_lo,x
    lda #.HIBYTE(@return)
    sta OBJ_tick_hi,x
    lda #0
    sta OBJ_tick_bank,x
    @return:
    rts

LowerBankswitch:
    pha
    lda #$86
    sta ram_BANKSELECT
    sta BANKSELECT
    pla
    B3E_d790:
    sta lower_prg
    sta BANKDATA
    B3E_d795:
    rts

UpperBankswitch:
    pha
    lda #$87
    sta ram_BANKSELECT
    sta BANKSELECT
    pla
    sta upper_prg
    sta BANKDATA
    rts

CallFromYA:
	sta script_jmp_addr
	sty script_jmp_addr+1
CallFromJmpPtr:
    jmp (script_jmp_addr)
CallFrom603B:
	jmp ($603b)

Script_ReadByte:
	ldy #$01
	lda (script_ptr),y
	inc script_ptr
	bne B3E_d7bb
	inc script_ptr+1
    B3E_d7bb:
	rts

;a == amount to shift script_ptr
;used to move past arguments and whatnot
AdvanceScriptPtr:
	clc

	; script_ptr[0:1] += a
	adc script_ptr
	sta script_ptr
	bcc @no_16bit
	inc script_ptr+1
    @no_16bit:
	rts

B3E_d7c6:
	sta $10
	pla
	sta ptr0
	pla
	sta ptr0+1
	ldy #$01
	lda (ptr0),y
	pha
	cmp $10
	bcc B3E_d7f2
	lda $10
	asl a
	adc $10
	tay
	iny
	iny
	lda (ptr0),y
	pha
	iny
	lda (ptr0),y
	pha
	iny
	lda (ptr0),y
	sta script_bank
	pla
	tay
	pla
	jsr OBJ_TryReplaceScriptPc
    B3E_d7f2:
	pla
	sta $10
	asl a
	adc $10
	adc #$02
	adc ptr0
	sta ptr0
	bcc B3E_d802
	inc ptr0+1
    B3E_d802:
	jmp (ptr0)

LongCall:
	sta $10
	sty $12
	pla
	sta ptr0
	pla
	sta ptr0+1
	lda ptr0
	clc
	adc #$03
	tay
	lda ptr0+1
	adc #$00
	pha
	tya
	pha
	ldy #$01
	lda (ptr0),y
	sta script_jmp_addr
	iny
	lda (ptr0),y
	sta script_jmp_addr+1
	cmp #$80
	bcc B3E_d835
	cmp #$a0
	bcc B3E_d83c
	cmp #$c0
	bcc B3E_d850
    B3E_d835:
	lda $10
	ldy $12
	jmp (script_jmp_addr)
    B3E_d83c:
	lda lower_prg
	pha
	iny
	lda (ptr0),y
	jsr LowerBankswitch
	lda $10
	ldy $12
	jsr CallFromJmpPtr
	pla
	jmp LowerBankswitch
    B3E_d850:
	lda upper_prg
	pha
	iny
	lda (ptr0),y
	jsr UpperBankswitch
	lda $10
	ldy $12
	jsr CallFromJmpPtr
	pla
	jmp UpperBankswitch

AS_Move_ApplyXY_Absolute:
	jsr AddObjectVelXY
AS_Position_Absolute:
	jmp SetPositionAbsolute
AS_Move_Nop:
	rts

AS_Move_ApplyXY_KirbyRelative:
	jsr AddObjectVelXY
AS_Position_KirbyRelative:
	jmp SetPositionKirbyRelative
AddObjectVelXY:
	ldx curr_object_slot
	lda OBJ_vel_x_lo,x
	clc
	adc OBJ_x_frac,x
	sta OBJ_x_frac,x
	ldy #$00
	lda OBJ_vel_x_hi,x
	bpl B3E_d883
	dey
    B3E_d883:
	adc OBJ_x_lo,x
	sta OBJ_x_lo,x
	tya
	adc OBJ_x_hi,x
	sta OBJ_x_hi,x
	lda OBJ_vel_y_lo,x
	clc
	adc OBJ_y_frac,x
	sta OBJ_y_frac,x
	ldy #$00
	lda OBJ_vel_y_hi,x
	bpl B3E_d89c
	dey
    B3E_d89c:
	adc OBJ_y_lo,x
	sta OBJ_y_lo,x
	tya
	adc OBJ_y_hi,x
	sta OBJ_y_hi,x
	rts

AddCameraVelXY:
	lda camera_vel_x
	clc
	adc camera_x_frac
	sta camera_x_frac
	ldy #$00
	lda camera_vel_x+1
	bpl B3E_d8b4
	dey
B3E_d8b4:
	adc camera_x
	sta camera_x
	tya
	adc camera_x+1
	sta camera_x+1
B3E_d8bd:
	lda camera_vel_y
	clc
	adc camera_y_frac
	sta camera_y_frac
	ldy #$00
	lda camera_vel_y+1
	bpl B3E_d8cb
	dey
B3E_d8cb:
	adc camera_y
	sta camera_y
	tya
	adc camera_y+1
	sta camera_y+1
	rts

SetPositionAbsolute:
	ldx curr_object_slot
	lda OBJ_x_lo,x
	sta OBJ_store_x_lo,x
	lda OBJ_x_hi,x
	sta OBJ_store_x_hi,x
	lda OBJ_y_lo,x
	sta OBJ_store_y_lo,x
	lda OBJ_y_hi,x
	sta OBJ_store_y_hi,x
	lda OBJ_z_lo,x
	sta OBJ_store_z_lo,x
	lda OBJ_z_hi,x
	sta OBJ_store_z_hi,x
	rts

SetPositionKirbyRelative:
	ldx curr_object_slot
	lda OBJ_store_x_lo+1
	clc
	adc OBJ_x_lo,x
	sta OBJ_store_x_lo,x
	lda OBJ_store_x_hi+1
	adc OBJ_x_hi,x
	sta OBJ_store_x_hi,x
	lda OBJ_store_y_lo+1
	clc
	adc OBJ_y_lo,x
	sta OBJ_store_y_lo,x
	lda OBJ_store_y_hi+1
	adc OBJ_y_hi,x
	sta OBJ_store_y_hi,x
    rts

AS_Move_Camera_Relative:
	jsr AddCameraVelXY

AS_Move_ApplyXY_CameraRelative:
	jsr AddObjectVelXY
AS_Position_CameraRelative:
	lda OBJ_x_lo,x
	clc
	adc camera_x
	sta OBJ_store_x_lo,x
	lda OBJ_x_hi,x
	adc camera_x+1
	sta OBJ_store_x_hi,x
	lda OBJ_y_lo,x
	clc
	adc camera_y
	sta OBJ_store_y_lo,x
	lda OBJ_y_hi,x
	adc camera_y+1
	sta OBJ_store_y_hi,x
	rts

AS_Move_Camera_Absolute:
	jsr AddCameraVelXY
AS_Move_ApplyXY_CameraAbsolute:
	jsr AddObjectVelXY
AS_Position_CameraAbsolute:
	jmp SetPositionAbsolute
AS_Move_ApplyY:
	jsr AddObjectVelXY
	lda OBJ_y_frac,x
	clc
	adc camera_vel_y
	sta OBJ_y_frac,x
	lda OBJ_y_lo,x
	adc camera_vel_y+1
	sta OBJ_y_lo,x
	sta OBJ_store_y_lo,x
	lda OBJ_y_hi,x
	adc #$00
	sta OBJ_y_hi,x
	sta OBJ_store_y_hi,x
	rts

B3E_d968:
	lda OBJ_store_x_lo,x
	sta temp_obj_screen_x
	lda OBJ_store_x_hi,x
	sta temp_obj_screen_x+1
	lda OBJ_store_y_lo,x
	sta temp_obj_screen_y
	lda OBJ_store_y_hi,x
	sta temp_obj_screen_y+1
	rts

B3E_d97d:
	lda OBJ_store_x_lo,x
	sec
	sbc camera_x
	sta temp_obj_screen_x
	lda OBJ_store_x_hi,x
	sbc camera_x+1
	sta temp_obj_screen_x+1
	lda OBJ_store_y_lo,x
	sec
	sbc camera_y
    B3E_d992:
	sta temp_obj_screen_y
	lda OBJ_store_y_hi,x
	sbc camera_y+1
	sta temp_obj_screen_y+1
	rts

;Check kill plane?
B3E_d99c:
	jsr B3E_d97d
	bne MAYBE_KillKirby
	lda temp_obj_screen_y
	cmp #$c0
	bcs MAYBE_KillKirby
	rts

MAYBE_KillKirby:
	lda #$ff
	sta OBJ_pose+1
	lda #$14
	sta script_bank
	lda #$f8
	ldy #$a4
	ldx #$01
	jmp OBJ_TryReplaceScriptPc;Jump to "KirbyStateEE" (death)
B3E_d9bb:
	lda OBJ_store_x_lo,x
	sec
	sbc camera_x
	sta temp_obj_screen_x
	lda OBJ_store_x_hi,x
	sbc camera_x+1
	sta temp_obj_screen_x+1
	beq B3E_d9e0
	ldy temp_obj_screen_x
	cmp #$ff
	bne B3E_d9d8
	cpy #$f0
	bcs B3E_d9e0
	bcc B3E_da01
B3E_d9d8:
	cmp #$01
	bne B3E_da01
	cpy #$10
	bcs B3E_da01
B3E_d9e0:
	lda OBJ_store_y_lo,x
	sec
	sbc camera_y
	sta temp_obj_screen_y
	tay
	lda OBJ_store_y_hi,x
	sbc camera_y+1
	sta temp_obj_screen_y+1
	bne B3E_d9f8
	cpy #$d0
	bcc B3E_da00
	bcs B3E_da01
B3E_d9f8:
	cmp #$ff
	bne B3E_da01
	cpy #$f0
	bcc B3E_da01
B3E_da00:
	rts

B3E_da01:
	lda #$ff
	sta OBJ_spritemap_bank,x
	jmp OBJ_Destroy
B3E_da09:
	lda OBJ_store_x_lo,x
	sec
	sbc OBJ_store_x_lo+1
	lda OBJ_store_x_hi,x
	sbc OBJ_store_x_hi+1
	cmp #$02
	bcc B3E_da26
	cmp #$fe
	bcs B3E_da26
	lda #$ff
	sta OBJ_spritemap_bank,x
	jmp OBJ_Destroy
B3E_da26:
	jmp B3E_d97d
B3E_da29:
	lda #$ff
	sta $6035
	ldy first_obj
	bmi B3E_da88
B3E_da33:
	sty $11
	lda frame_counter
	lsr a
	lda OBJ_z_lo,y
	ldy #$ff
	ldx $6035
	bmi B3E_da67
	bcc B3E_da59
	cmp #$80
	bne B3E_da59
B3E_da49:
	lda OBJ_z_lo,x
	cmp #$80
	bcc B3E_da67
	txa
	tay
	ldx OBJ_draw_sorting,y
	bpl B3E_da49
	bmi B3E_da67
B3E_da59:
	cmp OBJ_z_lo,x
	bcs B3E_da67
	stx $12
	ldy $12
	ldx OBJ_draw_sorting,y
	bpl B3E_da59
B3E_da67:
	ldx $11
	tya
	bmi B3E_da78
	lda OBJ_draw_sorting,y
B3E_da6f:
	sta OBJ_draw_sorting,x
	txa
	sta OBJ_draw_sorting,y
B3E_da76:
	bpl B3E_da81
B3E_da78:
	lda $6035
	sta OBJ_draw_sorting,x
	stx $6035
B3E_da81:
	ldx $11
	ldy OBJ_next,x
	bpl B3E_da33
B3E_da88:
	rts


B3E_da89:
	sta ptr0
	stx ptr0+1
B3E_da8d:
	ldy #$00
B3E_da8f:
	ldx oam_index
	lda (ptr0),y
	sta $00
	iny
	lda frame_counter
	lsr a
	bcs B3E_daee
B3E_da9c:
	lda #$00
	sta $01
	lda (ptr0),y
	bpl B3E_daa6
	dec $01
B3E_daa6:
	iny
	clc
	adc temp_obj_screen_x
B3E_daaa:
	sta $0203,x
	lda $01
	adc temp_obj_screen_x+1
	bne B3E_dadf
	lda #$00
	sta $02
	lda (ptr0),y
	bpl B3E_dabd
	dec $02
B3E_dabd:
	iny
	clc
	adc temp_obj_screen_y
	sta $0200,x
	lda $02
	adc temp_obj_screen_y+1
	bne B3E_dae0
	lda (ptr0),y
	eor #$01
	sta $0201,x
	iny
	lda (ptr0),y
	sta $0202,x
	iny
	inx
	inx
	inx
	inx
	jmp B3E_dae7
B3E_dadf:
	iny
B3E_dae0:
	iny
	iny
	lda #$f0
	sta $0200,x
B3E_dae7:
	dec $00
	bne B3E_da9c
	stx oam_index
	rts

B3E_daee:
	lda #$00
	sta $01
	lda (ptr0),y
	bpl B3E_daf8
	dec $01
B3E_daf8:
	iny
	clc
	adc temp_obj_screen_x
	sta $0303,x
B3E_daff:
	lda $01
	adc temp_obj_screen_x+1
	bne B3E_db31
	lda #$00
	sta $02
	lda (ptr0),y
B3E_db0b:
	bpl B3E_db0f
	dec $02
B3E_db0f:
	iny
B3E_db10:
	clc
	adc temp_obj_screen_y
	sta $0300,x
	lda $02
	adc temp_obj_screen_y+1
	bne B3E_db32
	lda (ptr0),y
	eor #$01
	sta $0301,x
B3E_db23:
	iny
	lda (ptr0),y
	sta $0302,x
	iny
	inx
	inx
	inx
	inx
	jmp B3E_db39
B3E_db31:
	iny
B3E_db32:
	iny
	iny
	lda #$f0
	sta $0300,x
B3E_db39:
	dec $00
	bne B3E_daee
	stx oam_index
	rts

B3E_db40:
	sty $03
	sta ptr0
	stx ptr0+1
	ldy #$00
	ldx oam_index
	lda (ptr0),y
	sta $00
	iny
	lda frame_counter
	lsr a
	bcs B3E_dbbf
B3E_db55:
	lda #$00
	sta $01
	lda (ptr0),y
	bit $03
	bvc B3E_db64
	eor #$ff
	sec
	sbc #$07
B3E_db64:
	cmp #$00
	bpl B3E_db6a
	dec $01
B3E_db6a:
	iny
	clc
	adc temp_obj_screen_x
	sta $0203,x
	lda $01
	adc temp_obj_screen_x+1
	bne B3E_dbb0
	lda #$00
	sta $02
	lda (ptr0),y
	bit $03
	bpl B3E_db86
	eor #$ff
	sec
	sbc #$0f
B3E_db86:
	cmp #$00
	bpl B3E_db8c
	dec $02
B3E_db8c:
	iny
	clc
	adc temp_obj_screen_y
	sta $0200,x
	lda $02
	adc temp_obj_screen_y+1
	bne B3E_dbb1
	lda (ptr0),y
	eor #$01
	sta $0201,x
	iny
	lda (ptr0),y
	eor $03
	sta $0202,x
	iny
	inx
	inx
	inx
	inx
	jmp B3E_dbb8
B3E_dbb0:
	iny
B3E_dbb1:
	iny
	iny
	lda #$f0
	sta $0200,x
B3E_dbb8:
	dec $00
	bne B3E_db55
	stx oam_index
	rts

B3E_dbbf:
	lda #$00
	sta $01
	lda (ptr0),y
	bit $03
	bvc B3E_dbce
	eor #$ff
	sec
	sbc #$07
    B3E_dbce:
	cmp #$00
	bpl B3E_dbd4
	dec $01
B3E_dbd4:
	iny
	clc
	adc temp_obj_screen_x
	sta $0303,x
	lda $01
	adc temp_obj_screen_x+1
	bne B3E_dc1a
	lda #$00
	sta $02
	lda (ptr0),y
	bit $03
	bpl B3E_dbf0
	eor #$ff
	sec
	sbc #$0f
B3E_dbf0:
	cmp #$00
	bpl B3E_dbf6
	dec $02
B3E_dbf6:
	iny
	clc
	adc temp_obj_screen_y
	sta $0300,x
	lda $02
	adc temp_obj_screen_y+1
	bne B3E_dc1b
	lda (ptr0),y
	eor #$01
	sta $0301,x
	iny
	lda (ptr0),y
	eor $03
	sta $0302,x
	iny
	inx
	inx
	inx
	inx
	jmp B3E_dc22
B3E_dc1a:
	iny
B3E_dc1b:
	iny
	iny
	lda #$f0
	sta $0300,x
B3E_dc22:
	dec $00
	bne B3E_dbbf
	stx oam_index
	rts

B3E_dc29:
	sta ptr0
	stx ptr0+1
	ldy #$00
B3E_dc2f:
	ldx oam_index
	lda (ptr0),y
	sta $00
	iny
	lda frame_counter
	lsr a
	bcs B3E_dc94
B3E_dc3c:
	lda #$00
	sta $01
	lda (ptr0),y
	bpl B3E_dc46
	dec $01
B3E_dc46:
	iny
	clc
	adc temp_obj_screen_x
	sta $0203,x
	lda $01
	adc temp_obj_screen_x+1
	bne B3E_dc85
	lda #$00
	sta $02
	lda (ptr0),y
B3E_dc59:
	bpl B3E_dc5d
	dec $02
B3E_dc5d:
	iny
	clc
	adc temp_obj_screen_y
	sta $0200,x
	lda $02
	adc temp_obj_screen_y+1
	bne B3E_dc86
	lda (ptr0),y
	eor #$01
	sta $0201,x
	iny
	lda (ptr0),y
	and $01a6
	ora $01a7
	sta $0202,x
	iny
	inx
	inx
	inx
	inx
	jmp B3E_dc8d
B3E_dc85:
	iny
B3E_dc86:
	iny
	iny
	lda #$f0
	sta $0200,x
B3E_dc8d:
	dec $00
	bne B3E_dc3c
	stx oam_index
	rts

B3E_dc94:
	lda #$00
	sta $01
	lda (ptr0),y
	bpl B3E_dc9e
	dec $01
B3E_dc9e:
	iny
	clc
	adc temp_obj_screen_x
	sta $0303,x
	lda $01
	adc temp_obj_screen_x+1
	bne B3E_dcdd
	lda #$00
	sta $02
	lda (ptr0),y
	bpl B3E_dcb5
	dec $02
B3E_dcb5:
	iny
	clc
	adc temp_obj_screen_y
	sta $0300,x
	lda $02
	adc temp_obj_screen_y+1
	bne B3E_dcde
	lda (ptr0),y
	eor #$01
	sta $0301,x
	iny
	lda (ptr0),y
	and $01a6
	ora $01a7
	sta $0302,x
	iny
	inx
	inx
	inx
	inx
	jmp B3E_dce5
B3E_dcdd:
	iny
B3E_dcde:
	iny
	iny
	lda #$f0
	sta $0300,x
B3E_dce5:
	dec $00
	bne B3E_dc94
	stx oam_index
	rts

B3E_dcec:
	sta ptr0
	stx ptr0+1
	ldx $69
	ldy #$00
	lda (ptr0),y
	sta $00
	iny
	lda frame_counter
	lsr a
	bcs B3E_dd51
B3E_dcff:
	lda #$00
	sta $01
	lda (ptr0),y
	bpl B3E_dd09
	dec $01
B3E_dd09:
	iny
	clc
	adc temp_obj_screen_x
	sta $0203,x
	lda $01
	adc temp_obj_screen_x+1
	bne B3E_dd42
	lda #$00
	sta $02
	lda (ptr0),y
	bpl B3E_dd20
	dec $02
B3E_dd20:
	iny
	clc
	adc temp_obj_screen_y
	sta $0200,x
	lda $02
	adc temp_obj_screen_y+1
	bne B3E_dd43
	lda (ptr0),y
	eor #$01
	sta $0201,x
	iny
	lda (ptr0),y
	sta $0202,x
	iny
	dex
	dex
	dex
	dex
	jmp B3E_dd4a
B3E_dd42:
	iny
B3E_dd43:
	iny
	iny
	lda #$f0
	sta $0200,x
B3E_dd4a:
	dec $00
	bne B3E_dcff
	stx $69
	rts

B3E_dd51:
	lda #$00
	sta $01
	lda (ptr0),y
	bpl B3E_dd5b
	dec $01
B3E_dd5b:
	iny
	clc
	adc temp_obj_screen_x
	sta $0303,x
	lda $01
	adc temp_obj_screen_x+1
	bne B3E_dd94
	lda #$00
	sta $02
	lda (ptr0),y
	bpl B3E_dd72
	dec $02
B3E_dd72:
	iny
	clc
	adc temp_obj_screen_y
	sta $0300,x
	lda $02
	adc temp_obj_screen_y+1
	bne B3E_dd95
	lda (ptr0),y
	eor #$01
	sta $0301,x
	iny
	lda (ptr0),y
	sta $0302,x
	iny
	dex
	dex
	dex
	dex
	jmp B3E_dd9c
B3E_dd94:
	iny
B3E_dd95:
	iny
	iny
	lda #$f0
	sta $0300,x
B3E_dd9c:
	dec $00
	bne B3E_dd51
	stx $69
	rts

;Draw Kirby?
B3E_dda3:
	tay
	lda kirby_05F2
	bne B3E_ddbc
	tya
B3E_ddaa:
	sta ptr0
	stx ptr0+1
	ldy #$00
	lda (ptr0),y
	cmp #$00
	beq B3E_ddb8
	sta chr_banks
B3E_ddb8:
	iny
	jmp B3E_da8f
B3E_ddbc:
	tya
	sta ptr0
	stx ptr0+1
	ldy #$00
	lda (ptr0),y
	cmp #$00
	beq B3E_ddcb
	sta chr_banks
    B3E_ddcb:
	iny
	lda #$fc
	sta $01a6
	lda #$01
	sta $01a7
	jmp B3E_dc2f
B3E_ddd9:
	sta ptr0
	stx ptr0+1
	ldy #$00
	lda (ptr0),y
	sta chr_banks+1
	iny
	jmp B3E_da8f
B3E_dde7:
	ldy #$fc
	sty $01a6
	ldy #$01
	sty $01a7
	jmp B3E_dc29
B3E_ddf4:
	ldy #$40
	jmp B3E_db40
	ldy #$80
	jmp B3E_db40
B3E_ddfe:
	ldy #$c0
	jmp B3E_db40

ClearOam:
	lda #$fc
	sta $69
	ldy #$00
	sty oam_index
	lda frame_counter
	lsr a
	bcs ClearOamBuffer2

ClearOamBuffer1:
	lda #$f0
B3E_de13:
	sta $0200,y
	sta $0201,y
	iny
	iny
	iny
	iny
	bne B3E_de13
	rts

ClearOamBuffer2:
	lda #$f0
B3E_de22:
	sta $0300,y
	sta $0301,y
	iny
	iny
	iny
	iny
	bne B3E_de22
	rts

ClearBothOamBuffers:
	lda #$fc
	sta $69
	ldy #$00
	sty oam_index
	jsr ClearOamBuffer1
	lda #$fc
	sta $69
	ldy #$00
	sty oam_index
	jmp ClearOamBuffer2

PlayMusic:
	jsr Script_ReadByte
	jmp B3F_f859

B3E_de4b:
	jsr Script_ReadByte
	jmp PlaySoundEffect
B3E_de51:
	lda #$00
	sta OBJ_min_slot
	lda #$12
	sta OBJ_max_slot
	ldy #$01
B3E_de5d:
	ldx curr_object_slot
	lda (script_ptr),y
	pha

	lda #0
	sta UNK_0
	sta UNK_1

	iny
	lda (script_ptr),y

	bpl B3E_de6f
	dec UNK_0
B3E_de6f:
	clc
	adc OBJ_store_x_lo,x
	pha
	lda UNK_0
	adc OBJ_store_x_hi,x
	sta new_object_x_hi
	iny
	lda (script_ptr),y
	bpl B3E_de83
	dec $01
B3E_de83:
	clc
	adc OBJ_store_y_lo,x
	pha
	lda $01
	adc OBJ_store_y_hi,x
	sta new_object_y_hi
	iny
	lda (script_ptr),y
	clc
	adc OBJ_store_z_lo,x
	sta new_object_z_lo
	iny
	lda (script_ptr),y
	sta new_object_var0
	iny
	lda (script_ptr),y
	clc
	adc OBJ_var1,x
	sta new_object_var1
	stx new_object_var2
	lda #$00
	sta new_object_var3
	sta new_object_var4
	sta new_object_var5
	sta new_object_var6
	sta new_object_var7
	tya
	clc
	adc script_ptr
	sta script_ptr
	bcc B3E_dec8
	inc script_ptr+1
B3E_dec8:
	pla
	tay
	pla
	tax
	pla
	jmp OBJ_New

;args:
;byte min
;byte max
;
CreateOBJInSlotBetween:
	;OBJ_min_slot = min
	ldy #1
	lda (script_ptr),y
	sta OBJ_min_slot

	;OBJ_max_slot = max
	iny
	lda (script_ptr),y
	sta OBJ_max_slot

	iny
	jmp B3E_de5d

B3E_dee1:
	ldy #1
	lda (script_ptr),y
	sta OBJ_min_slot
	tax
	inx
	stx OBJ_max_slot

	iny
	jmp B3E_de5d

	ldy #$01
	lda (script_ptr),y
	sta OBJ_min_slot
	sta OBJ_max_slot
	inc OBJ_max_slot
	tax
	jsr OBJ_Destroy
	iny
	jmp B3E_de5d

B3E_df06:
	jsr Script_ReadByte
	tax
	jmp OBJ_Destroy

B3E_df0d:
	ldx first_obj
B3E_df10:
	lda OBJ_next,x
	pha
	cpx curr_object_slot
	beq B3E_df1b
	jsr OBJ_Destroy
B3E_df1b:
	pla
	tax
	bpl B3E_df10
	rts

B3E_df20:
	jsr Script_ReadByte
	tax
	jsr Script_ReadByte
	pha
	jsr Script_ReadByte
	pha
	jsr Script_ReadByte
	sta script_bank
	pla
	tay
	pla
	jmp OBJ_TryReplaceScriptPc
B3E_df38:
	jsr Script_ReadByte
	pha
	jsr Script_ReadByte
	tax
	pla
	jmp B3E_c0da
	jsr Script_ReadByte
	sta a:ram_PPUMASK
	rts

B3E_df4b:
	jsr Script_ReadByte
	ora a:ram_PPUMASK
	sta a:ram_PPUMASK
	rts

	jsr Script_ReadByte
	eor #$ff
	and a:ram_PPUMASK
	sta a:ram_PPUMASK
	rts

;args:
;word palette pointer == ptr1
;byte start_index == a
;byte entry_count == y
;then goes to B3E_c90e
;DF61
Load_Palette:
	;ptr1 = palette pointer
	ldy #1
	lda (script_ptr),y
	sta ptr1
	iny
	lda (script_ptr),y
	sta ptr1+1

	;a == start_index
	iny
	lda (script_ptr),y
	pha

	;y = entry_count
	iny
	lda (script_ptr),y
	tay

	;script_ptr += 4
	lda #4
	jsr AdvanceScriptPtr

	pla
	jmp B3E_c90e

B3E_df7d:
	jsr Script_ReadByte
	sta ptr0
	jsr Script_ReadByte
	sta ptr0+1
	jsr Script_ReadByte
	ldy #$00
	cmp (ptr0),y
	beq B3E_dfa2
	lda script_ptr
	sec
	sbc #$06
	sta script_ptr
	bcs B3E_df9b
	dec script_ptr+1
B3E_df9b:
	ldx curr_script_slot
	lda #$01
	sta SCR_sleep_timer,x
B3E_dfa2:
	rts

B3E_dfa3:
	jsr Script_ReadByte
	sta ptr0
	jsr Script_ReadByte
	sta ptr0+1
	jsr Script_ReadByte
	ldy #$00
	sec
	sbc (ptr0),y
	rts

	jsr Script_ReadByte
	sta ptr0
	jsr Script_ReadByte
	sta ptr0+1
	jsr Script_ReadByte
	ldy curr_object_slot
	sec
	sbc (ptr0),y
	rts

	jsr Script_ReadByte
	sta ptr0
	jsr Script_ReadByte
	sta ptr0+1
	jsr Script_ReadByte
	tax
	ldy #$00
	lda (ptr0),y
	and B3E_cabe,x
	rts

B3E_dfdf:
	jsr Script_ReadByte
	jmp Rand

FreezeAllObjects:
	lda first_obj
B3E_dfe8:
	tax
	cpx curr_object_slot
	beq B3E_dff5
	lda OBJ_tick_bank,x
	ora #$80
	sta OBJ_tick_bank,x
B3E_dff5:
	lda OBJ_next,x
	bpl B3E_dfe8
	rts

UnfreezeAllObjects:
	lda first_obj
B3E_dffe:
	tax
	cpx curr_object_slot
	beq B3F_e00c
	tax
	lda OBJ_tick_bank,x
	and #$7f
	sta OBJ_tick_bank,x
B3F_e00c:
	lda OBJ_next,x
	bpl B3E_dffe
	rts

B3F_e012:
    txa
    pha
    tya
    pha
    lda UNK_0+4
    sec
    sbc UNK_0
    sta UNK_0+8
    lda UNK_0+5
    sbc UNK_1
    sta UNK_0+9
    php
    bcs B3F_e036
    lda UNK_0+8
    eor #$ff
    adc #$01
    sta UNK_0+8
    lda UNK_0+9
    eor #$ff
    adc #$00
    sta UNK_0+9
B3F_e036:
    lda UNK_2
    sec
    sbc UNK_0+6
    sta UNK_A
    lda UNK_3
    sbc UNK_0+7
    sta UNK_B
    php
    bcs B3F_e056
    lda UNK_A
    eor #$ff
    adc #$01
    sta UNK_A
    lda UNK_B
    eor #$ff
    adc #$00
    sta UNK_B
B3F_e056:
    pla
    lsr a
    pla
    rol a
    and #$03
    pha
    lda UNK_0+9
    beq B3F_e06d
B3F_e061:
    lsr a
    ror UNK_0+8
    lsr UNK_B
    ror UNK_B
    tax
    bne B3F_e061
    sta UNK_0+9
B3F_e06d:
    lda UNK_B
    beq B3F_e07b
B3F_e071:
    lsr a
    ror UNK_A
    lsr UNK_0+9
    ror UNK_0+8
    tax
    bne B3F_e071
B3F_e07b:
    ldx UNK_0+8
    lda #$00
    ldy UNK_A
    bne B3F_e087
    ldy #$10
    bne B3F_e0a3
B3F_e087:
    jsr B3E_c56b
    sta UNK_0+8
    stx UNK_0+9
    ldy #$10
B3F_e090:
    lda UNK_0+9
    cmp $e0e2,y
    bcc B3F_e0a0
    bne B3F_e0a3
    lda UNK_0+8
    cmp $e0d1,y
    bcs B3F_e0a3
B3F_e0a0:
    dey
    bne B3F_e090
B3F_e0a3:
    pla
    tax
    sta tmp0
    tya
    lsr tmp0
    bcs B3F_e0b2
    sta UNK_0
    lda #$11
    sbc UNK_0
B3F_e0b2:
    lsr tmp0
    bcs B3F_e0bc
    sta UNK_0
    lda #$11
    sbc UNK_0
B3F_e0bc:
    clc
    adc B3F_e0cd,x
    and #$3f
    asl a
    asl a
    sta tmp0
    pla
    tay
    pla
    tax
    lda tmp0
    rts
B3F_e0cd:
	.byte $20,$30,$10,$00,$00,$0C,$25,$40
	.byte $5B,$79,$99,$BD,$E8,$1A,$59,$AB
	.byte $1D,$CB,$FE,$BD,$5B,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$01,$01
	.byte $01,$02,$02,$03,$06,$14
B3F_e0f3:
    pha
    pha
    and #$fc
    lsr a
    pha
    tax
    lda B3F_e177,x
    sta UNK_2
    lda B3F_e177+1,x
    sta UNK_3
    jsr B3F_e1f7
    pla
    tax
    pla
    bmi B3F_e115
    lda UNK_0+5
    sta UNK_0+8
    lda UNK_0+6
    jmp B3F_e124
B3F_e115:
    lda UNK_0+5
    eor #$ff
    clc
    adc #$01
    sta UNK_0+8
    lda UNK_0+6
    eor #$ff
    adc #$00
B3F_e124:
    sta UNK_0+9
    lda B3F_e157,x
    sta UNK_2
    lda B3F_e157+1,x
    sta UNK_3
    jsr B3F_e1f7
    pla
    cmp #$40
    bcc B3F_e145
    cmp #$c0
    bcs B3F_e145
    lda UNK_0+5
    sta UNK_0+5
    lda UNK_0+6
    jmp B3F_e154
B3F_e145:
    lda UNK_0+5
    eor #$ff
    clc
    adc #$01
    sta UNK_0+5
    lda UNK_0+6
    eor #$ff
    adc #$00
B3F_e154:
    sta UNK_0+6
    rts
B3F_e157:
.word $100, $FE, $FB, $F5
.word $EC, $E2, $D5, $C6
.word $B5, $A3, $8E, $79
.word $62, $4B, $32, $19
B3F_e177:
.word 0, $19, $32, $4a
.word $62, $79, $8e, $a2
.word $b5, $c6, $d5, $e2
.word $ec, $f5, $fb, $fe

.word $100, $FE, $FB, $F5
.word $ED, $E2, $D5, $C6
.word $B5, $A2, $8E, $79
.word $62, $4A, $32, $19

.word 0, $19, $32, $4a
.word $62, $79, $8e, $a2
.word $b5, $c6, $d5, $e2
.word $ec, $f5, $fb, $fe


.word $100, $FE, $FB, $F5
.word $EC, $E2, $D5, $C6
.word $B5, $A3, $8E, $79
.word $62, $4B, $32, $19

B3F_e1f7:
    lda UNK_0
    ldx UNK_2
    jsr B3E_c698
    sta UNK_0+4
    stx UNK_0+5
    lda UNK_0
    ldx UNK_3
    jsr B3E_c698
    clc
    adc UNK_0+5
    sta UNK_0+5
    txa
    adc #$00
    sta UNK_0+6
    lda UNK_1
    ldx UNK_2
    jsr B3E_c698
    clc
    adc UNK_0+5
    sta UNK_0+5
    txa
    adc UNK_0+6
    sta UNK_0+6
    lda #$00
    adc #$00
    sta UNK_0+7
    lda UNK_1
    ldx UNK_3
    jsr B3E_c698
    clc
    adc UNK_0+6
    sta UNK_0+6
    txa
    adc UNK_0+7
    sta UNK_0+7
    rts
B3F_e23c:
    ldy #$01
    lda (script_ptr),y
    sta UNK_0
    iny
    lda (script_ptr),y
    sta UNK_1
B3F_e247:
    ldx curr_object_slot
    lda $61dc,x
    jsr B3F_e0f3
    ldx curr_object_slot
    lda UNK_0+8
    sta $60e0,x
    lda UNK_0+9
    sta $60f2,x
    lda UNK_0+5
    sta $6104,x
    lda UNK_0+6
    sta $6116,x
B3F_e265:
    lda #$02
    jmp AdvanceScriptPtr
B3F_e26a:
    ldy #$01
    ldx curr_object_slot
    lda $61dc,x
    bmi B3F_e281
    lda (script_ptr),y
    sta $60e0,x
    iny
    lda (script_ptr),y
    sta $60f2,x
    jmp B3F_e265
B3F_e281:
    lda (script_ptr),y
    eor #$ff
    clc
    adc #$01
    sta $60e0,x
    iny
    lda (script_ptr),y
    eor #$ff
    adc #$00
    sta $60f2,x
    jmp B3F_e265
B3F_e298:
    lda #$00
    sta $01a3
    sta $01a4
    rts
B3F_e2a1:
    jsr Script_ReadByte
    clc
    adc $01a3
    sta $01a3
    jsr Script_ReadByte
    clc
    adc $01a4
    sta $01a4
    rts
.byte $A9,$14,$8D,$31,$60,$A9,$BB,$A0
.byte $A1,$A2,$01,$4C,$A7,$CC
B3F_e2c4:
    lda $05e1
    cmp #$09
    bne B3F_e2d7
    lda $05e6
    bne B3F_e2d5
    lda $05e5
    beq B3F_e2d7
B3F_e2d5:
    sec
    rts
B3F_e2d7:
    clc
    rts
B3F_e2d9:
    jsr Script_ReadByte
    sta $05a0
    tax
    lda $e2e7,x
    sta $05a1
    rts
.byte $00,$00,$00,$00,$00,$00,$5A,$00
.byte $5A,$00
B3F_e2f1:
    jsr Script_ReadByte
    pha
    jsr Script_ReadByte
    pha
    jsr Script_ReadByte
    sta $6031
    pla
    tay
    pla
    pha
    tya
    pha
    lda #$02
    sta $05fc
    lda #$ff
    jsr PlaySoundEffect
    jsr LongCall
	_is_faraddr $219CB3
    pla
    tay
    pla
    ldx #$01
    jmp OBJ_TryReplaceScriptPc

;hotswap lower_prg with $39, get hitbox_data
B3F_e31d:
    sta hitbox_data_ptr_0027
    stx hitbox_data_ptr_0027+1
    lda lower_prg
    pha
    lda #$39
    jsr LowerBankswitch
    jsr $8000
    pla
    jmp LowerBankswitch

B3F_e330:
    lda lower_prg
    pha
    lda #$39
    jsr LowerBankswitch
    jsr $870f
    pla
    jmp LowerBankswitch
B3F_e33f:
    ldx $614d
    lda $78e8
    sec
    sbc #$01
    sta script_ptr
    lda $78e9
    sbc #$00
    sta script_ptr+1
    lda $78ea
    sta $63c0,x
    jsr UpperBankswitch
    lda $78eb
    sta $627f
    lda $78ec
    sta $6291
    lda $78ed
    sta $62a3
    lda $78ee
    sta SCR_sleep_timer,x
    lda $78ef
    rts
B3F_e376:
    lda lower_prg
    pha
    lda #$21
    jsr LowerBankswitch
    jsr $9955
    pla
    jmp LowerBankswitch
B3F_e385:
    clc
    adc $0599
    cmp #$63
    bcc B3F_e38f
    lda #$63
B3F_e38f:
    sta $0599
    rts
B3F_e393:
    clc
    adc $0593
    sta $0593
    txa
    adc $0594
    sta $0594
    bcc B3F_e3a6
    inc $0595
B3F_e3a6:
    rts
B3F_e3a7:
    sta tmp0
    lda lower_prg
    pha
    lda #$39
    jsr LowerBankswitch
    lda tmp0
    jsr $8605
    pla
    jmp LowerBankswitch
B3F_e3ba:
    tax
    lda lower_prg
    pha
    lda #$21
    jsr LowerBankswitch
    txa
    jsr $9dfd
    pla
    jmp LowerBankswitch
.res 6, 0
.byte 3
.res 12, 0
.byte 1, 1
.res 4, 0
B3F_e3e4:
    jsr B3E_c082
    jsr LongCall
	_is_faraddr $18A761
    cli
    jsr LongCall
	_is_faraddr $18A81C
    bcc B3F_e3fb
B3F_e3f6:
    lda #$68
    jsr B3F_e59a
B3F_e3fb:
    lda #$00
    sta $07da
    lda #$69
    jsr B3F_e59a
    lda $61ca
    bne B3F_e43a
    lda #$00
    jsr B3F_e5b1
    bne B3F_e41c
    lda #$00
    sta $07dd
    inc $07f3
    jmp B3F_e3fb
B3F_e41c:
	lda #$00
    sta $07dd
    lda #$ff
    jsr PlaySoundEffect
    lda #$6a
    jsr B3F_e59a
    lda $61ca
    bne B3F_e3fb
    lda #$69
    jsr B3F_e59a
    lda $61ca
    beq B3F_e3f6

B3F_e43a:
    jsr LongCall
	_is_faraddr $3DBD3E
    lda #$00
    sta $6600
    jsr B3F_ea87
    lda #$01
    sta $0516
    lda #$6c
    jsr B3F_e59a
B3F_e452:
    lda #$00
    sta $05fb
    jsr LongCall
	_is_faraddr $14A72A
B3F_e45d:
    jsr B3E_c082
    jsr B3F_e298
    jsr B3F_e638
    lda $0516
    bne B3F_e487
    lda $05a2
    beq B3F_e47c
    lda current_room+1
    bne B3F_e47c
    lda current_room
    cmp #$07
    bcc B3F_e487
B3F_e47c:
    lda $67f4
    cmp $0783
    beq B3F_e487
    jsr B3F_f859
B3F_e487:
    lda #$00
    sta $0516
B3F_e48c:
    jsr B3E_c067
    jsr B3E_c32c
    lda pad_hold
    sta temp_pad1_hold
    lda pad_press
    sta temp_pad1_press
    lda #$ff
    sta $0501
    jsr OBJ_Main
    jsr B3F_e6f3
    ldx $056a
    beq B3F_e48c
    dex
    bne B3F_e4b0
    jmp B3F_e45d
B3F_e4b0:
    dex
    bne B3F_e4be
    jsr B3F_e581
    lda #$ff
    sta current_room+1
    jmp B3F_e45d
B3F_e4be:
    dex
    bne B3F_e4d7
    dec $0599
    bpl B3F_e4c9
    jmp B3F_e566
B3F_e4c9:
    lda $0596
    sta kirby_health
    lda #$ff
    sta current_room+1
    jmp B3F_e45d
B3F_e4d7:
    dex
    bne B3F_e4e9
    jsr LongCall
    _is_faraddr $18A7FA
    jsr LongCall
	_is_faraddr $3DBD38
    jmp B3F_e452
B3F_e4e9:
    dex
    bne B3F_e53b
    lda current_room+1
    cmp #$00
    bne B3F_e4fd
    lda current_room
    cmp #$0c
    bne B3F_e4fd
    jmp B3F_e45d
B3F_e4fd:
    lda $0596
    sta kirby_health
    ldy $0558
    ldx $0520
    lda $0531,y
    ora B3E_cabe,x
    sta $0531,y
    lda #$ff
    sta current_room+1
    jsr B3F_e581
    lda $0520
    cmp #$07
    beq B3F_e524
    jmp B3F_e45d
B3F_e524:
    ldy $0558
    iny
    sty $0557
    sty $79e9
    sty $0528
    cpy #$07
    bcc B3F_e538
    sty $0558
B3F_e538:
    jmp B3F_e43a
B3F_e53b:
    dex
    bne B3F_e541
    jmp B3F_e452
	B3F_e541:
	dex
    bne B3F_e54d
    jsr LongCall
    _is_faraddr $3DBEFD
    jmp B3F_e452
	B3F_e54d:
    inc $6601
    lda $6601
    jsr B3F_e5b1
    lda $6601
    cmp #$07
    bcc B3F_e54d
    jsr LongCall
	_is_faraddr $18A2EE
    jmp B3F_e45d

B3F_e566:
    lda #$6d
    jsr B3F_e59a
    lda $61dc
    beq B3F_e573
    jmp B3F_e3e4
B3F_e573:
    lda #$3d
    jsr LoadBankUpper
    jsr $bc32
    jsr B3F_f061
    jmp B3F_e43a
B3F_e581:
    lda $0566
    sta $0562
    lda $0567
    sta $0563
    lda $0568
    sta $0564
    lda $0569
    sta $0565
    rts

B3F_e59a:
    pha
    jsr OBJ_InitModule
    pla
    jsr OBJ_NewFresh
B3F_e5a2:
    jsr B3E_c067
    jsr B3E_c32c
    jsr OBJ_Main
    lda $6032
    bpl B3F_e5a2
    rts
B3F_e5b1:
    jsr LongCall
	_is_faraddr $18A1F7
    lda $055c
    bpl B3F_e5e3
    lda #$00
    sta $055c
    jsr B3F_e638
    lda #$00
    jsr OBJ_NewFresh
    lda #$00
    sta $602b
    sta $602c
    sta $6023
    sta $6024
    ldy #$e0
    ldx #$80
    lda #$3d
    jsr OBJ_New
    jmp B3F_e5eb
B3F_e5e3:
    jsr B3F_e638
    lda #$00
    jsr OBJ_NewFresh
B3F_e5eb:
    jsr B3E_c067
    jsr LongCall
	_is_faraddr $18A283
    lda #$ff
    sta $0501
    jsr OBJ_Main
    jsr B3F_e6f3
    lda $056a
    bne B3F_e624
    ldy $6601
    bne B3F_e5eb
    lda a:pad_hold
    and #$d0
    beq B3F_e5eb
    lda #$04
B3F_e612:
    pha
    jsr Palette_FadeDarkIn
    jsr B3E_c067
    jsr B3E_c067
    pla
    sec
    sbc #$01
    bpl B3F_e612
    lda #$00
B3F_e624:
    rts
B3F_e625:
    lda #$12
    jsr LoadBankLower
    lda #$13
    jsr LoadBankUpper
    jsr $a778
    jsr B3F_f03b
    jmp B3F_f061
B3F_e638:
    lda #.BANK(B13_a000)
    jsr BankSwapUpper
    jmp B13_a000
B3F_e640:
    lda #$38
    jsr BankSwapUpper
    jsr $acca
    ldx current_room
    lda current_room+1
    bne B3F_e65d
    lda $88a6,x
    pha
    ldy $875f,x
    lda $84d1,x
    jmp B3F_e667
B3F_e65d:
    lda $89a6,x
    pha
    ldy $885f,x
    lda $85d1,x
B3F_e667:
    and #$7f
    jsr BankSwapUpper
    pla
    sta ptr0
    sty ptr0+1
    lda #.LOBYTE($67ee)
    sta ptr1
    lda #.HIBYTE($67ee)
    sta ptr1+1
    jsr Decompress
    lda #$13
    jsr BankSwapUpper
    jmp $a38c
B3F_e684:
    lda $057d
    jsr BankSwapUpper
    ldy #$00
    sty $66e2
    lda (ptr0),y
    sta $057e
    tay
    clc
    adc UNK_ED
    sta UNK_ED+2
    lda UNK_ED+1
    adc #$00
    sta UNK_ED+3
    iny
    lda (ptr0),y
    clc
    adc UNK_ED+2
    sta UNK_ED+4
    lda #$00
    adc UNK_ED+3
    sta UNK_ED+5
    lda #$0c
    sta UNK_F
B3F_e6b2:
    lda temp_x_hi
    pha
    jsr B3F_e8dc
    pla
    sta temp_x_hi
    dec UNK_F
    beq B3F_e6cd
    lda tmp1
    clc
    adc #$10
    sta tmp1
    bcc B3F_e6b2
    inc temp_y_hi
    jmp B3F_e6b2
B3F_e6cd:
    lda #$13
    jsr BankSwapUpper
    jmp $a690
B3F_e6d5:
    lda #$00
    jsr LoadBankLower
    lda #$13
    jsr LoadBankUpper
    jsr $a6c2
    jsr B3F_f03b
    jmp B3F_f061
B3F_e6e8:
    lda #$38
    jsr LoadBankUpper
    jsr $ae2f
    jmp B3F_f061
B3F_e6f3:
    ldy $051e
    bne B3F_e6f9
    rts

B3F_e6f9:
    cpy #$02
    bcc B3F_e717
    cpy #$06
    bcs B3F_e714
    lda #$12
    jsr LoadBankLower
    lda #$13
    jsr LoadBankUpper
    jsr $a804
    jsr B3F_f03b
    jsr B3F_f061
B3F_e714:
    jmp B3F_e799
B3F_e717:
    lda camera_x
    sta temp_camera_x
    lda camera_x+1
    sta temp_camera_x+1
    lda current_room+1
    cmp #$00
    bne B3F_e799
    lda current_room
    cmp #$0c
    bne B3F_e799
    lda temp_camera_x+1
    cmp #$03
    bcc B3F_e753
    dec camera_x+1
    dec camera_x+1
    dec temp_camera_x+1
    dec temp_camera_x+1
    dec $0570
    dec $0570
    ldx #$11
B3F_e743:
    lda $6128,x
    bmi B3F_e750
    cmp #$46
    beq B3F_e750
    dec OBJ_x_hi,x
    dec OBJ_x_hi,x
B3F_e750:
    dex
    bpl B3F_e743
B3F_e753:
    lda temp_camera_x
    eor $056f
    bit $cac2
    beq B3F_e799
    lda temp_camera_x
    clc
    adc #$80
    tax
    lda temp_camera_x+1
    adc #$00
    and #$01
    pha
    txa
    lsr a
    lsr a
    lsr a
    lsr a
    tax
    ldy #$0b
    pla
    bne B3F_e788
B3F_e775:
    lda $6d48,x
    sta $6988,x
    sta $6bc8,x
    txa
    clc
    adc #$10
    tax
    dey
    bpl B3F_e775
    bmi B3F_e799
B3F_e788:
    lda $6d48,x
    sta $6a48,x
    sta $6c88,x
    txa
    clc
    adc #$10
    tax
    dey
    bpl B3F_e788
B3F_e799:
    lda camera_x
    eor $057b
    bit $cac2
    beq B3F_e7d1
    lda camera_y
    sta tmp1
    lda camera_y+1
    sta temp_y_hi
    lda camera_x
    cmp $057b
    bpl B3F_e7c3
    clc
    adc #$08
    sta tmp0+1
    lda camera_x+1
    adc #$00
    sta temp_x_hi
    jsr B3F_e945
    jmp B3F_e7d1
B3F_e7c3:
    clc
    adc #$f8
    sta tmp0+1
    lda camera_x+1
    adc #$00
    sta temp_x_hi
    jsr B3F_e945
B3F_e7d1:
    lda camera_y
    eor $057c
    bit $cac2
    beq B3F_e809
    lda camera_x
    sta tmp0+1
    lda camera_x+1
    sta temp_x_hi
    lda camera_y
    cmp $0571
    bpl B3F_e7fb
    clc
    adc #$08
    sta tmp1
    lda camera_y+1
    adc #$00
    sta temp_y_hi
    jsr B3F_e8dc
    jmp B3F_e809
B3F_e7fb:
    clc
    adc #$b8
    sta tmp1
    lda camera_y+1
    adc #$00
    sta temp_y_hi
    jsr B3F_e8dc
B3F_e809:
    lda camera_x
    sta $057b
    lda camera_y
    sta $057c
B3F_e813:
    ldx #$00
    lda temp_camera_x
    cmp $0577
    beq B3F_e823
    bmi B3F_e820
    ldx #$07
B3F_e820:
    stx $0578
B3F_e823:
    lda temp_camera_x
    sta $0577
    lda temp_camera_x
    clc
    adc $0578
    eor $056f
    and #$f8
    bne B3F_e838
    jmp B3F_e876
B3F_e838:
    lda temp_camera_x
    clc
    adc $0578
    cmp $056f
    bpl B3F_e85b
    ldy camera_y
    ldx camera_y+1
    lda $0570
    jsr B3F_eb7e
    sec
    sbc #$08
    sta $056f
    bcs B3F_e813
    dec $0570
    jmp B3F_e813
B3F_e85b:
    ldy camera_y
    ldx camera_y+1
    lda $0570
    clc
    adc #$01
    jsr B3F_eb7e
    clc
    adc #$08
    sta $056f
    bcc B3F_e813
    inc $0570
    jmp B3F_e813
B3F_e876:
    lda camera_y
    eor $0571
    and #$f8
    beq B3F_e8c0
    lda camera_y
    cmp $0571
    bpl B3F_e8a3
    lda $0571
    sec
    sbc #$08
    tay
    lda $0572
    sbc #$00
    jsr B3F_eb59
    sec
    sbc #$08
    sta $0571
    bcs B3F_e876
    dec $0572
    jmp B3F_e876
B3F_e8a3:
    lda $0571
    clc
    adc #$b8
    tay
    lda $0572
    adc #$00
    jsr B3F_eb59
    clc
    adc #$08
    sta $0571
    bcc B3F_e876
    inc $0572
    jmp B3F_e876
B3F_e8c0:
    ldy camera_y
    ldx camera_y+1
    lda temp_camera_x+1
    jsr B3F_ecf1
    sty temp_camera_y
    lda #$13
    jsr LoadBankUpper
    jsr $af9b
    jsr $a8e6
    jsr B3F_f03b
    jmp B3F_f061
B3F_e8dc:
    ldy temp_y_hi
    cpy $057e
    bcc B3F_e8e4
    rts
B3F_e8e4:
    lda #$12
    jsr LoadBankLower
    lda $057d
    jsr LoadBankUpper
    lda temp_x_hi
    clc
    adc $676d,y
    sta tmp0
    lda tmp0+1
    ldy tmp1
    jsr B3F_f071
    sta UNK_1
    lda #$10
    sta UNK_0
B3F_e904:
    lda temp_x_hi
    cmp $67ee
    bcs B3F_e92e
    ldy tmp0
    cpy $057e
    bcs B3F_e92e
    lda (UNK_ED),y
    sta UNK_2
    cpy #$00
    beq B3F_e91e
    dey
    lda (UNK_ED),y
    tay
B3F_e91e:
    cpy UNK_2
    bcs B3F_e92e
    lda (UNK_ED+2),y
    cmp UNK_1
    bne B3F_e92b
    jsr B3F_e9bb
B3F_e92b:
    iny
    bne B3F_e91e
B3F_e92e:
    lda UNK_1
    clc
    adc #$10
    bcc B3F_e939
    inc temp_x_hi
    inc tmp0
B3F_e939:
    sta UNK_1
    dec UNK_0
    bne B3F_e904
    jsr B3F_f03b
    jmp B3F_f061
B3F_e945:
    ldy temp_x_hi
    cpy $67ee
    bcc B3F_e94d
    rts
B3F_e94d:
    lda #$12
    jsr LoadBankLower
    lda $057d
    jsr LoadBankUpper
    tya
    ldy temp_y_hi
    clc
    adc $676d,y
    sta tmp0
    lda tmp0+1
    ldy tmp1
    jsr B3F_f071
    sta UNK_1
    lda #$0b
    sta UNK_0
B3F_e96e:
    lda temp_y_hi
    cmp $67ef
    bcs B3F_e998
    ldy tmp0
    cpy $057e
    bcs B3F_e998
    lda (UNK_ED),y
    sta UNK_2
    cpy #$00
    beq B3F_e988
    dey
    lda (UNK_ED),y
    tay
B3F_e988:
    cpy UNK_2
    bcs B3F_e998
    lda (UNK_ED+2),y
    cmp UNK_1
    bne B3F_e995
    jsr B3F_e9bb
B3F_e995:
    iny
    bne B3F_e988
B3F_e998:
    ldy UNK_1
    iny
    tya
    and #$0f
    bne B3F_e9af
    tya
    sec
    sbc #$10
    tay
    inc temp_y_hi
    lda tmp0
    clc
    adc $67ee
    sta tmp0
B3F_e9af:
    sty UNK_1
    dec UNK_0
    bne B3F_e96e
    jsr B3F_f03b
    jmp B3F_f061
B3F_e9bb:
    sty UNK_3
    ldy #$08
B3F_e9bf:
    lda UNK_3
    cmp $057f,y
    bne B3F_e9ce
    ldx $6131,y
    bmi B3F_e9ce
    jmp B3F_ea84
B3F_e9ce:
    dey
    bpl B3F_e9bf
    ldy UNK_3
    jsr B3F_ea9b
    bcc B3F_e9d9
    rts
B3F_e9d9:
    cmp #$35
    bcc B3F_e9f1
    cmp #$38
    bcc B3F_e9f5
    cmp #$49
    beq B3F_e9f5
    cmp #$91
    beq B3F_e9f5
    cmp #$92
    beq B3F_e9f5
    cmp #$f0
    bcs B3F_e9f5
B3F_e9f1:
    lda #$10
    bne B3F_e9f7
B3F_e9f5:
    lda #$12
B3F_e9f7:
    sta $6030
    lda #$09
    sta $602f
    lda temp_x_hi
    sta $602b
    lda temp_y_hi
    sta $602c
    ldy UNK_3
    lda (UNK_ED+4),y
    sta UNK_0+4
    tay
    lda #$13
    jsr BankSwapUpper
    lda #$00
    sta $6025
    sta $6026
    lda $aad2,y
    and #$0f
    sta $6023
    lda $aad2,y
    lsr a
    lsr a
    lsr a
    lsr a
    sta $6024
    lda $a9d2,y
    pha
    lda $057d
    jsr BankSwapUpper
    ldy UNK_3
    lda (UNK_ED+2),y
    and #$f0
    ora #$08
    tax
    lda (UNK_ED+2),y
    asl a
    asl a
    asl a
    asl a
    ora #$08
    tay
    pla
    jsr OBJ_New
    cmp #$ff
    beq B3F_ea84
    tay
    lda UNK_3
    sta $0576,y
    lda UNK_0+4
    cmp #$b0
    bcc B3F_ea84
    cmp #$e0
    bcs B3F_ea84
    cmp #$d0
    bcc B3F_ea71
    tya
    ora #$80
    sta $059a
    lda #$ff
    bne B3F_ea76
B3F_ea71:
    sty $059a
    lda #$00
B3F_ea76:
    sta $059b
    lda #$00
    sta $66e9
    lda $6128,y
    sta $059c
B3F_ea84:
    ldy UNK_3
    rts
B3F_ea87:
    ldx #$07
B3F_ea89:
    lda B3F_ea93,x
    sta $66d5,x
    dex
    bpl B3F_ea89
    rts
B3F_ea93:
	.byte $00,$0A,$14,$1E,$28,$32,$3C,$46

B3F_ea9b:
    sty UNK_0+8
    lda (UNK_ED+4),y
    cmp #$b0
    bcc B3F_eac8
    cmp #$d0
    bcc B3F_eaaa
    jmp B3F_eb2b
B3F_eaaa:
    lda UNK_0+8
    ldx #$00
    beq B3F_eab6
B3F_eab0:
    cmp $66dd,x
    beq B3F_eb2d
    inx
B3F_eab6:
    cpx $66e2
    bcc B3F_eab0
    sta $66dd,x
    lda $78c9
    beq B3F_eac6
    inc $66e2
B3F_eac6:
    clc
    rts
B3F_eac8:
    cmp #$17
    bcc B3F_eb2b
    cmp #$1a
    bcc B3F_eaf1
    cmp #$35
    bcc B3F_eb2b
    beq B3F_eaf1
    cmp #$92
    beq B3F_eaf1
    bcs B3F_eb2b
    cmp #$37
    beq B3F_eaf1
    cmp #$49
    beq B3F_eaf1
    cmp #$91
    beq B3F_eaf1
    cmp #$36
    bne B3F_eb2b
    ldx $0558
    bpl B3F_eaf3
B3F_eaf1:
    ldx #$07
B3F_eaf3:
    lda $66d5,x
    sta UNK_0+9
    lda $ea93,x
    tax
    bpl B3F_eb0e
B3F_eafe:
    lda $6621,x
    cmp UNK_0+8
    bne B3F_eb0d
    lda $667b,x
    cmp current_room
    beq B3F_eb2d
B3F_eb0d:
    inx
B3F_eb0e:
    cpx UNK_0+9
    bcc B3F_eafe
    lda (UNK_ED+4),y
    cmp #$49
    beq B3F_eb1c
    cmp #$92
    bne B3F_eb2b
B3F_eb1c:
    lda UNK_0+8
    sta $6621,x
    lda current_room
    sta $667b,x
    inx
    stx $66dc
B3F_eb2b:
    clc
    rts
B3F_eb2d:
    sec
    rts
B3F_eb2f:
    tax
    lda $61ee,x
    cmp #$04
    beq B3F_eb58
    cmp #$05
    beq B3F_eb58
    ldy $0558
    cmp #$01
    beq B3F_eb44
    ldy #$07
B3F_eb44:
    lda $0576,x
    ldx $66d5,y
    sta $6621,x
    lda current_room
    sta $667b,x
    inx
    txa
    sta $66d5,y
B3F_eb58:
    rts
B3F_eb59:
    tax
    lda $0578
    clc
    adc #$08
    adc temp_camera_x
    sta tmp0+1
    lda temp_camera_x+1
    adc #$00
    jsr B3F_ecf1
    sty tmp1
    sta tmp0
    lda #$12
    jsr LoadBankLower
    jsr $8170
    jsr B3F_f03b
    lda $0571
    rts
B3F_eb7e:
    jsr B3F_ecf1
    sta tmp0
    tya
    sec
    sbc #$08
    bcs B3F_eb95
    adc #$c0
    tay
    lda tmp0
    sec
    sbc $67ee
    sta tmp0
    tya
B3F_eb95:
    sta tmp1
    lda $056f
    sta tmp0+1
    lda #$12
    jsr BankSwapLower
    jsr $82e6
    jsr B3F_f03b
    lda $056f
    rts
B3F_ebab:
    ldy $67f6,x
    and #$f0
    clc
    adc B3F_ed55,y
    sta ptr0
    lda B3F_ed65,y
    adc #$00
    sta ptr0+1
    rts
B3F_ebbe:
    bit $05e9
    bmi B3F_ebd2
    lda $05e5
    bne B3F_ebd2
    lda $05e6
    bne B3F_ebd2
    lda $612a
    bmi B3F_ebd3
B3F_ebd2:
    rts
B3F_ebd3:
    lda #$12
    jsr LoadBankLower
    lda #$13
    jsr LoadBankUpper
    lda $61dd
    bmi B3F_ec0e
    ldy #$08
B3F_ebe4:
    lda OBJ_x_lo+1
    clc
    adc $ec3d,y
    and #$f0
    sta tmp0+1
    lda OBJ_x_hi+1
    adc #$00
    sta temp_x_hi
    lda OBJ_y_lo+1
    clc
    adc $ec46,y
    sta tmp1
    lda OBJ_y_hi+1
    adc $ec4f,y
    sta temp_y_hi
    jsr $a93d
    bcs B3F_ec37
    dey
    bpl B3F_ebe4
    jmp B3F_ec37
B3F_ec0e:
    ldy #$08
B3F_ec10:
    lda OBJ_x_lo+1
    sec
    sbc $ec3d,y
    and #$f0
    sta tmp0+1
    lda OBJ_x_hi+1
    sbc #$00
    sta temp_x_hi
    lda OBJ_y_lo+1
    clc
    adc $ec46,y
    sta tmp1
    lda OBJ_y_hi+1
    adc $ec4f,y
    sta temp_y_hi
    jsr $a93d
    bcs B3F_ec37
    dey
    bpl B3F_ec10
B3F_ec37:
    jsr B3F_f03b
    jmp B3F_f061

.byte $28,$28,$18,$18,$28,$08,$08,$18
.byte $08,$10,$F0,$10,$F0,$00,$10,$F0
.byte $00,$00,$00,$FF,$00,$FF,$00,$00
.byte $FF,$00,$00
B3F_ec58:
    stx UNK_D
    sty UNK_E
    ora $ec91,x
    ora $eca1,y
    tax
    lda UNK_D
    lsr a
    ora $ecb9,y
    tay
    lda $66ed,y
    and $ecd1,x
    ora $ece1,x
    sta $66ed,y
    ldy UNK_E
    txa
    eor $ecad,y
    tax
    lda UNK_D
B3F_ec7f:
    lsr a
    ora $ecc5,y
    tay
    lda $66ed,y
    and $ecd1,x
    ora $ece1,x
    sta $66ed,y
    rts
.byte $00,$04,$00,$04,$00,$04,$00,$04
.byte $00,$04,$00,$04,$00,$04,$00,$04
.byte $00,$08,$00,$08,$00,$08,$00,$08
.byte $00,$08,$00,$08,$00,$00,$00,$08
.byte $08,$08,$08,$08,$08,$08,$08,$08
.byte $00,$00,$08,$08,$10,$10,$18,$18
.byte $20,$20,$28,$28,$30,$30,$38,$40
.byte $40,$48,$48,$50,$50,$58,$58,$60
.byte $FC,$FC,$FC,$FC,$F3,$F3,$F3,$F3
.byte $CF,$CF,$CF,$CF,$3F,$3F,$3F,$3F
.byte $00,$01,$02,$03,$00,$04,$08,$0C
.byte $00,$10,$20,$30,$00,$40,$80,$C0
B3F_ecf1:
    cpx #$60
    bcc B3F_ecfa
    ldy #$00
    lda #$ff
    rts
B3F_ecfa:
    pha
    lda #$00
    sta UNK_0
    txa
    cmp #$30
    bcc B3F_ed06
    sbc #$30
B3F_ed06:
    rol UNK_0
    cmp #$18
    bcc B3F_ed0e
    sbc #$18
B3F_ed0e:
    rol UNK_0
B3F_ed10:
    cmp #$0c
    bcc B3F_ed16
    sbc #$0c
B3F_ed16:
    rol UNK_0
    cmp #$06
    bcc B3F_ed1e
    sbc #$06
B3F_ed1e:
    rol UNK_0
    cmp #$03
    bcc B3F_ed26
    sbc #$03
B3F_ed26:
    rol UNK_0
    cmp #$01
    beq B3F_ed30
    bcs B3F_ed34
    bcc B3F_ed3c
B3F_ed30:
    cpy #$80
    bcc B3F_ed3c
B3F_ed34:
    tax
    tya
    sbc #$80
    tay
    txa
    sbc #$01
B3F_ed3c:
    rol UNK_0
    cmp #$01
    bcs B3F_ed46
    cpy #$c0
    bcc B3F_ed4b
B3F_ed46:
    tya
    sbc #$c0
    tay
    sec
B3F_ed4b:
    rol UNK_0
    ldx UNK_0
    pla
    clc
    adc $676d,x
    rts
B3F_ed55:
.lobytes $68C8, $6988, $6a48, $6b08
.lobytes $6bC8, $6c88, $6d48, $6e08
.lobytes $6eC8, $6f88, $7048, $7108
.lobytes $71C8, $7288, $7348, $7408
B3F_ed65:
.hibytes $68C8, $6988, $6a48, $6b08
.hibytes $6bC8, $6c88, $6d48, $6e08
.hibytes $6eC8, $6f88, $7048, $7108
.hibytes $71C8, $7288, $7348, $7408

B3F_ed75:
    jsr B3F_ef90
    lda $83d3,y
    and #$1f
    cmp #$0d
    bne B3F_ed8a
    ldx $8452,y
    jsr B3F_f03b
    txa
    sec
    rts
B3F_ed8a:
    jsr B3F_f03b
    lda #$00
    clc
    rts
B3F_ed91:
    jsr B3F_ef85
    and #$20
    bne B3F_ed9a
    clc
    rts
B3F_ed9a:
    sec
    rts
B3F_ed9c:
    jsr B3F_ef85
    and #$1f
    rts
B3F_eda2:
    lda current_room+1
    cmp #$ff
    bne B3F_edaa
    rts
B3F_edaa:
    jsr B3F_ef90
    cpy #$28
    beq B3F_edb8
    cpy #$58
    beq B3F_edb8
    jmp B3F_ee3c
B3F_edb8:
    lda $051e
    cmp #$06
    bne B3F_edd0
    lda #$00
    sta $056c
    lda #$00
    sta $056b
    sta $051d
    sec
    jmp B3F_f03b
B3F_edd0:
    lda tmp0+1
    ldy tmp1
    jsr B3F_f071
    sta tmp0
    stx tmp0+1
    ldx current_room
    lda current_room+1
    bne B3F_edfa
    lda $8f82,x
    sta ptr0
    lda $90cb,x
    sta ptr0+1
    lda $8f83,x
    sta ptr1
    lda $90cc,x
    sta ptr1+1
    jmp B3F_ee0e
B3F_edfa:
    lda $9082,x
    sta ptr0
    lda $91cb,x
    sta ptr0+1
    lda $9083,x
    sta ptr1
    lda $91cc,x
    sta ptr1+1
B3F_ee0e:
    ldx #$00
B3F_ee10:
    lda ptr0
    cmp ptr1
    bne B3F_ee1c
    lda ptr0+1
    cmp ptr1+1
    beq B3F_ee3c
B3F_ee1c:
    ldy #$00
    lda (ptr0),y
    and #$0f
    cmp tmp0+1
    bne B3F_ee2d
    iny
    lda (ptr0),y
    cmp tmp0
    beq B3F_ee40
B3F_ee2d:
    inx
    lda ptr0
    clc
    adc #$05
    sta ptr0
    bcc B3F_ee10
    inc ptr0+1
    jmp B3F_ee10
B3F_ee3c:
    clc
    jmp B3F_f03b
B3F_ee40:
    stx $056b
    txa
    sta UNK_0
    asl a
    asl a
    clc
    adc UNK_0
    tay
    ldx current_room
    lda current_room+1
    bne B3F_ee61
    lda $8f82,x
    sta ptr0
    lda $90cb,x
    sta ptr0+1
    jmp B3F_ee6b
B3F_ee61:
    lda $9082,x
    sta ptr0
    lda $91cb,x
    sta ptr0+1
B3F_ee6b:
    iny
    iny
    iny
    lda (ptr0),y
    and #$70
    sta UNK_0
    dey
    dey
    dey
    lda (ptr0),y
    lsr a
    lsr a
    lsr a
    lsr a
    ora UNK_0
    sta $056c
    and #$0f
    cmp #$0d
    beq B3F_ee9f
    sec
    sbc #$0a
    cmp #$03
    bcs B3F_eeaa
    ldx $0558
    tay
    lda $0531,x
    and B3E_cabe,y
    beq B3F_eeaa
B3F_ee9b:
    clc
    jmp B3F_f03b
B3F_ee9f:
    ldx $0558
    lda B3E_cabe,x
    cmp $07dc
    beq B3F_ee9b
B3F_eeaa:
    lda #$00
    sta $051d
    sec
    jmp B3F_f03b
B3F_eeb3:
    jsr B3F_ef90
    lda $83d3,y
    and #$1f
    cmp #$00
    bne B3F_eed3
    lda $8452,y
    bmi B3F_eed3
    lsr a
    lsr a
    tax
    lda $8452,y
    and #$03
    pha
    jsr B3F_f03b
.byte $68,$38,$60
B3F_eed3:
    jsr B3F_f03b
    lda #$ff
    tax
    clc
    rts
B3F_eedb:
    jsr B3F_ef85
    and #$80
    bne B3F_eee4
    clc
    rts
B3F_eee4:
    sec
    rts

B3F_eee6:
	jsr B3F_ef85
    and #$40
    bne B3F_eeef
    clc
    rts
B3F_eeef:
    sec
    rts
B3F_eef1:
    sty UNK_1
    stx UNK_2
    jsr B3F_ef90
    lda $8452,y
    and #$10
    bne B3F_ef03
    clc
    jmp B3F_f03b
B3F_ef03:
    ldy tmp0
    sty UNK_0
    lda (ptr0),y
    sec
    sbc $056d
    sta (ptr0),y
    sta tmp0
    jsr B3F_ef50
    sec
    jmp B3F_f03b
B3F_ef18:
    sty UNK_1
    stx UNK_2
    sta tmp0
    lda #$12
    jsr LoadBankLower
    stx tmp0+1
    ldx temp_y_hi
    lda temp_x_hi
    jsr B3F_ecf1
    sty tmp1
    tax
    ldy $67f6,x
    lda B3F_ed55,y
    sta ptr0
    lda B3F_ed65,y
    sta ptr0+1
    lda tmp1
    ldy tmp0+1
    jsr B3F_f071
    sta UNK_0
    tay
    lda tmp0
    sta (ptr0),y
    jsr B3F_ef50
    jmp B3F_f03b
B3F_ef50:
    lda UNK_2
    and #$f0
    sec
    sbc $056f
    lda temp_x_hi
    sbc $0570
    bne B3F_ef84
    lda UNK_1
    and #$f0
    sec
    sbc $0571
    sta UNK_1
    lda temp_y_hi
    sbc $0572
    beq B3F_ef7b
    cmp #$ff
    bne B3F_ef84
    lda UNK_1
    cmp #$f0
    bcs B3F_ef81
    rts
B3F_ef7b:
    lda UNK_1
    cmp #$b8
    bcs B3F_ef84
B3F_ef81:
    jsr $8000
B3F_ef84:
    rts
B3F_ef85:
    jsr B3F_ef90
    ldx $83d3,y
    jsr B3F_f03b
    txa
    rts
B3F_ef90:
    lda #$12
    jsr LoadBankLower
    lda temp_x_hi
    bmi B3F_ef9e
    cmp $67ee
    bcc B3F_efa7
B3F_ef9e:
    lda $78d1
    tay
    rts
B3F_efa3:
    lda #$00
    tay
    rts
B3F_efa7:
    stx tmp0+1
    ldx temp_y_hi
    lda temp_x_hi
    jsr B3F_ecf1
    bmi B3F_efa3
    cmp $67ed
    bcs B3F_efec
    sty tmp1
    tax
    lda $051e
    cmp #$02
    bcc B3F_efc7
    txa
    clc
    adc $67ee
    tax
B3F_efc7:
    ldy $67f6,x
    lda B3F_ed55,y
    sta ptr0
    lda B3F_ed65,y
    sta ptr0+1
    lda tmp1
    ldy tmp0+1
    jsr B3F_f071
    sta tmp0
    tay
    lda (ptr0),y
    tay
    lda $7f00,y
    cmp #$7f
    bcc B3F_efea
    lda #$00
B3F_efea:
    tay
    rts
B3F_efec:
    ldy $67ef
    lda $676c,y
    clc
    adc temp_x_hi
    tax
    ldy $67f6,x
    lda B3F_ed55,y
    sta ptr0
    lda B3F_ed65,y
    sta ptr0+1
    lda tmp0+1
    lsr a
    lsr a
    lsr a
    lsr a
    ora #$b0
    tay
    lda (ptr0),y
    tay
    ldx $7f00,y
    cpx #$7f
    bcc B3F_f01a
    lda #$00
    beq B3F_f023
B3F_f01a:
    lda $83d3,x
    and #$80
    beq B3F_f023
    lda #$30
B3F_f023:
    tay
    rts

LoadBankLower:
    pha
    lda lower_prg
    sta $0575
    ;BIT trick
    .byte $24
	BankSwapLower:
	pha
    lda #$86
    sta ram_BANKSELECT
    sta BANKSELECT
    pla
    sta lower_prg
    sta BANKDATA
    rts

B3F_f03b:
    lda #$86
    sta ram_BANKSELECT
    sta BANKSELECT
    lda $0575
    sta lower_prg
    sta BANKDATA
    rts

LoadBankUpper:
    pha
    lda upper_prg
    sta $0576
	;BIT trick
	.byte $24
	BankSwapUpper:
	pha
    lda #$87
    sta ram_BANKSELECT
    sta BANKSELECT
    pla
    sta upper_prg
    sta BANKDATA
    rts

B3F_f061:
    lda #$87
    sta ram_BANKSELECT
    sta BANKSELECT
    lda $0576
    sta upper_prg
    sta BANKDATA
    rts
B3F_f071:
    and #$f0
    sta UNK_ED+6
    tya
    lsr a
    lsr a
    lsr a
    lsr a
    ora UNK_ED+6
    rts
B3F_f07d:
    lda #$09
    sta $602f
    lda #$12
    sta $6030
    lda #$00
    jsr OBJ_New
    bmi B3F_f0a1
    tax
    ldy $614c,x
    lda #$cc
    sta $6380,y
    lda #$a8
    sta $63a0,y
    lda #$13
    sta $63c0,y
B3F_f0a1:
    rts

B3F_f0a2:
	jsr B3F_f241
    sta tmp0
    ldx curr_object_slot
    tya
    bmi B3F_f0b5
    lda #$00
    sta $6248,x
B3F_f0b1:
    clc
    lda tmp0
    rts
B3F_f0b5:
    bcs B3F_f0b1
    lda $6248,x
    bne B3F_f0b1
    lda tmp0
    cmp #$02
    bne B3F_f0c9
    lda $6116,x
    bpl B3F_f142
    bmi B3F_f146
B3F_f0c9:
    cmp #$05
    bne B3F_f0de
    lda $60e0,x
    clc
    adc $6104,x
    lda $60f2,x
    adc $6116,x
    bpl B3F_f142
    bmi B3F_f146
B3F_f0de:
    cmp #$06
    bne B3F_f102
    lda $60e0,x
    eor #$ff
    clc
    adc #$01
    tay
    lda $60f2,x
    eor #$ff
    adc #$00
    sta UNK_0
    tya
    clc
    adc $6104,x
    lda UNK_0
    adc $6116,x
    bpl B3F_f142
    bmi B3F_f146
B3F_f102:
    cmp #$03
    bne B3F_f11f
    lda $60f2,x
    asl a
    lda $60f2,x
    ror a
    tay
    lda $60e0,x
    ror a
    clc
    adc $6104,x
    tya
    adc $6116,x
    bpl B3F_f142
    bmi B3F_f146
B3F_f11f:
    lda $60e0,x
    eor #$ff
    clc
    adc #$01
    sta UNK_0
    lda $60f2,x
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
    adc $6104,x
    tya
    adc $6116,x
    bmi B3F_f146
B3F_f142:
    sec
    lda tmp0
    rts
B3F_f146:
    inc $6248,x
    clc
    lda tmp0
    rts


B3F_f14d:
    jsr B3F_f6fb
    lda B3F_f15e,y
    sta UNK_1
    lda B3F_f176,y
    pha
    lda B3F_f16a,y
    pha
    rts

B3F_f15e:
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$08,$07
B3F_f16a:
.lobytes B3F_f194-1,B3F_f1e8-1,B3F_f194-1,B3F_f194-1
.lobytes B3F_f194-1,B3F_f194-1,B3F_f194-1,B3F_f194-1
.lobytes B3F_f194-1,B3F_f194-1,B3F_f182-1,B3F_f189-1
B3F_f176:
.hibytes B3F_f194-1,B3F_f1e8-1,B3F_f194-1,B3F_f194-1
.hibytes B3F_f194-1,B3F_f194-1,B3F_f194-1,B3F_f194-1
.hibytes B3F_f194-1,B3F_f194-1,B3F_f182-1,B3F_f189-1

B3F_f182:
    lda tmp1
    sec
    sbc tmp0+1
    jmp B3F_f633

B3F_f189:
    lda tmp1
    eor #$0f
    sec
    sbc tmp0+1
    jmp B3F_f62e

B3F_f194:
    jsr B3F_f677
    lda B3F_f1a5,y
    sta UNK_1
    lda B3F_f1bd,y
    pha
    lda B3F_f1b1,y
    pha
    rts

B3F_f1a5:
.byte $00,$02,$00,$00,$00,$00,$00,$00
.byte $00,$00,$08,$07
B3F_f1b1:
.lobytes B3F_f1c9-1,B3F_f1ce-1,B3F_f1c9-1,B3F_f1c9-1
.lobytes B3F_f1c9-1,B3F_f1c9-1,B3F_f1c9-1,B3F_f1c9-1
.lobytes B3F_f1c9-1,B3F_f1c9-1,B3F_f1d6-1,B3F_f1df-1
B3F_f1bd:
.hibytes B3F_f1c9-1,B3F_f1ce-1,B3F_f1c9-1,B3F_f1c9-1
.hibytes B3F_f1c9-1,B3F_f1c9-1,B3F_f1c9-1,B3F_f1c9-1
.hibytes B3F_f1c9-1,B3F_f1c9-1,B3F_f1d6-1,B3F_f1df-1

B3F_f1c9:
    lda #$e0
    jmp B3F_f62a
B3F_f1ce:
    lda tmp1
    clc
    adc #$01
    jmp B3F_f633
B3F_f1d6:
    lda tmp0+1
    eor #$0f
    sec
    adc tmp1
    jmp B3F_f633
B3F_f1df:
    lda tmp0+1
    sec
    adc tmp1
    jmp B3F_f633

B3F_f1e8:
    jsr B3F_f649
    lda B3F_f1f9,y
    sta UNK_1
    lda B3F_f211,y
    pha
    lda B3F_f205,y
    pha
    rts

B3F_f1f9:
.byte $02,$02,$02,$02,$02,$02,$02,$02
.byte $02,$02,$08,$07

B3F_f205:
.lobytes B3F_f21d-1,B3F_f224-1,B3F_f21d-1,B3F_f21d-1
.lobytes B3F_f21d-1,B3F_f21d-1,B3F_f21d-1,B3F_f21d-1
.lobytes B3F_f21d-1,B3F_f21d-1,B3F_f229-1,B3F_f234-1
B3F_f211:
.hibytes B3F_f21d-1,B3F_f224-1,B3F_f21d-1,B3F_f21d-1
.hibytes B3F_f21d-1,B3F_f21d-1,B3F_f21d-1,B3F_f21d-1
.hibytes B3F_f21d-1,B3F_f21d-1,B3F_f229-1,B3F_f234-1

B3F_f21d:
    lda tmp1
    eor #$0f
    jmp B3F_f62e
B3F_f224:
    lda #$20
    jmp B3F_f62a
B3F_f229:
    lda tmp0+1
    clc
    adc #$10
    sec
    sbc tmp1
    jmp B3F_f62e

B3F_f234:
    lda tmp0+1
    eor #$0f
    clc
    adc #$10
    sec
    sbc tmp1
    jmp B3F_f62e

B3F_f241:
    jsr B3F_f6fb
    and #$01
    tax
    lda B3F_f255,y
    sta UNK_1
    lda B3F_f26d,y
    pha
    lda B3F_f261,y
    pha
    rts

B3F_f255:
.byte $00,$00,$00,$00,$05,$06,$03,$03
.byte $04,$04,$00,$00
B3F_f261:
.lobytes B3F_f2ab-1,$F32C,$F32C,$F32C
.lobytes B3F_f279-1,B3F_f283-1,B3F_f291-1,B3F_f28b-1
.lobytes B3F_f2a2-1,B3F_f29c-1,$F32C,$F32C
B3F_f26d:
.hibytes B3F_f2ab-1,$F32C,$F32C,$F32C
.hibytes B3F_f279-1,B3F_f283-1,B3F_f291-1,B3F_f28b-1
.hibytes B3F_f2a2-1,B3F_f29c-1,$F32C,$F32C

B3F_f279:
    lda tmp0+1
    eor #$0f
    sec
    sbc tmp1
    jmp B3F_f62e

B3F_f283:
    lda tmp0+1
    sec
    sbc tmp1
    jmp B3F_f62e

B3F_f28b:
    lda tmp0+1
    ora #$10
    bne B3F_f293
    B3F_f291:
    lda tmp0+1
    B3F_f293:
    lsr a
    eor #$0f
    sec
    sbc tmp1
    jmp B3F_f62e

B3F_f29c:
    lda tmp0+1
    ora #$10
    bne B3F_f2a4
    B3F_f2a2:
    lda tmp0+1
    B3F_f2a4:
    lsr a
    sec
    sbc tmp1
    jmp B3F_f62e

B3F_f2ab:
    jsr B3F_f649
    lda B3F_f2bc,y
    sta UNK_1
    lda B3F_f2d4,y
    pha
    lda B3F_f2c8,y
    pha
    rts

B3F_f2bc:
.byte $00,$02,$02,$02,$05,$06,$03,$03
.byte $04,$04,$02,$02
B3F_f2c8:
.lobytes $F2DF,$F2E4,$F2E4,$F2E4
.lobytes $F2EE,$F2FB,$F30C,$F306
.lobytes $F320,$F31A,$F2E4,$F2E4
B3F_f2d4:
.hibytes $F2DF,$F2E4,$F2E4,$F2E4
.hibytes $F2EE,$F2FB,$F30C,$F306
.hibytes $F320,$F31A,$F2E4,$F2E4

    lda #$20
    jmp B3F_f62a
    lda tmp1
    eor #$0f
    clc
    adc #$01
    jmp B3F_f62e
    lda tmp0+1
    eor #$0f
    clc
    adc #$10
    sec
    sbc tmp1
    jmp B3F_f62e
    lda tmp0+1
    clc
    adc #$10
    sec
    sbc tmp1
    jmp B3F_f62e
    lda tmp0+1
    ora #$10
    bne B3F_f30f
    lda tmp0+1
B3F_f30f:
    lsr a
    eor #$0f
    clc
    adc #$10
    sec
    sbc tmp1
    jmp B3F_f62e
    lda tmp0+1
    ora #$10
    bne B3F_f323
    lda tmp0+1
B3F_f323:
    lsr a
    clc
    adc #$10
    sec
    sbc tmp1
    jmp B3F_f62e
    jsr B3F_f677
    lda B3F_f33e,y
    sta UNK_1
    lda B3F_f356,y
    pha
    lda B3F_f34a,y
    pha
    rts

B3F_f33e:
.byte $02,$02,$02,$02,$05,$06,$03,$03
.byte $04,$04,$02,$02
B3F_f34a:
.lobytes $F361,$F366,$F366,$F366
.lobytes $F36B,$F373,$F383,$F37D
.lobytes $F392,$F38C,$F366,$F366
B3F_f356:
.hibytes $F361,$F366,$F366,$F366
.hibytes $F36B,$F373,$F383,$F37D
.hibytes $F392,$F38C,$F366,$F366

    lda tmp1
    jmp B3F_f633
    lda #$e0
    jmp B3F_f62a
    lda tmp0+1
    sec
    adc tmp1
    jmp B3F_f633
    lda tmp0+1
    eor #$0f
    sec
    adc tmp1
    jmp B3F_f633
    lda tmp0+1
    ora #$10
    bne B3F_f386
    lda tmp0+1
B3F_f386:
    lsr a
    sec
    adc tmp1
    jmp B3F_f633
    lda tmp0+1
    ora #$10
    bne B3F_f395
    lda tmp0+1
B3F_f395:
    lsr a
    eor #$0f
    sec
    adc tmp1
    jmp B3F_f633
B3F_f39e:
    jsr B3F_f6fb
    lda B3F_f3af,y
    sta UNK_1
    lda B3F_f3c7,y
    pha
    lda B3F_f3bb,y
    pha
    rts

B3F_f3af:
.byte $00,$00,$00,$00,$00,$06,$00,$00
.byte $04,$04,$00,$07
B3F_f3bb:
.lobytes $F3FD,$F46E,$F3FD,$F3FD
.lobytes $F3FD,$F3D2,$F3FD,$F3FD
.lobytes $F3E5,$F3EE,$F46E,$F3DA
B3F_f3c7:
.hibytes $F3FD,$F46E,$F3FD,$F3FD
.hibytes $F3FD,$F3D2,$F3FD,$F3FD
.hibytes $F3E5,$F3EE,$F46E,$F3DA

    lda tmp1
    sec
    sbc tmp0+1
    jmp B3F_f62e
    lda #$10
    sec
    sbc tmp0+1
    sec
    sbc tmp1
    jmp B3F_f62e
    lda tmp1
    cmp #$08
    bcc B3F_f3f7
    jmp B3F_f46f
    lda tmp1
    cmp #$08
    bcc B3F_f3fe
    and #$07
B3F_f3f7:
    asl a
    sec
    sbc tmp0+1
    jmp B3F_f62e
B3F_f3fe:
    jsr B3F_f6a0
    lda UNK_1
    bne B3F_f40a
    lda B3F_f413,y
    sta UNK_1
B3F_f40a:
    lda B3F_f42b,y
    pha
    lda B3F_f41f,y
    pha
    rts

B3F_f413:
.byte $00,$02,$00,$00,$00,$06,$00,$00
.byte $04,$04,$00,$07
B3F_f41f:
.lobytes $F436,$F43B,$F436,$F436
.lobytes $F436,$F443,$F436,$F436
.lobytes $F44D,$F455,$F43B,$F466
B3F_f42b:
.hibytes $F436,$F43B,$F436,$F436
.hibytes $F436,$F443,$F436,$F436
.hibytes $F44D,$F455,$F43B,$F466


B3F_f437:
    lda #$e0
    jmp B3F_f62a
B3F_f43c:
    lda tmp0+1
    clc
    adc #$01
    jmp B3F_f633
    lda tmp1
    eor #$0f
    sec
    adc tmp0+1
    jmp B3F_f633
    lda tmp1
    cmp #$08
    bcs B3F_f43c
    bcc B3F_f45e
    lda tmp1
    cmp #$08
    bcc B3F_f437
    and #$07
B3F_f45e:
    eor #$07
    asl a
    sec
    adc tmp0+1
    jmp B3F_f633
    lda tmp1
    sec
    adc tmp0+1
    jmp B3F_f633
B3F_f46f:
    jsr B3F_f6c8
    lda UNK_1
    bne B3F_f47b
    lda B3F_f484,y
    sta UNK_1
B3F_f47b:
    lda B3F_f49c,y
    pha
    lda B3F_f490,y
    pha
    rts

B3F_f484:
.byte $02,$02,$02,$02,$02,$06,$02,$02
.byte $04,$04,$02,$07
B3F_f490:
.lobytes $F4A7,$F4AE,$F4A7,$F4A7
.lobytes $F4A7,$F4B3,$F4A7,$F4A7
.lobytes $F4BD,$F4C5,$F4AE,$F4D7
B3F_f49c:
.hibytes $F4A7,$F4AE,$F4A7,$F4A7
.hibytes $F4A7,$F4B3,$F4A7,$F4A7
.hibytes $F4BD,$F4C5,$F4AE,$F4D7

B3F_f4a8:
    lda tmp0+1
    eor #$0f
    jmp B3F_f62e
B3F_f4af:
    lda #$20
    jmp B3F_f62a
    lda tmp0+1
    eor #$0f
    sec
    adc tmp1
    jmp B3F_f62e
    lda tmp1
    cmp #$08
    bcs B3F_f4af
    bcc B3F_f4ce
    lda tmp1
    cmp #$08
    bcc B3F_f4a8
    and #$07
B3F_f4ce:
    asl a
    clc
    adc #$10
    sec
    sbc tmp0+1
    jmp B3F_f62e
    lda tmp0+1
    clc
    adc tmp1
    eor #$1f
    jmp B3F_f62e
B3F_f4e2:
    jsr B3F_f6fb
    lda B3F_f4f3,y
    sta UNK_1
    lda B3F_f50b,y
    pha
    lda B3F_f4ff,y
    pha
    rts

B3F_f4f3:
	.byte $00,$00,$00,$00,$05,$00,$03,$03
	.byte $00,$00,$08,$00
B3F_f4ff:
	.lobytes $F543,$F5B9,$F543,$F543
	.lobytes $F516,$F543,$F52A,$F521
	.lobytes $F543,$F543,$F53B,$F5B9
B3F_f50b:
	.hibytes $F543,$F5B9,$F543,$F543
	.hibytes $F516,$F543,$F52A,$F521
	.hibytes $F543,$F543,$F53B,$F5B9

B3F_f517:
    lda #$0f
    sec
    sbc tmp1
    sec
    sbc tmp0+1
    jmp B3F_f62e
    lda tmp1
    cmp #$08
    bcc B3F_f533
    jmp B3F_f5ba
    lda tmp1
    cmp #$08
    bcc B3F_f544
    and #$07
B3F_f533:
    eor #$07
    asl a
    sec
    sbc tmp0+1
    jmp B3F_f62e
    lda tmp1
    sec
    sbc tmp0+1
    jmp B3F_f62e
B3F_f544:
    jsr B3F_f6c8
    lda UNK_1
    bne B3F_f550
    lda B3F_f55c,y
    sta UNK_1
B3F_f550:
    lda B3F_f574,y
    pha
    lda B3F_f568,y
    pha
    rts

B3F_f559:
  	jmp B3F_f62e

B3F_f55c:
.byte $00,$02,$00,$00,$05,$00,$03,$03
.byte $00,$00,$08,$00
B3F_f568:
.lobytes $F57F,$F584,$F57F,$F57F
.lobytes $F58C,$F57F,$F59E,$F596
.lobytes $F57F,$F57F,$F5AF,$F584
B3F_f574:
.hibytes $F57F,$F584,$F57F,$F57F
.hibytes $F58C,$F57F,$F59E,$F596
.hibytes $F57F,$F57F,$F5AF,$F584

B3F_f580:
    lda #$20
    jmp B3F_f62a
B3F_f585:
    lda #$10
    sec
    sbc tmp0+1
    jmp B3F_f62e
    lda tmp0+1
    clc
    adc tmp1
    eor #$1f
    jmp B3F_f62e
    lda tmp1
    cmp #$08
    bcs B3F_f585
    bcc B3F_f5a7
    lda tmp1
    cmp #$08
    bcc B3F_f580
    and #$07
B3F_f5a7:
    asl a
    sec
    adc tmp0+1
    eor #$1f
    jmp B3F_f62e
    lda tmp0+1
    eor #$0f
    sec
    adc tmp1
    jmp B3F_f62e
B3F_f5ba:
    jsr B3F_f6a0
    lda UNK_1
    bne B3F_f5c6
    lda B3F_f5d2,y
    sta UNK_1
B3F_f5c6:
    lda B3F_f5ea,y
    pha
    lda B3F_f5de,y
    pha
    rts
B3F_f5cf:
  	jmp B3F_f62e

B3F_f5d2:
.byte $02,$02,$02,$02,$05,$02,$03,$03
.byte $02,$02,$08,$02
B3F_f5de:
.lobytes $F5F5,$F5FA,$F5F5,$F5F5
.lobytes $F5FF,$F5F5,$F60F,$F607
.lobytes $F5F5,$F5F5,$F61E,$F5FA
B3F_f5ea:
.hibytes $F5F5,$F5FA,$F5F5,$F5F5
.hibytes $F5FF,$F5F5,$F60F,$F607
.hibytes $F5F5,$F5F5,$F61E,$F5FA

B3F_f5f6:
    lda tmp0+1
    jmp B3F_f633
B3F_f5fb:
    lda #$e0
    jmp B3F_f62a
    lda tmp1
    sec
    adc tmp1
    jmp B3F_f633
    lda tmp1
    cmp #$08
    bcs B3F_f5fb
    bcc B3F_f618
    lda tmp1
    cmp #$08
    bcc B3F_f5f6
    and #$07
B3F_f618:
    asl a
    sec
    adc tmp0+1
    jmp B3F_f633
    lda #$10
    sec
    sbc tmp1
    clc
    adc tmp0+1
    jmp B3F_f633
B3F_f62a:
    ldx #$00
    sec
	;BIT trick
	.byte $24
	B3F_f62e:
	.byte $18
    tay
    jmp B3F_f638
B3F_f633:
    clc
    eor #$ff
    tay
    iny
B3F_f638:
    lda #$00
    sta $057a
    sty $0579
    tya
    bpl B3F_f646
    dec $057a
B3F_f646:
    lda UNK_1
    rts
B3F_f649:
    lda UNK_0
    clc
    adc #$10
    cmp #$c0
    bcc B3F_f670
    sbc #$c0
    pha
    lda tmp0
    clc
    adc $67ee
    cmp $67ed
    bcs B3F_f674
    tay
    lda $67f6,y
    tay
    lda B3F_ed55,y
    sta ptr0
    lda B3F_ed65,y
    sta ptr0+1
    pla
B3F_f670:
    tay
    jmp B3F_f756
B3F_f674:
    jmp B3F_f6f1
B3F_f677:
    lda UNK_0
    sec
    sbc #$10
    bcs B3F_f69c
    adc #$c0
    pha
    lda tmp0
    sec
    sbc $67ee
    cmp $67ed
    bcs B3F_f6f1
    tay
    lda $67f6,y
    tay
    lda B3F_ed55,y
    sta ptr0
    lda B3F_ed65,y
    sta ptr0+1
    pla
B3F_f69c:
    tay
    jmp B3F_f756
B3F_f6a0:
    ldy UNK_0
    dey
    tya
    and #$0f
    cmp #$0f
    bne B3F_f6c5
    ldx temp_x_hi
    dex
    bmi B3F_f6f6
    ldx tmp0
    dex
    lda $67f6,x
    tax
    lda B3F_ed55,x
    sta ptr0
    lda B3F_ed65,x
    sta ptr0+1
    tya
    clc
    adc #$10
    tay
B3F_f6c5:
    jmp B3F_f756
B3F_f6c8:
    ldy UNK_0
    iny
    tya
    and #$0f
    bne B3F_f6ee
    ldx temp_x_hi
    inx
    cpx $67ee
    bcs B3F_f6f6
    ldx tmp0
    inx
    lda $67f6,x
    tax
    lda B3F_ed55,x
    sta ptr0
    lda B3F_ed65,x
    sta ptr0+1
    tya
    sec
    sbc #$10
    tay
B3F_f6ee:
    jmp B3F_f756
B3F_f6f1:
    pla
    lda #$00
    tay
    rts
B3F_f6f6:
    lda $78d1
    tay
    rts
B3F_f6fb:
    stx tmp0+1
    ldx temp_y_hi
    lda temp_x_hi
    jsr B3F_ecf1
    sta tmp0
    sty tmp1
    tax
    lda $051e
    cmp #$02
    bcc B3F_f716
    txa
    clc
    adc $67ee
    tax
B3F_f716:
    ldy $67f6,x
    lda B3F_ed55,y
    sta ptr0
    lda B3F_ed65,y
    sta ptr0+1
    lda tmp1
    ldy tmp0+1
    jsr B3F_f071
    sta UNK_0
    lda tmp1
    and #$0f
    sta tmp1
    tya
    and #$0f
    sta tmp0+1
    lda temp_x_hi
    bmi B3F_f740
    cmp $67ee
    bcc B3F_f74b
B3F_f740:
    ldx #$00
    ldy $78d1
    rts
B3F_f746:
    ldx #$00
    ldy #$00
    rts
B3F_f74b:
    lda tmp0
    bmi B3F_f746
    cmp $67ed
    bcs B3F_f746
    ldy UNK_0
B3F_f756:
    lda ptr0+1
    cmp #$68
    bcc B3F_f773
    cmp #$74
    bcs B3F_f773
    lda (ptr0),y
    tay
    lda $7f00,y
    cmp #$7f
    bcs B3F_f773
    tay
    lda $f777,y
    pha
    lsr a
    tay
    pla
    rts
B3F_f773:
    lda #$00
    tay
    rts
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$02,$04,$06
.byte $08,$0A,$0C,$0E,$12,$10,$14,$16
.byte $02,$02,$02,$02,$02,$02,$02,$02
.byte $02,$02,$04,$00,$00,$02,$00,$00
.byte $00,$00,$02,$02,$02,$02,$02,$02
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$02,$04,$06
.byte $08,$0A,$0C,$0E,$12,$10,$14,$16
.byte $02,$02,$02,$02,$02,$02,$02,$02
.byte $02,$02,$04,$00,$00,$02,$00,$00
.byte $00,$00,$02,$02,$02,$02,$02,$02
.byte $03,$03,$03,$09,$0B,$0D,$0F,$13
.byte $11,$15,$17,$03,$03,$03,$03,$03
.byte $03,$03,$03,$03,$03,$05,$00,$00
.byte $00,$02,$02,$02,$02,$02,$02
B3F_f7f6:
    lda $89ed,y
    jsr BankSwapUpper
    jsr Decompress
    lda #$38
    jmp BankSwapUpper
B3F_f804:
    lda lower_prg
    pha
    ldx #$86
    stx ram_BANKSELECT
    lda #$1d
    sta lower_prg
    stx BANKSELECT
    sta BANKDATA
    jsr $8000
    ldx #$86
    stx ram_BANKSELECT
    pla
    sta lower_prg
    stx BANKSELECT
    sta BANKDATA
    rts

PlaySoundEffect:
    sta tmp0
    lda $6601
    bne B3F_f858
    txa
    pha
    tya
    pha
    lda lower_prg
    pha
    ldx #$86
    stx ram_BANKSELECT
    lda #$1d
    sta lower_prg
    stx BANKSELECT
    sta BANKDATA
    lda tmp0
    jsr $8028
    ldx #$86
    stx ram_BANKSELECT
    pla
    sta lower_prg
    stx BANKSELECT
    sta BANKDATA
    pla
    tay
    pla
    tax
B3F_f858:
    rts
B3F_f859:
    sta $0783
    bit $05fb
    bvc B3F_f862
    rts
B3F_f862:
    sta tmp0
    txa
    pha
    tya
    pha
    lda lower_prg
    pha
    lda upper_prg
    pha
    ldx #$86
    stx ram_BANKSELECT
    lda #.BANK(Music_Play)
    sta lower_prg
    stx BANKSELECT
    sta BANKDATA
    lda tmp0
    jsr Music_Play
    ldx #$87
    stx ram_BANKSELECT
    pla
    sta upper_prg
    stx BANKSELECT
    sta BANKDATA
    ldx #$86
    stx ram_BANKSELECT
    pla
    sta lower_prg
    stx BANKSELECT
    sta BANKDATA
    pla
    tay
    pla
    tax
    rts
B3F_f8a0:
    lda ram_BANKSELECT
    pha
    lda lower_prg
    pha
    ldx #$86
    stx ram_BANKSELECT
    lda #$1d
    sta lower_prg
    stx BANKSELECT
    sta BANKDATA
    lda upper_prg
    pha
    ldx #$87
    stx ram_BANKSELECT
    lda $0600
    sta upper_prg
    stx BANKSELECT
    sta BANKDATA
    jsr $8153
    ldx #$87
    stx ram_BANKSELECT
    pla
    sta upper_prg
    stx BANKSELECT
    sta BANKDATA
    ldx #$86
    stx ram_BANKSELECT
    pla
    sta lower_prg
    stx BANKSELECT
    sta BANKDATA
    pla
    sta ram_BANKSELECT
    rts
    tax
    rts
    lda ram_BANKSELECT
    pha
    lda lower_prg
    pha
    ldx #$86
    stx ram_BANKSELECT
    lda #$1d
    sta lower_prg
    stx BANKSELECT
    sta BANKDATA
    lda upper_prg
    pha
    ldx #$87
    stx ram_BANKSELECT
    lda $0600
    sta upper_prg
    stx BANKSELECT
    sta BANKDATA
    jsr $8153
    ldx #$87
    stx ram_BANKSELECT
    pla
    sta upper_prg
    stx BANKSELECT
    sta BANKDATA
    ldx #$86
    stx ram_BANKSELECT
    pla
    sta lower_prg
    stx BANKSELECT
    sta BANKDATA
    pla
    sta ram_BANKSELECT
    rts

B3F_f930:
.byte $A9,$EE,$E2,$79,$AD,$F6,$E3,$F7
.byte $6E,$D7,$AA,$AA,$EA,$E6,$AA,$AE
.byte $EA,$98,$48,$A0,$09

B3F_f945:
  	dey
    bne B3F_f945
    lda #$85
    sta BANKSELECT
    lda status_bar_text_chr
    sta BANKDATA
    lda #$84
    sta BANKSELECT
    lda status_bar_background_chr
    sta BANKDATA
    ldy #$0a
    lda #$c0
    sty PPUADDR
    sta PPUADDR
    lda #$00
    sta PPUSCROLL
    sta PPUSCROLL
    lda #$82
    sta BANKSELECT
    lda status_bar_health_chr
    sta BANKDATA
    lda #$83
    sta BANKSELECT
    lda status_bar_copy_chr
    sta BANKDATA
    lda $058a
    bne B3F_f9e4
    lda kirby_health
    bpl B3F_f98e
    lda #$00
B3F_f98e:
    lsr a
    lsr a
    lsr a
    cmp #$03
    bcc B3F_f997
    lda #$03
B3F_f997:
    tay
    lda $0589
    clc
    adc #$01
    cmp $fb2b,y
    bcc B3F_f9a8
    lda #$00
    inc $0588
B3F_f9a8:
    sta $0589
    lda $0588
    and #$03
    clc
    adc #$7a
    sta status_bar_health_chr
    lda $059e
    beq B3F_f9e4
    ldy $059f
    bne B3F_f9ce
    lda $603d
    and #$10
    beq B3F_f9c8
    lda #$01
B3F_f9c8:
    ora #$78
    sta chr_banks+5
    bne B3F_f9e1
B3F_f9ce:
    tya
    lsr a
    lsr a
    and #$01
    ora #$78
    sta chr_banks+5
    dey
    cpy #$f7
    bne B3F_f9de
    ldy #$ff
B3F_f9de:
    sty $059f
B3F_f9e1:
    jmp B3F_fb22
B3F_f9e4:
    lda $67f5
    beq B3F_fa09
    lda $058d
    clc
    adc #$01
    cmp $67f5
    bcc B3F_fa06
    lda $058c
    adc #$00
    and #$03
    sta $058c
    clc
    adc $058e
    sta chr_banks+5
    lda #$00
B3F_fa06:
    sta $058d
B3F_fa09:
    lda $0181
    cmp #$02
    beq B3F_fa17
    cmp #$03
    beq B3F_fa17
    jmp B3F_fb22
B3F_fa17:
    txa
    pha
    ldx #$07
    lda $0181
    cmp #$02
    bne B3F_fa34
B3F_fa22:
    txa
    clc
    adc UNK_51+1,x
    sta UNK_51+1,x
    dex
    bne B3F_fa22
    lda UNK_51+2
    bne B3F_fa47
    inc UNK_51+9
    jmp B3F_fa47
B3F_fa34:
    txa
    eor #$ff
    sec
    adc UNK_51+1,x
    sta UNK_51+1,x
    dex
    bne B3F_fa34
    lda UNK_51+2
    cmp #$ff
    bne B3F_fa47
    dec UNK_51+9
B3F_fa47:
    lda UNK_51+2
    sta UNK_51+1
    lda UNK_51+9
    lsr a
    ror UNK_51+1
    ldy UNK_51+1
    sty UNK_51
    lsr a
    ror UNK_51
    ldx #$08
B3F_fa59:
    lda camera_y
    and #$fe
    cmp $fb2f,x
    lda camera_y+1
    sbc $fb39,x
    bcs B3F_fa6a
    dex
    bpl B3F_fa59
B3F_fa6a:
    lda UNK_51,x
    sta UNK_51+15
    inx
    stx file_select_irq_line
    bne B3F_fa75
    stx UNK_51+15
B3F_fa75:
    lda #$00
    sta UNK_66
B3F_fa79:
    lda $fb2f,x
    sec
    sbc camera_y
    tay
    lda $fb39,x
    sbc camera_y+1
    bne B3F_fa90
    tya
    ora #$01
    cmp #$ad
    bcs B3F_fa90
    inc UNK_66
B3F_fa90:
    inx
    cpx #$09
    bcc B3F_fa79
    lda UNK_66
    beq B3F_fb06
    ldx #$00
    ldy file_select_irq_line
B3F_fa9d:
    lda $fb2f,y
    sec
    sbc camera_y
    ora #$01
    sta UNK_51+10,x
    lda UNK_51,y
    sta UNK_51+16,x
    iny
    inx
    cpx UNK_66
    bcc B3F_fa9d
    ldy UNK_51+9,x
    sty UNK_51+13
    ldy UNK_51+15,x
    sty UNK_51+19
B3F_faba:
    cpx #$04
    bcs B3F_fac5
    lda UNK_51+14,x
    sta UNK_51+15,x
    inx
    bne B3F_faba
B3F_fac5:
    dex
B3F_fac6:
    cpx UNK_66
    bcc B3F_fad7
    lda UNK_51+10,x
    sbc #$02
    sta UNK_51+10,x
    sbc #$06
    sta UNK_51+9,x
    dex
    bne B3F_fac6
B3F_fad7:
    lda UNK_51+11
    and #$fe
    sta UNK_51+11
    lda UNK_51+13
    and #$fe
    sta UNK_51+13
    lda #$ad
    sta UNK_51+14
    ldx #$04
B3F_fae9:
    lda UNK_51+10,x
    sec
    sbc UNK_51+9,x
    sta UNK_51+10,x
    dex
    bne B3F_fae9
    lda #$00
    sta UNK_29+7
    lda #$e0
    sta UNK_29+8
    lda #$86
    sta irq_code_pointer
    lda #$fb
    sta irq_code_pointer+1
    jmp B3F_fb20
B3F_fb06:
    lda #$01
    sta UNK_29+7
    lda #$20
    sta UNK_29+8
    lda ram_PPUMASK
    and #$ef
    sta UNK_29+2
    lda #$b1
    sta UNK_51+10
    lda #$40
    sta irq_code_pointer
    lda #$f9
    sta irq_code_pointer+1
B3F_fb20:
    pla
    tax
B3F_fb22:
    pla
    tay
B3F_fb24:
    lda ram_BANKSELECT
    sta BANKSELECT
    pla
    rti

B3F_fb2b:
.byte $05,$08,$0B,$10,$CE,$FF,$2F,$5E
.byte $AD,$0E,$7D,$FC,$80,$C2,$00,$00
.byte $01,$01,$01,$02,$02,$02,$03,$03

B3F_fb43:
    nop
    tya
    pha
    ldy #$0e
B3F_fb48:
    dey
    bne B3F_fb48
    ldy #$08
    lda #$00
    sty PPUADDR
    sta PPUADDR
    sta PPUSCROLL
    sta PPUSCROLL
    lda #$82
    sta BANKSELECT
    lda #$dd
    sta BANKDATA
    lda #$83
    sta BANKSELECT
    lda #$de
    sta BANKDATA
    lda #$84
    sta BANKSELECT
    lda #$dc
    sta BANKDATA
    lda #$85
    sta BANKSELECT
    lda #$dc
    sta BANKDATA
    jmp B3F_fb22
    txa
    pha
    ldx file_select_irq_line
    lda UNK_51+10,x
    sta IRQLATCH
    sta IRQRELOAD
    sta IRQENABLE
    lda UNK_51+15,x
    sta PPUSCROLL
    sta PPUSCROLL
    inx
    cpx #$05
    bcc B3F_fbb8
    lda #$01
    sta UNK_29+7
    lda #$20
    sta UNK_29+8
    lda ram_PPUMASK
    and #$ef
    sta UNK_29+2
    lda #$40
    sta irq_code_pointer
    lda #$f9
    sta irq_code_pointer+1
B3F_fbb8:
    stx file_select_irq_line
    pla
    tax
    jmp B3F_fb24
B3F_fbbf:
    nop
    tya
    pha
    ldy #$0f
B3F_fbc4:
    dey
    bne B3F_fbc4
    lda #$00
    sta PPUADDR
    sta PPUADDR
    sta PPUSCROLL
    sta PPUSCROLL
    lda #$82
    sta BANKSELECT
    lda #$da
    sta BANKDATA
    lda #$83
    sta BANKSELECT
    lda #$db
    sta BANKDATA
    lda #$84
    sta BANKSELECT
    lda #$3f
    sta BANKDATA
    lda #$85
    sta BANKSELECT
    lda #$da
    sta BANKDATA
    jmp B3F_fb22

B3F_fc00:
kick_Start:
.byte $69,$AA,$AA,$AA,$AA,$AA,$AA,$AA
.byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
.byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$F0
.byte $AA,$AA,$AA,$AA,$EA,$98,$AA,$AA
.byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
.byte $AA,$AA,$AA,$AA,$0A,$CE,$07,$FE
.byte $70,$70,$38,$F0,$E0,$C1,$1F,$9F
.byte $FF,$FB,$E3,$1D,$1E,$E1,$08,$F8
.byte $03,$E0,$03,$00,$00,$00,$C4,$AA
.byte $85,$FE,$FF,$EF,$FF,$FF,$BF,$FF
.byte $E9,$57,$EB,$73,$A5,$5A,$A5,$4A
.byte $A5,$00,$00,$00,$00,$00,$02,$40
.byte $28,$50,$A2,$54,$AB,$54,$AB,$52
.byte $AB,$52,$AD,$1F,$FD,$F8,$EF,$FF
.byte $FF,$FF,$FF,$FF,$6E,$DF,$AA,$95
.byte $AA,$55,$AA,$55,$AA,$56,$AA,$56
.byte $A9,$54,$A1,$00,$08,$00,$00,$00
.byte $00,$00,$02,$A5,$2A,$B5,$2A,$D5
.byte $2A,$D5,$AA,$D4,$AA,$54,$AB,$55
.byte $AB,$5E,$BF,$FE,$FF,$3F,$FF,$FF
.byte $5F,$FD,$CB,$AF,$DE,$95,$6A,$95
.byte $AA,$95,$AA,$55,$AA,$55,$AA,$54
.byte $69,$95,$B6,$AA,$65,$D5,$6A,$AA
.byte $5A,$EA,$58,$55,$69,$6A,$A9,$96
kick_End:

snare_Start:
.byte $00,$68,$68,$00,$68,$68,$68,$68
.byte $73,$00,$68,$68,$00,$68,$68,$68
.byte $68,$68,$68,$68,$68,$68,$68,$00
.byte $68,$68,$00,$68,$68,$73,$00,$68
.byte $68,$00,$68,$68,$00,$68,$68,$00
.byte $68,$68,$00,$68,$68,$00,$68,$FF
.byte $41,$10,$00,$21,$92,$20,$00,$F4
.byte $38,$56,$5D,$EB,$F9,$9D,$3C,$BF
.byte $ED,$E7,$D7,$AA,$6C,$59,$16,$A2
.byte $00,$61,$83,$F0,$72,$3A,$0B,$81
.byte $45,$41,$09,$DA,$F1,$FD,$FF,$FF
.byte $5E,$AF,$C4,$4B,$D3,$C9,$8A,$82
.byte $24,$89,$28,$06,$02,$47,$55,$E1
.byte $3D,$AE,$EF,$BC,$F4,$52,$D5,$55
.byte $BD,$BC,$7A,$1E,$57,$51,$0A,$25
.byte $29,$A8,$A8,$38,$69,$D3,$88,$AA
.byte $18,$78,$6C,$BA,$DE,$7D,$ED,$FB
.byte $43,$E7,$34,$4C,$2C,$25,$AD,$92
.byte $A4,$51,$A5,$C8,$62,$E2,$06,$8D
.byte $C7,$F1,$AD,$65,$37,$B4,$AC,$5A
.byte $4D,$9F,$3E,$6D,$3C,$A5,$B2,$24
.byte $A9,$A2,$92,$86,$A9,$44,$45,$EE
.byte $2C,$5E,$AA,$2D,$AE,$53,$9F,$4A
.byte $9D,$3D,$4E,$8D,$3B,$8A,$A9,$E5
.byte $C8,$B2,$2C,$34,$52,$D4,$59,$B1
.byte $D2,$8A,$55,$C3,$5B,$A9,$55,$8B
.byte $76,$7C,$79,$6C,$2B,$CE,$F2,$64
.byte $31,$8E,$64,$45,$72,$64,$D1,$92
.byte $E3,$54,$AD,$5A,$35,$55,$D7,$58
.byte $1E,$1D,$55,$4E,$1D,$57,$56,$55
.byte $CB,$AA,$AA,$2A,$69,$A5,$4A,$AA
.byte $AA,$4A,$4D,$6A,$31,$4D,$D3,$A9
.byte $6A,$AD,$7A,$5C,$65,$AB,$AA,$AC
.byte $CA,$72,$AA,$4A,$B5,$D0,$8A,$95
.byte $AC,$54,$95,$6C,$D9,$52,$5B,$A5
.byte $AA,$D5,$4A,$B5,$2C,$4B,$B6,$D4
.byte $34,$9D,$95,$56,$55,$55,$55,$55
.byte $9A,$2A,$15,$A7,$AA,$52,$2D,$55
.byte $69,$95,$B6,$AA,$65,$D5,$6A,$AA
.byte $5A,$EA,$58,$55,$69,$6A,$A9,$96
.byte $D2,$34,$95,$53,$A9,$A9,$2A,$35
.byte $55,$D3,$AA,$6A,$55,$B5,$E2,$AA
.byte $34,$B5,$9C,$C6,$B1,$95,$AA,$A9
.byte $AA,$B4,$52,$55,$8B,$A9,$9A,$A6
.byte $AA,$9A,$5A,$6A,$A5,$56,$56,$65
.byte $55,$55,$AD,$B4,$B2,$AA,$54,$55
.byte $2D,$D5,$AA,$AC,$AA,$52,$2B,$4B
.byte $95,$AA,$AA,$B2,$2A,$AB,$AA,$6A
.byte $A5,$55,$D5,$B4,$AA,$AA,$AA,$A9
.byte $AA,$AA,$52,$55,$59,$A9,$A5,$AA
.byte $56,$5A,$A5,$95,$55,$55,$55,$55
.byte $55,$55,$55,$55,$55,$55,$55,$55
.byte $55,$55,$55,$55,$55,$55,$53,$35
.byte $55,$D5,$54,$55,$55,$55,$A9,$A5
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $69,$AA,$AA,$AA,$AA,$AA,$AA,$AA
.byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
snare_End:

.byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$F0
.byte $AA,$AA,$AA,$AA,$EA,$98,$AA,$AA
.byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
.byte $AA,$AA,$AA,$AA,$FA,$2B,$21,$04
.byte $B8,$FF,$7F,$EB,$1F,$00,$00,$00
.byte $FF,$FF,$FF,$07,$00,$00,$80,$FF
.byte $FF,$00,$00,$60,$FF,$FF,$FF,$1F
.byte $00,$00,$F0,$FF,$FF,$00,$00,$80
.byte $FE,$FF,$FF,$00,$00,$FC,$FF,$7F
.byte $01,$00,$00,$A0,$FF,$FF,$1F,$00
.byte $80,$FF,$FF,$3F,$00,$00,$80,$FF
.byte $FF,$09,$00,$40,$FF,$FF,$FF,$BF
.byte $00,$00,$00,$FF,$6F,$00,$00,$E0
.byte $FF,$FF,$FF,$01,$00,$E8,$BF,$DF
.byte $29,$00,$00,$A0,$FF,$FF,$2F,$00
.byte $40,$FF,$FF,$FF,$01,$00,$00,$D0
.byte $FF,$3F,$05,$44,$AE,$BD,$77,$AB
.byte $00,$00,$A9,$FE,$5F,$2B,$20,$6A
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $69,$AA,$AA,$AA,$AA,$AA,$AA,$AA
.byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
.byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$F0
.byte $AA,$AA,$AA,$AA,$EA,$98,$AA,$AA
.byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
.byte $AA,$AA,$AA,$AA,$FA,$07,$F0,$1F
.byte $C0,$3F,$80,$FF,$00,$FF,$01,$FC
.byte $03,$F0,$0F,$E0,$3F,$80,$7F,$00
.byte $FF,$01,$FC,$07,$F0,$1F,$C0,$7F
.byte $80,$FF,$00,$FC,$03,$F8,$1F,$E0
.byte $3F,$00,$FF,$00,$FE,$07,$F8,$0F
.byte $C0,$3F,$80,$FF,$01,$FE,$03,$F8
.byte $0F,$E0,$3F,$80,$FF,$00,$FE,$03
.byte $F8,$0F,$E0,$3F,$80,$FF,$00,$FE
.byte $03,$F8,$07,$E0,$7F,$C0,$7F,$00
.byte $FC,$03,$FC,$0F,$F0,$1F,$80,$7F
.byte $00,$FF,$03,$FC,$07,$E0,$3F,$C0
.byte $FF,$00,$FE,$00,$FA,$07,$F8,$0F
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$DD,$FE,$F7,$FF,$77,$FF,$BF
.byte $FF,$DF,$FF,$FF,$7F,$FD,$FF,$F5

Reset:
    sei

    ;set bank 0
    lda #0
    sta BANKSELECT

    jmp B3E_C000

.byte $f7

.addr NMI ;nmi
.addr Reset ;reset
.addr $0029 ;irq

;^.*\[.{0,20}