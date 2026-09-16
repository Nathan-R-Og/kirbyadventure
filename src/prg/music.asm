;actually starts at $692, probably
.define music_volume_envelopes UNK_686+11

;PAT_ is for patterns
;MUS_ is for main tracks.
;whether or not they hold the same commands is debatable
;(they probably do)
;i highly doubt MUS_PLAY can be in patterns.
.macro MUS_UNK_F0 arg1
    .byte $F0, arg1
.endmacro

.macro MUS_TEMPO arg1
    .byte $F2, arg1
.endmacro

.macro MUS_UNK_F4 arg1
    .byte $F4, arg1
.endmacro

.macro MUS_LOOP pointer
    .byte $F8
    .addr pointer
.endmacro

.macro MUS_PLAY pointer
    .byte $FA
    .addr pointer
.endmacro

.macro PAT_SAMPLE start, end
    .byte $e0
    .byte dmc_sampleaddr start
    .byte dmc_samplelen start, end
.endmacro

.define PAT_END .byte $FB

.macro PAT_REPEAT count
    .byte $FC, count
.endmacro

.define PAT_ENDREPEAT .byte $FD

.macro PAT_SETTINGS arg1
    .byte $F0, arg1
.endmacro

.macro PAT_ENV1 arg1
    .byte $F6, arg1
.endmacro

.macro PAT_TRANSPOSE arg1
    .byte $F5, arg1
.endmacro

.macro PAT_ENV3 arg1
    .byte $F4, arg1
.endmacro

.macro PAT_UNKF1 arg1
    .byte $F1, arg1
.endmacro

.define PulseNote(length, type, pitch) .byte (length << 5) | (type << 4) | pitch

.define PULSE_CUSTOM 6
.define PULSE_HALF 5
.define PULSE_DQUARTER 4
.define PULSE_QUARTER 3
.define PULSE_DEIGHTH 2
.define PULSE_EIGHTH 1
.define PULSE_SIXTEENTH 0

.segment "PRG1D": absolute
B1D_8000:
    ldx #$00
    stx DMC_RAW
    dex
    stx UNK_601+1
    stx UNK_601+2
    stx UNK_686+251
    ldx #$0f
    stx SND_CHN
    ldx #$0f
    lda #$0e
B1D_8018:
    sta music_ram_4000, x
    dex
    bpl B1D_8018
    lda #$ff
    sta UNK_686+253
    jsr Music_Play
    lda #$ff
B1D_8028:
    tax
    bpl B1D_802e
    jmp B1D_809e
B1D_802e:
    lda UNK_601+3
    beq B1D_8055
    and B1D_8aef, x
    beq B1D_8055
    ldy #$04
B1D_803a:
    lda UNK_686+81, y
    and B1D_8aef, x
    beq B1D_804f
    lda UNK_686+86, y
    cmp B1D_8b47, x
    bcc B1D_8054
    lda #$00
    sta music_timer_0641, y
B1D_804f:
    dey
    bpl B1D_803a
    bmi B1D_8055
B1D_8054:
    rts
B1D_8055:
    stx UNK_686+252
    lda B1D_8aef, x
    sta UNK_601+4
    lda B1D_8b47, x
    sta UNK_2
    lda B1D_8a3f, x
    sta ptr1
    lda B1D_8a97, x
    sta ptr1+1
    ldy #$00
    lda (ptr1), y
    sta UNK_1
    ldx #$04
B1D_8075:
    lda music_timer_0641, x
    bne B1D_808c
    jsr B1D_80cc
    php
    lda UNK_2
    sta UNK_686+86, x
    lda UNK_601+4
    sta UNK_686+81, x
    plp
    beq B1D_808f
B1D_808c:
    dex
    bpl B1D_8075
B1D_808f:
    lda UNK_686+81
    ldx #$04
B1D_8094:
    ora UNK_686+81, x
    dex
    bne B1D_8094
    sta UNK_601+3
    rts
B1D_809e:
    ldx #$04
B1D_80a0:
    lda #$00
    sta music_timer_0641, x
    sta UNK_686+81, x
    lda #$ff
    sta UNK_686+86, x
    dex
    bpl B1D_80a0
    ldx #$0f
B1D_80b2:
    lda B1D_80bc, x
    sta UNK_601+6, x
    dex
    bpl B1D_80b2
    rts
B1D_80bc:
.byte $30,$7F,$00,$FF,$30,$7F,$00,$FF
.byte $00,$00,$00,$00,$30,$00,$00,$FF
B1D_80cc:
    lda #$27
    sta UNK_686+1, x
    lda #$00
    sta UNK_686+11, x
    sta UNK_686+21, x
    sta UNK_686+31, x
    sta UNK_686+41, x
    sta UNK_686+51, x
    lda B1D_8724, x
    sta UNK_686+61, x
    iny
    lda (ptr1), y
    sta music_data_ptr_lo_064B, x
    iny
    lda (ptr1), y
    sta music_data_ptr_hi_0655, x
    iny
    lda (ptr1), y
    sta UNK_637, x
    lda #$01
    sta music_timer_0641, x
    sta music_timer_067D, x
    dec UNK_1
    rts

Music_Play:
    pha
    ldx #$04
B1D_8108:
    lda #$00
    sta music_timer_0641+5, x
    dex
    bpl B1D_8108
    ldx #$0f
B1D_8112:
    lda B1D_80bc, x
    sta UNK_601+22, x
    dex
    bpl B1D_8112
    pla
    bmi B1D_8152
    tax
    lda B1D_8991, x
    sta ptr1
    lda B1D_89cb, x
    sta ptr1+1
    ldy #$87
    sty ram_BANKSELECT
    lda B1D_8a05, x
    sta music_upper_prg
    sta upper_prg
    sty BANKSELECT
    sta BANKDATA
    ldy #$00
    lda (ptr1), y
    sta UNK_1
    ldx #$09
B1D_8143:
    lda music_timer_0641, x
    bne B1D_814d
    jsr B1D_80cc
    beq B1D_8152
B1D_814d:
    dex
    cpx #$04
    bne B1D_8143
B1D_8152:
    rts
B1D_8153:
    lda #$c0
    sta FRAME_COUNTER
    ldx #$09
B1D_815a:
    lda music_timer_0641, x
    beq B1D_81a4
    lda B1D_8710, x
    sta UNK_22+2
    lda B1D_871a, x
    sta UNK_22+3
    dec music_timer_0641, x
    bne B1D_8185
    lda music_data_ptr_lo_064B, x
    sta UNK_22
    lda music_data_ptr_hi_0655, x
    sta UNK_22+1
    jsr B1D_824e
    lda UNK_22
    sta music_data_ptr_lo_064B, x
    lda UNK_22+1
    sta music_data_ptr_hi_0655, x
B1D_8185:
    jsr B1D_8524
    dec music_timer_065F, x
    bne B1D_81a4
    lda music_data_ptr_lo_0669, x
    sta UNK_22
    lda music_data_ptr_hi_0673, x
    sta UNK_22+1
    jsr B1D_8541
    lda UNK_22
    sta music_data_ptr_lo_0669, x
    lda UNK_22+1
    sta music_data_ptr_hi_0673, x
B1D_81a4:
    dex
    bpl B1D_815a
    ldx #$04
B1D_81a9:
    lda music_timer_0641, x
    bne B1D_81b8
    lda #$ff
    sta UNK_686+86, x
    lda #$00
    sta UNK_686+81, x
B1D_81b8:
    dex
    bpl B1D_81a9
    jsr B1D_808f
    lda UNK_601+3
    lsr a
    pha
    ldx #$00
    ldy #$03
B1D_81c7:
    php
    lda UNK_601+22, x
    bcc B1D_81d0
    lda UNK_601+6, x
B1D_81d0:
    cmp music_ram_4000, x
    beq B1D_81db
    sta music_ram_4000, x
    sta SQ1, x
B1D_81db:
    plp
    inx
    dey
    bpl B1D_81c7
    pla
    lsr a
    pha
    ldx #$00
    ldy #$03
B1D_81e7:
    php
    lda UNK_601+26, x
    bcc B1D_81f0
    lda UNK_601+10, x
B1D_81f0:
    cmp music_ram_4004, x
    beq B1D_81fb
    sta music_ram_4004, x
    sta SQ2, x
B1D_81fb:
    plp
    inx
    dey
    bpl B1D_81e7
    pla
    lsr a
    pha
    ldx #$00
    ldy #$03
B1D_8207:
    php
    lda UNK_601+30, x
    bcc B1D_8210
    lda UNK_601+14, x
B1D_8210:
    cmp music_ram_4008, x
    beq B1D_821b
    sta music_ram_4008, x
    sta TRI, x
B1D_821b:
    plp
    inx
    dey
    bpl B1D_8207
    pla
    lsr a
    ldx #$03
B1D_8224:
    php
    lda UNK_601+34, x
    bcc B1D_822d
    lda UNK_601+18, x
B1D_822d:
    cmp music_ram_400C, x
    beq B1D_8238
    sta music_ram_400C, x
    sta NOISE_VOL, x
B1D_8238:
    plp
    dex
    bpl B1D_8224
    lda SND_CHN
    and #$10
    bne B1D_8248
    lda #$7f
    sta DMC_RAW
B1D_8248:
    rts

B1D_8249:
    .byte $08
B1D_824a:
    .byte $10

B1D_824b:
    jsr IncreasePatternPtr
B1D_824e:
    ;get pattern note
    ldy #0
    lda (UNK_22), y
    ;check if command
    ;if >= $E0? jump
    and #$e0
    cmp #$e0
    bne @B1D_825b
    jmp is_greater_e0
    @B1D_825b:
    lda UNK_637, x
    cmp #$0c
    bne B1D_8288
    lda (UNK_22), y
    bit B1D_824a
    bne B1D_8276
    and #$0f
    cmp #$0f
    beq B1D_82a1
    ldy #$0e
    sta (UNK_22+2), y
    jmp B1D_82b8
B1D_8276:
    and #$0f
    sta DMC_FREQ
    lda #$0f
    sta SND_CHN
    lda #$1f
    sta SND_CHN
    jmp B1D_82b8
B1D_8288:
    lda (UNK_22), y
    and #$1f
    cmp #$10
    beq B1D_82a1
    bit B1D_824a
    beq B1D_8297
    ora #$e0
B1D_8297:
    clc
    adc UNK_686+1, x
    jsr B1D_84e9
    jmp B1D_82b8
B1D_82a1:
    jsr B1D_8306
    pha
    lda music_timer_067D, x
    beq B1D_82af
    lda #$01
    sta music_timer_067D, x
B1D_82af:
    pla
    beq B1D_82b5
    jmp IncreasePatternPtr
B1D_82b5:
    jmp B1D_824b
B1D_82b8:
    jsr B1D_8306
    pha
    tay
    lda #$ff
    sta music_timer_067D, x
    lda UNK_686+11, x
    beq B1D_82e0
    sta tmp1+1
    txa
    pha
    lda #$00
    tax
B1D_82ce:
    clc
    adc tmp1+1
    bcc B1D_82d4
    inx
B1D_82d4:
    dey
    bne B1D_82ce
    stx tmp1+1
    pla
    tax
    lda tmp1+1
    sta music_timer_067D, x
B1D_82e0:
    jsr B1D_82e6
    jmp B1D_82af
B1D_82e6:
    lda UNK_686+31, x
    bmi B1D_8305
B1D_82eb:
    asl a
    asl a
    tay
B1D_82ee:
    lda B1D_88b1, y
    sta music_data_ptr_lo_0669, x
    lda B1D_88b1+1, y
    sta music_data_ptr_hi_0673, x
    lda B1D_872e, x
    sta UNK_686+71, x
    lda #$01
    sta music_timer_065F, x
B1D_8305:
    rts
B1D_8306:
    ldy #$00
    lda (UNK_22), y
    and #$e0
    cmp #$c0
    bne B1D_8316
    jsr IncreasePatternPtr
    jmp B1D_8322
B1D_8316:
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    adc UNK_686+41, x
    tay
    lda NoteLengthTable, y
B1D_8322:
    sta music_timer_0641, x
    rts

is_greater_e0:
    ;get command byte
    lda (UNK_22), y
    cmp #$f0
    bne check_if_f1
    ;command == $F0
    ;a = argument
    jsr IncreasePatternPtr
    B1D_832f:
    ;a <<= 4
    asl a
    asl a
    asl a
    asl a
    ;store new argument in tmp1+1
    sta tmp1+1

    lda UNK_686+21, x
    and #$0f
    ora tmp1+1
    sta UNK_686+21, x
    jsr B1D_85f3
    jmp B1D_824b

    check_if_f1:
    cmp #$f1
    bne check_if_f2
    ;command == $F1
    ;a = argument
    jsr IncreasePatternPtr
    ;store argument to tmp1+1
    sta tmp1+1
    ;a = (UNK_686+21[x] >> 4) + argument
    lda UNK_686+21, x
    lsr a
    lsr a
    lsr a
    lsr a
    clc
    adc tmp1+1
    ;if argument is negative, branch
    bit tmp1+1
    bmi B1D_8362
    ;if the addition didnt carry, branch
    bcc B1D_8366
    lda #$0f
    bne B1D_8366
B1D_8362:
    ;if the addition carried, branch
    bcs B1D_8366
    lda #$00
B1D_8366:
    jmp B1D_832f

    check_if_f2:
    cmp #$f2
    bne check_if_f3
    ;command == $F2
    ;a = argument
    jsr IncreasePatternPtr
    asl a
    sta tmp2
    asl a
    adc tmp2
    sta UNK_686+41, x
    jmp B1D_824b

    check_if_f3:
    cmp #$f3
    bne check_if_f4
    ;command == $F3
    ;a = argument
    jsr IncreasePatternPtr
    sta music_timer_0641, x
    lda #$ff
    sta music_timer_067D, x
    jmp IncreasePatternPtr

    check_if_f4:
    cmp #$f4
    bne check_if_f5
    ;command == $F4
    ;a = argument
    jsr IncreasePatternPtr
    sta UNK_686+11, x
    jmp B1D_824b

    check_if_f5:
    cmp #$f5
    bne check_if_f6
    ;command == $F5
    ;a = argument
    jsr IncreasePatternPtr
    sta UNK_686+1, x
    jmp B1D_824b

    check_if_f6:
    cmp #$f6
    bne check_if_f7
    ;command == $F6
    ;a = argument
    jsr IncreasePatternPtr
    sta UNK_686+31, x
    bpl B1D_83b7
    jsr B1D_82eb
B1D_83b7:
    jmp B1D_824b

    check_if_f7:
    cmp #$f7
    bne check_if_e0
    ;command == $F7
    ;a = argument
    jsr IncreasePatternPtr
    sta $06b9, x
    jmp B1D_824b

    check_if_e0:
    cmp #$e0
    bne check_if_e2
    ;command == $e0
    ;a = argument
    jsr IncreasePatternPtr
    sta DMC_START
    jsr IncreasePatternPtr
    sta DMC_LEN
    jmp B1D_824b

    check_if_e2:
    cmp #$e2
    bne check_if_e3
    ;command == $e2
    ;a = argument
    jsr IncreasePatternPtr
    pha
    jsr IncreasePatternPtr
    ldy $0637, x
    iny
    iny
    iny
    and #$0f
    sta tmp1+1
    lda $0627, y
    and #$10
    eor #$10
    ora tmp1+1
    sta (UNK_22+2), y
    pla
    dey
    sta (UNK_22+2), y
    jsr B1D_82e6
    jmp B1D_824b

    check_if_e3:
    cmp #$e3
    bne check_if_e1
    ;command == $e3
    ;a = argument
    jsr IncreasePatternPtr
    bpl @B1D_840e
    dey
    @B1D_840e:
    jsr B1D_8666
    jmp B1D_824b

    check_if_e1:
    cmp #$e1
    bne check_if_ff
    ;command == $e1
    ;a = argument
    jsr IncreasePatternPtr
    sta $0601
    jmp B1D_824b

    check_if_ff:
    cmp #$ff
    bne exit_ff
    ;command == $ff
    ;a = argument
    lda #$00
    sta music_timer_0641, x
    sta music_timer_065F, x
    jsr B1D_85e7
    rts

    exit_ff:
    lda UNK_686+61, x
    sta UNK_22+4
    jsr B1D_8441
    lda UNK_22+4
    sta UNK_686+61, x
    jmp B1D_824e
B1D_8441:
    lda (UNK_22), y
    cmp #$f8
    bne check_if_fa
    ;command == $f8
    ;a = argument
    iny
    lda (UNK_22), y
    pha
    iny
    lda (UNK_22), y
    sta UNK_22+1
    pla
    sta UNK_22
    rts

    check_if_fa:
    cmp #$fa
    bne check_if_fb
    ;command == $fa
    ;a = argument
    jsr IncreasePatternPtr
    pha
    jsr IncreasePatternPtr
    pha
    jsr IncreasePatternPtr
    ldy UNK_22+4
    lda UNK_22+1
    dey
    sta UNK_686+91, y
    lda UNK_22
    dey
    sta UNK_686+91, y
    sty UNK_22+4
    pla
    sta UNK_22+1
    pla
    sta UNK_22
    rts

    check_if_fb:
    cmp #$fb
    bne check_if_fc
    ;command == $fb
    ;a = argument
    ldy UNK_22+4
    lda UNK_686+91, y
    sta UNK_22
    iny
    lda UNK_686+91, y
    sta UNK_22+1
    iny
    sty UNK_22+4
    rts

    check_if_fc:
    cmp #$fc
    bne check_if_fd
    ;command == $fc
    ;a = argument
    jsr IncreasePatternPtr
    pha
    jsr IncreasePatternPtr
    ldy UNK_22+4
    lda UNK_22+1
    dey
    sta UNK_686+91, y
    lda UNK_22
    dey
    sta UNK_686+91, y
    pla
    dey
    sta UNK_686+91, y
    sty UNK_22+4
    rts

    check_if_fd:
    cmp #$fd
    bne check_if_fe
    ;command == $fd
    ;a = argument
    ldy UNK_22+4
    lda UNK_686+91, y
    sec
    sbc #$01
    sta UNK_686+91, y
    beq @B1D_84cc
    lda UNK_686+92, y
    sta UNK_22
    lda UNK_686+93, y
    sta UNK_22+1
    rts
    @B1D_84cc:
    inc UNK_22+4
    inc UNK_22+4
    inc UNK_22+4
    jmp IncreasePatternPtr

    check_if_fe:
    cmp #$fe
    bne @exit
    jsr IncreasePatternPtr
    jmp IncreasePatternPtr
    @exit:
    rts


;UNK_22 += 1
IncreasePatternPtr:
    inc UNK_22
    bne @no_16
    inc UNK_22+1
    @no_16:
    lda (UNK_22), y
    rts

B1D_84e9:
    pha
    lda UNK_686+51, x
    asl a
    tay
    lda Pitch_Table_Alias, y
    sta UNK_1C
    lda Pitch_Table_Alias+1, y
    sta UNK_1C+1
    pla
    asl a
    tay
    lda (UNK_1C), y
    sta tmp1+1
    iny
    lda (UNK_1C), y
    ldy UNK_637, x
    iny
    iny
    sta (UNK_22+2), y
    iny
    lda music_ram_4000, y
    and #$10
    eor #$10
    ora B1D_851a, x
    ora tmp1+1
    sta (UNK_22+2), y
    rts
B1D_851a:
.byte $00,$00,$00,$00,$00
.byte $20,$20,$20,$20,$20
B1D_8524:
    lda music_timer_067D, x
    beq B1D_853d
    cmp #$ff
    beq B1D_853d
    dec music_timer_067D, x
    bne B1D_853d
    lda UNK_686+31, x
    asl a
    asl a
    tay
    iny
    iny
    jmp B1D_82ee
B1D_853d:
    rts
B1D_853e:
    jsr IncreasePatternPtr
B1D_8541:
    ldy #$00
    lda (UNK_22), y
    and #$e0
    bne B1D_8553
    lda (UNK_22), y
    and #$1f
    sta music_timer_065F, x
    jmp IncreasePatternPtr
B1D_8553:
    cmp #$20
    bne B1D_856d
    jsr B1D_8648
    jsr B1D_8666
B1D_855d:
    ldy #$00
    lda (UNK_22), y
    and #$10
    beq B1D_853e
    lda #$01
    sta music_timer_065F, x
    jmp IncreasePatternPtr
B1D_856d:
    cmp #$40
    bne B1D_8578
    lda (UNK_22), y
    and #$0f
    jmp B1D_8593
B1D_8578:
    cmp #$60
    bne B1D_8599
    jsr B1D_8648
    clc
    sta tmp1+1
    lda UNK_686+21, x
    and #$0f
    adc tmp1+1
    bpl B1D_858d
    lda #$00
B1D_858d:
    cmp #$10
    bcc B1D_8593
    lda #$0f
B1D_8593:
    jsr B1D_85e7
    jmp B1D_855d
B1D_8599:
    cmp #$80
    bne B1D_85b6
    lda (UNK_22), y
    and #$0f
    ldy UNK_637, x
    ror a
    ror a
    ror a
    and #$c0
    sta tmp1+1
    lda (UNK_22+2), y
    and #$3f
    ora tmp1+1
    sta (UNK_22+2), y
    jmp B1D_855d
B1D_85b6:
    cmp #$e0
    bne B1D_85e6
    lda (UNK_22), y
    cmp #$f0
    bne B1D_85cc
    jsr IncreasePatternPtr
    ldy $0637,x
    iny
    sta (UNK_22+2),y
    jmp B1D_853e
B1D_85cc:
    cmp #$ff
    bne B1D_85d6
    lda #$00
    sta music_timer_065F, x
    rts
B1D_85d6:
    lda UNK_686+71, x
    sta UNK_22+4
    jsr B1D_8441
    lda UNK_22+4
    sta UNK_686+71, x
    jmp B1D_8541
B1D_85e6:
    rts
B1D_85e7:
    sta tmp1+1
    lda UNK_686+21, x
    and #$f0
    ora tmp1+1
    sta UNK_686+21, x
B1D_85f3:
    lda #$ff
    sec
    sbc UNK_686+21, x
    lsr a
    lsr a
    lsr a
    lsr a
    sta tmp1+1
    lda UNK_686+21, x
    and #$0f
    sec
    sbc tmp1+1
    bpl B1D_860b
    lda #$00
B1D_860b:
    sta tmp1+1
    ldy #$00
    cpx #$05
    bcc B1D_8614
    iny
B1D_8614:
    lda #$ff
    sec
    sbc UNK_601+1, y
    lsr a
    lsr a
    lsr a
    lsr a
    eor #$ff
    sec
    adc tmp1+1
    bpl B1D_8627
    lda #$00
B1D_8627:
    sta tmp1+1
    ldy UNK_637, x
    cpy #$08
    beq B1D_863b
    lda (UNK_22+2), y
    and #$c0
    ora #$30
    ora tmp1+1
    sta (UNK_22+2), y
    rts
B1D_863b:
    lda tmp1+1
    cmp #$04
    lda #$00
    bcc B1D_8645
    lda #$ff
B1D_8645:
    sta (UNK_22+2), y
    rts
B1D_8648:
    ldy #$00
    lda (UNK_22), y
    and #$0f
    bit B1D_8249
    beq @exit
    ora #$f0
    dey
    @exit:
    rts

B1D_8657:
    ldy #$00
    lda (UNK_22), y
    and #$1f
    bit B1D_824a
    beq @exit
    ora #$e0
    dey
    @exit:
    rts

B1D_8666:
    sty tmp1+1
    ldy UNK_637, x
    clc
    iny
    iny
    adc (UNK_22+2), y
    sta (UNK_22+2), y
    iny
    lda tmp1+1
    adc (UNK_22+2), y
    sta (UNK_22+2), y
    rts

;big endian words
;the lower a note, the higher the value
Pitch_Table:
.byte $07,$FF,$07,$87,$07,$1C,$06,$B1,$06,$52,$05,$F4,$05,$A0,$05,$4E
.byte $05,$05,$04,$BD,$04,$78,$04,$36,$03,$FC,$03,$C0,$03,$89,$03,$58
.byte $03,$29,$02,$FA,$02,$D0,$02,$A7,$02,$80,$02,$5D,$02,$3B,$02,$1B
.byte $01,$FD,$01,$E0,$01,$C5,$01,$AB,$01,$93,$01,$7D,$01,$67,$01,$53
.byte $01,$40,$01,$2E,$01,$1D,$01,$0D,$00,$FE,$00,$F0,$00,$E2,$00,$D5
.byte $00,$C9,$00,$BE,$00,$B3,$00,$A9,$00,$A0,$00,$97,$00,$8E,$00,$86
.byte $00,$7F,$00,$78,$00,$71,$00,$6A,$00,$64,$00,$5F,$00,$59,$00,$54
.byte $00,$50,$00,$4B,$00,$47,$00,$43,$00,$3F,$00,$3C,$00,$38,$00,$35
.byte $00,$32,$00,$2F,$00,$2C,$00,$2A,$00,$28,$00,$25,$00,$23,$00,$21
.byte $00,$1F,$00,$1E,$00,$1C

B1D_8710:
incbinRange "../split/prg/bank1d.bin", $710, $71a
B1D_871a:
incbinRange "../split/prg/bank1d.bin", $71a, $724
B1D_8724:
incbinRange "../split/prg/bank1d.bin", $724, $72e
B1D_872e:
incbinRange "../split/prg/bank1d.bin", $72e, $738
Pitch_Table_Alias:
.addr Pitch_Table
incbinRange "../split/prg/bank1d.bin", $73a, $8b1
B1D_88b1:
incbinRange "../split/prg/bank1d.bin", $8b1, $955

NoteLengthTable:
.byte $01,$02,$03,$04,$05,$06
.byte $05,$0A,$0F,$14,$1E,$50
.byte $09,$12,$1B,$24,$2D,$36
.byte $07,$0E,$15,$1C,$23,$2A
.byte $06,$0C,$12,$18,$1E,$24
.byte $08,$10,$18,$20,$28,$30
.byte $0A,$14,$1E,$28,$32,$3C
.byte $0B,$16,$21,$2C,$37,$42
.byte $04,$04,$08,$10,$28,$20
.byte $03,$04,$09,$0C,$1B,$3F

B1D_8991:
incbinRange "../split/prg/bank1d.bin", $991, $9cb
B1D_89cb:
incbinRange "../split/prg/bank1d.bin", $9cb, $a05
B1D_8a05:
incbinRange "../split/prg/bank1d.bin", $a05, $a3f
B1D_8a3f:
incbinRange "../split/prg/bank1d.bin", $a3f, $a97
B1D_8a97:
incbinRange "../split/prg/bank1d.bin", $a97, $aef
B1D_8aef:
incbinRange "../split/prg/bank1d.bin", $aef, $b47
B1D_8b47:
.incbin "../split/prg/bank1d.bin", $b47

.segment "PRG1E": absolute
mus_vegetable_valley:
.byte 5
.addr mus_vegetable_valley_pulse2
.byte 4
.addr mus_vegetable_valley_dpcm
.byte 12
.addr mus_vegetable_valley_triangle
.byte 8
.addr mus_vegetable_valley_pulse1
.byte 0
.addr mus_vegetable_valley_noise
.byte 12



    incbinRange "../split/prg/bank1e.bin", $10, $8C


.include "songs/vegetable_valley.asm"

    .incbin "../split/prg/bank1e.bin", $739

.segment "PRG1F": absolute
    .incbin "../split/prg/bank1f.bin"

.segment "PRG20": absolute
    .incbin "../split/prg/bank20.bin"

