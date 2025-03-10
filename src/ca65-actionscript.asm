; Actionscript assembler in ca65 (Kirby's Adventure version)

.define VAR0 0
.define VAR1 1
.define VAR2 2
.define VAR3 3
.define VAR4 4
.define VAR5 5
.define VAR6 6
.define VAR7 7
.define VAR8 8
.define VAR9 9

.linecont +
.define _is_var_addressing(val) \
    .xmatch({val}, VAR0) || .xmatch({val}, VAR1) || .xmatch({val}, VAR2) || \
    .xmatch({val}, VAR3) || .xmatch({val}, VAR4) || .xmatch({val}, VAR5) || \
    .xmatch({val}, VAR6) || .xmatch({val}, VAR7) || .xmatch({val}, VAR8) || \
    .xmatch({val}, VAR9)
.linecont -

;**** Implied

.macro _op_implied op
    .byte op
.endmacro

.define END     _op_implied $00
.define ENDLOOP     _op_implied $02
.define A_RTL     _op_implied $05
.define HALT    _op_implied $09
.define ENDTASK     _op_implied $0C
.define ENDTICK     _op_implied $0E
.define ENDLASTTASK _op_implied $12
.define A_RTS     _op_implied $19
.define ZEROVEL     _op_implied $38

;**** OP #imm8

.macro _op_imm8 op, val
    .if .xmatch(.left (1, {val}), #)
        .byte op, .right (.tcount ({val})-1, {val}) ; #
    .else
        .assert 0, error, "unsupported addressing mode"
    .endif
.endmacro

.define SETBANK      _op_imm8 $28, ; #imm8
.define UNK39        _op_imm8 $39, ; #imm8
; Treat TABLExxx as immediate
.define TABLEJMP     _op_imm8 $0F,
.define TABLEJSR     _op_imm8 $10,
.define TABLECALL    _op_imm8 $29,
.define TABLEJSL     _op_imm8 $3E,

;**** OP #imm16

.macro _op_imm16 op, val
    .if .xmatch(.left (1, {val}), #)
        .byte op
        .word .right (.tcount ({val})-1, {val}) ; #
    .else
        .assert 0, error, "unsupported addressing mode"
    .endif
.endmacro

.define SETXPOS     _op_imm16 $2A, ; #imm16
.define SETYPOS     _op_imm16 $2B, ; #imm16
.define ADDXPOS     _op_imm16 $2C, ; #imm16
.define ADDYPOS     _op_imm16 $2D, ; #imm16
.define ADDXVEL     _op_imm16 $2E, ; #imm16
.define ADDYVEL     _op_imm16 $2F, ; #imm16
.define SETZPOS     _op_imm16 $3A, ; #imm16 (TODO: what's "Z"?)
.define ADDZPOS     _op_imm16 $3B, ; #imm16 (TODO: what's "Z"?)
.define SETZVEL     _op_imm16 $3C, ; #imm16 (TODO: what's "Z"?)
.define ADDZVEL     _op_imm16 $3D, ; #imm16 (TODO: what's "Z"?)

;**** OP abs

.macro _op_abs op, val
    .byte op
    .addr .LOWORD(val)
.endmacro

.define TASK        _op_abs $07, ; abs
.define JEQ         _op_abs $0A, ; abs
.define JNE         _op_abs $0B, ; abs
.define BREAKEQ     _op_abs $14, ; abs
.define BREAKNE     _op_abs $15, ; abs
.define A_JMP         _op_abs $17, ; abs
.define A_JSR         _op_abs $18, ; abs
.define ONDRAW      _op_abs $20, ; abs
.define ONPOSITION      _op_abs $21, ; abs
.define ONMOVE      _op_abs $23, ; abs

;**** OP far

.macro _op_far op, val
    .byte op
    .faraddr val
.endmacro

.define JML         _op_far $03, ; far
.define JSL         _op_far $04, ; far
.define ONTICK      _op_far $08, ; far
.define SPRITEMAP       _op_far $1A, ; far
.define ASMCALLF    _op_far $26, ; far

;**** OP #imm8, #imm8

.macro _op_imm8_imm8 op, val1, val2
    .if .xmatch(.left (1, {val1}), #) && .xmatch(.left (1, {val2}), #)
        .byte op
        .byte .right (.tcount ({val1})-1, {val1})
        .byte .right (.tcount ({val2})-1, {val2})
    .else
        .assert 0, error, "unsupported addressing mode"
    .endif
.endmacro

.define UNK30       _op_imm8_imm8 $30, ; #imm8, #imm8
.define UNK31       _op_imm8_imm8 $31, ; #imm8, #imm8
.define UNK32       _op_imm8_imm8 $32, ; #imm8, #imm8
.define UNK33       _op_imm8_imm8 $33, ; #imm8, #imm8
.define UNK34       _op_imm8_imm8 $34, ; #imm8, #imm8
.define UNK35       _op_imm8_imm8 $35, ; #imm8, #imm8
.define UNK36       _op_imm8_imm8 $36, ; #imm8, #imm8
.define UNK37       _op_imm8_imm8 $37, ; #imm8, #imm8

;**** LOOP

.macro LOOP val
    .if .xmatch(.left (1, {val}), #)
        .byte $01, .right (.tcount ({val})-1, {val})
    .elseif .xmatch({val}, REG)
        .byte $22
    .else
        .assert 0, error, "unsupported addressing mode"
    .endif
.endmacro

;**** WAIT

.macro WAIT val
    .if .xmatch(.left (1, {val}), #)
        .byte $06, .right (.tcount ({val})-1, {val})
    .elseif _is_var_addressing {val}
        .byte $1F, val
    .else
        .assert 0, error, "unsupported addressing mode"
    .endif
.endmacro

;**** MOV

.macro MOV dest, val
    .if .xmatch(.left (1, {val}), #)
        .if _is_var_addressing {dest}
            .byte $0D, dest, .right (.tcount ({val})-1, {val})
        .elseif .xmatch({dest}, REG)
            .byte $1B, .right (.tcount ({val})-1, {val})
        .else
            .byte $11
            .word dest
            .byte .right (.tcount ({val})-1, {val})
        .endif
    .elseif _is_var_addressing {dest} && .xmatch({val}, REG)
        .byte $1D, dest
    .elseif .xmatch({dest}, REG)
        .if _is_var_addressing {val}
            .byte $1E, val
        .else
            .byte $1C
            .word val
        .endif
    .else
        .assert 0, error, "unsupported addressing mode"
    .endif
.endmacro

.macro MOVW dest, val
    .if .xmatch(.left, (1, {val}), #)
        .byte $27
        .word dest
        .byte val
    .else
        .assert 0, error, "unsupported addressing mode"
    .endif
.endmacro

;**** BINOP

.macro _binop op, dest, val
    .if _is_var_addressing {dest}
        .byte $13
        .byte dest
        _op_imm8 op, val
    .elseif .xmatch({dest}, REG)
        .byte $16
        _op_imm8 op, val
    .else
        .byte $25
        .word dest
        _op_imm8 op, val
    .endif
.endmacro

.define A_AND _binop 0,
.define OR _binop 1,
.define ADD _binop 2,
.define XOR _binop 3,

.macro SETPOSE val, wait
    .if _is_var_addressing val
    .byte $24, val
    .elseif .xmatch(.left (1, {val}), #)
    .local w
    w .set 0

    .if .paramcount = 2
        .if .xmatch(.left (2, {wait}), WAIT #)
        w .set .right (.tcount ({wait})-2, {wait}) ; #

        .if w < 0 || w > 15
            .assert 0, error, "may only WAIT 0 to 15 frames"
        .endif
        .else
        .assert 0, error, "expected WAIT"
        .endif
    .endif

    .byte $50+w
    .byte .right (.tcount ({val})-1, {val}) ; #
    .else
    .assert 0, error, "unsupported addressing mode"
    .endif
.endmacro

;**** "waited" opcodes

.macro _op_waited op, wait
    .local w
    w .set 0

    .if (.not .blank({wait}))
    .if .xmatch(.left (2, {wait}), WAIT #)
        w .set .right (.tcount ({wait})-2, {wait}) ; #

        .if w < 0 || w > 15
        .assert 0, error, "mya only WAIT 0 to 15 frames"
        .endif
    .else
        .assert 0, error, "expected WAIT"
    .endif
    .endif

    .byte op+w
.endmacro

.macro _op_imm16_waited op, val, wait
    _op_waited op, wait

    .if .xmatch(.left (1, {val}), #)
    .word .right (.tcount ({val})-1, {val}) ; #
    .else
    .assert 0, error, "unsupported addressing mode"
    .endif
.endmacro

.macro ADDPOSE val, wait
    _op_waited $60, wait

    .if .xmatch(.left (1, {val}), #)
    .byte .right (.tcount ({val})-1, {val}) ; #
    .else
    .assert 0, error, "unsupported addressing mode"
    .endif
.endmacro

.define INCPOSE  _op_waited $70,
.define DECPOSE  _op_waited $80,
.define INC2POSE _op_waited $90,
.define DEC2POSE _op_waited $A0,
.define SETXVEL  _op_imm16_waited $B0,
.define SETYVEL  _op_imm16_waited $C0,

;direct bankwise
.macro ASMCALL val, wait
    _op_waited $D0, wait
    .addr .LOWORD(val)
.endmacro

;faraddr calling
.macro ASMCALL_l val, wait
    _op_waited $D0, wait
    .faraddr val
.endmacro
