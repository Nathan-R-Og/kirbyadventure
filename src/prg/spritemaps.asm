;chr page
;tile count
;xpos, ypos, tile, attr

.segment "PRG1A": absolute

L_1A8000:
    .addr L_1A80F4
    .addr L_1A80FE
    .addr L_1A8108
    .addr L_1A8112
    .addr L_1A811C
    .addr L_1A8126
    .addr L_1A8130
    .addr L_1A813A
    .addr L_1A8144
    .addr L_1A8152
    .addr L_1A8160
    .addr L_1A816E
    .addr L_1A817C
    .addr L_1A8186
    .addr L_1A8190
    .addr L_1A8196
    .addr L_1A819C
    .addr L_1A81A2
    .addr L_1A81A8
    .addr L_1A81B2
    .addr L_1A81BC
    .addr L_1A81C6
    .addr L_1A81D0
    .addr L_1A81DA
    .addr L_1A81E4
    .addr L_1A81F2
    .addr L_1A8200
    .addr L_1A820A
    .addr L_1A8214
    .addr L_1A8222
    .addr L_1A8230
    .addr L_1A823A
    .addr L_1A8230
    .addr L_1A823A
    .addr L_1A8244
    .addr L_1A824E
    .addr L_1A8258
    .addr L_1A8262
    .addr L_1A826C
    .addr L_1A8276
    .addr L_1A8230
    .addr L_1A823A
    .addr L_1A8280
    .addr L_1A828A
    .addr L_1A8258
    .addr L_1A8262
    .addr L_1A8294
    .addr L_1A829E
    .addr L_1A82A8
    .addr L_1A82B2
    .addr L_1A82BC
    .addr L_1A82C6
    .addr L_1A82D0
    .addr L_1A82D0
    .addr L_1A82DA
    .addr L_1A82DA
    .addr L_1A82E4
    .addr L_1A82F2
    .addr L_1A8626
    .addr L_1A8630
    .addr L_1A863A
    .addr L_1A8644
    .addr L_1A864E
    .addr L_1A8658
    .addr L_1A8662
    .addr L_1A866C
    .addr L_1A8604
    .addr L_1A8604
    .addr L_1A860E
    .addr L_1A860E
    .addr L_1A861C
    .addr L_1A861C
    .addr L_1A8258
    .addr L_1A8262
    .addr L_1A8300
    .addr L_1A830A
    .addr L_1A8314
    .addr L_1A831E
    .addr L_1A8328
    .addr L_1A833A
    .addr L_1A834C
    .addr L_1A8366
    .addr L_1A8380
    .addr L_1A839A
    .addr L_1A83B4
    .addr L_1A83CE
    .addr L_1A83E8
    .addr L_1A83F2
    .addr L_1A83FC
    .addr L_1A8406
    .addr L_1A8410
    .addr L_1A8422
    .addr L_1A8434
    .addr L_1A8446
    .addr L_1A8458
    .addr L_1A846A
    .addr L_1A847C
    .addr L_1A848A
    .addr L_1A8498
    .addr L_1A84A2
    .addr L_1A84AC
    .addr L_1A84BE
    .addr L_1A84D0
    .addr L_1A84E2
    .addr L_1A84F4
    .addr L_1A8506
    .addr L_1A8518
    .addr L_1A8526
    .addr L_1A85D8
    .addr L_1A85E2
    .addr L_1A85EC
    .addr L_1A85F6
    .addr L_1A8534
    .addr L_1A853E
    .addr L_1A8550
    .addr L_1A8562
    .addr L_1A8574
    .addr L_1A8586
    .addr L_1A8590
    .addr L_1A85A2
    .addr L_1A85B4
    .addr L_1A85C6


    L_1A80F4:
    .byte $80
    .byte $02
    .byte -8, -9, $02, $00
    .byte 0, -9, $12, $00
    L_1A80FE:
    .byte $80
    .byte $02
    .byte 0, -9, $02, $40
    .byte -8, -9, $12, $40
    L_1A8108:
    .byte $80
    .byte $02
    .byte -8, -9, $02, $00
    .byte 0, -9, $5C, $00
    L_1A8112:
    .byte $80
    .byte $02
    .byte 0, -9, $02, $40
    .byte -8, -9, $5C, $40
    L_1A811C:
    .byte $84
    .byte $02
    .byte 0, -7, $10, $00
    .byte -8, -7, $00, $00
    L_1A8126:
    .byte $84
    .byte $02
    .byte 0, -7, $14, $00
    .byte -8, -7, $04, $00
    L_1A8130:
    .byte $84
    .byte $02
    .byte 0, -7, $04, $40
    .byte -8, -7, $14, $40
    L_1A813A:
    .byte $84
    .byte $02
    .byte 0, -7, $00, $40
    .byte -8, -7, $10, $40
    L_1A8144:
    .byte $80
    .byte $03
    .byte -8, 7, $56, $00
    .byte -8, -9, $4E, $00
    .byte 0, -9, $50, $00
    L_1A8152:
    .byte $80
    .byte $03
    .byte -8, 7, $56, $00
    .byte 0, -9, $54, $00
    .byte -8, -9, $52, $00
    L_1A8160:
    .byte $80
    .byte $03
    .byte 0, 7, $56, $40
    .byte -8, -9, $54, $40
    .byte 0, -9, $52, $40
    L_1A816E:
    .byte $80
    .byte $03
    .byte 0, 7, $56, $40
    .byte 0, -9, $4E, $40
    .byte -8, -9, $50, $40
    L_1A817C:
    .byte $80
    .byte $02
    .byte -8, -17, $38, $00
    .byte 0, -17, $3A, $00
    L_1A8186:
    .byte $80
    .byte $02
    .byte 0, -17, $38, $40
    .byte -8, -17, $3A, $40
    L_1A8190:
    .byte $80
    .byte $01
    .byte 0, -9, $28, $00
    L_1A8196:
    .byte $80
    .byte $01
    .byte 0, -9, $28, $40
    L_1A819C:
    .byte $80
    .byte $01
    .byte -8, -9, $28, $00
    L_1A81A2:
    .byte $80
    .byte $01
    .byte -8, -9, $28, $40
    L_1A81A8:
    .byte $80
    .byte $02
    .byte -8, -9, $08, $00
    .byte 0, -9, $18, $00
    L_1A81B2:
    .byte $80
    .byte $02
    .byte 0, -9, $08, $40
    .byte -8, -9, $18, $40
    L_1A81BC:
    .byte $80
    .byte $02
    .byte -8, -9, $06, $00
    .byte 0, -9, $16, $00
    L_1A81C6:
    .byte $80
    .byte $02
    .byte 0, -9, $06, $40
    .byte -8, -9, $16, $40
    L_1A81D0:
    .byte $80
    .byte $02
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00
    L_1A81DA:
    .byte $80
    .byte $02
    .byte 0, -9, $04, $40
    .byte -8, -9, $14, $40
    L_1A81E4:
    .byte $84
    .byte $03
    .byte -8, 7, $26, $00
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    L_1A81F2:
    .byte $84
    .byte $03
    .byte 0, 7, $26, $40
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1A, $40
    L_1A8200:
    .byte $84
    .byte $02
    .byte 0, -11, $1C, $00
    .byte -8, -11, $0C, $00
    L_1A820A:
    .byte $84
    .byte $02
    .byte -8, -11, $1C, $40
    .byte 0, -11, $0C, $40
    L_1A8214:
    .byte $84
    .byte $03
    .byte -6, 7, $26, $00
    .byte 0, -9, $1E, $00
    .byte -8, -9, $0E, $00
    L_1A8222:
    .byte $84
    .byte $03
    .byte -2, 7, $26, $40
    .byte -8, -9, $1E, $40
    .byte 0, -9, $0E, $40
    L_1A8230:
    .byte $80
    .byte $02
    .byte -8, -9, $2A, $00
    .byte 0, -9, $2C, $00
    L_1A823A:
    .byte $80
    .byte $02
    .byte 0, -9, $2A, $40
    .byte -8, -9, $2C, $40
    L_1A8244:
    .byte $80
    .byte $02
    .byte -8, -9, $48, $00
    .byte 0, -9, $4A, $00
    L_1A824E:
    .byte $80
    .byte $02
    .byte 0, -9, $48, $40
    .byte -8, -9, $4A, $40
    L_1A8258:
    .byte $80
    .byte $02
    .byte -8, -9, $0E, $00
    .byte 0, -9, $1E, $00
    L_1A8262:
    .byte $80
    .byte $02
    .byte 0, -9, $0E, $40
    .byte -8, -9, $1E, $40
    L_1A826C:
    .byte $80
    .byte $02
    .byte 0, -9, $32, $C0
    .byte -8, -9, $30, $C0
    L_1A8276:
    .byte $80
    .byte $02
    .byte -8, -9, $32, $80
    .byte 0, -9, $30, $80
    L_1A8280:
    .byte $80
    .byte $02
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1A828A:
    .byte $80
    .byte $02
    .byte 0, -9, $00, $40
    .byte -8, -9, $10, $40
    L_1A8294:
    .byte $80
    .byte $02
    .byte -8, -9, $38, $00
    .byte 0, -9, $3A, $00
    L_1A829E:
    .byte $80
    .byte $02
    .byte 0, -9, $38, $40
    .byte -8, -9, $3A, $40
    L_1A82A8:
    .byte $84
    .byte $02
    .byte 0, -7, $16, $00
    .byte -8, -7, $06, $00
    L_1A82B2:
    .byte $84
    .byte $02
    .byte 0, -7, $18, $00
    .byte -8, -7, $08, $00
    L_1A82BC:
    .byte $84
    .byte $02
    .byte -8, -7, $18, $40
    .byte 0, -7, $08, $40
    L_1A82C6:
    .byte $84
    .byte $02
    .byte -8, -7, $16, $40
    .byte 0, -7, $06, $40
    L_1A82D0:
    .byte $80
    .byte $02
    .byte 0, -6, $5A, $00
    .byte -8, -6, $58, $00
    L_1A82DA:
    .byte $80
    .byte $02
    .byte -8, -6, $5A, $40
    .byte 0, -6, $58, $40
    L_1A82E4:
    .byte $80
    .byte $03
    .byte -10, -9, $34, $00
    .byte -2, -9, $36, $00
    .byte 6, -9, $2E, $00
    L_1A82F2:
    .byte $80
    .byte $03
    .byte 2, -9, $34, $40
    .byte -6, -9, $36, $40
    .byte -14, -9, $2E, $40
    L_1A8300:
    .byte $80
    .byte $02
    .byte -8, -9, $0A, $00
    .byte 0, -9, $1A, $00
    L_1A830A:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1A, $40
    L_1A8314:
    .byte $80
    .byte $02
    .byte -8, -9, $0A, $00
    .byte 0, -9, $1C, $00
    L_1A831E:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1C, $40
    L_1A8328:
    .byte $82
    .byte $04
    .byte 0, -1, $4E, $00
    .byte -8, -1, $4A, $00
    .byte -8, -17, $48, $00
    .byte 0, -17, $4C, $00
    L_1A833A:
    .byte $82
    .byte $04
    .byte -8, -1, $4E, $40
    .byte 0, -1, $4A, $40
    .byte 0, -17, $48, $40
    .byte -8, -17, $4C, $40
    L_1A834C:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $08, $00
    .byte -12, -1, $34, $00
    .byte 4, -17, $1A, $00
    .byte -4, -17, $2A, $00
    .byte -12, -17, $02, $00
    L_1A8366:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $34, $40
    .byte -12, -1, $08, $40
    .byte 4, -17, $02, $40
    .byte -4, -17, $2A, $40
    .byte -12, -17, $1A, $40
    L_1A8380:
    .byte $82
    .byte $06
    .byte -4, -2, $16, $00
    .byte 4, -2, $08, $00
    .byte -12, -2, $34, $00
    .byte 4, -18, $20, $00
    .byte -4, -18, $10, $00
    .byte -12, -18, $00, $00
    L_1A839A:
    .byte $82
    .byte $06
    .byte -4, -2, $16, $00
    .byte 4, -2, $34, $40
    .byte -12, -2, $08, $40
    .byte 4, -18, $00, $40
    .byte -4, -18, $10, $40
    .byte -12, -18, $20, $40
    L_1A83B4:
    .byte $82
    .byte $06
    .byte -4, 0, $16, $00
    .byte 4, 0, $08, $00
    .byte -12, 0, $34, $00
    .byte 4, -16, $32, $00
    .byte -4, -16, $10, $00
    .byte -12, -16, $0E, $00
    L_1A83CE:
    .byte $82
    .byte $06
    .byte -4, 0, $16, $00
    .byte 4, 0, $34, $40
    .byte -12, 0, $08, $40
    .byte 4, -16, $0E, $40
    .byte -4, -16, $10, $40
    .byte -12, -16, $32, $40
    L_1A83E8:
    .byte $92
    .byte $02
    .byte 0, -9, $3A, $00
    .byte -8, -9, $2A, $00
    L_1A83F2:
    .byte $92
    .byte $02
    .byte 0, -9, $2A, $40
    .byte -8, -9, $3A, $40
    L_1A83FC:
    .byte $92
    .byte $02
    .byte 0, -9, $52, $00
    .byte -8, -9, $42, $00
    L_1A8406:
    .byte $92
    .byte $02
    .byte 0, -9, $42, $40
    .byte -8, -9, $52, $40
    L_1A8410:
    .byte $92
    .byte $04
    .byte 13, -10, $58, $01
    .byte 8, -10, $48, $01
    .byte -8, -9, $42, $00
    .byte 0, -9, $52, $00
    L_1A8422:
    .byte $92
    .byte $04
    .byte -21, -10, $58, $41
    .byte -16, -10, $48, $41
    .byte 0, -9, $42, $40
    .byte -8, -9, $52, $40
    L_1A8434:
    .byte $92
    .byte $04
    .byte 18, -10, $56, $01
    .byte 10, -10, $46, $01
    .byte 0, -9, $52, $00
    .byte -8, -9, $42, $00
    L_1A8446:
    .byte $92
    .byte $04
    .byte -26, -10, $56, $41
    .byte -18, -10, $46, $41
    .byte -8, -9, $52, $40
    .byte 0, -9, $42, $40
    L_1A8458:
    .byte $92
    .byte $04
    .byte 18, -10, $58, $01
    .byte 10, -10, $48, $01
    .byte -8, -9, $42, $00
    .byte 0, -9, $52, $00
    L_1A846A:
    .byte $92
    .byte $04
    .byte -26, -10, $58, $41
    .byte -18, -10, $48, $41
    .byte 0, -9, $42, $40
    .byte -8, -9, $52, $40
    L_1A847C:
    .byte $92
    .byte $03
    .byte 18, -11, $60, $01
    .byte 0, -9, $52, $00
    .byte -8, -9, $42, $00
    L_1A848A:
    .byte $92
    .byte $03
    .byte -26, -11, $60, $41
    .byte -8, -9, $52, $40
    .byte 0, -9, $42, $40
    L_1A8498:
    .byte $92
    .byte $02
    .byte -5, -9, $62, $00
    .byte 3, -9, $52, $00
    L_1A84A2:
    .byte $92
    .byte $02
    .byte -3, -9, $62, $40
    .byte -11, -9, $52, $40
    L_1A84AC:
    .byte $92
    .byte $04
    .byte 16, -10, $58, $01
    .byte 11, -10, $48, $01
    .byte -5, -9, $62, $00
    .byte 3, -9, $52, $00
    L_1A84BE:
    .byte $92
    .byte $04
    .byte -24, -10, $58, $41
    .byte -19, -10, $48, $41
    .byte -3, -9, $62, $40
    .byte -11, -9, $52, $40
    L_1A84D0:
    .byte $92
    .byte $04
    .byte 21, -10, $56, $01
    .byte 13, -10, $46, $01
    .byte 3, -9, $52, $00
    .byte -5, -9, $62, $00
    L_1A84E2:
    .byte $92
    .byte $04
    .byte -29, -10, $56, $41
    .byte -21, -10, $46, $41
    .byte -11, -9, $52, $40
    .byte -3, -9, $62, $40
    L_1A84F4:
    .byte $92
    .byte $04
    .byte 21, -10, $58, $01
    .byte 13, -10, $48, $01
    .byte -5, -9, $62, $00
    .byte 3, -9, $52, $00
    L_1A8506:
    .byte $92
    .byte $04
    .byte -29, -10, $58, $41
    .byte -21, -10, $48, $41
    .byte -3, -9, $62, $40
    .byte -11, -9, $52, $40
    L_1A8518:
    .byte $92
    .byte $03
    .byte 21, -11, $60, $01
    .byte 3, -9, $52, $00
    .byte -5, -9, $62, $00
    L_1A8526:
    .byte $92
    .byte $03
    .byte -29, -11, $60, $41
    .byte -11, -9, $52, $40
    .byte -3, -9, $62, $40
    L_1A8534:
    .byte $92
    .byte $02
    .byte 0, -9, $44, $40
    .byte -8, -9, $44, $00
    L_1A853E:
    .byte $92
    .byte $04
    .byte 0, -21, $4C, $41
    .byte -8, -21, $4C, $01
    .byte 0, -9, $44, $40
    .byte -8, -9, $44, $00
    L_1A8550:
    .byte $92
    .byte $04
    .byte 0, -25, $4A, $41
    .byte -8, -25, $4A, $01
    .byte 0, -9, $44, $40
    .byte -8, -9, $44, $00
    L_1A8562:
    .byte $92
    .byte $04
    .byte 0, -25, $4C, $41
    .byte -8, -25, $4C, $01
    .byte 0, -9, $44, $40
    .byte -8, -9, $44, $00
    L_1A8574:
    .byte $92
    .byte $04
    .byte 0, -29, $4E, $41
    .byte -8, -29, $4E, $01
    .byte 0, -9, $44, $40
    .byte -8, -9, $44, $00
    L_1A8586:
    .byte $92
    .byte $02
    .byte 0, -9, $3C, $40
    .byte -8, -9, $3C, $00
    L_1A8590:
    .byte $92
    .byte $04
    .byte 0, 3, $4C, $C1
    .byte -8, 3, $4C, $81
    .byte 0, -9, $3C, $40
    .byte -8, -9, $3C, $00
    L_1A85A2:
    .byte $92
    .byte $04
    .byte 0, 7, $4A, $C1
    .byte -8, 7, $4A, $81
    .byte 0, -9, $3C, $40
    .byte -8, -9, $3C, $00
    L_1A85B4:
    .byte $92
    .byte $04
    .byte 0, 7, $4C, $C1
    .byte -8, 7, $4C, $81
    .byte 0, -9, $3C, $40
    .byte -8, -9, $3C, $00
    L_1A85C6:
    .byte $92
    .byte $04
    .byte 0, 11, $4E, $C1
    .byte -8, 11, $4E, $81
    .byte 0, -9, $3C, $40
    .byte -8, -9, $3C, $00
    L_1A85D8:
    .byte $82
    .byte $02
    .byte 0, -9, $3C, $40
    .byte -8, -9, $3A, $00
    L_1A85E2:
    .byte $82
    .byte $02
    .byte -8, -9, $3C, $00
    .byte 0, -9, $3A, $40
    L_1A85EC:
    .byte $82
    .byte $02
    .byte 0, -9, $3E, $40
    .byte -8, -9, $3E, $00
    L_1A85F6:
    .byte $82
    .byte $03
    .byte 4, -9, $40, $40
    .byte -12, -9, $40, $00
    .byte -4, -9, $42, $40
    L_1A8604:
    .byte $92
    .byte $02
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1A860E:
    .byte $92
    .byte $03
    .byte -12, -9, $26, $00
    .byte 3, -9, $26, $40
    .byte -4, -9, $36, $00
    L_1A861C:
    .byte $92
    .byte $02
    .byte 0, -9, $38, $00
    .byte -8, -9, $28, $00
    L_1A8626:
    .byte $82
    .byte $02
    .byte 0, -8, $52, $00
    .byte -8, -8, $50, $00
    L_1A8630:
    .byte $82
    .byte $02
    .byte -8, -8, $52, $40
    .byte 0, -8, $50, $40
    L_1A863A:
    .byte $82
    .byte $02
    .byte 0, -9, $56, $00
    .byte -8, -9, $54, $00
    L_1A8644:
    .byte $82
    .byte $02
    .byte -8, -9, $56, $40
    .byte 0, -9, $54, $40
    L_1A864E:
    .byte $82
    .byte $02
    .byte 0, -7, $5A, $00
    .byte -8, -7, $58, $00
    L_1A8658:
    .byte $82
    .byte $02
    .byte -8, -7, $5A, $40
    .byte 0, -7, $58, $40
    L_1A8662:
    .byte $82
    .byte $02
    .byte 0, -8, $5E, $00
    .byte -8, -8, $5C, $00
    L_1A866C:
    .byte $82
    .byte $02
    .byte -8, -8, $5E, $40
    .byte 0, -8, $5C, $40

L_1A8676:
    .addr L_1A8774
    .addr L_1A877E
    .addr L_1A8788
    .addr L_1A8792
    .addr L_1A879C
    .addr L_1A87A6
    .addr L_1A87B0
    .addr L_1A87BA
    .addr L_1A8144
    .addr L_1A8152
    .addr L_1A8160
    .addr L_1A816E
    .addr L_1A817C
    .addr L_1A8186
    .addr L_1A8190
    .addr L_1A8196
    .addr L_1A819C
    .addr L_1A81A2
    .addr L_1A87C4
    .addr L_1A87CE
    .addr L_1A87D8
    .addr L_1A87E2
    .addr L_1A87EC
    .addr L_1A87F6
    .addr L_1A81E4
    .addr L_1A81F2
    .addr L_1A8200
    .addr L_1A820A
    .addr L_1A8214
    .addr L_1A8222
    .addr L_1A8230
    .addr L_1A823A
    .addr L_1A8230
    .addr L_1A823A
    .addr L_1A8800
    .addr L_1A880A
    .addr L_1A8258
    .addr L_1A8262
    .addr L_1A826C
    .addr L_1A8276
    .addr L_1A8230
    .addr L_1A823A
    .addr L_1A8280
    .addr L_1A828A
    .addr L_1A8258
    .addr L_1A8262
    .addr L_1A8294
    .addr L_1A829E
    .addr L_1A82A8
    .addr L_1A82B2
    .addr L_1A82BC
    .addr L_1A82C6
    .addr L_1A82D0
    .addr L_1A82D0
    .addr L_1A82DA
    .addr L_1A82DA
    .addr L_1A82E4
    .addr L_1A82F2
    .addr L_1A8626
    .addr L_1A8630
    .addr L_1A863A
    .addr L_1A8644
    .addr L_1A864E
    .addr L_1A8658
    .addr L_1A8662
    .addr L_1A866C
    .addr L_1A8604
    .addr L_1A8604
    .addr L_1A860E
    .addr L_1A860E
    .addr L_1A861C
    .addr L_1A861C
    .addr L_1A8258
    .addr L_1A8262
    .addr L_1A8300
    .addr L_1A830A
    .addr L_1A8314
    .addr L_1A831E
    .addr L_1A8328
    .addr L_1A833A
    .addr L_1A834C
    .addr L_1A8366
    .addr L_1A8380
    .addr L_1A839A
    .addr L_1A83B4
    .addr L_1A83CE
    .addr L_1A83E8
    .addr L_1A83F2
    .addr L_1A83FC
    .addr L_1A8406
    .addr L_1A8410
    .addr L_1A8422
    .addr L_1A8434
    .addr L_1A8446
    .addr L_1A8458
    .addr L_1A846A
    .addr L_1A847C
    .addr L_1A848A
    .addr L_1A8498
    .addr L_1A84A2
    .addr L_1A84AC
    .addr L_1A84BE
    .addr L_1A84D0
    .addr L_1A84E2
    .addr L_1A84F4
    .addr L_1A8506
    .addr L_1A8518
    .addr L_1A8526
    .addr L_1A85D8
    .addr L_1A85E2
    .addr L_1A85EC
    .addr L_1A85F6
    .addr L_1A8814
    .addr L_1A881E
    .addr L_1A8828
    .addr L_1A8832
    .addr L_1A883C
    .addr L_1A8534
    .addr L_1A853E
    .addr L_1A8550
    .addr L_1A8562
    .addr L_1A8574
    .addr L_1A8586
    .addr L_1A8590
    .addr L_1A85A2
    .addr L_1A85B4
    .addr L_1A85C6

    L_1A8774:
    .byte $80 ;chr page
    .byte 2 ; UNK0 (tile count?)
    ;xpos, ypos, tile, attr
    .byte -8,-9,$02,$00
    .byte  0,-9,$20,$00
    L_1A877E:
    .byte $80
    .byte $02
    .byte 0, -9, $02, $40
    .byte -8, -9, $20, $40
    L_1A8788:
    .byte $80
    .byte $02
    .byte -8, -9, $02, $00
    .byte 0, -9, $5E, $00
    L_1A8792:
    .byte $80
    .byte $02
    .byte 0, -9, $02, $40
    .byte -8, -9, $5E, $40
    L_1A879C:
    .byte $84
    .byte $02
    .byte 0, -7, $12, $00
    .byte -8, -7, $00, $00
    L_1A87A6:
    .byte $84
    .byte $02
    .byte -8, -7, $02, $00
    .byte 0, -7, $14, $00
    L_1A87B0:
    .byte $84
    .byte $02
    .byte -8, -7, $14, $40
    .byte 0, -7, $02, $40
    L_1A87BA:
    .byte $84
    .byte $02
    .byte 0, -7, $00, $40
    .byte -8, -7, $12, $40
    L_1A87C4:
    .byte $80
    .byte $02
    .byte -8, -9, $08, $00
    .byte 0, -9, $26, $00
    L_1A87CE:
    .byte $80
    .byte $02
    .byte 0, -9, $08, $40
    .byte -8, -9, $26, $40
    L_1A87D8:
    .byte $80
    .byte $02
    .byte 0, -9, $24, $00
    .byte -8, -9, $06, $00
    L_1A87E2:
    .byte $80
    .byte $02
    .byte -8, -9, $24, $40
    .byte 0, -9, $06, $40
    L_1A87EC:
    .byte $80
    .byte $02
    .byte -8, -9, $04, $00
    .byte 0, -9, $22, $00
    L_1A87F6:
    .byte $80
    .byte $02
    .byte 0, -9, $04, $40
    .byte -8, -9, $22, $40
    L_1A8800:
    .byte $80
    .byte $02
    .byte -8, -9, $48, $00
    .byte 0, -9, $4C, $00
    L_1A880A:
    .byte $80
    .byte $02
    .byte 0, -9, $48, $40
    .byte -8, -9, $4C, $40
    L_1A8814:
    .byte $92
    .byte $02
    .byte -2, -9, $30, $00
    .byte -10, -9, $20, $00
    L_1A881E:
    .byte $92
    .byte $02
    .byte 0, -9, $1E, $00
    .byte -8, -9, $0E, $00
    L_1A8828:
    .byte $92
    .byte $02
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1A8832:
    .byte $92
    .byte $02
    .byte -8, -9, $1E, $40
    .byte 0, -9, $0E, $40
    L_1A883C:
    .byte $92
    .byte $02
    .byte -6, -9, $30, $40
    .byte 2, -9, $20, $40

L_1A8846:
    .addr L_1A88D2
    .addr L_1A88DC
    .addr L_1A88E6
    .addr L_1A88F8
    .addr L_1A890A
    .addr L_1A8924
    .addr L_1A893E
    .addr L_1A8958
    .addr L_1A8972
    .addr L_1A898C
    .addr L_1A89A6
    .addr L_1A89C0
    .addr L_1A89DA
    .addr L_1A89F4
    .addr L_1A8A0E
    .addr L_1A8A28
    .addr L_1A8A42
    .addr L_1A8A5C
    .addr L_1A8A8A
    .addr L_1A8A94
    .addr L_1A8A76
    .addr L_1A8A80
    .addr L_1A8A9E
    .addr L_1A8AB8
    .addr L_1A8AD2
    .addr L_1A8AEC
    .addr L_1A8B06
    .addr L_1A8B20
    .addr L_1A8B3A
    .addr L_1A8B54
    .addr L_1A8B6E
    .addr L_1A8B88
    .addr L_1A8BA2
    .addr L_1A8BBC
    .addr L_1A8BD6
    .addr L_1A8BF0
    .addr L_1A8C0A
    .addr L_1A8C24
    .addr L_1A8C3E
    .addr L_1A8C58
    .addr L_1A8C72
    .addr L_1A8C8C
    .addr L_1A8CA6
    .addr L_1A8CC0
    .addr L_1A8CDA
    .addr L_1A8CF4
    .addr L_1A8D0E
    .addr L_1A8D28
    .addr L_1A8D42
    .addr L_1A8D5C
    .addr L_1A8D76
    .addr L_1A8D90
    .addr L_1A8DAA
    .addr L_1A8DC4
    .addr L_1A8D42
    .addr L_1A8D5C
    .addr L_1A8DDE
    .addr L_1A8DF8
    .addr L_1A8E12
    .addr L_1A8E24
    .addr L_1A8E36
    .addr L_1A8E40
    .addr L_1A8E4A
    .addr L_1A8E64
    .addr L_1A8E7E
    .addr L_1A8E98
    .addr L_1A8EB2
    .addr L_1A8ECC
    .addr L_1A8E4A
    .addr L_1A8E64

    L_1A88D2:
    .byte $80
    .byte $02
    .byte -8, -9, $0A, $00
    .byte 0, -9, $1C, $00
    L_1A88DC:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1C, $40
    L_1A88E6:
    .byte $82
    .byte $04
    .byte 0, -1, $4E, $00
    .byte -8, -1, $4A, $00
    .byte -8, -17, $48, $00
    .byte 0, -17, $4C, $00
    L_1A88F8:
    .byte $82
    .byte $04
    .byte -8, -1, $4E, $40
    .byte 0, -1, $4A, $40
    .byte 0, -17, $48, $40
    .byte -8, -17, $4C, $40
    L_1A890A:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $0A, $00
    .byte -4, -17, $2A, $00
    .byte -12, -17, $02, $00
    L_1A8924:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $02, $40
    .byte -4, -17, $2A, $40
    .byte -12, -17, $0A, $40
    L_1A893E:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $20, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $00, $00
    L_1A8958:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $00, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $20, $40
    L_1A8972:
    .byte $82
    .byte $06
    .byte -7, -1, $16, $00
    .byte 1, -1, $28, $00
    .byte -15, -1, $28, $40
    .byte 1, -17, $20, $00
    .byte -7, -17, $10, $00
    .byte -15, -17, $00, $00
    L_1A898C:
    .byte $82
    .byte $06
    .byte -7, -1, $16, $00
    .byte 1, -1, $28, $00
    .byte -15, -1, $28, $40
    .byte 1, -17, $00, $40
    .byte -7, -17, $10, $40
    .byte -15, -17, $20, $40
    L_1A89A6:
    .byte $82
    .byte $06
    .byte -1, -1, $16, $00
    .byte 7, -1, $28, $00
    .byte -9, -1, $28, $40
    .byte 7, -17, $20, $00
    .byte -1, -17, $10, $00
    .byte -9, -17, $00, $00
    L_1A89C0:
    .byte $82
    .byte $06
    .byte -1, -1, $16, $00
    .byte 7, -1, $28, $00
    .byte -9, -1, $28, $40
    .byte 7, -17, $00, $40
    .byte -1, -17, $10, $40
    .byte -9, -17, $20, $40
    L_1A89DA:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $0A, $00
    .byte -4, -17, $2A, $00
    .byte -12, -17, $02, $00
    L_1A89F4:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $02, $40
    .byte -4, -17, $2A, $40
    .byte -12, -17, $0A, $40
    L_1A8A0E:
    .byte $82
    .byte $06
    .byte -4, 1, $16, $00
    .byte 4, 1, $28, $00
    .byte -12, 1, $28, $40
    .byte 4, -15, $0A, $00
    .byte -4, -15, $2A, $00
    .byte -12, -15, $02, $00
    L_1A8A28:
    .byte $82
    .byte $06
    .byte -4, 1, $16, $40
    .byte -12, 1, $28, $40
    .byte 4, 1, $28, $00
    .byte -12, -15, $0A, $40
    .byte -4, -15, $2A, $40
    .byte 4, -15, $02, $40
    L_1A8A42:
    .byte $82
    .byte $06
    .byte -4, 3, $16, $00
    .byte 4, 3, $28, $00
    .byte -12, 3, $28, $40
    .byte 4, -13, $0A, $00
    .byte -4, -13, $2A, $00
    .byte -12, -13, $02, $00
    L_1A8A5C:
    .byte $82
    .byte $06
    .byte -4, 3, $16, $40
    .byte -12, 3, $28, $40
    .byte 4, 3, $28, $00
    .byte -12, -13, $0A, $40
    .byte -4, -13, $2A, $40
    .byte 4, -13, $02, $40
    L_1A8A76:
    .byte $82
    .byte $02
    .byte 0, -9, $62, $00
    .byte -8, -9, $60, $00
    L_1A8A80:
    .byte $82
    .byte $02
    .byte -8, -9, $62, $40
    .byte 0, -9, $60, $40
    L_1A8A8A:
    .byte $82
    .byte $02
    .byte 0, -9, $62, $01
    .byte -8, -9, $60, $01
    L_1A8A94:
    .byte $82
    .byte $02
    .byte -8, -9, $62, $41
    .byte 0, -9, $60, $41
    L_1A8A9E:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $32, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $0E, $00
    L_1A8AB8:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $0E, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $32, $40
    L_1A8AD2:
    .byte $82
    .byte $06
    .byte -4, -1, $38, $00
    .byte 4, -1, $08, $00
    .byte -12, -1, $36, $00
    .byte 4, -17, $20, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $00, $00
    L_1A8AEC:
    .byte $82
    .byte $06
    .byte -4, -1, $38, $00
    .byte 4, -1, $08, $00
    .byte -12, -1, $36, $00
    .byte 4, -17, $00, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $20, $40
    L_1A8B06:
    .byte $82
    .byte $06
    .byte -4, -1, $38, $40
    .byte 4, -1, $36, $40
    .byte -12, -1, $08, $40
    .byte 4, -17, $20, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $00, $00
    L_1A8B20:
    .byte $82
    .byte $06
    .byte -4, -1, $38, $40
    .byte 4, -1, $36, $40
    .byte -12, -1, $08, $40
    .byte 4, -17, $00, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $20, $40
    L_1A8B3A:
    .byte $82
    .byte $06
    .byte -4, -1, $46, $00
    .byte 4, -1, $08, $00
    .byte -12, -1, $44, $00
    .byte 4, -17, $20, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $00, $00
    L_1A8B54:
    .byte $82
    .byte $06
    .byte -4, -1, $46, $00
    .byte 4, -1, $08, $00
    .byte -12, -1, $44, $00
    .byte 4, -17, $00, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $20, $40
    L_1A8B6E:
    .byte $82
    .byte $06
    .byte -4, -1, $46, $40
    .byte 4, -1, $44, $40
    .byte -12, -1, $08, $40
    .byte 4, -17, $20, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $00, $00
    L_1A8B88:
    .byte $82
    .byte $06
    .byte -4, -1, $46, $40
    .byte 4, -1, $44, $40
    .byte -12, -1, $08, $40
    .byte 4, -17, $00, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $20, $40
    L_1A8BA2:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $26, $00
    .byte -12, -1, $06, $40
    .byte 4, -17, $20, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $00, $00
    L_1A8BBC:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $06, $00
    .byte -12, -1, $26, $40
    .byte 4, -17, $00, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $20, $40
    L_1A8BD6:
    .byte $82
    .byte $06
    .byte -4, 1, $18, $00
    .byte 4, 1, $08, $00
    .byte -12, 1, $08, $40
    .byte 4, -15, $22, $00
    .byte -4, -15, $12, $00
    .byte -12, -15, $02, $00
    L_1A8BF0:
    .byte $82
    .byte $06
    .byte -4, 1, $18, $00
    .byte 4, 1, $08, $00
    .byte -12, 1, $08, $40
    .byte 4, -15, $02, $40
    .byte -4, -15, $12, $40
    .byte -12, -15, $22, $40
    L_1A8C0A:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $26, $40
    .byte 4, -17, $24, $00
    .byte -4, -17, $14, $00
    .byte -12, -17, $04, $00
    L_1A8C24:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $40
    .byte 4, -1, $26, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $04, $40
    .byte -4, -17, $14, $40
    .byte -12, -17, $24, $40
    L_1A8C3E:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $26, $00
    .byte -12, -1, $06, $40
    .byte 4, -17, $20, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $00, $00
    L_1A8C58:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $06, $00
    .byte -12, -1, $26, $40
    .byte 4, -17, $00, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $20, $40
    L_1A8C72:
    .byte $82
    .byte $06
    .byte -4, 1, $18, $00
    .byte 4, 1, $08, $00
    .byte -12, 1, $08, $40
    .byte 4, -15, $22, $00
    .byte -4, -15, $12, $00
    .byte -12, -15, $02, $00
    L_1A8C8C:
    .byte $82
    .byte $06
    .byte -4, 1, $18, $00
    .byte 4, 1, $08, $00
    .byte -12, 1, $08, $40
    .byte 4, -15, $02, $40
    .byte -4, -15, $12, $40
    .byte -12, -15, $22, $40
    L_1A8CA6:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $26, $40
    .byte 4, -17, $24, $00
    .byte -4, -17, $14, $00
    .byte -12, -17, $04, $00
    L_1A8CC0:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $40
    .byte 4, -1, $26, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $04, $40
    .byte -4, -17, $14, $40
    .byte -12, -17, $24, $40
    L_1A8CDA:
    .byte $82
    .byte $06
    .byte -4, -1, $46, $40
    .byte 4, -1, $44, $40
    .byte -12, -1, $08, $40
    .byte 4, -17, $20, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $00, $00
    L_1A8CF4:
    .byte $82
    .byte $06
    .byte -4, -1, $46, $00
    .byte 4, -1, $08, $00
    .byte -12, -1, $44, $00
    .byte 4, -17, $00, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $20, $40
    L_1A8D0E:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $32, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $0E, $00
    L_1A8D28:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $0E, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $32, $40
    L_1A8D42:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $26, $00
    .byte -12, -1, $06, $40
    .byte 4, -17, $20, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $00, $00
    L_1A8D5C:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $06, $00
    .byte -12, -1, $26, $40
    .byte 4, -17, $00, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $20, $40
    L_1A8D76:
    .byte $82
    .byte $06
    .byte -4, 1, $18, $00
    .byte 4, 1, $08, $00
    .byte -12, 1, $08, $40
    .byte 4, -15, $22, $00
    .byte -4, -15, $12, $00
    .byte -12, -15, $02, $00
    L_1A8D90:
    .byte $82
    .byte $06
    .byte -4, 1, $18, $00
    .byte 4, 1, $08, $00
    .byte -12, 1, $08, $40
    .byte 4, -15, $02, $40
    .byte -4, -15, $12, $40
    .byte -12, -15, $22, $40
    L_1A8DAA:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $26, $40
    .byte 4, -17, $24, $00
    .byte -4, -17, $14, $00
    .byte -12, -17, $04, $00
    L_1A8DC4:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $40
    .byte 4, -1, $26, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $04, $40
    .byte -4, -17, $14, $40
    .byte -12, -17, $24, $40
    L_1A8DDE:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $1A, $00
    .byte -4, -17, $2A, $00
    .byte -12, -17, $02, $00
    L_1A8DF8:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $02, $40
    .byte -4, -17, $2A, $40
    .byte -12, -17, $1A, $40
    L_1A8E12:
    .byte $82
    .byte $04
    .byte 0, -1, $4E, $00
    .byte -8, -1, $4A, $00
    .byte -8, -17, $48, $00
    .byte 0, -17, $4C, $00
    L_1A8E24:
    .byte $82
    .byte $04
    .byte -8, -1, $4E, $40
    .byte 0, -1, $4A, $40
    .byte 0, -17, $48, $40
    .byte -8, -17, $4C, $40
    L_1A8E36:
    .byte $80
    .byte $02
    .byte -8, -9, $0A, $00
    .byte 0, -9, $1C, $00
    L_1A8E40:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1C, $40
    L_1A8E4A:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $26, $00
    .byte -12, -1, $06, $40
    .byte 4, -17, $20, $00
    .byte -4, -17, $10, $00
    .byte -12, -17, $00, $00
    L_1A8E64:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $06, $00
    .byte -12, -1, $26, $40
    .byte 4, -17, $00, $40
    .byte -4, -17, $10, $40
    .byte -12, -17, $20, $40
    L_1A8E7E:
    .byte $82
    .byte $06
    .byte -4, 1, $18, $00
    .byte 4, 1, $08, $00
    .byte -12, 1, $08, $40
    .byte 4, -15, $22, $00
    .byte -4, -15, $12, $00
    .byte -12, -15, $02, $00
    L_1A8E98:
    .byte $82
    .byte $06
    .byte -4, 1, $18, $00
    .byte 4, 1, $08, $00
    .byte -12, 1, $08, $40
    .byte 4, -15, $02, $40
    .byte -4, -15, $12, $40
    .byte -12, -15, $22, $40
    L_1A8EB2:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $00
    .byte 4, -1, $28, $00
    .byte -12, -1, $26, $40
    .byte 4, -17, $24, $00
    .byte -4, -17, $14, $00
    .byte -12, -17, $04, $00
    L_1A8ECC:
    .byte $82
    .byte $06
    .byte -4, -1, $16, $40
    .byte 4, -1, $26, $00
    .byte -12, -1, $28, $40
    .byte 4, -17, $04, $40
    .byte -4, -17, $14, $40
    .byte -12, -17, $24, $40

L_1A8EE6:
    .addr L_1A8FDC
    .addr L_1A8FEA
    .addr L_1A8FF8
    .addr L_1A9006
    .addr L_1A9014
    .addr L_1A9022
    .addr L_1A9030
    .addr L_1A9042
    .addr L_1A9054
    .addr L_1A9066
    .addr L_1A9078
    .addr L_1A9086
    .addr L_1A9094
    .addr L_1A909E
    .addr L_1A90A8
    .addr L_1A90B2
    .addr L_1A90BC
    .addr L_1A90CA
    .addr L_1A90D8
    .addr L_1A90E6
    .addr L_1A90F4
    .addr L_1A9106
    .addr L_1A9118
    .addr L_1A914A
    .addr L_1A912A
    .addr L_1A915C
    .addr L_1A9138
    .addr L_1A916A
    .addr L_1A917C
    .addr L_1A918E
    .addr L_1A917C
    .addr L_1A918E
    .addr L_1A91A0
    .addr L_1A91AE
    .addr L_1A91BC
    .addr L_1A91CA
    .addr L_1A91D8
    .addr L_1A91E2
    .addr L_1A91EC
    .addr L_1A91F6
    .addr L_1A9200
    .addr L_1A920A
    .addr L_1A9214
    .addr L_1A9214
    .addr L_1A921E
    .addr L_1A921E
    .addr L_1A9228
    .addr L_1A923A
    .addr L_1A924C
    .addr L_1A925E
    .addr L_1A9270
    .addr L_1A927E
    .addr L_1A928C
    .addr L_1A92A6
    .addr L_1A92C0
    .addr L_1A92D2
    .addr L_1A92E4
    .addr L_1A92F6
    .addr L_1A9308
    .addr L_1A931A
    .addr L_1A932C
    .addr L_1A933E
    .addr L_1A9350
    .addr L_1A935E
    .addr L_1A936C
    .addr L_1A9382
    .addr L_1A9398
    .addr L_1A93AE
    .addr L_1A95D8
    .addr L_1A95D8
    .addr L_1A95F2
    .addr L_1A9666
    .addr L_1A9604
    .addr L_1A9654
    .addr L_1A9616
    .addr L_1A9642
    .addr L_1A9628
    .addr L_1A9628
    .addr L_1A9642
    .addr L_1A9616
    .addr L_1A9654
    .addr L_1A9604
    .addr L_1A9666
    .addr L_1A95F2
    .addr L_1A93E6
    .addr L_1A93F0
    .addr L_1A93FA
    .addr L_1A9404
    .addr L_1A940E
    .addr L_1A9418
    .addr L_1A9422
    .addr L_1A942C
    .addr L_1A93C4
    .addr L_1A93C4
    .addr L_1A93CE
    .addr L_1A93CE
    .addr L_1A93DC
    .addr L_1A93DC
    .addr L_1A91BC
    .addr L_1A91CA
    .addr L_1A9436
    .addr L_1A9444
    .addr L_1A9452
    .addr L_1A9460
    .addr L_1A946E
    .addr L_1A9484
    .addr L_1A949A
    .addr L_1A94B8
    .addr L_1A94D6
    .addr L_1A94F4
    .addr L_1A9512
    .addr L_1A9530
    .addr L_1A954E
    .addr L_1A9560
    .addr L_1A9572
    .addr L_1A9584
    .addr L_1A959E
    .addr L_1A95B4
    .addr L_1A95CA
    .addr L_1A9678
    .addr L_1A9682
    .addr L_1A968C
    .addr L_1A9696

    L_1A8FDC:
    .byte $86
    .byte $03
    .byte -11, -24, $52, $41
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1A8FEA:
    .byte $86
    .byte $03
    .byte 3, -24, $52, $01
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1A8FF8:
    .byte $8A
    .byte $03
    .byte -9, -25, $50, $01
    .byte -8, -9, $02, $00
    .byte 0, -9, $12, $00
    L_1A9006:
    .byte $8A
    .byte $03
    .byte 1, -26, $50, $01
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1A9014:
    .byte $8A
    .byte $03
    .byte -9, -25, $50, $01
    .byte -8, -9, $10, $40
    .byte 0, -9, $00, $40
    L_1A9022:
    .byte $8A
    .byte $03
    .byte 1, -25, $50, $01
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1A9030:
    .byte $8A
    .byte $04
    .byte -9, -25, $50, $41
    .byte -8, 7, $20, $00
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00
    L_1A9042:
    .byte $8A
    .byte $04
    .byte 1, -25, $50, $01
    .byte -8, 7, $20, $00
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    L_1A9054:
    .byte $8A
    .byte $04
    .byte -9, -25, $50, $41
    .byte 0, 7, $20, $40
    .byte 0, -9, $06, $40
    .byte -8, -9, $16, $40
    L_1A9066:
    .byte $8A
    .byte $04
    .byte 1, -25, $50, $01
    .byte 0, 7, $20, $40
    .byte 0, -9, $04, $40
    .byte -8, -9, $14, $40
    L_1A9078:
    .byte $C6
    .byte $03
    .byte -8, -17, $22, $00
    .byte 0, -17, $32, $00
    .byte -9, -25, $56, $01
    L_1A9086:
    .byte $C6
    .byte $03
    .byte 0, -17, $22, $40
    .byte -8, -17, $32, $40
    .byte 1, -25, $56, $41
    L_1A9094:
    .byte $C6
    .byte $02
    .byte 0, -9, $30, $00
    .byte -4, -24, $58, $41
    L_1A909E:
    .byte $C6
    .byte $02
    .byte 0, -9, $30, $40
    .byte -4, -24, $58, $41
    L_1A90A8:
    .byte $C6
    .byte $02
    .byte -8, -9, $30, $00
    .byte -4, -24, $58, $01
    L_1A90B2:
    .byte $C6
    .byte $02
    .byte -8, -9, $30, $40
    .byte -4, -24, $58, $01
    L_1A90BC:
    .byte $86
    .byte $03
    .byte -5, -25, $50, $01
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00
    L_1A90CA:
    .byte $86
    .byte $03
    .byte -3, -25, $50, $41
    .byte 0, -9, $04, $40
    .byte -8, -9, $14, $40
    L_1A90D8:
    .byte $86
    .byte $03
    .byte -10, -23, $52, $41
    .byte -8, -9, $06, $00
    .byte 0, -9, $16, $00
    L_1A90E6:
    .byte $86
    .byte $03
    .byte 2, -23, $52, $01
    .byte 0, -9, $06, $40
    .byte -8, -9, $16, $40
    L_1A90F4:
    .byte $86
    .byte $04
    .byte -22, -28, $58, $C1
    .byte -14, -20, $54, $41
    .byte 0, -9, $18, $00
    .byte -8, -9, $08, $00
    L_1A9106:
    .byte $86
    .byte $04
    .byte 14, -28, $58, $81
    .byte 6, -20, $54, $01
    .byte -8, -9, $18, $40
    .byte 0, -9, $08, $40
    L_1A9118:
    .byte $8A
    .byte $04
    .byte -8, 7, $30, $00
    .byte -8, -9, $0A, $00
    .byte 0, -9, $1A, $00
    .byte 5, -11, $54, $01
    L_1A912A:
    .byte $8A
    .byte $03
    .byte -7, -11, $0C, $00
    .byte 1, -11, $1C, $00
    .byte 3, -22, $52, $01
    L_1A9138:
    .byte $8A
    .byte $04
    .byte 0, -9, $1E, $00
    .byte -8, -9, $0E, $00
    .byte -4, -22, $50, $01
    .byte -6, 7, $30, $00
    L_1A914A:
    .byte $8A
    .byte $04
    .byte 0, 7, $30, $40
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1A, $40
    .byte -13, -11, $54, $41
    L_1A915C:
    .byte $8A
    .byte $03
    .byte -1, -11, $0C, $40
    .byte -9, -11, $1C, $40
    .byte -11, -22, $52, $41
    L_1A916A:
    .byte $8A
    .byte $04
    .byte -8, -9, $1E, $40
    .byte 0, -9, $0E, $40
    .byte -4, -22, $50, $41
    .byte -2, 7, $30, $40
    L_1A917C:
    .byte $8A
    .byte $04
    .byte -19, -13, $54, $41
    .byte -11, -13, $5A, $41
    .byte -8, -9, $08, $00
    .byte 0, -9, $18, $00
    L_1A918E:
    .byte $8A
    .byte $04
    .byte 11, -13, $54, $01
    .byte 3, -13, $5A, $01
    .byte 0, -9, $08, $40
    .byte -8, -9, $18, $40
    L_1A91A0:
    .byte $86
    .byte $03
    .byte -12, -24, $52, $41
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1A91AE:
    .byte $86
    .byte $03
    .byte 4, -24, $52, $01
    .byte 0, -9, $00, $40
    .byte -8, -9, $10, $40
    L_1A91BC:
    .byte $C6
    .byte $03
    .byte -8, -9, $24, $00
    .byte 0, -9, $34, $00
    .byte -4, 6, $58, $81
    L_1A91CA:
    .byte $C6
    .byte $03
    .byte 0, -9, $24, $40
    .byte -8, -9, $34, $40
    .byte -4, 6, $58, $C1
    L_1A91D8:
    .byte $80
    .byte $02
    .byte -8, -9, $38, $00
    .byte 0, -9, $3A, $00
    L_1A91E2:
    .byte $80
    .byte $02
    .byte 0, -9, $38, $40
    .byte -8, -9, $3A, $40
    L_1A91EC:
    .byte $84
    .byte $02
    .byte 0, -7, $16, $00
    .byte -8, -7, $06, $00
    L_1A91F6:
    .byte $84
    .byte $02
    .byte 0, -7, $18, $00
    .byte -8, -7, $08, $00
    L_1A9200:
    .byte $84
    .byte $02
    .byte -8, -7, $18, $40
    .byte 0, -7, $08, $40
    L_1A920A:
    .byte $84
    .byte $02
    .byte -8, -7, $16, $40
    .byte 0, -7, $06, $40
    L_1A9214:
    .byte $80
    .byte $02
    .byte 0, -6, $5A, $00
    .byte -8, -6, $58, $00
    L_1A921E:
    .byte $80
    .byte $02
    .byte -8, -6, $5A, $40
    .byte 0, -6, $58, $40
    L_1A9228:
    .byte $86
    .byte $04
    .byte -10, 7, $5C, $81
    .byte -18, -1, $5A, $81
    .byte -7, -9, $30, $00
    .byte 1, -9, $32, $00
    L_1A923A:
    .byte $86
    .byte $04
    .byte 4, 7, $5C, $C1
    .byte 12, -1, $5A, $C1
    .byte 1, -9, $30, $40
    .byte -7, -9, $32, $40
    L_1A924C:
    .byte $86
    .byte $04
    .byte 16, -3, $58, $81
    .byte 8, 2, $56, $81
    .byte 0, -9, $30, $40
    .byte -8, -9, $20, $00
    L_1A925E:
    .byte $86
    .byte $04
    .byte -24, -3, $58, $C1
    .byte -16, 2, $56, $C1
    .byte -8, -9, $30, $00
    .byte 0, -9, $20, $40
    L_1A9270:
    .byte $86
    .byte $03
    .byte -5, -25, $50, $01
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00
    L_1A927E:
    .byte $86
    .byte $03
    .byte -3, -25, $50, $41
    .byte 0, -9, $04, $40
    .byte -8, -9, $14, $40
    L_1A928C:
    .byte $86
    .byte $06
    .byte 8, -27, $48, $41
    .byte -16, -27, $48, $01
    .byte 0, -27, $5E, $41
    .byte -8, -27, $5E, $01
    .byte 0, -9, $22, $00
    .byte -8, -9, $20, $00
    L_1A92A6:
    .byte $86
    .byte $06
    .byte -16, -27, $48, $01
    .byte 8, -27, $48, $41
    .byte -8, -27, $5E, $01
    .byte 0, -27, $5E, $41
    .byte -8, -9, $22, $40
    .byte 0, -9, $20, $40
    L_1A92C0:
    .byte $86
    .byte $04
    .byte 3, -23, $5C, $41
    .byte 11, -17, $5A, $41
    .byte 1, -9, $22, $00
    .byte -7, -9, $20, $00
    L_1A92D2:
    .byte $86
    .byte $04
    .byte -9, -23, $5C, $01
    .byte -17, -17, $5A, $01
    .byte -7, -9, $22, $40
    .byte 1, -9, $20, $40
    L_1A92E4:
    .byte $86
    .byte $04
    .byte 3, 7, $5C, $C1
    .byte 11, -1, $5A, $C1
    .byte -8, -9, $20, $00
    .byte 0, -9, $30, $40
    L_1A92F6:
    .byte $86
    .byte $04
    .byte -11, 7, $5C, $81
    .byte -19, -1, $5A, $81
    .byte 0, -9, $20, $40
    .byte -8, -9, $30, $00
    L_1A9308:
    .byte $86
    .byte $04
    .byte -10, 7, $5C, $81
    .byte -18, -1, $5A, $81
    .byte 0, -9, $32, $00
    .byte -8, -9, $30, $00
    L_1A931A:
    .byte $86
    .byte $04
    .byte 2, 7, $5C, $C1
    .byte 10, -1, $5A, $C1
    .byte -8, -9, $32, $40
    .byte 0, -9, $30, $40
    L_1A932C:
    .byte $86
    .byte $04
    .byte -10, -25, $5C, $01
    .byte -18, -17, $5A, $01
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    L_1A933E:
    .byte $86
    .byte $04
    .byte 2, -25, $5C, $41
    .byte 10, -17, $5A, $41
    .byte -8, -9, $1A, $40
    .byte 0, -9, $0A, $40
    L_1A9350:
    .byte $86
    .byte $03
    .byte -13, -24, $52, $41
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    L_1A935E:
    .byte $86
    .byte $03
    .byte 5, -24, $52, $01
    .byte -8, -9, $1A, $40
    .byte 0, -9, $0A, $40
    L_1A936C:
    .byte $86
    .byte $05
    .byte -19, -26, $3A, $81
    .byte -9, -26, $3A, $41
    .byte -13, -24, $52, $41
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    L_1A9382:
    .byte $86
    .byte $05
    .byte 11, -26, $3A, $C1
    .byte 1, -26, $3A, $01
    .byte 5, -24, $52, $01
    .byte -8, -9, $1A, $40
    .byte 0, -9, $0A, $40
    L_1A9398:
    .byte $86
    .byte $05
    .byte -19, -26, $3C, $81
    .byte -9, -27, $3C, $41
    .byte -13, -24, $52, $41
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    L_1A93AE:
    .byte $86
    .byte $05
    .byte 11, -26, $3C, $C1
    .byte 1, -27, $3C, $01
    .byte 5, -24, $52, $01
    .byte -8, -9, $1A, $40
    .byte 0, -9, $0A, $40
    L_1A93C4:
    .byte $92
    .byte $02
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1A93CE:
    .byte $92
    .byte $03
    .byte -12, -9, $26, $00
    .byte 3, -9, $26, $40
    .byte -4, -9, $36, $00
    L_1A93DC:
    .byte $92
    .byte $02
    .byte 0, -9, $38, $00
    .byte -8, -9, $28, $00
    L_1A93E6:
    .byte $82
    .byte $02
    .byte 0, -8, $52, $00
    .byte -8, -8, $50, $00
    L_1A93F0:
    .byte $82
    .byte $02
    .byte -8, -8, $52, $40
    .byte 0, -8, $50, $40
    L_1A93FA:
    .byte $82
    .byte $02
    .byte 0, -9, $56, $00
    .byte -8, -9, $54, $00
    L_1A9404:
    .byte $82
    .byte $02
    .byte -8, -9, $56, $40
    .byte 0, -9, $54, $40
    L_1A940E:
    .byte $82
    .byte $02
    .byte 0, -7, $5A, $00
    .byte -8, -7, $58, $00
    L_1A9418:
    .byte $82
    .byte $02
    .byte -8, -7, $5A, $40
    .byte 0, -7, $58, $40
    L_1A9422:
    .byte $82
    .byte $02
    .byte 0, -8, $5E, $00
    .byte -8, -8, $5C, $00
    L_1A942C:
    .byte $82
    .byte $02
    .byte -8, -8, $5E, $40
    .byte 0, -8, $5C, $40
    L_1A9436:
    .byte $C6
    .byte $03
    .byte 0, -9, $5E, $00
    .byte -8, -9, $4E, $00
    .byte -8, -25, $56, $41
    L_1A9444:
    .byte $C6
    .byte $03
    .byte -8, -9, $5E, $40
    .byte 0, -9, $4E, $40
    .byte 0, -25, $56, $41
    L_1A9452:
    .byte $C6
    .byte $03
    .byte 0, -9, $4C, $00
    .byte -8, -9, $4E, $00
    .byte -8, -25, $56, $01
    L_1A9460:
    .byte $C6
    .byte $03
    .byte -8, -9, $4C, $40
    .byte 0, -9, $4E, $40
    .byte 0, -25, $56, $41
    L_1A946E:
    .byte $C6
    .byte $05
    .byte -8, -1, $2E, $00
    .byte -8, -17, $2C, $00
    .byte 0, -1, $3E, $00
    .byte 0, -17, $3C, $00
    .byte -8, -29, $56, $01
    L_1A9484:
    .byte $C6
    .byte $05
    .byte 0, -1, $2E, $40
    .byte 0, -17, $2C, $40
    .byte -8, -1, $3E, $40
    .byte -8, -17, $3C, $40
    .byte 0, -29, $56, $41
    L_1A949A:
    .byte $C6
    .byte $07
    .byte 4, -1, $48, $00
    .byte -4, -1, $38, $00
    .byte -12, -1, $28, $00
    .byte -12, -17, $26, $00
    .byte -4, -17, $3A, $00
    .byte 4, -17, $4A, $00
    .byte -12, -30, $56, $01
    L_1A94B8:
    .byte $C6
    .byte $07
    .byte -12, -1, $48, $40
    .byte -4, -1, $38, $40
    .byte 4, -1, $28, $40
    .byte 4, -17, $26, $40
    .byte -4, -17, $3A, $40
    .byte -12, -17, $4A, $40
    .byte 4, -30, $56, $41
    L_1A94D6:
    .byte $C6
    .byte $07
    .byte 4, -2, $48, $00
    .byte -4, -2, $38, $00
    .byte -12, -2, $28, $00
    .byte -12, -18, $26, $00
    .byte -4, -18, $36, $00
    .byte 4, -18, $46, $00
    .byte -11, -32, $56, $01
    L_1A94F4:
    .byte $C6
    .byte $07
    .byte -12, -2, $48, $40
    .byte -4, -2, $38, $40
    .byte 4, -2, $28, $40
    .byte 4, -18, $26, $40
    .byte -4, -18, $36, $40
    .byte -12, -18, $46, $40
    .byte 3, -32, $56, $41
    L_1A9512:
    .byte $C6
    .byte $07
    .byte 4, 0, $48, $00
    .byte -4, 0, $38, $00
    .byte -12, 0, $28, $00
    .byte -12, -16, $26, $00
    .byte -4, -16, $36, $00
    .byte 4, -16, $2A, $00
    .byte -11, -30, $56, $01
    L_1A9530:
    .byte $C6
    .byte $07
    .byte -12, 0, $48, $40
    .byte -4, 0, $38, $40
    .byte 4, 0, $28, $40
    .byte 4, -16, $26, $40
    .byte -4, -16, $36, $40
    .byte -12, -16, $2A, $40
    .byte 3, -30, $56, $41
    L_1A954E:
    .byte $86
    .byte $04
    .byte -10, 6, $5C, $81
    .byte -18, 1, $5A, $81
    .byte 0, -9, $20, $40
    .byte -8, -9, $30, $00
    L_1A9560:
    .byte $86
    .byte $04
    .byte -19, -1, $60, $C1
    .byte -19, -17, $60, $41
    .byte 0, -9, $20, $40
    .byte -8, -9, $30, $00
    L_1A9572:
    .byte $86
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $22, $40
    .byte -10, -25, $5C, $01
    .byte -18, -20, $5A, $01
    L_1A9584:
    .byte $86
    .byte $06
    .byte -8, -9, $2C, $00
    .byte 0, -9, $2E, $00
    .byte 12, -28, $48, $41
    .byte -12, -28, $48, $01
    .byte 4, -28, $5E, $41
    .byte -4, -28, $5E, $01
    L_1A959E:
    .byte $86
    .byte $05
    .byte 6, -28, $3A, $41
    .byte -4, -28, $3A, $81
    .byte 1, -25, $50, $01
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1A95B4:
    .byte $86
    .byte $05
    .byte 6, -28, $3C, $41
    .byte -4, -28, $3C, $81
    .byte 1, -25, $50, $01
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1A95CA:
    .byte $86
    .byte $03
    .byte 1, -25, $50, $01
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1A95D8:
    .byte $86
    .byte $06
    .byte 8, -25, $48, $41
    .byte -16, -25, $48, $01
    .byte 0, -25, $5E, $41
    .byte -8, -25, $5E, $01
    .byte 0, -9, $26, $00
    .byte -8, -9, $24, $00
    L_1A95F2:
    .byte $86
    .byte $04
    .byte 8, -17, $5A, $41
    .byte 0, -22, $5C, $41
    .byte -8, -9, $26, $40
    .byte 0, -9, $24, $40
    L_1A9604:
    .byte $86
    .byte $04
    .byte 8, -1, $60, $81
    .byte 8, -17, $60, $01
    .byte 0, -9, $24, $40
    .byte -8, -9, $26, $40
    L_1A9616:
    .byte $86
    .byte $04
    .byte 8, -1, $5A, $C1
    .byte 0, 4, $5C, $C1
    .byte -8, -9, $26, $C0
    .byte 0, -9, $24, $C0
    L_1A9628:
    .byte $86
    .byte $06
    .byte 8, 7, $48, $C1
    .byte -16, 7, $48, $81
    .byte -8, 7, $5E, $81
    .byte 0, 7, $5E, $C1
    .byte 0, -9, $24, $C0
    .byte -8, -9, $26, $C0
    L_1A9642:
    .byte $86
    .byte $04
    .byte -8, 4, $5C, $81
    .byte -16, -1, $5A, $81
    .byte 0, -9, $26, $80
    .byte -8, -9, $24, $80
    L_1A9654:
    .byte $86
    .byte $04
    .byte -16, -1, $60, $C1
    .byte -16, -17, $60, $41
    .byte 0, -9, $26, $80
    .byte -8, -9, $24, $80
    L_1A9666:
    .byte $86
    .byte $04
    .byte -16, -17, $5A, $01
    .byte -8, -22, $5C, $01
    .byte 0, -9, $26, $00
    .byte -8, -9, $24, $00
    L_1A9678:
    .byte $82
    .byte $02
    .byte 0, -9, $3C, $40
    .byte -8, -9, $3A, $00
    L_1A9682:
    .byte $82
    .byte $02
    .byte -8, -9, $3C, $00
    .byte 0, -9, $3A, $40
    L_1A968C:
    .byte $82
    .byte $02
    .byte 0, -9, $3E, $40
    .byte -8, -9, $3E, $00
    L_1A9696:
    .byte $82
    .byte $03
    .byte 4, -9, $40, $40
    .byte -12, -9, $40, $00
    .byte -4, -9, $42, $40

L_1A96A4:
    .addr L_1A970C
    .addr L_1A9716
    .addr L_1A9720
    .addr L_1A972A
    .addr L_1A9734
    .addr L_1A973E
    .addr L_1A9748
    .addr L_1A9752
    .addr L_1A975C
    .addr L_1A9766
    .addr L_1A9770
    .addr L_1A977A
    .addr L_1A9784
    .addr L_1A978E
    .addr L_1A9798
    .addr L_1A97A2
    .addr L_1A97AC
    .addr L_1A97B6
    .addr L_1A97C0
    .addr L_1A97CA
    .addr L_1A97D4
    .addr L_1A97DE
    .addr L_1A97E8
    .addr L_1A97F2
    .addr L_1A97FC
    .addr L_1A980A
    .addr L_1A9818
    .addr L_1A9826
    .addr L_1A9834
    .addr L_1A983E
    .addr L_1A9848
    .addr L_1A9852
    .addr L_1A985C
    .addr L_1A9866
    .addr L_1A9870
    .addr L_1A987A
    .addr L_1A9884
    .addr L_1A988E
    .addr L_1A97B6
    .addr L_1A97AC
    .addr L_1A9898
    .addr L_1A98A2
    .addr L_1A98AC
    .addr L_1A98B6
    .addr L_1A98C0
    .addr L_1A98CA
    .addr L_1A98D4
    .addr L_1A98DE
    .addr L_1A98E8
    .addr L_1A98F2
    .addr L_1A98FC
    .addr L_1A9906

    L_1A970C:
    .byte $D0
    .byte $02
    .byte 0, -9, $30, $00
    .byte -8, -10, $20, $80
    L_1A9716:
    .byte $D0
    .byte $02
    .byte -8, -9, $30, $40
    .byte 0, -10, $20, $C0
    L_1A9720:
    .byte $D0
    .byte $02
    .byte -7, -9, $30, $40
    .byte 1, -9, $48, $00
    L_1A972A:
    .byte $D0
    .byte $02
    .byte 1, -9, $30, $00
    .byte -7, -9, $48, $40
    L_1A9734:
    .byte $D0
    .byte $02
    .byte -8, -9, $08, $00
    .byte 0, -9, $18, $00
    L_1A973E:
    .byte $D0
    .byte $02
    .byte 0, -9, $08, $40
    .byte -8, -9, $18, $40
    L_1A9748:
    .byte $D0
    .byte $02
    .byte 0, -9, $34, $00
    .byte -8, -9, $20, $80
    L_1A9752:
    .byte $D0
    .byte $02
    .byte -8, -9, $34, $40
    .byte 0, -9, $20, $C0
    L_1A975C:
    .byte $D0
    .byte $02
    .byte -8, -9, $20, $00
    .byte 0, -9, $30, $00
    L_1A9766:
    .byte $D0
    .byte $02
    .byte 0, -9, $20, $40
    .byte -8, -9, $30, $40
    L_1A9770:
    .byte $D0
    .byte $02
    .byte -8, -9, $22, $00
    .byte 0, -9, $32, $00
    L_1A977A:
    .byte $D0
    .byte $02
    .byte 0, -9, $22, $40
    .byte -8, -9, $32, $40
    L_1A9784:
    .byte $D0
    .byte $02
    .byte 0, -9, $26, $40
    .byte -8, -9, $36, $40
    L_1A978E:
    .byte $D0
    .byte $02
    .byte -8, -9, $26, $00
    .byte 0, -9, $36, $00
    L_1A9798:
    .byte $D0
    .byte $02
    .byte -8, -9, $38, $40
    .byte 0, -9, $28, $40
    L_1A97A2:
    .byte $D0
    .byte $02
    .byte 0, -9, $38, $00
    .byte -8, -9, $28, $00
    L_1A97AC:
    .byte $D0
    .byte $02
    .byte -8, -9, $3A, $40
    .byte 0, -9, $2A, $40
    L_1A97B6:
    .byte $D0
    .byte $02
    .byte 0, -9, $3A, $00
    .byte -8, -9, $2A, $00
    L_1A97C0:
    .byte $D0
    .byte $02
    .byte -8, -9, $44, $00
    .byte 0, -9, $44, $40
    L_1A97CA:
    .byte $D0
    .byte $02
    .byte 0, -9, $44, $40
    .byte -8, -9, $44, $00
    L_1A97D4:
    .byte $D0
    .byte $02
    .byte -8, -9, $44, $00
    .byte 0, -9, $44, $40
    L_1A97DE:
    .byte $D0
    .byte $02
    .byte -8, -9, $44, $00
    .byte 0, -9, $44, $40
    L_1A97E8:
    .byte $D0
    .byte $02
    .byte 0, -8, $4C, $40
    .byte -8, -8, $5C, $40
    L_1A97F2:
    .byte $D0
    .byte $02
    .byte -8, -8, $4C, $00
    .byte 0, -8, $5C, $00
    L_1A97FC:
    .byte $D0
    .byte $03
    .byte 4, -11, $10, $40
    .byte -11, -11, $10, $00
    .byte -3, -11, $0A, $40
    L_1A980A:
    .byte $D0
    .byte $03
    .byte -11, -11, $10, $00
    .byte 4, -11, $10, $40
    .byte -4, -11, $0A, $00
    L_1A9818:
    .byte $D0
    .byte $03
    .byte 4, -3, $10, $C0
    .byte -11, -3, $10, $80
    .byte -3, -3, $0A, $C0
    L_1A9826:
    .byte $D0
    .byte $03
    .byte -11, -3, $10, $80
    .byte 4, -3, $10, $C0
    .byte -4, -3, $0A, $80
    L_1A9834:
    .byte $D0
    .byte $02
    .byte -8, -9, $20, $80
    .byte 0, -9, $34, $00
    L_1A983E:
    .byte $D0
    .byte $02
    .byte 0, -9, $20, $C0
    .byte -8, -9, $34, $40
    L_1A9848:
    .byte $D0
    .byte $02
    .byte -8, -9, $06, $00
    .byte 0, -9, $16, $00
    L_1A9852:
    .byte $D0
    .byte $02
    .byte 0, -9, $06, $40
    .byte -8, -9, $16, $40
    L_1A985C:
    .byte $D0
    .byte $02
    .byte 0, -9, $4A, $40
    .byte -8, -9, $5A, $40
    L_1A9866:
    .byte $D0
    .byte $02
    .byte -8, -9, $4A, $00
    .byte 0, -9, $5A, $00
    L_1A9870:
    .byte $D0
    .byte $02
    .byte -8, -1, $5A, $C0
    .byte 0, -1, $4A, $C0
    L_1A987A:
    .byte $D0
    .byte $02
    .byte 0, -1, $5A, $80
    .byte -8, -1, $4A, $80
    L_1A9884:
    .byte $D0
    .byte $02
    .byte -8, -9, $38, $40
    .byte 0, -9, $26, $40
    L_1A988E:
    .byte $D0
    .byte $02
    .byte 0, -9, $38, $00
    .byte -8, -9, $26, $00
    L_1A9898:
    .byte $80
    .byte $02
    .byte -8, -9, $2A, $00
    .byte 0, -9, $2C, $00
    L_1A98A2:
    .byte $80
    .byte $02
    .byte 0, -9, $2A, $40
    .byte -8, -9, $2C, $40
    L_1A98AC:
    .byte $80
    .byte $02
    .byte 0, -9, $32, $C0
    .byte -8, -9, $30, $C0
    L_1A98B6:
    .byte $80
    .byte $02
    .byte -8, -9, $32, $80
    .byte 0, -9, $30, $80
    L_1A98C0:
    .byte $80
    .byte $02
    .byte -8, -9, $0E, $00
    .byte 0, -9, $1E, $00
    L_1A98CA:
    .byte $80
    .byte $02
    .byte 0, -9, $0E, $40
    .byte -8, -9, $1E, $40
    L_1A98D4:
    .byte $80
    .byte $02
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1A98DE:
    .byte $80
    .byte $02
    .byte 0, -9, $00, $40
    .byte -8, -9, $10, $40
    L_1A98E8:
    .byte $D0
    .byte $02
    .byte 0, -9, $30, $00
    .byte -8, -9, $20, $00
    L_1A98F2:
    .byte $D0
    .byte $02
    .byte -8, -9, $30, $40
    .byte 0, -9, $20, $40
    L_1A98FC:
    .byte $D0
    .byte $02
    .byte 0, -9, $34, $00
    .byte -8, -9, $20, $80
    L_1A9906:
    .byte $D0
    .byte $02
    .byte 0, -9, $20, $C0
    .byte -8, -9, $34, $40

L_1A9910:
    .addr L_1A9A00
    .addr L_1A9A1A
    .addr L_1A9A34
    .addr L_1A9A66
    .addr L_1A9A9E
    .addr L_1A9AE6
    .addr L_1A9B2E
    .addr L_1A9B66
    .addr L_1A9A3E
    .addr L_1A9A66
    .addr L_1A9A9E
    .addr L_1A9AE6
    .addr L_1A9B2E
    .addr L_1A9B6C
    .addr L_1A9A52
    .addr L_1A9A82
    .addr L_1A9AC2
    .addr L_1A9B0A
    .addr L_1A9B4A
    .addr L_1A9B78
    .addr L_1A9A5C
    .addr L_1A9A90
    .addr L_1A9AD4
    .addr L_1A9B1C
    .addr L_1A9B58
    .addr L_1A9B7E
    .addr L_1A9A48
    .addr L_1A9A74
    .addr L_1A9AB0
    .addr L_1A9AF8
    .addr L_1A9B3C
    .addr L_1A9B72
    .addr L_1A9B84
    .addr L_1A9B92
    .addr L_1A9BA0
    .addr L_1A9BAE
    .addr L_1A9BB8
    .addr L_1A9BC2
    .addr L_1A9BCC
    .addr L_1A9BE0
    .addr L_1A9BEA
    .addr L_1A9BF4
    .addr L_1A9BFE
    .addr L_1A9C08
    .addr L_1A9C12
    .addr L_1A9C1C
    .addr L_1A9C26
    .addr L_1A9C30
    .addr L_1A9C3A
    .addr L_1A9C44
    .addr L_1A9C4E
    .addr L_1A9C58
    .addr L_1A9C5E
    .addr L_1A9C64
    .addr L_1A9C6A
    .addr L_1A9C70
    .addr L_1A9C7A
    .addr L_1A9C84
    .addr L_1A9C8E
    .addr L_1A9C98
    .addr L_1A9CA2
    .addr L_1A9CAC
    .addr L_1A9CB6
    .addr L_1A9CC0
    .addr L_1A9CCE
    .addr L_1A9CD8
    .addr L_1A9CE2
    .addr L_1A9CEC
    .addr L_1A9CF6
    .addr L_1A9D00
    .addr L_1A9D0A
    .addr L_1A9D14
    .addr L_1A9D1E
    .addr L_1A9D28
    .addr L_1A9D32
    .addr L_1A9D3C
    .addr L_1A9BD6
    .addr L_1A9D46
    .addr L_1A9D50
    .addr L_1A9D5A
    .addr L_1A9D64
    .addr L_1A9D6E
    .addr L_1A9D78
    .addr L_1A9D7E
    .addr L_1A9D88
    .addr L_1A9D92
    .addr L_1A9D9C
    .addr L_1A9DA6
    .addr L_1A9DB0
    .addr L_1A9DB9
    .addr L_1A9DC2
    .addr L_1A9DCB
    .addr L_1A9DD4
    .addr L_1A9DDD
    .addr L_1A9DE6
    .addr L_1A9DEF
    .addr L_1A9DF8
    .addr L_1A9E05
    .addr L_1A9E26
    .addr L_1A9E43
    .addr L_1A9E60
L_1A99DA:
    .addr L_1A9F15
    .addr L_1A9F00
    .addr L_1A9EEB
    .addr L_1A9ED6
    .addr L_1A9EC1
    .addr L_1A9EAC
    .addr L_1A9E97
    .addr L_1A9F2A
    .addr L_1A9F3B
    .addr L_1A9F4C
    .addr L_1A9E85
    .addr L_1A9E8E
L_1A99F2:
    .addr L_1A9FDF
    .addr L_1A9FCA
    .addr L_1A9FB5
    .addr L_1A9FA0
    .addr L_1A9F8B
    .addr L_1A9F76
    .addr L_1A9F5D

    L_1A9A00:
    .byte $00
    .byte $06
    .byte 16, -8, $A8, $43
    .byte -24, -8, $A8, $03
    .byte 8, -8, $B8, $03
    .byte -16, -8, $B8, $43
    .byte 0, -8, $F0, $03
    .byte -8, -8, $AA, $03
    L_1A9A1A:
    .byte $00
    .byte $06
    .byte 16, -8, $A8, $41
    .byte -24, -8, $A8, $01
    .byte 8, -8, $B8, $01
    .byte -16, -8, $B8, $41
    .byte 0, -8, $F0, $01
    .byte -8, -8, $AA, $01
    L_1A9A34:
    .byte $92
    .byte $02
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1A9A3E:
    .byte $80
    .byte $02
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1A9A48:
    .byte $80
    .byte $02
    .byte -8, -17, $38, $00
    .byte 0, -17, $3A, $00
    L_1A9A52:
    .byte $80
    .byte $02
    .byte -8, -9, $38, $00
    .byte 0, -9, $3A, $00
    L_1A9A5C:
    .byte $80
    .byte $02
    .byte -8, -9, $02, $00
    .byte 0, -9, $12, $00
    L_1A9A66:
    .byte $86
    .byte $03
    .byte -12, -24, $42, $41
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1A9A74:
    .byte $7E
    .byte $03
    .byte 0, -17, $16, $00
    .byte -8, -17, $06, $00
    .byte -13, -22, $34, $41
    L_1A9A82:
    .byte $7E
    .byte $03
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    .byte -13, -14, $34, $41
    L_1A9A90:
    .byte $86
    .byte $03
    .byte -11, -24, $42, $41
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1A9A9E:
    .byte $96
    .byte $04
    .byte -5, -25, $40, $01
    .byte -13, -25, $40, $41
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1A9AB0:
    .byte $7E
    .byte $04
    .byte 0, -17, $16, $00
    .byte -8, -17, $06, $00
    .byte -6, -23, $50, $81
    .byte -14, -23, $50, $41
    L_1A9AC2:
    .byte $7E
    .byte $04
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    .byte -6, -15, $50, $81
    .byte -14, -15, $50, $41
    L_1A9AD4:
    .byte $96
    .byte $04
    .byte -17, -22, $42, $41
    .byte -9, -22, $42, $81
    .byte -1, -9, $12, $00
    .byte -9, -9, $02, $00
    L_1A9AE6:
    .byte $96
    .byte $04
    .byte -17, -25, $50, $01
    .byte -9, -25, $52, $01
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1A9AF8:
    .byte $7E
    .byte $04
    .byte 0, -17, $16, $00
    .byte -8, -17, $06, $00
    .byte -6, -23, $62, $41
    .byte -14, -23, $62, $01
    L_1A9B0A:
    .byte $7E
    .byte $04
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    .byte -6, -15, $62, $41
    .byte -14, -15, $62, $01
    L_1A9B1C:
    .byte $96
    .byte $04
    .byte -3, -25, $4C, $41
    .byte -11, -25, $4C, $01
    .byte -8, -9, $1A, $00
    .byte 0, -9, $12, $00
    L_1A9B2E:
    .byte $86
    .byte $03
    .byte -12, -24, $52, $41
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1A9B3C:
    .byte $C6
    .byte $03
    .byte -8, -17, $22, $00
    .byte 0, -17, $32, $00
    .byte -9, -25, $56, $01
    L_1A9B4A:
    .byte $C6
    .byte $03
    .byte -8, -9, $22, $00
    .byte 0, -9, $32, $00
    .byte -9, -17, $56, $01
    L_1A9B58:
    .byte $86
    .byte $03
    .byte -11, -24, $52, $41
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1A9B66:
    .byte $8C
    .byte $01
    .byte -4, -5, $20, $00
    L_1A9B6C:
    .byte $8C
    .byte $01
    .byte -4, -5, $22, $00
    L_1A9B72:
    .byte $8C
    .byte $01
    .byte -4, -5, $1C, $40
    L_1A9B78:
    .byte $8C
    .byte $01
    .byte -4, -1, $1C, $00
    L_1A9B7E:
    .byte $8C
    .byte $01
    .byte -4, -1, $18, $00
    L_1A9B84:
    .byte $94
    .byte $03
    .byte -4, 11, $18, $00
    .byte 0, -5, $10, $00
    .byte -8, -5, $00, $00
    L_1A9B92:
    .byte $94
    .byte $03
    .byte 4, -5, $08, $00
    .byte -12, -5, $06, $00
    .byte -4, -5, $16, $00
    L_1A9BA0:
    .byte $94
    .byte $03
    .byte 4, -5, $06, $40
    .byte -4, -5, $16, $40
    .byte -12, -5, $08, $40
    L_1A9BAE:
    .byte $94
    .byte $02
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1A9BB8:
    .byte $94
    .byte $02
    .byte 0, -15, $14, $00
    .byte -8, -15, $04, $00
    L_1A9BC2:
    .byte $80
    .byte $02
    .byte -8, -9, $02, $00
    .byte 0, -9, $12, $00
    L_1A9BCC:
    .byte $80
    .byte $02
    .byte 0, -9, $02, $40
    .byte -8, -9, $12, $40
    L_1A9BD6:
    .byte $80
    .byte $02
    .byte -8, -9, $02, $00
    .byte 0, -9, $5C, $00
    L_1A9BE0:
    .byte $80
    .byte $02
    .byte -8, -9, $08, $00
    .byte 0, -9, $18, $00
    L_1A9BEA:
    .byte $80
    .byte $02
    .byte 0, -9, $08, $40
    .byte -8, -9, $18, $40
    L_1A9BF4:
    .byte $80
    .byte $02
    .byte -8, -9, $06, $00
    .byte 0, -9, $16, $00
    L_1A9BFE:
    .byte $80
    .byte $02
    .byte 0, -9, $06, $40
    .byte -8, -9, $16, $40
    L_1A9C08:
    .byte $80
    .byte $02
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00
    L_1A9C12:
    .byte $80
    .byte $02
    .byte 0, -9, $04, $40
    .byte -8, -9, $14, $40
    L_1A9C1C:
    .byte $80
    .byte $02
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1A9C26:
    .byte $80
    .byte $02
    .byte 0, -9, $00, $40
    .byte -8, -9, $10, $40
    L_1A9C30:
    .byte $80
    .byte $02
    .byte -8, -9, $38, $00
    .byte 0, -9, $3A, $00
    L_1A9C3A:
    .byte $80
    .byte $02
    .byte 0, -9, $38, $40
    .byte -8, -9, $3A, $40
    L_1A9C44:
    .byte $80
    .byte $02
    .byte -8, -9, $38, $00
    .byte 0, -9, $3A, $00
    L_1A9C4E:
    .byte $80
    .byte $02
    .byte 0, -9, $38, $40
    .byte -8, -9, $3A, $40
    L_1A9C58:
    .byte $80
    .byte $01
    .byte -4, -9, $28, $00
    L_1A9C5E:
    .byte $80
    .byte $01
    .byte -4, -9, $28, $40
    L_1A9C64:
    .byte $80
    .byte $01
    .byte -8, -9, $28, $40
    L_1A9C6A:
    .byte $80
    .byte $01
    .byte 0, -9, $28, $00
    L_1A9C70:
    .byte $80
    .byte $02
    .byte 0, -9, $3E, $00
    .byte -8, -9, $3C, $00
    L_1A9C7A:
    .byte $80
    .byte $02
    .byte -8, -9, $3E, $40
    .byte 0, -9, $3C, $40
    L_1A9C84:
    .byte $80
    .byte $02
    .byte 0, -9, $3E, $80
    .byte -8, -9, $3C, $80
    L_1A9C8E:
    .byte $80
    .byte $02
    .byte -8, -9, $3E, $C0
    .byte 0, -9, $3C, $C0
    L_1A9C98:
    .byte $80
    .byte $02
    .byte -8, -9, $0A, $00
    .byte 0, -9, $14, $00
    L_1A9CA2:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $14, $40
    L_1A9CAC:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $0C, $40
    L_1A9CB6:
    .byte $80
    .byte $02
    .byte -8, -9, $0A, $00
    .byte 0, -9, $0C, $00
    L_1A9CC0:
    .byte $80
    .byte $03
    .byte 2, -9, $34, $40
    .byte -6, -9, $36, $40
    .byte -14, -9, $2E, $40
    L_1A9CCE:
    .byte $80
    .byte $02
    .byte -8, -9, $0E, $00
    .byte 0, -9, $1E, $00
    L_1A9CD8:
    .byte $80
    .byte $02
    .byte 0, -9, $0E, $40
    .byte -8, -9, $1E, $40
    L_1A9CE2:
    .byte $80
    .byte $02
    .byte -8, -9, $32, $80
    .byte 0, -9, $30, $80
    L_1A9CEC:
    .byte $80
    .byte $02
    .byte 0, -9, $32, $C0
    .byte -8, -9, $30, $C0
    L_1A9CF6:
    .byte $80
    .byte $02
    .byte -8, -9, $2A, $00
    .byte 0, -9, $2C, $00
    L_1A9D00:
    .byte $80
    .byte $02
    .byte 0, -9, $2A, $40
    .byte -8, -9, $2C, $40
    L_1A9D0A:
    .byte $80
    .byte $02
    .byte 0, -6, $5A, $00
    .byte -8, -6, $58, $00
    L_1A9D14:
    .byte $80
    .byte $02
    .byte -8, -6, $5A, $40
    .byte 0, -6, $58, $40
    L_1A9D1E:
    .byte $80
    .byte $02
    .byte 0, -9, $62, $00
    .byte -8, -9, $60, $00
    L_1A9D28:
    .byte $80
    .byte $02
    .byte -8, -9, $62, $40
    .byte 0, -9, $60, $40
    L_1A9D32:
    .byte $80
    .byte $02
    .byte -8, -9, $60, $00
    .byte 0, -9, $62, $00
    L_1A9D3C:
    .byte $80
    .byte $02
    .byte 0, -9, $60, $40
    .byte -8, -9, $62, $40
    L_1A9D46:
    .byte $80
    .byte $02
    .byte -8, -9, $48, $00
    .byte 0, -9, $4A, $00
    L_1A9D50:
    .byte $80
    .byte $02
    .byte -8, -9, $32, $00
    .byte 0, -9, $30, $00
    L_1A9D5A:
    .byte $80
    .byte $02
    .byte 0, -9, $32, $40
    .byte -8, -9, $30, $40
    L_1A9D64:
    .byte $80
    .byte $02
    .byte -8, -9, $48, $00
    .byte 0, -9, $4C, $00
    L_1A9D6E:
    .byte $80
    .byte $02
    .byte 0, -9, $48, $40
    .byte -8, -9, $4C, $40
    L_1A9D78:
    .byte $00
    .byte $01
    .byte -4, -5, $72, $01
    L_1A9D7E:
    .byte $00
    .byte $02
    .byte 0, -9, $7A, $41
    .byte -8, -9, $7A, $01
    L_1A9D88:
    .byte $00
    .byte $02
    .byte 0, -9, $78, $01
    .byte -8, -9, $76, $01
    L_1A9D92:
    .byte $00
    .byte $02
    .byte 0, -9, $7A, $C1
    .byte -8, -9, $7A, $81
    L_1A9D9C:
    .byte $00
    .byte $02
    .byte 0, -9, $76, $41
    .byte -8, -9, $78, $41
    L_1A9DA6:
    .byte $00
    .byte $02
    .byte 0, -9, $3F, $40
    .byte -8, -9, $3F, $00
    L_1A9DB0:
    .byte $02
    .byte 0, -9, $04, $43
    .byte -8, -9, $14, $43
    L_1A9DB9:
    .byte $02
    .byte 0, -9, $06, $43
    .byte -8, -9, $16, $43
    L_1A9DC2:
    .byte $02
    .byte 0, -9, $08, $43
    .byte -8, -9, $18, $43
    L_1A9DCB:
    .byte $02
    .byte 0, -8, $9E, $03
    .byte -8, -8, $8E, $03
    L_1A9DD4:
    .byte $02
    .byte 0, -8, $BE, $03
    .byte -8, -8, $AE, $03
    L_1A9DDD:
    .byte $02
    .byte 0, -8, $B0, $03
    .byte -8, -8, $A0, $03
    L_1A9DE6:
    .byte $02
    .byte 0, -8, $B2, $03
    .byte -8, -8, $A2, $03
    L_1A9DEF:
    .byte $02
    .byte -8, -8, $60, $03
    .byte 0, -8, $62, $03
    L_1A9DF8:
    .byte $03
    .byte 4, -8, $DE, $03
    .byte -12, -8, $DE, $43
    .byte -4, -8, $DC, $43
    L_1A9E05:
    .byte $08
    .byte -10, -32, $AC, $02
    .byte -2, -32, $C4, $02
    .byte -18, -32, $C6, $02
    .byte -10, -40, $C0, $02
    .byte -10, -24, $C2, $02
    .byte 4, -8, $DE, $03
    .byte -12, -8, $E0, $43
    .byte -4, -8, $DC, $43
    L_1A9E26:
    .byte $07
    .byte -7, -32, $88, $42
    .byte -14, -32, $98, $42
    .byte -10, -40, $C0, $02
    .byte -10, -24, $C2, $02
    .byte 4, -8, $DE, $03
    .byte -12, -8, $E0, $43
    .byte -4, -8, $DC, $43
    L_1A9E43:
    .byte $07
    .byte -2, -32, $88, $42
    .byte -18, -32, $98, $42
    .byte -10, -40, $C0, $02
    .byte -10, -24, $C2, $02
    .byte 4, -8, $DE, $03
    .byte -12, -8, $E0, $43
    .byte -4, -8, $DC, $43
    L_1A9E60:
    .byte $09
    .byte -6, -31, $D4, $02
    .byte -14, -31, $D2, $02
    .byte -2, -32, $C6, $42
    .byte -18, -32, $C4, $42
    .byte -10, -40, $C0, $02
    .byte -10, -24, $C2, $02
    .byte 4, -8, $DE, $03
    .byte -12, -8, $E0, $43
    .byte -4, -8, $DC, $43
    L_1A9E85:
    .byte $02
    .byte 0, -8, $3D, $01
    .byte -8, -8, $3B, $01
    L_1A9E8E:
    .byte $02
    .byte 0, -8, $3D, $02
    .byte -8, -8, $3B, $02
    L_1A9E97:
    .byte $05
    .byte -4, -8, $AC, $02
    .byte -12, -8, $C6, $02
    .byte 4, -8, $C4, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9EAC:
    .byte $05
    .byte -4, -8, $BC, $02
    .byte -12, -8, $C6, $02
    .byte 4, -8, $C4, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9EC1:
    .byte $05
    .byte -4, -8, $C8, $02
    .byte -12, -8, $C6, $02
    .byte 4, -8, $C4, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9ED6:
    .byte $05
    .byte -4, -8, $CA, $02
    .byte -12, -8, $C6, $02
    .byte 4, -8, $C4, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9EEB:
    .byte $05
    .byte -4, -8, $CC, $02
    .byte -12, -8, $C6, $02
    .byte 4, -8, $C4, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9F00:
    .byte $05
    .byte -4, -8, $CE, $02
    .byte -12, -8, $C6, $02
    .byte 4, -8, $C4, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9F15:
    .byte $05
    .byte -4, -8, $D0, $02
    .byte -12, -8, $C6, $02
    .byte 4, -8, $C4, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9F2A:
    .byte $04
    .byte -12, -8, $88, $02
    .byte 4, -8, $98, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9F3B:
    .byte $04
    .byte -7, -8, $88, $02
    .byte 0, -8, $98, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9F4C:
    .byte $04
    .byte -12, -8, $98, $42
    .byte 4, -8, $88, $42
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9F5D:
    .byte $06
    .byte 1, -7, $D4, $02
    .byte -7, -7, $D2, $02
    .byte -12, -8, $C6, $02
    .byte 4, -8, $C4, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9F76:
    .byte $05
    .byte -12, -8, $92, $02
    .byte -4, -8, $84, $02
    .byte 4, -8, $82, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9F8B:
    .byte $05
    .byte -12, -8, $80, $02
    .byte -4, -8, $90, $02
    .byte 4, -8, $82, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9FA0:
    .byte $05
    .byte -12, -8, $9C, $02
    .byte -4, -8, $96, $02
    .byte 4, -8, $94, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9FB5:
    .byte $05
    .byte -12, -8, $86, $02
    .byte -4, -8, $96, $02
    .byte 4, -8, $94, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9FCA:
    .byte $05
    .byte -12, -8, $DA, $02
    .byte -4, -8, $D8, $02
    .byte 4, -8, $D6, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9FDF:
    .byte $07
    .byte 4, -8, $BA, $02
    .byte -4, -8, $9A, $02
    .byte -12, -8, $8A, $02
    .byte -12, -8, $C6, $02
    .byte 4, -8, $C4, $02
    .byte -4, 0, $C2, $02
    .byte -4, -16, $C0, $02
    L_1A9FFC:
    .byte $04,$40,$00,$00

.segment "PRG1B": absolute

L_1B8000:
    .addr L_1B8104
    .addr L_1B8116
    .addr L_1B8128
    .addr L_1B813A
    .addr L_1B8154
    .addr L_1B8166
    .addr L_1B817C
    .addr L_1B8192
    .addr L_1B81A0
    .addr L_1B81AE
    .addr L_1B81BC
    .addr L_1B81CA
    .addr L_1B81D8
    .addr L_1B81E6
    .addr L_1B81F4
    .addr L_1B8206
    .addr L_1B8218
    .addr L_1B822A
    .addr L_1B823C
    .addr L_1B824A
    .addr L_1B8258
    .addr L_1B8262
    .addr L_1B826C
    .addr L_1B8276
    .addr L_1B8280
    .addr L_1B828E
    .addr L_1B829C
    .addr L_1B82AA
    .addr L_1B82B8
    .addr L_1B82C6
    .addr L_1B82D4
    .addr L_1B82E6
    .addr L_1B82F8
    .addr L_1B8306
    .addr L_1B8314
    .addr L_1B8326
    .addr L_1B8338
    .addr L_1B8346
    .addr L_1B8354
    .addr L_1B8362
    .addr L_1B8370
    .addr L_1B837E
    .addr L_1B8370
    .addr L_1B837E
    .addr L_1B838C
    .addr L_1B839A
    .addr L_1B83A8
    .addr L_1B83B6
    .addr L_1B83C4
    .addr L_1B83D2
    .addr L_1B83E0
    .addr L_1B83EE
    .addr L_1B83FC
    .addr L_1B840A
    .addr L_1B8418
    .addr L_1B8426
    .addr L_1B8434
    .addr L_1B8446
    .addr L_1B8458
    .addr L_1B846A
    .addr L_1B847C
    .addr L_1B848A
    .addr L_1B8498
    .addr L_1B84AA
    .addr L_1B84BC
    .addr L_1B84D6
    .addr L_1B84F0
    .addr L_1B8502
    .addr L_1B8514
    .addr L_1B852E
    .addr L_1B8548
    .addr L_1B8572
    .addr L_1B859C
    .addr L_1B85B6
    .addr L_1B85D0
    .addr L_1B85DE
    .addr L_1B85EC
    .addr L_1B85FA
    .addr L_1B8608
    .addr L_1B861E
    .addr L_1B8634
    .addr L_1B864A
    .addr L_1B8660
    .addr L_1B8660
    .addr L_1B867A
    .addr L_1B86EE
    .addr L_1B868C
    .addr L_1B86DC
    .addr L_1B869E
    .addr L_1B86CA
    .addr L_1B86B0
    .addr L_1B86B0
    .addr L_1B86CA
    .addr L_1B869E
    .addr L_1B86DC
    .addr L_1B868C
    .addr L_1B86EE
    .addr L_1B867A
    .addr L_1B8882
    .addr L_1B8890
    .addr L_1B889E
    .addr L_1B88AC
    .addr L_1B88BA
    .addr L_1B88C8
    .addr L_1B88D6
    .addr L_1B88E4
    .addr L_1B8854
    .addr L_1B8854
    .addr L_1B8862
    .addr L_1B8862
    .addr L_1B8874
    .addr L_1B8874
    .addr L_1B838C
    .addr L_1B839A
    .addr L_1B8700
    .addr L_1B870E
    .addr L_1B871C
    .addr L_1B872A
    .addr L_1B8738
    .addr L_1B874E
    .addr L_1B8764
    .addr L_1B8782
    .addr L_1B87A0
    .addr L_1B87BE
    .addr L_1B87DC
    .addr L_1B87FA
    .addr L_1B8818
    .addr L_1B8834
    .addr L_1B8826
    .addr L_1B8842

    L_1B8104:
    .byte $86
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $30, $00
    .byte -10, 8, $28, $C1
    .byte -18, 8, $2A, $C1
    L_1B8116:
    .byte $86
    .byte $04
    .byte -8, -9, $30, $00
    .byte 0, -9, $20, $40
    .byte -23, -1, $62, $C1
    .byte -23, -17, $62, $41
    L_1B8128:
    .byte $86
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $22, $40
    .byte -13, -27, $4C, $01
    .byte -21, -22, $4A, $01
    L_1B813A:
    .byte $86
    .byte $06
    .byte -8, -9, $2C, $00
    .byte 0, -9, $2E, $00
    .byte 8, -32, $48, $41
    .byte -16, -32, $48, $01
    .byte 0, -32, $4E, $41
    .byte -8, -32, $4E, $01
    L_1B8154:
    .byte $86
    .byte $04
    .byte -8, -9, $2C, $00
    .byte 0, -9, $2E, $00
    .byte 8, -31, $2A, $01
    .byte 0, -31, $28, $01
    L_1B8166:
    .byte $86
    .byte $05
    .byte 5, -28, $3E, $41
    .byte -3, -28, $3E, $81
    .byte 1, -25, $40, $01
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1B817C:
    .byte $86
    .byte $05
    .byte 5, -28, $3E, $C1
    .byte -3, -28, $3E, $01
    .byte 1, -25, $40, $01
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1B8192:
    .byte $86
    .byte $03
    .byte 1, -25, $40, $01
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1B81A0:
    .byte $86
    .byte $03
    .byte -11, -24, $42, $41
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1B81AE:
    .byte $86
    .byte $03
    .byte 3, -24, $42, $01
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1B81BC:
    .byte $8A
    .byte $03
    .byte -9, -24, $40, $01
    .byte -8, -9, $02, $00
    .byte 0, -9, $12, $00
    L_1B81CA:
    .byte $8A
    .byte $03
    .byte 1, -24, $40, $01
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1B81D8:
    .byte $8A
    .byte $03
    .byte -9, -24, $40, $41
    .byte 0, -9, $00, $40
    .byte -8, -9, $10, $40
    L_1B81E6:
    .byte $8A
    .byte $03
    .byte 0, -24, $40, $41
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1B81F4:
    .byte $8A
    .byte $04
    .byte -9, -24, $40, $01
    .byte -8, 7, $20, $00
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1B8206:
    .byte $8A
    .byte $04
    .byte 1, -24, $40, $01
    .byte -8, 7, $20, $00
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    L_1B8218:
    .byte $8A
    .byte $04
    .byte -9, -24, $40, $01
    .byte 0, 7, $20, $40
    .byte -8, -9, $16, $40
    .byte 0, -9, $06, $40
    L_1B822A:
    .byte $8A
    .byte $04
    .byte 1, -24, $40, $01
    .byte 0, 7, $20, $40
    .byte 0, -9, $04, $40
    .byte -8, -9, $14, $40
    L_1B823C:
    .byte $7E
    .byte $03
    .byte 0, -17, $16, $00
    .byte -8, -17, $06, $00
    .byte -13, -22, $34, $41
    L_1B824A:
    .byte $7E
    .byte $03
    .byte -8, -17, $16, $40
    .byte 0, -17, $06, $40
    .byte 5, -22, $34, $01
    L_1B8258:
    .byte $7E
    .byte $02
    .byte 0, -9, $30, $00
    .byte -4, -24, $32, $01
    L_1B8262:
    .byte $7E
    .byte $02
    .byte 0, -9, $30, $40
    .byte -4, -24, $32, $01
    L_1B826C:
    .byte $7E
    .byte $02
    .byte -8, -9, $30, $00
    .byte -4, -24, $32, $41
    L_1B8276:
    .byte $7E
    .byte $02
    .byte -8, -9, $30, $40
    .byte -4, -24, $32, $41
    L_1B8280:
    .byte $86
    .byte $03
    .byte -5, -25, $40, $01
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00
    L_1B828E:
    .byte $86
    .byte $03
    .byte -3, -25, $40, $41
    .byte 0, -9, $04, $40
    .byte -8, -9, $14, $40
    L_1B829C:
    .byte $86
    .byte $03
    .byte -10, -23, $42, $41
    .byte -8, -9, $06, $00
    .byte 0, -9, $16, $00
    L_1B82AA:
    .byte $86
    .byte $03
    .byte 2, -23, $42, $01
    .byte 0, -9, $06, $40
    .byte -8, -9, $16, $40
    L_1B82B8:
    .byte $86
    .byte $03
    .byte -16, -20, $44, $41
    .byte 0, -9, $18, $00
    .byte -8, -9, $08, $00
    L_1B82C6:
    .byte $86
    .byte $03
    .byte 8, -20, $44, $01
    .byte -8, -9, $18, $40
    .byte 0, -9, $08, $40
    L_1B82D4:
    .byte $8A
    .byte $04
    .byte -8, 7, $30, $00
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    .byte -4, -20, $40, $41
    L_1B82E6:
    .byte $8A
    .byte $04
    .byte 0, 7, $30, $40
    .byte -8, -9, $1A, $40
    .byte 0, -9, $0A, $40
    .byte -6, -20, $40, $01
    L_1B82F8:
    .byte $8A
    .byte $03
    .byte 1, -11, $1C, $00
    .byte -7, -11, $0C, $00
    .byte 2, -19, $42, $01
    L_1B8306:
    .byte $8A
    .byte $03
    .byte -7, -11, $1C, $40
    .byte 1, -11, $0C, $40
    .byte -8, -20, $42, $41
    L_1B8314:
    .byte $8A
    .byte $04
    .byte -6, 7, $30, $00
    .byte 0, -9, $1E, $00
    .byte -8, -9, $0E, $00
    .byte 3, -16, $44, $01
    L_1B8326:
    .byte $8A
    .byte $04
    .byte 0, 7, $30, $40
    .byte -6, -9, $1E, $40
    .byte 2, -9, $0E, $40
    .byte -9, -16, $44, $41
    L_1B8338:
    .byte $8A
    .byte $03
    .byte -16, -13, $44, $41
    .byte 0, -9, $18, $00
    .byte -8, -9, $08, $00
    L_1B8346:
    .byte $8A
    .byte $03
    .byte 8, -13, $44, $01
    .byte 0, -9, $08, $40
    .byte -8, -9, $18, $40
    L_1B8354:
    .byte $86
    .byte $03
    .byte -16, -15, $44, $41
    .byte -8, -9, $0C, $00
    .byte 0, -9, $1C, $00
    L_1B8362:
    .byte $86
    .byte $03
    .byte 8, -15, $44, $01
    .byte 0, -9, $0C, $40
    .byte -8, -9, $1C, $40
    L_1B8370:
    .byte $86
    .byte $03
    .byte -12, -24, $42, $41
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1B837E:
    .byte $86
    .byte $03
    .byte 4, -24, $42, $01
    .byte 0, -9, $00, $40
    .byte -8, -9, $10, $40
    L_1B838C:
    .byte $7E
    .byte $03
    .byte 0, -9, $1E, $00
    .byte -8, -9, $0E, $00
    .byte -3, 2, $36, $81
    L_1B839A:
    .byte $7E
    .byte $03
    .byte -8, -9, $1E, $40
    .byte 0, -9, $0E, $40
    .byte -5, 2, $36, $C1
    L_1B83A8:
    .byte $7E
    .byte $03
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    .byte -13, -14, $34, $41
    L_1B83B6:
    .byte $7E
    .byte $03
    .byte -8, -9, $16, $40
    .byte 0, -9, $06, $40
    .byte 5, -14, $34, $01
    L_1B83C4:
    .byte $7E
    .byte $03
    .byte 0, -7, $18, $00
    .byte -8, -7, $08, $00
    .byte -14, -14, $34, $41
    L_1B83D2:
    .byte $7E
    .byte $03
    .byte 0, -7, $1A, $00
    .byte -8, -7, $0A, $00
    .byte 2, -18, $32, $01
    L_1B83E0:
    .byte $7E
    .byte $03
    .byte -8, -7, $1A, $40
    .byte 0, -7, $0A, $40
    .byte -10, -18, $32, $41
    L_1B83EE:
    .byte $7E
    .byte $03
    .byte -8, -7, $18, $40
    .byte 0, -7, $08, $40
    .byte 6, -14, $34, $01
    L_1B83FC:
    .byte $7E
    .byte $03
    .byte -8, -6, $0C, $00
    .byte 0, -6, $1C, $00
    .byte -13, -10, $34, $41
    L_1B840A:
    .byte $7E
    .byte $03
    .byte 1, -21, $32, $01
    .byte -8, -6, $0C, $00
    .byte 0, -6, $1C, $00
    L_1B8418:
    .byte $7E
    .byte $03
    .byte -9, -21, $32, $41
    .byte 0, -6, $0C, $40
    .byte -8, -6, $1C, $40
    L_1B8426:
    .byte $7E
    .byte $03
    .byte 0, -6, $0C, $40
    .byte -8, -6, $1C, $40
    .byte 5, -10, $34, $01
    L_1B8434:
    .byte $86
    .byte $04
    .byte -10, 7, $28, $C1
    .byte -18, 7, $2A, $C1
    .byte -8, -9, $30, $00
    .byte 0, -9, $32, $00
    L_1B8446:
    .byte $86
    .byte $04
    .byte 2, 7, $28, $81
    .byte 10, 7, $2A, $81
    .byte 0, -9, $30, $40
    .byte -8, -9, $32, $40
    L_1B8458:
    .byte $86
    .byte $04
    .byte 16, -4, $48, $41
    .byte 8, 2, $46, $81
    .byte -8, -9, $20, $00
    .byte 0, -9, $30, $40
    L_1B846A:
    .byte $86
    .byte $04
    .byte -24, -4, $48, $01
    .byte -16, 2, $46, $C1
    .byte 0, -9, $20, $40
    .byte -8, -9, $30, $00
    L_1B847C:
    .byte $86
    .byte $03
    .byte -16, -21, $44, $41
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1B848A:
    .byte $86
    .byte $03
    .byte 8, -21, $44, $01
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    L_1B8498:
    .byte $86
    .byte $04
    .byte -8, -25, $28, $41
    .byte -16, -25, $2A, $41
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1B84AA:
    .byte $86
    .byte $04
    .byte 0, -25, $28, $01
    .byte 8, -25, $2A, $01
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    L_1B84BC:
    .byte $86
    .byte $06
    .byte 8, -27, $48, $41
    .byte -16, -27, $48, $01
    .byte 0, -27, $4E, $41
    .byte -8, -27, $4E, $01
    .byte 0, -9, $22, $00
    .byte -8, -9, $20, $00
    L_1B84D6:
    .byte $86
    .byte $06
    .byte -16, -27, $48, $01
    .byte 8, -27, $48, $41
    .byte -8, -27, $4E, $01
    .byte 0, -27, $4E, $41
    .byte -8, -9, $22, $40
    .byte 0, -9, $20, $40
    L_1B84F0:
    .byte $86
    .byte $04
    .byte 7, -22, $4C, $41
    .byte 15, -17, $4A, $41
    .byte 1, -9, $22, $00
    .byte -7, -9, $20, $00
    L_1B8502:
    .byte $86
    .byte $04
    .byte -13, -22, $4C, $01
    .byte -21, -17, $4A, $01
    .byte -7, -9, $22, $40
    .byte 1, -9, $20, $40
    L_1B8514:
    .byte $86
    .byte $06
    .byte 18, -25, $2A, $01
    .byte 10, -25, $28, $01
    .byte 16, -1, $4A, $C1
    .byte 8, 4, $4C, $C1
    .byte 2, -9, $30, $40
    .byte -6, -9, $20, $00
    L_1B852E:
    .byte $86
    .byte $06
    .byte -22, -25, $2A, $41
    .byte -14, -25, $28, $41
    .byte -20, -1, $4A, $81
    .byte -12, 4, $4C, $81
    .byte -6, -9, $30, $00
    .byte 2, -9, $20, $40
    L_1B8548:
    .byte $86
    .byte $0A
    .byte -5, -9, $30, $00
    .byte 3, -9, $32, $00
    .byte 19, -1, $34, $81
    .byte 19, -17, $34, $01
    .byte 27, -1, $36, $81
    .byte 27, -17, $36, $01
    .byte 35, -1, $38, $81
    .byte 35, -17, $38, $01
    .byte -7, 9, $28, $C1
    .byte -15, 9, $2A, $C1
    L_1B8572:
    .byte $86
    .byte $0A
    .byte 3, -9, $30, $40
    .byte -5, -9, $32, $40
    .byte -21, -1, $34, $C1
    .byte -21, -17, $34, $41
    .byte -29, -1, $36, $C1
    .byte -29, -17, $36, $41
    .byte -37, -1, $38, $C1
    .byte -37, -17, $38, $41
    .byte 5, 9, $28, $81
    .byte 13, 9, $2A, $81
    L_1B859C:
    .byte $86
    .byte $06
    .byte 2, -9, $32, $00
    .byte -6, -9, $22, $40
    .byte 25, 7, $2A, $81
    .byte 17, 7, $28, $81
    .byte -20, -1, $62, $C1
    .byte -20, -17, $62, $41
    L_1B85B6:
    .byte $86
    .byte $06
    .byte -6, -9, $32, $40
    .byte 2, -9, $22, $00
    .byte -29, 7, $2A, $C1
    .byte -21, 7, $28, $C1
    .byte 16, -1, $62, $81
    .byte 16, -17, $62, $01
    L_1B85D0:
    .byte $86
    .byte $03
    .byte -18, -20, $4A, $01
    .byte 1, -9, $1A, $00
    .byte -7, -9, $0A, $00
    L_1B85DE:
    .byte $86
    .byte $03
    .byte 12, -20, $4A, $41
    .byte -7, -9, $1A, $40
    .byte 1, -9, $0A, $40
    L_1B85EC:
    .byte $86
    .byte $03
    .byte -13, -24, $42, $41
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    L_1B85FA:
    .byte $86
    .byte $03
    .byte 5, -24, $42, $01
    .byte -8, -9, $1A, $40
    .byte 0, -9, $0A, $40
    L_1B8608:
    .byte $86
    .byte $05
    .byte -18, -26, $3E, $01
    .byte -10, -26, $3E, $C1
    .byte -13, -24, $42, $41
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    L_1B861E:
    .byte $86
    .byte $05
    .byte 10, -26, $3E, $41
    .byte 2, -26, $3E, $81
    .byte 5, -24, $42, $01
    .byte -8, -9, $1A, $40
    .byte 0, -9, $0A, $40
    L_1B8634:
    .byte $86
    .byte $05
    .byte -18, -26, $3E, $81
    .byte -10, -26, $3E, $41
    .byte -13, -24, $42, $41
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    L_1B864A:
    .byte $86
    .byte $05
    .byte 10, -26, $3E, $C1
    .byte 2, -26, $3E, $01
    .byte 5, -24, $42, $01
    .byte -8, -9, $1A, $40
    .byte 0, -9, $0A, $40
    L_1B8660:
    .byte $86
    .byte $06
    .byte 8, -25, $48, $41
    .byte -16, -25, $48, $01
    .byte 0, -25, $4E, $41
    .byte -8, -25, $4E, $01
    .byte 0, -9, $26, $00
    .byte -8, -9, $24, $00
    L_1B867A:
    .byte $86
    .byte $04
    .byte 8, -17, $4A, $41
    .byte 0, -22, $4C, $41
    .byte 0, -9, $24, $40
    .byte -8, -9, $26, $40
    L_1B868C:
    .byte $86
    .byte $04
    .byte 8, -1, $62, $81
    .byte 8, -17, $62, $01
    .byte 0, -9, $24, $40
    .byte -8, -9, $26, $40
    L_1B869E:
    .byte $86
    .byte $04
    .byte 8, -1, $4A, $C1
    .byte 0, 4, $4C, $C1
    .byte 0, -9, $24, $C0
    .byte -8, -9, $26, $C0
    L_1B86B0:
    .byte $86
    .byte $06
    .byte 8, 7, $48, $C1
    .byte -16, 7, $48, $81
    .byte -8, 7, $4E, $81
    .byte 0, 7, $4E, $C1
    .byte 0, -9, $24, $C0
    .byte -8, -9, $26, $C0
    L_1B86CA:
    .byte $86
    .byte $04
    .byte -8, 4, $4C, $81
    .byte -16, -1, $4A, $81
    .byte 0, -9, $26, $80
    .byte -8, -9, $24, $80
    L_1B86DC:
    .byte $86
    .byte $04
    .byte -16, -1, $62, $C1
    .byte -16, -17, $62, $41
    .byte 0, -9, $26, $80
    .byte -8, -9, $24, $80
    L_1B86EE:
    .byte $86
    .byte $04
    .byte -16, -17, $4A, $01
    .byte -8, -22, $4C, $01
    .byte 0, -9, $26, $00
    .byte -8, -9, $24, $00
    L_1B8700:
    .byte $C6
    .byte $03
    .byte -8, -25, $50, $01
    .byte 0, -9, $5E, $00
    .byte -8, -9, $4E, $00
    L_1B870E:
    .byte $C6
    .byte $03
    .byte 0, -25, $50, $01
    .byte -8, -9, $5E, $40
    .byte 0, -9, $4E, $40
    L_1B871C:
    .byte $C6
    .byte $03
    .byte -8, -25, $50, $01
    .byte 0, -9, $4C, $00
    .byte -8, -9, $4E, $00
    L_1B872A:
    .byte $C6
    .byte $03
    .byte 0, -25, $50, $01
    .byte -8, -9, $4C, $40
    .byte 0, -9, $4E, $40
    L_1B8738:
    .byte $C6
    .byte $05
    .byte -8, -29, $50, $01
    .byte -8, -1, $2E, $00
    .byte -8, -17, $2C, $00
    .byte 0, -1, $3E, $00
    .byte 0, -17, $3C, $00
    L_1B874E:
    .byte $C6
    .byte $05
    .byte 0, -29, $50, $01
    .byte 0, -1, $2E, $40
    .byte 0, -17, $2C, $40
    .byte -8, -1, $3E, $40
    .byte -8, -17, $3C, $40
    L_1B8764:
    .byte $7E
    .byte $07
    .byte 4, -1, $5E, $00
    .byte -4, -1, $4E, $00
    .byte -12, -1, $3E, $00
    .byte 4, -17, $58, $00
    .byte -4, -17, $38, $00
    .byte -12, -17, $3C, $00
    .byte -14, -29, $34, $41
    L_1B8782:
    .byte $7E
    .byte $07
    .byte -12, -1, $5E, $40
    .byte -4, -1, $4E, $40
    .byte 4, -1, $3E, $40
    .byte -12, -17, $58, $40
    .byte -4, -17, $38, $40
    .byte 4, -17, $3C, $40
    .byte 6, -29, $34, $01
    L_1B87A0:
    .byte $7E
    .byte $07
    .byte -11, -31, $32, $01
    .byte 4, -2, $5E, $00
    .byte -4, -2, $4E, $00
    .byte -12, -2, $3E, $00
    .byte 4, -18, $5C, $00
    .byte -4, -18, $4C, $00
    .byte -12, -18, $3C, $00
    L_1B87BE:
    .byte $7E
    .byte $07
    .byte 3, -31, $32, $41
    .byte -12, -2, $5E, $40
    .byte -4, -2, $4E, $40
    .byte 4, -2, $3E, $40
    .byte -12, -18, $5C, $40
    .byte -4, -18, $4C, $40
    .byte 4, -18, $3C, $40
    L_1B87DC:
    .byte $7E
    .byte $07
    .byte -11, -29, $32, $01
    .byte 4, 0, $5E, $00
    .byte -4, 0, $4E, $00
    .byte -12, 0, $3E, $00
    .byte 4, -16, $3A, $00
    .byte -4, -16, $4C, $00
    .byte -12, -16, $3C, $00
    L_1B87FA:
    .byte $7E
    .byte $07
    .byte 3, -29, $32, $41
    .byte -12, 0, $5E, $40
    .byte -4, 0, $4E, $40
    .byte 4, 0, $3E, $40
    .byte -12, -16, $3A, $40
    .byte -4, -16, $4C, $40
    .byte 4, -16, $3C, $40
    L_1B8818:
    .byte $7E
    .byte $03
    .byte 0, -9, $42, $00
    .byte -8, -9, $44, $00
    .byte -2, -23, $34, $41
    L_1B8826:
    .byte $7E
    .byte $03
    .byte 0, -9, $40, $40
    .byte -8, -9, $40, $00
    .byte -1, -22, $34, $41
    L_1B8834:
    .byte $7E
    .byte $03
    .byte -8, -9, $42, $40
    .byte 0, -9, $44, $40
    .byte 0, -20, $34, $41
    L_1B8842:
    .byte $7E
    .byte $04
    .byte -4, -9, $60, $00
    .byte -12, -9, $54, $00
    .byte 4, -9, $54, $40
    .byte -3, -24, $34, $41
    L_1B8854:
    .byte $7E
    .byte $03
    .byte 1, 1, $32, $81
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1B8862:
    .byte $7E
    .byte $04
    .byte 1, 3, $32, $81
    .byte 3, -9, $02, $40
    .byte -12, -9, $02, $00
    .byte -4, -9, $12, $00
    L_1B8874:
    .byte $7E
    .byte $03
    .byte 1, 0, $32, $81
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1B8882:
    .byte $7E
    .byte $03
    .byte -13, 1, $36, $C1
    .byte 0, -9, $22, $00
    .byte -8, -9, $28, $00
    L_1B8890:
    .byte $7E
    .byte $03
    .byte 5, 1, $36, $81
    .byte -8, -9, $22, $40
    .byte 0, -9, $28, $40
    L_1B889E:
    .byte $7E
    .byte $03
    .byte -14, 2, $36, $C1
    .byte 0, -9, $26, $00
    .byte -8, -9, $2C, $00
    L_1B88AC:
    .byte $7E
    .byte $03
    .byte 6, 2, $36, $81
    .byte -8, -9, $26, $40
    .byte 0, -9, $2C, $40
    L_1B88BA:
    .byte $7E
    .byte $03
    .byte -13, 0, $36, $C1
    .byte 0, -9, $2A, $00
    .byte -8, -9, $28, $00
    L_1B88C8:
    .byte $7E
    .byte $03
    .byte 5, 0, $36, $81
    .byte -8, -9, $2A, $40
    .byte 0, -9, $28, $40
    L_1B88D6:
    .byte $7E
    .byte $03
    .byte -14, 1, $36, $C1
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1B88E4:
    .byte $7E
    .byte $03
    .byte 6, 1, $36, $81
    .byte -8, -9, $2E, $40
    .byte 0, -9, $2C, $40

L_1B88F2:
    .addr L_1B89FA
    .addr L_1B8A0C
    .addr L_1B8A1E
    .addr L_1B8A30
    .addr L_1B8A42
    .addr L_1B8A54
    .addr L_1B8A66
    .addr L_1B8A78
    .addr L_1B8A8A
    .addr L_1B8A9C
    .addr L_1B8AAE
    .addr L_1B8AC0
    .addr L_1B8AD2
    .addr L_1B8AE4
    .addr L_1B8AF6
    .addr L_1B8B08
    .addr L_1B8B1A
    .addr L_1B8B2C
    .addr L_1B8B3E
    .addr L_1B8B50
    .addr L_1B8B62
    .addr L_1B8B78
    .addr L_1B8B8E
    .addr L_1B8BA4
    .addr L_1B8BBA
    .addr L_1B8BCC
    .addr L_1B8BDE
    .addr L_1B8BEC
    .addr L_1B8BFA
    .addr L_1B8C08
    .addr L_1B8C16
    .addr L_1B8C28
    .addr L_1B8C3A
    .addr L_1B8C4C
    .addr L_1B8C5E
    .addr L_1B8C70
    .addr L_1B8C82
    .addr L_1B8C98
    .addr L_1B8CAE
    .addr L_1B8CBC
    .addr L_1B8CCA
    .addr L_1B8CE0
    .addr L_1B8CF6
    .addr L_1B8D08
    .addr L_1B8D1A
    .addr L_1B8D2C
    .addr L_1B8D1A
    .addr L_1B8D2C
    .addr L_1B8D3E
    .addr L_1B8D50
    .addr L_1B8D3E
    .addr L_1B8D50
    .addr L_1B8D62
    .addr L_1B8D74
    .addr L_1B8D86
    .addr L_1B8D98
    .addr L_1B8DAA
    .addr L_1B8DBC
    .addr L_1B8DCE
    .addr L_1B8DE0
    .addr L_1B8DF2
    .addr L_1B8E04
    .addr L_1B8E16
    .addr L_1B8E28
    .addr L_1B8E3A
    .addr L_1B8E4C
    .addr L_1B8E5E
    .addr L_1B8E70
    .addr L_1B8E82
    .addr L_1B8E94
    .addr L_1B8EA6
    .addr L_1B8EB8
    .addr L_1B8ECA
    .addr L_1B8EDC
    .addr L_1B8EEE
    .addr L_1B8F00
    .addr L_1B8F12
    .addr L_1B8F24
    .addr L_1B8F36
    .addr L_1B8F48
    .addr L_1B8F5A
    .addr L_1B8F6C
    .addr L_1B8F7E
    .addr L_1B8F90
    .addr L_1B8FA2
    .addr L_1B8FB4
    .addr L_1B8FC6
    .addr L_1B8FD8
    .addr L_1B8FEA
    .addr L_1B8FFC
    .addr L_1B900E
    .addr L_1B9020
    .addr L_1B9032
    .addr L_1B9044
    .addr L_1B9056
    .addr L_1B9068
    .addr L_1B907A
    .addr L_1B908C
    .addr L_1B909E
    .addr L_1B90B0
    .addr L_1B9290
    .addr L_1B92A2
    .addr L_1B92B4
    .addr L_1B92C6
    .addr L_1B92D8
    .addr L_1B92EA
    .addr L_1B92FC
    .addr L_1B930E
    .addr L_1B9256
    .addr L_1B9256
    .addr L_1B9268
    .addr L_1B9268
    .addr L_1B927E
    .addr L_1B927E
    .addr L_1B8D62
    .addr L_1B8D74
    .addr L_1B90C2
    .addr L_1B90D4
    .addr L_1B90E6
    .addr L_1B90F8
    .addr L_1B910A
    .addr L_1B9124
    .addr L_1B913E
    .addr L_1B9160
    .addr L_1B9182
    .addr L_1B91A4
    .addr L_1B91C6
    .addr L_1B91E8
    .addr L_1B920A
    .addr L_1B922E
    .addr L_1B921C
    .addr L_1B9240

    L_1B89FA:
    .byte $96
    .byte $04
    .byte -16, -1, $46, $01
    .byte -24, -1, $46, $C1
    .byte 0, -9, $20, $40
    .byte -8, -9, $24, $40
    L_1B8A0C:
    .byte $96
    .byte $04
    .byte 8, -1, $46, $41
    .byte 16, -1, $46, $81
    .byte -8, -9, $20, $00
    .byte 0, -9, $24, $00
    L_1B8A1E:
    .byte $96
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $24, $40
    .byte -16, -13, $46, $81
    .byte -24, -13, $46, $41
    L_1B8A30:
    .byte $96
    .byte $04
    .byte -8, -9, $20, $00
    .byte 0, -9, $24, $00
    .byte 8, -13, $46, $C1
    .byte 16, -13, $46, $01
    L_1B8A42:
    .byte $96
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $22, $40
    .byte -20, -20, $44, $41
    .byte -12, -20, $44, $81
    L_1B8A54:
    .byte $96
    .byte $04
    .byte -8, -9, $20, $00
    .byte 0, -9, $22, $00
    .byte 12, -20, $44, $01
    .byte 4, -20, $44, $C1
    L_1B8A66:
    .byte $96
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $22, $40
    .byte -5, -25, $42, $81
    .byte -13, -25, $42, $41
    L_1B8A78:
    .byte $96
    .byte $04
    .byte -8, -9, $20, $00
    .byte 0, -9, $22, $00
    .byte -3, -25, $42, $C1
    .byte 5, -25, $42, $01
    L_1B8A8A:
    .byte $96
    .byte $04
    .byte -3, -25, $40, $41
    .byte 5, -25, $40, $01
    .byte -8, -9, $2C, $00
    .byte 0, -9, $2E, $00
    L_1B8A9C:
    .byte $96
    .byte $04
    .byte -5, -25, $40, $01
    .byte -13, -25, $40, $41
    .byte 0, -9, $2C, $40
    .byte -8, -9, $2E, $40
    L_1B8AAE:
    .byte $96
    .byte $04
    .byte -3, -25, $48, $01
    .byte 5, -25, $4A, $01
    .byte -8, -9, $2C, $00
    .byte 0, -9, $2E, $00
    L_1B8AC0:
    .byte $96
    .byte $04
    .byte -5, -25, $48, $41
    .byte -13, -25, $4A, $41
    .byte 0, -9, $2C, $40
    .byte -8, -9, $2E, $40
    L_1B8AD2:
    .byte $96
    .byte $04
    .byte -3, -25, $4A, $41
    .byte 5, -25, $48, $41
    .byte -8, -9, $2C, $00
    .byte 0, -9, $2E, $00
    L_1B8AE4:
    .byte $96
    .byte $04
    .byte -5, -25, $4A, $01
    .byte -13, -25, $48, $01
    .byte 0, -9, $2C, $40
    .byte -8, -9, $2E, $40
    L_1B8AF6:
    .byte $96
    .byte $04
    .byte -17, -22, $42, $41
    .byte -9, -22, $42, $81
    .byte -1, -9, $12, $00
    .byte -9, -9, $02, $00
    L_1B8B08:
    .byte $96
    .byte $04
    .byte 7, -22, $42, $01
    .byte -1, -22, $42, $C1
    .byte -9, -9, $12, $40
    .byte -1, -9, $02, $40
    L_1B8B1A:
    .byte $8A
    .byte $04
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    .byte -4, -24, $58, $01
    .byte -12, -24, $58, $41
    L_1B8B2C:
    .byte $8A
    .byte $04
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    .byte 5, -24, $58, $01
    .byte -3, -24, $58, $41
    L_1B8B3E:
    .byte $8A
    .byte $04
    .byte 0, -9, $00, $40
    .byte -8, -9, $10, $40
    .byte -4, -24, $58, $01
    .byte -12, -24, $58, $41
    L_1B8B50:
    .byte $8A
    .byte $04
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    .byte -4, -24, $58, $41
    .byte 4, -24, $58, $01
    L_1B8B62:
    .byte $8A
    .byte $05
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00
    .byte -8, 7, $20, $00
    .byte -4, -24, $58, $01
    .byte -12, -24, $58, $41
    L_1B8B78:
    .byte $8A
    .byte $05
    .byte -8, -9, $06, $00
    .byte 0, -9, $16, $00
    .byte -8, 7, $20, $00
    .byte 4, -24, $58, $01
    .byte -4, -24, $58, $41
    L_1B8B8E:
    .byte $8A
    .byte $05
    .byte 0, -9, $06, $40
    .byte -8, -9, $16, $40
    .byte 0, 7, $20, $40
    .byte -4, -24, $58, $01
    .byte -12, -24, $58, $41
    L_1B8BA4:
    .byte $8A
    .byte $05
    .byte 0, -9, $04, $40
    .byte -8, -9, $14, $40
    .byte 0, 7, $20, $40
    .byte -4, -24, $58, $41
    .byte 4, -24, $58, $01
    L_1B8BBA:
    .byte $7E
    .byte $04
    .byte 0, -17, $16, $00
    .byte -8, -17, $06, $00
    .byte -6, -23, $50, $81
    .byte -14, -23, $50, $41
    L_1B8BCC:
    .byte $7E
    .byte $04
    .byte -8, -17, $16, $40
    .byte 0, -17, $06, $40
    .byte -2, -23, $50, $41
    .byte 6, -23, $50, $01
    L_1B8BDE:
    .byte $7E
    .byte $03
    .byte 0, -9, $30, $00
    .byte -10, -23, $52, $41
    .byte -2, -23, $52, $81
    L_1B8BEC:
    .byte $7E
    .byte $03
    .byte 0, -9, $30, $40
    .byte -10, -23, $52, $41
    .byte -2, -23, $52, $81
    L_1B8BFA:
    .byte $7E
    .byte $03
    .byte -8, -9, $30, $00
    .byte 2, -23, $52, $01
    .byte -6, -23, $52, $C1
    L_1B8C08:
    .byte $7E
    .byte $03
    .byte -8, -9, $30, $40
    .byte 2, -23, $52, $01
    .byte -6, -23, $52, $C1
    L_1B8C16:
    .byte $96
    .byte $04
    .byte -1, -25, $40, $81
    .byte -9, -25, $40, $41
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00
    L_1B8C28:
    .byte $96
    .byte $04
    .byte -7, -25, $40, $C1
    .byte 1, -25, $40, $01
    .byte 0, -9, $04, $40
    .byte -8, -9, $14, $40
    L_1B8C3A:
    .byte $96
    .byte $04
    .byte -15, -23, $42, $41
    .byte -7, -23, $42, $81
    .byte -8, -8, $06, $00
    .byte 0, -8, $16, $00
    L_1B8C4C:
    .byte $96
    .byte $04
    .byte 7, -23, $42, $01
    .byte -1, -23, $42, $C1
    .byte 0, -8, $06, $40
    .byte -8, -8, $16, $40
    L_1B8C5E:
    .byte $96
    .byte $04
    .byte -21, -22, $44, $41
    .byte -13, -22, $44, $81
    .byte 0, -9, $18, $00
    .byte -8, -9, $08, $00
    L_1B8C70:
    .byte $96
    .byte $04
    .byte 13, -22, $44, $01
    .byte 5, -22, $44, $C1
    .byte -8, -9, $18, $40
    .byte 0, -9, $08, $40
    L_1B8C82:
    .byte $8A
    .byte $05
    .byte -8, -9, $0A, $00
    .byte 0, -9, $1A, $00
    .byte -8, 7, $30, $00
    .byte 9, -16, $48, $01
    .byte 1, -16, $48, $C1
    L_1B8C98:
    .byte $8A
    .byte $05
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1A, $40
    .byte 0, 7, $30, $40
    .byte -17, -16, $48, $41
    .byte -9, -16, $48, $81
    L_1B8CAE:
    .byte $8A
    .byte $03
    .byte -7, -11, $0C, $00
    .byte 1, -11, $1C, $00
    .byte 3, -13, $48, $01
    L_1B8CBC:
    .byte $8A
    .byte $03
    .byte -1, -11, $0C, $40
    .byte -9, -11, $1C, $40
    .byte -11, -13, $48, $41
    L_1B8CCA:
    .byte $8A
    .byte $05
    .byte -8, -9, $0E, $00
    .byte 0, -9, $1E, $00
    .byte -6, 7, $30, $00
    .byte 2, -18, $58, $01
    .byte -6, -18, $58, $41
    L_1B8CE0:
    .byte $8A
    .byte $05
    .byte 0, -9, $0E, $40
    .byte -8, -9, $1E, $40
    .byte -2, 7, $30, $40
    .byte -10, -18, $58, $41
    .byte -2, -18, $58, $01
    L_1B8CF6:
    .byte $8A
    .byte $04
    .byte -7, -11, $0C, $00
    .byte 1, -11, $1C, $00
    .byte 6, -23, $46, $01
    .byte -2, -23, $46, $C1
    L_1B8D08:
    .byte $8A
    .byte $04
    .byte -1, -11, $0C, $40
    .byte -9, -11, $1C, $40
    .byte -14, -23, $46, $41
    .byte -6, -23, $46, $81
    L_1B8D1A:
    .byte $8A
    .byte $04
    .byte 0, -9, $18, $00
    .byte -8, -9, $08, $00
    .byte -13, -14, $48, $81
    .byte -21, -14, $48, $41
    L_1B8D2C:
    .byte $8A
    .byte $04
    .byte 0, -9, $08, $40
    .byte -8, -9, $18, $40
    .byte 5, -15, $48, $C1
    .byte 13, -15, $48, $01
    L_1B8D3E:
    .byte $96
    .byte $04
    .byte -5, -25, $40, $01
    .byte -13, -25, $40, $41
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1B8D50:
    .byte $96
    .byte $04
    .byte -3, -25, $40, $41
    .byte 5, -25, $40, $01
    .byte 0, -9, $00, $40
    .byte -8, -9, $10, $40
    L_1B8D62:
    .byte $7E
    .byte $04
    .byte 0, -9, $1E, $00
    .byte -8, -9, $0E, $00
    .byte -4, 5, $52, $41
    .byte 4, 5, $52, $81
    L_1B8D74:
    .byte $7E
    .byte $04
    .byte -8, -9, $1E, $40
    .byte 0, -9, $0E, $40
    .byte -4, 5, $52, $01
    .byte -12, 5, $52, $C1
    L_1B8D86:
    .byte $7E
    .byte $04
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    .byte -6, -15, $50, $81
    .byte -14, -15, $50, $41
    L_1B8D98:
    .byte $7E
    .byte $04
    .byte -8, -9, $16, $40
    .byte 0, -9, $06, $40
    .byte -2, -15, $50, $41
    .byte 6, -15, $50, $01
    L_1B8DAA:
    .byte $7E
    .byte $04
    .byte 0, -7, $18, $00
    .byte -8, -7, $08, $00
    .byte -12, -13, $52, $81
    .byte -20, -13, $52, $41
    L_1B8DBC:
    .byte $7E
    .byte $04
    .byte 0, -7, $1A, $00
    .byte -8, -7, $0A, $00
    .byte 4, -18, $50, $01
    .byte -4, -18, $50, $41
    L_1B8DCE:
    .byte $7E
    .byte $04
    .byte -8, -7, $1A, $40
    .byte 0, -7, $0A, $40
    .byte -12, -18, $50, $41
    .byte -4, -18, $50, $01
    L_1B8DE0:
    .byte $7E
    .byte $04
    .byte -8, -7, $18, $40
    .byte 0, -7, $08, $40
    .byte 4, -13, $52, $C1
    .byte 12, -13, $52, $01
    L_1B8DF2:
    .byte $7E
    .byte $04
    .byte -8, -6, $0C, $00
    .byte 0, -6, $1C, $00
    .byte -11, -10, $52, $81
    .byte -19, -10, $52, $41
    L_1B8E04:
    .byte $7E
    .byte $04
    .byte -8, -6, $0C, $00
    .byte 0, -6, $1C, $00
    .byte -1, -19, $52, $81
    .byte -9, -19, $52, $41
    L_1B8E16:
    .byte $7E
    .byte $04
    .byte 0, -6, $0C, $40
    .byte -8, -6, $1C, $40
    .byte -7, -19, $52, $C1
    .byte 1, -19, $52, $01
    L_1B8E28:
    .byte $7E
    .byte $04
    .byte 0, -6, $0C, $40
    .byte -8, -6, $1C, $40
    .byte 3, -10, $52, $C1
    .byte 11, -10, $52, $01
    L_1B8E3A:
    .byte $96
    .byte $04
    .byte -12, -13, $42, $01
    .byte -20, -13, $42, $C1
    .byte -8, -9, $24, $40
    .byte 0, -9, $0A, $00
    L_1B8E4C:
    .byte $96
    .byte $04
    .byte 4, -13, $42, $41
    .byte 12, -13, $42, $81
    .byte 0, -9, $24, $00
    .byte -8, -9, $0A, $40
    L_1B8E5E:
    .byte $96
    .byte $04
    .byte 15, -2, $46, $81
    .byte 7, -2, $46, $41
    .byte -8, -9, $30, $00
    .byte 0, -9, $3E, $00
    L_1B8E70:
    .byte $96
    .byte $04
    .byte -23, -2, $46, $C1
    .byte -15, -2, $46, $01
    .byte 0, -9, $30, $40
    .byte -8, -9, $3E, $40
    L_1B8E82:
    .byte $96
    .byte $04
    .byte -21, -22, $44, $41
    .byte -13, -22, $44, $81
    .byte 0, -9, $18, $00
    .byte -8, -9, $08, $00
    L_1B8E94:
    .byte $96
    .byte $04
    .byte 13, -22, $44, $01
    .byte 5, -22, $44, $C1
    .byte -8, -9, $18, $40
    .byte 0, -9, $08, $40
    L_1B8EA6:
    .byte $96
    .byte $04
    .byte -25, -16, $46, $41
    .byte -17, -16, $46, $81
    .byte 0, -9, $18, $00
    .byte -8, -9, $08, $00
    L_1B8EB8:
    .byte $96
    .byte $04
    .byte 17, -16, $46, $01
    .byte 9, -16, $46, $C1
    .byte -8, -9, $18, $40
    .byte 0, -9, $08, $40
    L_1B8ECA:
    .byte $96
    .byte $04
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00
    .byte -14, -26, $42, $41
    .byte -6, -26, $42, $81
    L_1B8EDC:
    .byte $96
    .byte $04
    .byte 0, -9, $04, $40
    .byte -8, -9, $14, $40
    .byte 6, -26, $42, $01
    .byte -2, -26, $42, $C1
    L_1B8EEE:
    .byte $96
    .byte $04
    .byte -8, -9, $20, $00
    .byte 0, -9, $22, $00
    .byte 6, -26, $42, $01
    .byte -2, -26, $42, $C1
    L_1B8F00:
    .byte $96
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $22, $40
    .byte -14, -26, $42, $41
    .byte -6, -26, $42, $81
    L_1B8F12:
    .byte $96
    .byte $04
    .byte -8, -9, $20, $00
    .byte 0, -9, $22, $00
    .byte 13, -21, $44, $01
    .byte 5, -21, $44, $C1
    L_1B8F24:
    .byte $96
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $22, $40
    .byte -21, -21, $44, $41
    .byte -13, -21, $44, $81
    L_1B8F36:
    .byte $96
    .byte $04
    .byte -8, -9, $20, $00
    .byte 0, -9, $24, $00
    .byte 9, -12, $46, $C1
    .byte 17, -12, $46, $01
    L_1B8F48:
    .byte $96
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $24, $40
    .byte -17, -12, $46, $81
    .byte -25, -12, $46, $41
    L_1B8F5A:
    .byte $96
    .byte $04
    .byte 17, 0, $46, $81
    .byte 9, 0, $46, $41
    .byte -6, -9, $30, $00
    .byte 2, -9, $3E, $00
    L_1B8F6C:
    .byte $96
    .byte $04
    .byte -21, 0, $46, $C1
    .byte -13, 0, $46, $01
    .byte 2, -9, $30, $40
    .byte -6, -9, $3E, $40
    L_1B8F7E:
    .byte $96
    .byte $04
    .byte 15, -2, $46, $81
    .byte 7, -2, $46, $41
    .byte -8, -9, $30, $00
    .byte 0, -9, $3E, $00
    L_1B8F90:
    .byte $96
    .byte $04
    .byte -23, -2, $46, $C1
    .byte -15, -2, $46, $01
    .byte 0, -9, $30, $40
    .byte -8, -9, $3E, $40
    L_1B8FA2:
    .byte $96
    .byte $04
    .byte 6, -25, $42, $01
    .byte -2, -25, $42, $C1
    .byte 0, -9, $36, $00
    .byte -8, -9, $34, $00
    L_1B8FB4:
    .byte $96
    .byte $04
    .byte -14, -25, $42, $41
    .byte -6, -25, $42, $81
    .byte -8, -9, $36, $40
    .byte 0, -9, $34, $40
    L_1B8FC6:
    .byte $96
    .byte $04
    .byte 7, -16, $46, $C1
    .byte 15, -16, $46, $01
    .byte 0, -9, $36, $00
    .byte -8, -9, $34, $00
    L_1B8FD8:
    .byte $96
    .byte $04
    .byte -15, -16, $46, $81
    .byte -23, -16, $46, $41
    .byte -8, -9, $36, $40
    .byte 0, -9, $34, $40
    L_1B8FEA:
    .byte $96
    .byte $04
    .byte 7, -2, $46, $41
    .byte 15, -2, $46, $81
    .byte 0, -9, $3A, $00
    .byte -8, -9, $38, $00
    L_1B8FFC:
    .byte $96
    .byte $04
    .byte -15, -2, $46, $01
    .byte -23, -2, $46, $C1
    .byte -8, -9, $3A, $40
    .byte 0, -9, $38, $40
    L_1B900E:
    .byte $96
    .byte $04
    .byte 6, 6, $42, $81
    .byte -2, 6, $42, $41
    .byte 0, -9, $3A, $00
    .byte -8, -9, $38, $00
    L_1B9020:
    .byte $96
    .byte $04
    .byte -14, 6, $42, $C1
    .byte -6, 6, $42, $01
    .byte -8, -9, $3A, $40
    .byte 0, -9, $38, $40
    L_1B9032:
    .byte $96
    .byte $04
    .byte -14, 6, $42, $C1
    .byte -6, 6, $42, $01
    .byte 0, -9, $34, $C0
    .byte -8, -9, $36, $C0
    L_1B9044:
    .byte $96
    .byte $04
    .byte 6, 6, $42, $81
    .byte -2, 6, $42, $41
    .byte -8, -9, $34, $80
    .byte 0, -9, $36, $80
    L_1B9056:
    .byte $96
    .byte $04
    .byte -23, -3, $46, $C1
    .byte -15, -3, $46, $01
    .byte 0, -9, $34, $C0
    .byte -8, -9, $36, $C0
    L_1B9068:
    .byte $96
    .byte $04
    .byte 15, -3, $46, $81
    .byte 7, -3, $46, $41
    .byte -8, -9, $34, $80
    .byte 0, -9, $36, $80
    L_1B907A:
    .byte $96
    .byte $04
    .byte -23, -16, $46, $41
    .byte -15, -16, $46, $81
    .byte 0, -9, $38, $C0
    .byte -8, -9, $3A, $C0
    L_1B908C:
    .byte $96
    .byte $04
    .byte 15, -16, $46, $01
    .byte 7, -16, $46, $C1
    .byte -8, -9, $38, $80
    .byte 0, -9, $3A, $80
    L_1B909E:
    .byte $96
    .byte $04
    .byte -7, -24, $42, $81
    .byte -15, -24, $42, $41
    .byte 0, -9, $38, $C0
    .byte -8, -9, $3A, $C0
    L_1B90B0:
    .byte $96
    .byte $04
    .byte -1, -24, $42, $C1
    .byte 7, -24, $42, $01
    .byte -8, -9, $38, $80
    .byte 0, -9, $3A, $80
    L_1B90C2:
    .byte $C6
    .byte $04
    .byte 0, -9, $5E, $00
    .byte -8, -9, $4E, $00
    .byte -5, -24, $52, $01
    .byte -13, -24, $52, $41
    L_1B90D4:
    .byte $C6
    .byte $04
    .byte -8, -9, $5E, $40
    .byte 0, -9, $4E, $40
    .byte -3, -24, $52, $41
    .byte 5, -24, $52, $01
    L_1B90E6:
    .byte $C6
    .byte $04
    .byte 0, -9, $4C, $00
    .byte -8, -9, $4E, $00
    .byte -5, -24, $52, $01
    .byte -13, -24, $52, $41
    L_1B90F8:
    .byte $C6
    .byte $04
    .byte -8, -9, $4C, $40
    .byte 0, -9, $4E, $40
    .byte -3, -24, $52, $41
    .byte 5, -24, $52, $01
    L_1B910A:
    .byte $C6
    .byte $06
    .byte -8, -1, $2E, $00
    .byte -8, -17, $2C, $00
    .byte 0, -1, $3E, $00
    .byte 0, -17, $3C, $00
    .byte -14, -27, $52, $41
    .byte -6, -27, $52, $01
    L_1B9124:
    .byte $C6
    .byte $06
    .byte 0, -1, $2E, $40
    .byte 0, -17, $2C, $40
    .byte -8, -1, $3E, $40
    .byte -8, -17, $3C, $40
    .byte 6, -27, $52, $01
    .byte -2, -27, $52, $41
    L_1B913E:
    .byte $7E
    .byte $08
    .byte 4, -1, $5E, $00
    .byte -4, -1, $4E, $00
    .byte -12, -1, $3E, $00
    .byte 4, -17, $58, $00
    .byte -4, -17, $38, $00
    .byte -12, -17, $3C, $00
    .byte -22, -28, $52, $41
    .byte -14, -28, $52, $81
    L_1B9160:
    .byte $7E
    .byte $08
    .byte -12, -1, $5E, $40
    .byte -4, -1, $4E, $40
    .byte 4, -1, $3E, $40
    .byte -12, -17, $58, $40
    .byte -4, -17, $38, $40
    .byte 4, -17, $3C, $40
    .byte 14, -28, $52, $01
    .byte 6, -28, $52, $C1
    L_1B9182:
    .byte $7E
    .byte $08
    .byte 4, -2, $5E, $00
    .byte -4, -2, $4E, $00
    .byte -12, -2, $3E, $00
    .byte 4, -18, $5C, $00
    .byte -4, -18, $4C, $00
    .byte -12, -18, $3C, $00
    .byte -7, -31, $50, $01
    .byte -15, -31, $50, $41
    L_1B91A4:
    .byte $7E
    .byte $08
    .byte -12, -2, $5E, $40
    .byte -4, -2, $4E, $40
    .byte 4, -2, $3E, $40
    .byte -12, -18, $5C, $40
    .byte -4, -18, $4C, $40
    .byte 4, -18, $3C, $40
    .byte -1, -31, $50, $41
    .byte 7, -31, $50, $01
    L_1B91C6:
    .byte $7E
    .byte $08
    .byte 4, 0, $5E, $00
    .byte -4, 0, $4E, $00
    .byte -12, 0, $3E, $00
    .byte 4, -16, $3A, $00
    .byte -4, -16, $4C, $00
    .byte -12, -16, $3C, $00
    .byte -7, -29, $50, $01
    .byte -15, -29, $50, $41
    L_1B91E8:
    .byte $7E
    .byte $08
    .byte -12, 0, $5E, $40
    .byte -4, 0, $4E, $40
    .byte 4, 0, $3E, $40
    .byte -12, -16, $3A, $40
    .byte -4, -16, $4C, $40
    .byte 4, -16, $3C, $40
    .byte -1, -29, $50, $41
    .byte 7, -29, $50, $01
    L_1B920A:
    .byte $7E
    .byte $04
    .byte 0, -9, $42, $00
    .byte -8, -9, $44, $00
    .byte 4, -24, $50, $01
    .byte -4, -24, $50, $41
    L_1B921C:
    .byte $7E
    .byte $04
    .byte 0, -9, $40, $40
    .byte -8, -9, $40, $00
    .byte 4, -22, $50, $01
    .byte -4, -22, $50, $41
    L_1B922E:
    .byte $7E
    .byte $04
    .byte 0, -9, $44, $40
    .byte -8, -9, $42, $40
    .byte 6, -20, $50, $01
    .byte -2, -20, $50, $41
    L_1B9240:
    .byte $7E
    .byte $05
    .byte -4, -9, $60, $40
    .byte 4, -9, $54, $40
    .byte -12, -9, $54, $00
    .byte 3, -24, $50, $01
    .byte -5, -24, $50, $41
    L_1B9256:
    .byte $7E
    .byte $04
    .byte 4, 1, $50, $81
    .byte -4, 1, $50, $41
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1B9268:
    .byte $7E
    .byte $05
    .byte 4, 3, $50, $81
    .byte -4, 3, $50, $41
    .byte 3, -9, $02, $40
    .byte -12, -9, $02, $00
    .byte -4, -9, $12, $00
    L_1B927E:
    .byte $7E
    .byte $04
    .byte 4, 0, $50, $81
    .byte -4, 0, $50, $41
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1B9290:
    .byte $7E
    .byte $04
    .byte -18, 1, $52, $C1
    .byte -10, 1, $52, $01
    .byte 0, -9, $22, $00
    .byte -8, -9, $28, $00
    L_1B92A2:
    .byte $7E
    .byte $04
    .byte 10, 1, $52, $81
    .byte 2, 1, $52, $41
    .byte -8, -9, $22, $40
    .byte 0, -9, $28, $40
    L_1B92B4:
    .byte $7E
    .byte $04
    .byte -19, 2, $52, $C1
    .byte -11, 2, $52, $01
    .byte 0, -9, $26, $00
    .byte -8, -9, $2C, $00
    L_1B92C6:
    .byte $7E
    .byte $04
    .byte 11, 2, $52, $81
    .byte 3, 2, $52, $41
    .byte -8, -9, $26, $40
    .byte 0, -9, $2C, $40
    L_1B92D8:
    .byte $7E
    .byte $04
    .byte -18, 1, $52, $C1
    .byte -10, 0, $52, $01
    .byte 0, -9, $2A, $00
    .byte -8, -9, $28, $00
    L_1B92EA:
    .byte $7E
    .byte $04
    .byte 10, 1, $52, $81
    .byte 2, 0, $52, $41
    .byte -8, -9, $2A, $40
    .byte 0, -9, $28, $40
    L_1B92FC:
    .byte $7E
    .byte $04
    .byte -19, 2, $52, $C1
    .byte -11, 2, $52, $01
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1B930E:
    .byte $7E
    .byte $04
    .byte 11, 2, $52, $81
    .byte 3, 2, $52, $41
    .byte -8, -9, $2E, $40
    .byte 0, -9, $2C, $40

L_1B9320:
    .addr L_1B9404
    .addr L_1B9416
    .addr L_1B9428
    .addr L_1B943A
    .addr L_1B944C
    .addr L_1B945E
    .addr L_1B9470
    .addr L_1B9482
    .addr L_1B9494
    .addr L_1B94A6
    .addr L_1B94B8
    .addr L_1B94CA
    .addr L_1B94DC
    .addr L_1B94EE
    .addr L_1B9500
    .addr L_1B9512
    .addr L_1B9524
    .addr L_1B9536
    .addr L_1B9548
    .addr L_1B955A
    .addr L_1B956C
    .addr L_1B9582
    .addr L_1B9598
    .addr L_1B95AE
    .addr L_1B95C4
    .addr L_1B95D6
    .addr L_1B95E8
    .addr L_1B95F6
    .addr L_1B9604
    .addr L_1B9612
    .addr L_1B9620
    .addr L_1B9632
    .addr L_1B9644
    .addr L_1B9656
    .addr L_1B9668
    .addr L_1B967A
    .addr L_1B968C
    .addr L_1B96A2
    .addr L_1B96B8
    .addr L_1B96CA
    .addr L_1B96DC
    .addr L_1B96F2
    .addr L_1B9708
    .addr L_1B971A
    .addr L_1B9708
    .addr L_1B971A
    .addr L_1B972C
    .addr L_1B973E
    .addr L_1B972C
    .addr L_1B973E
    .addr L_1B9750
    .addr L_1B9762
    .addr L_1B9774
    .addr L_1B97AA
    .addr L_1B9798
    .addr L_1B9786
    .addr L_1B97BC
    .addr L_1B97CE
    .addr L_1B97E0
    .addr L_1B97F2
    .addr L_1B9804
    .addr L_1B9816
    .addr L_1B9828
    .addr L_1B983A
    .addr L_1B984C
    .addr L_1B985E
    .addr L_1B9870
    .addr L_1B9882
    .addr L_1B9894
    .addr L_1B98A6
    .addr L_1B98B8
    .addr L_1B98CA
    .addr L_1B98DC
    .addr L_1B98EE
    .addr L_1B9900
    .addr L_1B9912
    .addr L_1B9924
    .addr L_1B9936
    .addr L_1B9948
    .addr L_1B995A
    .addr L_1B996C
    .addr L_1B997E
    .addr L_1B9B5E
    .addr L_1B9B70
    .addr L_1B9B82
    .addr L_1B9B94
    .addr L_1B9BA6
    .addr L_1B9BB8
    .addr L_1B9BCA
    .addr L_1B9BDC
    .addr L_1B9B24
    .addr L_1B9B24
    .addr L_1B9B36
    .addr L_1B9B36
    .addr L_1B9B4C
    .addr L_1B9B4C
    .addr L_1B97BC
    .addr L_1B97CE
    .addr L_1B9990
    .addr L_1B99A2
    .addr L_1B99B4
    .addr L_1B99C6
    .addr L_1B99D8
    .addr L_1B99F2
    .addr L_1B9A0C
    .addr L_1B9A2E
    .addr L_1B9A50
    .addr L_1B9A72
    .addr L_1B9A94
    .addr L_1B9AB6
    .addr L_1B9AD8
    .addr L_1B9AFC
    .addr L_1B9AEA
    .addr L_1B9B0E

    L_1B9404:
    .byte $96
    .byte $04
    .byte -16, 4, $60, $C1
    .byte -24, 7, $62, $C1
    .byte 0, -9, $20, $40
    .byte -8, -9, $24, $40
    L_1B9416:
    .byte $96
    .byte $04
    .byte 8, 4, $60, $81
    .byte 16, 7, $62, $81
    .byte -8, -9, $20, $00
    .byte 0, -9, $24, $00
    L_1B9428:
    .byte $96
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $24, $40
    .byte -15, -10, $32, $01
    .byte -23, -10, $5C, $01
    L_1B943A:
    .byte $96
    .byte $04
    .byte -8, -9, $20, $00
    .byte 0, -9, $24, $00
    .byte 7, -10, $32, $41
    .byte 15, -10, $5C, $41
    L_1B944C:
    .byte $96
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $22, $40
    .byte -22, -25, $62, $41
    .byte -14, -22, $60, $41
    L_1B945E:
    .byte $96
    .byte $04
    .byte -8, -9, $20, $00
    .byte 0, -9, $22, $00
    .byte 14, -25, $62, $01
    .byte 6, -22, $60, $01
    L_1B9470:
    .byte $96
    .byte $04
    .byte 0, -9, $20, $40
    .byte -8, -9, $22, $40
    .byte -4, -24, $4E, $41
    .byte -11, -24, $4E, $01
    L_1B9482:
    .byte $96
    .byte $04
    .byte -8, -9, $20, $00
    .byte 0, -9, $22, $00
    .byte -4, -24, $4E, $01
    .byte 3, -24, $4E, $41
    L_1B9494:
    .byte $96
    .byte $04
    .byte 4, -25, $4E, $41
    .byte -3, -25, $4E, $01
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1B94A6:
    .byte $96
    .byte $04
    .byte -12, -25, $4E, $01
    .byte -5, -25, $4E, $41
    .byte -8, -9, $2E, $40
    .byte 0, -9, $2C, $40
    L_1B94B8:
    .byte $96
    .byte $04
    .byte 4, -29, $3C, $41
    .byte -4, -29, $3C, $01
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1B94CA:
    .byte $96
    .byte $04
    .byte -12, -29, $3C, $01
    .byte -4, -29, $3C, $41
    .byte -8, -9, $2E, $40
    .byte 0, -9, $2C, $40
    L_1B94DC:
    .byte $96
    .byte $04
    .byte 4, -25, $4C, $41
    .byte -4, -25, $4C, $01
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1B94EE:
    .byte $96
    .byte $04
    .byte -12, -25, $4C, $01
    .byte -4, -25, $4C, $41
    .byte -8, -9, $2E, $40
    .byte 0, -9, $2C, $40
    L_1B9500:
    .byte $96
    .byte $04
    .byte -3, -25, $4C, $41
    .byte -11, -25, $4C, $01
    .byte -8, -9, $1A, $00
    .byte 0, -9, $12, $00
    L_1B9512:
    .byte $96
    .byte $04
    .byte -5, -25, $4C, $01
    .byte 3, -25, $4C, $41
    .byte 0, -9, $1A, $40
    .byte -8, -9, $12, $40
    L_1B9524:
    .byte $8A
    .byte $04
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    .byte -12, -25, $56, $41
    .byte -4, -25, $56, $01
    L_1B9536:
    .byte $8A
    .byte $04
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    .byte 4, -25, $56, $01
    .byte -4, -25, $56, $41
    L_1B9548:
    .byte $8A
    .byte $04
    .byte -8, -9, $10, $40
    .byte 0, -9, $00, $40
    .byte -4, -25, $56, $01
    .byte -12, -25, $56, $41
    L_1B955A:
    .byte $8A
    .byte $04
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    .byte 4, -25, $56, $01
    .byte -4, -25, $56, $41
    L_1B956C:
    .byte $8A
    .byte $05
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    .byte -8, 7, $20, $00
    .byte -4, -25, $56, $01
    .byte -12, -25, $56, $41
    L_1B9582:
    .byte $8A
    .byte $05
    .byte -8, -9, $06, $00
    .byte 0, -9, $16, $00
    .byte -8, 7, $20, $00
    .byte -4, -25, $56, $41
    .byte 4, -25, $56, $01
    L_1B9598:
    .byte $8A
    .byte $05
    .byte 0, -9, $06, $40
    .byte -8, -9, $16, $40
    .byte 0, 7, $20, $40
    .byte -4, -25, $56, $01
    .byte -12, -25, $56, $41
    L_1B95AE:
    .byte $8A
    .byte $05
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    .byte 0, 7, $20, $40
    .byte -4, -25, $56, $41
    .byte 4, -25, $56, $01
    L_1B95C4:
    .byte $7E
    .byte $04
    .byte 0, -17, $16, $00
    .byte -8, -17, $06, $00
    .byte -6, -23, $62, $41
    .byte -14, -23, $62, $01
    L_1B95D6:
    .byte $7E
    .byte $04
    .byte -8, -17, $16, $40
    .byte 0, -17, $06, $40
    .byte -2, -23, $62, $01
    .byte 6, -23, $62, $41
    L_1B95E8:
    .byte $7E
    .byte $03
    .byte 0, -9, $30, $00
    .byte -11, -25, $4A, $01
    .byte -3, -25, $5A, $01
    L_1B95F6:
    .byte $7E
    .byte $03
    .byte 0, -9, $30, $40
    .byte -11, -25, $4A, $01
    .byte -3, -25, $5A, $01
    L_1B9604:
    .byte $7E
    .byte $03
    .byte -8, -9, $30, $00
    .byte 3, -25, $4A, $41
    .byte -5, -25, $5A, $41
    L_1B9612:
    .byte $7E
    .byte $03
    .byte -8, -9, $30, $40
    .byte 3, -25, $4A, $41
    .byte -5, -25, $5A, $41
    L_1B9620:
    .byte $96
    .byte $04
    .byte -2, -25, $4C, $41
    .byte -10, -25, $4C, $01
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1B9632:
    .byte $96
    .byte $04
    .byte -6, -25, $4C, $01
    .byte 2, -25, $4C, $41
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    L_1B9644:
    .byte $96
    .byte $04
    .byte -15, -24, $50, $01
    .byte -7, -24, $52, $01
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    L_1B9656:
    .byte $96
    .byte $04
    .byte 7, -24, $50, $41
    .byte -1, -24, $52, $41
    .byte -8, -9, $16, $40
    .byte 0, -9, $06, $40
    L_1B9668:
    .byte $96
    .byte $04
    .byte -20, -21, $54, $01
    .byte -12, -21, $56, $01
    .byte 0, -9, $18, $00
    .byte -8, -9, $08, $00
    L_1B967A:
    .byte $96
    .byte $04
    .byte 12, -21, $54, $41
    .byte 4, -21, $56, $41
    .byte -8, -9, $18, $40
    .byte 0, -9, $08, $40
    L_1B968C:
    .byte $8A
    .byte $05
    .byte -8, 7, $30, $00
    .byte -8, -9, $0A, $00
    .byte 0, -9, $1A, $00
    .byte -1, -24, $56, $01
    .byte -9, -24, $56, $41
    L_1B96A2:
    .byte $8A
    .byte $05
    .byte 0, 7, $30, $40
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1A, $40
    .byte -7, -24, $56, $41
    .byte 1, -24, $56, $01
    L_1B96B8:
    .byte $8A
    .byte $04
    .byte -7, -11, $0C, $00
    .byte 1, -11, $1C, $00
    .byte -5, -24, $62, $01
    .byte -13, -24, $60, $01
    L_1B96CA:
    .byte $8A
    .byte $04
    .byte -1, -11, $0C, $40
    .byte -9, -11, $1C, $40
    .byte -3, -24, $62, $41
    .byte 5, -24, $60, $41
    L_1B96DC:
    .byte $8A
    .byte $05
    .byte 0, -9, $1E, $00
    .byte -8, -9, $0E, $00
    .byte -6, 7, $30, $00
    .byte -8, -19, $62, $01
    .byte -16, -19, $60, $01
    L_1B96F2:
    .byte $8A
    .byte $05
    .byte -8, -9, $1E, $40
    .byte 0, -9, $0E, $40
    .byte -2, 7, $30, $40
    .byte 0, -19, $62, $41
    .byte 8, -19, $60, $41
    L_1B9708:
    .byte $8A
    .byte $04
    .byte 0, -9, $18, $00
    .byte -8, -9, $08, $00
    .byte -15, -17, $5E, $41
    .byte -23, -17, $5C, $41
    L_1B971A:
    .byte $8A
    .byte $04
    .byte -8, -9, $18, $40
    .byte 0, -9, $08, $40
    .byte 7, -17, $5E, $01
    .byte 15, -17, $5C, $01
    L_1B972C:
    .byte $96
    .byte $04
    .byte -17, -25, $50, $01
    .byte -9, -25, $52, $01
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1B973E:
    .byte $96
    .byte $04
    .byte 9, -25, $50, $41
    .byte 1, -25, $52, $41
    .byte -8, -9, $10, $40
    .byte 0, -9, $00, $40
    L_1B9750:
    .byte $96
    .byte $04
    .byte -10, -24, $4C, $01
    .byte -2, -24, $4C, $41
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    L_1B9762:
    .byte $96
    .byte $04
    .byte 2, -24, $4C, $41
    .byte -6, -24, $4C, $01
    .byte -8, -9, $16, $40
    .byte 0, -9, $06, $40
    L_1B9774:
    .byte $96
    .byte $04
    .byte 4, -25, $50, $41
    .byte -4, -25, $52, $41
    .byte 0, -9, $28, $00
    .byte -8, -9, $26, $00
    L_1B9786:
    .byte $96
    .byte $04
    .byte -12, -25, $50, $01
    .byte -4, -25, $52, $01
    .byte -8, -9, $28, $40
    .byte 0, -9, $26, $40
    L_1B9798:
    .byte $96
    .byte $04
    .byte -17, -23, $50, $01
    .byte -9, -23, $52, $01
    .byte 1, -9, $1C, $00
    .byte -7, -9, $2A, $00
    L_1B97AA:
    .byte $96
    .byte $04
    .byte 11, -23, $50, $41
    .byte 3, -23, $52, $41
    .byte -7, -9, $1C, $40
    .byte 1, -9, $2A, $40
    L_1B97BC:
    .byte $7E
    .byte $04
    .byte 0, -9, $1E, $00
    .byte -8, -9, $0E, $00
    .byte -3, 5, $46, $81
    .byte 5, 8, $56, $81
    L_1B97CE:
    .byte $7E
    .byte $04
    .byte -8, -9, $1E, $40
    .byte 0, -9, $0E, $40
    .byte -5, 5, $46, $C1
    .byte -13, 8, $56, $C1
    L_1B97E0:
    .byte $7E
    .byte $04
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    .byte -6, -15, $62, $41
    .byte -14, -15, $62, $01
    L_1B97F2:
    .byte $7E
    .byte $04
    .byte -8, -9, $16, $40
    .byte 0, -9, $06, $40
    .byte -2, -15, $62, $01
    .byte 6, -15, $62, $41
    L_1B9804:
    .byte $7E
    .byte $04
    .byte 0, -7, $18, $00
    .byte -8, -7, $08, $00
    .byte -7, -12, $62, $41
    .byte -15, -12, $62, $01
    L_1B9816:
    .byte $7E
    .byte $04
    .byte 0, -7, $1A, $00
    .byte -8, -7, $0A, $00
    .byte 4, -17, $62, $41
    .byte -4, -17, $62, $01
    L_1B9828:
    .byte $7E
    .byte $04
    .byte -8, -7, $1A, $40
    .byte 0, -7, $0A, $40
    .byte -12, -17, $62, $01
    .byte -4, -17, $62, $41
    L_1B983A:
    .byte $7E
    .byte $04
    .byte -8, -6, $18, $40
    .byte 0, -6, $08, $40
    .byte -1, -11, $62, $01
    .byte 7, -11, $62, $41
    L_1B984C:
    .byte $7E
    .byte $04
    .byte -8, -6, $0C, $00
    .byte 0, -6, $1C, $00
    .byte -7, -12, $5A, $01
    .byte -15, -12, $4A, $01
    L_1B985E:
    .byte $7E
    .byte $04
    .byte -8, -6, $0C, $00
    .byte 0, -6, $1C, $00
    .byte 4, -22, $62, $41
    .byte -4, -22, $62, $01
    L_1B9870:
    .byte $7E
    .byte $04
    .byte 0, -6, $0C, $40
    .byte -8, -6, $1C, $40
    .byte -12, -22, $62, $01
    .byte -4, -22, $62, $41
    L_1B9882:
    .byte $7E
    .byte $04
    .byte 0, -6, $0C, $40
    .byte -8, -6, $1C, $40
    .byte -1, -12, $5A, $41
    .byte 7, -12, $4A, $41
    L_1B9894:
    .byte $96
    .byte $04
    .byte -24, -11, $58, $01
    .byte -16, -11, $5A, $01
    .byte 0, -9, $0A, $00
    .byte -8, -9, $24, $40
    L_1B98A6:
    .byte $96
    .byte $04
    .byte 16, -11, $58, $41
    .byte 8, -11, $5A, $41
    .byte -8, -9, $0A, $40
    .byte 0, -9, $24, $00
    L_1B98B8:
    .byte $96
    .byte $04
    .byte -8, -9, $30, $00
    .byte 0, -9, $3E, $00
    .byte 8, 1, $60, $81
    .byte 16, 4, $62, $81
    L_1B98CA:
    .byte $96
    .byte $04
    .byte 0, -9, $30, $40
    .byte -8, -9, $3E, $40
    .byte -16, 1, $60, $C1
    .byte -24, 4, $62, $C1
    L_1B98DC:
    .byte $96
    .byte $04
    .byte -24, -11, $58, $01
    .byte -16, -11, $5A, $01
    .byte 0, -9, $0A, $00
    .byte -8, -9, $24, $40
    L_1B98EE:
    .byte $96
    .byte $04
    .byte 16, -11, $58, $41
    .byte 8, -11, $5A, $41
    .byte -8, -9, $0A, $40
    .byte 0, -9, $24, $00
    L_1B9900:
    .byte $96
    .byte $04
    .byte 24, -4, $5E, $01
    .byte 16, -8, $5C, $01
    .byte -8, -9, $20, $00
    .byte 0, -9, $24, $00
    L_1B9912:
    .byte $96
    .byte $04
    .byte -32, -4, $5E, $41
    .byte -24, -8, $5C, $41
    .byte 0, -9, $20, $40
    .byte -8, -9, $24, $40
    L_1B9924:
    .byte $96
    .byte $04
    .byte 19, -5, $5E, $01
    .byte 11, -9, $5C, $01
    .byte -8, -9, $20, $00
    .byte 0, -9, $24, $00
    L_1B9936:
    .byte $96
    .byte $04
    .byte -27, -5, $5E, $41
    .byte -19, -9, $5C, $41
    .byte 0, -9, $20, $40
    .byte -8, -9, $24, $40
    L_1B9948:
    .byte $96
    .byte $04
    .byte 15, -26, $62, $01
    .byte 7, -23, $60, $01
    .byte -8, -9, $20, $00
    .byte 0, -9, $22, $00
    L_1B995A:
    .byte $96
    .byte $04
    .byte -23, -26, $62, $41
    .byte -15, -23, $60, $41
    .byte 0, -9, $20, $40
    .byte -8, -9, $22, $40
    L_1B996C:
    .byte $96
    .byte $04
    .byte -2, -25, $3C, $41
    .byte -10, -25, $3C, $01
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1B997E:
    .byte $96
    .byte $04
    .byte -6, -25, $3C, $01
    .byte 2, -25, $3C, $41
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    L_1B9990:
    .byte $C6
    .byte $04
    .byte 0, -9, $5E, $00
    .byte -8, -9, $4E, $00
    .byte -4, -24, $54, $41
    .byte -12, -24, $54, $01
    L_1B99A2:
    .byte $C6
    .byte $04
    .byte -8, -9, $5E, $40
    .byte 0, -9, $4E, $40
    .byte -4, -24, $54, $01
    .byte 4, -24, $54, $41
    L_1B99B4:
    .byte $C6
    .byte $04
    .byte 0, -9, $4C, $00
    .byte -8, -9, $4E, $00
    .byte -4, -24, $54, $41
    .byte -12, -24, $54, $01
    L_1B99C6:
    .byte $C6
    .byte $04
    .byte -8, -9, $4C, $40
    .byte 0, -9, $4E, $40
    .byte -4, -24, $54, $01
    .byte 4, -24, $54, $41
    L_1B99D8:
    .byte $C6
    .byte $06
    .byte -8, -1, $2E, $00
    .byte -8, -17, $2C, $00
    .byte 0, -1, $3E, $00
    .byte 0, -17, $3C, $00
    .byte -4, -29, $54, $41
    .byte -12, -29, $54, $01
    L_1B99F2:
    .byte $C6
    .byte $06
    .byte 0, -1, $2E, $40
    .byte 0, -17, $2C, $40
    .byte -8, -1, $3E, $40
    .byte -8, -17, $3C, $40
    .byte -4, -29, $54, $01
    .byte 4, -29, $54, $41
    L_1B9A0C:
    .byte $7E
    .byte $08
    .byte 4, -1, $5E, $00
    .byte -4, -1, $4E, $00
    .byte -12, -1, $3E, $00
    .byte 4, -17, $58, $00
    .byte -4, -17, $38, $00
    .byte -12, -17, $3C, $00
    .byte -20, -30, $4A, $01
    .byte -12, -30, $5A, $01
    L_1B9A2E:
    .byte $7E
    .byte $08
    .byte -12, -1, $5E, $40
    .byte -4, -1, $4E, $40
    .byte 4, -1, $3E, $40
    .byte -12, -17, $58, $40
    .byte -4, -17, $38, $40
    .byte 4, -17, $3C, $40
    .byte 12, -30, $4A, $41
    .byte 4, -30, $5A, $41
    L_1B9A50:
    .byte $7E
    .byte $08
    .byte 4, -2, $5E, $00
    .byte -4, -2, $4E, $00
    .byte -12, -2, $3E, $00
    .byte 4, -18, $5C, $00
    .byte -4, -18, $4C, $00
    .byte -12, -18, $3C, $00
    .byte -7, -32, $62, $41
    .byte -15, -32, $62, $01
    L_1B9A72:
    .byte $7E
    .byte $08
    .byte -12, -2, $5E, $40
    .byte -4, -2, $4E, $40
    .byte 4, -2, $3E, $40
    .byte -12, -18, $5C, $40
    .byte -4, -18, $4C, $40
    .byte 4, -18, $3C, $40
    .byte -1, -32, $62, $01
    .byte 7, -32, $62, $41
    L_1B9A94:
    .byte $7E
    .byte $08
    .byte 4, 0, $5E, $00
    .byte -4, 0, $4E, $00
    .byte -12, 0, $3E, $00
    .byte 4, -16, $3A, $00
    .byte -4, -16, $4C, $00
    .byte -12, -16, $3C, $00
    .byte -7, -30, $62, $41
    .byte -15, -30, $62, $01
    L_1B9AB6:
    .byte $7E
    .byte $08
    .byte -12, 0, $5E, $40
    .byte -4, 0, $4E, $40
    .byte 4, 0, $3E, $40
    .byte -12, -16, $3A, $40
    .byte -4, -16, $4C, $40
    .byte 4, -16, $3C, $40
    .byte -1, -30, $62, $01
    .byte 7, -30, $62, $41
    L_1B9AD8:
    .byte $7E
    .byte $04
    .byte 0, -9, $42, $00
    .byte -8, -9, $44, $00
    .byte -3, -25, $62, $01
    .byte 5, -25, $62, $41
    L_1B9AEA:
    .byte $7E
    .byte $04
    .byte 0, -9, $40, $40
    .byte -8, -9, $40, $00
    .byte -3, -23, $62, $01
    .byte 5, -23, $62, $41
    L_1B9AFC:
    .byte $7E
    .byte $04
    .byte 0, -9, $44, $40
    .byte -8, -9, $42, $40
    .byte -2, -21, $62, $01
    .byte 6, -21, $62, $41
    L_1B9B0E:
    .byte $7E
    .byte $05
    .byte -4, -9, $60, $40
    .byte 4, -9, $54, $40
    .byte -12, -9, $54, $00
    .byte -5, -24, $62, $01
    .byte 3, -24, $62, $41
    L_1B9B24:
    .byte $7E
    .byte $04
    .byte 4, 1, $48, $C1
    .byte -4, 1, $48, $81
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1B9B36:
    .byte $7E
    .byte $05
    .byte 4, 3, $48, $C1
    .byte -4, 3, $48, $81
    .byte 3, -9, $02, $40
    .byte -12, -9, $02, $00
    .byte -4, -9, $12, $00
    L_1B9B4C:
    .byte $7E
    .byte $04
    .byte 4, 0, $48, $C1
    .byte -4, 0, $48, $81
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1B9B5E:
    .byte $7E
    .byte $04
    .byte -20, 7, $56, $C1
    .byte -12, 3, $46, $C1
    .byte 0, -9, $22, $00
    .byte -8, -9, $28, $00
    L_1B9B70:
    .byte $7E
    .byte $04
    .byte 12, 7, $56, $81
    .byte 4, 3, $46, $81
    .byte -8, -9, $22, $40
    .byte 0, -9, $28, $40
    L_1B9B82:
    .byte $7E
    .byte $04
    .byte -21, 8, $56, $C1
    .byte -13, 4, $46, $C1
    .byte 0, -9, $26, $00
    .byte -8, -9, $2C, $00
    L_1B9B94:
    .byte $7E
    .byte $04
    .byte 13, 8, $56, $81
    .byte 5, 4, $46, $81
    .byte -8, -9, $26, $40
    .byte 0, -9, $2C, $40
    L_1B9BA6:
    .byte $7E
    .byte $04
    .byte -20, 7, $56, $C1
    .byte -12, 3, $46, $C1
    .byte 0, -9, $2A, $00
    .byte -8, -9, $28, $00
    L_1B9BB8:
    .byte $7E
    .byte $04
    .byte 12, 7, $56, $81
    .byte 4, 3, $46, $81
    .byte -8, -9, $2A, $40
    .byte 0, -9, $28, $40
    L_1B9BCA:
    .byte $7E
    .byte $04
    .byte -22, 8, $56, $C1
    .byte -14, 4, $46, $C1
    .byte 0, -9, $2E, $00
    .byte -8, -9, $2C, $00
    L_1B9BDC:
    .byte $7E
    .byte $04
    .byte 14, 8, $56, $81
    .byte 6, 4, $46, $81
    .byte -8, -9, $2E, $40
    .byte 0, -9, $2C, $40

L_1B9BEE:
    .addr L_1B9C1E
    .addr L_1B9C1E
    .addr L_1B9C28
    .addr L_1B9C64
    .addr L_1B9C32
    .addr L_1B9C5A
    .addr L_1B9C3C
    .addr L_1B9C50
    .addr L_1B9C46
    .addr L_1B9C46
    .addr L_1B9C50
    .addr L_1B9C3C
    .addr L_1B9C5A
    .addr L_1B9C32
    .addr L_1B9C64
    .addr L_1B9C28
    .addr L_1B9C6E
    .addr L_1B9C78
    .addr L_1B9C82
    .addr L_1B9C88
    .addr L_1B9C8E
    .addr L_1B9C98
    .addr L_1B9CA2
    .addr L_1B9CA8

    L_1B9C1E:
    .byte $8C
    .byte $02
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1B9C28:
    .byte $8C
    .byte $02
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1B9C32:
    .byte $8C
    .byte $02
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1B9C3C:
    .byte $8C
    .byte $02
    .byte -8, -9, $02, $80
    .byte 0, -9, $12, $80
    L_1B9C46:
    .byte $8C
    .byte $02
    .byte -8, -9, $00, $80
    .byte 0, -9, $10, $80
    L_1B9C50:
    .byte $8C
    .byte $02
    .byte 0, -9, $02, $C0
    .byte -8, -9, $12, $C0
    L_1B9C5A:
    .byte $8C
    .byte $02
    .byte 0, -9, $04, $C0
    .byte -8, -9, $14, $C0
    L_1B9C64:
    .byte $8C
    .byte $02
    .byte 0, -9, $02, $40
    .byte -8, -9, $12, $40
    L_1B9C6E:
    .byte $8C
    .byte $02
    .byte -8, -9, $06, $80
    .byte 0, -9, $16, $80
    L_1B9C78:
    .byte $8C
    .byte $02
    .byte 0, -9, $06, $C0
    .byte -8, -9, $16, $C0
    L_1B9C82:
    .byte $8C
    .byte $01
    .byte 0, -9, $08, $00
    L_1B9C88:
    .byte $8C
    .byte $01
    .byte 0, -9, $08, $40
    L_1B9C8E:
    .byte $8C
    .byte $02
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    L_1B9C98:
    .byte $8C
    .byte $02
    .byte -8, -9, $16, $40
    .byte 0, -9, $06, $40
    L_1B9CA2:
    .byte $8C
    .byte $01
    .byte -8, -9, $08, $00
    L_1B9CA8:
    .byte $8C
    .byte $01
    .byte -8, -9, $08, $40

L_1B9CAE:
    .addr L_1B9CD6
    .addr L_1B9CE0
    .addr L_1B9CEA
    .addr L_1B9CF4
    .addr L_1B9CFE
    .addr L_1B9D08
    .addr L_1B9D12
    .addr L_1B9D1C
    .addr L_1B9D26
    .addr L_1B9D30
    .addr L_1B9D3A
    .addr L_1B9D48
    .addr L_1B9D56
    .addr L_1B9D60
    .addr L_1B9D6A
    .addr L_1B9D78
    .addr L_1B9D86
    .addr L_1B9D90
    .addr L_1B9D9A
    .addr L_1B9DA4

    L_1B9CD6:
    .byte $80
    .byte $02
    .byte 0, -9, $42, $00
    .byte -8, -9, $40, $00
    L_1B9CE0:
    .byte $80
    .byte $02
    .byte -8, -9, $42, $40
    .byte 0, -9, $40, $40
    L_1B9CEA:
    .byte $80
    .byte $02
    .byte 0, -9, $46, $00
    .byte -8, -9, $44, $00
    L_1B9CF4:
    .byte $80
    .byte $02
    .byte -8, -9, $46, $40
    .byte 0, -9, $44, $40
    L_1B9CFE:
    .byte $80
    .byte $02
    .byte -8, -9, $42, $C0
    .byte 0, -9, $40, $C0
    L_1B9D08:
    .byte $80
    .byte $02
    .byte 0, -9, $42, $80
    .byte -8, -9, $40, $80
    L_1B9D12:
    .byte $80
    .byte $02
    .byte -8, -9, $46, $C0
    .byte 0, -9, $44, $C0
    L_1B9D1C:
    .byte $80
    .byte $02
    .byte 0, -9, $46, $80
    .byte -8, -9, $44, $80
    L_1B9D26:
    .byte $8C
    .byte $02
    .byte 0, -9, $56, $00
    .byte -8, -9, $46, $00
    L_1B9D30:
    .byte $8C
    .byte $02
    .byte -8, -9, $56, $40
    .byte 0, -9, $46, $40
    L_1B9D3A:
    .byte $8C
    .byte $03
    .byte -16, -9, $4E, $01
    .byte 0, -9, $5A, $01
    .byte -8, -9, $4A, $01
    L_1B9D48:
    .byte $8C
    .byte $03
    .byte 8, -9, $4E, $41
    .byte -8, -9, $5A, $41
    .byte 0, -9, $4A, $41
    L_1B9D56:
    .byte $8C
    .byte $02
    .byte -8, -9, $48, $00
    .byte 0, -9, $58, $00
    L_1B9D60:
    .byte $8C
    .byte $02
    .byte 0, -9, $48, $40
    .byte -8, -9, $58, $40
    L_1B9D6A:
    .byte $8C
    .byte $03
    .byte -16, -9, $5E, $01
    .byte -8, -9, $4C, $01
    .byte 0, -9, $5C, $01
    L_1B9D78:
    .byte $8C
    .byte $03
    .byte 8, -9, $5E, $41
    .byte 0, -9, $4C, $41
    .byte -8, -9, $5C, $41
    L_1B9D86:
    .byte $8C
    .byte $02
    .byte -1, -9, $60, $40
    .byte -9, -9, $62, $40
    L_1B9D90:
    .byte $8C
    .byte $02
    .byte 1, -9, $62, $00
    .byte -7, -9, $60, $00
    L_1B9D9A:
    .byte $8C
    .byte $02
    .byte 1, -9, $60, $40
    .byte -7, -9, $62, $40
    L_1B9DA4:
    .byte $8C
    .byte $02
    .byte -1, -9, $62, $00
    .byte -9, -9, $60, $00

L_1B9DAE:
    .addr L_1B9DD2
    .addr L_1B9DDC
    .addr L_1B9DE6
    .addr L_1B9DF4
    .addr L_1B9E02
    .addr L_1B9E18
    .addr L_1B9E18
    .addr L_1B9E02
    .addr L_1B9DE6
    .addr L_1B9DF4
    .addr L_1B9E02
    .addr L_1B9E02
    .addr L_1B9E18
    .addr L_1B9E18
    .addr L_1B9E2E
    .addr L_1B9E2E
    .addr L_1B9E44
    .addr L_1B9E44

    L_1B9DD2:
    .byte $8A
    .byte $02
    .byte 0, -9, $32, $00
    .byte -8, -9, $22, $00
    L_1B9DDC:
    .byte $8A
    .byte $02
    .byte 0, -9, $22, $40
    .byte -8, -9, $32, $40
    L_1B9DE6:
    .byte $8A
    .byte $03
    .byte -12, -9, $4A, $00
    .byte -4, -9, $24, $00
    .byte 4, -9, $34, $00
    L_1B9DF4:
    .byte $8A
    .byte $03
    .byte -12, -9, $34, $40
    .byte -4, -9, $24, $40
    .byte 4, -9, $4A, $40
    L_1B9E02:
    .byte $8A
    .byte $05
    .byte -14, -8, $4C, $00
    .byte 2, -24, $36, $00
    .byte -6, -24, $26, $00
    .byte 2, -8, $38, $00
    .byte -6, -8, $28, $00
    L_1B9E18:
    .byte $8A
    .byte $05
    .byte 5, -8, $4C, $40
    .byte -11, -24, $36, $40
    .byte -3, -24, $26, $40
    .byte -3, -8, $28, $40
    .byte -11, -8, $38, $40
    L_1B9E2E:
    .byte $8A
    .byte $05
    .byte 2, -22, $3A, $00
    .byte -6, -22, $2A, $00
    .byte -14, -6, $4E, $00
    .byte -6, -6, $2C, $00
    .byte 2, -6, $3C, $00
    L_1B9E44:
    .byte $8A
    .byte $05
    .byte 6, -6, $4E, $40
    .byte -10, -22, $3A, $40
    .byte -2, -22, $2A, $40
    .byte -10, -6, $3C, $40
    .byte -2, -6, $2C, $40

L_1B9E5A:
    .addr L_1B9EFA
    .addr L_1B9F18
    .addr L_1B9F04
    .addr L_1B9F0E
    .addr L_1B9F0E
    .addr L_1B9F04
    .addr L_1B9F18
    .addr L_1B9EFA
    .addr L_1B9E82
    .addr L_1B9E8C
    .addr L_1B9E96
    .addr L_1B9EA0
    .addr L_1B9EAA
    .addr L_1B9EB4
    .addr L_1B9EBE
    .addr L_1B9EC8
    .addr L_1B9ED2
    .addr L_1B9EDC
    .addr L_1B9EE6
    .addr L_1B9EF0

    L_1B9E82:
    .byte $92
    .byte $02
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1B9E8C:
    .byte $92
    .byte $02
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1B9E96:
    .byte $92
    .byte $02
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1B9EA0:
    .byte $92
    .byte $02
    .byte 0, -9, $16, $00
    .byte -8, -9, $06, $00
    L_1B9EAA:
    .byte $92
    .byte $02
    .byte 0, -9, $18, $00
    .byte -8, -9, $08, $00
    L_1B9EB4:
    .byte $92
    .byte $02
    .byte -8, -9, $16, $40
    .byte 0, -9, $06, $40
    L_1B9EBE:
    .byte $92
    .byte $02
    .byte 0, -9, $04, $40
    .byte -8, -9, $14, $40
    L_1B9EC8:
    .byte $92
    .byte $02
    .byte 0, -9, $02, $40
    .byte -8, -9, $12, $40
    L_1B9ED2:
    .byte $92
    .byte $02
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    L_1B9EDC:
    .byte $92
    .byte $02
    .byte 0, -9, $1C, $00
    .byte -8, -9, $0C, $00
    L_1B9EE6:
    .byte $92
    .byte $02
    .byte 0, -9, $0C, $40
    .byte -8, -9, $1C, $40
    L_1B9EF0:
    .byte $92
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1A, $40
    L_1B9EFA:
    .byte $92
    .byte $02
    .byte -5, -9, $34, $01
    .byte -13, -9, $24, $01
    L_1B9F04:
    .byte $92
    .byte $02
    .byte -2, -9, $32, $01
    .byte -10, -9, $22, $01
    L_1B9F0E:
    .byte $92
    .byte $02
    .byte -6, -9, $32, $41
    .byte 2, -9, $22, $41
    L_1B9F18:
    .byte $92
    .byte $02
    .byte -3, -9, $34, $41
    .byte 5, -9, $24, $41

L_1B9F22:
    .addr L_1B9F36
    .addr L_1B9F48
    .addr L_1B9F5A
    .addr L_1B9F6C
    .addr L_1B9F7E
    .addr L_1B9F90
    .addr L_1B9F9A
    .addr L_1B9FA4
    .addr L_1B9FAE
    .addr L_1B9FB8

    L_1B9F36:
    .byte $80
    .byte $04
    .byte 13, -20, $B8, $02
    .byte 5, -21, $A8, $02
    .byte 0, -8, $18, $00
    .byte -8, -8, $08, $00
    L_1B9F48:
    .byte $D0
    .byte $04
    .byte 9, -24, $BA, $02
    .byte 1, -24, $AA, $02
    .byte -8, -8, $14, $40
    .byte 0, -8, $04, $40
    L_1B9F5A:
    .byte $EA
    .byte $04
    .byte 9, -8, $B8, $02
    .byte 1, -8, $A8, $02
    .byte -8, -8, $62, $40
    .byte 0, -8, $60, $40
    L_1B9F6C:
    .byte $EA
    .byte $04
    .byte 9, -8, $BA, $02
    .byte 1, -8, $AA, $02
    .byte -8, -8, $62, $40
    .byte 0, -8, $60, $40
    L_1B9F7E:
    .byte $EA
    .byte $04
    .byte 9, -8, $BC, $02
    .byte 1, -8, $AC, $02
    .byte -8, -8, $62, $40
    .byte 0, -8, $60, $40
    L_1B9F90:
    .byte $80
    .byte $02
    .byte -8, -8, $00, $00
    .byte 0, -8, $10, $00
    L_1B9F9A:
    .byte $80
    .byte $02
    .byte 0, -8, $2C, $00
    .byte -8, -8, $2A, $00
    L_1B9FA4:
    .byte $80
    .byte $02
    .byte 0, -8, $32, $C0
    .byte -8, -8, $30, $C0
    L_1B9FAE:
    .byte $80
    .byte $02
    .byte 0, -8, $1E, $00
    .byte -8, -8, $0E, $00
    L_1B9FB8:
    .byte $80
    .byte $02
    .byte -8, -8, $38, $00
    .byte 0, -8, $3A, $00

;garbage???
.byte $10,$04,$80,$00,$00,$00,$84,$00,$04,$01,$0B,$04,$24,$00,$00,$10
.byte $00,$00,$04,$40,$20,$00,$80,$10,$40,$10,$02,$10,$60,$00,$80,$10
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$8A,$01,$40,$00
.byte $80,$00,$20,$40,$04,$10,$00,$00,$00,$04,$00,$40,$00,$00

.segment "PRG1C": absolute

L_1C8000:
    .addr L_1C8002
    L_1C8002:
    .byte $80
    .byte $02
    .byte 0, -9, $48, $40
    .byte -8, -9, $4A, $40

L_1C800C:
    .addr L_1C8030
    .addr L_1C803E
    .addr L_1C804C
    .addr L_1C805A
    .addr L_1C8068
    .addr L_1C8076
    .addr L_1C8084
    .addr L_1C8092
    .addr L_1C80AE
    .addr L_1C80A0
    .addr L_1C80CA
    .addr L_1C80BC
    .addr L_1C80D8
    .addr L_1C80EA
    .addr L_1C80FC
    .addr L_1C810A
    .addr L_1C8118
    .addr L_1C8126

    L_1C8030:
    .byte $C6
    .byte $03
    .byte -12, -9, $10, $40
    .byte 4, -9, $10, $00
    .byte -4, -9, $00, $00
    L_1C803E:
    .byte $C6
    .byte $03
    .byte 4, -9, $10, $00
    .byte -12, -9, $10, $40
    .byte -4, -9, $00, $40
    L_1C804C:
    .byte $C6
    .byte $03
    .byte 4, -9, $18, $00
    .byte -12, -9, $02, $00
    .byte -4, -9, $12, $00
    L_1C805A:
    .byte $C6
    .byte $03
    .byte -12, -9, $18, $40
    .byte 4, -9, $02, $40
    .byte -4, -9, $12, $40
    L_1C8068:
    .byte $C6
    .byte $03
    .byte 4, -9, $0A, $00
    .byte -12, -9, $04, $00
    .byte -4, -9, $14, $00
    L_1C8076:
    .byte $C6
    .byte $03
    .byte -12, -9, $18, $40
    .byte 4, -9, $02, $40
    .byte -4, -9, $12, $40
    L_1C8084:
    .byte $C6
    .byte $03
    .byte -12, -9, $18, $40
    .byte 4, -9, $02, $40
    .byte -4, -9, $20, $00
    L_1C8092:
    .byte $C6
    .byte $03
    .byte 4, -9, $18, $00
    .byte -12, -9, $02, $00
    .byte -4, -9, $20, $40
    L_1C80A0:
    .byte $C6
    .byte $03
    .byte 4, -9, $1A, $00
    .byte -12, -9, $06, $00
    .byte -4, -9, $16, $00
    L_1C80AE:
    .byte $C6
    .byte $03
    .byte -12, -9, $1A, $40
    .byte 4, -9, $06, $40
    .byte -4, -9, $16, $40
    L_1C80BC:
    .byte $C6
    .byte $03
    .byte -12, -9, $06, $00
    .byte 4, -9, $1A, $00
    .byte -4, -9, $08, $40
    L_1C80CA:
    .byte $C6
    .byte $03
    .byte 4, -9, $06, $40
    .byte -12, -9, $1A, $40
    .byte -4, -9, $08, $00
    L_1C80D8:
    .byte $C6
    .byte $04
    .byte 11, -17, $0C, $01
    .byte -12, -9, $0E, $00
    .byte 4, -9, $1C, $00
    .byte -4, -9, $1E, $00
    L_1C80EA:
    .byte $C6
    .byte $04
    .byte -19, -17, $0C, $41
    .byte 4, -9, $0E, $40
    .byte -12, -9, $1C, $40
    .byte -4, -9, $1E, $40
    L_1C80FC:
    .byte $C6
    .byte $03
    .byte -12, -9, $10, $40
    .byte 4, -9, $1C, $00
    .byte -4, -9, $00, $00
    L_1C810A:
    .byte $C6
    .byte $03
    .byte 4, -9, $10, $00
    .byte -12, -9, $1C, $40
    .byte -4, -9, $00, $40
    L_1C8118:
    .byte $C6
    .byte $03
    .byte -12, -9, $10, $41
    .byte 4, -9, $1C, $01
    .byte -4, -9, $00, $01
    L_1C8126:
    .byte $C6
    .byte $03
    .byte 4, -9, $10, $01
    .byte -12, -9, $1C, $41
    .byte -4, -9, $00, $41

L_1C8134:
    .addr L_1C814C
    .addr L_1C81B0
    .addr L_1C81C6
    .addr L_1C8168
    .addr L_1C817A
    .addr L_1C818C
    .addr L_1C819E
    .addr L_1C81B0
    .addr L_1C81C6
    .addr L_1C814C
    .addr L_1C815A
    .addr L_1C81DC

    L_1C814C:
    .byte $CE
    .byte $03
    .byte -12, -24, $16, $41
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_1C815A:
    .byte $CE
    .byte $03
    .byte -7, -24, $16, $01
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1C8168:
    .byte $CE
    .byte $04
    .byte 2, -24, $18, $41
    .byte 10, -18, $08, $41
    .byte 0, -7, $14, $80
    .byte -8, -10, $04, $00
    L_1C817A:
    .byte $CE
    .byte $04
    .byte 3, 7, $18, $C1
    .byte 11, -1, $08, $C1
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00
    L_1C818C:
    .byte $CE
    .byte $04
    .byte -10, 7, $18, $81
    .byte -18, -1, $08, $81
    .byte 0, -9, $06, $00
    .byte -8, -9, $14, $40
    L_1C819E:
    .byte $CE
    .byte $04
    .byte -10, -25, $18, $01
    .byte -18, -17, $08, $01
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1C81B0:
    .byte $CE
    .byte $05
    .byte -19, -26, $0A, $81
    .byte -9, -26, $0A, $41
    .byte -13, -24, $16, $41
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1C81C6:
    .byte $CE
    .byte $05
    .byte -19, -26, $1A, $81
    .byte -9, -27, $1A, $41
    .byte -13, -24, $16, $41
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1C81DC:
    .byte $CE
    .byte $0E
    .byte 58, 90, $0C, $01
    .byte -18, -62, $0C, $01
    .byte 50, 74, $0C, $01
    .byte 42, 58, $0C, $01
    .byte 34, 42, $0C, $01
    .byte -10, -46, $0C, $C1
    .byte 26, 26, $0C, $C1
    .byte 18, 10, $0C, $C1
    .byte -2, -30, $0C, $C1
    .byte 6, -14, $0C, $01
    .byte 3, 7, $18, $C1
    .byte 11, -1, $08, $C1
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00

L_1C8216:
    .addr L_1C8348
    .addr L_1C8352
    .addr L_1C835C
    .addr L_1C8366
    .addr L_1C8370
    .addr L_1C837A
    .addr L_1C8384
    .addr L_1C838E
    .addr L_1C8398
    .addr L_1C83A2
    .addr L_1C83AC
    .addr L_1C83B6
    .addr L_1C83C0
    .addr L_1C83CA
    .addr L_1C83D4
    .addr L_1C83E2
    .addr L_1C83F0
    .addr L_1C83FA
    .addr L_1C8404
    .addr L_1C8412
    .addr L_1C8420
    .addr L_1C842E
    .addr L_1C843C
    .addr L_1C8446
    .addr L_1C8450
    .addr L_1C845A
    .addr L_1C8464
    .addr L_1C8472
    .addr L_1C8480
    .addr L_1C848E
    .addr L_1C849C
    .addr L_1C84AA
    .addr L_1C84B8
    .addr L_1C84C6
    .addr L_1C84D4
    .addr L_1C84DE
    .addr L_1C84E8
    .addr L_1C84F2
    .addr L_1C84FC
    .addr L_1C8506
    .addr L_1C8510
    .addr L_1C851A
    .addr L_1C8524
    .addr L_1C8536
    .addr L_1C8548
    .addr L_1C8552
    .addr L_1C855C
    .addr L_1C8576
    .addr L_1C8590
    .addr L_1C85AA
    .addr L_1C85C4
    .addr L_1C85D6
    .addr L_1C85E8
    .addr L_1C85FA
    .addr L_1C860C
    .addr L_1C861E
    .addr L_1C8630
    .addr L_1C8642
    .addr L_1C8654
    .addr L_1C865E
    .addr L_1C8668
    .addr L_1C8672
    .addr L_1C867C
    .addr L_1C868E
    .addr L_1C86A0
    .addr L_1C86B2
    .addr L_1C86C4
    .addr L_1C86E6
    .addr L_1C8708
    .addr L_1C872A
    .addr L_1C874C
    .addr L_1C8782
    .addr L_1C87B8
    .addr L_1C87EE
    .addr L_1C8824
    .addr L_1C8832
    .addr L_1C8840
    .addr L_1C8852
    .addr L_1C8864
    .addr L_1C8876
    .addr L_1C8888
    .addr L_1C889A
    .addr L_1C88AC
    .addr L_1C88BE
    .addr L_1C88D0
    .addr L_1C88E2
    .addr L_1C8398
    .addr L_1C83A2
    .addr L_1C88F4
    .addr L_1C890E
    .addr L_1C8928
    .addr L_1C8942
    .addr L_1C895C
    .addr L_1C8976
    .addr L_1C8990
    .addr L_1C89AA
    .addr L_1C89C4
    .addr L_1C89DE
    .addr L_1C89F8
    .addr L_1C8A12
    .addr L_1C8A2C
    .addr L_1C8A4A
    .addr L_1C8A68
    .addr L_1C8A82
    .addr L_1C8A9C
    .addr L_1C8ABA
    .addr L_1C8AD8
    .addr L_1C8AF6
    .addr L_1C8B14
    .addr L_1C8B2E
    .addr L_1C8B48
    .addr L_1C8B62
    .addr L_1C8B7C
    .addr L_1C8B9A
    .addr L_1C8BB8
    .addr L_1C8BD6
    .addr L_1C8BF4
    .addr L_1C8C0E
    .addr L_1C8C28
    .addr L_1C8C3E
    .addr L_1C8C54
    .addr L_1C8C62
    .addr L_1C8C70
    .addr L_1C8C7E
    .addr L_1C8C8C
    .addr L_1C8C96
    .addr L_1C8CA0
    .addr L_1C8CAE
    .addr L_1C8CBC
    .addr L_1C8CCA
    .addr L_1C8CD8
    .addr L_1C8CE6
    .addr L_1C8CF4
    .addr L_1C8D02
    .addr L_1C8C8C
    .addr L_1C8C96
    .addr L_1C835C
    .addr L_1C8366
    .addr L_1C8D1A
    .addr L_1C8D24
    .addr L_1C8D2E
    .addr L_1C8D38
    .addr L_1C8D42
    .addr L_1C8D4C
    .addr L_1C8D56
    .addr L_1C8D60
    .addr L_1C8D6A
    .addr L_1C8D74
    .addr L_1C8D7E
    .addr L_1C8D88
    .addr L_1C8D92
    .addr L_1C8D9C
    .addr L_1C8D10

    L_1C8348:
    .byte $CE
    .byte $02
    .byte 0, -9, $56, $00
    .byte -8, -9, $1C, $00
    L_1C8352:
    .byte $CE
    .byte $02
    .byte -8, -9, $56, $40
    .byte 0, -9, $1C, $40
    L_1C835C:
    .byte $80
    .byte $02
    .byte -8, -9, $60, $00
    .byte 0, -9, $62, $00
    L_1C8366:
    .byte $80
    .byte $02
    .byte 0, -9, $60, $40
    .byte -8, -9, $62, $40
    L_1C8370:
    .byte $80
    .byte $02
    .byte -8, -9, $0A, $00
    .byte 0, -9, $1C, $00
    L_1C837A:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1C, $40
    L_1C8384:
    .byte $80
    .byte $02
    .byte -8, -9, $08, $01
    .byte 0, -9, $1C, $01
    L_1C838E:
    .byte $80
    .byte $02
    .byte 0, -9, $08, $41
    .byte -8, -9, $1C, $41
    L_1C8398:
    .byte $88
    .byte $02
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1C83A2:
    .byte $88
    .byte $02
    .byte -8, -9, $10, $40
    .byte 0, -9, $00, $40
    L_1C83AC:
    .byte $88
    .byte $02
    .byte 0, -9, $12, $01
    .byte -8, -9, $02, $01
    L_1C83B6:
    .byte $88
    .byte $02
    .byte -8, -9, $12, $41
    .byte 0, -9, $02, $41
    L_1C83C0:
    .byte $88
    .byte $02
    .byte 0, -9, $14, $01
    .byte -8, -9, $04, $01
    L_1C83CA:
    .byte $88
    .byte $02
    .byte -8, -9, $14, $41
    .byte 0, -9, $04, $41
    L_1C83D4:
    .byte $88
    .byte $03
    .byte -8, -25, $0E, $01
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    L_1C83E2:
    .byte $88
    .byte $03
    .byte 0, -25, $0E, $41
    .byte -8, -9, $1A, $40
    .byte 0, -9, $0A, $40
    L_1C83F0:
    .byte $88
    .byte $02
    .byte 0, -9, $1C, $00
    .byte -8, -9, $0C, $00
    L_1C83FA:
    .byte $88
    .byte $02
    .byte -8, -9, $1C, $40
    .byte 0, -9, $0C, $40
    L_1C8404:
    .byte $84
    .byte $03
    .byte 8, -9, $24, $00
    .byte 0, -9, $32, $00
    .byte -8, -9, $22, $00
    L_1C8412:
    .byte $84
    .byte $03
    .byte -16, -9, $24, $40
    .byte -8, -9, $32, $40
    .byte 0, -9, $22, $40
    L_1C8420:
    .byte $84
    .byte $03
    .byte 8, -9, $34, $01
    .byte 0, -9, $30, $00
    .byte -8, -9, $20, $00
    L_1C842E:
    .byte $84
    .byte $03
    .byte -16, -9, $34, $41
    .byte -8, -9, $30, $40
    .byte 0, -9, $20, $40
    L_1C843C:
    .byte $88
    .byte $02
    .byte 0, -9, $34, $00
    .byte -8, -9, $24, $00
    L_1C8446:
    .byte $88
    .byte $02
    .byte -8, -9, $34, $40
    .byte 0, -9, $24, $40
    L_1C8450:
    .byte $88
    .byte $02
    .byte 0, -9, $34, $01
    .byte -8, -9, $24, $01
    L_1C845A:
    .byte $88
    .byte $02
    .byte -8, -9, $34, $41
    .byte 0, -9, $24, $41
    L_1C8464:
    .byte $88
    .byte $03
    .byte -13, -9, $40, $00
    .byte -5, -9, $50, $00
    .byte 3, -9, $26, $00
    L_1C8472:
    .byte $88
    .byte $03
    .byte -11, -9, $26, $40
    .byte -3, -9, $50, $40
    .byte 5, -9, $40, $40
    L_1C8480:
    .byte $88
    .byte $03
    .byte -12, -9, $42, $00
    .byte -4, -9, $52, $00
    .byte 4, -9, $36, $00
    L_1C848E:
    .byte $88
    .byte $03
    .byte -12, -9, $36, $40
    .byte -4, -9, $52, $40
    .byte 4, -9, $42, $40
    L_1C849C:
    .byte $88
    .byte $03
    .byte -12, -9, $44, $00
    .byte -4, -9, $54, $00
    .byte 4, -9, $38, $00
    L_1C84AA:
    .byte $88
    .byte $03
    .byte -12, -9, $28, $40
    .byte -4, -9, $52, $40
    .byte 4, -9, $44, $40
    L_1C84B8:
    .byte $88
    .byte $03
    .byte -12, -9, $46, $00
    .byte -4, -9, $56, $00
    .byte 4, -9, $28, $00
    L_1C84C6:
    .byte $88
    .byte $03
    .byte -12, -9, $38, $40
    .byte -4, -9, $56, $40
    .byte 4, -9, $46, $40
    L_1C84D4:
    .byte $80
    .byte $02
    .byte -8, -9, $0E, $00
    .byte 0, -9, $1E, $00
    L_1C84DE:
    .byte $80
    .byte $02
    .byte 0, -9, $0E, $40
    .byte -8, -9, $1E, $40
    L_1C84E8:
    .byte $80
    .byte $02
    .byte 0, -9, $32, $C0
    .byte -8, -9, $30, $C0
    L_1C84F2:
    .byte $80
    .byte $02
    .byte -8, -9, $32, $80
    .byte 0, -9, $30, $80
    L_1C84FC:
    .byte $80
    .byte $02
    .byte -8, -9, $2A, $00
    .byte 0, -9, $2C, $00
    L_1C8506:
    .byte $80
    .byte $02
    .byte 0, -9, $2A, $40
    .byte -8, -9, $2C, $40
    L_1C8510:
    .byte $80
    .byte $02
    .byte -8, -9, $0A, $00
    .byte 0, -9, $1A, $00
    L_1C851A:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1A, $40
    L_1C8524:
    .byte $8C
    .byte $04
    .byte -8, -25, $26, $00
    .byte 0, -25, $36, $00
    .byte 0, -9, $38, $00
    .byte -8, -9, $28, $00
    L_1C8536:
    .byte $8C
    .byte $04
    .byte 0, -25, $26, $40
    .byte -8, -25, $36, $40
    .byte -8, -9, $38, $40
    .byte 0, -9, $28, $40
    L_1C8548:
    .byte $8C
    .byte $02
    .byte 0, -9, $3E, $00
    .byte -8, -9, $2E, $00
    L_1C8552:
    .byte $8C
    .byte $02
    .byte -8, -9, $3E, $40
    .byte 0, -9, $2E, $40
    L_1C855C:
    .byte $8C
    .byte $06
    .byte 20, -10, $50, $01
    .byte 12, -10, $40, $01
    .byte 0, -9, $38, $00
    .byte -8, -9, $28, $00
    .byte 0, -25, $36, $00
    .byte -8, -25, $26, $00
    L_1C8576:
    .byte $8C
    .byte $06
    .byte -28, -10, $50, $41
    .byte -20, -10, $40, $41
    .byte -8, -9, $38, $40
    .byte 0, -9, $28, $40
    .byte -8, -25, $36, $40
    .byte 0, -25, $26, $40
    L_1C8590:
    .byte $8C
    .byte $06
    .byte 18, -11, $32, $41
    .byte 10, -11, $32, $01
    .byte 0, -9, $38, $00
    .byte -8, -9, $28, $00
    .byte 0, -25, $36, $00
    .byte -8, -25, $26, $00
    L_1C85AA:
    .byte $8C
    .byte $06
    .byte -26, -11, $32, $01
    .byte -18, -11, $32, $41
    .byte -8, -9, $38, $40
    .byte 0, -9, $28, $40
    .byte -8, -25, $36, $40
    .byte 0, -25, $26, $40
    L_1C85C4:
    .byte $8C
    .byte $04
    .byte 13, -13, $52, $01
    .byte 5, -13, $42, $01
    .byte 0, -9, $2E, $40
    .byte -8, -9, $2A, $00
    L_1C85D6:
    .byte $8C
    .byte $04
    .byte -21, -13, $52, $41
    .byte -13, -13, $42, $41
    .byte -8, -9, $2E, $00
    .byte 0, -9, $2A, $40
    L_1C85E8:
    .byte $8C
    .byte $04
    .byte 11, -15, $52, $01
    .byte 3, -15, $42, $01
    .byte 0, -9, $2E, $40
    .byte -8, -9, $2A, $00
    L_1C85FA:
    .byte $8C
    .byte $04
    .byte -19, -15, $52, $41
    .byte -11, -15, $42, $41
    .byte -8, -9, $2E, $00
    .byte 0, -9, $2A, $40
    L_1C860C:
    .byte $8C
    .byte $04
    .byte -19, -15, $52, $41
    .byte -11, -15, $42, $41
    .byte -8, -9, $2E, $00
    .byte 0, -9, $2A, $40
    L_1C861E:
    .byte $8C
    .byte $04
    .byte 11, -15, $52, $01
    .byte 3, -15, $42, $01
    .byte 0, -9, $2E, $40
    .byte -8, -9, $2A, $00
    L_1C8630:
    .byte $8C
    .byte $04
    .byte 0, -6, $54, $01
    .byte -8, -6, $44, $01
    .byte -2, -10, $3C, $00
    .byte -10, -10, $2C, $00
    L_1C8642:
    .byte $8C
    .byte $04
    .byte -8, -6, $54, $41
    .byte 0, -6, $44, $41
    .byte -6, -10, $3C, $40
    .byte 2, -10, $2C, $40
    L_1C8654:
    .byte $94
    .byte $02
    .byte 0, -9, $1A, $00
    .byte -8, -9, $0A, $00
    L_1C865E:
    .byte $94
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $1A, $40
    L_1C8668:
    .byte $94
    .byte $02
    .byte -8, -9, $0A, $01
    .byte 0, -9, $1A, $01
    L_1C8672:
    .byte $94
    .byte $02
    .byte -8, -9, $1A, $41
    .byte 0, -9, $0A, $41
    L_1C867C:
    .byte $94
    .byte $04
    .byte -4, -25, $0C, $00
    .byte 4, -9, $1C, $00
    .byte -4, -9, $1E, $00
    .byte -12, -9, $0E, $00
    L_1C868E:
    .byte $94
    .byte $04
    .byte -4, -25, $0C, $40
    .byte -12, -9, $1C, $40
    .byte 4, -9, $0E, $40
    .byte -4, -9, $1E, $40
    L_1C86A0:
    .byte $94
    .byte $04
    .byte -4, -25, $0C, $01
    .byte 4, -9, $1C, $01
    .byte -4, -9, $1E, $01
    .byte -12, -9, $0E, $01
    L_1C86B2:
    .byte $94
    .byte $04
    .byte -4, -25, $0C, $41
    .byte -12, -9, $1C, $41
    .byte 4, -9, $0E, $41
    .byte -4, -9, $1E, $41
    L_1C86C4:
    .byte $94
    .byte $08
    .byte 8, -9, $52, $00
    .byte 8, -25, $50, $00
    .byte 0, -25, $40, $00
    .byte -8, -25, $30, $00
    .byte -16, -25, $20, $00
    .byte -16, -9, $22, $00
    .byte -8, -9, $32, $00
    .byte 0, -9, $42, $00
    L_1C86E6:
    .byte $94
    .byte $08
    .byte 8, -25, $20, $40
    .byte 0, -25, $30, $40
    .byte -8, -25, $40, $40
    .byte -16, -25, $50, $40
    .byte 8, -9, $22, $40
    .byte -16, -9, $52, $40
    .byte -8, -9, $42, $40
    .byte 0, -9, $32, $40
    L_1C8708:
    .byte $94
    .byte $08
    .byte 8, -9, $52, $01
    .byte 8, -25, $50, $01
    .byte 0, -25, $40, $01
    .byte -8, -25, $30, $01
    .byte -16, -25, $20, $01
    .byte -16, -9, $22, $01
    .byte -8, -9, $32, $01
    .byte 0, -9, $42, $01
    L_1C872A:
    .byte $94
    .byte $08
    .byte 8, -25, $20, $41
    .byte 0, -25, $30, $41
    .byte -8, -25, $40, $41
    .byte -16, -25, $50, $41
    .byte 8, -9, $22, $41
    .byte -16, -9, $52, $41
    .byte -8, -9, $42, $41
    .byte 0, -9, $32, $41
    L_1C874C:
    .byte $94
    .byte $0D
    .byte -12, -39, $24, $00
    .byte -4, -39, $34, $00
    .byte 4, -39, $44, $00
    .byte 4, -23, $46, $00
    .byte -4, -23, $36, $00
    .byte -12, -23, $26, $00
    .byte -20, -23, $54, $00
    .byte -20, -7, $2A, $00
    .byte 12, -23, $56, $00
    .byte 12, -7, $58, $00
    .byte 4, -7, $48, $00
    .byte -12, -7, $28, $00
    .byte -4, -7, $38, $00
    L_1C8782:
    .byte $94
    .byte $0D
    .byte -12, -39, $44, $40
    .byte 4, -39, $24, $40
    .byte -4, -39, $34, $40
    .byte 12, -7, $2A, $40
    .byte 12, -23, $54, $40
    .byte 4, -23, $26, $40
    .byte -4, -23, $36, $40
    .byte -12, -23, $46, $40
    .byte -20, -23, $56, $40
    .byte -20, -7, $58, $40
    .byte 4, -7, $28, $40
    .byte -12, -7, $48, $40
    .byte -4, -7, $38, $40
    L_1C87B8:
    .byte $94
    .byte $0D
    .byte -12, -39, $24, $01
    .byte -4, -39, $34, $01
    .byte 4, -39, $44, $01
    .byte 4, -23, $46, $01
    .byte -4, -23, $36, $01
    .byte -12, -23, $26, $01
    .byte -20, -23, $54, $01
    .byte -20, -7, $2A, $01
    .byte 12, -23, $56, $01
    .byte 12, -7, $58, $01
    .byte 4, -7, $48, $01
    .byte -12, -7, $28, $01
    .byte -4, -7, $38, $01
    L_1C87EE:
    .byte $94
    .byte $0D
    .byte -12, -39, $44, $41
    .byte 4, -39, $24, $41
    .byte -4, -39, $34, $41
    .byte 12, -7, $2A, $41
    .byte 12, -23, $54, $41
    .byte 4, -23, $26, $41
    .byte -4, -23, $36, $41
    .byte -12, -23, $46, $41
    .byte -20, -23, $56, $41
    .byte -20, -7, $58, $41
    .byte 4, -7, $28, $41
    .byte -12, -7, $48, $41
    .byte -4, -7, $38, $41
    L_1C8824:
    .byte $92
    .byte $03
    .byte 10, -10, $2C, $00
    .byte 0, -9, $3A, $00
    .byte -8, -9, $2A, $00
    L_1C8832:
    .byte $92
    .byte $03
    .byte -18, -10, $2C, $40
    .byte -8, -9, $3A, $40
    .byte 0, -9, $2A, $40
    L_1C8840:
    .byte $92
    .byte $04
    .byte 24, -10, $3E, $00
    .byte 16, -10, $2E, $00
    .byte 0, -9, $3A, $00
    .byte -8, -9, $2A, $00
    L_1C8852:
    .byte $92
    .byte $04
    .byte -32, -10, $3E, $40
    .byte -24, -10, $2E, $40
    .byte -8, -9, $3A, $40
    .byte 0, -9, $2A, $40
    L_1C8864:
    .byte $92
    .byte $04
    .byte 30, -8, $3E, $80
    .byte 22, -8, $2E, $80
    .byte 0, -9, $3A, $00
    .byte -8, -9, $2A, $00
    L_1C8876:
    .byte $92
    .byte $04
    .byte -38, -8, $3E, $C0
    .byte -30, -8, $2E, $C0
    .byte -8, -9, $3A, $40
    .byte 0, -9, $2A, $40
    L_1C8888:
    .byte $92
    .byte $04
    .byte 33, -10, $3E, $00
    .byte 25, -10, $2E, $00
    .byte 0, -9, $3A, $00
    .byte -8, -9, $2A, $00
    L_1C889A:
    .byte $92
    .byte $04
    .byte -41, -10, $3E, $40
    .byte -33, -10, $2E, $40
    .byte -8, -9, $3A, $40
    .byte 0, -9, $2A, $40
    L_1C88AC:
    .byte $92
    .byte $04
    .byte 36, -9, $50, $00
    .byte 28, -9, $40, $00
    .byte 0, -9, $3A, $00
    .byte -8, -9, $2A, $00
    L_1C88BE:
    .byte $92
    .byte $04
    .byte -44, -9, $50, $40
    .byte -36, -9, $40, $40
    .byte -8, -9, $3A, $40
    .byte 0, -9, $2A, $40
    L_1C88D0:
    .byte $92
    .byte $04
    .byte 40, -9, $50, $00
    .byte 32, -9, $40, $00
    .byte 0, -9, $3A, $00
    .byte -8, -9, $2A, $00
    L_1C88E2:
    .byte $92
    .byte $04
    .byte -48, -9, $50, $40
    .byte -40, -9, $40, $40
    .byte -8, -9, $3A, $40
    .byte 0, -9, $2A, $40
    L_1C88F4:
    .byte $88
    .byte $06
    .byte -24, -1, $60, $00
    .byte 7, -20, $60, $80
    .byte -4, 11, $62, $00
    .byte -4, -21, $4C, $00
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1C890E:
    .byte $88
    .byte $06
    .byte 16, -1, $60, $40
    .byte -15, -20, $60, $C0
    .byte -4, 11, $62, $40
    .byte -4, -21, $4C, $40
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1C8928:
    .byte $88
    .byte $06
    .byte -24, -14, $60, $80
    .byte 7, -27, $60, $80
    .byte -4, 5, $60, $00
    .byte -4, -21, $4C, $00
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1C8942:
    .byte $88
    .byte $06
    .byte 16, -14, $60, $C0
    .byte -15, -27, $60, $C0
    .byte -4, 5, $60, $40
    .byte -4, -21, $4C, $40
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1C895C:
    .byte $88
    .byte $06
    .byte -24, -21, $62, $80
    .byte 7, -34, $62, $80
    .byte -4, -3, $60, $00
    .byte -16, -10, $4C, $00
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1C8976:
    .byte $88
    .byte $06
    .byte 16, -21, $62, $C0
    .byte -15, -34, $62, $C0
    .byte -4, -3, $60, $40
    .byte 8, -10, $4C, $40
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    L_1C8990:
    .byte $88
    .byte $06
    .byte -24, -29, $62, $80
    .byte 16, 1, $60, $00
    .byte -4, -16, $62, $80
    .byte -16, -10, $4C, $00
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1C89AA:
    .byte $88
    .byte $06
    .byte 16, -29, $62, $C0
    .byte -24, 1, $60, $40
    .byte -4, -16, $62, $C0
    .byte 8, -10, $4C, $40
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    L_1C89C4:
    .byte $88
    .byte $06
    .byte -15, 7, $60, $00
    .byte 16, -14, $60, $80
    .byte -4, -22, $62, $80
    .byte -4, 2, $4C, $00
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1C89DE:
    .byte $88
    .byte $06
    .byte 7, 7, $60, $40
    .byte -24, -14, $60, $C0
    .byte -4, -22, $62, $C0
    .byte -4, 2, $4C, $40
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1C89F8:
    .byte $88
    .byte $06
    .byte -15, 0, $60, $00
    .byte 16, -21, $62, $80
    .byte -4, -29, $60, $80
    .byte -4, 2, $4C, $00
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1C8A12:
    .byte $88
    .byte $06
    .byte 7, 0, $60, $40
    .byte -24, -21, $62, $C0
    .byte -4, -29, $60, $C0
    .byte -4, 2, $4C, $40
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1C8A2C:
    .byte $88
    .byte $07
    .byte 16, 5, $62, $00
    .byte -15, -12, $62, $80
    .byte 16, -28, $62, $80
    .byte -4, -37, $60, $80
    .byte 8, -10, $4C, $00
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1C8A4A:
    .byte $88
    .byte $07
    .byte -23, 5, $62, $40
    .byte 8, -12, $62, $C0
    .byte -23, -28, $62, $C0
    .byte -3, -37, $60, $C0
    .byte -15, -10, $4C, $40
    .byte -7, -9, $14, $40
    .byte 1, -9, $04, $40
    L_1C8A68:
    .byte $88
    .byte $06
    .byte 16, -5, $62, $00
    .byte 7, 7, $62, $00
    .byte -15, -21, $62, $80
    .byte 8, -10, $4C, $00
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1C8A82:
    .byte $88
    .byte $06
    .byte -24, -5, $62, $40
    .byte -15, 7, $62, $40
    .byte 7, -21, $62, $C0
    .byte -16, -10, $4C, $40
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    L_1C8A9C:
    .byte $88
    .byte $07
    .byte -4, 11, $60, $00
    .byte 16, -21, $60, $80
    .byte -15, -27, $60, $80
    .byte 7, 0, $60, $00
    .byte -14, -20, $4C, $00
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1C8ABA:
    .byte $88
    .byte $07
    .byte -4, 11, $60, $40
    .byte -24, -21, $60, $C0
    .byte 7, -27, $60, $C0
    .byte -15, 0, $60, $40
    .byte 6, -20, $4C, $40
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1C8AD8:
    .byte $88
    .byte $07
    .byte -4, 5, $62, $00
    .byte 16, -28, $60, $80
    .byte -15, -34, $60, $80
    .byte 7, -13, $60, $80
    .byte -14, -20, $4C, $00
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1C8AF6:
    .byte $88
    .byte $07
    .byte -4, 5, $62, $40
    .byte -24, -28, $60, $C0
    .byte 7, -34, $60, $C0
    .byte -15, -13, $60, $C0
    .byte 6, -20, $4C, $40
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1C8B14:
    .byte $88
    .byte $06
    .byte -24, -1, $62, $00
    .byte -15, 7, $62, $00
    .byte 7, -20, $62, $80
    .byte 6, -19, $4C, $00
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1C8B2E:
    .byte $88
    .byte $06
    .byte 16, -1, $62, $40
    .byte 7, 7, $62, $40
    .byte -15, -20, $62, $C0
    .byte -14, -19, $4C, $40
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    L_1C8B48:
    .byte $88
    .byte $06
    .byte -24, -14, $62, $80
    .byte 7, -27, $62, $80
    .byte -15, 0, $62, $00
    .byte 6, -19, $4C, $00
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1C8B62:
    .byte $88
    .byte $06
    .byte 16, -14, $62, $C0
    .byte -15, -27, $62, $C0
    .byte 7, 0, $62, $40
    .byte -14, -19, $4C, $40
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    L_1C8B7C:
    .byte $88
    .byte $07
    .byte -4, -25, $60, $80
    .byte 7, -34, $60, $80
    .byte -24, -21, $60, $80
    .byte -15, -12, $60, $80
    .byte 6, 0, $4C, $00
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1C8B9A:
    .byte $88
    .byte $07
    .byte -4, -25, $60, $C0
    .byte -15, -34, $60, $C0
    .byte 16, -21, $60, $C0
    .byte 7, -12, $60, $C0
    .byte -14, 0, $4C, $40
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1C8BB8:
    .byte $88
    .byte $07
    .byte -4, -29, $60, $80
    .byte -24, -29, $60, $80
    .byte 7, 7, $60, $00
    .byte -15, -20, $60, $80
    .byte 6, 0, $4C, $00
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1C8BD6:
    .byte $88
    .byte $07
    .byte -4, -29, $60, $C0
    .byte 16, -29, $60, $C0
    .byte -15, 7, $60, $40
    .byte 7, -20, $60, $C0
    .byte -14, 0, $4C, $40
    .byte -8, -9, $12, $40
    .byte 0, -9, $02, $40
    L_1C8BF4:
    .byte $88
    .byte $06
    .byte -4, -37, $60, $80
    .byte 7, 0, $62, $00
    .byte -15, -27, $62, $80
    .byte -14, 1, $4C, $00
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1C8C0E:
    .byte $88
    .byte $06
    .byte -4, -37, $60, $C0
    .byte -15, 0, $62, $40
    .byte 7, -27, $62, $C0
    .byte 6, 1, $4C, $40
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    L_1C8C28:
    .byte $88
    .byte $05
    .byte 7, -13, $62, $80
    .byte -15, -34, $62, $80
    .byte -14, 1, $4C, $00
    .byte 0, -9, $14, $00
    .byte -8, -9, $04, $00
    L_1C8C3E:
    .byte $88
    .byte $05
    .byte -15, -13, $62, $C0
    .byte 7, -34, $62, $C0
    .byte 6, 1, $4C, $40
    .byte -8, -9, $14, $40
    .byte 0, -9, $04, $40
    L_1C8C54:
    .byte $84
    .byte $03
    .byte 8, -9, $62, $00
    .byte 0, -9, $60, $00
    .byte -8, -9, $36, $00
    L_1C8C62:
    .byte $84
    .byte $03
    .byte -16, -9, $62, $40
    .byte -8, -9, $60, $40
    .byte 0, -9, $36, $40
    L_1C8C70:
    .byte $84
    .byte $03
    .byte 8, -9, $62, $01
    .byte 0, -9, $60, $01
    .byte -8, -9, $36, $01
    L_1C8C7E:
    .byte $84
    .byte $03
    .byte -16, -9, $62, $41
    .byte -8, -9, $60, $41
    .byte 0, -9, $36, $41
    L_1C8C8C:
    .byte $88
    .byte $02
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_1C8C96:
    .byte $88
    .byte $02
    .byte -8, -9, $10, $40
    .byte 0, -9, $00, $40
    L_1C8CA0:
    .byte $88
    .byte $03
    .byte -12, -9, $20, $01
    .byte -4, -9, $30, $41
    .byte 4, -9, $20, $41
    L_1C8CAE:
    .byte $88
    .byte $03
    .byte 4, -9, $20, $41
    .byte -4, -9, $30, $01
    .byte -12, -9, $20, $01
    L_1C8CBC:
    .byte $88
    .byte $03
    .byte -12, -9, $20, $00
    .byte -4, -9, $30, $40
    .byte 4, -9, $20, $40
    L_1C8CCA:
    .byte $88
    .byte $03
    .byte 4, -9, $20, $40
    .byte -4, -9, $30, $00
    .byte -12, -9, $20, $00
    L_1C8CD8:
    .byte $88
    .byte $03
    .byte 4, -9, $22, $40
    .byte -12, -9, $22, $00
    .byte -4, -9, $32, $40
    L_1C8CE6:
    .byte $88
    .byte $03
    .byte -12, -9, $22, $00
    .byte 4, -9, $22, $40
    .byte -4, -9, $32, $00
    L_1C8CF4:
    .byte $88
    .byte $03
    .byte 4, -9, $22, $41
    .byte -12, -9, $22, $01
    .byte -4, -9, $32, $41
    L_1C8D02:
    .byte $88
    .byte $03
    .byte -12, -9, $22, $01
    .byte 4, -9, $22, $41
    .byte -4, -9, $32, $01
    L_1C8D10:
    .byte $8E
    .byte $02
    .byte 0, -9, $5E, $00
    .byte -8, -9, $4E, $00
    L_1C8D1A:
    .byte $80
    .byte $02
    .byte -8, -9, $02, $00
    .byte 0, -9, $20, $00
    L_1C8D24:
    .byte $80
    .byte $02
    .byte 0, -9, $02, $40
    .byte -8, -9, $20, $40
    L_1C8D2E:
    .byte $80
    .byte $02
    .byte -8, -9, $02, $00
    .byte 0, -9, $5E, $00
    L_1C8D38:
    .byte $80
    .byte $02
    .byte 0, -9, $02, $40
    .byte -8, -9, $5E, $40
    L_1C8D42:
    .byte $94
    .byte $02
    .byte 0, -9, $2C, $40
    .byte -8, -9, $3C, $40
    L_1C8D4C:
    .byte $94
    .byte $02
    .byte 0, -9, $3C, $00
    .byte -8, -9, $2C, $00
    L_1C8D56:
    .byte $94
    .byte $02
    .byte -8, -9, $3E, $40
    .byte 0, -9, $2E, $40
    L_1C8D60:
    .byte $94
    .byte $02
    .byte 0, -9, $3E, $00
    .byte -8, -9, $2E, $00
    L_1C8D6A:
    .byte $94
    .byte $02
    .byte -8, -9, $5C, $40
    .byte 0, -9, $4C, $40
    L_1C8D74:
    .byte $94
    .byte $02
    .byte -8, -9, $4C, $00
    .byte 0, -9, $5C, $00
    L_1C8D7E:
    .byte $92
    .byte $02
    .byte -8, -9, $5E, $40
    .byte 0, -9, $5C, $40
    L_1C8D88:
    .byte $92
    .byte $02
    .byte 0, -9, $5E, $00
    .byte -8, -9, $5C, $00
    L_1C8D92:
    .byte $92
    .byte $02
    .byte -8, -9, $5E, $40
    .byte 0, -9, $54, $40
    L_1C8D9C:
    .byte $92
    .byte $02
    .byte 0, -9, $5E, $00
    .byte -8, -9, $54, $00

L_1C8DA6:
    .addr L_1C8E56
    .addr L_1C8E60
    .addr L_1C8E6A
    .addr L_1C8E74
    .addr L_1C8E7E
    .addr L_1C8E88
    .addr L_1C8E88
    .addr L_1C8E7E
    .addr L_1C8E92
    .addr L_1C8EAC
    .addr L_1C8EC6
    .addr L_1C8EE4
    .addr L_1C8F02
    .addr L_1C8F24
    .addr L_1C8F46
    .addr L_1C8F68
    .addr L_1C8F8A
    .addr L_1C8FA8
    .addr L_1C8FC6
    .addr L_1C8FE0
    .addr L_1C8FFA
    .addr L_1C9014
    .addr L_1C902E
    .addr L_1C9048
    .addr L_1C9062
    .addr L_1C906C
    .addr L_1C9076
    .addr L_1C9080
    .addr L_1C908A
    .addr L_1C9094
    .addr L_1C909E
    .addr L_1C90C0
    .addr L_1C90E2
    .addr L_1C9104
    .addr L_1C9126
    .addr L_1C9148
    .addr L_1C916A
    .addr L_1C9184
    .addr L_1C919E
    .addr L_1C91B8
    .addr L_1C91D2
    .addr L_1C91F4
    .addr L_1C9216
    .addr L_1C9238
    .addr L_1C925A
    .addr L_1C9268
    .addr L_1C9276
    .addr L_1C9284
    .addr L_1C9292
    .addr L_1C92A0
    .addr L_1C92AE
    .addr L_1C92C8
    .addr L_1C92E2
    .addr L_1C92FC
    .addr L_1C9316
    .addr L_1C9330
    .addr L_1C934A
    .addr L_1C9364
    .addr L_1C937E
    .addr L_1C9398
    .addr L_1C93B2
    .addr L_1C93CC
    .addr L_1C93E6
    .addr L_1C9400
    .addr L_1C93E6
    .addr L_1C9400
    .addr L_1C941A
    .addr L_1C9434
    .addr L_1C944E
    .addr L_1C9468
    .addr L_1C9482
    .addr L_1C949C
    .addr L_1C94B6
    .addr L_1C94C4
    .addr L_1C8E56
    .addr L_1C8E60
    .addr L_1C8E42
    .addr L_1C8E4C

    L_1C8E42:
    .byte $80
    .byte $02
    .byte -8, -9, $3E, $C0
    .byte 0, -9, $3C, $C0
    L_1C8E4C:
    .byte $80
    .byte $02
    .byte 0, -9, $3E, $80
    .byte -8, -9, $3C, $80
    L_1C8E56:
    .byte $80 ;chr page
    .byte 2 ; UNK0 (tile count?)
    ;xpos, ypos, tile, attr
    .byte 0, -9, $3E, $00
    .byte -8, -9, $3C, $00
    L_1C8E60:
    .byte $80
    .byte $02
    .byte -8, -9, $3E, $40
    .byte 0, -9, $3C, $40
    L_1C8E6A:
    .byte $80
    .byte $02
    .byte -8, -9, $0E, $00
    .byte 0, -9, $1E, $00
    L_1C8E74:
    .byte $80
    .byte $02
    .byte 0, -9, $0E, $40
    .byte -8, -9, $1E, $40
    L_1C8E7E:
    .byte $80
    .byte $02
    .byte 0, -9, $32, $C0
    .byte -8, -9, $30, $C0
    L_1C8E88:
    .byte $80
    .byte $02
    .byte -8, -9, $2A, $00
    .byte 0, -9, $2C, $00
    L_1C8E92:
    .byte $82
    .byte $06
    .byte -4, -1, $1E, $00
    .byte 4, -1, $2E, $00
    .byte -12, -1, $08, $40
    .byte 4, -17, $2C, $00
    .byte -4, -17, $1C, $00
    .byte -12, -17, $0C, $00
    L_1C8EAC:
    .byte $82
    .byte $06
    .byte -4, -1, $1E, $40
    .byte 4, -1, $08, $00
    .byte -12, -1, $2E, $40
    .byte 4, -17, $0C, $40
    .byte -4, -17, $1C, $40
    .byte -12, -17, $2C, $40
    L_1C8EC6:
    .byte $C6
    .byte $07
    .byte -12, 3, $48, $40
    .byte -4, 3, $5C, $00
    .byte 4, 3, $5A, $00
    .byte 4, -13, $44, $00
    .byte -4, -13, $42, $00
    .byte -12, -13, $40, $00
    .byte -14, -21, $50, $01
    L_1C8EE4:
    .byte $C6
    .byte $07
    .byte 4, 3, $48, $00
    .byte -4, 3, $5C, $40
    .byte -12, 3, $5A, $40
    .byte -12, -13, $44, $40
    .byte -4, -13, $42, $40
    .byte 4, -13, $40, $40
    .byte 6, -21, $50, $41
    L_1C8F02:
    .byte $C6
    .byte $08
    .byte -18, -20, $52, $41
    .byte -10, -20, $52, $01
    .byte -12, 3, $48, $40
    .byte -4, 3, $5C, $00
    .byte 4, 3, $5A, $00
    .byte 4, -13, $44, $00
    .byte -4, -13, $42, $00
    .byte -12, -13, $40, $00
    L_1C8F24:
    .byte $C6
    .byte $08
    .byte 10, -20, $52, $01
    .byte 2, -20, $52, $41
    .byte 4, 3, $48, $00
    .byte -4, 3, $5C, $40
    .byte -12, 3, $5A, $40
    .byte -12, -13, $44, $40
    .byte -4, -13, $42, $40
    .byte 4, -13, $40, $40
    L_1C8F46:
    .byte $C6
    .byte $08
    .byte -18, -21, $54, $01
    .byte -10, -21, $54, $41
    .byte -12, 3, $48, $40
    .byte -4, 3, $5C, $00
    .byte 4, 3, $5A, $00
    .byte 4, -13, $44, $00
    .byte -4, -13, $42, $00
    .byte -12, -13, $40, $00
    L_1C8F68:
    .byte $C6
    .byte $08
    .byte 10, -21, $54, $41
    .byte 2, -21, $54, $01
    .byte 4, 3, $48, $00
    .byte -4, 3, $5C, $40
    .byte -12, 3, $5A, $40
    .byte -12, -13, $44, $40
    .byte -4, -13, $42, $40
    .byte 4, -13, $40, $40
    L_1C8F8A:
    .byte $C6
    .byte $07
    .byte -14, -21, $56, $01
    .byte -12, 3, $48, $40
    .byte -4, 3, $5C, $00
    .byte 4, 3, $5A, $00
    .byte 4, -13, $44, $00
    .byte -4, -13, $42, $00
    .byte -12, -13, $40, $00
    L_1C8FA8:
    .byte $C6
    .byte $07
    .byte 6, -21, $56, $41
    .byte 4, 3, $48, $00
    .byte -4, 3, $5C, $40
    .byte -12, 3, $5A, $40
    .byte -12, -13, $44, $40
    .byte -4, -13, $42, $40
    .byte 4, -13, $40, $40
    L_1C8FC6:
    .byte $90
    .byte $06
    .byte 2, -9, $2A, $01
    .byte -6, -9, $1A, $01
    .byte -14, -9, $0A, $01
    .byte 2, -25, $28, $01
    .byte -6, -25, $18, $01
    .byte -14, -25, $08, $01
    L_1C8FE0:
    .byte $90
    .byte $06
    .byte 9, -9, $0A, $41
    .byte 1, -9, $1A, $41
    .byte -7, -9, $2A, $41
    .byte -7, -25, $28, $41
    .byte 1, -25, $18, $41
    .byte 9, -25, $08, $41
    L_1C8FFA:
    .byte $90
    .byte $06
    .byte 2, -9, $2E, $01
    .byte 2, -25, $2C, $01
    .byte -6, -25, $1C, $01
    .byte -6, -9, $1E, $01
    .byte -14, -9, $0E, $01
    .byte -14, -25, $0C, $01
    L_1C9014:
    .byte $90
    .byte $06
    .byte 9, -9, $0E, $41
    .byte 9, -25, $0C, $41
    .byte 1, -9, $1E, $41
    .byte 1, -25, $1C, $41
    .byte -7, -9, $2E, $41
    .byte -7, -25, $2C, $41
    L_1C902E:
    .byte $90
    .byte $06
    .byte 2, -9, $52, $01
    .byte -6, -9, $42, $01
    .byte -14, -9, $32, $01
    .byte 2, -25, $50, $01
    .byte -6, -25, $40, $01
    .byte -14, -25, $30, $01
    L_1C9048:
    .byte $90
    .byte $06
    .byte 9, -25, $30, $41
    .byte 1, -25, $40, $41
    .byte -7, -25, $50, $41
    .byte -7, -9, $52, $41
    .byte 1, -9, $42, $41
    .byte 9, -9, $32, $41
    L_1C9062:
    .byte $80
    .byte $02
    .byte -8, -9, $0E, $00
    .byte 0, -9, $1E, $00
    L_1C906C:
    .byte $80
    .byte $02
    .byte 0, -9, $0E, $40
    .byte -8, -9, $1E, $40
    L_1C9076:
    .byte $80
    .byte $02
    .byte 0, -9, $32, $C0
    .byte -8, -9, $30, $C0
    L_1C9080:
    .byte $80
    .byte $02
    .byte -8, -9, $32, $80
    .byte 0, -9, $30, $80
    L_1C908A:
    .byte $80
    .byte $02
    .byte -8, -9, $2A, $00
    .byte 0, -9, $2C, $00
    L_1C9094:
    .byte $80
    .byte $02
    .byte 0, -9, $2A, $40
    .byte -8, -9, $2C, $40
    L_1C909E:
    .byte $84
    .byte $08
    .byte -3, -21, $2C, $01
    .byte 5, -21, $3C, $01
    .byte -11, -21, $38, $01
    .byte -19, -21, $28, $01
    .byte -19, -5, $2A, $01
    .byte -11, -5, $3A, $01
    .byte -3, -5, $2E, $01
    .byte 5, -5, $3E, $01
    L_1C90C0:
    .byte $84
    .byte $08
    .byte -4, -21, $2C, $41
    .byte -12, -21, $3C, $41
    .byte 4, -21, $38, $41
    .byte 12, -21, $28, $41
    .byte 12, -5, $2A, $41
    .byte 4, -5, $3A, $41
    .byte -4, -5, $2E, $41
    .byte -12, -5, $3E, $41
    L_1C90E2:
    .byte $84
    .byte $08
    .byte -20, -21, $40, $01
    .byte -12, -21, $50, $01
    .byte -4, -21, $44, $01
    .byte 4, -21, $54, $01
    .byte -20, -5, $42, $01
    .byte -12, -5, $52, $01
    .byte -4, -5, $46, $01
    .byte 4, -5, $56, $01
    L_1C9104:
    .byte $84
    .byte $08
    .byte 12, -21, $40, $41
    .byte 4, -21, $50, $41
    .byte -4, -21, $44, $41
    .byte -12, -21, $54, $41
    .byte 12, -5, $42, $41
    .byte 4, -5, $52, $41
    .byte -4, -5, $46, $41
    .byte -12, -5, $56, $41
    L_1C9126:
    .byte $84
    .byte $08
    .byte -20, -21, $48, $01
    .byte -12, -21, $58, $01
    .byte -4, -21, $4C, $01
    .byte 4, -21, $5C, $01
    .byte -20, -5, $4A, $01
    .byte -12, -5, $5A, $01
    .byte -4, -5, $4E, $01
    .byte 4, -5, $5E, $01
    L_1C9148:
    .byte $84
    .byte $08
    .byte 12, -21, $48, $41
    .byte 4, -21, $58, $41
    .byte -4, -21, $4C, $41
    .byte -12, -21, $5C, $41
    .byte 12, -5, $4A, $41
    .byte 4, -5, $5A, $41
    .byte -4, -5, $4E, $41
    .byte -12, -5, $5E, $41
    L_1C916A:
    .byte $90
    .byte $06
    .byte 3, -1, $22, $01
    .byte -5, -1, $12, $01
    .byte -13, -1, $02, $01
    .byte 3, -17, $20, $01
    .byte -5, -17, $10, $01
    .byte -13, -17, $00, $01
    L_1C9184:
    .byte $90
    .byte $06
    .byte 5, -1, $02, $41
    .byte 5, -17, $00, $41
    .byte -3, -1, $12, $41
    .byte -3, -17, $10, $41
    .byte -11, -1, $22, $41
    .byte -11, -17, $20, $41
    L_1C919E:
    .byte $90
    .byte $06
    .byte 3, -1, $26, $01
    .byte 3, -17, $24, $01
    .byte -5, -1, $16, $01
    .byte -5, -17, $14, $01
    .byte -13, -1, $06, $01
    .byte -13, -17, $04, $01
    L_1C91B8:
    .byte $90
    .byte $06
    .byte 5, -1, $06, $41
    .byte 5, -17, $04, $41
    .byte -3, -1, $16, $41
    .byte -3, -17, $14, $41
    .byte -11, -1, $26, $41
    .byte -11, -17, $24, $41
    L_1C91D2:
    .byte $8E
    .byte $08
    .byte 8, -1, $16, $01
    .byte 8, -17, $14, $01
    .byte 0, -1, $06, $01
    .byte 0, -17, $04, $01
    .byte -8, -1, $12, $01
    .byte -16, -1, $02, $01
    .byte -8, -17, $10, $01
    .byte -16, -17, $00, $01
    L_1C91F4:
    .byte $8E
    .byte $08
    .byte -16, -1, $16, $41
    .byte -8, -1, $06, $41
    .byte 0, -1, $12, $41
    .byte 8, -1, $02, $41
    .byte -16, -17, $14, $41
    .byte -8, -17, $04, $41
    .byte 0, -17, $10, $41
    .byte 8, -17, $00, $41
    L_1C9216:
    .byte $8E
    .byte $08
    .byte 8, -1, $1E, $01
    .byte 8, -17, $1C, $01
    .byte 0, -1, $0E, $01
    .byte 0, -17, $0C, $01
    .byte -8, -1, $1A, $01
    .byte -16, -1, $0A, $01
    .byte -8, -17, $18, $01
    .byte -16, -17, $08, $01
    L_1C9238:
    .byte $8E
    .byte $08
    .byte 8, -1, $0A, $41
    .byte -16, -1, $1E, $41
    .byte -8, -1, $0E, $41
    .byte 0, -1, $1A, $41
    .byte 8, -17, $08, $41
    .byte -16, -17, $1C, $41
    .byte -8, -17, $0C, $41
    .byte 0, -17, $18, $41
    L_1C925A:
    .byte $90
    .byte $03
    .byte 4, -9, $54, $00
    .byte -4, -9, $44, $00
    .byte -12, -9, $34, $00
    L_1C9268:
    .byte $90
    .byte $03
    .byte 4, -9, $34, $40
    .byte -4, -9, $44, $40
    .byte -12, -9, $54, $40
    L_1C9276:
    .byte $90
    .byte $03
    .byte 4, -10, $56, $00
    .byte -4, -10, $46, $00
    .byte -12, -10, $36, $00
    L_1C9284:
    .byte $90
    .byte $03
    .byte 4, -10, $36, $40
    .byte -4, -10, $46, $40
    .byte -12, -10, $56, $40
    L_1C9292:
    .byte $90
    .byte $03
    .byte 4, -11, $58, $00
    .byte -4, -11, $48, $00
    .byte -12, -11, $38, $00
    L_1C92A0:
    .byte $90
    .byte $03
    .byte 4, -11, $38, $40
    .byte -4, -11, $48, $40
    .byte -12, -11, $58, $40
    L_1C92AE:
    .byte $90
    .byte $06
    .byte 4, -25, $5A, $00
    .byte 4, -9, $5C, $00
    .byte -4, -25, $4A, $00
    .byte -4, -9, $4C, $00
    .byte -12, -9, $3C, $00
    .byte -12, -25, $3A, $00
    L_1C92C8:
    .byte $90
    .byte $06
    .byte -12, -25, $5A, $40
    .byte -4, -25, $4A, $40
    .byte 4, -25, $3A, $40
    .byte -12, -9, $5C, $40
    .byte -4, -9, $4C, $40
    .byte 4, -9, $3C, $40
    L_1C92E2:
    .byte $90
    .byte $06
    .byte -10, -25, $4E, $40
    .byte -10, -9, $3E, $40
    .byte 4, -25, $5A, $00
    .byte 4, -9, $5C, $00
    .byte -4, -25, $4A, $00
    .byte -4, -9, $4C, $00
    L_1C92FC:
    .byte $90
    .byte $06
    .byte -10, -25, $4E, $40
    .byte -10, -9, $3E, $40
    .byte -4, -25, $4A, $40
    .byte 4, -25, $3A, $40
    .byte -4, -9, $4C, $40
    .byte 4, -9, $3C, $40
    L_1C9316:
    .byte $90
    .byte $06
    .byte 4, -25, $5A, $00
    .byte 4, -9, $5C, $00
    .byte -4, -25, $4E, $00
    .byte -4, -9, $3E, $00
    .byte -12, -9, $3C, $00
    .byte -12, -25, $3A, $00
    L_1C9330:
    .byte $90
    .byte $06
    .byte -12, -25, $5A, $40
    .byte -4, -25, $4E, $40
    .byte 4, -25, $3A, $40
    .byte -12, -9, $5C, $40
    .byte -4, -9, $3E, $40
    .byte 4, -9, $3C, $40
    L_1C934A:
    .byte $90
    .byte $06
    .byte 2, -25, $4E, $00
    .byte 2, -9, $3E, $00
    .byte -4, -25, $4A, $00
    .byte -4, -9, $4C, $00
    .byte -12, -9, $3C, $00
    .byte -12, -25, $3A, $00
    L_1C9364:
    .byte $90
    .byte $06
    .byte 2, -25, $4E, $40
    .byte 2, -9, $3E, $40
    .byte -12, -25, $5A, $40
    .byte -4, -25, $4A, $40
    .byte -12, -9, $5C, $40
    .byte -4, -9, $4C, $40
    L_1C937E:
    .byte $8E
    .byte $06
    .byte 4, -1, $3A, $00
    .byte 4, -17, $38, $00
    .byte -4, -1, $2A, $00
    .byte -4, -17, $28, $00
    .byte -12, -1, $36, $00
    .byte -12, -17, $34, $00
    L_1C9398:
    .byte $8E
    .byte $06
    .byte -12, -1, $3A, $40
    .byte -12, -17, $38, $40
    .byte -4, -1, $2A, $40
    .byte -4, -17, $28, $40
    .byte 4, -1, $36, $40
    .byte 4, -17, $34, $40
    L_1C93B2:
    .byte $8E
    .byte $06
    .byte 4, -1, $26, $00
    .byte 4, -17, $40, $00
    .byte -4, -1, $3E, $00
    .byte -4, -17, $3C, $00
    .byte -12, -1, $2E, $00
    .byte -12, -17, $2C, $00
    L_1C93CC:
    .byte $8E
    .byte $06
    .byte -12, -1, $26, $40
    .byte -12, -17, $40, $40
    .byte -4, -1, $3E, $40
    .byte -4, -17, $3C, $40
    .byte 4, -1, $2E, $40
    .byte 4, -17, $2C, $40
    L_1C93E6:
    .byte $8E
    .byte $06
    .byte 4, -1, $26, $00
    .byte 4, -17, $24, $00
    .byte -4, -1, $32, $00
    .byte -4, -17, $30, $00
    .byte -12, -1, $22, $00
    .byte -12, -17, $20, $00
    L_1C9400:
    .byte $8E
    .byte $06
    .byte -12, -1, $26, $40
    .byte -12, -17, $24, $40
    .byte -4, -1, $32, $40
    .byte -4, -17, $30, $40
    .byte 4, -1, $22, $40
    .byte 4, -17, $20, $40
    L_1C941A:
    .byte $8E
    .byte $06
    .byte 4, -1, $26, $00
    .byte 4, -17, $24, $00
    .byte -4, -1, $32, $00
    .byte -4, -17, $30, $00
    .byte -12, -1, $44, $80
    .byte -12, -17, $44, $00
    L_1C9434:
    .byte $8E
    .byte $06
    .byte -12, -1, $44, $80
    .byte -12, -17, $44, $40
    .byte -4, -1, $32, $40
    .byte -4, -17, $30, $40
    .byte 4, -1, $22, $40
    .byte 4, -17, $20, $40
    L_1C944E:
    .byte $8E
    .byte $06
    .byte 4, -1, $26, $00
    .byte 4, -17, $24, $00
    .byte -4, -1, $44, $80
    .byte -4, -17, $44, $00
    .byte -12, -1, $22, $00
    .byte -12, -17, $20, $00
    L_1C9468:
    .byte $8E
    .byte $06
    .byte -12, -1, $26, $40
    .byte -12, -17, $24, $40
    .byte -4, -1, $44, $80
    .byte -4, -17, $44, $40
    .byte 4, -1, $22, $40
    .byte 4, -17, $20, $40
    L_1C9482:
    .byte $8E
    .byte $06
    .byte 4, -1, $44, $80
    .byte 4, -17, $44, $00
    .byte -4, -1, $32, $00
    .byte -4, -17, $30, $00
    .byte -12, -1, $22, $00
    .byte -12, -17, $20, $00
    L_1C949C:
    .byte $8E
    .byte $06
    .byte -12, -1, $26, $40
    .byte -12, -17, $24, $40
    .byte -4, -1, $32, $40
    .byte -4, -17, $30, $40
    .byte 4, -1, $44, $80
    .byte 4, -17, $44, $40
    L_1C94B6:
    .byte $CE
    .byte $03
    .byte -7, -24, $16, $01
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_1C94C4:
    .byte $CE
    .byte $02
    .byte 0, -9, $1A, $C1
    .byte -8, -9, $1A, $01

L_1C94CE:
    .addr L_1C958C
    .addr L_1C9591
    .addr L_1C9688
    .addr L_1C968D
    .addr L_1C9692
    .addr L_1C9697
    .addr L_1C969C
    .addr L_1C96A1
    .addr L_1C96A6
    .addr L_1C96AB
    .addr L_1C9596
    .addr L_1C959B
    .addr L_1C95A4
    .addr L_1C95AD
    .addr L_1C95B6
    .addr L_1C95BB
    .addr L_1C95C0
    .addr L_1C95D9
    .addr L_1C95F2
    .addr L_1C960B
    .addr L_1C9624
    .addr L_1C963D
    .addr L_1C9656
    .addr L_1C966F
    .addr L_1C96B0
    .addr L_1C96BD
    .addr L_1C96CA
    .addr L_1C96D7
    .addr L_1C96E8
    .addr L_1C96F9
    .addr L_1C970A
    .addr L_1C971F
    .addr L_1C9734
    .addr L_1C9749
    .addr L_1C975E
    .addr L_1C9773
    .addr L_1C9788
    .addr L_1C979D
    .addr L_1C97B2
    .addr L_1C97BF
    .addr L_1C97CC
    .addr L_1C97D9
    .addr L_1C97E2
    .addr L_1C97EB
    .addr L_1C97F8
    .addr L_1C9801
    .addr L_1C980A
    .addr L_1C9813
    .addr L_1C981C
    .addr L_1C9825
    .addr L_1C996D
    .addr L_1C982E
    .addr L_1C985F
    .addr L_1C9890
    .addr L_1C98B9
    .addr L_1C98E2
    .addr L_1C9913
    .addr L_1C9944
    .addr L_1C9A39
    .addr L_1C9996
    .addr L_1C99AF
    .addr L_1C99C8
    .addr L_1C99DD
    .addr L_1C99F2
    .addr L_1C9A0B
    .addr L_1C9A24
    .addr L_1C9A4E
    .addr L_1C9A53
    .addr L_1C9A58
    .addr L_1C9A5D
    .addr L_1C9A62
    .addr L_1C9A67
    .addr L_1C9A6C
    .addr L_1C9A71
    .addr L_1C9A92
    .addr L_1C9AD3
    .addr L_1C9B14
    .addr L_1C9B55
    .addr L_1C9B96
    .addr L_1C9BD7
    .addr L_1C9BF8
    .addr L_1C9C19
    .addr L_1C9C3A
    .addr L_1C9C5B
    .addr L_1C9C7C
    .addr L_1C9C81
    .addr L_1C9C86
    .addr L_1C9C8F
    .addr L_1C9C98
    .addr L_1C9CA1
    .addr L_1C9CAA
    .addr L_1C9CB3
    .addr L_1C9CBC
    .addr L_1C9CC5
    .addr L_1C9CCE

    L_1C958C:
    .byte $01
    .byte -4, -5, $23, $01
    L_1C9591:
    .byte $01
    .byte -4, -5, $25, $01
    L_1C9596:
    .byte $01
    .byte -4, -5, $72, $01
    L_1C959B:
    .byte $02
    .byte 0, -9, $6A, $41
    .byte -8, -9, $6A, $01
    L_1C95A4:
    .byte $02
    .byte 0, -9, $7E, $C1
    .byte -8, -9, $7E, $01
    L_1C95AD:
    .byte $02
    .byte 0, -9, $7C, $C1
    .byte -8, -9, $7C, $01
    L_1C95B6:
    .byte $01
    .byte -4, -5, $23, $01
    L_1C95BB:
    .byte $01
    .byte -4, -5, $25, $01
    L_1C95C0:
    .byte $06
    .byte 0, -16, $6A, $C1
    .byte -8, -16, $6A, $01
    .byte 15, -12, $7C, $C1
    .byte 7, -12, $7C, $01
    .byte -15, -6, $7C, $C1
    .byte -23, -6, $7C, $01
    L_1C95D9:
    .byte $06
    .byte 5, -14, $6A, $41
    .byte -3, -14, $6A, $01
    .byte -21, -18, $7E, $01
    .byte -13, -18, $7E, $C1
    .byte 4, 0, $7E, $01
    .byte 12, 0, $7E, $C1
    L_1C95F2:
    .byte $06
    .byte 7, -9, $6A, $C1
    .byte -1, -9, $6A, $01
    .byte -5, 6, $7C, $01
    .byte 3, 6, $7C, $C1
    .byte -3, -24, $7C, $C1
    .byte -11, -24, $7C, $01
    L_1C960B:
    .byte $06
    .byte 5, -4, $6A, $C1
    .byte -3, -4, $6A, $01
    .byte 12, -18, $7E, $C1
    .byte 4, -18, $7E, $01
    .byte -13, 0, $7E, $C1
    .byte -21, 0, $7E, $01
    L_1C9624:
    .byte $06
    .byte 0, -2, $6A, $C1
    .byte -8, -2, $6A, $01
    .byte 15, -6, $7C, $C1
    .byte 7, -6, $7C, $01
    .byte -15, -12, $7C, $C1
    .byte -23, -12, $7C, $01
    L_1C963D:
    .byte $06
    .byte -5, -4, $6A, $41
    .byte -13, -4, $6A, $01
    .byte -17, -22, $7E, $01
    .byte -9, -22, $7E, $C1
    .byte 0, 4, $7E, $01
    .byte 8, 4, $7E, $C1
    L_1C9656:
    .byte $06
    .byte -7, -9, $6A, $C1
    .byte -15, -9, $6A, $01
    .byte -3, 6, $7C, $C1
    .byte -11, 6, $7C, $01
    .byte -5, -24, $7C, $01
    .byte 3, -24, $7C, $C1
    L_1C966F:
    .byte $06
    .byte -5, -14, $6A, $C1
    .byte -13, -14, $6A, $01
    .byte 8, -22, $7E, $C1
    .byte 0, -22, $7E, $01
    .byte -9, 4, $7E, $C1
    .byte -17, 4, $7E, $01
    L_1C9688:
    .byte $01
    .byte -4, -9, $5A, $41
    L_1C968D:
    .byte $01
    .byte -4, -9, $5A, $01
    L_1C9692:
    .byte $01
    .byte -4, 0, $19, $01
    L_1C9697:
    .byte $01
    .byte -4, 0, $19, $41
    L_1C969C:
    .byte $01
    .byte -4, -9, $18, $01
    L_1C96A1:
    .byte $01
    .byte -4, -9, $18, $41
    L_1C96A6:
    .byte $01
    .byte -4, -9, $08, $01
    L_1C96AB:
    .byte $01
    .byte -4, -9, $08, $41
    L_1C96B0:
    .byte $03
    .byte -5, -15, $21, $81
    .byte -1, -9, $37, $41
    .byte -7, -9, $37, $01
    L_1C96BD:
    .byte $03
    .byte -6, -21, $21, $81
    .byte 0, -9, $37, $41
    .byte -8, -9, $37, $01
    L_1C96CA:
    .byte $03
    .byte -7, -24, $21, $81
    .byte 0, -9, $37, $41
    .byte -8, -9, $37, $01
    L_1C96D7:
    .byte $04
    .byte -2, -15, $21, $81
    .byte -8, -27, $21, $81
    .byte 0, -9, $39, $41
    .byte -8, -9, $39, $01
    L_1C96E8:
    .byte $04
    .byte -1, -21, $21, $81
    .byte -9, -29, $21, $81
    .byte 0, -9, $39, $41
    .byte -8, -9, $39, $01
    L_1C96F9:
    .byte $04
    .byte 0, -24, $21, $81
    .byte -10, -30, $21, $81
    .byte 0, -9, $39, $41
    .byte -8, -9, $39, $01
    L_1C970A:
    .byte $05
    .byte -4, -15, $21, $81
    .byte 1, -27, $21, $81
    .byte -11, -30, $21, $81
    .byte 0, -9, $39, $41
    .byte -8, -9, $39, $01
    L_1C971F:
    .byte $05
    .byte -4, -21, $21, $81
    .byte 2, -29, $21, $81
    .byte -12, -29, $21, $81
    .byte 0, -9, $39, $41
    .byte -8, -9, $39, $01
    L_1C9734:
    .byte $05
    .byte -4, -24, $21, $81
    .byte 3, -30, $21, $81
    .byte -13, -27, $21, $81
    .byte 0, -9, $39, $41
    .byte -8, -9, $39, $01
    L_1C9749:
    .byte $05
    .byte 0, -9, $39, $41
    .byte -8, -9, $39, $01
    .byte -4, -27, $21, $81
    .byte 4, -30, $21, $81
    .byte -14, -24, $21, $81
    L_1C975E:
    .byte $05
    .byte 0, -9, $37, $41
    .byte -8, -9, $37, $01
    .byte -4, -29, $21, $81
    .byte 5, -29, $21, $81
    .byte -15, -21, $21, $81
    L_1C9773:
    .byte $05
    .byte 0, -9, $37, $41
    .byte -8, -9, $37, $01
    .byte -4, -30, $21, $81
    .byte 6, -27, $21, $81
    .byte -16, -15, $21, $81
    L_1C9788:
    .byte $05
    .byte -8, -9, $37, $41
    .byte 0, -9, $37, $01
    .byte -4, -30, $21, $81
    .byte 7, -24, $21, $81
    .byte -16, -9, $21, $81
    L_1C979D:
    .byte $05
    .byte 1, -9, $37, $01
    .byte -9, -9, $37, $41
    .byte -18, -9, $37, $41
    .byte -4, -29, $21, $81
    .byte 8, -21, $21, $81
    L_1C97B2:
    .byte $03
    .byte -19, -9, $37, $41
    .byte -4, -27, $21, $81
    .byte 9, -15, $21, $81
    L_1C97BF:
    .byte $03
    .byte -19, -9, $37, $41
    .byte 9, -1, $21, $01
    .byte -4, -24, $21, $81
    L_1C97CC:
    .byte $03
    .byte -19, -9, $37, $41
    .byte 10, -9, $37, $01
    .byte -4, -21, $21, $81
    L_1C97D9:
    .byte $02
    .byte 11, -9, $37, $01
    .byte -4, -15, $21, $81
    L_1C97E2:
    .byte $02
    .byte 11, -9, $37, $01
    .byte -4, -9, $21, $81
    L_1C97EB:
    .byte $03
    .byte 11, -9, $37, $01
    .byte -2, -9, $37, $41
    .byte -6, -9, $37, $01
    L_1C97F8:
    .byte $02
    .byte -2, -9, $37, $41
    .byte -6, -9, $37, $01
    L_1C9801:
    .byte $02
    .byte 0, -9, $37, $41
    .byte -8, -9, $37, $01
    L_1C980A:
    .byte $02
    .byte 0, -9, $39, $41
    .byte -8, -9, $39, $01
    L_1C9813:
    .byte $02
    .byte 0, -9, $37, $01
    .byte -8, -9, $37, $41
    L_1C981C:
    .byte $02
    .byte 3, -9, $37, $01
    .byte -11, -9, $37, $41
    L_1C9825:
    .byte $02
    .byte 5, -9, $37, $01
    .byte -13, -9, $37, $41
    L_1C982E:
    .byte $0C
    .byte -77, 33, $48, $00
    .byte -69, 33, $58, $00
    .byte -86, 16, $2A, $00
    .byte -78, 17, $3A, $00
    .byte -70, 17, $4A, $00
    .byte -62, 17, $5A, $00
    .byte -8, 7, $58, $00
    .byte -16, 7, $48, $00
    .byte -24, -9, $2A, $00
    .byte -16, -9, $3A, $00
    .byte -8, -9, $4A, $00
    .byte 0, -9, $5A, $00
    L_1C985F:
    .byte $0C
    .byte -77, -51, $48, $80
    .byte -69, -51, $58, $80
    .byte -86, -34, $2A, $80
    .byte -78, -35, $3A, $80
    .byte -70, -35, $4A, $80
    .byte -62, -35, $5A, $80
    .byte -8, -25, $58, $80
    .byte -16, -25, $48, $80
    .byte -24, -9, $2A, $80
    .byte -16, -9, $3A, $80
    .byte -8, -9, $4A, $80
    .byte 0, -9, $5A, $80
    L_1C9890:
    .byte $0A
    .byte -39, -80, $1E, $C0
    .byte -31, -88, $3E, $C0
    .byte -23, -88, $2E, $C0
    .byte -31, -72, $3C, $C0
    .byte -23, -72, $2C, $C0
    .byte -16, -17, $1E, $C0
    .byte -8, -25, $3E, $C0
    .byte 0, -25, $2E, $C0
    .byte -8, -9, $3C, $C0
    .byte 0, -9, $2C, $C0
    L_1C98B9:
    .byte $0A
    .byte 31, -80, $1E, $80
    .byte 23, -88, $3E, $80
    .byte 15, -88, $2E, $80
    .byte 23, -72, $3C, $80
    .byte 15, -72, $2C, $80
    .byte 8, -17, $1E, $80
    .byte 0, -25, $3E, $80
    .byte -8, -25, $2E, $80
    .byte 0, -9, $3C, $80
    .byte -8, -9, $2C, $80
    L_1C98E2:
    .byte $0C
    .byte 69, -51, $48, $C0
    .byte 61, -51, $58, $C0
    .byte 78, -34, $2A, $C0
    .byte 70, -35, $3A, $C0
    .byte 62, -35, $4A, $C0
    .byte 54, -35, $5A, $C0
    .byte 0, -25, $58, $C0
    .byte 8, -25, $48, $C0
    .byte 16, -9, $2A, $C0
    .byte 8, -9, $3A, $C0
    .byte 0, -9, $4A, $C0
    .byte -8, -9, $5A, $C0
    L_1C9913:
    .byte $0C
    .byte 69, 33, $48, $40
    .byte 61, 33, $58, $40
    .byte 78, 16, $2A, $40
    .byte 70, 17, $3A, $40
    .byte 62, 17, $4A, $40
    .byte 54, 17, $5A, $40
    .byte 0, 7, $58, $40
    .byte 8, 7, $48, $40
    .byte 16, -9, $2A, $40
    .byte 8, -9, $3A, $40
    .byte 0, -9, $4A, $40
    .byte -8, -9, $5A, $40
    L_1C9944:
    .byte $0A
    .byte 31, 62, $1E, $00
    .byte 23, 70, $3E, $00
    .byte 15, 70, $2E, $00
    .byte 23, 54, $3C, $00
    .byte 15, 54, $2C, $00
    .byte 8, -1, $1E, $00
    .byte 0, 7, $3E, $00
    .byte -8, 7, $2E, $00
    .byte 0, -9, $3C, $00
    .byte -8, -9, $2C, $00
    L_1C996D:
    .byte $0A
    .byte -39, 62, $1E, $40
    .byte -31, 70, $3E, $40
    .byte -23, 70, $2E, $40
    .byte -31, 54, $3C, $40
    .byte -23, 54, $2C, $40
    .byte -16, -1, $1E, $40
    .byte -8, 7, $3E, $40
    .byte 0, 7, $2E, $40
    .byte -8, -9, $3C, $40
    .byte 0, -9, $2C, $40
    L_1C9996:
    .byte $06
    .byte -45, 20, $48, $00
    .byte -37, 20, $58, $00
    .byte -54, 3, $2A, $00
    .byte -46, 4, $3A, $00
    .byte -38, 4, $4A, $00
    .byte -30, 4, $5A, $00
    L_1C99AF:
    .byte $06
    .byte -45, -38, $48, $80
    .byte -37, -38, $58, $80
    .byte -54, -21, $2A, $80
    .byte -46, -22, $3A, $80
    .byte -38, -22, $4A, $80
    .byte -30, -22, $5A, $80
    L_1C99C8:
    .byte $05
    .byte -28, -48, $1E, $C0
    .byte -20, -56, $3E, $C0
    .byte -12, -56, $2E, $C0
    .byte -20, -40, $3C, $C0
    .byte -12, -40, $2C, $C0
    L_1C99DD:
    .byte $05
    .byte 20, -48, $1E, $80
    .byte 12, -56, $3E, $80
    .byte 4, -56, $2E, $80
    .byte 12, -40, $3C, $80
    .byte 4, -40, $2C, $80
    L_1C99F2:
    .byte $06
    .byte 37, -38, $48, $C0
    .byte 29, -38, $58, $C0
    .byte 46, -21, $2A, $C0
    .byte 38, -22, $3A, $C0
    .byte 30, -22, $4A, $C0
    .byte 22, -22, $5A, $C0
    L_1C9A0B:
    .byte $06
    .byte 37, 20, $48, $40
    .byte 29, 20, $58, $40
    .byte 46, 3, $2A, $40
    .byte 38, 4, $3A, $40
    .byte 30, 4, $4A, $40
    .byte 22, 4, $5A, $40
    L_1C9A24:
    .byte $05
    .byte 20, 30, $1E, $00
    .byte 12, 38, $3E, $00
    .byte 4, 38, $2E, $00
    .byte 12, 22, $3C, $00
    .byte 4, 22, $2C, $00
    L_1C9A39:
    .byte $05
    .byte -28, 30, $1E, $40
    .byte -20, 38, $3E, $40
    .byte -12, 38, $2E, $40
    .byte -20, 22, $3C, $40
    .byte -12, 22, $2C, $40
    L_1C9A4E:
    .byte $01
    .byte -4, -5, $50, $01
    L_1C9A53:
    .byte $01
    .byte -4, -5, $52, $01
    L_1C9A58:
    .byte $01
    .byte -4, -13, $50, $81
    L_1C9A5D:
    .byte $01
    .byte -4, -13, $60, $81
    L_1C9A62:
    .byte $01
    .byte -4, -13, $50, $C1
    L_1C9A67:
    .byte $01
    .byte -3, -13, $52, $C1
    L_1C9A6C:
    .byte $01
    .byte -4, -5, $60, $41
    L_1C9A71:
    .byte $08
    .byte 0, -25, $54, $C1
    .byte -8, -25, $54, $01
    .byte 0, 7, $54, $C1
    .byte -8, 7, $54, $01
    .byte 16, -9, $54, $C1
    .byte 8, -9, $54, $01
    .byte -16, -9, $54, $C1
    .byte -24, -9, $54, $01
    L_1C9A92:
    .byte $10
    .byte -8, -41, $54, $81
    .byte 0, -41, $54, $41
    .byte 24, -9, $54, $81
    .byte 32, -9, $54, $41
    .byte 0, 23, $54, $41
    .byte -8, 23, $54, $81
    .byte -40, -9, $54, $81
    .byte -32, -9, $54, $41
    .byte -4, -33, $56, $C1
    .byte -4, 15, $56, $01
    .byte -12, -1, $5A, $41
    .byte -12, -17, $4C, $41
    .byte -4, -17, $48, $41
    .byte 4, -17, $5A, $81
    .byte 4, -1, $4C, $81
    .byte -4, -1, $48, $81
    L_1C9AD3:
    .byte $10
    .byte -8, -57, $54, $01
    .byte 0, -57, $54, $C1
    .byte 40, -9, $54, $01
    .byte 48, -9, $54, $C1
    .byte 0, 39, $54, $C1
    .byte -8, 39, $54, $01
    .byte -56, -9, $54, $01
    .byte -48, -9, $54, $C1
    .byte -4, -33, $56, $C1
    .byte -4, 15, $56, $01
    .byte -12, -1, $5A, $41
    .byte -12, -17, $4C, $41
    .byte -4, -17, $48, $41
    .byte 4, -17, $5A, $81
    .byte 4, -1, $4C, $81
    .byte -4, -1, $48, $81
    L_1C9B14:
    .byte $10
    .byte 12, -21, $54, $41
    .byte 4, -21, $54, $81
    .byte 12, 3, $54, $C1
    .byte 4, 3, $54, $01
    .byte -12, 2, $54, $41
    .byte -20, 3, $54, $81
    .byte -12, -21, $54, $C1
    .byte -20, -21, $54, $01
    .byte -8, -73, $54, $81
    .byte 0, -73, $54, $41
    .byte 56, -9, $54, $81
    .byte 64, -9, $54, $41
    .byte 0, 55, $54, $41
    .byte -8, 55, $54, $81
    .byte -72, -9, $54, $81
    .byte -64, -9, $54, $41
    L_1C9B55:
    .byte $10
    .byte 16, -33, $54, $01
    .byte 24, -33, $54, $C1
    .byte 16, 15, $54, $81
    .byte 24, 15, $54, $41
    .byte -24, 15, $54, $C1
    .byte -32, 15, $54, $01
    .byte -24, -33, $54, $41
    .byte -32, -33, $54, $81
    .byte 12, -17, $5C, $01
    .byte -20, -1, $5C, $C1
    .byte -12, -17, $5A, $C1
    .byte -12, -1, $4C, $C1
    .byte -4, -1, $48, $C1
    .byte 4, -1, $5A, $01
    .byte 4, -17, $4C, $01
    .byte -4, -17, $48, $01
    L_1C9B96:
    .byte $10
    .byte 28, -45, $54, $81
    .byte 36, -45, $54, $41
    .byte 28, 27, $54, $01
    .byte 36, 27, $54, $C1
    .byte -36, 27, $54, $41
    .byte -44, 27, $54, $81
    .byte -36, -45, $54, $C1
    .byte -44, -45, $54, $01
    .byte 12, -17, $5C, $01
    .byte -20, -1, $5C, $C1
    .byte -12, -17, $5A, $C1
    .byte -12, -1, $4C, $C1
    .byte -4, -1, $48, $C1
    .byte 4, -1, $5A, $01
    .byte 4, -17, $4C, $01
    .byte -4, -17, $48, $01
    L_1C9BD7:
    .byte $08
    .byte 40, -57, $54, $01
    .byte 48, -57, $54, $C1
    .byte 40, 39, $54, $81
    .byte 48, 39, $54, $41
    .byte -48, 39, $54, $C1
    .byte -56, 39, $54, $01
    .byte -48, -57, $54, $41
    .byte -56, -57, $54, $81
    L_1C9BF8:
    .byte $08
    .byte -20, -17, $4A, $41
    .byte 12, -1, $4A, $81
    .byte -12, -1, $5A, $41
    .byte -12, -17, $58, $41
    .byte -4, -17, $48, $41
    .byte 4, -17, $5A, $81
    .byte 4, -1, $58, $81
    .byte -4, -1, $48, $81
    L_1C9C19:
    .byte $08
    .byte -20, -1, $4A, $C1
    .byte 12, -17, $4A, $01
    .byte -12, -17, $5A, $C1
    .byte -12, -1, $58, $C1
    .byte -4, -1, $48, $C1
    .byte 4, -1, $5A, $01
    .byte 4, -17, $58, $01
    .byte -4, -17, $48, $01
    L_1C9C3A:
    .byte $08
    .byte -4, -33, $56, $C1
    .byte -4, 15, $56, $01
    .byte -12, -1, $5A, $41
    .byte -12, -17, $4C, $41
    .byte -4, -17, $48, $41
    .byte 4, -17, $5A, $81
    .byte 4, -1, $4C, $81
    .byte -4, -1, $48, $81
    L_1C9C5B:
    .byte $08
    .byte 12, -17, $5C, $01
    .byte -20, -1, $5C, $C1
    .byte -12, -17, $5A, $C1
    .byte -12, -1, $4C, $C1
    .byte -4, -1, $48, $C1
    .byte 4, -1, $5A, $01
    .byte 4, -17, $4C, $01
    .byte -4, -17, $48, $01
    L_1C9C7C:
    .byte $01
    .byte -4, -5, $23, $01
    L_1C9C81:
    .byte $01
    .byte -4, -5, $25, $01
    L_1C9C86:
    .byte $02
    .byte 0, -9, $16, $C1
    .byte -8, -9, $16, $01
    L_1C9C8F:
    .byte $02
    .byte 0, -9, $06, $C1
    .byte -8, -9, $06, $01
    L_1C9C98:
    .byte $02
    .byte 0, -9, $7A, $41
    .byte -8, -9, $7A, $01
    L_1C9CA1:
    .byte $02
    .byte 0, -9, $78, $01
    .byte -8, -9, $76, $01
    L_1C9CAA:
    .byte $02
    .byte 0, -9, $7A, $C1
    .byte -8, -9, $7A, $81
    L_1C9CB3:
    .byte $02
    .byte 0, -9, $76, $41
    .byte -8, -9, $78, $41
    L_1C9CBC:
    .byte $02
    .byte 0, -9, $68, $C1
    .byte -8, -9, $68, $01
    L_1C9CC5:
    .byte $02
    .byte 0, -9, $1B, $C1
    .byte -8, -9, $1B, $01
    L_1C9CCE:
    .byte $02
    .byte 0, -9, $1D, $C1
    .byte -8, -9, $1D, $01

L_1C9CD7:
    .addr L_1C9D37
    .addr L_1C9D40
    .addr L_1C9D49
    .addr L_1C9D52
    .addr L_1C9D5B
    .addr L_1C9D64
    .addr L_1C9D6D
    .addr L_1C9D76
    .addr L_1C9D7F
    .addr L_1C9D88
    .addr L_1C9D91
    .addr L_1C9D9A
    .addr L_1C9DA3
    .addr L_1C9DAC
    .addr L_1C9DB5
    .addr L_1C9DBE
    .addr L_1C9DC7
    .addr L_1C9DD0
    .addr L_1C9DD9
    .addr L_1C9DE2
    .addr L_1C9DEB
    .addr L_1C9DF8
    .addr L_1C9E05
    .addr L_1C9E12
    .addr L_1C9E1F
    .addr L_1C9E2C
    .addr L_1C9E39
    .addr L_1C9E46
    .addr L_1C9E53
    .addr L_1C9E5C
    .addr L_1C9E65
    .addr L_1C9E6E
    .addr L_1C9EC5
    .addr L_1C9E77
    .addr L_1C9ECA
    .addr L_1C9E80
    .addr L_1C9ECF
    .addr L_1C9E89
    .addr L_1C9ED8
    .addr L_1C9E96
    .addr L_1C9EE1
    .addr L_1C9EA3
    .addr L_1C9EEA
    .addr L_1C9EB4
    .addr L_1C9EF3
    .addr L_1C9EF8
    .addr L_1C9EFD
    .addr L_1C9F02

    L_1C9D37:
    .byte $02
    .byte -8, -9, $17, $01
    .byte 0, -9, $13, $01
    L_1C9D40:
    .byte $02
    .byte 0, -9, $17, $41
    .byte -8, -9, $13, $41
    L_1C9D49:
    .byte $02
    .byte -8, -9, $33, $01
    .byte 0, -9, $31, $01
    L_1C9D52:
    .byte $02
    .byte 0, -9, $33, $41
    .byte -8, -9, $31, $41
    L_1C9D5B:
    .byte $02
    .byte -8, -9, $33, $81
    .byte 0, -9, $31, $81
    L_1C9D64:
    .byte $02
    .byte 0, -9, $33, $C1
    .byte -8, -9, $31, $C1
    L_1C9D6D:
    .byte $02
    .byte -8, -9, $17, $81
    .byte 0, -9, $13, $81
    L_1C9D76:
    .byte $02
    .byte 0, -9, $17, $C1
    .byte -8, -9, $13, $C1
    L_1C9D7F:
    .byte $02
    .byte 0, -9, $50, $01
    .byte -8, -9, $40, $01
    L_1C9D88:
    .byte $02
    .byte -8, -9, $50, $41
    .byte 0, -9, $40, $41
    L_1C9D91:
    .byte $02
    .byte 0, -9, $32, $41
    .byte -8, -9, $32, $01
    L_1C9D9A:
    .byte $02
    .byte 0, -9, $32, $41
    .byte -8, -9, $32, $01
    L_1C9DA3:
    .byte $02
    .byte 0, -9, $52, $01
    .byte -8, -9, $42, $01
    L_1C9DAC:
    .byte $02
    .byte 0, -9, $42, $41
    .byte -8, -9, $52, $41
    L_1C9DB5:
    .byte $02
    .byte -8, -9, $2F, $01
    .byte 0, -9, $2D, $01
    L_1C9DBE:
    .byte $02
    .byte 0, -9, $2F, $41
    .byte -8, -9, $2D, $41
    L_1C9DC7:
    .byte $02
    .byte 0, -9, $7A, $41
    .byte -8, -9, $7A, $01
    L_1C9DD0:
    .byte $02
    .byte 0, -9, $78, $01
    .byte -8, -9, $76, $01
    L_1C9DD9:
    .byte $02
    .byte 0, -9, $7A, $C1
    .byte -8, -9, $7A, $81
    L_1C9DE2:
    .byte $02
    .byte 0, -9, $76, $41
    .byte -8, -9, $78, $41
    L_1C9DEB:
    .byte $03
    .byte -8, -7, $7A, $01
    .byte 0, -7, $7A, $41
    .byte -3, -14, $72, $41
    L_1C9DF8:
    .byte $03
    .byte -2, -7, $78, $01
    .byte -10, -7, $76, $01
    .byte 3, -11, $72, $41
    L_1C9E05:
    .byte $03
    .byte -12, -9, $7A, $81
    .byte -4, -9, $7A, $C1
    .byte 4, -7, $72, $41
    L_1C9E12:
    .byte $03
    .byte -2, -12, $76, $C1
    .byte -10, -12, $78, $C1
    .byte 3, -1, $72, $41
    L_1C9E1F:
    .byte $03
    .byte -8, -15, $7A, $01
    .byte 0, -15, $7A, $41
    .byte -3, -7, $72, $C1
    L_1C9E2C:
    .byte $03
    .byte -3, -12, $76, $01
    .byte 5, -12, $78, $01
    .byte -8, -9, $72, $81
    L_1C9E39:
    .byte $03
    .byte 5, -9, $7A, $C1
    .byte -3, -9, $7A, $81
    .byte -11, -7, $72, $01
    L_1C9E46:
    .byte $03
    .byte -4, -6, $78, $41
    .byte 4, -6, $76, $41
    .byte -9, -19, $72, $81
    L_1C9E53:
    .byte $02
    .byte -15, -16, $6E, $01
    .byte -7, -16, $6C, $01
    L_1C9E5C:
    .byte $02
    .byte -1, -16, $6C, $41
    .byte 7, -16, $6E, $41
    L_1C9E65:
    .byte $02
    .byte 7, -2, $6E, $C1
    .byte -1, -2, $6C, $C1
    L_1C9E6E:
    .byte $02
    .byte -15, -2, $6E, $81
    .byte -7, -2, $6C, $81
    L_1C9E77:
    .byte $02
    .byte -8, -13, $64, $81
    .byte -16, -13, $64, $81
    L_1C9E80:
    .byte $02
    .byte 0, -13, $64, $C1
    .byte 8, -13, $64, $C1
    L_1C9E89:
    .byte $03
    .byte -8, -13, $64, $81
    .byte -16, -13, $64, $81
    .byte -24, -5, $64, $01
    L_1C9E96:
    .byte $03
    .byte 0, -13, $64, $C1
    .byte 8, -13, $64, $C1
    .byte 16, -5, $64, $41
    L_1C9EA3:
    .byte $04
    .byte -8, -13, $64, $81
    .byte -16, -13, $64, $81
    .byte -24, -5, $64, $01
    .byte -32, -5, $64, $01
    L_1C9EB4:
    .byte $04
    .byte 0, -13, $64, $C1
    .byte 8, -13, $64, $C1
    .byte 16, -5, $64, $41
    .byte 24, -5, $64, $41
    L_1C9EC5:
    .byte $01
    .byte -4, -1, $11, $01
    L_1C9ECA:
    .byte $01
    .byte -4, -17, $11, $01
    L_1C9ECF:
    .byte $02
    .byte -4, 7, $11, $01
    .byte -4, -1, $11, $01
    L_1C9ED8:
    .byte $02
    .byte -4, -17, $11, $01
    .byte -4, -25, $11, $01
    L_1C9EE1:
    .byte $02
    .byte -4, 15, $11, $01
    .byte -4, -1, $11, $01
    L_1C9EEA:
    .byte $02
    .byte -4, -17, $11, $01
    .byte -4, -33, $11, $01
    L_1C9EF3:
    .byte $01
    .byte -4, -5, $15, $01
    L_1C9EF8:
    .byte $01
    .byte -4, -9, $66, $C1
    L_1C9EFD:
    .byte $01
    .byte -4, -9, $66, $41
    L_1C9F02:
    .byte $02
    .byte 0, -9, $2B, $C0
    .byte -8, -9, $2B, $00

L_1C9F0B:
    .addr L_1C9F0D
    L_1C9F0D:
    .byte $02
    .byte 0, -9, $05, $41
    .byte -8, -9, $05, $01

L_1C9F16:
    .addr L_1C9F34
    .addr L_1C9F3E
    .addr L_1C9F48
    .addr L_1C9F52
    .addr L_1C9F5C
    .addr L_1C9F66
    .addr L_1C9F70
    .addr L_1C9F76
    .addr L_1C9F80
    .addr L_1C9F8A
    .addr L_1C9F94
    .addr L_1C9F9E
    .addr L_1C9FA8
    .addr L_1C9FB2
    .addr L_1C9FBB

    L_1C9F34:
    .byte $80
    .byte $02
    .byte -8, -9, $08, $00
    .byte 0, -9, $18, $00
    L_1C9F3E:
    .byte $80
    .byte $02
    .byte 0, -9, $08, $40
    .byte -8, -9, $18, $40
    L_1C9F48:
    .byte $80
    .byte $02
    .byte -8, -9, $0A, $00
    .byte 0, -9, $14, $00
    L_1C9F52:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $14, $40
    L_1C9F5C:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $0C, $40
    L_1C9F66:
    .byte $80
    .byte $02
    .byte -8, -9, $0A, $00
    .byte 0, -9, $0C, $00
    L_1C9F70:
    .byte $CE
    .byte $01
    .byte 0, -9, $48, $00
    L_1C9F76:
    .byte $CE
    .byte $02
    .byte 4, -9, $58, $00
    .byte -4, -9, $48, $00
    L_1C9F80:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $0C, $40
    L_1C9F8A:
    .byte $80
    .byte $02
    .byte -8, -9, $0A, $00
    .byte 0, -9, $0C, $00
    L_1C9F94:
    .byte $80
    .byte $02
    .byte 0, -9, $0A, $40
    .byte -8, -9, $14, $40
    L_1C9F9E:
    .byte $80
    .byte $02
    .byte 0, -9, $08, $40
    .byte -8, -9, $18, $40
    L_1C9FA8:
    .byte $80
    .byte $02
    .byte -8, -9, $08, $00
    .byte 0, -9, $18, $00
    L_1C9FB2:
    .byte $02
    .byte 0, -9, $7E, $C1
    .byte -8, -9, $7E, $01
    L_1C9FBB:
    .byte $02
    .byte 0, -9, $7C, $C1
    .byte -8, -9, $7C, $01

L_1C9FC4:
    .addr L_1C9FCE
    .addr L_1C9FD7
    .addr L_1C9FE0
    .addr L_1C9FE9
    .addr L_1C9FF2

    L_1C9FCE:
    .byte $02
    .byte 0, -9, $3F, $42
    .byte -8, -9, $3F, $02
    L_1C9FD7:
    .byte $02
    .byte 0, -9, $3D, $01
    .byte -8, -9, $3B, $01
    L_1C9FE0:
    .byte $02
    .byte 0, -9, $3D, $00
    .byte -8, -9, $3B, $00
    L_1C9FE9:
    .byte $02
    .byte -8, -9, $DC, $41
    .byte 0, -9, $CC, $41
    L_1C9FF2:
    .byte $01
    .byte -4, -9, $35, $02
    L_1C9FF7:
    .byte $01
    .byte 48, 0, $20, $01

    .byte $02,$00,$96,$FF