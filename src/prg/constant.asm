.segment "PRG3E": absolute
    B3E_C000:
    .incbin "../split/prg/bank3e.bin"

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