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


    .incbin "../split/prg/bank18.bin", $a7