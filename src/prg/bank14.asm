ZeroKirbyVelocity := $987d
IsTileWater := $EEDB

.segment "PRG14": absolute
Script01_Kirby:
    MOV         REG,$07F5
    TABLECALL   #6
    .faraddr    L_14A017
    .faraddr    $2EB055
    .faraddr    $2EB4F1
    .faraddr    $2EB8E8
    .faraddr    $36B60F
    .faraddr    $36BF60
L_14A017:
    MOV         REG,$07DA
    JEQ         L_14A029
    SETBANK     #$21
    ASMCALL     $987D, WAIT #0 ; Zero Kirby's velocities
    ASMCALL     $95CD, WAIT #0
    JML         $23B0D5

L_14A029:
    SETBANK     #$21
    ASMCALL     InitVariables, WAIT #0
    ONPOSITION  $D99C
    ONDRAW      $DDA3
    SETZPOS     #$00C0
    ASMCALL     $95CD, WAIT #0
    ONMOVE      $D86A
    ASMCALL     $C086, WAIT #0 ; Write 0xFF to $37 and wait a frame
    ASMCALL     $A186, WAIT #0
    ASMCALL     $A173, WAIT #0
    JEQ         L_14A051
    ASMCALL     $E2D9, WAIT #0 ; Unknown ASM $E2D9 (Set $05A0 and $05A1)
    .byte       $05
    ASMCALL     $DF4B, WAIT #0 ; Set bits in $0036
    .byte       $06
L_14A051:
    ASMCALL     $DFA3, WAIT #0 ; SUB reg, #arg2, arg1
    .word       $0558
    .byte       $07
    JEQ         L_14A060
    ASMCALL     $A196, WAIT #4
    JNE         L_14A051
L_14A060:
    ASMCALL     $A15C, WAIT #0
    JEQ         L_14A06A
    JML         $15BC07

L_14A06A:
    ASMCALL     $9CB3, WAIT #0
    ASMCALL     $A162, WAIT #0
    JEQ         L_14A077
    JML         $15BA9D

L_14A077:
    ASMCALL     $DFFB, WAIT #0 ; Clear MSB of OBJ_tick_bank for all other objects
    ASMCALL     $A173, WAIT #0
    JEQ         L_14A099
    JML         $19A000

L_14A084:
    SETBANK     #$21
    ONPOSITION  $D99C
    ONDRAW      $DDA3
    SETZPOS     #$00C0
    ASMCALL     $95CD
    ONMOVE      $D86A
    MOV         $050C,#$00

L_14A099:
    ASMCALL     $A1AF, WAIT #0
    JEQ         L_14A0A3
    ASMCALL     $DE4B, WAIT #0 ; Unknown ASM $DE4B
    .byte       $3C
L_14A0A3:
    MOV         REG,$05E0
    TABLECALL   #15
    .faraddr    $14A74B
    .faraddr    $18AF50
    .faraddr    $14B2D9
    .faraddr    $15A000
    .faraddr    $17ABCF
    .faraddr    $15AC09
    .faraddr    $17A000
    .faraddr    $18AB7C
    .faraddr    $19B669
    .faraddr    $18ABDB
    .faraddr    $18A847
    .faraddr    $19B307
    .faraddr    $18AAEC
    .faraddr    $17B800
    .faraddr    $17BAA9

InitVariables:
    lda #$40
    sta OBJ_var1+ObjectSlot::KIRBY

    lda #$02
    sta kirby_slope_state

    ldx #$00
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
    stx $05e2

    lda kirby_flags
    and #kirby_nodiscard | kirby_ishyper
    sta kirby_flags

    jsr $9ced
    jsr IsTileWater
    lda #$00
    adc #$00
    sta kirby_underwater_flag
    lda kirby_05EA
    cmp #$ee
    beq B14_a138
    sta kirby_copy_ability
    lda $05eb
    sta kirby_05E0
    lda $05ec
    sta ability_uses
    lda #$ee
    sta kirby_05EA
    lda kirby_flags
    and #$df
    sta kirby_flags
B14_a138:
    ldx kirby_05E0
    lda $a14d,x
    sta kirby_05E0
    cmp #$00
    bne B14_a14a
    lda #$ff
    sta kirby_copy_ability
B14_a14a:
    jmp ZeroKirbyVelocity

    .incbin "../split/prg/bank14/unk14d.bin"