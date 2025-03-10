LowerBankswitch := $D787
UpperBankswitch := $D796
IndirectJmp_YA := $D7a5
CallFromScriptJmpAddr := $D7ab
CallFrom603B := $D7ae
ClearOam := $De03
NopObjectTick := $D777
AllocateScriptSlot := $D6ee
UnlinkScript := $D6b9
LinkObject := $D672
AllocateObjectSlot := $D622
LongCall := $D805

.segment "PRG3E": absolute
B3E_C000:
    incbinRange "../split/prg/bank3e.bin", 0, $af7
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
    jmp $cb66
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
    sty irq_code_pointer+0
    stx irq_code_pointer+1
    sta IRQLATCH
    sta IRQRELOAD
    sta IRQENABLE
    cli
    rts

;Global version of InitializeObjects
InitializeObjects_GLOBAL:
    jsr LongCall
    eor ($a0),y
    clc
    rts

InitNewObject:
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
    sta obj_alloc_min_slot
    lda #$12
    sta obj_alloc_max_slot
    pla

InitNewObject2:
    pha
    tya
    pha
    txa
    pha
    jsr AllocateObjectSlot
    bcc B3E_cbb2
    pla
    pla
    pla
    lda #$ff
    rts
B3E_cbb2:
    jsr AllocateScriptSlot
    tya
    sta OBJ_script_slot+0,x
    lda #$ff
    sta SCR_next+0,y
    lda #$7d
    sta obj_onposition_lo+0,x
    lda #$d9
    sta obj_onposition_hi+0,x
    lda #$89
    sta obj_draw_lo+0,x
    lda #$da
    sta obj_draw_hi+0,x
    lda #$64
    sta obj_move_lo+0,x
    lda #$d8
    sta obj_move_hi+0,x
    lda #$ff
    sta OBJ_lower_prg+0,x
    lda new_object_var0
    sta OBJ_var0+0,x
    lda new_object_var1
    sta OBJ_var1+0,x
    lda new_object_var2
    sta OBJ_var2+0,x
    lda new_object_var3
    sta OBJ_var3+0,x
    lda new_object_var4
    sta OBJ_var4+0,x
    lda new_object_var5
    sta OBJ_var5+0,x
    lda new_object_var6
    sta OBJ_var6+0,x
    lda new_object_var7
    sta OBJ_var7+0,x
    lda #$80
    sta OBJ_x_frac,x
    sta OBJ_y_frac,x
    sta OBJ_z_frac+0,x
    pla
    sta OBJ_x_lo,x
    sta OBJ_store_x_lo+0,x
    lda new_object_x_hi
    sta OBJ_x_hi,x
    sta OBJ_store_x_hi+0,x
    pla
    sta OBJ_y_lo,x
    sta OBJ_store_y_lo+0,x
    lda new_object_y_hi
    sta OBJ_y_hi,x
    sta OBJ_store_y_hi+0,x
    lda #$80
    sta OBJ_z_lo+0,x
    sta OBJ_store_z_lo+0,x
    sta OBJ_z_hi+0,x
    sta OBJ_store_z_hi+0,x
    jsr LinkObject
    pla
    jmp $cc63

.byte $48,$BD,$28,$61,$10,$02,$68,$60
.byte $20,$B9,$D6,$20,$EE,$D6,$98,$9D
.byte $4C,$61,$A9,$FF,$99,$20,$63,$68

;    pha
;    lda OBJ_script+0,x
;    bpl $cc53
;    pla
;    rts
;    jsr UnlinkScript
;    jsr AllocateScriptSlot
;    tya
;    sta OBJ_script_slot+0,x
;    lda #$ff
;    sta SCR_next+0,y
;    pla


B3E_cc63:
    sta OBJ_script+0,x
    tay
    lda upper_prg
    pha
    lda #$18
    jsr UpperBankswitch
    lda #$00
    sta OBJ_vel_x_lo+0,x
    sta OBJ_vel_x_hi+0,x
    sta OBJ_vel_y_lo+0,x
    sta OBJ_vel_y_hi+0,x
    sta OBJ_vel_z_lo+0,x
    sta OBJ_vel_z_hi+0,x
    lda #$ff
    sta OBJ_pose+0,x
    lda $a187,y
    sta script_bank
    lda $a0a7,y
    pha
    lda $a117,y
    tay
    pla
    jsr InitializeScript
    pla
    jsr UpperBankswitch
    txa
    rts

;?????
.byte $A6,$49,$8E,$31,$60,$A6,$6E
;    ldx upper_prg
;    stx script_bank
;    ldx curr_object_slot


;YA = script pointer
TryReplaceObjectScript:
    pha
    tya
    pha
    lda OBJ_script,x
    bpl ReplaceObjectScript
    pla
    pla
    rts

;YA = script pointer
ReplaceObjectScript:
    jsr UnlinkScript
    jsr AllocateScriptSlot
    tya
    sta OBJ_script_slot,x
    lda #$ff
    sta SCR_next,y
    pla
    tay
    pla

;YA = script pointer
InitializeScript:
    pha
    tya
    pha
    jsr NopObjectTick
    ldy OBJ_script_slot,x
    lda script_bank
    sta SCR_bank,y
    pla
    sta SCR_ip_hi,y
    pla
    sta SCR_ip_lo,y
    lda #$00
    sta SCR_sleep_timer,y
    sta SCR_stack_pointer,y
    txa
    rts

ProcessObjects:
    jsr ClearOam
    ldx first_obj
    bmi B3E_cd02
B3E_cced:
    stx curr_object_slot
    lda OBJ_next,x
    sta next_obj
    lda OBJ_tick_bank,x
    bmi B3E_ccfd
    jsr TickObject
B3E_ccfd:
    ldx next_obj
    bpl B3E_cced
B3E_cd02:
    lda $6600
    beq B3E_cd16
    lda upper_prg
    pha
    lda #$38
    jsr UpperBankswitch
    jsr $a000
    pla
    jsr UpperBankswitch
B3E_cd16:
    jsr CallFrom603B
    ldx OBJ_first_draw
    bmi B3E_cd6d
B3E_cd1e:
    txa
    pha
    sta curr_object_slot
    lda obj_onposition_lo,x
    ldy obj_onposition_hi,x
    jsr IndirectJmp_YA
    lda OBJ_spritemap_bank,x
    bmi B3E_cd66
    jsr LowerBankswitch
    lda obj_draw_lo,x
    sta script_jmp_addr
    lda obj_draw_hi,x
    sta script_jmp_addr+1
    lda OBJ_pose,x
    cmp #$ff
    beq B3E_cd66
    ldy #$00
    asl a
    bcc B3E_cd4c
    iny
B3E_cd4c:
    sty ptr0hi
    clc
    adc OBJ_spritemap_lo,x
    sta ptr0lo
    lda ptr0hi
    adc OBJ_spritemap_hi,x
    sta ptr0hi
    ldy #$01
    lda (ptr0lo),y
    tax
    dey
    lda (ptr0lo),y
    jsr CallFromScriptJmpAddr
B3E_cd66:
    pla
    tay
    ldx OBJ_draw_sorting,y
    bpl B3E_cd1e
B3E_cd6d:
    lda #$00
    sta use_dynamic_chr0_bank
    inc frame_counter
    rts

TickObject:
    lda OBJ_lower_prg,x
    bmi B3E_cd7e
    jsr LowerBankswitch
B3E_cd7e:
    ldy OBJ_script_slot,x
B3E_cd81:
    sty curr_script_slot
    lda SCR_next,y
    sta next_script
    jsr RunActionScript
    ldy next_script
    bpl B3E_cd81
    ldx curr_object_slot
    lda obj_move_lo,x
    ldy obj_move_hi,x
    jsr IndirectJmp_YA
    ldx curr_object_slot
    lda OBJ_tick_bank,x
    jsr UpperBankswitch
    lda OBJ_tick_lo,x
    ldy OBJ_tick_hi,x
    jmp IndirectJmp_YA

RunActionScript:
    ldx curr_script_slot
    lda SCR_sleep_timer,x
    bne B3E_ce2d
    lda SCR_ip_lo,x
    sta script_ptr
    lda SCR_ip_hi,x
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
    adc #$00
    sta script_stack
    lda script_stack+1
    adc #$64
    sta script_stack+1
B3E_cddd:
    ldy #$00
    lda (script_ptr),y
    cmp #$50
    bcc B3E_ce03
    pha
    and #$0f
    sta SCR_sleep_timer,x
    pla
    sec
    sbc #$50
    lsr a
    lsr a
    lsr a
    lsr a
    tax
    lda $ceaf,x
    sta script_jmp_addr
    lda $ceb8,x
    sta script_jmp_addr+1
    jmp (script_jmp_addr)
B3E_ce03:
    tax
    lda $ce31,x
    sta script_jmp_addr
    lda $ce70,x
    sta script_jmp_addr+1
    jmp (script_jmp_addr)
AS_RunNextInstruction:
    clc
    adc script_ptr
    sta script_ptr
    bcc B3E_ce1c
    inc script_ptr+1
B3E_ce1c:
    ldx curr_script_slot
    lda SCR_sleep_timer,x
    beq B3E_cddd

    lda script_ptr
    sta SCR_ip_lo,x
    lda script_ptr+1
    sta SCR_ip_hi,x
B3E_ce2d:
    dec SCR_sleep_timer,x
    rts


    .incbin "../split/prg/bank3e.bin", $e31

.segment "PRG3F": absolute
    incbinRange "../split/prg/bank3f.bin", 0, $1ff0

Reset:
    sei

    ;set bank 0
    lda #0
    sta BANKSELECT

    jmp B3E_C000


.byte $f7

.addr $c341 ;nmi
.addr Reset ;reset
.addr $0029 ;irq