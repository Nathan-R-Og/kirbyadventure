ZeroKirbyVelocity := $987d
IsTileWater := $EEDB

L_18B3B8 := $18b3b8
L_18B2BA := $18B2BA

.segment "PRG14": absolute
Script01_Kirby:
    ;ending jptl
    MOV         REG, UNK_7F5
    TABLECALL   #6
    _is_faraddr    L_14A017 ;normal proc
    _is_faraddr    $2EB055 ;ending 1
    _is_faraddr    $2EB4F1 ;ending 2
    _is_faraddr    $2EB8E8 ;ending 3
    _is_faraddr    $36B60F ;nightmare intro
    _is_faraddr    $36BF60 ;nightmare intro 2
L_14A017:
    ;check warpstar/movement curve
    MOV         REG, UNK_7DA
    JEQ         L_14A029
    ;if true
    SETBANK     #$21
    ASMCALL     $987D, WAIT #0 ; Zero Kirby's velocities
    ASMCALL     $95CD, WAIT #0
    JML         $23B0D5

L_14A029:
    SETBANK     #$21
    ASMCALL     InitVariables, WAIT #0
    ONPOSITION  B3E_d99c ;Check kill plane?
    ONDRAW      B3E_dda3 ;Draw Kirby?
    SETZPOS     #$00C0
    ASMCALL     $95CD, WAIT #0
    ONMOVE      AS_Move_Nop
    ASMCALL     B3E_c086, WAIT #0 ; Write 0xFF to $37 and wait a frame
    ASMCALL     B14_a186, WAIT #0
    ASMCALL     B14_a173, WAIT #0
    JEQ         L_14A051
    ASMCALL     B3F_e2d9, WAIT #0 ; Unknown ASM $E2D9 (Set $05A0 and $05A1)
    .byte       $05
    ASMCALL     B3E_df4b, WAIT #0 ; Set bits in $0036
    .byte       $06
L_14A051:
    ASMCALL     B3E_dfa3, WAIT #0 ; SUB reg, #arg2, arg1
    .word       $0558
    .byte       $07
    JEQ         L_14A060
    ASMCALL     B14_a196, WAIT #4
    JNE         L_14A051
L_14A060:
    ASMCALL     B14_a15c, WAIT #0
    JEQ         L_14A06A
    JML         $15BC07

L_14A06A:
    ASMCALL     $9CB3, WAIT #0
    ASMCALL     B14_a162, WAIT #0
    JEQ         L_14A077
    JML         $15BA9D

L_14A077:
    ASMCALL     UnfreezeAllObjects, WAIT #0 ; Clear MSB of OBJ_tick_bank for all other objects
    ASMCALL     B14_a173, WAIT #0
    JEQ         L_14A099
    JML         $19A000

L_14A084:
    SETBANK     #$21
    ONPOSITION  B3E_d99c
    ONDRAW      B3E_dda3
    SETZPOS     #$00C0
    ASMCALL     $95CD
    ONMOVE      AS_Move_Nop
    MOV         kirby_050C,#$00

L_14A099:
    ASMCALL     B14_a1af, WAIT #0
    JEQ         L_14A0A3
    ASMCALL     B3E_de4b, WAIT #0 ; Unknown ASM $DE4B
    .byte       $3C
L_14A0A3:
    MOV         REG, kirby_05E0
    TABLECALL   #15
    _is_faraddr    KST01_DiscardAbility
    _is_faraddr    $18AF50
    _is_faraddr    L_14B2D9
    _is_faraddr    $15A000
    _is_faraddr    $17ABCF
    _is_faraddr    $15AC09
    _is_faraddr    $17A000
    _is_faraddr    $18AB7C
    _is_faraddr    $19B669
    _is_faraddr    $18ABDB
    _is_faraddr    $18A847
    _is_faraddr    $19B307
    _is_faraddr    $18AAEC
    _is_faraddr    $17B800
    _is_faraddr    $17BAA9

InitVariables:
    lda #$40
    sta OBJ_var1+ObjectSlot::KIRBY

    lda #SLOPE_STATES::LEVEL
    sta kirby_slope_state

    ldx #0
    stx kirby_05E1
    stx kirby_yellow_flash_timer
    stx kirby_05FA
    stx inhaling_count
    stx kirby_050C
    stx kirby_05F8
    stx kirby_78E7

    dex
    stx kirby_05BF
    stx kirby_05E4
    stx UNK_5E2

    lda kirby_flags
    and #kirby_nodiscard | kirby_ishyper
    sta kirby_flags

    jsr $9ced
    jsr IsTileWater
    lda #0
    adc #0
    sta kirby_underwater_flag
    lda kirby_05EA
    cmp #$ee
    beq B14_a138
    sta kirby_copy_ability
    lda UNK_5EB
    sta kirby_05E0
    lda UNK_5EC
    sta ability_uses
    lda #$ee
    sta kirby_05EA
    lda kirby_flags
    and #$df
    sta kirby_flags
B14_a138:
    ldx kirby_05E0
    lda B14_a14d,x
    sta kirby_05E0
    cmp #$00
    bne B14_a14a
    lda #$ff
    sta kirby_copy_ability
B14_a14a:
    jmp ZeroKirbyVelocity

B14_a14d:
    .byte $00,$00,$02,$03,$04,$05,$06,$00
    .byte $02,$02,$02,$02,$02,$0D,$0E

B14_a15c:
    lda UNK_5A2
    bne B14_a162
    rts
B14_a162:
    ldx #0
    lda current_room+1
    bne @room_is_zero
    lda current_room
    cmp #$07
    bcs @room_is_zero
    inx
    @room_is_zero:
    txa
    rts
B14_a173:
    ldy #$00
    lda $055e
    cmp #$2a
    bne B14_a184
    lda $055f
    cmp #$00
    bne B14_a184
    iny
B14_a184:
    tya
    rts
B14_a186:
    ldx #$09
B14_a188:
    lda $62a2,x
    ora #$80
    sta $62a2,x
    inx
    cpx #$12
    bcc B14_a188
    rts
B14_a196:
    lda $01a2
    bne B14_a1a1
    ldx curr_script_slot
    sta $6360,x
    rts
B14_a1a1:
    bmi B14_a1a9
    jsr $c996
    lda #$01
    rts
B14_a1a9:
    jsr $c94c
    lda #$01
    rts
B14_a1af:
    ldx #$00
    lda $0597
    cmp #$08
    bcs B14_a1b9
    inx
B14_a1b9:
    txa
    rts

L_14A1BB:
    ASMCALL     $8710                       ; 14A1BB/D01087 // Set Kirby's X velocity
    .word       -$180                       ; 14A1BE/80FE
    ASMCALL     $885C                       ; 14A1C0/D05C88 // Set Kirby's Y velocity
    .word       -$240                       ; 14A1C3/C0FD
    A_JMP       L_14A0A3                    ; 14A1C5/17A3A0

KirbyStateED:
    ASMCALL     $E2D9                       ; 14A1C8/D0D9E2 // Unknown ASM $E2D9 (Set $05A0 and $05A1)
    .byte       $06                         ; 14A1CB/06
    ASMCALL     $9952                       ; 14A1CC/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14A1CF/00
    .byte       $00                         ; 14A1D0/00
    .byte       $1A                         ; 14A1D1/1A
    .byte       $00                         ; 14A1D2/00
    SPRITEMAP   $1C8DA6                     ; 14A1D3/1AA68D1C
    ASMCALL     B14_a1e8                    ; 14A1D7/D0E8A1 // Unknown ASM $14A1E8 (return VAR0 if `kirby_05E0 != 0x0E`, otherwise return 5)
    TABLEJMP    #6                          ; 14A1DA/0F06
    .word       L_14A1F6                    ; 14A1DC/F6A1
    .word       L_14A34A                    ; 14A1DE/4AA3
    .word       L_14A459                    ; 14A1E0/59A4
    .word       L_14A42A                    ; 14A1E2/2AA4
    .word       L_14A304                    ; 14A1E4/04A3
    .word       L_14A2C5                    ; 14A1E6/C5A2


B14_a1e8:
    lda kirby_05E0
    cmp #$0e
    beq B14_a1f3
    lda $61cb
    rts
B14_a1f3:
    lda #$05
    rts

L_14A1F6:
    MOV         $05F9,#$88                  ; 14A1F6/11F90588
    ASMCALL     $884D                       ; 14A1FA/D04D88 // Zero Kirby's Y velocity
    ONTICK      $14A24A                     ; 14A1FD/084AA214
    ASMCALL     $DE4B                       ; 14A201/D04BDE // Play sound effect
    .byte       $06                         ; 14A204/06
    TASK        TASK_14A226                 ; 14A205/0726A2
    ASMCALL     $9DA3                       ; 14A208/D0A39D
    TABLEJSR    #2                          ; 14A20B/1002
    .word       L_14A214                    ; 14A20D/14A2
    .word       L_14A222                    ; 14A20F/22A2
    A_JMP       KirbyStateE8                ; 14A211/17BCA4

L_14A214:
    ASMCALL     $8FDC                       ; 14A214/D0DC8F // Set pose (respect facing)
    .byte       $00                         ; 14A217/00
    WAIT        #2                          ; 14A218/0602
    ADDPOSE     #4, WAIT #2                 ; 14A21A/6204
    DEC2POSE    WAIT #2                     ; 14A21C/A2
    ADDPOSE     #4, WAIT #2                 ; 14A21D/6204
    DEC2POSE    WAIT #2                     ; 14A21F/A2
    DEC2POSE    WAIT #2                     ; 14A220/A2
    A_RTS                                   ; 14A221/19

L_14A222:
    ASMCALL     $A2A5, WAIT #12             ; 14A222/DCA5A2
    A_RTS                                   ; 14A225/19

TASK_14A226:
    ASMCALL     B14_a26e, WAIT #1           ; 14A226/D16EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0400                       ; 14A229/0004
    ASMCALL     B14_a26e, WAIT #2           ; 14A22B/D26EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0300                       ; 14A22E/0003
    ASMCALL     B14_a26e, WAIT #3           ; 14A230/D36EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0200                       ; 14A233/0002
    ASMCALL     B14_a26e, WAIT #4           ; 14A235/D46EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0100                       ; 14A238/0001
    ASMCALL     B14_a26e                    ; 14A23A/D06EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0000                       ; 14A23D/0000
    ENDTASK                                 ; 14A23F/0C

KirbyStateEB:
    ASMCALL     $9952                       ; 14A240/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14A243/00
    .byte       $F8                         ; 14A244/F8
    .byte       $04                         ; 14A245/04
    .byte       $00                         ; 14A246/00
    A_JMP       KirbyStateE8                ; 14A247/17BCA4

B14_a24a:
    ldx $05f7
    ldy B14_a26c,x
    jsr $87ba
    jsr $95cd
    jsr $9021
    jsr $9016
    jsr $904a
    jsr $89d9
    bcc B14_a269
    ldx #$eb
    jmp $8ce8
B14_a269:
    jmp $805b
B14_a26c:
    .byte $00,$02

B14_a26e:
    ldy #$01
    lda (script_ptr+0),y
    sta $05bb
    iny
    lda (script_ptr+0),y
    sta $05bc
    tya
    clc
    adc script_ptr+0
    sta script_ptr+0
    bcc B14_a285
    inc script_ptr+1
B14_a285:
    lda $61dd
    eor $61ef
    bpl B14_a2a2
    lda $05bb
    eor #$ff
    clc
    adc #$01
    sta $05bb
    lda $05bc
    eor #$ff
    adc #$00
    sta $05bc
B14_a2a2:
    jmp $856f
B14_a2a5:
    ldx #$04
    lda kirby_05E0
    cmp #$06
    beq B14_a2be
    dex
    cmp #$05
    beq B14_a2be
    dex
    cmp #$04
    beq B14_a2be
    dex
    cmp #$03
    beq B14_a2be
    dex
B14_a2be:
    txa
    asl a
    adc #$08
    jmp $8fe6

L_14A2C5:
    MOV         $05F9,#$88                  ; 14A2C5/11F90588
    ASMCALL     $884D                       ; 14A2C9/D04D88 // Zero Kirby's Y velocity
    ONTICK      $14A2F2                     ; 14A2CC/08F2A214
    ASMCALL     $DE4B                       ; 14A2D0/D04BDE // Play sound effect
    .byte       $06                         ; 14A2D3/06
    SETPOSE     #$48                        ; 14A2D4/5048
    ASMCALL     B14_a26e, WAIT #1           ; 14A2D6/D16EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0400                       ; 14A2D9/0004
    ASMCALL     B14_a26e, WAIT #2           ; 14A2DB/D26EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0300                       ; 14A2DE/0003
    ASMCALL     B14_a26e, WAIT #3           ; 14A2E0/D36EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0200                       ; 14A2E3/0002
    ASMCALL     B14_a26e, WAIT #4           ; 14A2E5/D46EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0100                       ; 14A2E8/0001
    ASMCALL     B14_a26e                    ; 14A2EA/D06EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0000                       ; 14A2ED/0000
    A_JMP       KirbyStateE8                ; 14A2EF/17BCA4

B14_a2f2:
    jsr LongCall
    _is_faraddr $17baef
    jsr $9021
    jsr $9016
    jsr $904a
    jmp $805b

L_14A304:
    MOV         $05F9,#$88                  ; 14A304/11F90588
    ASMCALL     $A331                       ; 14A308/D031A3
    ONTICK      $14A24A                     ; 14A30B/084AA214
    ASMCALL     $DE4B                       ; 14A30F/D04BDE // Play sound effect
    .byte       $20                         ; 14A312/20
    ASMCALL     $9DA3                       ; 14A313/D0A39D
    TABLEJSR    #2                          ; 14A316/1002
    .word       L_14A31F                    ; 14A318/1FA3
    .word       L_14A32D                    ; 14A31A/2DA3
    A_JMP       KirbyStateE8                ; 14A31C/17BCA4

L_14A31F:
    ASMCALL     $8FDC                       ; 14A31F/D0DC8F // Set pose (respect facing)
    .byte       $00                         ; 14A322/00
    WAIT        #2                          ; 14A323/0602
    ADDPOSE     #4, WAIT #2                 ; 14A325/6204
    DEC2POSE    WAIT #2                     ; 14A327/A2
    ADDPOSE     #4, WAIT #2                 ; 14A328/6204
    DEC2POSE    WAIT #2                     ; 14A32A/A2
    DEC2POSE    WAIT #2                     ; 14A32B/A2
    A_RTS                                   ; 14A32C/19

L_14A32D:
    ASMCALL     $A2A5, WAIT #12             ; 14A32D/DCA5A2
    A_RTS                                   ; 14A330/19


B14_a331:
    ldx #$00
    lda $05be
    bpl B14_a339
    inx
B14_a339:
    lda B14_a346,x
    sta $05bd
    lda B14_a348,x
    sta $05be
    rts
B14_a346:
    .byte $00,$00
B14_a348:
    .byte $FD,$00


L_14A34A:
    MOV         VAR0,#$78                   ; 14A34A/0D0078
    MOV         $05F9,#$80                  ; 14A34D/11F90580
    ASMCALL     $DE4B                       ; 14A351/D04BDE // Play sound effect
    .byte       $4A                         ; 14A354/4A
    ASMCALL     $A26E                       ; 14A355/D06EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0080                       ; 14A358/8000
    ASMCALL     $885C                       ; 14A35A/D05C88 // Set Kirby's Y velocity
    .word       $FE00                       ; 14A35D/00FE
    ONTICK      $14A3B2                     ; 14A35F/08B2A314
    ASMCALL     $9DA3                       ; 14A363/D0A39D
    JNE         L_14A372                    ; 14A366/0B72A3
L_14A369:
    ASMCALL     $8FDC, WAIT #2              ; 14A369/D2DC8F // Set pose (respect facing)
    .byte       $12                         ; 14A36C/12
    INC2POSE    WAIT #2                     ; 14A36D/92
    INC2POSE    WAIT #2                     ; 14A36E/92
    A_JMP       L_14A369                    ; 14A36F/1769A3

L_14A372:
    ASMCALL     $8FDC, WAIT #2              ; 14A372/D2DC8F // Set pose (respect facing)
    .byte       $1E                         ; 14A375/1E
    INC2POSE    WAIT #2                     ; 14A376/92
    INC2POSE    WAIT #2                     ; 14A377/92
    A_JMP       L_14A372                    ; 14A378/1772A3

KirbyStateE9:
    MOV         VAR0,#$78                   ; 14A37B/0D0078
    TASK        TASK_14A3A8                 ; 14A37E/07A8A3
    ASMCALL     $DF61                       ; 14A381/D061DF // Load_Palette, palette, start_index, entries
    .word       L_14A3A4                    ; 14A384/A4A3
    .byte       $10                         ; 14A386/10
    .byte       $04                         ; 14A387/04
    ASMCALL     $885C                       ; 14A388/D05C88 // Set Kirby's Y velocity
    .word       $FD40                       ; 14A38B/40FD
    ONTICK      $14A3E7                     ; 14A38D/08E7A314
    ASMCALL     $9DA3                       ; 14A391/D0A39D
    JNE         L_14A3A0                    ; 14A394/0BA0A3
L_14A397:
    ASMCALL     $8FDC, WAIT #4              ; 14A397/D4DC8F // Set pose (respect facing)
    .byte       $18                         ; 14A39A/18
    INC2POSE    WAIT #4                     ; 14A39B/94
    INC2POSE    WAIT #4                     ; 14A39C/94
    A_JMP       L_14A397                    ; 14A39D/1797A3

L_14A3A0:
    ASMCALL     $A2A5                       ; 14A3A0/D0A5A2
    HALT                                    ; 14A3A3/09

L_14A3A4:
    .byte $FF,$16,$06,$0F

TASK_14A3A8:
    ASMCALL     $9952, WAIT #2              ; 14A3A8/D25299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14A3AB/00
    .byte       $00                         ; 14A3AC/00
    .byte       $0D                         ; 14A3AD/0D
    .byte       $00                         ; 14A3AE/00
    A_JMP       TASK_14A3A8                 ; 14A3AF/17A8A3

B14_a3b2:
    ldx $05f7
    ldy B14_a3e5,x
    jsr $87ba
    jsr $95cd
    jsr $9021
    jsr $8bab
    bcc B14_a3cb
    ldx #$e9
    jmp $8ce8
B14_a3cb:
    jsr $904a
    jsr $a41c
    bcc B14_a3d8
    ldx #$e8
    jmp $8ce8
B14_a3d8:
    jsr $89d9
    bcc B14_a3e2
    ldx #$eb
    jmp $8ce8
B14_a3e2:
    jmp $805b
B14_a3e5:
    .byte $09,$0A
B14_a3e7:
    ldx $05f7
    ldy B14_a41a,x
    jsr $87ba
    jsr $95cd
    jsr $9021
    jsr $8bab
    bcc B14_a400
    ldx #$e8
    jmp $8ce8
B14_a400:
    jsr $904a
    jsr $a41c
    bcc B14_a40d
    ldx #$e8
    jmp $8ce8
B14_a40d:
    jsr $89d9
    bcc B14_a417
    ldx #$eb
    jmp $8ce8
B14_a417:
    jmp $805b
B14_a41a:
    .byte $00,$02
B14_a41c:
    lda $61cb
    beq B14_a428
    dec $61cb
    beq B14_a428
    clc
    rts

B14_a428:
    .byte $38,$60

L_14A42A:
    MOV         VAR0,#$78                   ; 14A42A/0D0078
    MOV         $05F9,#$80                  ; 14A42D/11F90580
    ASMCALL     $DE4B                       ; 14A431/D04BDE // Play sound effect
    .byte       $4B                         ; 14A434/4B
    ASMCALL     $A26E                       ; 14A435/D06EA2 // Set Kirby's X velocity (negative if `VAR1 ^ VAR2 < 0`)
    .word       $0080                       ; 14A438/8000
    ASMCALL     $885C                       ; 14A43A/D05C88 // Set Kirby's Y velocity
    .word       $FE00                       ; 14A43D/00FE
    ONTICK      $14A3B2                     ; 14A43F/08B2A314
    ASMCALL     $9DA3                       ; 14A443/D0A39D
    JNE         L_14A451                    ; 14A446/0B51A4
L_14A449:
    ASMCALL     $8FDC, WAIT #2              ; 14A449/D2DC8F // Set pose (respect facing)
    .byte       $24                         ; 14A44C/24
    INC2POSE    WAIT #2                     ; 14A44D/92
    A_JMP       L_14A449                    ; 14A44E/1749A4

L_14A451:
    ASMCALL     $8FDC, WAIT #2              ; 14A451/D2DC8F // Set pose (respect facing)
    .byte       $28                         ; 14A454/28
    INC2POSE    WAIT #2                     ; 14A455/92
    A_JMP       L_14A451                    ; 14A456/1751A4

L_14A459:
    MOV         VAR0,#$3C                   ; 14A459/0D003C
    MOV         $05F9,#$80                  ; 14A45C/11F90580
    ASMCALL     $DE4B                       ; 14A460/D04BDE // Play sound effect
    .byte       $49                         ; 14A463/49
    ASMCALL     $DF61                       ; 14A464/D061DF // Load_Palette, palette, start_index, entries
    .word       $A4AE                       ; 14A467/AEA4
    .byte       $10                         ; 14A469/10
    .byte       $04                         ; 14A46A/04
    ONTICK      $14A4C3                     ; 14A46B/08C3A414
    ASMCALL     $9DA3                       ; 14A46F/D0A39D
    TABLEJSR    #2                          ; 14A472/1002
    .word       L_14A4A4                    ; 14A474/A4A4
    .word       L_14A4A9                    ; 14A476/A9A4
    ASMCALL     $885C, WAIT #4              ; 14A478/D45C88 // Set Kirby's Y velocity
    .word       $FC00                       ; 14A47B/00FC
    ASMCALL     $885C, WAIT #4              ; 14A47D/D45C88 // Set Kirby's Y velocity
    .word       $FD00                       ; 14A480/00FD
    INC2POSE                                ; 14A482/90
    ASMCALL     $885C, WAIT #4              ; 14A483/D45C88 // Set Kirby's Y velocity
    .word       $FE00                       ; 14A486/00FE
    ASMCALL     $885C, WAIT #4              ; 14A488/D45C88 // Set Kirby's Y velocity
    .word       $FF00                       ; 14A48B/00FF
    INC2POSE                                ; 14A48D/90
    ASMCALL     $885C, WAIT #4              ; 14A48E/D45C88 // Set Kirby's Y velocity
    .word       $0100                       ; 14A491/0001
    ASMCALL     $885C, WAIT #4              ; 14A493/D45C88 // Set Kirby's Y velocity
    .word       $0200                       ; 14A496/0002
    INC2POSE                                ; 14A498/90
    ASMCALL     $885C, WAIT #4              ; 14A499/D45C88 // Set Kirby's Y velocity
    .word       $0300                       ; 14A49C/0003
    ASMCALL     $885C, WAIT #4              ; 14A49E/D45C88 // Set Kirby's Y velocity
    .word       $0400                       ; 14A4A1/0004
    HALT                                    ; 14A4A3/09

L_14A4A4:
    ASMCALL     $8FDC                       ; 14A4A4/D0DC8F // Set pose (respect facing)
    .byte       $2C                         ; 14A4A7/2C
    A_RTS                                   ; 14A4A8/19

L_14A4A9:
    ASMCALL     $8FDC, WAIT #2              ; 14A4A9/D2DC8F // Set pose (respect facing)
    .byte       $3A                         ; 14A4AC/3A
    A_RTS                                   ; 14A4AD/19

L_14A4AE:
    .byte $FF,$30,$21,$01

KirbyStateEA:
    ASMCALL     $86FB                       ; 14A4B2/D0FB86 // Zero Kirby's X velocity
    WAIT        #6                          ; 14A4B5/0606
    INC2POSE    WAIT #2                     ; 14A4B7/92
    INC2POSE    WAIT #2                     ; 14A4B8/92
    INC2POSE    WAIT #2                     ; 14A4B9/92
    ADDPOSE     #-6, WAIT #15               ; 14A4BA/6FFA
KirbyStateE8:
    MOV         $05F9,#$60                  ; 14A4BC/11F90560
    A_JMP       L_14A099                    ; 14A4C0/1799A0

B14_a4c3:
    ldx $05f7
    ldy B14_a4f6,x
    jsr $87ba
    jsr $95cd
    jsr $9016
    bcc B14_a4d9
    ldx #$ea
    jmp $8ce8
B14_a4d9:
    jsr $904a
    jsr $9021
    jsr $a41c
    bcc B14_a4e9
    ldx #$e8
    jmp $8ce8
B14_a4e9:
    jsr $89d9
    bcc B14_a4f3
    ldx #$eb
    jmp $8ce8
B14_a4f3:
    jmp $805b

B14_a4f6:
    .byte $09,$0a

KirbyStateEE:
    ZEROVEL                                 ; 14A4F8/38
    ENDTICK                                 ; 14A4F9/0E
    MOV         kirby_05E0,#$00                  ; 14A4FA/11E00500
    A_AND       $05FB,#$BF                  ; 14A4FE/16FB0500BF
    MOV         $0597,#$FF                  ; 14A503/119705FF
    MOV         $059F,#$FF                  ; 14A507/119F05FF
    MOV         $05FC,#$04                  ; 14A50B/11FC0504
    ASMCALL     B14_a186                    ; 14A50F/D086A1 // Freeze all objects in slots 9 through 17 (enemies, enemy projectiles and misc)
    ASMCALL     $A595                       ; 14A512/D095A5 // Store Kirby's position
    ONMOVE      $D864                       ; 14A515/2364D8
    ONPOSITION  $D97D                       ; 14A518/217DD9
    ASMCALL     $DE4B                       ; 14A51B/D04BDE // Play sound effect
    .byte       $20                         ; 14A51E/20
    ASMCALL     PlayMusic                       ; 14A51F/D045DE // Play music
    .byte       $FF                         ; 14A522/FF
    ASMCALL     $E2D9                       ; 14A523/D0D9E2 // Unknown ASM $E2D9 (Set $05A0 and $05A1)
    .byte       $07                         ; 14A526/07
    ASMCALL     $A58A                       ; 14A527/D08AA5 // Destroy all objects in slots 3, 4 and 5 (Kirby particles)
    ASMCALL     $9CB3                       ; 14A52A/D0B39C // Load some palette? (Kirby's palette?)
    ASMCALL     $C977                       ; 14A52D/D077C9
    ASMCALL     $9952                       ; 14A530/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14A533/00
    .byte       $00                         ; 14A534/00
    .byte       $0C                         ; 14A535/0C
    .byte       $00                         ; 14A536/00
    WAIT        #60                         ; 14A537/063C
    ASMCALL     $DF0D                       ; 14A539/D00DDF // Destroy all other objects
    MOV         VAR1,#$00                   ; 14A53C/0D0100
    LOOP        #8                          ; 14A53F/0108
        ASMCALL     $99D8                       ; 14A541/D0D899 // Create new kirby particle (any slot) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 14A544/00
        .byte       $00                         ; 14A545/00
        .byte       $10                         ; 14A546/10
        .byte       $00                         ; 14A547/00
        ADD         VAR1,#32                    ; 14A548/13010220
    ENDLOOP                                 ; 14A54C/02
    ASMCALL     PlayMusic                       ; 14A54D/D045DE // Play music
    .byte       $27                         ; 14A550/27
    SPRITEMAP   $1C8DA6                     ; 14A551/1AA68D1C
    TASK        TASK_14A575                 ; 14A555/0775A5
    TASK        TASK_14A56D                 ; 14A558/076DA5
    TASK        TASK_14A580                 ; 14A55B/0780A5
    WAIT        #210                        ; 14A55E/06D2
    LOOP        #4                          ; 14A560/0104
        ASMCALL     $C996                       ; 14A562/D096C9 // Palette fade (out?) step
        WAIT        #4                          ; 14A565/0604
    ENDLOOP                                 ; 14A567/02
    MOV         $056A,#$03                  ; 14A568/116A0503
    END                                     ; 14A56C/00

TASK_14A56D:
    SETPOSE     #$4A, WAIT #8               ; 14A56D/584A
    INCPOSE     WAIT #8                     ; 14A56F/78
    INCPOSE     WAIT #8                     ; 14A570/78
    INCPOSE     WAIT #8                     ; 14A571/78
    A_JMP       TASK_14A56D                 ; 14A572/176DA5

TASK_14A575:
    SETYVEL     #$FC00, WAIT #1             ; 14A575/C100FC
L_14A578:
    ADDYVEL     #$002A                      ; 14A578/2F2A00
    WAIT        #1                          ; 14A57B/0601
    A_JMP       L_14A578                    ; 14A57D/1778A5

TASK_14A580:
    ASMCALL     $99D8, WAIT #8              ; 14A580/D8D899 // Create new kirby particle (any slot) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14A583/00
    .byte       $00                         ; 14A584/00
    .byte       $11                         ; 14A585/11
    .byte       $00                         ; 14A586/00
    A_JMP       TASK_14A580                 ; 14A587/1780A5

B14_a58a:
    ldx #$03
    @B14_a58c:
    jsr OBJ_Destroy
    inx
    cpx #$06
    bcc @B14_a58c
    rts

B14_a595:
    lda $6075
    sta a:OBJ_x_lo+1
    lda $6087
    sta a:OBJ_x_hi+1
    lda $6099
    sta a:OBJ_y_lo+1
    lda $60ab
    sta a:OBJ_y_hi+1
    rts

KST00_EnterDoor:
    ASMCALL     B14_a186                    ; 14A5AE/D086A1 // Freeze all objects in slots 9 through 17 (enemies, enemy projectiles and misc)
    ASMCALL     B14_a162                    ; 14A5B1/D062A1 // Check if current room ID is 0x07 (multilevel hub)
    JEQ         L_14A5BE                    ; 14A5B4/0ABEA5
    ASMCALL     $DE4B                       ; 14A5B7/D04BDE // Play sound effect
    .byte       $43                         ; 14A5BA/43
    A_JMP       L_14A5C2                    ; 14A5BB/17C2A5

L_14A5BE:
    ASMCALL     $DE4B                       ; 14A5BE/D04BDE // Play sound effect
    .byte       $07                         ; 14A5C1/07
L_14A5C2:
    ASMCALL     $A6C0                       ; 14A5C2/D0C0A6
    JEQ         L_14A5CB                    ; 14A5C5/0ACBA5
    TASK        TASK_14A6B5                 ; 14A5C8/07B5A6
L_14A5CB:
    ASMCALL     $A6CC                       ; 14A5CB/D0CCA6
    TABLEJSR    #8                          ; 14A5CE/1008
    .word       L_14A61E                    ; 14A5D0/1EA6
    .word       L_14A631                    ; 14A5D2/31A6
    .word       L_14A644                    ; 14A5D4/44A6
    .word       L_14A657                    ; 14A5D6/57A6
    .word       L_14A66A                    ; 14A5D8/6AA6
    .word       L_14A67D                    ; 14A5DA/7DA6
    .word       L_14A690                    ; 14A5DC/90A6
    .word       L_14A69F                    ; 14A5DE/9FA6
    ASMCALL     $DFA3                       ; 14A5E0/D0A3DF // SUB reg, #arg2, arg1
    .word       kirby_05E0                       ; 14A5E3/E005
    .byte       $0D                         ; 14A5E5/0D
    JEQ         L_14A5FF                    ; 14A5E6/0AFFA5
    SPRITEMAP   $1C9F16                     ; 14A5E9/1A169F1C
    MOV         $6620,#$01                  ; 14A5ED/11206601
    SETPOSE     #$00, WAIT #2               ; 14A5F1/5200
    MOV         $6620,#$02                  ; 14A5F3/11206602
    SETPOSE     #$00, WAIT #2               ; 14A5F7/5200
    MOV         $6620,#$03                  ; 14A5F9/11206603
    INC2POSE    WAIT #4                     ; 14A5FD/94
    INC2POSE    WAIT #8                     ; 14A5FE/98
L_14A5FF:
    LOOP        #4                          ; 14A5FF/0104
        ASMCALL     $C996                       ; 14A601/D096C9 // Palette fade (out?) step
        WAIT        #4                          ; 14A604/0604
    ENDLOOP                                 ; 14A606/02
    MOV         $056A,#$01                  ; 14A607/116A0501
    ASMCALL     $A6C0                       ; 14A60B/D0C0A6
    JEQ         L_14A61D                    ; 14A60E/0A1DA6
    ASMCALL     $DE4B                       ; 14A611/D04BDE // Play sound effect
    .byte       $FF                         ; 14A614/FF
    A_AND       $05FB,#$BF                  ; 14A615/16FB0500BF
    ASMCALL     $DF0D                       ; 14A61A/D00DDF // Destroy all other objects
L_14A61D:
    END                                     ; 14A61D/00

L_14A61E:
    ASMCALL     $99EA                       ; 14A61E/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 14A621/08
    .byte       $00                         ; 14A622/00
    .byte       $05                         ; 14A623/05
    .byte       $00                         ; 14A624/00
    ASMCALL     $DE4B                       ; 14A625/D04BDE // Play sound effect
    .byte       $1A                         ; 14A628/1A
    ASMCALL     $8FDC, WAIT #6              ; 14A629/D6DC8F // Set pose (respect facing)
    .byte       $50                         ; 14A62C/50
    DEC2POSE    WAIT #2                     ; 14A62D/A2
    DEC2POSE    WAIT #2                     ; 14A62E/A2
    DEC2POSE    WAIT #2                     ; 14A62F/A2
    A_RTS                                   ; 14A630/19

L_14A631:
    ASMCALL     $99EA                       ; 14A631/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 14A634/08
    .byte       $00                         ; 14A635/00
    .byte       $05                         ; 14A636/05
    .byte       $00                         ; 14A637/00
    ASMCALL     $DE4B                       ; 14A638/D04BDE // Play sound effect
    .byte       $1A                         ; 14A63B/1A
    ASMCALL     $8FDC, WAIT #6              ; 14A63C/D6DC8F // Set pose (respect facing)
    .byte       $50                         ; 14A63F/50
    DEC2POSE    WAIT #2                     ; 14A640/A2
    DEC2POSE    WAIT #2                     ; 14A641/A2
    DEC2POSE    WAIT #2                     ; 14A642/A2
    A_RTS                                   ; 14A643/19

L_14A644:
    ASMCALL     $99EA                       ; 14A644/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 14A647/08
    .byte       $00                         ; 14A648/00
    .byte       $05                         ; 14A649/05
    .byte       $00                         ; 14A64A/00
    ASMCALL     $DE4B                       ; 14A64B/D04BDE // Play sound effect
    .byte       $1A                         ; 14A64E/1A
    ASMCALL     $8FDC, WAIT #6              ; 14A64F/D6DC8F // Set pose (respect facing)
    .byte       $78                         ; 14A652/78
    DEC2POSE    WAIT #2                     ; 14A653/A2
    DEC2POSE    WAIT #2                     ; 14A654/A2
    DEC2POSE    WAIT #2                     ; 14A655/A2
    A_RTS                                   ; 14A656/19

L_14A657:
    ASMCALL     $99EA                       ; 14A657/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 14A65A/08
    .byte       $00                         ; 14A65B/00
    .byte       $05                         ; 14A65C/05
    .byte       $00                         ; 14A65D/00
    ASMCALL     $DE4B                       ; 14A65E/D04BDE // Play sound effect
    .byte       $1A                         ; 14A661/1A
    ASMCALL     $8FDC, WAIT #6              ; 14A662/D6DC8F // Set pose (respect facing)
    .byte       $7A                         ; 14A665/7A
    DEC2POSE    WAIT #2                     ; 14A666/A2
    DEC2POSE    WAIT #2                     ; 14A667/A2
    DEC2POSE    WAIT #2                     ; 14A668/A2
    A_RTS                                   ; 14A669/19

L_14A66A:
    ASMCALL     $99EA                       ; 14A66A/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 14A66D/08
    .byte       $00                         ; 14A66E/00
    .byte       $05                         ; 14A66F/05
    .byte       $00                         ; 14A670/00
    ASMCALL     $DE4B                       ; 14A671/D04BDE // Play sound effect
    .byte       $1A                         ; 14A674/1A
    ASMCALL     $8FDC, WAIT #6              ; 14A675/D6DC8F // Set pose (respect facing)
    .byte       $68                         ; 14A678/68
    DEC2POSE    WAIT #2                     ; 14A679/A2
    DEC2POSE    WAIT #2                     ; 14A67A/A2
    DEC2POSE    WAIT #2                     ; 14A67B/A2
    A_RTS                                   ; 14A67C/19

L_14A67D:
    ASMCALL     $99EA                       ; 14A67D/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 14A680/08
    .byte       $00                         ; 14A681/00
    .byte       $05                         ; 14A682/05
    .byte       $00                         ; 14A683/00
    ASMCALL     $DE4B                       ; 14A684/D04BDE // Play sound effect
    .byte       $1A                         ; 14A687/1A
    ASMCALL     $8FDC, WAIT #12             ; 14A688/DCDC8F // Set pose (respect facing)
    .byte       $6A                         ; 14A68B/6A
    DEC2POSE    WAIT #4                     ; 14A68C/A4
    DEC2POSE    WAIT #4                     ; 14A68D/A4
    DEC2POSE    WAIT #4                     ; 14A68E/A4
    A_RTS                                   ; 14A68F/19

L_14A690:
    JSL         L_18B2BA                    ; 14A690/04BAB218
    ASMCALL     $8FDC, WAIT #6              ; 14A694/D6DC8F // Set pose (respect facing)
    .byte       $38                         ; 14A697/38
    INC2POSE    WAIT #3                     ; 14A698/93
    INC2POSE    WAIT #3                     ; 14A699/93
    MOV         kirby_05E0,#$00                  ; 14A69A/11E00500
    A_RTS                                   ; 14A69E/19

L_14A69F:
    ASMCALL     $9952                       ; 14A69F/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14A6A2/00
    .byte       $00                         ; 14A6A3/00
    .byte       $03                         ; 14A6A4/03
    .byte       $00                         ; 14A6A5/00
    WAIT        #16                         ; 14A6A6/0610
    SPRITEMAP   $1A8676                     ; 14A6A8/1A76861A
    ASMCALL     $8FDC                       ; 14A6AC/D0DC8F // Set pose (respect facing)
    .byte       $00                         ; 14A6AF/00
    MOV         kirby_05E0,#$02                  ; 14A6B0/11E00502
    A_RTS                                   ; 14A6B4/19

TASK_14A6B5:
    LOOP        #32                         ; 14A6B5/0120
        ADD         $0603,#-8                   ; 14A6B7/16030602F8
        WAIT        #1                          ; 14A6BC/0601
    ENDLOOP                                 ; 14A6BE/02
    ENDTASK                                 ; 14A6BF/0C

B14_a6c0:
    ldy #$00
    lda $056c
    cmp #$10
    bne B14_a6ca
    iny
    B14_a6ca:
    tya
    rts

B14_a6cc:
    lda kirby_05E0
    ldy $05e1
    cpy #$0d
    bne B14_a6f3
    ldx #$00
    cmp #$00
    beq B14_a6fe
    inx
    cmp #$02
    beq B14_a6fe
    inx
    cmp #$03
    beq B14_a6fe
    inx
    cmp #$04
    beq B14_a6fe
    inx
    cmp #$05
    beq B14_a6fe
    inx
    bne B14_a6fe
B14_a6f3:
    ldx #$06
    cmp #$01
    beq B14_a6fe
    inx
    cmp #$0b
    bne B14_a700
B14_a6fe:
    txa
    rts
B14_a700:
    lda #$ff
    rts

L_14A703:
    ASMCALL     $A715                       ; 14A703/D015A7
    ASMCALL     $9CB3                       ; 14A706/D0B39C // Load some palette? (Kirby's palette?)
    ASMCALL     $DE4B                       ; 14A709/D04BDE // Play sound effect
    .byte       $29                         ; 14A70C/29
    SPRITEMAP   $1A8846                     ; 14A70D/1A46881A
    JML         L_18B3B8                    ; 14A711/03B8B318

B14_a715:
    lda #$03
    sta kirby_copy_ability
    lda #$00
    sta $0598
    lda $05fb
    ora #$20
    sta $05fb
    jmp $9e59
B14_a72a:
    lda $05fb
    and #$bf
    sta $05fb
    ldx #$03
B14_a734:
    lda $6128,x
    cmp #$02
    bne B14_a745
    lda $6200,x
    cmp #$19
    bne B14_a745
    jsr OBJ_Destroy
B14_a745:
    inx
    cpx #$06
    bcc B14_a734
    rts

KST01_DiscardAbility:
    A_JSR       L_14A763                    ; 14A74B/1863A7
KST02_Land:
    ASMCALL     $9BF7                       ; 14A74E/D0F79B // Get Kirby's sub-state (0=STOP, 1=WALK, 2=DASH, 3=FALL, 4=WATER_STOP, 5=WATER_WALK, 6=SWIM, 7=LEAVE_WATER)
    TABLEJMP    #8                          ; 14A751/0F08
    .word       KST03_Idle                  ; 14A753/73A7
    .word       KST04_BeginWalk             ; 14A755/16A8
    .word       KST07_Dash                  ; 14A757/45A9
    .word       KST0B_Fall                  ; 14A759/BCAA
    .word       KirbyState18                ; 14A75B/E3AF
    .word       KirbyState19                ; 14A75D/42B0
    .word       KirbyState1A                ; 14A75F/EEB0
    .word       L_14AEDA                    ; 14A761/DAAE
L_14A763:
    MOV         kirby_05E0,#$00             ; 14A763/11E00500
    MOV         kirby_copy_ability,#$FF     ; 14A767/11E305FF
    SPRITEMAP   $1A8000                     ; 14A76B/1A00801A
    ASMCALL     $9CB3                       ; 14A76F/D0B39C // Load some palette? (Kirby's palette?)
    A_RTS                                   ; 14A772/19

KST03_Idle:
    MOV         $05E1,#$00                  ; 14A773/11E10500
    ONTICK      $14A79B                     ; 14A777/089BA714
    ASMCALL     $8015                       ; 14A77B/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_14A789                    ; 14A77E/0A89A7
    ASMCALL     $801F                       ; 14A781/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0C                         ; 14A784/0C
    .byte       $2E                         ; 14A785/2E
    A_JSR       $8003                       ; 14A786/180380
L_14A789:
    ASMCALL     $A804                       ; 14A789/D004A8 // Set Kirby's idle pose
    JEQ         SCR01_IdleBlink             ; 14A78C/0A90A7
    HALT                                    ; 14A78F/09

SCR01_IdleBlink:
    WAIT        #80                         ; 14A790/0650
    INC2POSE    WAIT #2                     ; 14A792/92
    DEC2POSE    WAIT #15                    ; 14A793/AF
    INC2POSE    WAIT #2                     ; 14A794/92
    DEC2POSE    WAIT #15                    ; 14A795/AF
    INC2POSE    WAIT #2                     ; 14A796/92
    DEC2POSE                                ; 14A797/A0
    A_JMP       SCR01_IdleBlink             ; 14A798/1790A7

;L_14A79B!!!
B14_a79b:
    jsr $9c5a
    jsr $8fcc
    jsr $95cd
    jsr $9021
    jsr $8b4e
    bcc B14_a7b1
    ldx #$0b
    jmp $8ce8
B14_a7b1:
    jsr $8b1a
    bcc B14_a7bb
    ldx #$04
    jmp $8ce8
B14_a7bb:
    jsr $8c7d
    bcc B14_a7c5
    ldx #$11
    jmp $8ce8
B14_a7c5:
    jsr $8b10
    bcc B14_a7cf
    ldx #$0f
    jmp $8ce8
B14_a7cf:
    jsr $8ae8
    bcc B14_a7d9
    ldx #$09
    jmp $8ce8
B14_a7d9:
    jsr $8af2
    bcc B14_a7e3
    ldx #$4b
    jmp $8ce8
B14_a7e3:
    jsr $8a15
    bcc B14_a7ed
    ldx #$00
    jmp $8ce8
B14_a7ed:
    jsr $8b06
    bcc B14_a7f7
    ldx #$12
    jmp $8ce8
B14_a7f7:
    jsr $8a5d
    bcc B14_a801
    ldx #$03
    jmp $8ce8
B14_a801:
    jmp $805b
B14_a804:
    jsr $8ffb
    pha
    tax
    lda B14_a811, x
    sta $62c7
    pla
    rts
B14_a811:
    .byte $00,$04,$06,$08,$0A

KST04_BeginWalk:
    MOV         REG,$05F8                   ; 14A816/1CF805
    JEQ         KST05_Walk                  ; 14A819/0A20A8
    ASMCALL     $DE4B                       ; 14A81C/D04BDE // Play sound effect
    .byte       $31                         ; 14A81F/31
KST05_Walk:
    MOV         $05E1,#$01                  ; 14A820/11E10501
    ONTICK      $14A8B9                     ; 14A824/08B9A814
    MOV         $05BF,#$00                  ; 14A828/11BF0500
    ASMCALL     $8015                       ; 14A82C/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_14A83A                    ; 14A82F/0A3AA8
    ASMCALL     $801F                       ; 14A832/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0C                         ; 14A835/0C
    .byte       $2E                         ; 14A836/2E
    A_JSR       $8003                       ; 14A837/180380
L_14A83A:
    ASMCALL     $9B96                       ; 14A83A/D0969B
L_14A83D:
    TABLEJMP    #15                         ; 14A83D/0F0F
    .word       L_14A85D                    ; 14A83F/5DA8
    .word       L_14A85D                    ; 14A841/5DA8
    .word       L_14A85D                    ; 14A843/5DA8
    .word       L_14A87D                    ; 14A845/7DA8
    .word       L_14A888                    ; 14A847/88A8
    .word       L_14A88D                    ; 14A849/8DA8
    .word       L_14A88D                    ; 14A84B/8DA8
    .word       L_14A88D                    ; 14A84D/8DA8
    .word       L_14A898                    ; 14A84F/98A8
    .word       L_14A888                    ; 14A851/88A8
    .word       L_14A8A3                    ; 14A853/A3A8
    .word       L_14A8A3                    ; 14A855/A3A8
    .word       L_14A8A3                    ; 14A857/A3A8
    .word       L_14A8AE                    ; 14A859/AEA8
    .word       L_14A888                    ; 14A85B/88A8
L_14A85D:
    ASMCALL     $8FF5                       ; 14A85D/D0F58F // Return (frame_counter & 3)
    TABLEJMP    #4                          ; 14A860/0F04
    .word       L_14A86A                    ; 14A862/6AA8
    .word       L_14A86E                    ; 14A864/6EA8
    .word       L_14A872                    ; 14A866/72A8
    .word       L_14A876                    ; 14A868/76A8
L_14A86A:
    ASMCALL     $8FDC, WAIT #10             ; 14A86A/DADC8F // Set pose (respect facing)
    .byte       $12                         ; 14A86D/12
L_14A86E:
    ASMCALL     $8FDC, WAIT #8              ; 14A86E/D8DC8F // Set pose (respect facing)
    .byte       $14                         ; 14A871/14
L_14A872:
    ASMCALL     $8FDC, WAIT #10             ; 14A872/DADC8F // Set pose (respect facing)
    .byte       $16                         ; 14A875/16
L_14A876:
    ASMCALL     $8FDC, WAIT #8              ; 14A876/D8DC8F // Set pose (respect facing)
    .byte       $14                         ; 14A879/14
    A_JMP       L_14A86A                    ; 14A87A/176AA8

L_14A87D:
    ASMCALL     $8FDC, WAIT #6              ; 14A87D/D6DC8F // Set pose (respect facing)
    .byte       $18                         ; 14A880/18
L_14A881:
    INC2POSE    WAIT #6                     ; 14A881/96
    INC2POSE    WAIT #6                     ; 14A882/96
    DEC2POSE    WAIT #6                     ; 14A883/A6
    DEC2POSE    WAIT #6                     ; 14A884/A6
    A_JMP       L_14A881                    ; 14A885/1781A8

L_14A888:
    ASMCALL     $8FDC                       ; 14A888/D0DC8F // Set pose (respect facing)
    .byte       $1E                         ; 14A88B/1E
    HALT                                    ; 14A88C/09

L_14A88D:
    ASMCALL     $8FDC, WAIT #4              ; 14A88D/D4DC8F // Set pose (respect facing)
    .byte       $12                         ; 14A890/12
L_14A891:
    INC2POSE    WAIT #3                     ; 14A891/93
    INC2POSE    WAIT #4                     ; 14A892/94
    DEC2POSE    WAIT #3                     ; 14A893/A3
    DEC2POSE    WAIT #4                     ; 14A894/A4
    A_JMP       L_14A891                    ; 14A895/1791A8

L_14A898:
    ASMCALL     $8FDC, WAIT #4              ; 14A898/D4DC8F // Set pose (respect facing)
    .byte       $18                         ; 14A89B/18
L_14A89C:
    INC2POSE    WAIT #4                     ; 14A89C/94
    INC2POSE    WAIT #4                     ; 14A89D/94
    DEC2POSE    WAIT #4                     ; 14A89E/A4
    DEC2POSE    WAIT #4                     ; 14A89F/A4
    A_JMP       L_14A89C                    ; 14A8A0/179CA8

L_14A8A3:
    ASMCALL     $8FDC, WAIT #3              ; 14A8A3/D3DC8F // Set pose (respect facing)
    .byte       $12                         ; 14A8A6/12
L_14A8A7:
    INC2POSE    WAIT #2                     ; 14A8A7/92
    INC2POSE    WAIT #3                     ; 14A8A8/93
    DEC2POSE    WAIT #2                     ; 14A8A9/A2
    DEC2POSE    WAIT #3                     ; 14A8AA/A3
    A_JMP       L_14A8A7                    ; 14A8AB/17A7A8

L_14A8AE:
    ASMCALL     $8FDC, WAIT #3              ; 14A8AE/D3DC8F // Set pose (respect facing)
    .byte       $18                         ; 14A8B1/18
L_14A8B2:
    INC2POSE    WAIT #3                     ; 14A8B2/93
    INC2POSE    WAIT #3                     ; 14A8B3/93
    DEC2POSE    WAIT #3                     ; 14A8B4/A3
    DEC2POSE    WAIT #3                     ; 14A8B5/A3
    A_JMP       L_14A8B2                    ; 14A8B6/17B2A8

B14_a8b9:
    jsr $8765
    jsr $95cd
    jsr $8bfa
    bcc B14_a8c9
    ldx #$03
    jmp $8ce8
B14_a8c9:
    jsr $8b4e
    bcc B14_a8d3
    ldx #$0b
    jmp $8ce8
B14_a8d3:
    jsr $8a6c
    bcc B14_a8dd
    ldx #$03
    jmp $8ce8
B14_a8dd:
    jsr $8a78
    bcc B14_a8e7
    ldx #$08
    jmp $8ce8
B14_a8e7:
    jsr $8a86
    bcc B14_a8f1
    ldx #$06
    jmp $8ce8
B14_a8f1:
    jsr $8c7d
    bcc B14_a8fb
    ldx #$11
    jmp $8ce8
B14_a8fb:
    jsr $8b10
    bcc B14_a905
    ldx #$0f
    jmp $8ce8
B14_a905:
    jsr $8ae8
    bcc B14_a90f
    ldx #$09
    jmp $8ce8
B14_a90f:
    jsr $8af2
    bcc B14_a919
    ldx #$4b
    jmp $8ce8
B14_a919:
    jsr $8a15
    bcc B14_a923
    ldx #$00
    jmp $8ce8
B14_a923:
    jsr $8b06
    bcc B14_a92d
    ldx #$12
    jmp $8ce8
B14_a92d:
    jsr $8a5d
    bcc B14_a937
    ldx #$05
    jmp $8ce8
B14_a937:
    jmp $805b

KST06_BeginDash:
    ASMCALL     $DE4B                       ; 14A93A/D04BDE // Play sound effect
    .byte       $37                         ; 14A93D/37
    ASMCALL     $9952                       ; 14A93E/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14A941/00
    .byte       $00                         ; 14A942/00
    .byte       $01                         ; 14A943/01
    .byte       $00                         ; 14A944/00
KST07_Dash:
    MOV         $05E1,#$02                  ; 14A945/11E10502
    ONTICK      $14A961                     ; 14A949/0861A914
    ASMCALL     $8015                       ; 14A94D/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_14A95B                    ; 14A950/0A5BA9
    ASMCALL     $801F                       ; 14A953/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0C                         ; 14A956/0C
    .byte       $2E                         ; 14A957/2E
    A_JSR       $8003                       ; 14A958/180380
L_14A95B:
    ASMCALL     $9BAA                       ; 14A95B/D0AA9B
    A_JMP       L_14A83D                    ; 14A95E/173DA8

B14_a961:
    jsr $8781
    jsr $95cd
    jsr $8bfa
    bcc B14_a971
    ldx #$03
    jmp $8ce8
B14_a971:
    jsr $8b4e
    bcc B14_a97b
    ldx #$0b
    jmp $8ce8
B14_a97b:
    jsr $8a78
    bcc B14_a985
    ldx #$08
    jmp $8ce8
B14_a985:
    jsr $8a4a
    bcc B14_a98f
    ldx #$04
    jmp $8ce8
B14_a98f:
    jsr $8c7d
    bcc B14_a999
    ldx #$11
    jmp $8ce8
B14_a999:
    jsr $8b10
    bcc B14_a9a3
    ldx #$0f
    jmp $8ce8
B14_a9a3:
    jsr $8ae8
    bcc B14_a9ad
    ldx #$09
    jmp $8ce8
B14_a9ad:
    jsr $8af2
    bcc B14_a9b7
    ldx #$4b
    jmp $8ce8
B14_a9b7:
    jsr $8a15
    bcc B14_a9c1
    ldx #$00
    jmp $8ce8
B14_a9c1:
    jsr $8b06
    bcc B14_a9cb
    ldx #$12
    jmp $8ce8
B14_a9cb:
    jsr $8a5d
    bcc B14_a9d5
    ldx #$07
    jmp $8ce8
B14_a9d5:
    jmp $805b

KST08_Skid:
    MOV         $05E1,#$03                  ; 14A9D8/11E10503
    ASMCALL     $DE4B                       ; 14A9DC/D04BDE // Play sound effect
    .byte       $31                         ; 14A9DF/31
    ONTICK      B14_a9f0                    ; 14A9E0/08F0A914
    ASMCALL     $8FDC                       ; 14A9E4/D0DC8F // Set pose (respect facing)
    .byte       $20                         ; 14A9E7/20
    ASMCALL     $9952                       ; 14A9E8/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14A9EB/00
    .byte       $00                         ; 14A9EC/00
    .byte       $01                         ; 14A9ED/01
    .byte       $00                         ; 14A9EE/00
    HALT                                    ; 14A9EF/09

B14_a9f0:
    jsr $879d
    jsr $95cd
    jsr $8bfa
    bcc B14_aa00
    ldx #$03
    jmp $8ce8
B14_aa00:
    jsr $8b4e
    bcc B14_aa0a
    ldx #$0b
    jmp $8ce8
B14_aa0a:
    jsr $8a6c
    bcc B14_aa14
    ldx #$03
    jmp $8ce8
B14_aa14:
    jsr $8ae8
    bcc B14_aa1e
    ldx #$09
    jmp $8ce8
B14_aa1e:
    jsr $8af2
    bcc B14_aa28
    ldx #$4b
    jmp $8ce8
B14_aa28:
    jmp $805b

KST09_Jump:
    MOV         $05E1,#$04                  ; 14AA2B/11E10504
    ONTICK      $14AA5C                     ; 14AA2F/085CAA14
    ASMCALL     $885C                       ; 14AA33/D05C88 // Set Kirby's Y velocity
    .word       $FC70                       ; 14AA36/70FC
    ASMCALL     $DE4B                       ; 14AA38/D04BDE // Play sound effect
    .byte       $04                         ; 14AA3B/04
    SETPOSE     #$22                        ; 14AA3C/5022
    WAIT        #23                         ; 14AA3E/0617
KST0A_JumpPeak:
    ASMCALL     $885C                       ; 14AA40/D05C88 // Set Kirby's Y velocity
    .word       $FF50                       ; 14AA43/50FF
    ONTICK      $14AA66                     ; 14AA45/0866AA14
    WAIT        #5                          ; 14AA49/0605
    ASMCALL     $884D                       ; 14AA4B/D04D88 // Zero Kirby's Y velocity
    ONTICK      $14AAE2                     ; 14AA4E/08E2AA14
    SETPOSE     #$24, WAIT #4               ; 14AA52/5424
    INC2POSE    WAIT #4                     ; 14AA54/94
    INC2POSE    WAIT #4                     ; 14AA55/94
    MOV         VAR0,#$11                   ; 14AA56/0D0011
    A_JMP       L_14AABF                    ; 14AA59/17BFAA

B14_aa5c:
    jsr $8a40
    bcc B14_aa66
    ldx #$0a
    jmp $8ce8
B14_aa66:
    ldy #$00
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $873e
    jsr $95cd
    jsr $9021
    jsr $8bab
    bcc B14_aa87
    ldx #$02
    jmp $8ce8
B14_aa87:
    jsr $8bd3
    bcc B14_aa91
    ldx #$0b
    jmp $8ce8
B14_aa91:
    jsr $8c61
    bcc B14_aa9b
    ldx #$0b
    jmp $8ce8
B14_aa9b:
    jsr $8c7d
    bcc B14_aaa5
    ldx #$11
    jmp $8ce8
B14_aaa5:
    jsr $8af2
    bcc B14_aaaf
    ldx #$4b
    jmp $8ce8
B14_aaaf:
    jsr $8a15
    bcc B14_aab9
    ldx #$00
    jmp $8ce8
B14_aab9:
    jmp $805b

KST0B_Fall:
    MOV         VAR0,#$1C                   ; 14AABC/0D001C
L_14AABF:
    MOV         $05E1,#$05                  ; 14AABF/11E10505
    ONTICK      $14AAE2                     ; 14AAC3/08E2AA14
    ASMCALL     $8015                       ; 14AAC7/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_14AAD5                    ; 14AACA/0AD5AA
    ASMCALL     $801F                       ; 14AACD/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0C                         ; 14AAD0/0C
    .byte       $2E                         ; 14AAD1/2E
    A_JSR       $8003                       ; 14AAD2/180380
L_14AAD5:
    SETPOSE     #$2A                        ; 14AAD5/502A
L_14AAD7:
    ASMCALL     $9D82, WAIT #1              ; 14AAD7/D1829D // Check if Kirby's Y velocity is negative (moving upwards)
    JNE         L_14AAD7                    ; 14AADA/0BD7AA
    WAIT        VAR0                        ; 14AADD/1F00
    A_JMP       L_14AB4C                    ; 14AADF/174CAB

B14_aae2:
    ldy #$00
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $873e
    jsr $95cd
    jsr $9034
    jsr $8bab
    bcc B14_ab03
    ldx #$02
    jmp $8ce8
B14_ab03:
    jsr $8bd3
    bcc B14_ab0d
    ldx #$0b
    jmp $8ce8
B14_ab0d:
    jsr $88d5
    bcc B14_ab17
    ldx #$0b
    jmp $8ce8
B14_ab17:
    jsr $8c7d
    bcc B14_ab21
    ldx #$11
    jmp $8ce8
B14_ab21:
    jsr $8af2
    bcc B14_ab2b
    ldx #$4b
    jmp $8ce8
B14_ab2b:
    jsr $8b06
    bcc B14_ab35
    ldx #$12
    jmp $8ce8
B14_ab35:
    jsr $89d9
    bcc B14_ab3f
    ldx #$17
    jmp $8ce8
B14_ab3f:
    jsr $8a15
    bcc B14_ab49
    ldx #$00
    jmp $8ce8
B14_ab49:
    jmp $805b

L_14AB4C:
    MOV         $05E1,#$05                  ; 14AB4C/11E10505
    ASMCALL     $9EE1                       ; 14AB50/D0E19E // Clear "landed head-first on enemy" flag
    ONTICK      $14AB5A                     ; 14AB53/085AAB14
    SETPOSE     #$2C                        ; 14AB57/502C
    HALT                                    ; 14AB59/09

B14_ab5a:
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $873e
    jsr $95cd
    jsr $abc5
    jsr $940e
    jsr $9021
    jsr $8bab
    bcc B14_ab7c
    ldx #$0d
    jmp $8ce8
B14_ab7c:
    jsr $8bd3
    bcc B14_ab86
    ldx #$0b
    jmp $8ce8
B14_ab86:
    jsr $88ca
    bcc B14_ab90
    ldx #$0c
    jmp $8ce8
B14_ab90:
    jsr $8c7d
    bcc B14_ab9a
    ldx #$11
    jmp $8ce8
B14_ab9a:
    jsr $8af2
    bcc B14_aba4
    ldx #$4b
    jmp $8ce8
B14_aba4:
    jsr $8b06
    bcc B14_abae
    ldx #$12
    jmp $8ce8
B14_abae:
    jsr $89d9
    bcc B14_abb8
    ldx #$17
    jmp $8ce8
B14_abb8:
    jsr $8a15
    bcc B14_abc2
    ldx #$00
    jmp $8ce8
B14_abc2:
    jmp $805b
B14_abc5:
    lda #$ce
    ldy #$ab
    ldx #$02
    jmp $9c72

B14_abce:
    .byte $06,$00,$00,$00,$00,$04,$08

KST0C_LandHeadEnemy:
    ASMCALL     $885C                       ; 14ABD5/D05C88 // Set Kirby's Y velocity
    .word       $FD40                       ; 14ABD8/40FD
    ONTICK      $14ABE1                     ; 14ABDA/08E1AB14
    SETPOSE     #$2C                        ; 14ABDE/502C
    HALT                                    ; 14ABE0/09

B14_abe1:
    ldy #$00
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $873e
    jsr $95cd
    jsr $9034
    jsr $8bab
    bcc B14_ac02
    ldx #$02
    jmp $8ce8
B14_ac02:
    jsr $8bd3
    bcc B14_ac0c
    ldx #$0b
    jmp $8ce8
B14_ac0c:
    jsr $88c1
    bcc B14_ac16
    ldx #$0b
    jmp $8ce8
B14_ac16:
    jsr $8c7d
    bcc B14_ac20
    ldx #$11
    jmp $8ce8
B14_ac20:
    jsr $8af2
    bcc B14_ac2a
    ldx #$4b
    jmp $8ce8
B14_ac2a:
    jsr $8b06
    bcc B14_ac34
    ldx #$12
    jmp $8ce8
B14_ac34:
    jsr $89d9
    bcc B14_ac3e
    ldx #$17
    jmp $8ce8
B14_ac3e:
    jsr $8a15
    bcc B14_ac48
    ldx #$00
    jmp $8ce8
B14_ac48:
    jmp $805b

KST0D_LandHead:
    MOV         $05E1,#$05                  ; 14AC4B/11E10505
    MOV         $05E4,#$FF                  ; 14AC4F/11E405FF
    ONTICK      $14AC6C                     ; 14AC53/086CAC14
    ASMCALL     $DE4B                       ; 14AC57/D04BDE // Play sound effect
    .byte       $55                         ; 14AC5A/55
    ASMCALL     $9952                       ; 14AC5B/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14AC5E/00
    .byte       $00                         ; 14AC5F/00
    .byte       $00                         ; 14AC60/00
    .byte       $00                         ; 14AC61/00
    ASMCALL     $8FDC                       ; 14AC62/D0DC8F // Set pose (respect facing)
    .byte       $2C                         ; 14AC65/2C
    ASMCALL     $885C                       ; 14AC66/D05C88 // Set Kirby's Y velocity
    .word       $FD40                       ; 14AC69/40FD
    HALT                                    ; 14AC6B/09

B14_ac6c:
    ldy #$0b
    jsr $87ba
    jsr $95cd
    jsr $9021
    jsr $8bab
    bcc B14_ac81
    ldx #$02
    jmp $8ce8
B14_ac81:
    jsr $8b06
    bcc B14_ac8b
    ldx #$12
    jmp $8ce8
B14_ac8b:
    jsr $89d9
    bcc B14_ac95
    ldx #$17
    jmp $8ce8
B14_ac95:
    jmp $805b

KST0E_Unknown:
    MOV         $05E1,#$05                  ; 14AC98/11E10505
    ONTICK      $14ACA9                     ; 14AC9C/08A9AC14
    ASMCALL     $8FDC                       ; 14ACA0/D0DC8F // Set pose (respect facing)
    .byte       $2A                         ; 14ACA3/2A
    WAIT        #16                         ; 14ACA4/0610
    A_JMP       KST02_Land                  ; 14ACA6/174EA7

B14_aca9:
    ldy #$00
    jsr $87ba
    jsr $95cd
    jsr $9021
    jmp $805b

KST0F_Crouch:
    MOV         $05E1,#$06                  ; 14ACB7/11E10506
    ASMCALL     $DE4B                       ; 14ACBB/D04BDE // Play sound effect
    .byte       $0D                         ; 14ACBE/0D
    ONTICK      $14ACC4                     ; 14ACBF/08C4AC14
    HALT                                    ; 14ACC3/09

B14_acc4:
    jsr $8112
    jsr $9899
    lda #$00
    jsr $8597
    jsr $95cd
    jsr $9021
    jsr $8b4e
    bcc B14_acdf
    ldx #$0b
    jmp $8ce8
B14_acdf:
    jsr $8ade
    bcc B14_ace9
    ldx #$10
    jmp $8ce8
B14_ace9:
    jsr $8980
    bcc B14_acf3
    ldx #$0e
    jmp $8ce8
B14_acf3:
    jsr $8a36
    bcc B14_acfd
    ldx #$02
    jmp $8ce8
B14_acfd:
    jsr $ad03
    jmp $805b
B14_ad03:
    jsr $8ffb
    asl a
    adc #$2e
    jmp $8fe6

KirbyState10:
    MOV         $05E1,#$07                  ; 14AD0C/11E10507
    ASMCALL     $DE4B                       ; 14AD10/D04BDE // Play sound effect
    .byte       $38                         ; 14AD13/38
    ONTICK      $14AD29                     ; 14AD14/0829AD14
    ASMCALL     $9952                       ; 14AD18/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14AD1B/00
    .byte       $00                         ; 14AD1C/00
    .byte       $01                         ; 14AD1D/01
    .byte       $00                         ; 14AD1E/00
    ASMCALL     $8710                       ; 14AD1F/D01087 // Set Kirby's X velocity
    .word       $02B3                       ; 14AD22/B302
    ASMCALL     $8FDC                       ; 14AD24/D0DC8F // Set pose (respect facing)
    .byte       $38                         ; 14AD27/38
    HALT                                    ; 14AD28/09

B14_ad29:
    jsr $8112
    jsr $9899
    lda #$00
    jsr $8597
    jsr $95cd
    jsr $ad5e
    jsr $9420
    jsr $8bfa
    bcc B14_ad47
    ldx #$03
    jmp $8ce8
B14_ad47:
    jsr $8b4e
    bcc B14_ad51
    ldx #$0b
    jmp $8ce8
B14_ad51:
    jsr $8a23
    bcc B14_ad5b
    ldx #$03
    jmp $8ce8
B14_ad5b:
    jmp $805b
B14_ad5e:
    lda $62c7
    sec
    sbc #$38
    tax
    lda B14_ad70,x
    ldy B14_ad72,x
    ldx #$02
    jmp $9c72

B14_ad70:
.byte $74,$7B
B14_ad72:
.byte $AD,$AD

B14_ad74:
.byte $01,$06,$00,$05
.byte $00,$04,$02,$01,$FA,$FF,$05,$00
.byte $04,$02

KirbyState11:
    MOV         $05E1,#$08                  ; 14AD82/11E10508
    ONTICK      $14AD96                     ; 14AD86/0896AD14
    ASMCALL     $86FB                       ; 14AD8A/D0FB86 // Zero Kirby's X velocity
    MOV         VAR2,#$0A                   ; 14AD8D/0D020A
    MOV         VAR3,#$03                   ; 14AD90/0D0303
    SETPOSE     #$6F                        ; 14AD93/506F
    HALT                                    ; 14AD95/09

B14_ad96:
    lda temp_pad1_hold
    and #$08
    beq B14_addb
    ldx $6075
    lda $6087
    sta temp_x_hi
    lda $6099
    clc
    adc #$f9
    tay
    lda $60ab
    adc #$ff
    sta temp_y_hi
    jsr $ed9c
    cmp #$02
    beq B14_ade7
    dec $61ef
    bpl B14_add1
    dec $6201
    bpl B14_adc8
    lda #$03
    sta $6201
B14_adc8:
    ldx $6201
    lda B14_ae3e,x
    sta $61ef
B14_add1:
    ldx $6201
    ldy B14_ae42,x
    ldx #$00
    beq B14_adeb
B14_addb:
    lda temp_pad1_hold
    and #$04
    beq B14_ade7
    ldy #$6f
    ldx #$01
    bne B14_adeb
B14_ade7:
    ldx #$02
    bne B14_adee
B14_adeb:
    sty $62c7
B14_adee:
    txa
    pha
    lda B14_ae46,x
    sta $05bd
    lda B14_ae49,x
    sta $05be
    jsr $95cd
    pla
    cmp #$02
    bcs B14_ae35
    tax
    lda $6099
    clc
    adc B14_ae4c,x
    tay
    lda $60ab
    adc B14_ae4e,x
    sta temp_y_hi
    ldx $6075
    lda $6087
    sta temp_x_hi
    jsr $ed9c
    cmp #$01
    beq B14_ae35
B14_ae24:
    lda #$14
    sta $6031
    lda #$4e
    ldy #$a7
    ldx #$01
    jsr OBJ_TryReplaceScriptPc
    jmp $805b
B14_ae35:
    lda temp_pad1_hold
    and #$03
    bne B14_ae24
    jmp $805b

B14_ae3e:
.byte $04,$0A,$04,$0A
B14_ae42:
.byte $6E,$6D,$6E,$6C
B14_ae46:
.byte $CD,$33,$00
B14_ae49:
.byte $FE,$01,$00
B14_ae4c:
.byte $06,$07
B14_ae4e:
.byte $00,$00

KirbyState12:
    ASMCALL     $DE4B                       ; 14AE50/D04BDE // Play sound effect
    .byte       $30                         ; 14AE53/30
    ONTICK      $14AE60                     ; 14AE54/0860AE14
    SETPOSE     #$4A, WAIT #6               ; 14AE58/564A
    INC2POSE    WAIT #6                     ; 14AE5A/96
    INC2POSE    WAIT #6                     ; 14AE5B/96
    INC2POSE    WAIT #6                     ; 14AE5C/96
    A_JMP       L_14AEDA                    ; 14AE5D/17DAAE

B14_ae60:
    jsr $88b0
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $8758
    jsr $95cd
    jsr $9021
    jsr $904a
    jsr $9016
    jsr $8a15
    bcc B14_ae85
    ldx #$00
    jmp $8ce8
B14_ae85:
    jmp $805b

KirbyState13:
    MOV         $05E1,#$0D                  ; 14AE88/11E1050D
    ONTICK      $14AE9C                     ; 14AE8C/089CAE14
L_14AE90:
    SETPOSE     #$52, WAIT #4               ; 14AE90/5452
    INC2POSE    WAIT #4                     ; 14AE92/94
    ASMCALL     $9D72                       ; 14AE93/D0729D // Is holding Up outside water
    JNE         L_14AE90                    ; 14AE96/0B90AE
    A_JMP       L_14AEDA                    ; 14AE99/17DAAE

B14_ae9c:
    ldy #$08
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $8758
    jsr $95cd
    jsr $9021
    jsr $9016
    jsr $904a
    jsr $8af2
    bcc B14_aec3
    ldx #$16
    jmp $8ce8
B14_aec3:
    jsr $89d9
    bcc B14_aecd
    ldx #$14
    jmp $8ce8
B14_aecd:
    jsr $8a15
    bcc B14_aed7
    ldx #$00
    jmp $8ce8
B14_aed7:
    jmp $805b

L_14AEDA:
    MOV         $05E1,#$0D                  ; 14AEDA/11E1050D
    ONTICK      $14AEEC                     ; 14AEDE/08ECAE14
L_14AEE2:
    SETPOSE     #$52                        ; 14AEE2/5052
    WAIT        #20                         ; 14AEE4/0614
    INC2POSE                                ; 14AEE6/90
    WAIT        #20                         ; 14AEE7/0614
    A_JMP       L_14AEE2                    ; 14AEE9/17E2AE

B14_aeec:
    ldy #$01
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $8758
    jsr $95cd
    jsr $9021
    jsr $9016
    jsr $904a
    jsr $894d
    bcc B14_af13
    ldx #$13
    jmp $8ce8
B14_af13:
    jsr $8af2
    bcc B14_af1d
    ldx #$16
    jmp $8ce8
B14_af1d:
    jsr $89d9
    bcc B14_af27
    ldx #$14
    jmp $8ce8
B14_af27:
    jsr $8a15
    bcc B14_af31
    ldx #$00
    jmp $8ce8
B14_af31:
    jmp $805b

KirbyState14:
    MOV         $05E1,#$0D                  ; 14AF34/11E1050D
    ASMCALL     $988D                       ; 14AF38/D08D98 // Set Kirby's underwater flag
    ONTICK      $14AF48                     ; 14AF3B/0848AF14
    SETPOSE     #$54                        ; 14AF3F/5054
    HALT                                    ; 14AF41/09

KirbyState15:
    ASMCALL     $9893                       ; 14AF42/D09398 // Clear Kirby's underwater flag
    A_JMP       L_14AEDA                    ; 14AF45/17DAAE

B14_af48:
    ldy #$0c
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $8758
    jsr $95cd
    jsr $9021
    jsr $9016
    jsr $904a
    jsr $8af2
    bcc B14_af6f
    ldx #$16
    jmp $8ce8
B14_af6f:
    jsr $89e6
    bcc B14_af79
    ldx #$15
    jmp $8ce8
B14_af79:
    jsr $8a15
    bcc B14_af83
    ldx #$00
    jmp $8ce8
B14_af83:
    jmp $805b

KirbyState16:
    MOV         $05E1,#$0A                  ; 14AF86/11E1050A
    ONTICK      $14AFA9                     ; 14AF8A/08A9AF14
    ASMCALL     $99EA                       ; 14AF8E/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 14AF91/08
    .byte       $00                         ; 14AF92/00
    .byte       $05                         ; 14AF93/05
    .byte       $00                         ; 14AF94/00
    ASMCALL     $DE4B                       ; 14AF95/D04BDE // Play sound effect
    .byte       $1A                         ; 14AF98/1A
    ASMCALL     $8FDC, WAIT #12             ; 14AF99/DCDC8F // Set pose (respect facing)
    .byte       $50                         ; 14AF9C/50
    DEC2POSE    WAIT #4                     ; 14AF9D/A4
    DEC2POSE    WAIT #4                     ; 14AF9E/A4
    DEC2POSE    WAIT #4                     ; 14AF9F/A4
    ASMCALL     $9D72                       ; 14AFA0/D0729D // Is holding Up outside water
    JNE         KirbyState12                ; 14AFA3/0B50AE
    A_JMP       KST02_Land                  ; 14AFA6/174EA7

B14_afa9:
    ldy #$01
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $8758
    jsr $95cd
    jsr $9021
    jsr $9016
    jsr $904a
    jsr $89d9
    bcc B14_afd0
    ldx #$17
    jmp $8ce8
B14_afd0:
    jmp $805b

KirbyState17:
    A_JSR       L_14A763                    ; 14AFD3/1863A7
    ASMCALL     $9883                       ; 14AFD6/D08398 // Set swimming flag??
    ASMCALL     $9952                       ; 14AFD9/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14AFDC/00
    .byte       $F8                         ; 14AFDD/F8
    .byte       $04                         ; 14AFDE/04
    .byte       $00                         ; 14AFDF/00
    A_JMP       KST02_Land                  ; 14AFE0/174EA7

KirbyState18:
    MOV         $05E1,#$00                  ; 14AFE3/11E10500
    MOV         $05E4,#$FF                  ; 14AFE7/11E405FF
    ONTICK      $14B001                     ; 14AFEB/0801B014
    ASMCALL     $A804                       ; 14AFEF/D004A8 // Set Kirby's idle pose
    JEQ         L_14AFF6                    ; 14AFF2/0AF6AF
    HALT                                    ; 14AFF5/09

L_14AFF6:
    WAIT        #144                        ; 14AFF6/0690
    INC2POSE    WAIT #2                     ; 14AFF8/92
    DEC2POSE    WAIT #15                    ; 14AFF9/AF
    INC2POSE    WAIT #2                     ; 14AFFA/92
    DEC2POSE    WAIT #15                    ; 14AFFB/AF
    INC2POSE    WAIT #2                     ; 14AFFC/92
    DEC2POSE                                ; 14AFFD/A0
    A_JMP       L_14AFF6                    ; 14AFFE/17F6AF

B14_b001:
    jsr $9c5a
    jsr $8fcc
    jsr $95cd
    jsr $9021
    jsr $8b4e
    bcc B14_b017
    ldx #$1a
    jmp $8ce8
B14_b017:
    jsr $89f7
    bcc B14_b021
    ldx #$1a
    jmp $8ce8
B14_b021:
    jsr $8b1a
    bcc B14_b02b
    ldx #$19
    jmp $8ce8
B14_b02b:
    jsr $8af2
    bcc B14_b035
    ldx #$1b
    jmp $8ce8
B14_b035:
    jsr $8a15
    bcc B14_b03f
    ldx #$00
    jmp $8ce8
B14_b03f:
    jmp $805b

KirbyState19:
    MOV         $05E1,#$01                  ; 14B042/11E10501
    MOV         $05E4,#$FF                  ; 14B046/11E405FF
    ONTICK      $14B082                     ; 14B04A/0882B014
    ASMCALL     $9B96                       ; 14B04E/D0969B
    TABLEJMP    #10                         ; 14B051/0F0A
    .word       L_14B067                    ; 14B053/67B0
    .word       L_14B067                    ; 14B055/67B0
    .word       L_14B067                    ; 14B057/67B0
    .word       L_14B072                    ; 14B059/72B0
    .word       L_14B07D                    ; 14B05B/7DB0
    .word       L_14B067                    ; 14B05D/67B0
    .word       L_14B067                    ; 14B05F/67B0
    .word       L_14B067                    ; 14B061/67B0
    .word       L_14B072                    ; 14B063/72B0
    .word       L_14B07D                    ; 14B065/7DB0
L_14B067:
    ASMCALL     $8FDC, WAIT #10             ; 14B067/DADC8F // Set pose (respect facing)
    .byte       $12                         ; 14B06A/12
L_14B06B:
    INC2POSE    WAIT #8                     ; 14B06B/98
    INC2POSE    WAIT #10                    ; 14B06C/9A
    DEC2POSE    WAIT #8                     ; 14B06D/A8
    DEC2POSE    WAIT #10                    ; 14B06E/AA
    A_JMP       L_14B06B                    ; 14B06F/176BB0

L_14B072:
    ASMCALL     $8FDC, WAIT #6              ; 14B072/D6DC8F // Set pose (respect facing)
    .byte       $18                         ; 14B075/18
L_14B076:
    INC2POSE    WAIT #6                     ; 14B076/96
    INC2POSE    WAIT #6                     ; 14B077/96
    DEC2POSE    WAIT #6                     ; 14B078/A6
    DEC2POSE    WAIT #6                     ; 14B079/A6
    A_JMP       L_14B076                    ; 14B07A/1776B0

L_14B07D:
    ASMCALL     $8FDC                       ; 14B07D/D0DC8F // Set pose (respect facing)
    .byte       $1E                         ; 14B080/1E
    HALT                                    ; 14B081/09

B14_b082:
    jsr $8112
    jsr $98c3
    jsr $9899
    tya
    clc
    adc #$0e
    tay
    lda temp_pad1_hold
    and $8000,x
    jsr $8597
    jsr $95cd
    jsr $8bfa
    bcc B14_b0a5
    ldx #$18
    jmp $8ce8
B14_b0a5:
    jsr $8b4e
    bcc B14_b0af
    ldx #$1a
    jmp $8ce8
B14_b0af:
    jsr $8a6c
    bcc B14_b0b9
    ldx #$18
    jmp $8ce8
B14_b0b9:
    jsr $89f7
    bcc B14_b0c3
    ldx #$1a
    jmp $8ce8
B14_b0c3:
    jsr $8a15
    bcc B14_b0cd
    ldx #$00
    jmp $8ce8
B14_b0cd:
    jsr $8a5d
    bcc B14_b0d7
    ldx #$19
    jmp $8ce8
B14_b0d7:
    jsr $8af2
    bcc B14_b0e1
    ldx #$1b
    jmp $8ce8
B14_b0e1:
    jsr $89e6
    bcc B14_b0eb
    ldx #$1d
    jmp $8ce8
B14_b0eb:
    jmp $805b

KirbyState1A:
    MOV         $05E1,#$05                  ; 14B0EE/11E10505
    MOV         $05E4,#$FF                  ; 14B0F2/11E405FF
    ONTICK      $14B126                     ; 14B0F6/0826B114
    MOV         REG,$05F5                   ; 14B0FA/1CF505
    TABLEJMP    #5                          ; 14B0FD/0F05
    .word       L_14B109                    ; 14B0FF/09B1
    .word       L_14B10C                    ; 14B101/0CB1
    .word       L_14B11A                    ; 14B103/1AB1
    .word       L_14B117                    ; 14B105/17B1
    .word       L_14B11A                    ; 14B107/1AB1
L_14B109:
    SETPOSE     #$2A                        ; 14B109/502A
    HALT                                    ; 14B10B/09

L_14B10C:
    ASMCALL     $DE4B                       ; 14B10C/D04BDE // Play sound effect
    .byte       $48                         ; 14B10F/48
    SETPOSE     #$42, WAIT #10              ; 14B110/5A42
    INC2POSE    WAIT #6                     ; 14B112/96
    INC2POSE    WAIT #10                    ; 14B113/9A
    A_JMP       L_14B10C                    ; 14B114/170CB1

L_14B117:
    SETPOSE     #$48                        ; 14B117/5048
    HALT                                    ; 14B119/09

L_14B11A:
    ASMCALL     $DE4B                       ; 14B11A/D04BDE // Play sound effect
    .byte       $48                         ; 14B11D/48
    SETPOSE     #$3A, WAIT #10              ; 14B11E/5A3A
    INC2POSE    WAIT #10                    ; 14B120/9A
    INC2POSE    WAIT #10                    ; 14B121/9A
    INC2POSE    WAIT #10                    ; 14B122/9A
    A_JMP       L_14B11A                    ; 14B123/171AB1

B14_b126:
    jsr $8883
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $874b
    jsr $95cd
    jsr $9021
    jsr $8bab
    bcc B14_b145
    ldx #$02
    jmp $8ce8
B14_b145:
    jsr $904a
    jsr $8a06
    bcc B14_b152
    ldx #$1a
    jmp $8ce8
B14_b152:
    jsr $8af2
    bcc B14_b15c
    ldx #$1b
    jmp $8ce8
B14_b15c:
    jsr $89e6
    bcc B14_b166
    ldx #$1d
    jmp $8ce8
B14_b166:
    jsr $8a15
    bcc B14_b170
    ldx #$00
    jmp $8ce8
B14_b170:
    jmp $805b

KirbyState1B:
    MOV         $05E1,#$0C                  ; 14B173/11E1050C
    ONTICK      $14B222                     ; 14B177/0822B214
    ASMCALL     $9DCD                       ; 14B17B/D0CD9D
    MOV         VAR0,REG                    ; 14B17E/1D00
    TABLEJSR    #6                          ; 14B180/1006
    .word       L_14B1BD                    ; 14B182/BDB1
    .word       L_14B1BD                    ; 14B184/BDB1
    .word       L_14B1C4                    ; 14B186/C4B1
    .word       L_14B1C4                    ; 14B188/C4B1
    .word       L_14B1CC                    ; 14B18A/CCB1
    .word       L_14B1D0                    ; 14B18C/D0B1
KirbyState1C:
    ASMCALL     $DE4B                       ; 14B18E/D04BDE // Play sound effect
    .byte       $15                         ; 14B191/15
    ONTICK      $14B218                     ; 14B192/0818B214
    MOV         REG,VAR0                    ; 14B196/1E00
    TABLEJSR    #6                          ; 14B198/1006
    .word       L_14B1D4                    ; 14B19A/D4B1
    .word       L_14B1D4                    ; 14B19C/D4B1
    .word       L_14B1E0                    ; 14B19E/E0B1
    .word       L_14B1E0                    ; 14B1A0/E0B1
    .word       L_14B1EC                    ; 14B1A2/ECB1
    .word       L_14B1F6                    ; 14B1A4/F6B1
    ONTICK      $14B222                     ; 14B1A6/0822B214
    MOV         REG,VAR0                    ; 14B1AA/1E00
    TABLEJSR    #6                          ; 14B1AC/1006
    .word       L_14B200                    ; 14B1AE/00B2
    .word       L_14B200                    ; 14B1B0/00B2
    .word       L_14B207                    ; 14B1B2/07B2
    .word       L_14B207                    ; 14B1B4/07B2
    .word       L_14B20E                    ; 14B1B6/0EB2
    .word       L_14B213                    ; 14B1B8/13B2
    A_JMP       KST02_Land                  ; 14B1BA/174EA7

L_14B1BD:
    ASMCALL     $8FDC, WAIT #4              ; 14B1BD/D4DC8F // Set pose (respect facing)
    .byte       $56                         ; 14B1C0/56
    INC2POSE    WAIT #4                     ; 14B1C1/94
    INC2POSE    WAIT #4                     ; 14B1C2/94
    A_RTS                                   ; 14B1C3/19

L_14B1C4:
    ASMCALL     $8FDC, WAIT #4              ; 14B1C4/D4DC8F // Set pose (respect facing)
    .byte       $56                         ; 14B1C7/56
    ADDPOSE     #12, WAIT #4                ; 14B1C8/640C
    INC2POSE    WAIT #4                     ; 14B1CA/94
    A_RTS                                   ; 14B1CB/19

L_14B1CC:
    SETPOSE     #$70, WAIT #4               ; 14B1CC/5470
    INCPOSE     WAIT #4                     ; 14B1CE/74
    A_RTS                                   ; 14B1CF/19

L_14B1D0:
    SETPOSE     #$75, WAIT #4               ; 14B1D0/5475
    INCPOSE     WAIT #4                     ; 14B1D2/74
    A_RTS                                   ; 14B1D3/19

L_14B1D4:
    ASMCALL     $8FDC, WAIT #4              ; 14B1D4/D4DC8F // Set pose (respect facing)
    .byte       $5C                         ; 14B1D7/5C
    INC2POSE    WAIT #4                     ; 14B1D8/94
    ASMCALL     $9DF2                       ; 14B1D9/D0F29D // Check if player is not holding the B Button
    JEQ         L_14B1D4                    ; 14B1DC/0AD4B1
    A_RTS                                   ; 14B1DF/19

L_14B1E0:
    ASMCALL     $8FDC, WAIT #4              ; 14B1E0/D4DC8F // Set pose (respect facing)
    .byte       $66                         ; 14B1E3/66
    INC2POSE    WAIT #4                     ; 14B1E4/94
    ASMCALL     $9DF2                       ; 14B1E5/D0F29D // Check if player is not holding the B Button
    JEQ         L_14B1E0                    ; 14B1E8/0AE0B1
    A_RTS                                   ; 14B1EB/19

L_14B1EC:
    SETPOSE     #$72, WAIT #4               ; 14B1EC/5472
    INCPOSE     WAIT #4                     ; 14B1EE/74
    ASMCALL     $9DF2                       ; 14B1EF/D0F29D // Check if player is not holding the B Button
    JEQ         L_14B1EC                    ; 14B1F2/0AECB1
    A_RTS                                   ; 14B1F5/19

L_14B1F6:
    SETPOSE     #$77, WAIT #4               ; 14B1F6/5477
    INCPOSE     WAIT #4                     ; 14B1F8/74
    ASMCALL     $9DF2                       ; 14B1F9/D0F29D // Check if player is not holding the B Button
    JEQ         L_14B1F6                    ; 14B1FC/0AF6B1
    A_RTS                                   ; 14B1FF/19

L_14B200:
    ASMCALL     $8FDC, WAIT #6              ; 14B200/D6DC8F // Set pose (respect facing)
    .byte       $60                         ; 14B203/60
    ADDPOSE     #-10, WAIT #8               ; 14B204/68F6
    A_RTS                                   ; 14B206/19

L_14B207:
    ASMCALL     $8FDC, WAIT #6              ; 14B207/D6DC8F // Set pose (respect facing)
    .byte       $6A                         ; 14B20A/6A
    ADDPOSE     #-20, WAIT #8               ; 14B20B/68EC
    A_RTS                                   ; 14B20D/19

L_14B20E:
    SETPOSE     #$74, WAIT #6               ; 14B20E/5674
    SETPOSE     #$70, WAIT #8               ; 14B210/5870
    A_RTS                                   ; 14B212/19

L_14B213:
    SETPOSE     #$79, WAIT #6               ; 14B213/5679
    SETPOSE     #$75, WAIT #8               ; 14B215/5875
    A_RTS                                   ; 14B217/19

B14_b218:
    jsr $88de
    bcc B14_b222
    ldx #$1c
    jmp $8ce8
B14_b222:
    jsr $8049
    jsr $89e6
    bcc B14_b22f
    ldx #$1d
    jmp $8ce8
B14_b22f:
    jsr $b238
    jsr $9420
    jmp $805b
    lda $62c7
    cmp #$70
    bcs B14_b250
    sec
    sbc #$56
    tax
    ldy B14_b278,x
    beq B14_b261
    lda B14_b262,x
    ldx #$02
    jmp $9c72
B14_b250:
    sec
    sbc #$70
    tax
    ldy B14_b298,x
    beq B14_b261
    lda B14_b28e,x
    ldx #$02
    jmp $9c72
B14_b261:
    rts

B14_b262:
.byte $00,$00,$00,$00,$A2,$A9,$A2,$A9
.byte $A2,$A9,$A2,$A9,$00,$00,$B0,$B7
.byte $B0,$B7,$B0,$B7,$B0,$B7
B14_b278:
.byte $00,$00,$00,$00,$B2,$B2,$B2,$B2
.byte $B2,$B2,$B2,$B2,$00,$00,$B2,$B2
.byte $B2,$B2,$B2,$B2,$B2,$B2

B14_b28e:
.byte $00,$BE,$BE,$BE,$BE,$00,$C5,$C5
.byte $C5,$C5
B14_b298:
.byte $00,$B2
.byte $B2,$B2,$B2,$00,$B2,$B2,$B2,$B2
.byte $04,$10
.byte $00,$00,$00,$08,$05,$04
.byte $F0,$FF,$00,$00,$08,$05
.byte $04,$13
.byte $00,$00,$00,$08,$05,$04,$ED,$FF
.byte $00,$00,$08,$05,$04,$00,$00,$F0
.byte $FF,$05,$08,$04,$00,$00,$10,$00
.byte $05,$08

KirbyState1D:
    ASMCALL     $9893                       ; 14B2CC/D09398 // Clear Kirby's underwater flag
    ASMCALL     $9952                       ; 14B2CF/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14B2D2/00
    .byte       $F8                         ; 14B2D3/F8
    .byte       $05                         ; 14B2D4/05
    .byte       $00                         ; 14B2D5/00
    A_JMP       KST09_Jump                  ; 14B2D6/172BAA

L_14B2D9:
    A_JSR       L_14B2F1                    ; 14B2D9/18F1B2
KirbyState1E:
    ASMCALL     $9BF7                       ; 14B2DC/D0F79B // Get Kirby's sub-state (0=STOP, 1=WALK, 2=DASH, 3=FALL, 4=WATER_STOP, 5=WATER_WALK, 6=SWIM, 7=LEAVE_WATER)
    TABLEJMP    #8                          ; 14B2DF/0F08
    .word       KirbyState1F                ; 14B2E1/00B3
    .word       KirbyState20                ; 14B2E3/D0B3
    .word       KirbyState23                ; 14B2E5/09B5
    .word       KirbyState27                ; 14B2E7/83B7
    .word       KirbyState34                ; 14B2E9/BEBC
    .word       KirbyState35                ; 14B2EB/19BD
    .word       KirbyState36                ; 14B2ED/CFBD
    .word       L_14BBB5                    ; 14B2EF/B5BB
L_14B2F1:
    MOV         kirby_05E0,#$02                  ; 14B2F1/11E00502
    SPRITEMAP   $1A8676                     ; 14B2F5/1A76861A
    ASMCALL     $9CB3                       ; 14B2F9/D0B39C // Load some palette? (Kirby's palette?)
    SETZPOS     #$00C0                      ; 14B2FC/3AC000
    A_RTS                                   ; 14B2FF/19

KirbyState1F:
    MOV         $05E1,#$00                  ; 14B300/11E10500
    ONTICK      $14B31A                     ; 14B304/081AB314
    ASMCALL     $8015                       ; 14B308/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_14B316                    ; 14B30B/0A16B3
    ASMCALL     $801F                       ; 14B30E/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0C                         ; 14B311/0C
    .byte       $2E                         ; 14B312/2E
    A_JSR       $8003                       ; 14B313/180380
L_14B316:
    ASMCALL     $B3BE                       ; 14B316/D0BEB3 // Set Kirby's idle pose (copy ability)
    HALT                                    ; 14B319/09

B14_b31a:
    jsr $9c5a
    jsr $8fcc
    jsr $95cd
    jsr $9021
    jsr $8b4e
    bcc B14_b330
    ldx #$27
    jmp $8ce8
B14_b330:
    jsr $b38d
    bcc B14_b33a
    ldx #$3a
    jmp $8ce8
B14_b33a:
    jsr $8b1a
    bcc B14_b344
    ldx #$20
    jmp $8ce8
B14_b344:
    jsr $8c7d
    bcc B14_b34e
    ldx #$2d
    jmp $8ce8
B14_b34e:
    jsr $8b10
    bcc B14_b358
    ldx #$2b
    jmp $8ce8
B14_b358:
    jsr $8ae8
    bcc B14_b362
    ldx #$25
    jmp $8ce8
B14_b362:
    jsr $8a15
    bcc B14_b36c
    ldx #$00
    jmp $8ce8
B14_b36c:
    jsr $8b06
    bcc B14_b376
    ldx #$2e
    jmp $8ce8
B14_b376:
    jsr $8a5d
    bcc B14_b380
    ldx #$1f
    jmp $8ce8
B14_b380:
    jsr $8957
    bcc B14_b38a
    ldx #$01
    jmp $8ce8
B14_b38a:
    jmp $805b

B14_b38d:
    lda temp_pad1_press
    and #$40
    beq B14_b39f
    ldx #$06
B14_b395:
    lda $6128,x
    bmi B14_b3a1
    inx
    cpx #$09
    bcc B14_b395
B14_b39f:
    clc
    rts
B14_b3a1:
    ldx kirby_copy_ability
    cpx #$0e
    bne B14_b3b3
    lda $05e1
    cmp #$04
    beq B14_b39f
    cmp #$05
    beq B14_b39f
B14_b3b3:
    cpx #$11
    bne B14_b3bc
    lda $05f7
    bne B14_b39f
B14_b3bc:
    sec
    rts
    jsr $8ffb
    pha
    tax
    lda B14_b3cb,x
    sta $62c7
    pla
    rts
B14_b3cb:
    .byte $00,$04,$06,$08,$0A

KirbyState20:
    MOV         REG,$05F8                   ; 14B3D0/1CF805
    JEQ         KirbyState21                ; 14B3D3/0ADAB3
    ASMCALL     $DE4B                       ; 14B3D6/D04BDE // Play sound effect
    .byte       $31                         ; 14B3D9/31
KirbyState21:
    MOV         $05E1,#$01                  ; 14B3DA/11E10501
    MOV         $05BF,#$00                  ; 14B3DE/11BF0500
    ONTICK      $14B473                     ; 14B3E2/0873B414
    ASMCALL     $8015                       ; 14B3E6/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_14B3F4                    ; 14B3E9/0AF4B3
    ASMCALL     $801F                       ; 14B3EC/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0C                         ; 14B3EF/0C
    .byte       $2E                         ; 14B3F0/2E
    A_JSR       $8003                       ; 14B3F1/180380
L_14B3F4:
    ASMCALL     $9B96                       ; 14B3F4/D0969B
L_14B3F7:
    TABLEJMP    #15                         ; 14B3F7/0F0F
    .word       L_14B417                    ; 14B3F9/17B4
    .word       L_14B417                    ; 14B3FB/17B4
    .word       L_14B417                    ; 14B3FD/17B4
    .word       L_14B437                    ; 14B3FF/37B4
    .word       L_14B442                    ; 14B401/42B4
    .word       L_14B447                    ; 14B403/47B4
    .word       L_14B447                    ; 14B405/47B4
    .word       L_14B447                    ; 14B407/47B4
    .word       L_14B452                    ; 14B409/52B4
    .word       L_14B442                    ; 14B40B/42B4
    .word       L_14B45D                    ; 14B40D/5DB4
    .word       L_14B45D                    ; 14B40F/5DB4
    .word       L_14B45D                    ; 14B411/5DB4
    .word       L_14B468                    ; 14B413/68B4
    .word       L_14B442                    ; 14B415/42B4
L_14B417:
    ASMCALL     $8FF5                       ; 14B417/D0F58F // Return (frame_counter & 3)
    TABLEJMP    #4                          ; 14B41A/0F04
    .word       L_14B424                    ; 14B41C/24B4
    .word       L_14B428                    ; 14B41E/28B4
    .word       L_14B42C                    ; 14B420/2CB4
    .word       L_14B430                    ; 14B422/30B4
L_14B424:
    ASMCALL     $8FDC, WAIT #10             ; 14B424/DADC8F // Set pose (respect facing)
    .byte       $12                         ; 14B427/12
L_14B428:
    ASMCALL     $8FDC, WAIT #8              ; 14B428/D8DC8F // Set pose (respect facing)
    .byte       $14                         ; 14B42B/14
L_14B42C:
    ASMCALL     $8FDC, WAIT #10             ; 14B42C/DADC8F // Set pose (respect facing)
    .byte       $16                         ; 14B42F/16
L_14B430:
    ASMCALL     $8FDC, WAIT #8              ; 14B430/D8DC8F // Set pose (respect facing)
    .byte       $14                         ; 14B433/14
    A_JMP       L_14B424                    ; 14B434/1724B4

L_14B437:
    ASMCALL     $8FDC, WAIT #6              ; 14B437/D6DC8F // Set pose (respect facing)
    .byte       $18                         ; 14B43A/18
L_14B43B:
    INC2POSE    WAIT #6                     ; 14B43B/96
    INC2POSE    WAIT #6                     ; 14B43C/96
    DEC2POSE    WAIT #6                     ; 14B43D/A6
    DEC2POSE    WAIT #6                     ; 14B43E/A6
    A_JMP       L_14B43B                    ; 14B43F/173BB4

L_14B442:
    ASMCALL     $8FDC                       ; 14B442/D0DC8F // Set pose (respect facing)
    .byte       $1E                         ; 14B445/1E
    HALT                                    ; 14B446/09

L_14B447:
    ASMCALL     $8FDC, WAIT #4              ; 14B447/D4DC8F // Set pose (respect facing)
    .byte       $12                         ; 14B44A/12
L_14B44B:
    INC2POSE    WAIT #3                     ; 14B44B/93
    INC2POSE    WAIT #4                     ; 14B44C/94
    DEC2POSE    WAIT #3                     ; 14B44D/A3
    DEC2POSE    WAIT #4                     ; 14B44E/A4
    A_JMP       L_14B44B                    ; 14B44F/174BB4

L_14B452:
    ASMCALL     $8FDC, WAIT #4              ; 14B452/D4DC8F // Set pose (respect facing)
    .byte       $18                         ; 14B455/18
L_14B456:
    INC2POSE    WAIT #4                     ; 14B456/94
    INC2POSE    WAIT #4                     ; 14B457/94
    DEC2POSE    WAIT #4                     ; 14B458/A4
    DEC2POSE    WAIT #4                     ; 14B459/A4
    A_JMP       L_14B456                    ; 14B45A/1756B4

L_14B45D:
    ASMCALL     $8FDC, WAIT #3              ; 14B45D/D3DC8F // Set pose (respect facing)
    .byte       $12                         ; 14B460/12
L_14B461:
    INC2POSE    WAIT #2                     ; 14B461/92
    INC2POSE    WAIT #3                     ; 14B462/93
    DEC2POSE    WAIT #2                     ; 14B463/A2
    DEC2POSE    WAIT #3                     ; 14B464/A3
    A_JMP       L_14B461                    ; 14B465/1761B4

L_14B468:
    ASMCALL     $8FDC, WAIT #3              ; 14B468/D3DC8F // Set pose (respect facing)
    .byte       $18                         ; 14B46B/18
L_14B46C:
    INC2POSE    WAIT #3                     ; 14B46C/93
    INC2POSE    WAIT #3                     ; 14B46D/93
    DEC2POSE    WAIT #3                     ; 14B46E/A3
    DEC2POSE    WAIT #3                     ; 14B46F/A3
    A_JMP       L_14B46C                    ; 14B470/176CB4

B14_b473:
    jsr $8765
    jsr $95cd
    jsr $8bfa
    bcc B14_b483
    ldx #$1f
    jmp $8ce8
B14_b483:
    jsr $8b4e
    bcc B14_b48d
    ldx #$27
    jmp $8ce8
B14_b48d:
    jsr $b38d
    bcc B14_b497
    ldx #$3a
    jmp $8ce8
B14_b497:
    jsr $8a6c
    bcc B14_b4a1
    ldx #$1f
    jmp $8ce8
B14_b4a1:
    jsr $8a78
    bcc B14_b4ab
    ldx #$24
    jmp $8ce8
B14_b4ab:
    jsr $8a86
    bcc B14_b4b5
    ldx #$22
    jmp $8ce8
B14_b4b5:
    jsr $8c7d
    bcc B14_b4bf
    ldx #$2d
    jmp $8ce8
B14_b4bf:
    jsr $8b10
    bcc B14_b4c9
    ldx #$2b
    jmp $8ce8
B14_b4c9:
    jsr $8ae8
    bcc B14_b4d3
    ldx #$25
    jmp $8ce8
B14_b4d3:
    jsr $8a5d
    bcc B14_b4dd
    ldx #$21
    jmp $8ce8
B14_b4dd:
    jsr $8a15
    bcc B14_b4e7
    ldx #$00
    jmp $8ce8
B14_b4e7:
    jsr $8b06
    bcc B14_b4f1
    ldx #$2e
    jmp $8ce8
B14_b4f1:
    jsr $8957
    bcc B14_b4fb
    ldx #$01
    jmp $8ce8
B14_b4fb:
    jmp $805b

KirbyState22:
    ASMCALL     $DE4B                       ; 14B4FE/D04BDE // Play sound effect
    .byte       $37                         ; 14B501/37
    ASMCALL     $9952                       ; 14B502/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14B505/00
    .byte       $00                         ; 14B506/00
    .byte       $01                         ; 14B507/01
    .byte       $00                         ; 14B508/00
KirbyState23:
    MOV         $05E1,#$02                  ; 14B509/11E10502
    ONTICK      $14B525                     ; 14B50D/0825B514
    ASMCALL     $8015                       ; 14B511/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_14B51F                    ; 14B514/0A1FB5
    ASMCALL     $801F                       ; 14B517/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0C                         ; 14B51A/0C
    .byte       $2E                         ; 14B51B/2E
    A_JSR       $8003                       ; 14B51C/180380
L_14B51F:
    ASMCALL     $9BAA                       ; 14B51F/D0AA9B
    A_JMP       L_14B3F7                    ; 14B522/17F7B3

B14_b525:
    jsr $8781
    jsr $95cd
    jsr $8bfa
    bcc B14_b535
    ldx #$1f
    jmp $8ce8
B14_b535:
    jsr $8b4e
    bcc B14_b53f
    ldx #$27
    jmp $8ce8
B14_b53f:
    jsr $b38d
    bcc B14_b549
    ldx #$3a
    jmp $8ce8
B14_b549:
    jsr $8a78
    bcc B14_b553
    ldx #$24
    jmp $8ce8
B14_b553:
    jsr $8a4a
    bcc B14_b55d
    ldx #$20
    jmp $8ce8
B14_b55d:
    jsr $8c7d
    bcc B14_b567
    ldx #$2d
    jmp $8ce8
B14_b567:
    jsr $8b10
    bcc B14_b571
    ldx #$2b
    jmp $8ce8
B14_b571:
    jsr $8ae8
    bcc B14_b57b
    ldx #$25
    jmp $8ce8
B14_b57b:
    jsr $8a5d
    bcc B14_b585
    ldx #$23
    jmp $8ce8
B14_b585:
    jsr $8a15
    bcc B14_b58f
    ldx #$00
    jmp $8ce8
B14_b58f:
    jsr $8b06
    bcc B14_b599
    ldx #$2e
    jmp $8ce8
B14_b599:
    jsr $8957
    bcc B14_b5a3
    ldx #$01
    jmp $8ce8
B14_b5a3:
    jmp $805b

KirbyState24:
    MOV         $05E1,#$03                  ; 14B5A6/11E10503
    ASMCALL     $DE4B                       ; 14B5AA/D04BDE // Play sound effect
    .byte       $31                         ; 14B5AD/31
    ONTICK      $14B5BE                     ; 14B5AE/08BEB514
    ASMCALL     $8FDC                       ; 14B5B2/D0DC8F // Set pose (respect facing)
    .byte       $20                         ; 14B5B5/20
    ASMCALL     $9952                       ; 14B5B6/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14B5B9/00
    .byte       $00                         ; 14B5BA/00
    .byte       $01                         ; 14B5BB/01
    .byte       $00                         ; 14B5BC/00
    HALT                                    ; 14B5BD/09

B14_b5be:
    jsr $879d
    jsr $95cd
    jsr $8bfa
    bcc B14_b5ce
    ldx #$1f
    jmp $8ce8
B14_b5ce:
    jsr $8b4e
    bcc B14_b5d8
    ldx #$27
    jmp $8ce8
B14_b5d8:
    jsr $b38d
    bcc B14_b5e2
    ldx #$3a
    jmp $8ce8
B14_b5e2:
    jsr $8a6c
    bcc B14_b5ec
    ldx #$1f
    jmp $8ce8
B14_b5ec:
    jsr $8ae8
    bcc B14_b5f6
    ldx #$25
    jmp $8ce8
B14_b5f6:
    jmp $805b

KirbyState25:
    MOV         $05E1,#$04                  ; 14B5F9/11E10504
    ONTICK      $14B62C                     ; 14B5FD/082CB614
    ASMCALL     $885C                       ; 14B601/D05C88 // Set Kirby's Y velocity
    .word       $FC70                       ; 14B604/70FC
    ASMCALL     $DE4B                       ; 14B606/D04BDE // Play sound effect
    .byte       $04                         ; 14B609/04
    SETPOSE     #$22                        ; 14B60A/5022
    WAIT        #23                         ; 14B60C/0617
KirbyState26:
    ONTICK      $14B636                     ; 14B60E/0836B614
L_14B612:
    MOV         $05E1,#$05                  ; 14B612/11E10505
    ASMCALL     $885C, WAIT #5              ; 14B616/D55C88 // Set Kirby's Y velocity
    .word       $FF50                       ; 14B619/50FF
    ASMCALL     $884D                       ; 14B61B/D04D88 // Zero Kirby's Y velocity
    ONTICK      $14B7A9                     ; 14B61E/08A9B714
    SETPOSE     #$24, WAIT #4               ; 14B622/5424
    INC2POSE    WAIT #4                     ; 14B624/94
    INC2POSE    WAIT #4                     ; 14B625/94
    MOV         VAR0,#$11                   ; 14B626/0D0011
    A_JMP       L_14B786                    ; 14B629/1786B7

B14_b62c:
    jsr $8a40
    bcc B14_b636
    ldx #$26
    jmp $8ce8
B14_b636:
    ldy #$00
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $873e
    jsr $95cd
    jsr $9021
    jsr $8bab
    bcc B14_b657
    ldx #$1e
    jmp $8ce8
B14_b657:
    jsr $8bd3
    bcc B14_b661
    ldx #$27
    jmp $8ce8
B14_b661:
    jsr $8c61
    bcc B14_b66b
    ldx #$27
    jmp $8ce8
B14_b66b:
    jsr $b38d
    bcc B14_b675
    ldx #$3a
    jmp $8ce8
B14_b675:
    jsr $8c7d
    bcc B14_b67f
    ldx #$2d
    jmp $8ce8
B14_b67f:
    jsr $8a15
    bcc B14_b689
    ldx #$00
    jmp $8ce8
B14_b689:
    jmp $805b

L_14B68C:
    SPRITEMAP   $1A8676                     ; 14B68C/1A76861A
    MOV         $05E1,#$04                  ; 14B690/11E10504
    ASMCALL     $9A6A                       ; 14B694/D06A9A // Unknown ASM $219A6A
    .word       $9B6C                       ; 14B697/6C9B
    .word       $0000                       ; 14B699/0000
    ASMCALL     $DE4B                       ; 14B69B/D04BDE // Play sound effect
    .byte       $45                         ; 14B69E/45
    ONTICK      $14B6C6                     ; 14B69F/08C6B614
    ASMCALL     $885C                       ; 14B6A3/D05C88 // Set Kirby's Y velocity
    .word       $FC00                       ; 14B6A6/00FC
    LOOP        #5                          ; 14B6A8/0105
        ASMCALL     $9952, WAIT #4              ; 14B6AA/D45299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 14B6AD/00
        .byte       $08                         ; 14B6AE/08
        .byte       $13                         ; 14B6AF/13
        .byte       $00                         ; 14B6B0/00
    ENDLOOP                                 ; 14B6B1/02
    ONTICK      $14B6D3                     ; 14B6B2/08D3B614
    ASMCALL     $885C                       ; 14B6B6/D05C88 // Set Kirby's Y velocity
    .word       $FC70                       ; 14B6B9/70FC
    SETPOSE     #$22                        ; 14B6BB/5022
    WAIT        #23                         ; 14B6BD/0617
KirbyState41:
    ONTICK      $14B6DD                     ; 14B6BF/08DDB614
    A_JMP       L_14B612                    ; 14B6C3/1712B6

B14_b6c6:
    jsr $8af2
    bcc B14_b6d0
    ldx #$41
    jmp $8ce8
B14_b6d0:
    jmp $b6e2
B14_b6d3:
    jsr $8af2
    bcc B14_b6dd
    ldx #$41
    jmp $8ce8
B14_b6dd:
    ldy #$00
    jsr $87ba
B14_b6e2:
    jsr $9c5a
    jsr $b732
    jsr $8112
    jsr $b725
    jsr $95cd
    jsr $b765
    jsr $9420
    jsr $9021
    jsr $8bab
    bcc B14_b704
    ldx #$1e
    jmp $8ce8
B14_b704:
    jsr $8bd3
    bcc B14_b70e
    ldx #$27
    jmp $8ce8
B14_b70e:
    jsr $8c61
    bcc B14_b718
    ldx #$27
    jmp $8ce8
B14_b718:
    jsr $8c7d
    bcc B14_b722
    ldx #$3d
    jmp $8ce8
B14_b722:
    jmp $805b
B14_b725:
    lda temp_pad1_hold
    and #$03
    beq B14_b72d
    lda #$01
B14_b72d:
    ldy #$0d
    jmp $8597
B14_b732:
    ldx $05ba
    bmi B14_b744
    cpx #$03
    bcc B14_b73d
    ldx #$02
B14_b73d:
    lda B14_b75f,x
    sta $62c7
    rts

B14_b744:
    lda $05b9
    eor #$ff
    clc
    adc #$01
    txa
    eor #$ff
    adc #$00
    cmp #$03
    bcc B14_b757
    lda #$02
    B14_b757:
    tax
    lda B14_b762,x
    sta $62c7
    rts

B14_b75f:
.byte $72,$73,$74
B14_b762:
.byte $72,$71,$70
B14_b765:
    lda $05bd
    sec
    sbc #$00
    lda $05be
    sbc #$fc
    bpl B14_b773
    rts
B14_b773:
    lda #$7c
    ldy #$b7
    ldx #$08
    jmp $9c72
B14_b77c:
.byte $05,$00,$00,$00,$00,$07,$08

KirbyState27:
    MOV         VAR0,#$1C                   ; 14B783/0D001C
L_14B786:
    MOV         $05E1,#$05                  ; 14B786/11E10505
    ONTICK      $14B7A9                     ; 14B78A/08A9B714
    ASMCALL     $8015                       ; 14B78E/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_14B79C                    ; 14B791/0A9CB7
    ASMCALL     $801F                       ; 14B794/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0C                         ; 14B797/0C
    .byte       $2E                         ; 14B798/2E
    A_JSR       $8003                       ; 14B799/180380
L_14B79C:
    SETPOSE     #$2A                        ; 14B79C/502A
L_14B79E:
    ASMCALL     $9D82, WAIT #1              ; 14B79E/D1829D // Check if Kirby's Y velocity is negative (moving upwards)
    JNE         L_14B79E                    ; 14B7A1/0B9EB7
    WAIT        VAR0                        ; 14B7A4/1F00
    A_JMP       L_14B81D                    ; 14B7A6/171DB8

B14_b7a9:
    ldy #$00
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $873e
    jsr $95cd
    jsr $9034
    jsr $8bab
    bcc B14_b7ca
    ldx #$1e
    jmp $8ce8
B14_b7ca:
    jsr $8bd3
    bcc B14_b7d4
    ldx #$27
    jmp $8ce8
B14_b7d4:
    jsr $88d5
    bcc B14_b7de
    ldx #$27
    jmp $8ce8
B14_b7de:
    jsr $b38d
    bcc B14_b7e8
    ldx #$3a
    jmp $8ce8
B14_b7e8:
    jsr $8c7d
    bcc B14_b7f2
    ldx #$2d
    jmp $8ce8
B14_b7f2:
    jsr $89d9
    bcc B14_b7fc
    ldx #$33
    jmp $8ce8
B14_b7fc:
    jsr $8a15
    bcc B14_b806
    ldx #$00
    jmp $8ce8
B14_b806:
    jsr $8b06
    bcc B14_b810
    ldx #$2e
    jmp $8ce8
B14_b810:
    jsr $8957
    bcc B14_b81a
    ldx #$01
    jmp $8ce8
B14_b81a:
    jmp $805b

L_14B81D:
    MOV         $05E1,#$05                  ; 14B81D/11E10505
    ASMCALL     $9EE1                       ; 14B821/D0E19E // Clear "landed head-first on enemy" flag
    ONTICK      $14B82B                     ; 14B824/082BB814
    SETPOSE     #$2C                        ; 14B828/502C
    HALT                                    ; 14B82A/09

B14_b82b:
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $873e
    jsr $95cd
    jsr $b896
    jsr $940e
    jsr $9021
    jsr $8bab
    bcc B14_b84d
    ldx #$29
    jmp $8ce8
B14_b84d:
    jsr $8bd3
    bcc B14_b857
    ldx #$27
    jmp $8ce8
B14_b857:
    jsr $88ca
    bcc B14_b861
    ldx #$28
    jmp $8ce8
B14_b861:
    jsr $b38d
    bcc B14_b86b
    ldx #$3a
    jmp $8ce8
B14_b86b:
    jsr $8c7d
    bcc B14_b875
    ldx #$2d
    jmp $8ce8
B14_b875:
    jsr $89d9
    bcc B14_b87f
    ldx #$33
    jmp $8ce8
B14_b87f:
    jsr $8b06
    bcc B14_b889
    ldx #$2e
    jmp $8ce8
B14_b889:
    jsr $8a15
    bcc B14_b893
    ldx #$00
    jmp $8ce8
B14_b893:
    jmp $805b
B14_b896:
    lda #$9f
    ldy #$b8
    ldx #$02
    jmp $9c72

B14_b89f:
    .byte $06,$00,$00,$00,$00,$04,$08

KirbyState28:
    ASMCALL     $885C                       ; 14B8A6/D05C88 // Set Kirby's Y velocity
    .word       $FD40                       ; 14B8A9/40FD
    ONTICK      $14B8B2                     ; 14B8AB/08B2B814
    SETPOSE     #$2C                        ; 14B8AF/502C
    HALT                                    ; 14B8B1/09

B14_b8b2:
    ldy #$00
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $873e
    jsr $95cd
    jsr $9034
    jsr $8bab
    bcc B14_b8d3
    ldx #$1e
    jmp $8ce8
B14_b8d3:
    jsr $8bd3
    bcc B14_b8dd
    ldx #$27
    jmp $8ce8
B14_b8dd:
    jsr $88c1
    bcc B14_b8e7
    ldx #$27
    jmp $8ce8
B14_b8e7:
    jsr $b38d
    bcc B14_b8f1
    ldx #$3a
    jmp $8ce8
B14_b8f1:
    jsr $8c7d
    bcc B14_b8fb
    ldx #$2d
    jmp $8ce8
B14_b8fb:
    jsr $89d9
    bcc B14_b905
    ldx #$33
    jmp $8ce8
B14_b905:
    jsr $8a15
    bcc B14_b90f
    ldx #$00
    jmp $8ce8
B14_b90f:
    jsr $8b06
    bcc B14_b919
    ldx #$2e
    jmp $8ce8
B14_b919:
    jsr $8957
    bcc B14_b923
    ldx #$01
    jmp $8ce8
B14_b923:
    jmp $805b

KirbyState29:
    MOV         $05E1,#$05                  ; 14B926/11E10505
    MOV         $05E4,#$FF                  ; 14B92A/11E405FF
    ONTICK      $14B947                     ; 14B92E/0847B914
    ASMCALL     $DE4B                       ; 14B932/D04BDE // Play sound effect
    .byte       $55                         ; 14B935/55
    ASMCALL     $9952                       ; 14B936/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14B939/00
    .byte       $00                         ; 14B93A/00
    .byte       $00                         ; 14B93B/00
    .byte       $00                         ; 14B93C/00
    ASMCALL     $8FDC                       ; 14B93D/D0DC8F // Set pose (respect facing)
    .byte       $2C                         ; 14B940/2C
    ASMCALL     $885C                       ; 14B941/D05C88 // Set Kirby's Y velocity
    .word       $FD40                       ; 14B944/40FD
    HALT                                    ; 14B946/09

B14_b947:
    ldy #$0b
    jsr $87ba
    jsr $95cd
    jsr $9021
    jsr $8bab
    bcc B14_b95c
    ldx #$1e
    jmp $8ce8
B14_b95c:
    jsr $8b06
    bcc B14_b966
    ldx #$2e
    jmp $8ce8
B14_b966:
    jsr $89d9
    bcc B14_b970
    ldx #$33
    jmp $8ce8
B14_b970:
    jmp $805b

KirbyState2A:
    MOV         $05E1,#$05                  ; 14B973/11E10505
    ONTICK      $14B984                     ; 14B977/0884B914
    ASMCALL     $8FDC                       ; 14B97B/D0DC8F // Set pose (respect facing)
    .byte       $2A                         ; 14B97E/2A
    WAIT        #16                         ; 14B97F/0610
    A_JMP       KirbyState1E                ; 14B981/17DCB2

B14_b984:
    ldy #$00
    jsr $87ba
    jsr $95cd
    jsr $9021
    jmp $805b

KirbyState2B:
    MOV         $05E1,#$06                  ; 14B992/11E10506
    ASMCALL     $DE4B                       ; 14B996/D04BDE // Play sound effect
    .byte       $0D                         ; 14B999/0D
    ONTICK      $14B99F                     ; 14B99A/089FB914
    HALT                                    ; 14B99E/09

B14_b99f:
    jsr $8112
    jsr $9899
    lda #$00
    jsr $8597
    jsr $95cd
    jsr $9021
    jsr $8ade
    bcc B14_b9ba
    ldx #$2c
    jmp $8ce8
B14_b9ba:
    jsr $8980
    bcc B14_b9c4
    ldx #$2a
    jmp $8ce8
B14_b9c4:
    jsr $8b4e
    bcc B14_b9ce
    ldx #$27
    jmp $8ce8
B14_b9ce:
    jsr $8a36
    bcc B14_b9d8
    ldx #$1e
    jmp $8ce8
B14_b9d8:
    jsr $b9de
    jmp $805b
B14_b9de:
    jsr $8ffb
    asl a
    adc #$2e
    jmp $8fe6

KirbyState2C:
    MOV         $05E1,#$07                  ; 14B9E7/11E10507
    ASMCALL     $DE4B                       ; 14B9EB/D04BDE // Play sound effect
    .byte       $38                         ; 14B9EE/38
    ONTICK      $14BA04                     ; 14B9EF/0804BA14
    ASMCALL     $9952                       ; 14B9F3/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14B9F6/00
    .byte       $00                         ; 14B9F7/00
    .byte       $01                         ; 14B9F8/01
    .byte       $00                         ; 14B9F9/00
    ASMCALL     $8710                       ; 14B9FA/D01087 // Set Kirby's X velocity
    .word       $02B3                       ; 14B9FD/B302
    ASMCALL     $8FDC                       ; 14B9FF/D0DC8F // Set pose (respect facing)
    .byte       $38                         ; 14BA02/38
    HALT                                    ; 14BA03/09

B14_ba04:
    jsr $8112
    jsr $9899
    lda #$00
    jsr $8597
    jsr $95cd
    jsr $ba39
    jsr $9420
    jsr $8bfa
    bcc B14_ba22
    ldx #$1f
    jmp $8ce8
B14_ba22:
    jsr $8b4e
    bcc B14_ba2c
    ldx #$27
    jmp $8ce8
B14_ba2c:
    jsr $8a23
    bcc B14_ba36
    ldx #$1f
    jmp $8ce8
B14_ba36:
    jmp $805b
B14_ba39:
    lda $62c7
    sec
    sbc #$38
    tax
    lda B14_ba4b,x
    ldy B14_ba4d,x
    ldx #$02
    jmp $9c72

B14_ba4b:
    .byte $4F,$56
B14_ba4d:
    .byte $BA,$BA
B14_ba4f:
    .byte $01,$06,$00,$05,$00,$04,$02,$01
    .byte $FA,$FF,$05,$00,$04,$02

KirbyState2D:
    MOV         $05E1,#$08                  ; 14BA5D/11E10508
    ONTICK      $14BA71                     ; 14BA61/0871BA14
    ASMCALL     $86FB                       ; 14BA65/D0FB86 // Zero Kirby's X velocity
    MOV         VAR2,#$0A                   ; 14BA68/0D020A
    MOV         VAR3,#$03                   ; 14BA6B/0D0303
    SETPOSE     #$6F                        ; 14BA6E/506F
    HALT                                    ; 14BA70/09

B14_ba71:
    lda temp_pad1_hold
    and #$08
    beq B14_bab6
    ldx $6075
    lda $6087
    sta temp_x_hi
    lda $6099
    clc
    adc #$f9
    tay
    lda $60ab
    adc #$ff
    sta temp_y_hi
    jsr $ed9c
    cmp #$02
    beq B14_bac2
    dec $61ef
    bpl B14_baac
    dec $6201
    bpl B14_baa3
    lda #$03
    sta $6201
B14_baa3:
    ldx $6201
    lda B14_bb19,x
    sta $61ef
B14_baac:
    ldx $6201
    ldy B14_bb1d,x
    ldx #$00
    beq B14_bac6
B14_bab6:
    lda temp_pad1_hold
    and #$04
    beq B14_bac2
    ldy #$6f
    ldx #$01
    bne B14_bac6
B14_bac2:
    ldx #$02
    bne B14_bac9
B14_bac6:
    sty $62c7
B14_bac9:
    txa
    pha
    lda B14_bb21,x
    sta $05bd
    lda B14_bb24,x
    sta $05be
    jsr $95cd
    pla
    cmp #$02
    bcs B14_bb10
    tax
    lda $6099
    clc
    adc B14_bb27,x
    tay
    lda $60ab
    adc B14_bb29,x
    sta temp_y_hi
    ldx $6075
    lda $6087
    sta temp_x_hi
    jsr $ed9c
    cmp #$01
    beq B14_bb10
B14_baff:
    lda #$14
    sta $6031
    lda #$dc
    ldy #$b2
    ldx #$01
    jsr OBJ_TryReplaceScriptPc
    jmp $805b
B14_bb10:
    lda temp_pad1_hold
    and #$03
    bne B14_baff
    jmp $805b

B14_bb19:
    .byte $04,$0A,$04,$0A
B14_bb1d:
    .byte $6E,$6D,$6E,$6C
B14_bb21:
    .byte $CD,$33,$00
B14_bb24:
    .byte $FE,$01,$00
B14_bb27:
    .byte $06,$07
B14_bb29:
    .byte $00,$00

KirbyState2E:
    ASMCALL     $DE4B                       ; 14BB2B/D04BDE // Play sound effect
    .byte       $30                         ; 14BB2E/30
    ONTICK      $14BB3B                     ; 14BB2F/083BBB14
    SETPOSE     #$4A, WAIT #6               ; 14BB33/564A
    INC2POSE    WAIT #6                     ; 14BB35/96
    INC2POSE    WAIT #6                     ; 14BB36/96
    INC2POSE    WAIT #6                     ; 14BB37/96
    A_JMP       L_14BBB5                    ; 14BB38/17B5BB

B14_bb3b:
    jsr $88b0
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $8758
    jsr $95cd
    jsr $9021
    jsr $904a
    jsr $9016
    jsr $8a15
    bcc B14_bb60
    ldx #$00
    jmp $8ce8
B14_bb60:
    jmp $805b

KirbyState2F:
    MOV         $05E1,#$0D                  ; 14BB63/11E1050D
    ONTICK      $14BB77                     ; 14BB67/0877BB14
L_14BB6B:
    SETPOSE     #$52, WAIT #4               ; 14BB6B/5452
    INC2POSE    WAIT #4                     ; 14BB6D/94
    ASMCALL     $9D72                       ; 14BB6E/D0729D // Is holding Up outside water
    JNE         L_14BB6B                    ; 14BB71/0B6BBB
    A_JMP       L_14BBB5                    ; 14BB74/17B5BB

B14_bb77:
    ldy #$08
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $8758
    jsr $95cd
    jsr $9021
    jsr $9016
    jsr $904a
    jsr $8af2
    bcc B14_bb9e
    ldx #$32
    jmp $8ce8
B14_bb9e:
    jsr $89d9
    bcc B14_bba8
    ldx #$30
    jmp $8ce8
B14_bba8:
    jsr $8a15
    bcc B14_bbb2
    ldx #$00
    jmp $8ce8
B14_bbb2:
    jmp $805b

L_14BBB5:
    MOV         $05E1,#$0D                  ; 14BBB5/11E1050D
    ONTICK      $14BBC7                     ; 14BBB9/08C7BB14
L_14BBBD:
    SETPOSE     #$52                        ; 14BBBD/5052
    WAIT        #20                         ; 14BBBF/0614
    INC2POSE                                ; 14BBC1/90
    WAIT        #20                         ; 14BBC2/0614
    A_JMP       L_14BBBD                    ; 14BBC4/17BDBB

B14_bbc7:
    ldy #$01
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $8758
    jsr $95cd
    jsr $9021
    jsr $9016
    jsr $904a
    jsr $894d
    bcc B14_bbee
    ldx #$2f
    jmp $8ce8
B14_bbee:
    jsr $8af2
    bcc B14_bbf8
    ldx #$32
    jmp $8ce8
B14_bbf8:
    jsr $89d9
    bcc B14_bc02
    ldx #$30
    jmp $8ce8
B14_bc02:
    jsr $8a15
    bcc B14_bc0c
    ldx #$00
    jmp $8ce8
B14_bc0c:
    jmp $805b

KirbyState30:
    MOV         $05E1,#$0D                  ; 14BC0F/11E1050D
    ASMCALL     $988D                       ; 14BC13/D08D98 // Set Kirby's underwater flag
    ONTICK      $14BC23                     ; 14BC16/0823BC14
    SETPOSE     #$54                        ; 14BC1A/5054
    HALT                                    ; 14BC1C/09

KirbyState31:
    ASMCALL     $9893                       ; 14BC1D/D09398 // Clear Kirby's underwater flag
    A_JMP       L_14BBB5                    ; 14BC20/17B5BB

B14_bc23:
    ldy #$0c
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $8758
    jsr $95cd
    jsr $9021
    jsr $9016
    jsr $904a
    jsr $8af2
    bcc B14_bc4a
    ldx #$32
    jmp $8ce8
B14_bc4a:
    jsr $89e6
    bcc B14_bc54
    ldx #$31
    jmp $8ce8
B14_bc54:
    jsr $8a15
    bcc B14_bc5e
    ldx #$00
    jmp $8ce8
B14_bc5e:
    jmp $805b

KirbyState32:
    MOV         $05E1,#$0A                  ; 14BC61/11E1050A
    ONTICK      $14BC84                     ; 14BC65/0884BC14
    ASMCALL     $99EA                       ; 14BC69/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 14BC6C/08
    .byte       $00                         ; 14BC6D/00
    .byte       $05                         ; 14BC6E/05
    .byte       $00                         ; 14BC6F/00
    ASMCALL     $DE4B                       ; 14BC70/D04BDE // Play sound effect
    .byte       $1A                         ; 14BC73/1A
    ASMCALL     $8FDC, WAIT #12             ; 14BC74/DCDC8F // Set pose (respect facing)
    .byte       $50                         ; 14BC77/50
    DEC2POSE    WAIT #4                     ; 14BC78/A4
    DEC2POSE    WAIT #4                     ; 14BC79/A4
    DEC2POSE    WAIT #4                     ; 14BC7A/A4
    ASMCALL     $9D72                       ; 14BC7B/D0729D // Is holding Up outside water
    JNE         KirbyState2E                ; 14BC7E/0B2BBB
    A_JMP       KirbyState1E                ; 14BC81/17DCB2

B14_bc84:
    ldy #$01
    jsr $87ba
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $8758
    jsr $95cd
    jsr $9021
    jsr $9016
    jsr $904a
    jsr $89d9
    bcc B14_bcab
    ldx #$33
    jmp $8ce8
B14_bcab:
    jmp $805b

KirbyState33:
    A_JSR       L_14B2F1                    ; 14BCAE/18F1B2
    ASMCALL     $9883                       ; 14BCB1/D08398 // Set swimming flag??
    ASMCALL     $9952                       ; 14BCB4/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14BCB7/00
    .byte       $F8                         ; 14BCB8/F8
    .byte       $04                         ; 14BCB9/04
    .byte       $00                         ; 14BCBA/00
    A_JMP       KirbyState1E                ; 14BCBB/17DCB2

KirbyState34:
    MOV         $05E1,#$00                  ; 14BCBE/11E10500
    MOV         $05E4,#$FF                  ; 14BCC2/11E405FF
    ONTICK      $14BCCE                     ; 14BCC6/08CEBC14
    ASMCALL     $B3BE                       ; 14BCCA/D0BEB3 // Set Kirby's idle pose (copy ability)
    HALT                                    ; 14BCCD/09

B14_bcce:
    jsr $9c5a
    jsr $8fcc
    jsr $95cd
    jsr $9021
    jsr $8b4e
    bcc B14_bce4
    ldx #$36
    jmp $8ce8
B14_bce4:
    jsr $89f7
    bcc B14_bcee
    ldx #$36
    jmp $8ce8
B14_bcee:
    jsr $8b1a
    bcc B14_bcf8
    ldx #$35
    jmp $8ce8
B14_bcf8:
    jsr $8af2
    bcc B14_bd02
    ldx #$37
    jmp $8ce8
B14_bd02:
    jsr $8a15
    bcc B14_bd0c
    ldx #$00
    jmp $8ce8
B14_bd0c:
    jsr $8957
    bcc B14_bd16
    ldx #$01
    jmp $8ce8
B14_bd16:
    jmp $805b

KirbyState35:
    MOV         $05E1,#$01                  ; 14BD19/11E10501
    MOV         $05E4,#$FF                  ; 14BD1D/11E405FF
    ONTICK      $14BD59                     ; 14BD21/0859BD14
    ASMCALL     $9B96                       ; 14BD25/D0969B
    TABLEJMP    #10                         ; 14BD28/0F0A
    .word       L_14BD3E                    ; 14BD2A/3EBD
    .word       L_14BD3E                    ; 14BD2C/3EBD
    .word       L_14BD3E                    ; 14BD2E/3EBD
    .word       L_14BD49                    ; 14BD30/49BD
    .word       L_14BD54                    ; 14BD32/54BD
    .word       L_14BD3E                    ; 14BD34/3EBD
    .word       L_14BD3E                    ; 14BD36/3EBD
    .word       L_14BD3E                    ; 14BD38/3EBD
    .word       L_14BD49                    ; 14BD3A/49BD
    .word       L_14BD54                    ; 14BD3C/54BD
L_14BD3E:
    ASMCALL     $8FDC, WAIT #10             ; 14BD3E/DADC8F // Set pose (respect facing)
    .byte       $12                         ; 14BD41/12
L_14BD42:
    INC2POSE    WAIT #8                     ; 14BD42/98
    INC2POSE    WAIT #10                    ; 14BD43/9A
    DEC2POSE    WAIT #8                     ; 14BD44/A8
    DEC2POSE    WAIT #10                    ; 14BD45/AA
    A_JMP       L_14BD42                    ; 14BD46/1742BD

L_14BD49:
    ASMCALL     $8FDC, WAIT #6              ; 14BD49/D6DC8F // Set pose (respect facing)
    .byte       $18                         ; 14BD4C/18
L_14BD4D:
    INC2POSE    WAIT #6                     ; 14BD4D/96
    INC2POSE    WAIT #6                     ; 14BD4E/96
    DEC2POSE    WAIT #6                     ; 14BD4F/A6
    DEC2POSE    WAIT #6                     ; 14BD50/A6
    A_JMP       L_14BD4D                    ; 14BD51/174DBD

L_14BD54:
    ASMCALL     $8FDC                       ; 14BD54/D0DC8F // Set pose (respect facing)
    .byte       $1E                         ; 14BD57/1E
    HALT                                    ; 14BD58/09

B14_bd59:
    jsr $8112
    jsr $98c3
    jsr $9899
    tya
    clc
    adc #$0e
    tay
    lda temp_pad1_hold
    and $8000,x
    jsr $8597
    jsr $95cd
    jsr $8bfa
    bcc B14_bd7c
    ldx #$34
    jmp $8ce8
B14_bd7c:
    jsr $8b4e
    bcc B14_bd86
    ldx #$36
    jmp $8ce8
B14_bd86:
    jsr $8a6c
    bcc B14_bd90
    ldx #$34
    jmp $8ce8
B14_bd90:
    jsr $89f7
    bcc B14_bd9a
    ldx #$36
    jmp $8ce8
B14_bd9a:
    jsr $8af2
    bcc B14_bda4
    ldx #$37
    jmp $8ce8
B14_bda4:
    jsr $8a15
    bcc B14_bdae
    ldx #$00
    jmp $8ce8
B14_bdae:
    jsr $8a5d
    bcc B14_bdb8
    ldx #$35
    jmp $8ce8
B14_bdb8:
    jsr $89e6
    bcc B14_bdc2
    ldx #$39
    jmp $8ce8
B14_bdc2:
    jsr $8957
    bcc B14_bdcc
    ldx #$01
    jmp $8ce8
B14_bdcc:
    jmp $805b

KirbyState36:
    MOV         $05E1,#$05                  ; 14BDCF/11E10505
    MOV         $05E4,#$FF                  ; 14BDD3/11E405FF
    ONTICK      $14BE07                     ; 14BDD7/0807BE14
    MOV         REG,$05F5                   ; 14BDDB/1CF505
    TABLEJMP    #5                          ; 14BDDE/0F05
    .word       L_14BDEA                    ; 14BDE0/EABD
    .word       L_14BDED                    ; 14BDE2/EDBD
    .word       L_14BDFB                    ; 14BDE4/FBBD
    .word       L_14BDF8                    ; 14BDE6/F8BD
    .word       L_14BDFB                    ; 14BDE8/FBBD
L_14BDEA:
    SETPOSE     #$2A                        ; 14BDEA/502A
    HALT                                    ; 14BDEC/09

L_14BDED:
    ASMCALL     $DE4B                       ; 14BDED/D04BDE // Play sound effect
    .byte       $48                         ; 14BDF0/48
    SETPOSE     #$42, WAIT #10              ; 14BDF1/5A42
    INC2POSE    WAIT #6                     ; 14BDF3/96
    INC2POSE    WAIT #10                    ; 14BDF4/9A
    A_JMP       L_14BDED                    ; 14BDF5/17EDBD

L_14BDF8:
    SETPOSE     #$48                        ; 14BDF8/5048
    HALT                                    ; 14BDFA/09

L_14BDFB:
    ASMCALL     $DE4B                       ; 14BDFB/D04BDE // Play sound effect
    .byte       $48                         ; 14BDFE/48
    SETPOSE     #$3A, WAIT #10              ; 14BDFF/5A3A
    INC2POSE    WAIT #10                    ; 14BE01/9A
    INC2POSE    WAIT #10                    ; 14BE02/9A
    INC2POSE    WAIT #10                    ; 14BE03/9A
    A_JMP       L_14BDFB                    ; 14BE04/17FBBD

B14_be07:
    jsr $8883
    jsr $9c5a
    jsr $8fcc
    jsr $8112
    jsr $874b
    jsr $95cd
    jsr $9021
    jsr $8bab
    bcc B14_be26
    ldx #$1e
    jmp $8ce8
B14_be26:
    jsr $904a
    jsr $8a06
    bcc B14_be33
    ldx #$36
    jmp $8ce8
B14_be33:
    jsr $89e6
    bcc B14_be3d
    ldx #$39
    jmp $8ce8
B14_be3d:
    jsr $8af2
    bcc B14_be47
    ldx #$37
    jmp $8ce8
B14_be47:
    jsr $8a15
    bcc B14_be51
    ldx #$00
    jmp $8ce8
B14_be51:
    jsr $8957
    bcc B14_be5b
    ldx #$01
    jmp $8ce8
B14_be5b:
    jmp $805b

KirbyState37:
    MOV         $05E1,#$0C                  ; 14BE5E/11E1050C
    ONTICK      $14BF0D                     ; 14BE62/080DBF14
    ASMCALL     $9DCD                       ; 14BE66/D0CD9D
    MOV         VAR0,REG                    ; 14BE69/1D00
    TABLEJSR    #6                          ; 14BE6B/1006
    .word       L_14BEA8                    ; 14BE6D/A8BE
    .word       L_14BEA8                    ; 14BE6F/A8BE
    .word       L_14BEAF                    ; 14BE71/AFBE
    .word       L_14BEAF                    ; 14BE73/AFBE
    .word       L_14BEB7                    ; 14BE75/B7BE
    .word       L_14BEBB                    ; 14BE77/BBBE
KirbyState38:
    ASMCALL     $DE4B                       ; 14BE79/D04BDE // Play sound effect
    .byte       $15                         ; 14BE7C/15
    ONTICK      $14BF03                     ; 14BE7D/0803BF14
    MOV         REG,VAR0                    ; 14BE81/1E00
    TABLEJSR    #6                          ; 14BE83/1006
    .word       L_14BEBF                    ; 14BE85/BFBE
    .word       L_14BEBF                    ; 14BE87/BFBE
    .word       L_14BECB                    ; 14BE89/CBBE
    .word       L_14BECB                    ; 14BE8B/CBBE
    .word       L_14BED7                    ; 14BE8D/D7BE
    .word       L_14BEE1                    ; 14BE8F/E1BE
    ONTICK      $14BF0D                     ; 14BE91/080DBF14
    MOV         REG,VAR0                    ; 14BE95/1E00
    TABLEJSR    #6                          ; 14BE97/1006
    .word       L_14BEEB                    ; 14BE99/EBBE
    .word       L_14BEEB                    ; 14BE9B/EBBE
    .word       L_14BEF2                    ; 14BE9D/F2BE
    .word       L_14BEF2                    ; 14BE9F/F2BE
    .word       L_14BEF9                    ; 14BEA1/F9BE
    .word       L_14BEFE                    ; 14BEA3/FEBE
    A_JMP       KirbyState1E                ; 14BEA5/17DCB2

L_14BEA8:
    ASMCALL     $8FDC, WAIT #4              ; 14BEA8/D4DC8F // Set pose (respect facing)
    .byte       $56                         ; 14BEAB/56
    INC2POSE    WAIT #4                     ; 14BEAC/94
    INC2POSE    WAIT #4                     ; 14BEAD/94
    A_RTS                                   ; 14BEAE/19

L_14BEAF:
    ASMCALL     $8FDC, WAIT #4              ; 14BEAF/D4DC8F // Set pose (respect facing)
    .byte       $56                         ; 14BEB2/56
    ADDPOSE     #12, WAIT #4                ; 14BEB3/640C
    INC2POSE    WAIT #4                     ; 14BEB5/94
    A_RTS                                   ; 14BEB6/19

L_14BEB7:
    SETPOSE     #$75, WAIT #4               ; 14BEB7/5475
    INCPOSE     WAIT #4                     ; 14BEB9/74
    A_RTS                                   ; 14BEBA/19

L_14BEBB:
    SETPOSE     #$7A, WAIT #4               ; 14BEBB/547A
    INCPOSE     WAIT #4                     ; 14BEBD/74
    A_RTS                                   ; 14BEBE/19

L_14BEBF:
    ASMCALL     $8FDC, WAIT #4              ; 14BEBF/D4DC8F // Set pose (respect facing)
    .byte       $5C                         ; 14BEC2/5C
    INC2POSE    WAIT #4                     ; 14BEC3/94
    ASMCALL     $9DF2                       ; 14BEC4/D0F29D // Check if player is not holding the B Button
    JEQ         L_14BEBF                    ; 14BEC7/0ABFBE
    A_RTS                                   ; 14BECA/19

L_14BECB:
    ASMCALL     $8FDC, WAIT #4              ; 14BECB/D4DC8F // Set pose (respect facing)
    .byte       $66                         ; 14BECE/66
    INC2POSE    WAIT #4                     ; 14BECF/94
    ASMCALL     $9DF2                       ; 14BED0/D0F29D // Check if player is not holding the B Button
    JEQ         L_14BECB                    ; 14BED3/0ACBBE
    A_RTS                                   ; 14BED6/19

L_14BED7:
    SETPOSE     #$77, WAIT #4               ; 14BED7/5477
    INCPOSE     WAIT #4                     ; 14BED9/74
    ASMCALL     $9DF2                       ; 14BEDA/D0F29D // Check if player is not holding the B Button
    JEQ         L_14BED7                    ; 14BEDD/0AD7BE
    A_RTS                                   ; 14BEE0/19

L_14BEE1:
    SETPOSE     #$7C, WAIT #4               ; 14BEE1/547C
    INCPOSE     WAIT #4                     ; 14BEE3/74
    ASMCALL     $9DF2                       ; 14BEE4/D0F29D // Check if player is not holding the B Button
    JEQ         L_14BEE1                    ; 14BEE7/0AE1BE
    A_RTS                                   ; 14BEEA/19

L_14BEEB:
    ASMCALL     $8FDC, WAIT #6              ; 14BEEB/D6DC8F // Set pose (respect facing)
    .byte       $60                         ; 14BEEE/60
    ADDPOSE     #-10, WAIT #8               ; 14BEEF/68F6
    A_RTS                                   ; 14BEF1/19

L_14BEF2:
    ASMCALL     $8FDC, WAIT #6              ; 14BEF2/D6DC8F // Set pose (respect facing)
    .byte       $6A                         ; 14BEF5/6A
    ADDPOSE     #-20, WAIT #8               ; 14BEF6/68EC
    A_RTS                                   ; 14BEF8/19

L_14BEF9:
    SETPOSE     #$79, WAIT #6               ; 14BEF9/5679
    SETPOSE     #$75, WAIT #8               ; 14BEFB/5875
    A_RTS                                   ; 14BEFD/19

L_14BEFE:
    SETPOSE     #$7E, WAIT #6               ; 14BEFE/567E
    SETPOSE     #$7A, WAIT #8               ; 14BF00/587A
    A_RTS                                   ; 14BF02/19

B14_bf03:
    jsr $88de
    bcc B14_bf0d
    ldx #$38
    jmp $8ce8
B14_bf0d:
    jsr $8049
    jsr $89e6
    bcc B14_bf1a
    ldx #$39
    jmp $8ce8
B14_bf1a:
    jsr $bf23
    jsr $9420
    jmp $805b
B14_bf23:
    lda $62c7
    cmp #$75
    bcs B14_bf3b
    sec
    sbc #$56
    tax
    ldy B14_bf63,x
    beq B14_bf4c
    lda B14_bf4d,x
    ldx #$02
    jmp $9c72
B14_bf3b:
    sec
    sbc #$75
    tax
    ldy B14_bf83,x
    beq B14_bf4c
    lda B14_bf79,x
    ldx #$02
    jmp $9c72
B14_bf4c:
    rts
B14_bf4d:
.byte $00,$00,$00,$00,$8D,$94,$8D,$94
.byte $8D,$94,$8D,$94,$00,$00,$9B,$A2
.byte $9B,$A2,$9B,$A2,$9B,$A2
B14_bf63:
.byte $00,$00,$00,$00,$BF,$BF,$BF,$BF
.byte $BF,$BF,$BF,$BF,$00,$00,$BF,$BF
.byte $BF,$BF,$BF,$BF,$BF,$BF
B14_bf79:
.byte $00,$A9,$A9,$A9,$A9,$00,$B0,$B0
.byte $B0,$B0
B14_bf83:
.byte $00,$BF,$BF,$BF,$BF,$00,$BF,$BF
.byte $BF,$BF,$04,$10,$00,$00,$00,$08
.byte $05,$04
.byte $F0,$FF,$00,$00,$08,$05,$04,$13
.byte $00,$00,$00,$08,$05,$04,$ED,$FF
.byte $00,$00,$08,$05,$04,$00,$00,$F0
.byte $FF,$05,$08,$04,$00,$00,$10,$00
.byte $05,$08

KirbyState39:
    ASMCALL     $9893                       ; 14BFB7/D09398 // Clear Kirby's underwater flag
    ASMCALL     $9952                       ; 14BFBA/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 14BFBD/00
    .byte       $F8                         ; 14BFBE/F8
    .byte       $05                         ; 14BFBF/05
    .byte       $00                         ; 14BFC0/00
    A_JMP       KirbyState25                ; 14BFC1/17F9B5

B14_bfc4:
.byte $05,$00,$00,$00,$72,$00,$0B,$41
.byte $71,$54,$90,$45,$17,$40,$A0,$10
.byte $08,$10,$26,$41,$2B,$11,$1A,$C1
.byte $12,$01,$D0,$10,$42,$00,$04,$00
.byte $AA,$02,$0E,$00,$50,$00,$05,$40
.byte $B3,$45,$30,$40,$31,$00,$00,$05
.byte $E9,$41,$13,$04,$07,$50,$20,$40
.byte $95,$00,$53,$04
