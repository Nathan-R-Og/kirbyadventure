.segment "PRG30": absolute

L_308000:
    .addr L_308008
    .addr L_308011
    .addr L_30801A
    .addr L_308023

    L_308008:
    .byte $02
    .byte -8, -9, $90, $42
    .byte 0, -9, $84, $42
    L_308011:
    .byte $02
    .byte 0, -9, $90, $02
    .byte -8, -9, $84, $02
    L_30801A:
    .byte $02
    .byte -8, -9, $92, $42
    .byte 0, -9, $94, $42
    L_308023:
    .byte $02
    .byte 0, -9, $92, $02
    .byte -8, -9, $94, $02

L_30802C:
    .addr L_308038
    .addr L_308041
    .addr L_30804A
    .addr L_308053
    .addr L_30805C
    .addr L_308065

    L_308038:
    .byte $02
    .byte -9, -8, $90, $43
    .byte -1, -8, $80, $43
    L_308041:
    .byte $02
    .byte -1, -8, $90, $03
    .byte -9, -8, $80, $03
    L_30804A:
    .byte $02
    .byte -9, -8, $92, $43
    .byte -1, -8, $82, $43
    L_308053:
    .byte $02
    .byte -1, -8, $92, $03
    .byte -9, -8, $82, $03
    L_30805C:
    .byte $02
    .byte -9, -9, $90, $41
    .byte -1, -9, $80, $41
    L_308065:
    .byte $02
    .byte -1, -9, $90, $01
    .byte -9, -9, $80, $01

L_30806E:
    .addr L_30807E
    .addr L_308087
    .addr L_308090
    .addr L_308087
    .addr L_30807E
    .addr L_3080A2
    .addr L_308099
    .addr L_3080A2

    L_30807E:
    .byte $02
    .byte 0, -9, $86, $43
    .byte -8, -9, $86, $03
    L_308087:
    .byte $02
    .byte -8, -9, $98, $43
    .byte 0, -9, $88, $43
    L_308090:
    .byte $02
    .byte -8, -9, $9A, $43
    .byte 0, -9, $8A, $43
    L_308099:
    .byte $02
    .byte 0, -9, $9A, $03
    .byte -8, -9, $8A, $03
    L_3080A2:
    .byte $02
    .byte 0, -9, $98, $03
    .byte -8, -9, $88, $03

L_3080AB:
    .addr L_3080B7
    .addr L_3080BC
    .addr L_3080C1
    .addr L_3080C6
    .addr L_3080CB
    .addr L_3080D0

    L_3080B7:
    .byte $01
    .byte -4, -11, $96, $03
    L_3080BC:
    .byte $01
    .byte -2, -10, $96, $03
    L_3080C1:
    .byte $01
    .byte -2, -8, $96, $03
    L_3080C6:
    .byte $01
    .byte -4, -7, $96, $03
    L_3080CB:
    .byte $01
    .byte -6, -8, $96, $03
    L_3080D0:
    .byte $01
    .byte -6, -10, $96, $03

L_3080D5:
    .addr L_3080E5
    .addr L_3080EE
    .addr L_3080F7
    .addr L_308100
    .addr L_308109
    .addr L_308112
    .addr L_30811B
    .addr L_308124

    L_3080E5:
    .byte $02
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    L_3080EE:
    .byte $02
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    L_3080F7:
    .byte $02
    .byte -8, -9, $B2, $43
    .byte 0, -9, $A2, $43
    L_308100:
    .byte $02
    .byte 0, -9, $B2, $03
    .byte -8, -9, $A2, $03
    L_308109:
    .byte $02
    .byte -8, -9, $B4, $43
    .byte 0, -9, $A4, $43
    L_308112:
    .byte $02
    .byte 0, -9, $B4, $03
    .byte -8, -9, $A4, $03
    L_30811B:
    .byte $02
    .byte 0, -9, $A6, $43
    .byte -8, -9, $A6, $03
    L_308124:
    .byte $02
    .byte 0, -9, $B6, $41
    .byte -8, -9, $B6, $01

L_30812D:
    .addr L_30812F

    L_30812F:
    .byte $02
    .byte 0, -9, $A8, $C1
    .byte -8, -9, $A8, $01

L_308138:
    .addr L_308140
    .addr L_308149
    .addr L_308152
    .addr L_30815B

    L_308140:
    .byte $02
    .byte -9, -8, $D0, $42
    .byte -1, -8, $C0, $42
    L_308149:
    .byte $02
    .byte -1, -8, $D0, $02
    .byte -9, -8, $C0, $02
    L_308152:
    .byte $02
    .byte -9, -8, $D2, $42
    .byte -1, -8, $C2, $42
    L_30815B:
    .byte $02
    .byte -1, -8, $D2, $02
    .byte -9, -8, $C2, $02

L_308164:
    .addr L_308174
    .addr L_308185
    .addr L_308196
    .addr L_3081A7
    .addr L_3081B8
    .addr L_3081C9
    .addr L_3081DA
    .addr L_3081EB

    L_308174:
    .byte $04
    .byte -1, -6, $D4, $02
    .byte -9, -6, $C4, $02
    .byte -9, -22, $D0, $42
    .byte -1, -22, $C0, $42
    L_308185:
    .byte $04
    .byte -9, -6, $D4, $42
    .byte -1, -6, $C4, $42
    .byte -1, -22, $D0, $02
    .byte -9, -22, $C0, $02
    L_308196:
    .byte $04
    .byte -1, -6, $C4, $42
    .byte -9, -6, $D4, $42
    .byte -9, -22, $D2, $42
    .byte -1, -22, $C2, $42
    L_3081A7:
    .byte $04
    .byte -9, -6, $C4, $02
    .byte -1, -6, $D4, $02
    .byte -1, -22, $D2, $02
    .byte -9, -22, $C2, $02
    L_3081B8:
    .byte $04
    .byte -1, -6, $C4, $C2
    .byte -9, -6, $D4, $C2
    .byte -9, -22, $D0, $42
    .byte -1, -22, $C0, $42
    L_3081C9:
    .byte $04
    .byte -9, -6, $C4, $82
    .byte -1, -6, $D4, $82
    .byte -1, -22, $D0, $02
    .byte -9, -22, $C0, $02
    L_3081DA:
    .byte $04
    .byte -1, -6, $D4, $82
    .byte -9, -6, $C4, $82
    .byte -9, -22, $D2, $42
    .byte -1, -22, $C2, $42
    L_3081EB:
    .byte $04
    .byte -9, -6, $D4, $C2
    .byte -1, -6, $C4, $C2
    .byte -1, -22, $D2, $02
    .byte -9, -22, $C2, $02

L_3081FC:
    .addr L_30820C
    .addr L_30821D
    .addr L_30822E
    .addr L_30823F
    .addr L_308250
    .addr L_308261
    .addr L_308272
    .addr L_308283

    L_30820C:
    .byte $04
    .byte -1, -6, $D6, $02
    .byte -9, -6, $C6, $02
    .byte -9, -21, $D0, $42
    .byte -1, -21, $C0, $42
    L_30821D:
    .byte $04
    .byte -9, -6, $D6, $42
    .byte -1, -6, $C6, $42
    .byte -1, -21, $D0, $02
    .byte -9, -21, $C0, $02
    L_30822E:
    .byte $04
    .byte -1, -6, $C6, $42
    .byte -9, -6, $D6, $42
    .byte -9, -22, $D0, $42
    .byte -1, -22, $C0, $42
    L_30823F:
    .byte $04
    .byte -9, -6, $C6, $02
    .byte -1, -6, $D6, $02
    .byte -1, -22, $D0, $02
    .byte -9, -22, $C0, $02
    L_308250:
    .byte $04
    .byte -1, -6, $C6, $C2
    .byte -9, -6, $D6, $C2
    .byte -9, -22, $D2, $42
    .byte -1, -22, $C2, $42
    L_308261:
    .byte $04
    .byte -9, -6, $C6, $82
    .byte -1, -6, $D6, $82
    .byte -1, -22, $D2, $02
    .byte -9, -22, $C2, $02
    L_308272:
    .byte $04
    .byte -1, -6, $D6, $82
    .byte -9, -6, $C6, $82
    .byte -9, -22, $D2, $42
    .byte -1, -22, $C2, $42
    L_308283:
    .byte $04
    .byte -9, -6, $D6, $C2
    .byte -1, -6, $C6, $C2
    .byte -1, -22, $D2, $02
    .byte -9, -22, $C2, $02

L_308294:
    .addr L_30829C
    .addr L_3082A5
    .addr L_3082AE
    .addr L_3082B7

    L_30829C:
    .byte $02
    .byte 0, -9, $D4, $02
    .byte -8, -9, $C4, $02
    L_3082A5:
    .byte $02
    .byte -8, -9, $D4, $42
    .byte 0, -9, $C4, $42
    L_3082AE:
    .byte $02
    .byte -8, -9, $D4, $C2
    .byte 0, -9, $C4, $C2
    L_3082B7:
    .byte $02
    .byte 0, -9, $D4, $82
    .byte -8, -9, $C4, $82

L_3082C0:
    .addr L_3082C8
    .addr L_3082D1
    .addr L_3082DA
    .addr L_3082E3

    L_3082C8:
    .byte $02
    .byte 0, -9, $D6, $02
    .byte -8, -9, $C6, $02
    L_3082D1:
    .byte $02
    .byte -8, -9, $D6, $42
    .byte 0, -9, $C6, $42
    L_3082DA:
    .byte $02
    .byte -8, -9, $D6, $C2
    .byte 0, -9, $C6, $C2
    L_3082E3:
    .byte $02
    .byte 0, -9, $D6, $82
    .byte -8, -9, $C6, $82

L_3082EC:
    .addr L_3082F4
    .addr L_3082F9
    .addr L_3082FE
    .addr L_308307

    L_3082F4:
    .byte $01
    .byte -4, -9, $66, $C1
    L_3082F9:
    .byte $01
    .byte -4, -9, $66, $41
    L_3082FE:
    .byte $02
    .byte 0, -9, $7E, $C1
    .byte -8, -9, $7E, $01
    L_308307:
    .byte $02
    .byte 0, -9, $7C, $C1
    .byte -8, -9, $7C, $01

L_308310:
    .addr L_30832E
    .addr L_308337
    .addr L_308340
    .addr L_308349
    .addr L_308352
    .addr L_30835B
    .addr L_308364
    .addr L_30836D
    .addr L_308376
    .addr L_30837F
    .addr L_308388
    .addr L_308391
    .addr L_30839A
    .addr L_3083A3
    .addr L_3083AC

    L_30832E:
    .byte $02
    .byte -8, -9, $BA, $43
    .byte 0, -9, $AA, $43
    L_308337:
    .byte $02
    .byte 0, -9, $BA, $03
    .byte -8, -9, $AA, $03
    L_308340:
    .byte $02
    .byte -8, -9, $BE, $43
    .byte 0, -9, $AA, $43
    L_308349:
    .byte $02
    .byte 0, -9, $BE, $03
    .byte -8, -9, $AA, $03
    L_308352:
    .byte $02
    .byte -8, -9, $BC, $41
    .byte 0, -9, $AC, $41
    L_30835B:
    .byte $02
    .byte 0, -9, $BC, $01
    .byte -8, -9, $AC, $01
    L_308364:
    .byte $02
    .byte -8, -9, $AC, $01
    .byte 0, -9, $BC, $81
    L_30836D:
    .byte $02
    .byte 0, -9, $AC, $41
    .byte -8, -9, $BC, $C1
    L_308376:
    .byte $02
    .byte -8, -9, $BA, $41
    .byte 0, -9, $AA, $41
    L_30837F:
    .byte $02
    .byte 0, -9, $BA, $01
    .byte -8, -9, $AA, $01
    L_308388:
    .byte $02
    .byte -8, -9, $BC, $C1
    .byte 0, -9, $AC, $C1
    L_308391:
    .byte $02
    .byte 0, -9, $BC, $01
    .byte -8, -9, $AC, $01
    L_30839A:
    .byte $02
    .byte -8, -9, $BC, $41
    .byte 0, -9, $AC, $41
    L_3083A3:
    .byte $02
    .byte 0, -9, $BC, $81
    .byte -8, -9, $AC, $81
    L_3083AC:
    .byte $02
    .byte 0, -9, $AE, $01
    .byte -8, -9, $AE, $41

L_3083B5:
    .addr L_3083AC
    .addr L_3083BB
    .addr L_3083C4

    L_3083BB:
    .byte $02
    .byte 0, -5, $64, $01
    .byte -8, -5, $64, $01
    L_3083C4:
    .byte $04
    .byte 8, -13, $64, $C1
    .byte -16, -5, $64, $41
    .byte -8, -13, $64, $81
    .byte 0, -5, $64, $41

L_3083D5:
    .addr L_3083EB
    .addr L_3083F4
    .addr L_3083FD
    .addr L_308406
    .addr L_30840F
    .addr L_308418
    .addr L_308421
    .addr L_30842A
    .addr L_308433
    .addr L_30843C
    .addr L_308445

    L_3083EB:
    .byte $02
    .byte 0, -9, $CE, $43
    .byte -8, -9, $CE, $03
    L_3083F4:
    .byte $02
    .byte 0, -9, $E0, $43
    .byte -8, -9, $E0, $03
    L_3083FD:
    .byte $02
    .byte 0, -10, $DE, $43
    .byte -8, -10, $DE, $03
    L_308406:
    .byte $02
    .byte 0, -10, $DE, $C3
    .byte -8, -10, $DE, $83
    L_30840F:
    .byte $02
    .byte 0, -10, $CE, $41
    .byte -8, -10, $CE, $01
    L_308418:
    .byte $02
    .byte 0, -10, $DE, $41
    .byte -8, -10, $DE, $01
    L_308421:
    .byte $02
    .byte 0, -10, $DE, $C1
    .byte -8, -10, $DE, $81
    L_30842A:
    .byte $02
    .byte 0, -10, $B8, $01
    .byte -8, -10, $F0, $01
    L_308433:
    .byte $02
    .byte -8, -10, $B8, $41
    .byte 0, -10, $F0, $41
    L_30843C:
    .byte $02
    .byte -8, -10, $B8, $C1
    .byte 0, -10, $F0, $C1
    L_308445:
    .byte $02
    .byte 0, -10, $B8, $81
    .byte -8, -10, $F0, $81

L_30844E:
    .addr L_308452
    .addr L_308457

    L_308452:
    .byte $01
    .byte -4, -9, $66, $C1
    L_308457:
    .byte $01
    .byte -4, -9, $66, $41

L_30845C:
    .addr L_30846C
    .addr L_308475
    .addr L_30847E
    .addr L_308487
    .addr L_308490
    .addr L_308499
    .addr L_3084AB
    .addr L_3084A2

    L_30846C:
    .byte $02
    .byte -8, -9, $D8, $42
    .byte 0, -9, $C8, $42
    L_308475:
    .byte $02
    .byte 0, -9, $D8, $02
    .byte -8, -9, $C8, $02
    L_30847E:
    .byte $02
    .byte -8, -9, $DA, $42
    .byte 0, -9, $CA, $42
    L_308487:
    .byte $02
    .byte 0, -9, $DA, $02
    .byte -8, -9, $CA, $02
    L_308490:
    .byte $02
    .byte -8, -9, $DC, $42
    .byte 0, -9, $CC, $42
    L_308499:
    .byte $02
    .byte 0, -9, $DC, $02
    .byte -8, -9, $CC, $02
    L_3084A2:
    .byte $02
    .byte -8, -9, $DC, $C2
    .byte 0, -9, $CC, $C2
    L_3084AB:
    .byte $02
    .byte 0, -9, $DC, $82
    .byte -8, -9, $CC, $82

L_3084B4:
    .addr L_3084C4
    .addr L_3084CD
    .addr L_3084D6
    .addr L_3084DF
    .addr L_3084E8
    .addr L_3084F1
    .addr L_3084FA
    .addr L_308503

    L_3084C4:
    .byte $02
    .byte -9, -8, $F2, $42
    .byte -1, -8, $E2, $42
    L_3084CD:
    .byte $02
    .byte -1, -8, $F2, $02
    .byte -9, -8, $E2, $02
    L_3084D6:
    .byte $02
    .byte -9, -8, $F4, $42
    .byte -1, -8, $E4, $42
    L_3084DF:
    .byte $02
    .byte -1, -8, $F4, $02
    .byte -9, -8, $E4, $02
    L_3084E8:
    .byte $02
    .byte -7, -8, $E8, $42
    .byte 1, -8, $E6, $42
    L_3084F1:
    .byte $02
    .byte -3, -8, $E8, $02
    .byte -11, -8, $E6, $02
    L_3084FA:
    .byte $02
    .byte -7, -7, $E8, $42
    .byte 1, -7, $F6, $42
    L_308503:
    .byte $02
    .byte -3, -7, $E8, $02
    .byte -11, -7, $F6, $02

L_30850C:
    .addr L_308524
    .addr L_30852D
    .addr L_308536
    .addr L_30853F
    .addr L_308548
    .addr L_308551
    .addr L_30855A
    .addr L_308563
    .addr L_30856C
    .addr L_308575
    .addr L_30857E
    .addr L_308587

    L_308524:
    .byte $02
    .byte -9, -8, $FA, $43
    .byte -1, -8, $EA, $43
    L_30852D:
    .byte $02
    .byte -1, -8, $FA, $03
    .byte -9, -8, $EA, $03
    L_308536:
    .byte $02
    .byte -9, -8, $FC, $43
    .byte -1, -8, $EC, $43
    L_30853F:
    .byte $02
    .byte -1, -8, $FC, $03
    .byte -9, -8, $EC, $03
    L_308548:
    .byte $02
    .byte -9, -8, $FE, $43
    .byte -1, -8, $EE, $43
    L_308551:
    .byte $02
    .byte -1, -8, $FE, $03
    .byte -9, -8, $EE, $03
    L_30855A:
    .byte $02
    .byte -9, -8, $FE, $41
    .byte -1, -8, $EE, $41
    L_308563:
    .byte $02
    .byte -1, -8, $FE, $01
    .byte -9, -8, $EE, $01
    L_30856C:
    .byte $02
    .byte -9, -8, $FC, $43
    .byte -1, -8, $F8, $43
    L_308575:
    .byte $02
    .byte -1, -8, $FC, $03
    .byte -9, -8, $F8, $03
    L_30857E:
    .byte $02
    .byte -9, -8, $FC, $41
    .byte -1, -8, $F8, $41
    L_308587:
    .byte $02
    .byte -1, -8, $FC, $01
    .byte -9, -8, $F8, $01

L_308590:
    .addr L_3085A0
    .addr L_3085A9
    .addr L_3085B2
    .addr L_3085BB
    .addr L_3085C4
    .addr L_3085CD
    .addr L_3085D6
    .addr L_3085DF

    L_3085A0:
    .byte $02
    .byte -8, -9, $17, $01
    .byte 0, -9, $13, $01
    L_3085A9:
    .byte $02
    .byte 0, -9, $17, $41
    .byte -8, -9, $13, $41
    L_3085B2:
    .byte $02
    .byte -8, -9, $33, $01
    .byte 0, -9, $31, $01
    L_3085BB:
    .byte $02
    .byte 0, -9, $33, $41
    .byte -8, -9, $31, $41
    L_3085C4:
    .byte $02
    .byte -8, -9, $33, $81
    .byte 0, -9, $31, $81
    L_3085CD:
    .byte $02
    .byte 0, -9, $33, $C1
    .byte -8, -9, $31, $C1
    L_3085D6:
    .byte $02
    .byte -8, -9, $17, $81
    .byte 0, -9, $13, $81
    L_3085DF:
    .byte $02
    .byte 0, -9, $17, $C1
    .byte -8, -9, $13, $C1

L_3085E8:
    .addr L_308666
    .addr L_30866B
    .addr L_308674
    .addr L_308685
    .addr L_308696
    .addr L_3086A7
    .addr L_3086B8
    .addr L_3086C9
    .addr L_3086DA
    .addr L_3086EB
    .addr L_3086FC
    .addr L_30870D
    .addr L_30871E
    .addr L_30872F
    .addr L_308740
    .addr L_308751
    .addr L_308762
    .addr L_308773
    .addr L_308784
    .addr L_308795
    .addr L_3087A6
    .addr L_3087B7
    .addr L_3087C8
    .addr L_3087D9
    .addr L_3087EA
    .addr L_3087FB
    .addr L_30880C
    .addr L_30881D
    .addr L_30882E
    .addr L_30883F
    .addr L_308850
    .addr L_308861
    .addr L_308872
    .addr L_308883
    .addr L_308894
    .addr L_3088A5
    .addr L_3088B6
    .addr L_3088C7
    .addr L_3088D8
    .addr L_3088E9
    .addr L_3088FA
    .addr L_30890B
    .addr L_30891C
    .addr L_30892D
    .addr L_30893E
    .addr L_30894F
    .addr L_308960
    .addr L_308971
    .addr L_308982
    .addr L_308993
    .addr L_3089A4
    .addr L_3089B5
    .addr L_3089C6
    .addr L_3089D7
    .addr L_3089E8
    .addr L_3089F9
    .addr L_308A0A
    .addr L_308A1B
    .addr L_308A2C
    .addr L_308A3D
    .addr L_308A4E
    .addr L_308A5F
    .addr L_308A70

    L_308666:
    .byte $01
    .byte -5, -12, $72, $81
    L_30866B:
    .byte $02
    .byte -1, -8, $7A, $41
    .byte -9, -8, $7A, $01
    L_308674:
    .byte $04
    .byte -1, -8, $7A, $41
    .byte -9, -8, $7A, $01
    .byte -9, -15, $72, $C1
    .byte -1, 0, $72, $01
    L_308685:
    .byte $04
    .byte -1, -8, $7A, $41
    .byte -9, -8, $7A, $01
    .byte -11, -17, $72, $C1
    .byte 1, 2, $72, $01
    L_308696:
    .byte $04
    .byte -1, -8, $7A, $41
    .byte -9, -8, $7A, $01
    .byte -13, -20, $72, $C1
    .byte 2, 3, $72, $01
    L_3086A7:
    .byte $04
    .byte -1, -8, $78, $01
    .byte -9, -8, $76, $01
    .byte -14, -22, $72, $C1
    .byte 4, 5, $72, $01
    L_3086B8:
    .byte $04
    .byte -1, -8, $78, $01
    .byte -9, -8, $76, $01
    .byte -7, -2, $72, $01
    .byte -2, -14, $72, $C1
    L_3086C9:
    .byte $04
    .byte -1, -8, $78, $01
    .byte -9, -8, $76, $01
    .byte -9, 0, $72, $01
    .byte -1, -15, $72, $C1
    L_3086DA:
    .byte $04
    .byte -1, -8, $78, $01
    .byte -9, -8, $76, $01
    .byte -12, 3, $72, $01
    .byte 2, -18, $72, $C1
    L_3086EB:
    .byte $04
    .byte -1, -8, $7A, $C1
    .byte -9, -8, $7A, $81
    .byte -14, 4, $72, $01
    .byte 4, -21, $72, $C1
    L_3086FC:
    .byte $04
    .byte -1, -8, $7A, $C1
    .byte -9, -8, $7A, $81
    .byte 6, -25, $72, $C1
    .byte -18, 9, $72, $01
    L_30870D:
    .byte $04
    .byte -1, -8, $7A, $C1
    .byte -9, -8, $7A, $81
    .byte 8, -27, $72, $C1
    .byte -19, 10, $72, $01
    L_30871E:
    .byte $04
    .byte -1, -8, $7A, $C1
    .byte -9, -8, $7A, $81
    .byte 9, -28, $72, $C1
    .byte -20, 11, $72, $01
    L_30872F:
    .byte $04
    .byte -9, -8, $78, $41
    .byte -1, -8, $76, $41
    .byte 10, -29, $72, $C1
    .byte -21, 12, $72, $01
    L_308740:
    .byte $04
    .byte -9, -8, $78, $41
    .byte -1, -8, $76, $41
    .byte -22, 13, $72, $01
    .byte 11, -30, $72, $C1
    L_308751:
    .byte $04
    .byte -9, -8, $78, $41
    .byte -1, -8, $76, $41
    .byte -23, 14, $72, $01
    .byte 12, -31, $72, $C1
    L_308762:
    .byte $04
    .byte -5, 3, $72, $01
    .byte -5, -19, $72, $C1
    .byte -12, -4, $72, $01
    .byte 2, -12, $72, $C1
    L_308773:
    .byte $04
    .byte -5, 5, $72, $01
    .byte -5, -21, $72, $C1
    .byte -14, -4, $72, $01
    .byte 4, -12, $72, $C1
    L_308784:
    .byte $04
    .byte -5, 6, $72, $01
    .byte -5, -23, $72, $C1
    .byte -16, -4, $72, $01
    .byte 6, -12, $72, $C1
    L_308795:
    .byte $04
    .byte -5, 8, $72, $01
    .byte -5, -25, $72, $C1
    .byte -18, -4, $72, $01
    .byte 8, -12, $72, $C1
    L_3087A6:
    .byte $04
    .byte -5, 11, $72, $01
    .byte -5, -28, $72, $C1
    .byte -21, -4, $72, $01
    .byte 11, -12, $72, $C1
    L_3087B7:
    .byte $04
    .byte -5, 12, $72, $01
    .byte -5, -29, $72, $C1
    .byte -22, -4, $72, $01
    .byte 13, -12, $72, $C1
    L_3087C8:
    .byte $04
    .byte -5, 14, $72, $01
    .byte -5, -31, $72, $C1
    .byte -24, -4, $72, $01
    .byte 15, -12, $72, $C1
    L_3087D9:
    .byte $04
    .byte -4, -13, $72, $C1
    .byte -6, -14, $72, $C1
    .byte -4, -3, $72, $01
    .byte -6, -3, $72, $01
    L_3087EA:
    .byte $04
    .byte -2, -15, $72, $C1
    .byte -8, -16, $72, $C1
    .byte -2, -1, $72, $01
    .byte -8, -1, $72, $01
    L_3087FB:
    .byte $04
    .byte 0, -17, $72, $C1
    .byte -10, -18, $72, $C1
    .byte 0, 1, $72, $01
    .byte -10, 1, $72, $01
    L_30880C:
    .byte $04
    .byte 2, -19, $72, $C1
    .byte -12, -19, $72, $C1
    .byte 2, 3, $72, $01
    .byte -12, 3, $72, $01
    L_30881D:
    .byte $04
    .byte 4, -21, $72, $C1
    .byte -14, -21, $72, $C1
    .byte 4, 5, $72, $01
    .byte -14, 5, $72, $01
    L_30882E:
    .byte $04
    .byte 7, -24, $72, $C1
    .byte -17, -24, $72, $C1
    .byte 7, 8, $72, $01
    .byte -17, 8, $72, $01
    L_30883F:
    .byte $04
    .byte 8, -25, $72, $C1
    .byte -18, -25, $72, $C1
    .byte 8, 9, $72, $01
    .byte -18, 9, $72, $01
    L_308850:
    .byte $04
    .byte 9, -26, $72, $C1
    .byte -19, -26, $72, $C1
    .byte 9, 10, $72, $01
    .byte -19, 10, $72, $01
    L_308861:
    .byte $04
    .byte -4, -1, $72, $01
    .byte -1, -3, $72, $01
    .byte -2, -13, $72, $C1
    .byte -4, -15, $72, $C1
    L_308872:
    .byte $04
    .byte -3, 2, $72, $01
    .byte 1, -2, $72, $01
    .byte 1, -14, $72, $C1
    .byte -3, -18, $72, $C1
    L_308883:
    .byte $04
    .byte -2, 5, $72, $01
    .byte 4, -1, $72, $01
    .byte 4, -15, $72, $C1
    .byte -2, -21, $72, $C1
    L_308894:
    .byte $04
    .byte -1, 8, $72, $01
    .byte 7, 0, $72, $01
    .byte 7, -16, $72, $C1
    .byte -1, -24, $72, $C1
    L_3088A5:
    .byte $04
    .byte 0, 9, $72, $01
    .byte 9, 0, $72, $01
    .byte 9, -16, $72, $C1
    .byte 0, -27, $72, $C1
    L_3088B6:
    .byte $04
    .byte 0, 11, $72, $01
    .byte 10, 1, $72, $01
    .byte 10, -17, $72, $C1
    .byte 1, -28, $72, $C1
    L_3088C7:
    .byte $04
    .byte 0, 13, $72, $01
    .byte 12, 1, $72, $01
    .byte 12, -17, $72, $C1
    .byte 1, -30, $72, $C1
    L_3088D8:
    .byte $04
    .byte 1, 14, $72, $01
    .byte 13, 2, $72, $01
    .byte 13, -18, $72, $C1
    .byte 2, -31, $72, $C1
    L_3088E9:
    .byte $04
    .byte 2, 15, $72, $01
    .byte 15, 3, $72, $01
    .byte 15, -19, $72, $C1
    .byte 2, -33, $72, $C1
    L_3088FA:
    .byte $04
    .byte 3, 16, $72, $01
    .byte 15, 4, $72, $01
    .byte 15, -20, $72, $C1
    .byte 3, -34, $72, $C1
    L_30890B:
    .byte $04
    .byte 4, 17, $72, $01
    .byte 16, 5, $72, $01
    .byte 16, -21, $72, $C1
    .byte 3, -36, $72, $C1
    L_30891C:
    .byte $04
    .byte -6, -1, $72, $41
    .byte -9, -3, $72, $41
    .byte -8, -13, $72, $C1
    .byte -6, -15, $72, $C1
    L_30892D:
    .byte $04
    .byte -6, 2, $72, $41
    .byte -10, -2, $72, $41
    .byte -10, -14, $72, $C1
    .byte -6, -18, $72, $C1
    L_30893E:
    .byte $04
    .byte -8, 5, $72, $41
    .byte -14, -1, $72, $41
    .byte -14, -15, $72, $C1
    .byte -8, -21, $72, $C1
    L_30894F:
    .byte $04
    .byte -9, 8, $72, $41
    .byte -17, 0, $72, $41
    .byte -17, -16, $72, $C1
    .byte -9, -24, $72, $C1
    L_308960:
    .byte $04
    .byte -10, 9, $72, $41
    .byte -19, 0, $72, $41
    .byte -19, -16, $72, $C1
    .byte -10, -27, $72, $C1
    L_308971:
    .byte $04
    .byte -10, 11, $72, $41
    .byte -20, 1, $72, $41
    .byte -20, -17, $72, $C1
    .byte -11, -28, $72, $C1
    L_308982:
    .byte $04
    .byte -10, 13, $72, $41
    .byte -22, 1, $72, $41
    .byte -22, -17, $72, $C1
    .byte -11, -30, $72, $C1
    L_308993:
    .byte $04
    .byte -11, 14, $72, $41
    .byte -23, 2, $72, $41
    .byte -23, -18, $72, $C1
    .byte -12, -31, $72, $C1
    L_3089A4:
    .byte $04
    .byte -12, 15, $72, $41
    .byte -25, 3, $72, $41
    .byte -25, -19, $72, $C1
    .byte -12, -33, $72, $C1
    L_3089B5:
    .byte $04
    .byte -13, 16, $72, $41
    .byte -25, 4, $72, $41
    .byte -25, -20, $72, $C1
    .byte -13, -34, $72, $C1
    L_3089C6:
    .byte $04
    .byte -14, 17, $72, $41
    .byte -26, 5, $72, $41
    .byte -26, -21, $72, $C1
    .byte -13, -36, $72, $C1
    L_3089D7:
    .byte $04
    .byte -11, -1, $72, $01
    .byte -2, 2, $72, $01
    .byte -7, -18, $72, $C1
    .byte 1, -14, $72, $C1
    L_3089E8:
    .byte $04
    .byte -11, 2, $72, $01
    .byte 1, 2, $72, $01
    .byte -11, -18, $72, $C1
    .byte 1, -18, $72, $C1
    L_3089F9:
    .byte $04
    .byte 2, -22, $72, $C1
    .byte 5, 3, $72, $01
    .byte -15, -19, $72, $C1
    .byte -12, 6, $72, $01
    L_308A0A:
    .byte $04
    .byte 1, -26, $72, $C1
    .byte 9, 2, $72, $01
    .byte -19, -18, $72, $C1
    .byte -11, 10, $72, $01
    L_308A1B:
    .byte $04
    .byte -3, -30, $72, $C1
    .byte -7, 14, $72, $01
    .byte -23, -14, $72, $C1
    .byte 13, -2, $72, $01
    L_308A2C:
    .byte $04
    .byte -5, -32, $72, $C1
    .byte -5, 16, $72, $01
    .byte 15, -4, $72, $01
    .byte -25, -12, $72, $C1
    L_308A3D:
    .byte $04
    .byte -9, -32, $72, $C1
    .byte -1, 16, $72, $01
    .byte -25, 0, $72, $01
    .byte 15, -16, $72, $C1
    L_308A4E:
    .byte $04
    .byte -13, -32, $72, $C1
    .byte 3, 16, $72, $01
    .byte -25, 4, $72, $01
    .byte 15, -20, $72, $C1
    L_308A5F:
    .byte $04
    .byte -16, -30, $72, $C1
    .byte 6, 14, $72, $01
    .byte -23, 7, $72, $01
    .byte 13, -23, $72, $C1
    L_308A70:
    .byte $04
    .byte -20, -22, $72, $C1
    .byte 10, 6, $72, $01
    .byte -15, 11, $72, $01
    .byte 5, -27, $72, $C1

;unused?
L_308A81:
    .addr L_308A87
    .addr L_308A90
    .addr L_308A99

    L_308A87:
    .byte $02
    .byte 0, -9, $6A, $41
    .byte -8, -9, $6A, $01
    L_308A90:
    .byte $02
    .byte 0, -9, $7E, $C1
    .byte -8, -9, $7E, $01
    L_308A99:
    .byte $02
    .byte 0, -9, $7C, $C1
    .byte -8, -9, $7C, $01

L_308AA2:
    .addr L_308AB2
    .addr L_308ACB
    .addr L_308AE4
    .addr L_308AFD
    .addr L_308B16
    .addr L_308B2F
    .addr L_308B48
    .addr L_308B61

    L_308AB2:
    .byte $06
    .byte 0, -16, $6A, $C1
    .byte -8, -16, $6A, $01
    .byte 15, -12, $7C, $C1
    .byte 7, -12, $7C, $01
    .byte -15, -6, $7C, $C1
    .byte -23, -6, $7C, $01
    L_308ACB:
    .byte $06
    .byte 5, -14, $6A, $41
    .byte -3, -14, $6A, $01
    .byte -21, -18, $7E, $01
    .byte -13, -18, $7E, $C1
    .byte 4, 0, $7E, $01
    .byte 12, 0, $7E, $C1
    L_308AE4:
    .byte $06
    .byte 7, -9, $6A, $C1
    .byte -1, -9, $6A, $01
    .byte -5, 6, $7C, $01
    .byte 3, 6, $7C, $C1
    .byte -3, -24, $7C, $C1
    .byte -11, -24, $7C, $01
    L_308AFD:
    .byte $06
    .byte 5, -4, $6A, $C1
    .byte -3, -4, $6A, $01
    .byte 12, -18, $7E, $C1
    .byte 4, -18, $7E, $01
    .byte -13, 0, $7E, $C1
    .byte -21, 0, $7E, $01
    L_308B16:
    .byte $06
    .byte 0, -2, $6A, $C1
    .byte -8, -2, $6A, $01
    .byte 15, -6, $7C, $C1
    .byte 7, -6, $7C, $01
    .byte -15, -12, $7C, $C1
    .byte -23, -12, $7C, $01
    L_308B2F:
    .byte $06
    .byte -5, -4, $6A, $41
    .byte -13, -4, $6A, $01
    .byte -17, -22, $7E, $01
    .byte -9, -22, $7E, $C1
    .byte 0, 4, $7E, $01
    .byte 8, 4, $7E, $C1
    L_308B48:
    .byte $06
    .byte -7, -9, $6A, $C1
    .byte -15, -9, $6A, $01
    .byte -3, 6, $7C, $C1
    .byte -11, 6, $7C, $01
    .byte -5, -24, $7C, $01
    .byte 3, -24, $7C, $C1
    L_308B61:
    .byte $06
    .byte -5, -14, $6A, $C1
    .byte -13, -14, $6A, $01
    .byte 8, -22, $7E, $C1
    .byte 0, -22, $7E, $01
    .byte -9, 4, $7E, $C1
    .byte -17, 4, $7E, $01

L_308B7A:
    .addr L_308B8A
    .addr L_308B93
    .addr L_308B9C
    .addr L_308BA5
L_308B82:
    .addr L_308BAE
L_308B84:
    .addr L_308BB3
    .addr L_308BB8
    .addr L_308BBD

    L_308B8A:
    .byte $02
    .byte 0, -9, $7A, $41
    .byte -8, -9, $7A, $01
    L_308B93:
    .byte $02
    .byte 0, -9, $78, $01
    .byte -8, -9, $76, $01
    L_308B9C:
    .byte $02
    .byte 0, -9, $7A, $C1
    .byte -8, -9, $7A, $81
    L_308BA5:
    .byte $02
    .byte 0, -9, $76, $41
    .byte -8, -9, $78, $41
    L_308BAE:
    .byte $01
    .byte -4, -5, $72, $01
    L_308BB3:
    .byte $01
    .byte -4, -5, $23, $01
    L_308BB8:
    .byte $01
    .byte -4, -5, $25, $01
    L_308BBD:
    .byte $02
    .byte 0, -9, $68, $C1
    .byte -8, -9, $68, $01

L_308BC6:
    .addr L_308BDE
    .addr L_308BEB
    .addr L_308BF8
    .addr L_308C05
    .addr L_308C16
    .addr L_308C27
    .addr L_308C3C
    .addr L_308C51
    .addr L_308C62
    .addr L_308C73
    .addr L_308C84
    .addr L_308C8D

    L_308BDE:
    .byte $03
    .byte -2, 16, $41, $03
    .byte 6, -26, $41, $03
    .byte -7, -26, $41, $03
    L_308BEB:
    .byte $03
    .byte -2, 12, $43, $03
    .byte 6, -26, $43, $03
    .byte -7, -26, $43, $03
    L_308BF8:
    .byte $03
    .byte -2, 11, $43, $03
    .byte 6, -26, $4B, $03
    .byte -7, -26, $4B, $03
    L_308C05:
    .byte $04
    .byte -4, 12, $45, $43
    .byte 3, 12, $45, $03
    .byte 6, -25, $43, $03
    .byte -7, -26, $41, $03
    L_308C16:
    .byte $04
    .byte -3, 18, $45, $43
    .byte 4, 18, $45, $03
    .byte 10, -35, $43, $83
    .byte -5, -41, $41, $03
    L_308C27:
    .byte $05
    .byte 7, -12, $49, $01
    .byte -5, 12, $45, $43
    .byte 2, 12, $45, $03
    .byte 7, -23, $45, $03
    .byte -7, -26, $41, $03
    L_308C3C:
    .byte $05
    .byte 7, -11, $49, $01
    .byte -6, 10, $45, $43
    .byte 2, 10, $45, $03
    .byte 7, -22, $45, $03
    .byte -7, -22, $45, $43
    L_308C51:
    .byte $04
    .byte -4, 14, $47, $03
    .byte 4, 14, $4D, $03
    .byte 6, -26, $41, $03
    .byte -7, -26, $41, $03
    L_308C62:
    .byte $04
    .byte -8, 14, $47, $03
    .byte 0, 14, $4D, $03
    .byte 6, -26, $41, $03
    .byte -7, -26, $41, $03
    L_308C73:
    .byte $04
    .byte -11, 14, $47, $03
    .byte -3, 14, $4D, $03
    .byte 6, -26, $41, $03
    .byte -7, -26, $41, $03
    L_308C84:
    .byte $02
    .byte -8, -9, $51, $01
    .byte 0, -9, $53, $01
    L_308C8D:
    .byte $02
    .byte -8, -9, $0F, $02
    .byte 0, -9, $0D, $02

L_308C96:
    .addr L_308C9A
    .addr L_308C9F

    L_308C9A:
    .byte $01
    .byte -4, -9, $66, $C1
    L_308C9F:
    .byte $01
    .byte -4, -9, $66, $41

L_308CA4:
    .addr L_308CBA
    .addr L_308CCB
    .addr L_308CDC
    .addr L_308CED
    .addr L_308CFE
    .addr L_308D0F
    .addr L_308D20
    .addr L_308D31
    .addr L_308D42
    .addr L_308D53
    .addr L_308D64

    L_308CBA:
    .byte $04
    .byte -1, -24, $A8, $41
    .byte -9, -24, $A8, $01
    .byte -9, -8, $90, $43
    .byte -1, -8, $80, $43
    L_308CCB:
    .byte $04
    .byte -9, -24, $A8, $01
    .byte -1, -24, $A8, $41
    .byte -1, -8, $90, $03
    .byte -9, -8, $80, $03
    L_308CDC:
    .byte $04
    .byte -1, -23, $A8, $41
    .byte -9, -23, $A8, $01
    .byte -9, -8, $92, $43
    .byte -1, -8, $82, $43
    L_308CED:
    .byte $04
    .byte -9, -23, $A8, $01
    .byte -1, -23, $A8, $41
    .byte -1, -8, $92, $03
    .byte -9, -8, $82, $03
    L_308CFE:
    .byte $04
    .byte 0, -25, $A8, $41
    .byte -8, -25, $A8, $01
    .byte -8, -9, $90, $42
    .byte 0, -9, $84, $42
    L_308D0F:
    .byte $04
    .byte -8, -25, $A8, $01
    .byte 0, -25, $A8, $41
    .byte 0, -9, $90, $02
    .byte -8, -9, $84, $02
    L_308D20:
    .byte $04
    .byte 0, -24, $A8, $41
    .byte -8, -24, $A8, $01
    .byte -8, -9, $92, $42
    .byte 0, -9, $94, $42
    L_308D31:
    .byte $04
    .byte -8, -24, $A8, $01
    .byte 0, -24, $A8, $41
    .byte 0, -9, $92, $02
    .byte -8, -9, $94, $02
    L_308D42:
    .byte $04
    .byte -9, -23, $A8, $01
    .byte -1, -23, $A8, $41
    .byte -8, -9, $9A, $43
    .byte 0, -9, $8A, $43
    L_308D53:
    .byte $04
    .byte 1, -23, $A8, $41
    .byte -7, -23, $A8, $01
    .byte 0, -9, $9A, $03
    .byte -8, -9, $8A, $03
    L_308D64:
    .byte $02
    .byte 0, -9, $A8, $41
    .byte -8, -9, $A8, $01

L_308D6D:
    .addr L_308D9D
    .addr L_308DA6
    .addr L_308DAF
    .addr L_308DBC
    .addr L_308DC9
    .addr L_308DD6
    .addr L_308DE3
    .addr L_308DF0
    .addr L_308DFD
    .addr L_308E0A
    .addr L_308E17
    .addr L_308E28
    .addr L_308E39
    .addr L_308E4A
    .addr L_308E5B
    .addr L_308E6C
    .addr L_308E7D
    .addr L_308E8E
    .addr L_308E9F
    .addr L_308EAC
    .addr L_308EB9
    .addr L_308EC6
    .addr L_308ED3
    .addr L_308EE0

    L_308D9D:
    .byte $02
    .byte -8, -9, $DE, $43
    .byte 0, -9, $CE, $43
    L_308DA6:
    .byte $02
    .byte 0, -9, $DE, $03
    .byte -8, -9, $CE, $03
    L_308DAF:
    .byte $03
    .byte -8, -9, $DE, $43
    .byte 0, -9, $CE, $43
    .byte 4, -5, $B8, $41
    L_308DBC:
    .byte $03
    .byte 0, -9, $DE, $03
    .byte -8, -9, $CE, $03
    .byte -12, -5, $B8, $01
    L_308DC9:
    .byte $03
    .byte -8, -9, $F0, $43
    .byte 0, -9, $E0, $43
    .byte 7, -7, $B8, $41
    L_308DD6:
    .byte $03
    .byte 0, -9, $F0, $03
    .byte -8, -9, $E0, $03
    .byte -15, -7, $B8, $01
    L_308DE3:
    .byte $03
    .byte -8, -9, $F0, $43
    .byte 0, -9, $E0, $43
    .byte 8, -10, $B8, $41
    L_308DF0:
    .byte $03
    .byte 0, -9, $F0, $03
    .byte -8, -9, $E0, $03
    .byte -16, -10, $B8, $01
    L_308DFD:
    .byte $03
    .byte 0, -9, $CE, $43
    .byte -8, -9, $DE, $43
    .byte -11, -15, $B8, $01
    L_308E0A:
    .byte $03
    .byte -8, -9, $CE, $03
    .byte 0, -9, $DE, $03
    .byte 3, -15, $B8, $41
    L_308E17:
    .byte $04
    .byte -18, -21, $6E, $01
    .byte -10, -21, $6C, $01
    .byte -7, -9, $DE, $43
    .byte 1, -9, $CE, $43
    L_308E28:
    .byte $04
    .byte 10, -21, $6E, $41
    .byte 2, -21, $6C, $41
    .byte -1, -9, $DE, $03
    .byte -9, -9, $CE, $03
    L_308E39:
    .byte $04
    .byte 21, -20, $6E, $41
    .byte 13, -20, $6C, $41
    .byte -6, -9, $DE, $43
    .byte 2, -9, $CE, $43
    L_308E4A:
    .byte $04
    .byte -29, -20, $6E, $01
    .byte -21, -20, $6C, $01
    .byte -2, -9, $DE, $03
    .byte -10, -9, $CE, $03
    L_308E5B:
    .byte $04
    .byte 21, -1, $6E, $C1
    .byte 13, -1, $6C, $C1
    .byte -7, -9, $DE, $43
    .byte 1, -9, $CE, $43
    L_308E6C:
    .byte $04
    .byte -29, -1, $6E, $81
    .byte -21, -1, $6C, $81
    .byte -1, -9, $DE, $03
    .byte -9, -9, $CE, $03
    L_308E7D:
    .byte $04
    .byte -18, 0, $6E, $81
    .byte -10, 0, $6C, $81
    .byte -8, -9, $F0, $43
    .byte 0, -9, $E0, $43
    L_308E8E:
    .byte $04
    .byte 10, 0, $6E, $C1
    .byte 2, 0, $6C, $C1
    .byte 0, -9, $F0, $03
    .byte -8, -9, $E0, $03
    L_308E9F:
    .byte $03
    .byte -8, -5, $B8, $01
    .byte -8, -9, $F0, $43
    .byte 0, -9, $E0, $43
    L_308EAC:
    .byte $03
    .byte 0, -5, $B8, $41
    .byte 0, -9, $F0, $03
    .byte -8, -9, $E0, $03
    L_308EB9:
    .byte $03
    .byte -5, -6, $B8, $01
    .byte -8, -9, $F0, $43
    .byte 0, -9, $E0, $43
    L_308EC6:
    .byte $03
    .byte -3, -6, $B8, $41
    .byte 0, -9, $F0, $03
    .byte -8, -9, $E0, $03
    L_308ED3:
    .byte $03
    .byte -2, -7, $B8, $01
    .byte -8, -9, $F0, $43
    .byte 0, -9, $E0, $43
    L_308EE0:
    .byte $03
    .byte -6, -7, $B8, $41
    .byte 0, -9, $F0, $03
    .byte -8, -9, $E0, $03

L_308EED:
    .addr L_308EF9
    .addr L_308F02
    .addr L_308F0B
    .addr L_308F14
    .addr L_308F1D
    .addr L_308F26

    L_308EF9:
    .byte $02
    .byte -9, -8, $BA, $42
    .byte -1, -8, $AA, $42
    L_308F02:
    .byte $02
    .byte -1, -8, $BA, $02
    .byte -9, -8, $AA, $02
    L_308F0B:
    .byte $02
    .byte -9, -8, $BC, $42
    .byte -1, -8, $AC, $42
    L_308F14:
    .byte $02
    .byte -1, -8, $BC, $02
    .byte -9, -8, $AC, $02
    L_308F1D:
    .byte $02
    .byte -9, -8, $BE, $42
    .byte -1, -8, $AE, $42
    L_308F26:
    .byte $02
    .byte -1, -8, $BE, $02
    .byte -9, -8, $AE, $02

L_308F2F:
    .addr L_308F39
    .addr L_308F42
    .addr L_308F4B
    .addr L_308F54
    .addr L_308F59

    L_308F39:
    .byte $02
    .byte 0, -9, $9C, $03
    .byte -8, -9, $9C, $43
    L_308F42:
    .byte $02
    .byte 0, -9, $9C, $83
    .byte -8, -9, $9C, $C3
    L_308F4B:
    .byte $02
    .byte 0, -9, $8C, $43
    .byte -8, -9, $8C, $03
    L_308F54:
    .byte $01
    .byte -4, -9, $9E, $43
    L_308F59:
    .byte $02
    .byte 0, -9, $8E, $43
    .byte -8, -9, $8E, $03

L_308F62:
    .addr L_308F72
    .addr L_308F7B
    .addr L_308F84
    .addr L_308F8D
    .addr L_308F96
    .addr L_308F9F
    .addr L_308FA8
    .addr L_308FAD

    L_308F72:
    .byte $02
    .byte -9, -8, $F2, $43
    .byte -1, -8, $E2, $43
    L_308F7B:
    .byte $02
    .byte -1, -8, $F2, $03
    .byte -9, -8, $E2, $03
    L_308F84:
    .byte $02
    .byte -9, -8, $F4, $43
    .byte -1, -8, $E4, $43
    L_308F8D:
    .byte $02
    .byte -1, -8, $F4, $03
    .byte -9, -8, $E4, $03
    L_308F96:
    .byte $02
    .byte -9, -8, $F6, $43
    .byte -1, -8, $E6, $43
    L_308F9F:
    .byte $02
    .byte -1, -8, $F6, $03
    .byte -9, -8, $E6, $03
    L_308FA8:
    .byte $01
    .byte -5, -8, $E8, $41
    L_308FAD:
    .byte $01
    .byte -5, -8, $E8, $01

L_308FB2:
    .addr L_308FDA
    .addr L_308FE3
    .addr L_308FEC
    .addr L_308FF5
    .addr L_309010
    .addr L_309019
L_308FBE:
    .addr L_308FDA
    .addr L_308FE3
    .addr L_308FEC
    .addr L_308FF5
    .addr L_308FFE
    .addr L_309007
    .addr L_309010
    .addr L_309019
    .addr L_309022
    .addr L_30902B
    .addr L_309034
    .addr L_30903D
    .addr L_309046
    .addr L_30904F

    L_308FDA:
    .byte $02
    .byte -9, -8, $D6, $43
    .byte -1, -8, $C6, $43
    L_308FE3:
    .byte $02
    .byte -1, -8, $D6, $03
    .byte -9, -8, $C6, $03
    L_308FEC:
    .byte $02
    .byte -1, -8, $C4, $43
    .byte -9, -8, $D4, $43
    L_308FF5:
    .byte $02
    .byte -9, -8, $C4, $03
    .byte -1, -8, $D4, $03
    L_308FFE:
    .byte $02
    .byte -1, -8, $D4, $83
    .byte -9, -8, $D0, $83
    L_309007:
    .byte $02
    .byte -9, -8, $D4, $C3
    .byte -1, -8, $D0, $C3
    L_309010:
    .byte $02
    .byte -9, -8, $D2, $43
    .byte -1, -8, $C2, $43
    L_309019:
    .byte $02
    .byte -1, -8, $D2, $03
    .byte -9, -8, $C2, $03
    L_309022:
    .byte $02
    .byte -9, -8, $D4, $43
    .byte -1, -8, $D0, $43
    L_30902B:
    .byte $02
    .byte -1, -8, $D4, $03
    .byte -9, -8, $D0, $03
    L_309034:
    .byte $02
    .byte -1, -8, $D2, $83
    .byte -9, -8, $C2, $83
    L_30903D:
    .byte $02
    .byte -9, -8, $D2, $C3
    .byte -1, -8, $C2, $C3
    L_309046:
    .byte $02
    .byte -1, -8, $C0, $43
    .byte -9, -8, $C0, $03
    L_30904F:
    .byte $02
    .byte -1, -8, $C0, $C3
    .byte -9, -8, $C0, $83

L_309058:
    .addr L_309078
    .addr L_309081
    .addr L_30908A
    .addr L_309093
    .addr L_30909C
    .addr L_3090A5
    .addr L_3090AE
    .addr L_3090B7
    .addr L_3090C0
    .addr L_3090C9
    .addr L_3090D2
    .addr L_3090DB
    .addr L_3090E4
    .addr L_3090ED
    .addr L_3090F6
    .addr L_3090FF

    L_309078:
    .byte $02
    .byte -1, -8, $B2, $02
    .byte -9, -8, $A2, $02
    L_309081:
    .byte $02
    .byte -9, -8, $B2, $42
    .byte -1, -8, $A2, $42
    L_30908A:
    .byte $02
    .byte -1, -8, $A0, $42
    .byte -9, -8, $B0, $42
    L_309093:
    .byte $02
    .byte -9, -8, $A0, $02
    .byte -1, -8, $B0, $02
    L_30909C:
    .byte $02
    .byte -1, -8, $B4, $42
    .byte -9, -8, $B4, $02
    L_3090A5:
    .byte $02
    .byte -1, -8, $B6, $02
    .byte -9, -8, $B6, $42
    L_3090AE:
    .byte $02
    .byte -9, -8, $B6, $42
    .byte -1, -8, $A6, $42
    L_3090B7:
    .byte $02
    .byte -1, -8, $B6, $02
    .byte -9, -8, $A6, $02
    L_3090C0:
    .byte $02
    .byte -1, -8, $A4, $42
    .byte -9, -8, $A4, $02
    L_3090C9:
    .byte $02
    .byte 1, -8, $F2, $02
    .byte -7, -8, $E2, $02
    L_3090D2:
    .byte $02
    .byte -8, -8, $F4, $42
    .byte 0, -8, $E4, $42
    L_3090DB:
    .byte $02
    .byte -2, -8, $F4, $02
    .byte -10, -8, $E4, $02
    L_3090E4:
    .byte $02
    .byte -11, -8, $F2, $42
    .byte -3, -8, $E2, $42
    L_3090ED:
    .byte $02
    .byte 0, -8, $F6, $02
    .byte -8, -8, $E6, $02
    L_3090F6:
    .byte $02
    .byte -10, -8, $F6, $42
    .byte -2, -8, $E6, $42
    L_3090FF:
    .byte $02
    .byte -1, -11, $E8, $42
    .byte -9, -11, $E8, $02

L_309108:
    .addr L_30919A
    .addr L_3091A7
    .addr L_3091B4
    .addr L_3091C1
L_309110:
    .addr L_309394
    .addr L_3093A5
    .addr L_3093B6
    .addr L_3093CB
    .addr L_3093E0
    .addr L_3093F5
    .addr L_3093B6
    .addr L_3093CB
L_309120:
    .addr L_3091CE
    .addr L_3091DF
    .addr L_3092C2
    .addr L_3092D7
    .addr L_3092EC
    .addr L_309301
    .addr L_309316
    .addr L_30932B
    .addr L_309340
    .addr L_309355
    .addr L_30936A
    .addr L_30937F
    .addr L_309340
    .addr L_309355
    .addr L_309316
    .addr L_30932B
    .addr L_3092EC
    .addr L_309301
    .addr L_3092C2
    .addr L_3092D7
    .addr L_3091CE
    .addr L_3091DF
    .addr L_3091F0
    .addr L_309205
    .addr L_30921A
    .addr L_30922F
    .addr L_309244
    .addr L_309259
    .addr L_30926E
    .addr L_309283
    .addr L_309298
    .addr L_3092AD
    .addr L_30926E
    .addr L_309283
    .addr L_309244
    .addr L_309259
    .addr L_30921A
    .addr L_30922F
    .addr L_3091F0
    .addr L_309205
    .addr L_309244
    .addr L_309259
L_309174:
    .addr L_309447
    .addr L_309458
    .addr L_30940A
    .addr L_309417
    .addr L_30942D
    .addr L_30943A
L_309180:
    .addr L_309424
L_309182:
    .addr L_309469
    .addr L_309472
    .addr L_30947B
    .addr L_309488
    .addr L_309495
    .addr L_3094A2
    .addr L_3094AF
    .addr L_3094BC
    .addr L_309495
    .addr L_3094A2
    .addr L_30947B
    .addr L_309488

    L_30919A:
    .byte $03
    .byte 0, -9, $A2, $43
    .byte 4, -9, $E8, $C3
    .byte -8, -9, $B2, $43
    L_3091A7:
    .byte $03
    .byte -8, -9, $A2, $03
    .byte -12, -9, $E8, $83
    .byte 0, -9, $B2, $03
    L_3091B4:
    .byte $03
    .byte 7, -9, $E8, $C3
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    L_3091C1:
    .byte $03
    .byte -15, -9, $E8, $03
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    L_3091CE:
    .byte $04
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte 0, -25, $E8, $C3
    .byte -8, -25, $E8, $03
    L_3091DF:
    .byte $04
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -8, -25, $E8, $83
    .byte 0, -25, $E8, $43
    L_3091F0:
    .byte $05
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte 0, -23, $F4, $83
    .byte -8, -25, $E8, $C3
    .byte -16, -25, $E8, $03
    L_309205:
    .byte $05
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -8, -23, $F4, $C3
    .byte 0, -25, $E8, $83
    .byte 8, -25, $E8, $43
    L_30921A:
    .byte $05
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte 1, -23, $F4, $83
    .byte -14, -25, $E8, $C3
    .byte -22, -25, $E8, $03
    L_30922F:
    .byte $05
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -9, -23, $F4, $C3
    .byte 6, -25, $E8, $83
    .byte 14, -25, $E8, $43
    L_309244:
    .byte $05
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte 1, -23, $F4, $83
    .byte -18, -25, $E8, $C3
    .byte -26, -25, $E8, $03
    L_309259:
    .byte $05
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -9, -23, $F4, $C3
    .byte 10, -25, $E8, $83
    .byte 18, -25, $E8, $43
    L_30926E:
    .byte $05
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte 1, -23, $F4, $83
    .byte -20, -25, $E8, $C3
    .byte -28, -25, $E8, $03
    L_309283:
    .byte $05
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -9, -23, $F4, $C3
    .byte 12, -25, $E8, $83
    .byte 20, -25, $E8, $43
    L_309298:
    .byte $05
    .byte 0, -9, $A0, $43
    .byte 1, -23, $F4, $83
    .byte -8, -9, $B0, $43
    .byte -21, -25, $E8, $C3
    .byte -29, -25, $E8, $03
    L_3092AD:
    .byte $05
    .byte -8, -9, $A0, $03
    .byte -9, -23, $F4, $C3
    .byte 0, -9, $B0, $03
    .byte 13, -25, $E8, $83
    .byte 21, -25, $E8, $43
    L_3092C2:
    .byte $05
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte -4, -23, $F4, $83
    .byte 8, -25, $E8, $C3
    .byte 0, -25, $E8, $03
    L_3092D7:
    .byte $05
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -4, -23, $F4, $C3
    .byte -16, -25, $E8, $83
    .byte -8, -25, $E8, $43
    L_3092EC:
    .byte $05
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte -6, -23, $F4, $83
    .byte 14, -25, $E8, $C3
    .byte 6, -25, $E8, $03
    L_309301:
    .byte $05
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -2, -23, $F4, $C3
    .byte -22, -25, $E8, $83
    .byte -14, -25, $E8, $43
    L_309316:
    .byte $05
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte -6, -23, $F4, $83
    .byte 18, -25, $E8, $C3
    .byte 10, -25, $E8, $03
    L_30932B:
    .byte $05
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -2, -23, $F4, $C3
    .byte -26, -25, $E8, $83
    .byte -18, -25, $E8, $43
    L_309340:
    .byte $05
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte -6, -23, $F4, $83
    .byte 20, -25, $E8, $C3
    .byte 12, -25, $E8, $03
    L_309355:
    .byte $05
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -2, -23, $F4, $C3
    .byte -28, -25, $E8, $83
    .byte -20, -25, $E8, $43
    L_30936A:
    .byte $05
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte -6, -23, $F4, $83
    .byte 21, -25, $E8, $C3
    .byte 13, -25, $E8, $03
    L_30937F:
    .byte $05
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -2, -23, $F4, $C3
    .byte -29, -25, $E8, $83
    .byte -21, -25, $E8, $43
    L_309394:
    .byte $04
    .byte -8, -9, $B2, $43
    .byte 0, -9, $A2, $43
    .byte 0, -17, $E8, $C3
    .byte -8, -17, $E8, $03
    L_3093A5:
    .byte $04
    .byte 0, -9, $B2, $03
    .byte -8, -9, $A2, $03
    .byte -8, -17, $E8, $83
    .byte 0, -17, $E8, $43
    L_3093B6:
    .byte $05
    .byte -8, -9, $B2, $43
    .byte 0, -9, $A2, $43
    .byte -3, -23, $F4, $C3
    .byte 0, -25, $E8, $C3
    .byte -8, -25, $E8, $03
    L_3093CB:
    .byte $05
    .byte 0, -9, $B2, $03
    .byte -8, -9, $A2, $03
    .byte -5, -23, $F4, $83
    .byte -8, -25, $E8, $83
    .byte 0, -25, $E8, $43
    L_3093E0:
    .byte $05
    .byte -3, -25, $F4, $C3
    .byte -8, -9, $B2, $43
    .byte 0, -9, $A2, $43
    .byte 0, -34, $E8, $C3
    .byte -8, -34, $E8, $03
    L_3093F5:
    .byte $05
    .byte -5, -25, $F4, $83
    .byte 0, -9, $B2, $03
    .byte -8, -9, $A2, $03
    .byte -8, -34, $E8, $83
    .byte 0, -34, $E8, $43
    L_30940A:
    .byte $03
    .byte 8, -1, $F4, $43
    .byte 0, -9, $A2, $43
    .byte -8, -9, $B2, $43
    L_309417:
    .byte $03
    .byte -16, -1, $F4, $03
    .byte -8, -9, $A2, $03
    .byte 0, -9, $B2, $03
    L_309424:
    .byte $02
    .byte 0, -9, $E8, $C3
    .byte -8, -9, $E8, $03
    L_30942D:
    .byte $03
    .byte 8, -9, $E8, $C3
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    L_30943A:
    .byte $03
    .byte -16, -9, $E8, $83
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    L_309447:
    .byte $04
    .byte -20, 1, $6E, $81
    .byte -12, 1, $6C, $81
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    L_309458:
    .byte $04
    .byte 12, 1, $6E, $C1
    .byte 4, 1, $6C, $C1
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    L_309469:
    .byte $02
    .byte 0, -9, $A2, $43
    .byte -8, -9, $B2, $43
    L_309472:
    .byte $02
    .byte -8, -9, $A2, $03
    .byte 0, -9, $B2, $03
    L_30947B:
    .byte $03
    .byte -8, -9, $B2, $43
    .byte 0, -9, $A2, $43
    .byte 2, -8, $E8, $43
    L_309488:
    .byte $03
    .byte 0, -9, $B2, $03
    .byte -8, -9, $A2, $03
    .byte -10, -8, $E8, $03
    L_309495:
    .byte $03
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte 5, -9, $E8, $43
    L_3094A2:
    .byte $03
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -13, -9, $E8, $03
    L_3094AF:
    .byte $03
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    .byte 7, -10, $E8, $43
    L_3094BC:
    .byte $03
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    .byte -15, -10, $E8, $03

L_3094C9:
    .addr L_309535
    .addr L_309542
    .addr L_30954F
    .addr L_30955C
    .addr L_309569
    .addr L_309576
    .addr L_309583
    .addr L_309590
    .addr L_309569
    .addr L_309576
    .addr L_30954F
    .addr L_30955C
L_3094E1:
    .addr L_30959D
    .addr L_3095AE
    .addr L_3095BF
    .addr L_3095D0
    .addr L_3095E1
    .addr L_3095F2
    .addr L_309659
    .addr L_30966A
    .addr L_30967B
    .addr L_309690
    .addr L_309659
    .addr L_30966A
    .addr L_3095E1
    .addr L_3095F2
    .addr L_3095BF
    .addr L_3095D0
    .addr L_30959D
    .addr L_3095AE
L_309505:
    .addr L_30959D
    .addr L_3095AE
    .addr L_3095BF
    .addr L_3095D0
    .addr L_3095E1
    .addr L_3095F2
    .addr L_309603
    .addr L_309614
    .addr L_309625
    .addr L_309632
    .addr L_30963F
    .addr L_30964C
    .addr L_309535
    .addr L_309542
    .addr L_30954F
    .addr L_30955C
    .addr L_309569
    .addr L_309576
    .addr L_309583
    .addr L_309590
L_30952D:
    .addr L_3096A5
    .addr L_3096AE
    .addr L_3096B7
    .addr L_3096C0

    L_309535:
    .byte $03
    .byte 0, -9, $C2, $43
    .byte 2, -10, $E4, $41
    .byte -8, -9, $D2, $43
    L_309542:
    .byte $03
    .byte -8, -9, $C2, $03
    .byte -10, -10, $E4, $01
    .byte 0, -9, $D2, $03
    L_30954F:
    .byte $03
    .byte 0, -9, $C2, $43
    .byte 4, -10, $E4, $41
    .byte -8, -9, $D2, $43
    L_30955C:
    .byte $03
    .byte -8, -9, $C2, $03
    .byte -12, -10, $E4, $01
    .byte 0, -9, $D2, $03
    L_309569:
    .byte $03
    .byte 0, -9, $C0, $43
    .byte 7, -11, $E4, $41
    .byte -8, -9, $D0, $43
    L_309576:
    .byte $03
    .byte -8, -9, $C0, $03
    .byte -15, -11, $E4, $01
    .byte 0, -9, $D0, $03
    L_309583:
    .byte $03
    .byte 8, -13, $E4, $41
    .byte -8, -9, $D0, $43
    .byte 0, -9, $C0, $43
    L_309590:
    .byte $03
    .byte -16, -13, $E4, $01
    .byte 0, -9, $D0, $03
    .byte -8, -9, $C0, $03
    L_30959D:
    .byte $04
    .byte -8, -9, $D2, $43
    .byte -8, -19, $E4, $C1
    .byte -16, -19, $E4, $01
    .byte 0, -9, $C2, $43
    L_3095AE:
    .byte $04
    .byte 0, -9, $D2, $03
    .byte 0, -19, $E4, $81
    .byte 8, -19, $E4, $41
    .byte -8, -9, $C2, $03
    L_3095BF:
    .byte $04
    .byte -8, -9, $D2, $43
    .byte 0, -9, $C2, $43
    .byte -19, -22, $6E, $01
    .byte -11, -22, $6C, $01
    L_3095D0:
    .byte $04
    .byte 0, -9, $D2, $03
    .byte -8, -9, $C2, $03
    .byte 11, -22, $6E, $41
    .byte 3, -22, $6C, $41
    L_3095E1:
    .byte $04
    .byte 0, -9, $C2, $43
    .byte -8, -9, $D2, $43
    .byte 14, -21, $6E, $41
    .byte 6, -21, $6C, $41
    L_3095F2:
    .byte $04
    .byte -8, -9, $C2, $03
    .byte 0, -9, $D2, $03
    .byte -22, -21, $6E, $01
    .byte -14, -21, $6C, $01
    L_309603:
    .byte $04
    .byte 0, -9, $C2, $43
    .byte 14, 1, $6E, $C1
    .byte 6, 1, $6C, $C1
    .byte -8, -9, $D2, $43
    L_309614:
    .byte $04
    .byte -8, -9, $C2, $03
    .byte -22, 1, $6E, $81
    .byte -14, 1, $6C, $81
    .byte 0, -9, $D2, $03
    L_309625:
    .byte $03
    .byte 0, 5, $F4, $03
    .byte -8, -9, $D0, $43
    .byte 0, -9, $C0, $43
    L_309632:
    .byte $03
    .byte -8, 5, $F4, $43
    .byte 0, -9, $D0, $03
    .byte -8, -9, $C0, $03
    L_30963F:
    .byte $03
    .byte -4, 3, $F4, $03
    .byte -8, -9, $D0, $43
    .byte 0, -9, $C0, $43
    L_30964C:
    .byte $03
    .byte -4, 3, $F4, $43
    .byte 0, -9, $D0, $03
    .byte -8, -9, $C0, $03
    L_309659:
    .byte $04
    .byte 0, -9, $C2, $43
    .byte 14, 5, $6E, $C1
    .byte 6, 5, $6C, $C1
    .byte -8, -9, $D2, $43
    L_30966A:
    .byte $04
    .byte -8, -9, $C2, $03
    .byte -22, 5, $6E, $81
    .byte -14, 5, $6C, $81
    .byte 0, -9, $D2, $03
    L_30967B:
    .byte $05
    .byte -6, 3, $F4, $43
    .byte -9, 3, $E4, $41
    .byte -17, 3, $E4, $81
    .byte -8, -9, $D0, $43
    .byte 0, -9, $C0, $43
    L_309690:
    .byte $05
    .byte -2, 3, $F4, $03
    .byte 1, 3, $E4, $01
    .byte 9, 3, $E4, $C1
    .byte 0, -9, $D0, $03
    .byte -8, -9, $C0, $03
    L_3096A5:
    .byte $02
    .byte -15, -17, $6E, $01
    .byte -7, -17, $6C, $01
    L_3096AE:
    .byte $02
    .byte -1, -17, $6C, $41
    .byte 7, -17, $6E, $41
    L_3096B7:
    .byte $02
    .byte 7, -3, $6E, $C1
    .byte -1, -3, $6C, $C1
    L_3096C0:
    .byte $02
    .byte -15, -3, $6E, $81
    .byte -7, -3, $6C, $81

L_3096C9:
    .addr L_30973F
    .addr L_309748
    .addr L_309751
    .addr L_30975A
    .addr L_309751
    .addr L_30975A
    .addr L_309763
    .addr L_30976C
    .addr L_309775
    .addr L_309782
    .addr L_30978F
    .addr L_3097A0
    .addr L_3097B1
    .addr L_3097C6
    .addr L_3097DB
    .addr L_3097F4
    .addr L_30980D
    .addr L_309826
    .addr L_3097DB
    .addr L_3097F4
    .addr L_3097B1
    .addr L_3097C6
    .addr L_30978F
    .addr L_3097A0
    .addr L_309775
    .addr L_309782
    .addr L_309751
    .addr L_30975A
    .addr L_30973F
    .addr L_309748
L_309705:
    .addr L_309775
    .addr L_309859
    .addr L_30986A
    .addr L_309782
    .addr L_30978F
    .addr L_309859
    .addr L_30986A
    .addr L_3097A0
    .addr L_3097B1
    .addr L_309859
    .addr L_30986A
    .addr L_3097C6
    .addr L_3097DB
    .addr L_3097F4
    .addr L_3097B1
    .addr L_309859
    .addr L_30986A
    .addr L_3097C6
    .addr L_30978F
    .addr L_309859
    .addr L_30986A
    .addr L_3097A0
    .addr L_309775
    .addr L_309859
    .addr L_30986A
    .addr L_309782
    .addr L_309782
L_30973B:
    .addr L_30983F
    .addr L_30984C

    L_30973F:
    .byte $02
    .byte -8, -9, $B6, $43
    .byte 0, -9, $A6, $43
    L_309748:
    .byte $02
    .byte 0, -9, $B6, $03
    .byte -8, -9, $A6, $03
    L_309751:
    .byte $02
    .byte -8, -9, $B4, $43
    .byte 0, -9, $A4, $43
    L_30975A:
    .byte $02
    .byte 0, -9, $B4, $03
    .byte -8, -9, $A4, $03
    L_309763:
    .byte $02
    .byte -8, -9, $B4, $41
    .byte 0, -9, $A4, $41
    L_30976C:
    .byte $02
    .byte 0, -9, $B4, $01
    .byte -8, -9, $A4, $01
    L_309775:
    .byte $03
    .byte 8, -5, $E6, $C1
    .byte -8, -9, $B4, $43
    .byte 0, -9, $A4, $43
    L_309782:
    .byte $03
    .byte -16, -5, $E6, $81
    .byte 0, -9, $B4, $03
    .byte -8, -9, $A4, $03
    L_30978F:
    .byte $04
    .byte 16, -5, $E6, $C1
    .byte 8, -3, $F6, $C1
    .byte -8, -9, $B4, $43
    .byte 0, -9, $A4, $43
    L_3097A0:
    .byte $04
    .byte -24, -5, $E6, $81
    .byte -16, -3, $F6, $81
    .byte 0, -9, $B4, $03
    .byte -8, -9, $A4, $03
    L_3097B1:
    .byte $05
    .byte 24, -5, $E6, $C1
    .byte 16, -15, $F6, $01
    .byte 8, -3, $F6, $C1
    .byte -8, -9, $B4, $43
    .byte 0, -9, $A4, $43
    L_3097C6:
    .byte $05
    .byte -32, -5, $E6, $81
    .byte -24, -15, $F6, $41
    .byte -16, -3, $F6, $81
    .byte 0, -9, $B4, $03
    .byte -8, -9, $A4, $03
    L_3097DB:
    .byte $06
    .byte 32, -13, $E6, $41
    .byte 24, -3, $F6, $C1
    .byte 16, -15, $F6, $01
    .byte 8, -3, $F6, $C1
    .byte -8, -9, $B4, $43
    .byte 0, -9, $A4, $43
    L_3097F4:
    .byte $06
    .byte -40, -13, $E6, $01
    .byte -32, -3, $F6, $81
    .byte -24, -15, $F6, $41
    .byte -16, -3, $F6, $81
    .byte 0, -9, $B4, $03
    .byte -8, -9, $A4, $03
    L_30980D:
    .byte $06
    .byte 37, -13, $E6, $41
    .byte 28, -3, $F6, $C1
    .byte 19, -15, $F6, $01
    .byte 10, -3, $F6, $C1
    .byte -8, -9, $B4, $43
    .byte 0, -9, $A4, $43
    L_309826:
    .byte $06
    .byte -45, -13, $E6, $01
    .byte -36, -3, $F6, $81
    .byte -27, -15, $F6, $41
    .byte -18, -3, $F6, $81
    .byte 0, -9, $B4, $03
    .byte -8, -9, $A4, $03
    L_30983F:
    .byte $03
    .byte -11, -3, $F6, $81
    .byte -3, -15, $F6, $41
    .byte 5, -13, $E6, $41
    L_30984C:
    .byte $03
    .byte 2, -3, $F6, $C1
    .byte -6, -15, $F6, $01
    .byte -14, -13, $E6, $01
    L_309859:
    .byte $04
    .byte 10, -13, $E6, $41
    .byte 1, -13, $E6, $41
    .byte -8, -9, $B6, $43
    .byte 0, -9, $A6, $43
    L_30986A:
    .byte $04
    .byte -18, -13, $E6, $01
    .byte -9, -13, $E6, $01
    .byte 0, -9, $B6, $03
    .byte -8, -9, $A6, $03

L_30987B:
    .addr L_3098C7
    .addr L_3098D0
    .addr L_3098D9
    .addr L_3098E6
    .addr L_3098F3
    .addr L_309900
    .addr L_30990D
    .addr L_30991A
    .addr L_3098F3
    .addr L_309900
    .addr L_3098D9
    .addr L_3098E6
L_309893:
    .addr L_309927
    .addr L_309938
    .addr L_309949
    .addr L_30995E
    .addr L_309973
    .addr L_309988
    .addr L_30999D
    .addr L_3099B2
    .addr L_3099C7
    .addr L_3099D8
    .addr L_3099E9
    .addr L_3099FA
    .addr L_309A0B
    .addr L_309A1C
    .addr L_309A2D
    .addr L_309A3A
    .addr L_309A47
    .addr L_309A54
L_3098B7:
    .addr L_309A61
    .addr L_309A6A
    .addr L_309A73
    .addr L_309A7C
    .addr L_309A85
    .addr L_309A8E
    .addr L_309A97
    .addr L_309AA0

    L_3098C7:
    .byte $02
    .byte 0, -9, $C6, $43
    .byte -8, -9, $D6, $43
    L_3098D0:
    .byte $02
    .byte -8, -9, $C6, $03
    .byte 0, -9, $D6, $03
    L_3098D9:
    .byte $03
    .byte 0, -9, $C6, $43
    .byte 4, -12, $E2, $41
    .byte -8, -9, $D6, $43
    L_3098E6:
    .byte $03
    .byte -8, -9, $C6, $03
    .byte -12, -12, $E2, $01
    .byte 0, -9, $D6, $03
    L_3098F3:
    .byte $03
    .byte 0, -9, $C4, $43
    .byte 7, -13, $E2, $43
    .byte -8, -9, $D4, $43
    L_309900:
    .byte $03
    .byte -8, -9, $C4, $03
    .byte -15, -13, $E2, $03
    .byte 0, -9, $D4, $03
    L_30990D:
    .byte $03
    .byte 8, -15, $E2, $41
    .byte -8, -9, $D4, $43
    .byte 0, -9, $C4, $43
    L_30991A:
    .byte $03
    .byte -16, -15, $E2, $01
    .byte 0, -9, $D4, $03
    .byte -8, -9, $C4, $03
    L_309927:
    .byte $04
    .byte -8, -9, $D6, $43
    .byte 0, -9, $C6, $43
    .byte -1, -19, $F2, $43
    .byte 7, -23, $E2, $43
    L_309938:
    .byte $04
    .byte 0, -9, $D6, $03
    .byte -8, -9, $C6, $03
    .byte -7, -19, $F2, $03
    .byte -15, -23, $E2, $03
    L_309949:
    .byte $05
    .byte -8, -9, $D6, $43
    .byte 0, -9, $C6, $43
    .byte -10, -22, $F4, $83
    .byte -13, -24, $F2, $41
    .byte -5, -28, $E2, $41
    L_30995E:
    .byte $05
    .byte 0, -9, $D6, $03
    .byte -8, -9, $C6, $03
    .byte 2, -22, $F4, $C3
    .byte 5, -24, $F2, $01
    .byte -3, -28, $E2, $01
    L_309973:
    .byte $05
    .byte -8, -9, $D6, $43
    .byte 0, -9, $C6, $43
    .byte -14, -16, $F4, $83
    .byte -17, -18, $F2, $43
    .byte -9, -22, $E2, $43
    L_309988:
    .byte $05
    .byte 0, -9, $D6, $03
    .byte -8, -9, $C6, $03
    .byte 6, -16, $F4, $C3
    .byte 9, -18, $F2, $03
    .byte 1, -22, $E2, $03
    L_30999D:
    .byte $05
    .byte -8, -9, $D6, $43
    .byte 0, -9, $C6, $43
    .byte -14, -16, $F4, $83
    .byte -17, -18, $F2, $41
    .byte -9, -22, $E2, $41
    L_3099B2:
    .byte $05
    .byte 0, -9, $D6, $03
    .byte -8, -9, $C6, $03
    .byte 6, -16, $F4, $C3
    .byte 9, -18, $F2, $01
    .byte 1, -22, $E2, $01
    L_3099C7:
    .byte $04
    .byte -8, -9, $D6, $43
    .byte 0, -9, $C6, $43
    .byte -19, -22, $6E, $01
    .byte -11, -22, $6C, $01
    L_3099D8:
    .byte $04
    .byte 0, -9, $D6, $03
    .byte -8, -9, $C6, $03
    .byte 11, -22, $6E, $41
    .byte 3, -22, $6C, $41
    L_3099E9:
    .byte $04
    .byte 0, -9, $C6, $43
    .byte -8, -9, $D6, $43
    .byte 14, -21, $6E, $41
    .byte 6, -21, $6C, $41
    L_3099FA:
    .byte $04
    .byte -8, -9, $C6, $03
    .byte 0, -9, $D6, $03
    .byte -22, -21, $6E, $01
    .byte -14, -21, $6C, $01
    L_309A0B:
    .byte $04
    .byte 0, -9, $C6, $43
    .byte 14, 1, $6E, $C1
    .byte 6, 1, $6C, $C1
    .byte -8, -9, $D6, $43
    L_309A1C:
    .byte $04
    .byte -8, -9, $C6, $03
    .byte -22, 1, $6E, $81
    .byte -14, 1, $6C, $81
    .byte 0, -9, $D6, $03
    L_309A2D:
    .byte $03
    .byte 0, 5, $F4, $03
    .byte -8, -9, $D4, $43
    .byte 0, -9, $C4, $43
    L_309A3A:
    .byte $03
    .byte -8, 5, $F4, $43
    .byte 0, -9, $D4, $03
    .byte -8, -9, $C4, $03
    L_309A47:
    .byte $03
    .byte -4, 3, $F4, $03
    .byte -8, -9, $D4, $43
    .byte 0, -9, $C4, $43
    L_309A54:
    .byte $03
    .byte -4, 3, $F4, $43
    .byte 0, -9, $D4, $03
    .byte -8, -9, $C4, $03
    L_309A61:
    .byte $02
    .byte -8, -9, $F2, $43
    .byte 0, -13, $E2, $43
    L_309A6A:
    .byte $02
    .byte 0, -9, $F2, $03
    .byte -8, -13, $E2, $03
    L_309A73:
    .byte $02
    .byte -8, -9, $F2, $41
    .byte 0, -13, $E2, $41
    L_309A7C:
    .byte $02
    .byte 0, -9, $F2, $01
    .byte -8, -13, $E2, $01
    L_309A85:
    .byte $02
    .byte -8, -9, $F2, $C3
    .byte 0, -5, $E2, $C3
    L_309A8E:
    .byte $02
    .byte 0, -9, $F2, $83
    .byte -8, -5, $E2, $83
    L_309A97:
    .byte $02
    .byte -8, -9, $F2, $C1
    .byte 0, -5, $E2, $C1
    L_309AA0:
    .byte $02
    .byte 0, -9, $F2, $81
    .byte -8, -5, $E2, $81

L_309AA9:
    .addr L_309AB9
    .addr L_309AC2
    .addr L_309ACB
    .addr L_309AD4
    .addr L_309AEF
    .addr L_309ADD
    .addr L_309AF8
    .addr L_309AE6

    L_309AB9:
    .byte $02
    .byte 0, -8, $D8, $03
    .byte -8, -8, $C8, $03
    L_309AC2:
    .byte $02
    .byte -8, -8, $D8, $43
    .byte 0, -8, $C8, $43
    L_309ACB:
    .byte $02
    .byte 0, -8, $DA, $03
    .byte -8, -8, $CA, $03
    L_309AD4:
    .byte $02
    .byte -8, -8, $DA, $43
    .byte 0, -8, $CA, $43
    L_309ADD:
    .byte $02
    .byte 0, -8, $DC, $03
    .byte -8, -8, $CC, $03
    L_309AE6:
    .byte $02
    .byte -2, -8, $DC, $03
    .byte -10, -8, $CC, $03
    L_309AEF:
    .byte $02
    .byte -8, -8, $DC, $43
    .byte 0, -8, $CC, $43
    L_309AF8:
    .byte $02
    .byte 2, -8, $CC, $43
    .byte -6, -8, $DC, $43

L_309B01:
    .addr L_309B11
    .addr L_309B33
    .addr L_309B55
    .addr L_309B77
    .addr L_309B99
    .addr L_309BBB
    .addr L_309B99
    .addr L_309B55

    L_309B11:
    .byte $04
    .byte 0, -1, $BC, $02
    .byte -8, -1, $AC, $02
    .byte 0, -17, $BA, $02
    .byte -8, -17, $AA, $02
    L_309B22:
    .byte $04
    .byte -8, -1, $BC, $42
    .byte 0, -1, $AC, $42
    .byte -8, -17, $BA, $42
    .byte 0, -17, $AA, $42
    L_309B33:
    .byte $04
    .byte 0, -1, $BC, $01
    .byte -8, -1, $AC, $01
    .byte 0, -17, $BA, $01
    .byte -8, -17, $AA, $01
    L_309B44:
    .byte $04
    .byte -8, -1, $BC, $41
    .byte 0, -1, $AC, $41
    .byte -8, -17, $BA, $41
    .byte 0, -17, $AA, $41
    L_309B55:
    .byte $04
    .byte 0, -1, $BE, $02
    .byte -8, -1, $AE, $02
    .byte 0, -17, $BA, $02
    .byte -8, -17, $AA, $02
    L_309B66:
    .byte $04
    .byte -8, -1, $BE, $42
    .byte 0, -1, $AE, $42
    .byte -8, -17, $BA, $42
    .byte 0, -17, $AA, $42
    L_309B77:
    .byte $04
    .byte 0, -1, $BE, $02
    .byte -8, -1, $AE, $02
    .byte 0, -17, $BA, $01
    .byte -8, -17, $AA, $01
    L_309B88:
    .byte $04
    .byte -8, -1, $BE, $42
    .byte 0, -1, $AE, $42
    .byte -8, -17, $BA, $41
    .byte 0, -17, $AA, $41
    L_309B99:
    .byte $04
    .byte -10, -1, $BE, $42
    .byte -2, -1, $AE, $42
    .byte 0, -17, $BA, $02
    .byte -8, -17, $AA, $02
    L_309BAA:
    .byte $04
    .byte 2, -1, $BE, $02
    .byte -6, -1, $AE, $02
    .byte -8, -17, $BA, $42
    .byte 0, -17, $AA, $42
    L_309BBB:
    .byte $04
    .byte -10, -1, $BE, $41
    .byte -2, -1, $AE, $41
    .byte 0, -17, $BA, $01
    .byte -8, -17, $AA, $01

L_309BCC:
    .addr L_309BDC
    .addr L_309BE5
    .addr L_309BEE
    .addr L_309BF7
    .addr L_309C00
    .addr L_309C09
    .addr L_309C12
    .addr L_309C1B

    L_309BDC:
    .byte $02
    .byte -8, -9, $FA, $43
    .byte 0, -9, $EA, $43
    L_309BE5:
    .byte $02
    .byte 0, -9, $FA, $03
    .byte -8, -9, $EA, $03
    L_309BEE:
    .byte $02
    .byte -8, -9, $FC, $43
    .byte 0, -9, $EC, $43
    L_309BF7:
    .byte $02
    .byte 0, -9, $FC, $03
    .byte -8, -9, $EC, $03
    L_309C00:
    .byte $02
    .byte 0, -9, $EA, $43
    .byte -8, -9, $F8, $43
    L_309C09:
    .byte $02
    .byte -8, -9, $EA, $03
    .byte 0, -9, $F8, $03
    L_309C12:
    .byte $02
    .byte -8, -9, $FE, $43
    .byte 0, -9, $EE, $43
    L_309C1B:
    .byte $02
    .byte 0, -9, $FE, $03
    .byte -8, -9, $EE, $03

L_309C24:
    .addr L_309C2C
    .addr L_309C35
    .addr L_309C3E
    .addr L_309C47

    L_309C2C:
    .byte $02
    .byte -8, -8, $9C, $42
    .byte 0, -8, $8C, $42
    L_309C35:
    .byte $02
    .byte 0, -8, $9C, $02
    .byte -8, -8, $8C, $02
    L_309C3E:
    .byte $02
    .byte -8, -8, $9E, $42
    .byte 0, -8, $8E, $42
    L_309C47:
    .byte $02
    .byte 0, -8, $9E, $02
    .byte -8, -8, $8E, $02

L_309C50:
    .addr L_309C58
    .addr L_309C61
    .addr L_309C6A
    .addr L_309C73

    L_309C58:
    .byte $02
    .byte 0, -9, $74, $C3
    .byte -8, -9, $74, $03
    L_309C61:
    .byte $02
    .byte -8, -9, $74, $83
    .byte 0, -9, $74, $43
    L_309C6A:
    .byte $02
    .byte 0, -9, $74, $C1
    .byte -8, -9, $74, $01
    L_309C73:
    .byte $02
    .byte -8, -9, $74, $81
    .byte 0, -9, $74, $41

L_309C7C:
    .addr L_309CE8
    .addr L_309CD6
    .addr L_309CDF
    .addr L_309CF1
L_309C84:
    .addr L_309F54
    .addr L_309F42
    .addr L_309F4B
    .addr L_309F5D
L_309C8C:
    .addr L_309CFA
    .addr L_309D2D
    .addr L_309D0B
    .addr L_309D1C
    .addr L_309D1C
    .addr L_309D0B
    .addr L_309D2D
    .addr L_309CFA
L_309C9C:
    .addr L_309D3E
    .addr L_309D77
    .addr L_309DB0
    .addr L_309DE9
    .addr L_309E22
    .addr L_309E5B
L_309CA8:
    .addr L_309D1C
    .addr L_309D2D
    .addr L_309CFA
    .addr L_309D0B
    .addr L_309D1C
    .addr L_309D2D
    .addr L_309D2D
    .addr L_309D3E
    .addr L_309D77
    .addr L_309DB0
L_309CBC:
    .addr L_309ECD
    .addr L_309ED6
    .addr L_309EDF
    .addr L_309EE8
    .addr L_309EF1
    .addr L_309EFA
    .addr L_309F03
    .addr L_309F0C
    .addr L_309F15
    .addr L_309F1E
    .addr L_309F27
    .addr L_309F30
    .addr L_309F39

    L_309CD6:
    .byte $02
    .byte -8, -9, $F0, $43
    .byte 0, -9, $E0, $43
    L_309CDF:
    .byte $02
    .byte 0, -9, $F0, $03
    .byte -8, -9, $E0, $03
    L_309CE8:
    .byte $02
    .byte 0, -9, $E0, $C3
    .byte -8, -9, $F0, $C3
    L_309CF1:
    .byte $02
    .byte -8, -9, $E0, $83
    .byte 0, -9, $F0, $83
    L_309CFA:
    .byte $04
    .byte 8, -18, $DE, $83
    .byte -16, 0, $DE, $43
    .byte 1, 7, $DE, $03
    .byte -9, -25, $DE, $83
    L_309D0B:
    .byte $04
    .byte 9, -13, $DE, $83
    .byte -17, -5, $DE, $43
    .byte -4, 8, $DE, $03
    .byte -4, -26, $DE, $83
    L_309D1C:
    .byte $04
    .byte -16, -18, $DE, $C3
    .byte 8, 0, $DE, $03
    .byte -9, 7, $DE, $43
    .byte 1, -25, $DE, $C3
    L_309D2D:
    .byte $04
    .byte -13, -22, $DE, $C3
    .byte 5, 4, $DE, $03
    .byte -13, 4, $DE, $43
    .byte 5, -22, $DE, $C3
    L_309D3E:
    .byte $0E
    .byte 16, -1, $CE, $C3
    .byte 16, -17, $CE, $43
    .byte -24, -1, $CE, $83
    .byte -24, -17, $CE, $03
    .byte 0, 7, $F6, $C3
    .byte -8, 7, $F6, $83
    .byte 0, -25, $F6, $43
    .byte -8, -25, $F6, $03
    .byte 8, 7, $E6, $C3
    .byte 8, -25, $E6, $43
    .byte -16, 7, $E6, $83
    .byte -16, -25, $E6, $03
    .byte 8, -9, $B0, $03
    .byte -16, -9, $B0, $03
    L_309D77:
    .byte $0E
    .byte 16, -1, $A2, $C3
    .byte 16, -17, $A2, $43
    .byte -24, -1, $A2, $83
    .byte -24, -17, $A2, $03
    .byte 0, 7, $A0, $C3
    .byte -8, 7, $A0, $83
    .byte 0, -25, $A0, $43
    .byte -8, -25, $A0, $03
    .byte 8, 7, $B2, $C3
    .byte 8, -25, $B2, $43
    .byte -16, 7, $B2, $83
    .byte -16, -25, $B2, $03
    .byte 8, -9, $B0, $03
    .byte -16, -9, $B0, $03
    L_309DB0:
    .byte $0E
    .byte 16, -1, $E8, $C3
    .byte 16, -17, $E8, $43
    .byte -24, -1, $E8, $83
    .byte -24, -17, $E8, $03
    .byte 0, 7, $E4, $C3
    .byte -8, 7, $E4, $83
    .byte 0, -25, $E4, $43
    .byte -8, -25, $E4, $03
    .byte 8, 7, $F4, $C3
    .byte 8, -25, $F4, $43
    .byte -16, 7, $F4, $83
    .byte -16, -25, $F4, $03
    .byte 8, -9, $B0, $03
    .byte -16, -9, $B0, $03
    L_309DE9:
    .byte $0E
    .byte 16, -1, $CE, $C1
    .byte 16, -17, $CE, $41
    .byte -24, -1, $CE, $81
    .byte -24, -17, $CE, $01
    .byte 0, 7, $F6, $C1
    .byte -8, 7, $F6, $81
    .byte 0, -25, $F6, $41
    .byte -8, -25, $F6, $01
    .byte 8, 7, $E6, $C1
    .byte 8, -25, $E6, $41
    .byte -16, 7, $E6, $81
    .byte -16, -25, $E6, $01
    .byte 8, -9, $B0, $01
    .byte -16, -9, $B0, $01
    L_309E22:
    .byte $0E
    .byte 16, -1, $A2, $C1
    .byte 16, -17, $A2, $41
    .byte -24, -1, $A2, $81
    .byte -24, -17, $A2, $01
    .byte 0, 7, $A0, $C1
    .byte -8, 7, $A0, $81
    .byte 0, -25, $A0, $41
    .byte -8, -25, $A0, $01
    .byte 8, 7, $B2, $C1
    .byte 8, -25, $B2, $41
    .byte -16, 7, $B2, $81
    .byte -16, -25, $B2, $01
    .byte 8, -9, $B0, $01
    .byte -16, -9, $B0, $01
    L_309E5B:
    .byte $0E
    .byte 16, -1, $E8, $C1
    .byte 16, -17, $E8, $41
    .byte -24, -1, $E8, $81
    .byte -24, -17, $E8, $01
    .byte 0, 7, $E4, $C1
    .byte -8, 7, $E4, $81
    .byte 0, -25, $E4, $41
    .byte -8, -25, $E4, $01
    .byte 8, 7, $F4, $C1
    .byte 8, -25, $F4, $41
    .byte -16, 7, $F4, $81
    .byte -16, -25, $F4, $01
    .byte 8, -9, $B0, $01
    .byte -16, -9, $B0, $01
    L_309E94:
    .byte $0E
    .byte 16, -1, $A2, $C1
    .byte 16, -17, $A2, $41
    .byte -24, -1, $A2, $81
    .byte -24, -17, $A2, $01
    .byte 0, 7, $A0, $C1
    .byte -8, 7, $A0, $81
    .byte 0, -25, $A0, $41
    .byte -8, -25, $A0, $01
    .byte 8, 7, $B2, $C1
    .byte 8, -25, $B2, $41
    .byte -16, 7, $B2, $81
    .byte -16, -25, $B2, $01
    .byte 8, -9, $B0, $01
    .byte -16, -9, $B0, $01
    L_309ECD:
    .byte $02
    .byte 0, -9, $FA, $01
    .byte -8, -9, $EA, $01
    L_309ED6:
    .byte $02
    .byte -8, -9, $FA, $41
    .byte 0, -9, $EA, $41
    L_309EDF:
    .byte $02
    .byte 0, -9, $FA, $81
    .byte -8, -9, $EA, $81
    L_309EE8:
    .byte $02
    .byte -8, -9, $FA, $C1
    .byte 0, -9, $EA, $C1
    L_309EF1:
    .byte $02
    .byte 0, -9, $FE, $01
    .byte -8, -9, $EE, $01
    L_309EFA:
    .byte $02
    .byte -8, -9, $FE, $C1
    .byte 0, -9, $EE, $C1
    L_309F03:
    .byte $02
    .byte 0, -9, $FC, $01
    .byte -8, -9, $EC, $01
    L_309F0C:
    .byte $02
    .byte -8, -9, $FC, $C1
    .byte 0, -9, $EC, $C1
    L_309F15:
    .byte $02
    .byte -8, -9, $FE, $41
    .byte 0, -9, $EE, $41
    L_309F1E:
    .byte $02
    .byte 0, -9, $FE, $81
    .byte -8, -9, $EE, $81
    L_309F27:
    .byte $02
    .byte -8, -9, $FC, $41
    .byte 0, -9, $EC, $41
    L_309F30:
    .byte $02
    .byte 0, -9, $FC, $81
    .byte -8, -9, $EC, $81
    L_309F39:
    .byte $02
    .byte 0, -9, $F8, $41
    .byte -8, -9, $F8, $81
    L_309F42:
    .byte $02
    .byte -8, -9, $F2, $43
    .byte 0, -9, $E2, $43
    L_309F4B:
    .byte $02
    .byte 0, -9, $F2, $03
    .byte -8, -9, $E2, $03
    L_309F54:
    .byte $02
    .byte -8, -9, $F2, $C3
    .byte 0, -9, $E2, $C3
    L_309F5D:
    .byte $02
    .byte 0, -9, $F2, $83
    .byte -8, -9, $E2, $83

L_309F66:
    .addr L_309F6E
    .addr L_309F7B
    .addr L_309F88
    .addr L_309F91

    L_309F6E:
    .byte $03
    .byte -6, 0, $23, $01
    .byte 2, -7, $23, $01
    .byte -9, -19, $23, $81
    L_309F7B:
    .byte $03
    .byte -1, -3, $23, $81
    .byte -3, -20, $23, $81
    .byte -10, -6, $23, $01
    L_309F88:
    .byte $02
    .byte -4, -2, $25, $01
    .byte -3, -11, $25, $01
    L_309F91:
    .byte $01
    .byte -4, -6, $25, $01


    .byte $FF,$5D,$FD,$57,$BF,$77,$BF,$75,$FF,$57
    .byte $3B,$D7,$BF,$57,$E7,$45,$FD,$57,$FF,$F7,$E9,$55,$9E,$D4,$7F,$76
    .byte $FE,$05,$FE,$54,$B7,$5D,$75,$D4,$E7,$4D,$DE,$57,$3B,$D0,$FD,$55
    .byte $FF,$53,$FE,$55,$FF,$D5,$E7,$3D,$CF,$D5,$FF,$57,$FF,$55,$FF,$D6
    .byte $FF,$54,$FF,$57,$F7,$55,$DF,$55,$7F,$14,$FE,$D5,$FF,$D5,$EA,$51
    .byte $FF,$15,$DF,$73,$E5,$95,$FF,$40,$7F,$70,$FD,$45,$FD,$53,$6D,$14
    .byte $F7,$55,$FD,$55,$73,$51,$FF,$1F,$FB,$58,$D3,$E5,$7F,$F7,$FD,$55

.segment "PRG31": absolute

L_318000:
    .addr L_318164
    .addr L_31816D
    .addr L_318182
    .addr L_318197
    .addr L_3181B0
    .addr L_3181BD
    .addr L_3181CA
    .addr L_3181DF
    .addr L_3181F4
    .addr L_318201
    .addr L_31820E
    .addr L_31821B
    .addr L_318228
    .addr L_318239
    .addr L_31824A
    .addr L_318257
    .addr L_318264
    .addr L_318271
    .addr L_31827E
    .addr L_31828B
    .addr L_318298
    .addr L_3182A5
    .addr L_3182B2
    .addr L_3182C3
    .addr L_3182D4
    .addr L_3182E1
    .addr L_3182EE
    .addr L_3182FF
    .addr L_318310
    .addr L_318329
    .addr L_318342
    .addr L_318353
    .addr L_318364
    .addr L_31837D
    .addr L_318396
    .addr L_3183B7
    .addr L_3183D8
    .addr L_3183F1
    .addr L_31840A
    .addr L_31841B
    .addr L_31842C
    .addr L_31843D
    .addr L_31844E
    .addr L_31845B
    .addr L_318468
    .addr L_318475
    .addr L_318482
    .addr L_318493
    .addr L_3184A4
    .addr L_3184B5
    .addr L_3184C6
    .addr L_3184D3
    .addr L_3184E0
    .addr L_3184ED
    .addr L_3184FA
    .addr L_318507
    .addr L_318514
    .addr L_31851D
    .addr L_318526
    .addr L_318533
    .addr L_318540
    .addr L_31854D
    .addr L_31855A
    .addr L_318573
    .addr L_318584
    .addr L_318595
    .addr L_3185A6
    .addr L_3185BF
    .addr L_3185D0
    .addr L_3185E1
    .addr L_3185F2
    .addr L_3185FF
    .addr L_31860C
    .addr L_318619
    .addr L_318626
    .addr L_31862F
    .addr L_318638
    .addr L_318641
    .addr L_31864A
    .addr L_31865B
    .addr L_31866C
    .addr L_318685
    .addr L_31869E
    .addr L_3186AF
    .addr L_3186C0
    .addr L_3186D1
    .addr L_3186E2
    .addr L_3186F3
    .addr L_318704
    .addr L_318715
    .addr L_318726
    .addr L_31872F
    .addr L_318738
    .addr L_31874D
    .addr L_318762
    .addr L_318777
    .addr L_31878C
    .addr L_3187A1
    .addr L_3187B6
    .addr L_3187BF
    .addr L_3187C8
    .addr L_3187CD
    .addr L_3187D2
    .addr L_3187D7
    .addr L_3187DC
    .addr L_3187E5
    .addr L_3187EE
    .addr L_31881B
    .addr L_318848
    .addr L_318875
    .addr L_31887E
    .addr L_318883
    .addr L_31888C
    .addr L_318895
    .addr L_31889A
    .addr L_31889F
    .addr L_3188A8
    .addr L_3188B1
    .addr L_3188B6
    .addr L_3188C7
    .addr L_3188DC
    .addr L_3188F1
    .addr L_3188FE
    .addr L_318913
L_3180F8:
    .addr L_318928
    .addr L_318935
    .addr L_318942
    .addr L_318953
    .addr L_318964
    .addr L_318975
    .addr L_318986
    .addr L_31899B
    .addr L_3189B0
    .addr L_3189E9
    .addr L_3189F6
    .addr L_3189FF
    .addr L_318A08
    .addr L_318A11
    .addr L_318A1A
    .addr L_318A1F
    .addr L_318A24
    .addr L_318A29
    .addr L_318A2E
    .addr L_318A37
    .addr L_318A40
    .addr L_318A55
    .addr L_318A6A
    .addr L_318A7F
    .addr L_318A94
    .addr L_318AA9
    .addr L_318ABE
    .addr L_318ACF
    .addr L_318AE0
    .addr L_318AE9
    .addr L_318AF2
    .addr L_318AF7
    .addr L_318AFC
    .addr L_318B05
    .addr L_318B0E
    .addr L_318B17
    .addr L_318B20
    .addr L_318B41
    .addr L_318B4A
    .addr L_318B53
    .addr L_318B5C
    .addr L_318B65
    .addr L_318B6E
    .addr L_318B77
    .addr L_318B80
    .addr L_318B89
    .addr L_318B92
    .addr L_318B9B
    .addr L_318BA4
    .addr L_318BAD
    .addr L_318BB6
    .addr L_318BBF
    .addr L_318BC4
    .addr L_318875

    L_318164:
    .byte $02
    .byte 0, -9, $F2, $03
    .byte -8, -9, $E2, $03
    L_31816D:
    .byte $05
    .byte 0, -9, $A4, $03
    .byte -8, -9, $94, $03
    .byte -16, -9, $84, $03
    .byte 0, -9, $D2, $03
    .byte -8, -9, $C2, $03
    L_318182:
    .byte $05
    .byte 8, -12, $A4, $03
    .byte 0, -12, $94, $03
    .byte -8, -12, $84, $03
    .byte 0, -9, $D2, $03
    .byte -8, -9, $C2, $03
    L_318197:
    .byte $06
    .byte 0, -9, $D2, $03
    .byte -8, -9, $C2, $03
    .byte -10, -13, $9E, $41
    .byte 22, -16, $84, $C3
    .byte 14, -16, $94, $C3
    .byte 6, -16, $A4, $C3
    L_3181B0:
    .byte $03
    .byte -8, -9, $C2, $03
    .byte -13, -13, $9E, $41
    .byte 0, -9, $D2, $03
    L_3181BD:
    .byte $03
    .byte 6, -9, $84, $C3
    .byte -2, -9, $94, $C3
    .byte -10, -9, $A4, $C3
    L_3181CA:
    .byte $05
    .byte -14, -15, $FE, $41
    .byte -22, -16, $FE, $81
    .byte -8, -9, $82, $03
    .byte -15, -12, $AE, $41
    .byte 0, -9, $92, $03
    L_3181DF:
    .byte $05
    .byte -14, -16, $FE, $C1
    .byte -22, -15, $FE, $01
    .byte -8, -9, $82, $03
    .byte -15, -12, $AE, $41
    .byte 0, -9, $92, $03
    L_3181F4:
    .byte $03
    .byte 0, -9, $82, $43
    .byte 7, -12, $AE, $01
    .byte -8, -9, $92, $43
    L_318201:
    .byte $03
    .byte -8, -9, $82, $03
    .byte -15, -12, $AE, $41
    .byte 0, -9, $92, $03
    L_31820E:
    .byte $03
    .byte 0, -9, $A0, $43
    .byte 6, -10, $CE, $41
    .byte -8, -9, $B0, $43
    L_31821B:
    .byte $03
    .byte -8, -9, $A0, $03
    .byte -14, -10, $CE, $01
    .byte 0, -9, $B0, $03
    L_318228:
    .byte $04
    .byte 0, -9, $A0, $43
    .byte 8, -3, $CE, $C1
    .byte 0, -9, $BE, $01
    .byte -8, -9, $B0, $43
    L_318239:
    .byte $04
    .byte -8, -9, $A0, $03
    .byte -16, -3, $CE, $81
    .byte -8, -9, $BE, $41
    .byte 0, -9, $B0, $03
    L_31824A:
    .byte $03
    .byte 0, -9, $C0, $43
    .byte 7, -12, $AE, $01
    .byte -8, -9, $D0, $43
    L_318257:
    .byte $03
    .byte -8, -9, $C0, $03
    .byte -15, -12, $AE, $41
    .byte 0, -9, $D0, $03
    L_318264:
    .byte $03
    .byte 5, -13, $9E, $01
    .byte 0, -9, $E0, $43
    .byte -8, -9, $F0, $43
    L_318271:
    .byte $03
    .byte -13, -13, $9E, $41
    .byte -8, -9, $E0, $03
    .byte 0, -9, $F0, $03
    L_31827E:
    .byte $03
    .byte 3, -15, $8E, $01
    .byte -8, -9, $F0, $43
    .byte 0, -9, $E0, $43
    L_31828B:
    .byte $03
    .byte -11, -15, $8E, $41
    .byte 0, -9, $F0, $03
    .byte -8, -9, $E0, $03
    L_318298:
    .byte $03
    .byte 5, -5, $9E, $81
    .byte -9, -9, $B2, $43
    .byte -1, -9, $A2, $43
    L_3182A5:
    .byte $03
    .byte -13, -5, $9E, $C1
    .byte 1, -9, $B2, $03
    .byte -7, -9, $A2, $03
    L_3182B2:
    .byte $04
    .byte -11, -12, $CE, $81
    .byte -3, -18, $BE, $41
    .byte -9, -9, $B2, $43
    .byte -1, -9, $A2, $43
    L_3182C3:
    .byte $04
    .byte 3, -12, $CE, $C1
    .byte -5, -18, $BE, $01
    .byte 1, -9, $B2, $03
    .byte -7, -9, $A2, $03
    L_3182D4:
    .byte $03
    .byte -14, -24, $9E, $41
    .byte 0, -9, $86, $43
    .byte -8, -9, $96, $43
    L_3182E1:
    .byte $03
    .byte 6, -24, $9E, $01
    .byte -8, -9, $86, $03
    .byte 0, -9, $96, $03
    L_3182EE:
    .byte $04
    .byte -8, -30, $BC, $01
    .byte -16, -30, $AC, $01
    .byte 0, -9, $86, $43
    .byte -8, -9, $96, $43
    L_3182FF:
    .byte $04
    .byte 0, -30, $BC, $41
    .byte 8, -30, $AC, $41
    .byte -8, -9, $86, $03
    .byte 0, -9, $96, $03
    L_318310:
    .byte $06
    .byte 8, -31, $CE, $41
    .byte -16, -31, $CE, $01
    .byte 0, -31, $EE, $41
    .byte -8, -31, $EE, $01
    .byte 0, -9, $A6, $43
    .byte -8, -9, $B6, $43
    L_318329:
    .byte $06
    .byte -16, -31, $CE, $01
    .byte 8, -31, $CE, $41
    .byte -8, -31, $EE, $01
    .byte 0, -31, $EE, $41
    .byte -8, -9, $A6, $03
    .byte 0, -9, $B6, $03
    L_318342:
    .byte $04
    .byte 5, -22, $9C, $41
    .byte 13, -17, $8C, $41
    .byte 1, -9, $A6, $43
    .byte -7, -9, $B6, $43
    L_318353:
    .byte $04
    .byte -13, -22, $9C, $01
    .byte -21, -17, $8C, $01
    .byte -9, -9, $A6, $03
    .byte -1, -9, $B6, $03
    L_318364:
    .byte $06
    .byte 15, -28, $AC, $41
    .byte 7, -28, $BC, $41
    .byte 12, -1, $8C, $C1
    .byte 4, 4, $9C, $C1
    .byte 2, -9, $C6, $43
    .byte -6, -9, $D6, $43
    L_31837D:
    .byte $06
    .byte -23, -28, $AC, $01
    .byte -15, -28, $BC, $01
    .byte -20, -1, $8C, $81
    .byte -12, 4, $9C, $81
    .byte -10, -9, $C6, $03
    .byte -2, -9, $D6, $03
    L_318396:
    .byte $08
    .byte -7, -9, $D6, $43
    .byte 1, -9, $C6, $43
    .byte 13, -1, $DC, $41
    .byte 13, -17, $DC, $C1
    .byte 21, -1, $CC, $41
    .byte 21, -17, $CC, $C1
    .byte -13, 9, $BC, $81
    .byte -21, 9, $AC, $81
    L_3183B7:
    .byte $08
    .byte -1, -9, $D6, $03
    .byte -9, -9, $C6, $03
    .byte -21, -1, $DC, $01
    .byte -21, -17, $DC, $81
    .byte -29, -1, $CC, $01
    .byte -29, -17, $CC, $81
    .byte 5, 9, $BC, $C1
    .byte 13, 9, $AC, $C1
    L_3183D8:
    .byte $06
    .byte -25, -6, $CE, $01
    .byte -17, 0, $BE, $C1
    .byte 0, -9, $E8, $43
    .byte -8, -9, $F8, $43
    .byte 19, 9, $AC, $C1
    .byte 11, 9, $BC, $C1
    L_3183F1:
    .byte $06
    .byte 17, -6, $CE, $41
    .byte 9, 0, $BE, $81
    .byte -8, -9, $E8, $03
    .byte 0, -9, $F8, $03
    .byte -27, 9, $AC, $81
    .byte -19, 9, $BC, $81
    L_31840A:
    .byte $04
    .byte -25, -6, $CE, $01
    .byte -17, 0, $BE, $C1
    .byte 0, -9, $E8, $43
    .byte -8, -9, $F8, $43
    L_31841B:
    .byte $04
    .byte 17, -6, $CE, $41
    .byte 9, 0, $BE, $81
    .byte -8, -9, $E8, $03
    .byte 0, -9, $F8, $03
    L_31842C:
    .byte $04
    .byte -8, -7, $CE, $01
    .byte 0, -1, $BE, $C1
    .byte 1, -9, $E0, $43
    .byte -7, -9, $F0, $43
    L_31843D:
    .byte $04
    .byte 0, -7, $CE, $41
    .byte -8, -1, $BE, $81
    .byte -9, -9, $E0, $03
    .byte -1, -9, $F0, $03
    L_31844E:
    .byte $03
    .byte 1, -4, $AE, $C1
    .byte 0, -9, $82, $43
    .byte -8, -9, $92, $43
    L_31845B:
    .byte $03
    .byte -9, -4, $AE, $81
    .byte -8, -9, $82, $03
    .byte 0, -9, $92, $03
    L_318468:
    .byte $03
    .byte -3, -13, $8E, $41
    .byte 0, -9, $B4, $43
    .byte -8, -9, $B2, $43
    L_318475:
    .byte $03
    .byte -5, -13, $8E, $01
    .byte -8, -9, $B4, $03
    .byte 0, -9, $B2, $03
    L_318482:
    .byte $04
    .byte 6, -2, $BC, $C1
    .byte 14, -2, $AC, $C1
    .byte -8, -9, $B6, $43
    .byte 0, -9, $B8, $43
    L_318493:
    .byte $04
    .byte -14, -2, $BC, $81
    .byte -22, -2, $AC, $81
    .byte 0, -9, $B6, $03
    .byte -8, -9, $B8, $03
    L_3184A4:
    .byte $04
    .byte 16, -13, $CE, $41
    .byte 8, -6, $BE, $81
    .byte -8, -9, $B6, $43
    .byte 0, -9, $B8, $43
    L_3184B5:
    .byte $04
    .byte -24, -13, $CE, $01
    .byte -16, -6, $BE, $C1
    .byte 0, -9, $B6, $03
    .byte -8, -9, $B8, $03
    L_3184C6:
    .byte $03
    .byte 0, -9, $B4, $43
    .byte 5, -17, $9E, $01
    .byte -8, -9, $B2, $43
    L_3184D3:
    .byte $03
    .byte -8, -9, $B4, $03
    .byte -13, -17, $9E, $41
    .byte 0, -9, $B2, $03
    L_3184E0:
    .byte $03
    .byte 5, -23, $9E, $01
    .byte -8, -9, $D4, $43
    .byte 0, -9, $C4, $43
    L_3184ED:
    .byte $03
    .byte -13, -23, $9E, $41
    .byte 0, -9, $D4, $03
    .byte -8, -9, $C4, $03
    L_3184FA:
    .byte $03
    .byte 0, -9, $E6, $43
    .byte -3, 1, $AE, $C1
    .byte -8, -9, $F6, $43
    L_318507:
    .byte $03
    .byte -8, -9, $E6, $03
    .byte -5, 1, $AE, $81
    .byte 0, -9, $F6, $03
    L_318514:
    .byte $02
    .byte -8, -9, $F4, $43
    .byte 0, -9, $E4, $43
    L_31851D:
    .byte $02
    .byte 0, -9, $F4, $03
    .byte -8, -9, $E4, $03
    L_318526:
    .byte $03
    .byte -8, -9, $F4, $43
    .byte 0, -9, $E4, $43
    .byte -4, -19, $AE, $41
    L_318533:
    .byte $03
    .byte 0, -9, $F4, $03
    .byte -8, -9, $E4, $03
    .byte -4, -19, $AE, $01
    L_318540:
    .byte $03
    .byte -1, 7, $8E, $C1
    .byte -8, -9, $BA, $43
    .byte 0, -9, $AA, $43
    L_31854D:
    .byte $03
    .byte -7, 7, $8E, $81
    .byte 0, -9, $BA, $03
    .byte -8, -9, $AA, $03
    L_31855A:
    .byte $06
    .byte 8, -25, $CE, $41
    .byte -16, -25, $CE, $01
    .byte 0, -26, $EE, $41
    .byte -8, -26, $EE, $01
    .byte 0, -9, $98, $03
    .byte -8, -9, $88, $03
    L_318573:
    .byte $04
    .byte 8, -17, $8C, $41
    .byte 0, -22, $9C, $41
    .byte 0, -9, $88, $43
    .byte -8, -9, $98, $43
    L_318584:
    .byte $04
    .byte 8, -1, $EC, $81
    .byte 8, -17, $EC, $01
    .byte 0, -9, $88, $43
    .byte -8, -9, $98, $43
    L_318595:
    .byte $04
    .byte 8, -1, $8C, $C1
    .byte 0, 4, $9C, $C1
    .byte 0, -9, $88, $C3
    .byte -8, -9, $98, $C3
    L_3185A6:
    .byte $06
    .byte 8, 7, $CE, $C1
    .byte -16, 7, $CE, $81
    .byte -8, 8, $EE, $81
    .byte 0, 8, $EE, $C1
    .byte 0, -9, $88, $C3
    .byte -8, -9, $98, $C3
    L_3185BF:
    .byte $04
    .byte -8, 4, $9C, $81
    .byte -16, -1, $8C, $81
    .byte 0, -9, $98, $83
    .byte -8, -9, $88, $83
    L_3185D0:
    .byte $04
    .byte -16, -1, $EC, $C1
    .byte -16, -17, $EC, $41
    .byte 0, -9, $98, $83
    .byte -8, -9, $88, $83
    L_3185E1:
    .byte $04
    .byte -16, -17, $8C, $01
    .byte -8, -22, $9C, $01
    .byte 0, -9, $98, $03
    .byte -8, -9, $88, $03
    L_3185F2:
    .byte $03
    .byte -9, -9, $D8, $43
    .byte -1, -9, $C8, $43
    .byte -7, -20, $AE, $41
    L_3185FF:
    .byte $03
    .byte 1, -9, $D8, $03
    .byte -7, -9, $C8, $03
    .byte -1, -20, $AE, $01
    L_31860C:
    .byte $03
    .byte -11, -9, $D8, $41
    .byte -3, -9, $C8, $41
    .byte -9, -20, $AE, $41
    L_318619:
    .byte $03
    .byte 3, -9, $D8, $01
    .byte -5, -9, $C8, $01
    .byte 1, -20, $AE, $01
    L_318626:
    .byte $02
    .byte -9, -9, $D8, $43
    .byte -1, -9, $C8, $43
    L_31862F:
    .byte $02
    .byte 1, -9, $D8, $03
    .byte -7, -9, $C8, $03
    L_318638:
    .byte $02
    .byte -11, -9, $D8, $41
    .byte -3, -9, $C8, $41
    L_318641:
    .byte $02
    .byte 3, -9, $D8, $01
    .byte -5, -9, $C8, $01
    L_31864A:
    .byte $04
    .byte 11, -21, $8C, $41
    .byte 3, -26, $9C, $41
    .byte -8, -9, $D8, $43
    .byte 0, -9, $C8, $43
    L_31865B:
    .byte $04
    .byte -19, -21, $8C, $01
    .byte -11, -26, $9C, $01
    .byte 0, -9, $D8, $03
    .byte -8, -9, $C8, $03
    L_31866C:
    .byte $06
    .byte 8, -31, $CE, $41
    .byte -16, -31, $CE, $01
    .byte -8, -31, $EE, $01
    .byte 0, -31, $EE, $41
    .byte -8, -9, $D8, $43
    .byte 0, -9, $C8, $43
    L_318685:
    .byte $06
    .byte -16, -31, $CE, $01
    .byte 8, -31, $CE, $41
    .byte 0, -31, $EE, $41
    .byte -8, -31, $EE, $01
    .byte 0, -9, $D8, $03
    .byte -8, -9, $C8, $03
    L_31869E:
    .byte $04
    .byte -19, -21, $8C, $01
    .byte -11, -26, $9C, $01
    .byte -8, -9, $9A, $43
    .byte 0, -9, $8A, $43
    L_3186AF:
    .byte $04
    .byte 11, -21, $8C, $41
    .byte 3, -26, $9C, $41
    .byte 0, -9, $9A, $03
    .byte -8, -9, $8A, $03
    L_3186C0:
    .byte $04
    .byte -20, -11, $CE, $81
    .byte -12, -17, $BE, $41
    .byte -8, -9, $9A, $43
    .byte 0, -9, $8A, $43
    L_3186D1:
    .byte $04
    .byte 12, -11, $CE, $C1
    .byte 4, -17, $BE, $01
    .byte 0, -9, $9A, $03
    .byte -8, -9, $8A, $03
    L_3186E2:
    .byte $04
    .byte -11, -12, $CE, $81
    .byte -3, -18, $BE, $41
    .byte -8, -9, $E8, $03
    .byte 0, -9, $F8, $03
    L_3186F3:
    .byte $04
    .byte 3, -12, $CE, $C1
    .byte -5, -18, $BE, $01
    .byte 0, -9, $E8, $43
    .byte -8, -9, $F8, $43
    L_318704:
    .byte $04
    .byte -4, -7, $CE, $81
    .byte 4, -13, $BE, $41
    .byte 1, -9, $E0, $43
    .byte -7, -9, $F0, $43
    L_318715:
    .byte $04
    .byte -4, -7, $CE, $C1
    .byte -12, -13, $BE, $01
    .byte -9, -9, $E0, $03
    .byte -1, -9, $F0, $03
    L_318726:
    .byte $02
    .byte -8, -9, $92, $43
    .byte 0, -9, $82, $43
    L_31872F:
    .byte $02
    .byte 0, -9, $92, $03
    .byte -8, -9, $82, $03
    L_318738:
    .byte $05
    .byte -28, -11, $84, $03
    .byte -20, -11, $94, $03
    .byte -12, -10, $A4, $03
    .byte -8, -9, $D2, $43
    .byte 0, -9, $C2, $43
    L_31874D:
    .byte $05
    .byte 20, -11, $84, $43
    .byte 12, -11, $94, $43
    .byte 4, -10, $A4, $43
    .byte 0, -9, $D2, $03
    .byte -8, -9, $C2, $03
    L_318762:
    .byte $05
    .byte -16, -10, $84, $03
    .byte -8, -10, $94, $03
    .byte 0, -10, $A4, $03
    .byte -8, -9, $D2, $43
    .byte 0, -9, $C2, $43
    L_318777:
    .byte $05
    .byte 8, -10, $84, $43
    .byte 0, -10, $94, $43
    .byte -8, -10, $A4, $43
    .byte 0, -9, $D2, $03
    .byte -8, -9, $C2, $03
    L_31878C:
    .byte $05
    .byte -8, -10, $84, $03
    .byte 0, -10, $94, $03
    .byte 8, -10, $A4, $03
    .byte -8, -9, $D2, $43
    .byte 0, -9, $C2, $43
    L_3187A1:
    .byte $05
    .byte 0, -10, $84, $43
    .byte -8, -10, $94, $43
    .byte -16, -10, $A4, $43
    .byte 0, -9, $D2, $03
    .byte -8, -9, $C2, $03
    L_3187B6:
    .byte $02
    .byte -8, -9, $C1, $03
    .byte 0, -9, $F1, $43
    L_3187BF:
    .byte $02
    .byte 0, -9, $C1, $43
    .byte -8, -9, $F1, $03
    L_3187C8:
    .byte $01
    .byte -4, -9, $F3, $43
    L_3187CD:
    .byte $01
    .byte -4, -9, $F3, $03
    L_3187D2:
    .byte $01
    .byte -4, -9, $E3, $03
    L_3187D7:
    .byte $01
    .byte -4, -9, $E3, $C3
    L_3187DC:
    .byte $02
    .byte 0, -9, $D3, $43
    .byte -8, -9, $D3, $03
    L_3187E5:
    .byte $02
    .byte -8, -9, $C3, $03
    .byte 0, -9, $C3, $43
    L_3187EE:
    .byte $0B
    .byte 0, -9, $DE, $01
    .byte -8, -9, $DE, $41
    .byte 0, -29, $FC, $42
    .byte -8, -29, $FC, $02
    .byte 4, -37, $FA, $02
    .byte -4, -37, $EA, $02
    .byte -12, -37, $DA, $02
    .byte -16, -53, $80, $02
    .byte 8, -53, $CA, $02
    .byte 0, -53, $A8, $02
    .byte -8, -53, $90, $02
    L_31881B:
    .byte $0B
    .byte -8, -9, $DE, $41
    .byte 0, -9, $DE, $01
    .byte 0, -25, $FC, $42
    .byte -8, -25, $FC, $02
    .byte 4, -37, $FA, $02
    .byte -4, -37, $EA, $02
    .byte -12, -37, $DA, $02
    .byte -16, -53, $80, $02
    .byte 8, -53, $CA, $02
    .byte 0, -53, $A8, $02
    .byte -8, -53, $90, $02
    L_318848:
    .byte $0B
    .byte 0, -9, $DE, $01
    .byte -8, -9, $DE, $41
    .byte 0, -21, $FC, $42
    .byte -8, -21, $FC, $02
    .byte 4, -37, $FA, $01
    .byte -4, -37, $EA, $01
    .byte -12, -37, $DA, $01
    .byte -16, -53, $80, $01
    .byte 8, -53, $CA, $01
    .byte 0, -53, $A8, $01
    .byte -8, -53, $90, $01
    L_318875:
    .byte $02
    .byte -8, -9, $DE, $41
    .byte 0, -9, $DE, $01
    L_31887E:
    .byte $01
    .byte -4, -10, $9E, $01
    L_318883:
    .byte $02
    .byte 3, -6, $CE, $C1
    .byte -5, -12, $BE, $01
    L_31888C:
    .byte $02
    .byte 3, -11, $CE, $41
    .byte -5, -5, $BE, $81
    L_318895:
    .byte $01
    .byte -4, -8, $9E, $81
    L_31889A:
    .byte $01
    .byte -4, -8, $9E, $C1
    L_31889F:
    .byte $02
    .byte -11, -11, $CE, $01
    .byte -3, -5, $BE, $C1
    L_3188A8:
    .byte $02
    .byte -11, -6, $CE, $81
    .byte -3, -12, $BE, $41
    L_3188B1:
    .byte $01
    .byte -4, -10, $9E, $41
    L_3188B6:
    .byte $04
    .byte -24, -3, $CE, $01
    .byte -16, 3, $BE, $C1
    .byte 0, -9, $D6, $03
    .byte -8, -9, $C6, $03
    L_3188C7:
    .byte $05
    .byte -18, 1, $FE, $41
    .byte -26, 1, $FE, $81
    .byte -16, 3, $BE, $C1
    .byte 0, -9, $D6, $03
    .byte -8, -9, $C6, $03
    L_3188DC:
    .byte $05
    .byte -18, 1, $FE, $C1
    .byte -26, 1, $FE, $01
    .byte -16, 3, $BE, $C1
    .byte 0, -9, $D6, $03
    .byte -8, -9, $C6, $03
    L_3188F1:
    .byte $03
    .byte -16, -21, $AE, $41
    .byte 0, -9, $B6, $03
    .byte -8, -9, $A6, $03
    L_3188FE:
    .byte $05
    .byte -24, -25, $FE, $81
    .byte -16, -25, $FE, $41
    .byte -16, -21, $AE, $41
    .byte 0, -9, $B6, $03
    .byte -8, -9, $A6, $03
    L_318913:
    .byte $05
    .byte -16, -25, $FE, $C1
    .byte -24, -25, $FE, $01
    .byte -16, -21, $AE, $41
    .byte 0, -9, $B6, $03
    .byte -8, -9, $A6, $03
    L_318928:
    .byte $03
    .byte -12, -24, $16, $41
    .byte -8, -9, $00, $00
    .byte 0, -9, $10, $00
    L_318935:
    .byte $03
    .byte -7, -24, $16, $01
    .byte 0, -9, $12, $00
    .byte -8, -9, $02, $00
    L_318942:
    .byte $04
    .byte 2, -24, $18, $41
    .byte 10, -18, $08, $41
    .byte 0, -7, $14, $80
    .byte -8, -10, $04, $00
    L_318953:
    .byte $04
    .byte 3, 7, $18, $C1
    .byte 11, -1, $08, $C1
    .byte -8, -9, $04, $00
    .byte 0, -9, $14, $00
    L_318964:
    .byte $04
    .byte -10, 7, $18, $81
    .byte -18, -1, $08, $81
    .byte 0, -9, $06, $00
    .byte -8, -9, $14, $40
    L_318975:
    .byte $04
    .byte -10, -25, $18, $01
    .byte -18, -17, $08, $01
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_318986:
    .byte $05
    .byte -19, -26, $0A, $81
    .byte -9, -26, $0A, $41
    .byte -13, -24, $16, $41
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_31899B:
    .byte $05
    .byte -19, -26, $1A, $81
    .byte -9, -27, $1A, $41
    .byte -13, -24, $16, $41
    .byte 0, -9, $10, $00
    .byte -8, -9, $00, $00
    L_3189B0:
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
    L_3189E9:
    .byte $03
    .byte 0, -24, $16, $41
    .byte -7, -9, $12, $40
    .byte 1, -9, $02, $40
    L_3189F6:
    .byte $02
    .byte 0, -9, $0A, $C1
    .byte -8, -9, $0A, $01
    L_3189FF:
    .byte $02
    .byte 0, -9, $1A, $C1
    .byte -8, -9, $1A, $01
    L_318A08:
    .byte $02
    .byte -8, -9, $B8, $43
    .byte 0, -9, $A8, $43
    L_318A11:
    .byte $02
    .byte 0, -9, $B8, $03
    .byte -8, -9, $A8, $03
    L_318A1A:
    .byte $01
    .byte -5, -8, $C4, $43
    L_318A1F:
    .byte $01
    .byte -3, -8, $C4, $03
    L_318A24:
    .byte $01
    .byte 0, -8, $B4, $43
    L_318A29:
    .byte $01
    .byte -8, -8, $B4, $03
    L_318A2E:
    .byte $02
    .byte -8, -9, $B0, $43
    .byte 0, -9, $A0, $43
    L_318A37:
    .byte $02
    .byte 0, -9, $B0, $03
    .byte -8, -9, $A0, $03
    L_318A40:
    .byte $05
    .byte -29, -19, $C0, $83
    .byte -21, -19, $D0, $83
    .byte -13, -19, $E0, $83
    .byte -8, -9, $B2, $43
    .byte 0, -9, $A2, $43
    L_318A55:
    .byte $05
    .byte 21, -19, $C0, $C3
    .byte 13, -19, $D0, $C3
    .byte 5, -19, $E0, $C3
    .byte 0, -9, $B2, $03
    .byte -8, -9, $A2, $03
    L_318A6A:
    .byte $05
    .byte -24, -15, $C0, $83
    .byte -16, -15, $D0, $83
    .byte -8, -15, $E0, $83
    .byte -7, -9, $B2, $43
    .byte 1, -9, $A2, $43
    L_318A7F:
    .byte $05
    .byte 16, -15, $C0, $C3
    .byte 8, -15, $D0, $C3
    .byte 0, -15, $E0, $C3
    .byte -1, -9, $B2, $03
    .byte -9, -9, $A2, $03
    L_318A94:
    .byte $05
    .byte -16, -15, $C0, $83
    .byte -8, -15, $D0, $83
    .byte 0, -15, $E0, $83
    .byte -6, -9, $B2, $43
    .byte 2, -9, $A2, $43
    L_318AA9:
    .byte $05
    .byte 8, -15, $C0, $C3
    .byte 0, -15, $D0, $C3
    .byte -8, -15, $E0, $C3
    .byte -2, -9, $B2, $03
    .byte -10, -9, $A2, $03
    L_318ABE:
    .byte $04
    .byte -12, -10, $C0, $03
    .byte -4, -11, $D0, $03
    .byte 4, -11, $E0, $03
    .byte -7, -9, $B2, $43
    L_318ACF:
    .byte $04
    .byte 4, -10, $C0, $43
    .byte -4, -11, $D0, $43
    .byte -12, -11, $E0, $43
    .byte -1, -9, $B2, $03
    L_318AE0:
    .byte $02
    .byte -10, -9, $C0, $03
    .byte -2, -9, $E2, $03
    L_318AE9:
    .byte $02
    .byte 2, -9, $C0, $43
    .byte -6, -9, $E2, $43
    L_318AF2:
    .byte $01
    .byte -3, -9, $D2, $03
    L_318AF7:
    .byte $01
    .byte -4, -9, $D2, $83
    L_318AFC:
    .byte $02
    .byte 0, -9, $C2, $43
    .byte -8, -9, $C2, $03
    L_318B05:
    .byte $02
    .byte 0, -9, $A4, $43
    .byte -8, -9, $A4, $03
    L_318B0E:
    .byte $02
    .byte -8, -9, $B6, $43
    .byte 0, -9, $A6, $43
    L_318B17:
    .byte $02
    .byte 0, -9, $B6, $03
    .byte -8, -9, $A6, $03
    L_318B20:
    .byte $08
    .byte 0, -1, $DC, $C1
    .byte 0, -17, $DC, $41
    .byte -8, -1, $DC, $81
    .byte -8, -17, $DC, $01
    .byte 8, -1, $CC, $C1
    .byte 8, -17, $CC, $41
    .byte -16, -1, $CC, $81
    .byte -16, -17, $CC, $01
    L_318B41:
    .byte $02
    .byte -8, -11, $BA, $42
    .byte 0, -11, $AA, $42
    L_318B4A:
    .byte $02
    .byte -7, -10, $BC, $42
    .byte 1, -10, $AC, $42
    L_318B53:
    .byte $02
    .byte -6, -9, $DA, $42
    .byte 2, -9, $CA, $42
    L_318B5C:
    .byte $02
    .byte -6, -9, $DA, $C2
    .byte 2, -9, $CA, $C2
    L_318B65:
    .byte $02
    .byte -7, -8, $BC, $C2
    .byte 1, -8, $AC, $C2
    L_318B6E:
    .byte $02
    .byte -8, -7, $BA, $C2
    .byte 0, -7, $AA, $C2
    L_318B77:
    .byte $02
    .byte 0, -7, $BA, $82
    .byte -8, -7, $AA, $82
    L_318B80:
    .byte $02
    .byte -1, -8, $BC, $82
    .byte -9, -8, $AC, $82
    L_318B89:
    .byte $02
    .byte -2, -9, $DA, $82
    .byte -10, -9, $CA, $82
    L_318B92:
    .byte $02
    .byte -2, -9, $DA, $02
    .byte -10, -9, $CA, $02
    L_318B9B:
    .byte $02
    .byte -1, -10, $BC, $02
    .byte -9, -10, $AC, $02
    L_318BA4:
    .byte $02
    .byte 0, -11, $BA, $02
    .byte -8, -11, $AA, $02
    L_318BAD:
    .byte $02
    .byte 0, -9, $56, $00
    .byte -8, -9, $1C, $00
    L_318BB6:
    .byte $02
    .byte -8, -9, $56, $40
    .byte 0, -9, $1C, $40
    L_318BBF:
    .byte $01
    .byte 0, -9, $48, $00
    L_318BC4:
    .byte $02
    .byte 4, -9, $58, $00
    .byte -4, -9, $48, $00

L_318BCD:
    .addr L_318BF9
    .addr L_318C12
    .addr L_318C2B
    .addr L_318C44
    .addr L_318C5D
    .addr L_318C76
    .addr L_318C8F
    .addr L_318CA8
    .addr L_318CC1
    .addr L_318CDA
    .addr L_318CF3
    .addr L_318D14
    .addr L_318D35
    .addr L_318D4E
    .addr L_318D67
    .addr L_318D88
    .addr L_318DA9
    .addr L_318DB6
    .addr L_318DC3
    .addr L_318DDC
    .addr L_318DF5
    .addr L_318E0E

    L_318BF9:
    .byte $06
    .byte -10, 4, $86, $43
    .byte -2, 4, $92, $43
    .byte 6, 4, $96, $43
    .byte -10, -12, $98, $43
    .byte -2, -12, $88, $43
    .byte 6, -12, $94, $43
    L_318C12:
    .byte $06
    .byte 4, 4, $86, $03
    .byte -4, 4, $92, $03
    .byte -12, 4, $96, $03
    .byte 4, -12, $98, $03
    .byte -4, -12, $88, $03
    .byte -12, -12, $94, $03
    L_318C2B:
    .byte $06
    .byte -10, 5, $82, $03
    .byte -2, 5, $92, $43
    .byte 6, 5, $82, $43
    .byte -10, -11, $84, $43
    .byte -2, -11, $90, $43
    .byte 6, -11, $80, $43
    L_318C44:
    .byte $06
    .byte 4, 5, $82, $43
    .byte -4, 5, $92, $03
    .byte -12, 5, $82, $03
    .byte 4, -11, $84, $03
    .byte -4, -11, $90, $03
    .byte -12, -11, $80, $03
    L_318C5D:
    .byte $06
    .byte -11, 4, $82, $03
    .byte -3, 4, $92, $03
    .byte 5, 4, $86, $03
    .byte -11, -12, $84, $43
    .byte -3, -12, $90, $43
    .byte 5, -12, $80, $43
    L_318C76:
    .byte $06
    .byte 5, 4, $82, $43
    .byte -3, 4, $92, $43
    .byte -11, 4, $86, $43
    .byte 5, -12, $84, $03
    .byte -3, -12, $90, $03
    .byte -11, -12, $80, $03
    L_318C8F:
    .byte $06
    .byte -11, 4, $86, $43
    .byte -3, 4, $92, $43
    .byte 5, 4, $82, $43
    .byte -11, -12, $84, $43
    .byte -3, -12, $90, $43
    .byte 5, -12, $80, $43
    L_318CA8:
    .byte $06
    .byte 5, 4, $86, $03
    .byte -3, 4, $92, $03
    .byte -11, 4, $82, $03
    .byte 5, -12, $84, $03
    .byte -3, -12, $90, $03
    .byte -11, -12, $80, $03
    L_318CC1:
    .byte $06
    .byte -9, 4, $8A, $43
    .byte -1, 4, $92, $43
    .byte 7, 4, $82, $43
    .byte -9, -12, $9E, $43
    .byte -1, -12, $8E, $43
    .byte 7, -12, $8C, $43
    L_318CDA:
    .byte $06
    .byte 3, 4, $8A, $03
    .byte -5, 4, $92, $03
    .byte -13, 4, $82, $03
    .byte 3, -12, $9E, $03
    .byte -5, -12, $8E, $03
    .byte -13, -12, $8C, $03
    L_318CF3:
    .byte $08
    .byte 12, -3, $B8, $C1
    .byte 12, -19, $B8, $41
    .byte -12, 3, $E8, $43
    .byte -4, 3, $F4, $43
    .byte 4, 3, $E6, $43
    .byte -12, -13, $F6, $43
    .byte -4, -13, $F2, $43
    .byte 4, -13, $E4, $43
    L_318D14:
    .byte $08
    .byte -18, -3, $B8, $81
    .byte -18, -19, $B8, $01
    .byte 6, 3, $E8, $03
    .byte -2, 3, $F4, $03
    .byte -10, 3, $E6, $03
    .byte 6, -13, $F6, $03
    .byte -2, -13, $F2, $03
    .byte -10, -13, $E4, $03
    L_318D35:
    .byte $06
    .byte -12, 3, $E8, $43
    .byte -4, 3, $F4, $43
    .byte 4, 3, $E6, $43
    .byte -12, -13, $F6, $43
    .byte -4, -13, $F2, $43
    .byte 4, -13, $E4, $43
    L_318D4E:
    .byte $06
    .byte 6, 3, $E8, $03
    .byte -2, 3, $F4, $03
    .byte -10, 3, $E6, $03
    .byte 6, -13, $F6, $03
    .byte -2, -13, $F2, $03
    .byte -10, -13, $E4, $03
    L_318D67:
    .byte $08
    .byte -21, -2, $B8, $81
    .byte -21, -18, $B8, $01
    .byte -12, 3, $E8, $43
    .byte -4, 3, $F4, $43
    .byte 4, 3, $E6, $43
    .byte -12, -13, $F6, $43
    .byte -4, -13, $F2, $43
    .byte 4, -13, $E4, $43
    L_318D88:
    .byte $08
    .byte 15, -2, $B8, $C1
    .byte 15, -18, $B8, $41
    .byte 6, 3, $E8, $03
    .byte -2, 3, $F4, $03
    .byte -10, 3, $E6, $03
    .byte 6, -13, $F6, $03
    .byte -2, -13, $F2, $03
    .byte -10, -13, $E4, $03
    L_318DA9:
    .byte $03
    .byte -11, -3, $E2, $43
    .byte -3, -3, $F0, $43
    .byte 5, -3, $E0, $43
    L_318DB6:
    .byte $03
    .byte 5, -3, $E2, $03
    .byte -3, -3, $F0, $03
    .byte -11, -3, $E0, $03
    L_318DC3:
    .byte $06
    .byte 5, 6, $9C, $43
    .byte 4, -10, $9A, $43
    .byte -11, 6, $9C, $03
    .byte -12, -10, $9A, $03
    .byte -3, 6, $DE, $03
    .byte -4, -10, $CE, $03
    L_318DDC:
    .byte $06
    .byte 5, 6, $9C, $43
    .byte 5, -10, $9A, $43
    .byte -11, 6, $9C, $03
    .byte -11, -10, $9A, $03
    .byte -3, 6, $DE, $03
    .byte -3, -10, $CE, $03
    L_318DF5:
    .byte $06
    .byte 5, 6, $9C, $43
    .byte 6, -10, $9A, $43
    .byte -11, 6, $9C, $03
    .byte -10, -10, $9A, $03
    .byte -3, 6, $DE, $03
    .byte -2, -10, $CE, $03
    L_318E0E:
    .byte $02
    .byte 1, -7, $C6, $C3
    .byte -7, -7, $C6, $03

L_318E17:
    .addr L_318E9D
    .addr L_318EB6
    .addr L_318ECF
    .addr L_318EE8
    .addr L_318F01
    .addr L_318F1A
    .addr L_318F33
    .addr L_318F4C
    .addr L_318F65
    .addr L_318F7E
    .addr L_318F97
    .addr L_318FB4
    .addr L_318FD1
    .addr L_318FEA
    .addr L_319003
    .addr L_31900C
    .addr L_319015
    .addr L_31901E
    .addr L_319027
    .addr L_319030
    .addr L_319039
    .addr L_319042
    .addr L_31904B
    .addr L_319054
    .addr L_31905D
    .addr L_319066
    .addr L_31906F
    .addr L_319078
    .addr L_319081
    .addr L_31908A
    .addr L_319093
    .addr L_31909C
    .addr L_3190A5
    .addr L_3190AE
    .addr L_3190B7
    .addr L_3190D8
    .addr L_3190F9
    .addr L_319102
    .addr L_31910B
    .addr L_319114
    .addr L_31911D
    .addr L_319126
    .addr L_31912F
    .addr L_319138
    .addr L_319141
    .addr L_31914A
    .addr L_319153
    .addr L_31915C
    .addr L_319165
    .addr L_31916E
    .addr L_319177
    .addr L_319180
    .addr L_319189
    .addr L_319192
    .addr L_31919B
    .addr L_3191A4
    .addr L_3191AD
    .addr L_3191BA
    .addr L_3191C7
    .addr L_3191D0
    .addr L_3191D9
    .addr L_3191E2
    .addr L_3191EB
    .addr L_3191F4
    .addr L_3191FD
    .addr L_319206
    .addr L_31920F

    L_318E9D:
    .byte $06
    .byte -13, 0, $A2, $43
    .byte -5, 0, $92, $43
    .byte 3, 0, $82, $43
    .byte -13, -16, $A0, $43
    .byte -5, -16, $90, $43
    .byte 3, -16, $80, $43
    L_318EB6:
    .byte $06
    .byte 7, 0, $A2, $03
    .byte -1, 0, $92, $03
    .byte -9, 0, $82, $03
    .byte 7, -16, $A0, $03
    .byte -1, -16, $90, $03
    .byte -9, -16, $80, $03
    L_318ECF:
    .byte $06
    .byte 3, 1, $8A, $43
    .byte -5, 1, $9A, $43
    .byte -13, 1, $AA, $43
    .byte -13, -15, $A8, $43
    .byte -5, -15, $98, $43
    .byte 3, -15, $88, $43
    L_318EE8:
    .byte $06
    .byte -9, 1, $8A, $03
    .byte -1, 1, $9A, $03
    .byte 7, 1, $AA, $03
    .byte 7, -15, $A8, $03
    .byte -1, -15, $98, $03
    .byte -9, -15, $88, $03
    L_318F01:
    .byte $06
    .byte -13, 0, $A6, $43
    .byte -5, 0, $96, $43
    .byte 3, 0, $86, $43
    .byte -13, -16, $A4, $43
    .byte -5, -16, $94, $43
    .byte 3, -16, $84, $43
    L_318F1A:
    .byte $06
    .byte 7, 0, $A6, $03
    .byte -1, 0, $96, $03
    .byte -9, 0, $86, $03
    .byte 7, -16, $A4, $03
    .byte -1, -16, $94, $03
    .byte -9, -16, $84, $03
    L_318F33:
    .byte $06
    .byte -13, 2, $9C, $43
    .byte -5, 2, $8C, $43
    .byte 3, 2, $82, $43
    .byte -13, -14, $A0, $43
    .byte -5, -14, $90, $43
    .byte 3, -14, $80, $43
    L_318F4C:
    .byte $06
    .byte 7, 2, $9C, $03
    .byte -1, 2, $8C, $03
    .byte -9, 2, $82, $03
    .byte 7, -14, $A0, $03
    .byte -1, -14, $90, $03
    .byte -9, -14, $80, $03
    L_318F65:
    .byte $06
    .byte -13, 0, $AE, $43
    .byte -5, 0, $9E, $43
    .byte 3, 0, $8E, $43
    .byte -13, -16, $A0, $43
    .byte -5, -16, $90, $43
    .byte 3, -16, $80, $43
    L_318F7E:
    .byte $06
    .byte 7, 0, $AE, $03
    .byte -1, 0, $9E, $03
    .byte -9, 0, $8E, $03
    .byte 7, -16, $A0, $03
    .byte -1, -16, $90, $03
    .byte -9, -16, $80, $03
    L_318F97:
    .byte $07
    .byte 11, -16, $B4, $43
    .byte 11, 0, $B6, $43
    .byte -5, 0, $D6, $43
    .byte 3, 0, $C6, $43
    .byte -13, -16, $A0, $43
    .byte -5, -16, $90, $43
    .byte 3, -16, $C4, $43
    L_318FB4:
    .byte $07
    .byte -17, -16, $B4, $03
    .byte -17, 0, $B6, $03
    .byte -1, 0, $D6, $03
    .byte -9, 0, $C6, $03
    .byte 7, -16, $A0, $03
    .byte -1, -16, $90, $03
    .byte -9, -16, $C4, $03
    L_318FD1:
    .byte $06
    .byte -13, 0, $D2, $43
    .byte -13, -16, $D0, $43
    .byte -5, 0, $C2, $43
    .byte -5, -16, $C0, $43
    .byte 3, 0, $B2, $43
    .byte 3, -16, $B0, $43
    L_318FEA:
    .byte $06
    .byte 7, 0, $D2, $03
    .byte 7, -16, $D0, $03
    .byte -1, 0, $C2, $03
    .byte -1, -16, $C0, $03
    .byte -9, 0, $B2, $03
    .byte -9, -16, $B0, $03
    L_319003:
    .byte $02
    .byte 18, -9, $CA, $43
    .byte 26, -9, $BA, $43
    L_31900C:
    .byte $02
    .byte -26, -9, $CA, $03
    .byte -34, -9, $BA, $03
    L_319015:
    .byte $02
    .byte 15, -10, $C8, $43
    .byte 23, -10, $B8, $43
    L_31901E:
    .byte $02
    .byte -22, -10, $C8, $03
    .byte -30, -10, $B8, $03
    L_319027:
    .byte $02
    .byte 17, -5, $CA, $43
    .byte 25, -5, $BA, $43
    L_319030:
    .byte $02
    .byte -25, -5, $CA, $03
    .byte -33, -5, $BA, $03
    L_319039:
    .byte $02
    .byte 10, -10, $C8, $43
    .byte 18, -10, $B8, $43
    L_319042:
    .byte $02
    .byte -18, -10, $C8, $03
    .byte -26, -10, $B8, $03
    L_31904B:
    .byte $02
    .byte 16, -5, $C8, $C3
    .byte 24, -5, $B8, $C3
    L_319054:
    .byte $02
    .byte -25, -5, $C8, $83
    .byte -33, -5, $B8, $83
    L_31905D:
    .byte $02
    .byte 6, -9, $CA, $43
    .byte 14, -9, $BA, $43
    L_319066:
    .byte $02
    .byte -14, -9, $CA, $03
    .byte -22, -9, $BA, $03
    L_31906F:
    .byte $02
    .byte 13, -3, $CA, $C3
    .byte 21, -3, $BA, $C3
    L_319078:
    .byte $02
    .byte -21, -3, $CA, $83
    .byte -29, -3, $BA, $83
    L_319081:
    .byte $02
    .byte 4, -5, $CA, $43
    .byte 12, -5, $BA, $43
    L_31908A:
    .byte $02
    .byte -12, -5, $CA, $03
    .byte -20, -5, $BA, $03
    L_319093:
    .byte $02
    .byte 7, -5, $C8, $C3
    .byte 15, -5, $B8, $C3
    L_31909C:
    .byte $02
    .byte -15, -5, $C8, $83
    .byte -23, -5, $B8, $83
    L_3190A5:
    .byte $02
    .byte 3, -1, $CA, $43
    .byte 11, -1, $BA, $43
    L_3190AE:
    .byte $02
    .byte -11, -1, $CA, $03
    .byte -19, -1, $BA, $03
    L_3190B7:
    .byte $08
    .byte 3, 0, $B2, $43
    .byte 3, -16, $B0, $43
    .byte 13, -16, $B8, $43
    .byte 5, -16, $C8, $43
    .byte -13, 0, $D2, $43
    .byte -13, -16, $D0, $43
    .byte -5, 0, $C2, $43
    .byte -5, -16, $C0, $43
    L_3190D8:
    .byte $08
    .byte -9, 0, $B2, $03
    .byte -9, -16, $B0, $03
    .byte -19, -16, $B8, $03
    .byte -11, -16, $C8, $03
    .byte 7, 0, $D2, $03
    .byte 7, -16, $D0, $03
    .byte -1, 0, $C2, $03
    .byte -1, -16, $C0, $03
    L_3190F9:
    .byte $02
    .byte -8, -8, $BC, $43
    .byte 0, -8, $AC, $43
    L_319102:
    .byte $02
    .byte -8, -8, $AC, $03
    .byte 0, -8, $BC, $03
    L_31910B:
    .byte $02
    .byte 0, -8, $BC, $83
    .byte -8, -8, $AC, $83
    L_319114:
    .byte $02
    .byte 0, -8, $AC, $C3
    .byte -8, -8, $BC, $C3
    L_31911D:
    .byte $02
    .byte -8, -8, $F0, $42
    .byte 0, -8, $E0, $42
    L_319126:
    .byte $02
    .byte -8, -8, $E0, $02
    .byte 0, -8, $F0, $02
    L_31912F:
    .byte $02
    .byte -8, -8, $F2, $42
    .byte 0, -8, $E2, $42
    L_319138:
    .byte $02
    .byte -8, -8, $E2, $02
    .byte 0, -8, $F2, $02
    L_319141:
    .byte $02
    .byte -8, -8, $F4, $42
    .byte 0, -8, $E4, $42
    L_31914A:
    .byte $02
    .byte -8, -8, $E4, $02
    .byte 0, -8, $F4, $02
    L_319153:
    .byte $02
    .byte -8, -8, $FC, $42
    .byte 0, -8, $EC, $42
    L_31915C:
    .byte $02
    .byte -8, -8, $EC, $02
    .byte 0, -8, $FC, $02
    L_319165:
    .byte $02
    .byte -8, -8, $FE, $42
    .byte 0, -8, $EE, $42
    L_31916E:
    .byte $02
    .byte -8, -8, $EE, $02
    .byte 0, -8, $FE, $02
    L_319177:
    .byte $02
    .byte 0, -8, $DE, $02
    .byte -8, -8, $CE, $02
    L_319180:
    .byte $02
    .byte 0, -8, $CE, $42
    .byte -8, -8, $DE, $42
    L_319189:
    .byte $02
    .byte 0, -8, $D8, $C2
    .byte -8, -8, $D8, $02
    L_319192:
    .byte $02
    .byte -8, -8, $D8, $82
    .byte 0, -8, $D8, $42
    L_31919B:
    .byte $02
    .byte 0, -8, $E6, $43
    .byte -8, -8, $F6, $43
    L_3191A4:
    .byte $02
    .byte -8, -8, $E6, $03
    .byte 0, -8, $F6, $03
    L_3191AD:
    .byte $03
    .byte -18, -12, $D4, $43
    .byte -10, -10, $DC, $43
    .byte -2, -10, $CC, $43
    L_3191BA:
    .byte $03
    .byte 10, -12, $D4, $03
    .byte 2, -10, $DC, $03
    .byte -6, -10, $CC, $03
    L_3191C7:
    .byte $02
    .byte 0, -8, $FA, $02
    .byte -8, -8, $EA, $02
    L_3191D0:
    .byte $02
    .byte 0, -8, $EA, $42
    .byte -8, -8, $FA, $42
    L_3191D9:
    .byte $02
    .byte 0, -12, $F8, $02
    .byte -8, -12, $E8, $02
    L_3191E2:
    .byte $02
    .byte 0, -12, $E8, $42
    .byte -8, -12, $F8, $42
    L_3191EB:
    .byte $02
    .byte 0, -8, $DA, $80
    .byte -8, -8, $DA, $40
    L_3191F4:
    .byte $02
    .byte -8, -8, $DA, $C0
    .byte 0, -8, $DA, $00
    L_3191FD:
    .byte $02
    .byte 0, -8, $DA, $81
    .byte -8, -8, $DA, $41
    L_319206:
    .byte $02
    .byte -8, -8, $DA, $C1
    .byte 0, -8, $DA, $01
    L_31920F:
    .byte $02
    .byte 0, -8, $BE, $41
    .byte -8, -8, $BE, $01

L_319218:
    .addr L_3192DA
    .addr L_3192F3
    .addr L_31930C
    .addr L_319325
    .addr L_31933E
    .addr L_319357
    .addr L_319370
    .addr L_319389
    .addr L_3193A2
    .addr L_3193BB
    .addr L_3193D4
    .addr L_3193ED
    .addr L_319406
    .addr L_31941F
    .addr L_319438
    .addr L_319451
    .addr L_31946A
    .addr L_319483
    .addr L_31949C
    .addr L_3194B5
    .addr L_3194CE
    .addr L_3194E7
    .addr L_319500
    .addr L_319521
    .addr L_319542
    .addr L_31955B
    .addr L_319574
    .addr L_31958D
    .addr L_3195A6
    .addr L_3195BF
    .addr L_3192DA
    .addr L_3192DA
    .addr L_3195D8
    .addr L_3195F1
    .addr L_31960A
    .addr L_319623
    .addr L_31963C
    .addr L_319655
    .addr L_31966E
    .addr L_319687
    .addr L_3196A0
    .addr L_3196B9
    .addr L_3196D2
    .addr L_3196EB
    .addr L_319704
    .addr L_31970D
    .addr L_319716
    .addr L_31972F
    .addr L_319748
    .addr L_319761
    .addr L_31977A
    .addr L_319793
    .addr L_3197AC
    .addr L_3197C5
    .addr L_3197DE
    .addr L_3197FF
    .addr L_319820
    .addr L_319841
    .addr L_319862
    .addr L_319887
    .addr L_3198AC
    .addr L_3198C9
    .addr L_3198E6
    .addr L_3198FF
    .addr L_319918
    .addr L_319931
    .addr L_31994A
    .addr L_319963
    .addr L_31997C
    .addr L_319995
    .addr L_3199AE
    .addr L_3199C7
    .addr L_3199E0
    .addr L_3199F9
    .addr L_319A12
    .addr L_319A2B
    .addr L_319A44
    .addr L_319A5D
    .addr L_319A76
    .addr L_319A7F
    .addr L_319A88
    .addr L_319A91
    .addr L_319A9A
    .addr L_319AA3
    .addr L_319AAC
    .addr L_319AB5
    .addr L_319ABE
    .addr L_319ACB
    .addr L_319AD8
    .addr L_319AE5
    .addr L_319AF2
    .addr L_319AFB
    .addr L_319B04
    .addr L_319B0D
    .addr L_319B1A
    .addr L_319B23
    .addr L_319B2C

    L_3192DA:
    .byte $06
    .byte 5, -22, $F4, $02
    .byte -3, -22, $E4, $02
    .byte -11, -22, $D4, $02
    .byte 5, -6, $F6, $02
    .byte -3, -6, $E6, $02
    .byte -11, -6, $D6, $02
    L_3192F3:
    .byte $06
    .byte -13, -22, $F4, $42
    .byte -5, -22, $E4, $42
    .byte 3, -22, $D4, $42
    .byte -13, -6, $F6, $42
    .byte -5, -6, $E6, $42
    .byte 3, -6, $D6, $42
    L_31930C:
    .byte $06
    .byte 3, -22, $D4, $42
    .byte -5, -22, $E4, $42
    .byte -13, -22, $F4, $42
    .byte 5, -6, $F6, $02
    .byte -3, -6, $E6, $02
    .byte -11, -6, $D6, $02
    L_319325:
    .byte $06
    .byte -11, -22, $D4, $02
    .byte -3, -22, $E4, $02
    .byte 5, -22, $F4, $02
    .byte -13, -6, $F6, $42
    .byte -5, -6, $E6, $42
    .byte 3, -6, $D6, $42
    L_31933E:
    .byte $06
    .byte 5, -22, $F4, $02
    .byte -3, -22, $E4, $02
    .byte -11, -22, $D4, $02
    .byte -11, -6, $D6, $02
    .byte -3, -6, $EA, $02
    .byte 5, -6, $F6, $02
    L_319357:
    .byte $06
    .byte -13, -22, $F4, $42
    .byte -5, -22, $E4, $42
    .byte 3, -22, $D4, $42
    .byte 3, -6, $D6, $42
    .byte -5, -6, $EA, $42
    .byte -13, -6, $F6, $42
    L_319370:
    .byte $06
    .byte 3, -22, $D4, $42
    .byte -5, -22, $E4, $42
    .byte -13, -22, $F4, $42
    .byte -11, -6, $D6, $02
    .byte -3, -6, $EA, $02
    .byte 5, -6, $F6, $02
    L_319389:
    .byte $06
    .byte -11, -22, $D4, $02
    .byte -3, -22, $E4, $02
    .byte 5, -22, $F4, $02
    .byte 3, -6, $D6, $42
    .byte -5, -6, $EA, $42
    .byte -13, -6, $F6, $42
    L_3193A2:
    .byte $06
    .byte 5, -22, $F4, $02
    .byte -3, -22, $E4, $02
    .byte -11, -22, $D4, $02
    .byte -11, -6, $DA, $02
    .byte -3, -6, $EA, $02
    .byte 5, -6, $FA, $02
    L_3193BB:
    .byte $06
    .byte -13, -22, $F4, $42
    .byte -5, -22, $E4, $42
    .byte 3, -22, $D4, $42
    .byte 3, -6, $DA, $42
    .byte -5, -6, $EA, $42
    .byte -13, -6, $FA, $42
    L_3193D4:
    .byte $06
    .byte 3, -22, $D4, $42
    .byte -5, -22, $E4, $42
    .byte -13, -22, $F4, $42
    .byte -11, -6, $DA, $02
    .byte -3, -6, $EA, $02
    .byte 5, -6, $FA, $02
    L_3193ED:
    .byte $06
    .byte -11, -22, $D4, $02
    .byte -3, -22, $E4, $02
    .byte 5, -22, $F4, $02
    .byte 3, -6, $DA, $42
    .byte -5, -6, $EA, $42
    .byte -13, -6, $FA, $42
    L_319406:
    .byte $06
    .byte 5, -22, $F4, $02
    .byte -3, -22, $E4, $02
    .byte -11, -22, $D4, $02
    .byte -11, -6, $DA, $02
    .byte -3, -6, $E6, $02
    .byte 5, -6, $FA, $02
    L_31941F:
    .byte $06
    .byte -13, -22, $F4, $42
    .byte -5, -22, $E4, $42
    .byte 3, -22, $D4, $42
    .byte 3, -6, $DA, $42
    .byte -5, -6, $E6, $42
    .byte -13, -6, $FA, $42
    L_319438:
    .byte $06
    .byte 3, -22, $D4, $42
    .byte -5, -22, $E4, $42
    .byte -13, -22, $F4, $42
    .byte -11, -6, $DA, $02
    .byte -3, -6, $E6, $02
    .byte 5, -6, $FA, $02
    L_319451:
    .byte $06
    .byte -11, -22, $D4, $02
    .byte -3, -22, $E4, $02
    .byte 5, -22, $F4, $02
    .byte 3, -6, $DA, $42
    .byte -5, -6, $E6, $42
    .byte -13, -6, $FA, $42
    L_31946A:
    .byte $06
    .byte 5, -22, $F4, $02
    .byte -3, -22, $E4, $02
    .byte -11, -22, $D4, $02
    .byte -11, -6, $DA, $02
    .byte -3, -6, $CA, $02
    .byte 5, -6, $FA, $02
    L_319483:
    .byte $06
    .byte -13, -22, $F4, $42
    .byte -5, -22, $E4, $42
    .byte 3, -22, $D4, $42
    .byte 3, -6, $DA, $42
    .byte -5, -6, $CA, $42
    .byte -13, -6, $FA, $42
    L_31949C:
    .byte $06
    .byte 3, -22, $D4, $42
    .byte -5, -22, $E4, $42
    .byte -13, -22, $F4, $42
    .byte -11, -6, $DA, $02
    .byte -3, -6, $CA, $02
    .byte 5, -6, $FA, $02
    L_3194B5:
    .byte $06
    .byte -11, -22, $D4, $02
    .byte -3, -22, $E4, $02
    .byte 5, -22, $F4, $02
    .byte 3, -6, $DA, $42
    .byte -5, -6, $CA, $42
    .byte -13, -6, $FA, $42
    L_3194CE:
    .byte $06
    .byte 4, -22, $F4, $02
    .byte -4, -22, $E4, $02
    .byte -12, -22, $D4, $02
    .byte 4, -6, $F8, $02
    .byte -4, -6, $E8, $02
    .byte -12, -6, $D8, $02
    L_3194E7:
    .byte $06
    .byte -12, -22, $F4, $42
    .byte -4, -22, $E4, $42
    .byte 4, -22, $D4, $42
    .byte -12, -6, $F8, $42
    .byte -4, -6, $E8, $42
    .byte 4, -6, $D8, $42
    L_319500:
    .byte $08
    .byte 12, -6, $BC, $81
    .byte 4, -6, $BC, $41
    .byte 2, -22, $D4, $42
    .byte -6, -22, $E4, $42
    .byte -14, -22, $F4, $42
    .byte 4, -6, $F8, $02
    .byte -4, -6, $E8, $02
    .byte -12, -6, $D8, $02
    L_319521:
    .byte $08
    .byte -20, -6, $BC, $C1
    .byte -12, -6, $BC, $01
    .byte -10, -22, $D4, $02
    .byte -2, -22, $E4, $02
    .byte 6, -22, $F4, $02
    .byte -12, -6, $F8, $42
    .byte -4, -6, $E8, $42
    .byte 4, -6, $D8, $42
    L_319542:
    .byte $06
    .byte 3, -22, $D4, $42
    .byte -5, -22, $E4, $42
    .byte -13, -22, $F4, $42
    .byte -11, -6, $DA, $02
    .byte -3, -6, $C8, $02
    .byte 5, -6, $FA, $02
    L_31955B:
    .byte $06
    .byte -11, -22, $D4, $02
    .byte -3, -22, $E4, $02
    .byte 5, -22, $F4, $02
    .byte 3, -6, $DA, $42
    .byte -5, -6, $C8, $42
    .byte -13, -6, $FA, $42
    L_319574:
    .byte $06
    .byte 3, -22, $F4, $01
    .byte -5, -22, $E4, $01
    .byte -13, -22, $D4, $01
    .byte -13, -6, $DA, $01
    .byte -5, -6, $C8, $01
    .byte 3, -6, $FA, $01
    L_31958D:
    .byte $06
    .byte -11, -22, $F4, $41
    .byte -3, -22, $E4, $41
    .byte 5, -22, $D4, $41
    .byte 5, -6, $DA, $41
    .byte -3, -6, $C8, $41
    .byte -11, -6, $FA, $41
    L_3195A6:
    .byte $06
    .byte -12, -17, $FC, $C1
    .byte -12, -1, $EE, $C1
    .byte -4, -1, $DE, $C1
    .byte 4, -1, $FC, $01
    .byte 4, -17, $EE, $01
    .byte -4, -17, $DE, $01
    L_3195BF:
    .byte $06
    .byte -12, 1, $FC, $41
    .byte -12, -15, $EE, $41
    .byte -4, -15, $DE, $41
    .byte 4, -15, $FC, $81
    .byte 4, 1, $EE, $81
    .byte -4, 1, $DE, $81
    L_3195D8:
    .byte $06
    .byte -19, -9, $CC, $02
    .byte 5, -6, $FA, $02
    .byte -11, -6, $CE, $02
    .byte -11, -22, $DC, $02
    .byte -3, -6, $EA, $02
    .byte -3, -22, $EC, $02
    L_3195F1:
    .byte $06
    .byte 11, -9, $CC, $42
    .byte -13, -6, $FA, $42
    .byte 3, -6, $CE, $42
    .byte 3, -22, $DC, $42
    .byte -5, -6, $EA, $42
    .byte -5, -22, $EC, $42
    L_31960A:
    .byte $06
    .byte -19, -8, $CC, $82
    .byte 5, -6, $FA, $02
    .byte -11, -6, $CE, $02
    .byte -11, -22, $DC, $02
    .byte -3, -6, $EA, $02
    .byte -3, -22, $EC, $02
    L_319623:
    .byte $06
    .byte 11, -8, $CC, $C2
    .byte -13, -6, $FA, $42
    .byte 3, -6, $CE, $42
    .byte 3, -22, $DC, $42
    .byte -5, -6, $EA, $42
    .byte -5, -22, $EC, $42
    L_31963C:
    .byte $06
    .byte 4, -15, $D0, $42
    .byte -4, -22, $E0, $42
    .byte -12, -15, $F0, $42
    .byte 4, 1, $B0, $02
    .byte -4, -6, $C0, $02
    .byte -12, 1, $B0, $42
    L_319655:
    .byte $06
    .byte 4, -15, $D0, $42
    .byte -4, -22, $E0, $42
    .byte -12, -15, $F0, $42
    .byte 4, 1, $F2, $02
    .byte -4, -6, $E2, $02
    .byte -12, 1, $F2, $42
    L_31966E:
    .byte $06
    .byte -12, -15, $D0, $02
    .byte -4, -22, $E0, $02
    .byte 4, -15, $F0, $02
    .byte -12, 1, $F2, $42
    .byte -4, -6, $E2, $02
    .byte 4, 1, $F2, $02
    L_319687:
    .byte $06
    .byte 4, -1, $D0, $C2
    .byte -4, 6, $E0, $C2
    .byte -12, -1, $F0, $C2
    .byte 4, -17, $D2, $42
    .byte -4, -10, $C2, $02
    .byte -12, -17, $D2, $02
    L_3196A0:
    .byte $06
    .byte -12, -1, $D0, $82
    .byte -4, 6, $E0, $82
    .byte 4, -1, $F0, $82
    .byte -12, -17, $D2, $02
    .byte -4, -10, $C2, $02
    .byte 4, -17, $D2, $42
    L_3196B9:
    .byte $06
    .byte 4, -1, $D0, $C2
    .byte -4, 6, $E0, $C2
    .byte -12, -1, $F0, $C2
    .byte 4, -17, $B0, $82
    .byte -4, -10, $C2, $02
    .byte -12, -17, $B0, $C2
    L_3196D2:
    .byte $06
    .byte -12, -16, $FC, $C2
    .byte -12, 0, $EE, $C2
    .byte -4, 0, $DE, $C2
    .byte 4, 0, $FC, $02
    .byte 4, -16, $EE, $02
    .byte -4, -16, $DE, $02
    L_3196EB:
    .byte $06
    .byte 4, -16, $FC, $82
    .byte 4, 0, $EE, $82
    .byte -4, 0, $DE, $82
    .byte -12, 0, $FC, $42
    .byte -12, -16, $EE, $42
    .byte -4, -16, $DE, $42
    L_319704:
    .byte $02
    .byte -8, -8, $BE, $C2
    .byte 0, -8, $BE, $02
    L_31970D:
    .byte $02
    .byte -8, -8, $BE, $C1
    .byte 0, -8, $BE, $01
    L_319716:
    .byte $06
    .byte 3, -19, $80, $43
    .byte 3, -3, $82, $43
    .byte -5, -3, $92, $43
    .byte -5, -19, $90, $43
    .byte -13, -19, $A0, $43
    .byte -13, -3, $A2, $43
    L_31972F:
    .byte $06
    .byte -11, -19, $80, $03
    .byte -11, -3, $82, $03
    .byte -3, -3, $92, $03
    .byte -3, -19, $90, $03
    .byte 5, -19, $A0, $03
    .byte 5, -3, $A2, $03
    L_319748:
    .byte $06
    .byte 3, -19, $80, $43
    .byte 3, -3, $8E, $43
    .byte -5, -3, $9E, $43
    .byte -5, -19, $90, $43
    .byte -13, -19, $A0, $43
    .byte -13, -3, $AE, $43
    L_319761:
    .byte $06
    .byte -11, -19, $80, $03
    .byte -11, -3, $8E, $03
    .byte -3, -3, $9E, $03
    .byte -3, -19, $90, $03
    .byte 5, -19, $A0, $03
    .byte 5, -3, $AE, $03
    L_31977A:
    .byte $06
    .byte 3, -19, $80, $43
    .byte 3, -3, $B4, $43
    .byte -5, -3, $B6, $43
    .byte -5, -19, $90, $43
    .byte -13, -19, $C4, $43
    .byte -13, -3, $C6, $43
    L_319793:
    .byte $06
    .byte -11, -19, $80, $03
    .byte -11, -3, $B4, $03
    .byte -3, -3, $B6, $03
    .byte -3, -19, $90, $03
    .byte 5, -19, $C4, $03
    .byte 5, -3, $C6, $03
    L_3197AC:
    .byte $06
    .byte 3, -16, $80, $43
    .byte 3, 0, $8A, $43
    .byte -5, 0, $9A, $43
    .byte -5, -16, $90, $43
    .byte -13, -16, $A0, $43
    .byte -13, 0, $AA, $43
    L_3197C5:
    .byte $06
    .byte -11, -16, $80, $03
    .byte -11, 0, $8A, $03
    .byte -3, 0, $9A, $03
    .byte -3, -16, $90, $03
    .byte 5, -16, $A0, $03
    .byte 5, 0, $AA, $03
    L_3197DE:
    .byte $08
    .byte -19, -21, $9C, $41
    .byte -11, -21, $8C, $41
    .byte 3, -19, $80, $43
    .byte 3, -3, $82, $43
    .byte -5, -3, $92, $43
    .byte -5, -19, $90, $43
    .byte -13, -19, $A0, $43
    .byte -13, -3, $A2, $43
    L_3197FF:
    .byte $08
    .byte 11, -21, $9C, $01
    .byte 3, -21, $8C, $01
    .byte -11, -19, $80, $03
    .byte -11, -3, $82, $03
    .byte -3, -3, $92, $03
    .byte -3, -19, $90, $03
    .byte 5, -19, $A0, $03
    .byte 5, -3, $A2, $03
    L_319820:
    .byte $08
    .byte -5, -19, $90, $43
    .byte -13, -17, $9C, $41
    .byte -5, -17, $8C, $41
    .byte 3, -19, $80, $43
    .byte 3, -3, $82, $43
    .byte -5, -3, $92, $43
    .byte -13, -19, $A0, $43
    .byte -13, -3, $A2, $43
    L_319841:
    .byte $08
    .byte -3, -19, $90, $03
    .byte 5, -17, $9C, $01
    .byte -3, -17, $8C, $01
    .byte -11, -19, $80, $03
    .byte -11, -3, $82, $03
    .byte -3, -3, $92, $03
    .byte 5, -19, $A0, $03
    .byte 5, -3, $A2, $03
    L_319862:
    .byte $09
    .byte 3, -11, $9C, $43
    .byte 11, -11, $8C, $41
    .byte 10, -2, $88, $43
    .byte 3, -19, $80, $43
    .byte 3, -3, $82, $43
    .byte -5, -3, $98, $43
    .byte -5, -19, $90, $43
    .byte -13, -19, $C4, $43
    .byte -13, -3, $A8, $43
    L_319887:
    .byte $09
    .byte -11, -11, $9C, $03
    .byte -19, -11, $8C, $01
    .byte -18, -2, $88, $03
    .byte -11, -19, $80, $03
    .byte -11, -3, $82, $03
    .byte -3, -3, $98, $03
    .byte -3, -19, $90, $03
    .byte 5, -19, $C4, $03
    .byte 5, -3, $A8, $03
    L_3198AC:
    .byte $07
    .byte 9, 0, $88, $43
    .byte 3, -19, $80, $43
    .byte 3, -3, $82, $43
    .byte -5, -3, $98, $43
    .byte -5, -19, $90, $43
    .byte -13, -19, $C4, $43
    .byte -13, -3, $A8, $43
    L_3198C9:
    .byte $07
    .byte -17, 0, $88, $03
    .byte -11, -19, $80, $03
    .byte -11, -3, $82, $03
    .byte -3, -3, $98, $03
    .byte -3, -19, $90, $03
    .byte 5, -19, $C4, $03
    .byte 5, -3, $A8, $03
    L_3198E6:
    .byte $06
    .byte 3, -19, $80, $43
    .byte 3, -3, $B4, $43
    .byte -5, -3, $B8, $43
    .byte -5, -19, $90, $43
    .byte -13, -19, $C4, $43
    .byte -13, -3, $C6, $43
    L_3198FF:
    .byte $06
    .byte -11, -19, $80, $03
    .byte -11, -3, $B4, $03
    .byte -3, -3, $B8, $03
    .byte -3, -19, $90, $03
    .byte 5, -19, $C4, $03
    .byte 5, -3, $C6, $03
    L_319918:
    .byte $06
    .byte 1, -19, $80, $41
    .byte 1, -3, $B4, $41
    .byte -7, -3, $B8, $41
    .byte -7, -19, $90, $41
    .byte -15, -19, $C4, $41
    .byte -15, -3, $C6, $41
    L_319931:
    .byte $06
    .byte -9, -19, $80, $01
    .byte -9, -3, $B4, $01
    .byte -1, -3, $B8, $01
    .byte -1, -19, $90, $01
    .byte 7, -19, $C4, $01
    .byte 7, -3, $C6, $01
    L_31994A:
    .byte $06
    .byte 3, -19, $80, $43
    .byte 3, -3, $8A, $43
    .byte -5, -3, $9A, $43
    .byte -5, -19, $90, $43
    .byte -13, -19, $A0, $43
    .byte -13, -3, $AA, $43
    L_319963:
    .byte $06
    .byte -11, -19, $80, $03
    .byte -11, -3, $8A, $03
    .byte -3, -3, $9A, $03
    .byte -3, -19, $90, $03
    .byte 5, -19, $A0, $03
    .byte 5, -3, $AA, $03
    L_31997C:
    .byte $06
    .byte 4, -13, $86, $C3
    .byte -12, -13, $86, $83
    .byte 4, 3, $86, $43
    .byte -12, 3, $86, $03
    .byte -4, -13, $B2, $03
    .byte -4, 3, $96, $03
    L_319995:
    .byte $06
    .byte -12, -13, $86, $83
    .byte 4, -13, $84, $43
    .byte -4, -13, $94, $43
    .byte -12, 3, $86, $03
    .byte -4, 3, $96, $43
    .byte 4, 3, $86, $43
    L_3199AE:
    .byte $06
    .byte 3, -16, $80, $43
    .byte 3, 0, $B4, $43
    .byte -4, -13, $96, $C3
    .byte -4, 3, $96, $43
    .byte -12, -13, $86, $83
    .byte -12, 3, $86, $03
    L_3199C7:
    .byte $06
    .byte 3, 6, $80, $C3
    .byte 3, -10, $B4, $C3
    .byte -4, 3, $96, $43
    .byte -4, -13, $96, $C3
    .byte -12, 3, $86, $03
    .byte -12, -13, $86, $83
    L_3199E0:
    .byte $06
    .byte -12, 3, $86, $03
    .byte 4, 3, $84, $C3
    .byte -4, 3, $94, $C3
    .byte -12, -13, $86, $83
    .byte -4, -13, $96, $C3
    .byte 4, -13, $86, $C3
    L_3199F9:
    .byte $06
    .byte 4, 3, $86, $43
    .byte -12, 3, $86, $03
    .byte 4, -13, $86, $C3
    .byte -12, -13, $86, $83
    .byte -4, 3, $B2, $83
    .byte -4, -13, $96, $83
    L_319A12:
    .byte $06
    .byte 4, 3, $86, $43
    .byte -12, 3, $84, $83
    .byte -4, 3, $94, $83
    .byte 4, -13, $86, $C3
    .byte -4, -13, $96, $83
    .byte -12, -13, $86, $83
    L_319A2B:
    .byte $06
    .byte -11, 6, $80, $83
    .byte -11, -10, $B4, $83
    .byte -4, 3, $96, $03
    .byte -4, -13, $96, $83
    .byte 4, 3, $86, $43
    .byte 4, -13, $86, $C3
    L_319A44:
    .byte $06
    .byte -11, -16, $80, $03
    .byte -11, 0, $B4, $03
    .byte -4, -13, $96, $83
    .byte -4, 3, $96, $03
    .byte 4, -13, $86, $C3
    .byte 4, 3, $86, $43
    L_319A5D:
    .byte $06
    .byte 4, -13, $86, $C3
    .byte -12, -13, $84, $03
    .byte -4, -13, $94, $03
    .byte 4, 3, $86, $43
    .byte -4, 3, $96, $03
    .byte -12, 3, $86, $03
    L_319A76:
    .byte $02
    .byte 0, -8, $BA, $43
    .byte -8, -8, $BE, $43
    L_319A7F:
    .byte $02
    .byte -8, -8, $BA, $03
    .byte 0, -8, $BE, $03
    L_319A88:
    .byte $02
    .byte 0, -8, $BA, $41
    .byte -8, -8, $BE, $41
    L_319A91:
    .byte $02
    .byte -8, -8, $BA, $01
    .byte 0, -8, $BE, $01
    L_319A9A:
    .byte $02
    .byte -4, -8, $9C, $01
    .byte -12, -8, $8C, $01
    L_319AA3:
    .byte $02
    .byte -4, -8, $9C, $81
    .byte -12, -8, $8C, $81
    L_319AAC:
    .byte $02
    .byte -4, -8, $9C, $C1
    .byte 4, -8, $8C, $C1
    L_319AB5:
    .byte $02
    .byte -4, -8, $9C, $41
    .byte 4, -8, $8C, $41
    L_319ABE:
    .byte $03
    .byte -16, -8, $CC, $01
    .byte -8, -8, $AC, $01
    .byte 0, -8, $BC, $01
    L_319ACB:
    .byte $03
    .byte 8, -8, $CC, $41
    .byte 0, -8, $AC, $41
    .byte -8, -8, $BC, $41
    L_319AD8:
    .byte $03
    .byte -16, -8, $CC, $81
    .byte -8, -8, $AC, $81
    .byte 0, -8, $BC, $81
    L_319AE5:
    .byte $03
    .byte 8, -8, $CC, $C1
    .byte 0, -8, $AC, $C1
    .byte -8, -8, $BC, $C1
    L_319AF2:
    .byte $02
    .byte -8, -8, $AC, $02
    .byte 0, -8, $BC, $02
    L_319AFB:
    .byte $02
    .byte 0, -8, $AC, $42
    .byte -8, -8, $BC, $42
    L_319B04:
    .byte $02
    .byte -8, -8, $BC, $41
    .byte 0, -8, $BC, $81
    L_319B0D:
    .byte $03
    .byte 4, -12, $FE, $41
    .byte -12, -12, $FE, $01
    .byte -4, -4, $FE, $41
    L_319B1A:
    .byte $02
    .byte 12, -12, $A4, $01
    .byte -20, -12, $A4, $41
    L_319B23:
    .byte $02
    .byte 0, -8, $A6, $C1
    .byte -8, -8, $A6, $01
    L_319B2C:
    .byte $02
    .byte -8, -8, $A6, $81
    .byte 0, -8, $A6, $41

L_319B35:
    .addr L_319CB2
    .addr L_319CBB
    .addr L_319CC4
    .addr L_319CCD
    .addr L_319CD6
    .addr L_319CDF
    .addr L_319E43
    .addr L_319E43
    .addr L_319E32
    .addr L_319E32
    .addr L_319E03
    .addr L_319E03
    .addr L_319E10
    .addr L_319E10
    .addr L_319E21
    .addr L_319E21
    .addr L_319EF4
    .addr L_319F09
    .addr L_319ECA
    .addr L_319EDF
    .addr L_319E54
    .addr L_319E65
    .addr L_319E76
    .addr L_319E8B
    .addr L_319EA0
    .addr L_319EB5
    .addr L_319CD6
    .addr L_319CDF
    .addr L_319D28
    .addr L_319D28
    .addr L_319D17
    .addr L_319D17
    .addr L_319CE8
    .addr L_319CE8
    .addr L_319CF5
    .addr L_319CF5
    .addr L_319D06
    .addr L_319D06
    .addr L_319DD9
    .addr L_319DEE
    .addr L_319DAF
    .addr L_319DC4
    .addr L_319D39
    .addr L_319D4A
    .addr L_319D5B
    .addr L_319D70
    .addr L_319D85
    .addr L_319D9A
    .addr L_319BD1
    .addr L_319BEA
    .addr L_319C03
    .addr L_319C1C
    .addr L_319C35
    .addr L_319C4E
    .addr L_319C67
    .addr L_319C80
    .addr L_319C99
    .addr L_319F4B
    .addr L_319F54
    .addr L_319F5D
    .addr L_319F66
    .addr L_319F6B
    .addr L_319F70
    .addr L_319F1E
    .addr L_319F27
    .addr L_319F30
    .addr L_319F39
    .addr L_319F42
    .addr L_319FA2
    .addr L_319FAB
    .addr L_319FB4
    .addr L_319FBD
    .addr L_319FC6
    .addr L_319F75
    .addr L_319F7E
    .addr L_319F87
    .addr L_319F90
    .addr L_319F99

    L_319BD1:
    .byte $06
    .byte 6, 0, $A2, $03
    .byte 6, -16, $A0, $03
    .byte -2, 0, $92, $03
    .byte -2, -16, $90, $03
    .byte -10, 0, $82, $03
    .byte -10, -16, $80, $03
    L_319BEA:
    .byte $06
    .byte 6, 0, $A6, $03
    .byte 6, -16, $A4, $03
    .byte -2, 0, $96, $03
    .byte -2, -16, $94, $03
    .byte -10, 0, $86, $03
    .byte -10, -16, $84, $03
    L_319C03:
    .byte $06
    .byte 6, 0, $AA, $03
    .byte 6, -16, $A8, $03
    .byte -2, 0, $9A, $03
    .byte -2, -16, $98, $03
    .byte -10, 0, $8A, $03
    .byte -10, -16, $88, $03
    L_319C1C:
    .byte $06
    .byte 6, 0, $C2, $03
    .byte 6, -16, $C0, $03
    .byte -2, 0, $B2, $03
    .byte -2, -16, $B0, $03
    .byte -10, 0, $82, $03
    .byte -10, -16, $80, $03
    L_319C35:
    .byte $06
    .byte 6, 0, $C6, $03
    .byte 6, -16, $C4, $03
    .byte -2, 0, $B6, $03
    .byte -2, -16, $B4, $03
    .byte -10, 0, $86, $03
    .byte -10, -16, $84, $03
    L_319C4E:
    .byte $06
    .byte 6, 0, $CA, $03
    .byte 6, -16, $C8, $03
    .byte -2, 0, $BA, $03
    .byte -2, -16, $B8, $03
    .byte -10, 0, $8A, $03
    .byte -10, -16, $88, $03
    L_319C67:
    .byte $06
    .byte 6, 0, $E2, $03
    .byte 6, -16, $E0, $03
    .byte -2, 0, $92, $03
    .byte -2, -16, $D0, $03
    .byte -10, 0, $82, $03
    .byte -10, -16, $80, $03
    L_319C80:
    .byte $06
    .byte 6, 0, $E6, $03
    .byte 6, -16, $E4, $03
    .byte -2, 0, $96, $03
    .byte -2, -16, $D4, $03
    .byte -10, 0, $86, $03
    .byte -10, -16, $84, $03
    L_319C99:
    .byte $06
    .byte 6, 0, $EA, $03
    .byte 6, -16, $E8, $03
    .byte -2, 0, $9A, $03
    .byte -2, -16, $D8, $03
    .byte -10, 0, $8A, $03
    .byte -10, -16, $88, $03
    L_319CB2:
    .byte $02
    .byte 0, -8, $F4, $42
    .byte -8, -8, $F4, $02
    L_319CBB:
    .byte $02
    .byte 0, -8, $F8, $42
    .byte -8, -8, $FA, $42
    L_319CC4:
    .byte $02
    .byte -8, -8, $F6, $02
    .byte 0, -8, $F6, $42
    L_319CCD:
    .byte $02
    .byte 0, -8, $FA, $02
    .byte -8, -8, $F8, $02
    L_319CD6:
    .byte $02
    .byte 0, -8, $F2, $42
    .byte -8, -8, $F2, $02
    L_319CDF:
    .byte $02
    .byte 0, -8, $F0, $42
    .byte -8, -8, $F0, $02
    L_319CE8:
    .byte $03
    .byte 0, 2, $F2, $42
    .byte -8, 2, $F2, $02
    .byte -4, -8, $CC, $03
    L_319CF5:
    .byte $04
    .byte 7, 1, $F2, $42
    .byte -1, 1, $F2, $02
    .byte 4, -6, $BE, $C3
    .byte -4, -8, $BE, $03
    L_319D06:
    .byte $04
    .byte 14, -3, $F2, $42
    .byte 6, -3, $F2, $02
    .byte 8, -9, $DC, $C3
    .byte 0, -9, $DC, $03
    L_319D17:
    .byte $04
    .byte -15, 1, $F2, $02
    .byte -7, 1, $F2, $42
    .byte -12, -6, $BE, $83
    .byte -4, -8, $BE, $43
    L_319D28:
    .byte $04
    .byte -22, -2, $F2, $02
    .byte -14, -2, $F2, $42
    .byte -16, -9, $DC, $83
    .byte -8, -9, $DC, $43
    L_319D39:
    .byte $04
    .byte 0, 16, $F0, $42
    .byte -8, 16, $F0, $02
    .byte -4, 8, $CC, $03
    .byte -4, -8, $CC, $03
    L_319D4A:
    .byte $04
    .byte 0, 16, $F2, $42
    .byte -8, 16, $F2, $02
    .byte -4, 8, $CC, $03
    .byte -4, -8, $CC, $03
    L_319D5B:
    .byte $05
    .byte 15, 14, $F0, $42
    .byte 7, 14, $F0, $02
    .byte 6, 10, $BE, $03
    .byte 5, -6, $BE, $C3
    .byte -3, -8, $BE, $03
    L_319D70:
    .byte $05
    .byte 15, 14, $F2, $42
    .byte 7, 14, $F2, $02
    .byte 6, 10, $BE, $03
    .byte 5, -6, $BE, $C3
    .byte -3, -8, $BE, $03
    L_319D85:
    .byte $05
    .byte 26, 7, $F0, $42
    .byte 18, 7, $F0, $02
    .byte 14, 4, $DC, $03
    .byte 9, -9, $DC, $C3
    .byte 1, -9, $DC, $03
    L_319D9A:
    .byte $05
    .byte 26, 7, $F2, $42
    .byte 18, 7, $F2, $02
    .byte 14, 4, $DC, $03
    .byte 9, -9, $DC, $C3
    .byte 1, -9, $DC, $03
    L_319DAF:
    .byte $05
    .byte -23, 14, $F0, $02
    .byte -15, 14, $F0, $42
    .byte -14, 10, $BE, $43
    .byte -13, -6, $BE, $83
    .byte -5, -8, $BE, $43
    L_319DC4:
    .byte $05
    .byte -23, 14, $F2, $02
    .byte -15, 14, $F2, $42
    .byte -14, 10, $BE, $43
    .byte -13, -6, $BE, $83
    .byte -5, -8, $BE, $43
    L_319DD9:
    .byte $05
    .byte -34, 7, $F0, $02
    .byte -26, 7, $F0, $42
    .byte -22, 4, $DC, $43
    .byte -17, -9, $DC, $83
    .byte -9, -9, $DC, $43
    L_319DEE:
    .byte $05
    .byte -34, 7, $F2, $02
    .byte -26, 7, $F2, $42
    .byte -22, 4, $DC, $43
    .byte -17, -9, $DC, $83
    .byte -9, -9, $DC, $43
    L_319E03:
    .byte $03
    .byte -8, -22, $F2, $02
    .byte 0, -22, $F2, $42
    .byte -4, -12, $CC, $43
    L_319E10:
    .byte $04
    .byte 10, -21, $F2, $42
    .byte 2, -21, $F2, $02
    .byte 5, -14, $BE, $43
    .byte -3, -12, $BE, $83
    L_319E21:
    .byte $04
    .byte 15, -17, $F2, $42
    .byte 7, -17, $F2, $02
    .byte 8, -10, $DC, $43
    .byte 0, -10, $DC, $83
    L_319E32:
    .byte $04
    .byte -17, -21, $F2, $02
    .byte -9, -21, $F2, $42
    .byte -12, -14, $BE, $03
    .byte -4, -12, $BE, $C3
    L_319E43:
    .byte $04
    .byte -23, -18, $F2, $02
    .byte -15, -18, $F2, $42
    .byte -16, -11, $DC, $03
    .byte -8, -11, $DC, $C3
    L_319E54:
    .byte $04
    .byte 0, -36, $F0, $42
    .byte -8, -36, $F0, $02
    .byte -4, -28, $CC, $03
    .byte -4, -12, $CC, $43
    L_319E65:
    .byte $04
    .byte 0, -36, $F2, $42
    .byte -8, -36, $F2, $02
    .byte -4, -28, $CC, $03
    .byte -4, -12, $CC, $43
    L_319E76:
    .byte $05
    .byte 16, -34, $F0, $42
    .byte 8, -34, $F0, $02
    .byte 7, -30, $BE, $83
    .byte 6, -14, $BE, $43
    .byte -2, -12, $BE, $83
    L_319E8B:
    .byte $05
    .byte 16, -34, $F2, $42
    .byte 8, -34, $F2, $02
    .byte 7, -30, $BE, $83
    .byte 6, -14, $BE, $43
    .byte -2, -12, $BE, $83
    L_319EA0:
    .byte $05
    .byte 18, -25, $F0, $02
    .byte 26, -25, $F0, $42
    .byte 14, -23, $DC, $83
    .byte 9, -10, $DC, $43
    .byte 1, -10, $DC, $83
    L_319EB5:
    .byte $05
    .byte 18, -25, $F2, $02
    .byte 26, -25, $F2, $42
    .byte 14, -23, $DC, $83
    .byte 9, -10, $DC, $43
    .byte 1, -10, $DC, $83
    L_319ECA:
    .byte $05
    .byte -23, -34, $F0, $02
    .byte -15, -34, $F0, $42
    .byte -14, -30, $BE, $C3
    .byte -13, -14, $BE, $03
    .byte -5, -12, $BE, $C3
    L_319EDF:
    .byte $05
    .byte -23, -34, $F2, $02
    .byte -15, -34, $F2, $42
    .byte -14, -30, $BE, $C3
    .byte -13, -14, $BE, $03
    .byte -5, -12, $BE, $C3
    L_319EF4:
    .byte $05
    .byte -26, -26, $F0, $42
    .byte -34, -26, $F0, $02
    .byte -22, -24, $DC, $C3
    .byte -17, -11, $DC, $03
    .byte -9, -11, $DC, $C3
    L_319F09:
    .byte $05
    .byte -26, -26, $F2, $42
    .byte -34, -26, $F2, $02
    .byte -22, -24, $DC, $C3
    .byte -17, -11, $DC, $03
    .byte -9, -11, $DC, $C3
    L_319F1E:
    .byte $02
    .byte 0, -8, $8C, $03
    .byte -8, -8, $AE, $03
    L_319F27:
    .byte $02
    .byte 0, -8, $9C, $03
    .byte -8, -8, $AE, $03
    L_319F30:
    .byte $02
    .byte 0, -8, $AC, $03
    .byte -8, -8, $AE, $03
    L_319F39:
    .byte $02
    .byte 0, -8, $BC, $03
    .byte -8, -8, $AE, $03
    L_319F42:
    .byte $02
    .byte 0, -8, $8C, $03
    .byte -8, -8, $9E, $03
    L_319F4B:
    .byte $02
    .byte -18, -5, $DA, $03
    .byte -14, -15, $EC, $40
    L_319F54:
    .byte $02
    .byte -18, -19, $CE, $03
    .byte -18, -2, $DE, $03
    L_319F5D:
    .byte $02
    .byte -18, -23, $EC, $03
    .byte -14, 5, $DA, $43
    L_319F66:
    .byte $01
    .byte -4, -5, $D6, $03
    L_319F6B:
    .byte $01
    .byte -4, -13, $D6, $83
    L_319F70:
    .byte $01
    .byte -4, -6, $EE, $03
    L_319F75:
    .byte $02
    .byte 2, -26, $D2, $82
    .byte -10, 9, $D2, $02
    L_319F7E:
    .byte $02
    .byte 10, -22, $D2, $82
    .byte -18, 6, $D2, $42
    L_319F87:
    .byte $02
    .byte 14, -10, $D2, $82
    .byte -22, -4, $D2, $02
    L_319F90:
    .byte $02
    .byte 8, 0, $D2, $C2
    .byte -16, -26, $D2, $82
    L_319F99:
    .byte $02
    .byte -8, -26, $D2, $82
    .byte 2, 10, $D2, $02
    L_319FA2:
    .byte $02
    .byte -1, -8, $8C, $82
    .byte -9, -8, $9E, $82
    L_319FAB:
    .byte $02
    .byte -1, -8, $9C, $82
    .byte -9, -8, $9E, $82
    L_319FB4:
    .byte $02
    .byte -1, -8, $AC, $82
    .byte -9, -8, $9E, $82
    L_319FBD:
    .byte $02
    .byte -1, -8, $BC, $82
    .byte -9, -8, $9E, $82
    L_319FC6:
    .byte $02
    .byte -1, -8, $8C, $82
    .byte -9, -8, $AE, $82


    .byte $D7
    .byte $FF,$79,$FF,$54,$FD,$53,$FF,$75,$7F,$7D,$DF,$11,$7D,$55,$FF,$55
    .byte $FF,$55,$CF,$09,$DF,$16,$FF,$57,$E6,$86,$EF,$55,$75,$16,$DB,$55
    .byte $DE,$5D,$F7,$45,$F7,$54,$77,$B5,$EF,$C7,$77,$65,$72,$44,$FF,$55

.segment "PRG32": absolute

L_328000:
    .addr L_32803C
    .addr L_32805D
    .addr L_32807E
    .addr L_32809F
    .addr L_3280C0
    .addr L_3280E1
    .addr L_328102
    .addr L_328123
    .addr L_328144
    .addr L_328165
    .addr L_328186
    .addr L_3281A7
    .addr L_3281C8
    .addr L_3281E9
    .addr L_32820A
    .addr L_32822B
    .addr L_32824C
    .addr L_32826D
    .addr L_32828E
    .addr L_3282AF
    .addr L_3282D0
    .addr L_3282F1
    .addr L_328312
    .addr L_328333
    .addr L_328354
    .addr L_328375
    .addr L_328396
    .addr L_3283B7
    .addr L_3283D8
    .addr L_3283FD

    L_32803C:
    .byte $08
    .byte 5, -14, $CC, $03
    .byte -11, -14, $AC, $03
    .byte -3, -14, $BC, $03
    .byte 1, -25, $DC, $81
    .byte -7, -25, $DC, $41
    .byte 5, 2, $CE, $03
    .byte -3, 2, $BE, $03
    .byte -11, 2, $AE, $03
    L_32805D:
    .byte $08
    .byte -11, -14, $CC, $43
    .byte 5, -14, $AC, $43
    .byte -3, -14, $BC, $43
    .byte -7, -25, $DC, $C1
    .byte 1, -25, $DC, $01
    .byte -11, 2, $CE, $43
    .byte -3, 2, $BE, $43
    .byte 5, 2, $AE, $43
    L_32807E:
    .byte $08
    .byte 7, -32, $DE, $C1
    .byte -1, -32, $DE, $01
    .byte 5, 0, $86, $03
    .byte -3, 0, $92, $03
    .byte -11, 0, $82, $03
    .byte 5, -16, $84, $03
    .byte -3, -16, $90, $03
    .byte -11, -16, $80, $03
    L_32809F:
    .byte $08
    .byte -13, -32, $DE, $01
    .byte -5, -32, $DE, $41
    .byte -11, 0, $86, $43
    .byte -3, 0, $92, $43
    .byte 5, 0, $82, $43
    .byte -11, -16, $84, $43
    .byte -3, -16, $90, $43
    .byte 5, -16, $80, $43
    L_3280C0:
    .byte $08
    .byte 11, -33, $DE, $C1
    .byte 3, -33, $DE, $01
    .byte 5, -1, $88, $03
    .byte -3, -1, $96, $03
    .byte -11, -1, $94, $03
    .byte -11, -17, $80, $03
    .byte 5, -17, $B8, $03
    .byte -3, -17, $90, $03
    L_3280E1:
    .byte $08
    .byte -17, -33, $DE, $81
    .byte -9, -33, $DE, $41
    .byte -11, -1, $88, $43
    .byte -3, -1, $96, $43
    .byte 5, -1, $94, $43
    .byte 5, -17, $80, $43
    .byte -11, -17, $B8, $43
    .byte -3, -17, $90, $43
    L_328102:
    .byte $08
    .byte 15, -30, $DC, $01
    .byte 7, -30, $DC, $C1
    .byte 5, 0, $9A, $03
    .byte -3, 0, $8A, $03
    .byte -11, 0, $98, $03
    .byte -11, -16, $80, $03
    .byte 5, -16, $B8, $03
    .byte -3, -16, $90, $03
    L_328123:
    .byte $08
    .byte -21, -30, $DC, $41
    .byte -13, -30, $DC, $81
    .byte -11, 0, $9A, $43
    .byte -3, 0, $8A, $43
    .byte 5, 0, $98, $43
    .byte 5, -16, $80, $43
    .byte -11, -16, $B8, $43
    .byte -3, -16, $90, $43
    L_328144:
    .byte $08
    .byte 5, 0, $CA, $03
    .byte 5, -16, $CC, $03
    .byte 16, -6, $D8, $01
    .byte 8, -6, $D8, $C1
    .byte -11, 0, $AA, $03
    .byte -3, 0, $BA, $03
    .byte -11, -16, $AC, $03
    .byte -3, -16, $BC, $03
    L_328165:
    .byte $08
    .byte -11, 0, $CA, $43
    .byte -11, -16, $CC, $43
    .byte -22, -6, $D8, $41
    .byte -14, -6, $D8, $81
    .byte 5, 0, $AA, $43
    .byte -3, 0, $BA, $43
    .byte 5, -16, $AC, $43
    .byte -3, -16, $BC, $43
    L_328186:
    .byte $08
    .byte -11, -16, $80, $03
    .byte -6, -28, $DC, $81
    .byte -14, -28, $DC, $41
    .byte 5, 0, $9A, $03
    .byte -3, 0, $8A, $03
    .byte -11, 0, $98, $03
    .byte 5, -16, $84, $03
    .byte -3, -16, $90, $03
    L_3281A7:
    .byte $08
    .byte 5, -16, $80, $43
    .byte 0, -28, $DC, $C1
    .byte 8, -28, $DC, $01
    .byte -11, 0, $9A, $43
    .byte -3, 0, $8A, $43
    .byte 5, 0, $98, $43
    .byte -11, -16, $84, $43
    .byte -3, -16, $90, $43
    L_3281C8:
    .byte $08
    .byte -8, -31, $DE, $01
    .byte 0, -31, $DE, $41
    .byte 5, 0, $88, $03
    .byte -3, 0, $96, $03
    .byte -11, 0, $94, $03
    .byte 5, -16, $84, $03
    .byte -3, -16, $90, $03
    .byte -11, -16, $80, $03
    L_3281E9:
    .byte $08
    .byte 2, -31, $DE, $41
    .byte -6, -31, $DE, $01
    .byte -11, 0, $88, $43
    .byte -3, 0, $96, $43
    .byte 5, 0, $94, $43
    .byte -11, -16, $84, $43
    .byte -3, -16, $90, $43
    .byte 5, -16, $80, $43
    L_32820A:
    .byte $08
    .byte 8, -31, $DC, $01
    .byte 0, -31, $DC, $C1
    .byte 5, 0, $86, $03
    .byte -3, 0, $92, $03
    .byte -11, 0, $82, $03
    .byte 5, -16, $84, $03
    .byte -3, -16, $90, $03
    .byte -11, -16, $80, $03
    L_32822B:
    .byte $08
    .byte -14, -31, $DC, $41
    .byte -6, -31, $DC, $81
    .byte -11, 0, $86, $43
    .byte -3, 0, $92, $43
    .byte 5, 0, $82, $43
    .byte -11, -16, $84, $43
    .byte -3, -16, $90, $43
    .byte 5, -16, $80, $43
    L_32824C:
    .byte $08
    .byte 11, -26, $DA, $C1
    .byte 19, -26, $DA, $01
    .byte -11, 0, $82, $03
    .byte 5, 0, $86, $03
    .byte -3, 0, $92, $03
    .byte -11, -16, $80, $03
    .byte 5, -16, $84, $03
    .byte -3, -16, $90, $03
    L_32826D:
    .byte $08
    .byte -17, -26, $DA, $81
    .byte -25, -26, $DA, $41
    .byte 5, 0, $82, $43
    .byte -11, 0, $86, $43
    .byte -3, 0, $92, $43
    .byte 5, -16, $80, $43
    .byte -11, -16, $84, $43
    .byte -3, -16, $90, $43
    L_32828E:
    .byte $08
    .byte 23, -15, $D8, $01
    .byte 15, -15, $D8, $C1
    .byte -11, 0, $82, $03
    .byte 5, 0, $86, $03
    .byte -3, 0, $92, $03
    .byte -11, -16, $80, $03
    .byte 5, -16, $84, $03
    .byte -3, -16, $90, $03
    L_3282AF:
    .byte $08
    .byte -29, -15, $D8, $41
    .byte -21, -15, $D8, $81
    .byte 5, 0, $82, $43
    .byte -11, 0, $86, $43
    .byte -3, 0, $92, $43
    .byte 5, -16, $80, $43
    .byte -11, -16, $84, $43
    .byte -3, -16, $90, $43
    L_3282D0:
    .byte $08
    .byte 24, -3, $D8, $81
    .byte 16, -3, $D8, $41
    .byte -11, 0, $AA, $03
    .byte 5, 0, $CA, $03
    .byte -3, 0, $BA, $03
    .byte -11, -16, $AC, $03
    .byte 5, -16, $CC, $03
    .byte -3, -16, $BC, $03
    L_3282F1:
    .byte $08
    .byte -30, -3, $D8, $C1
    .byte -22, -3, $D8, $01
    .byte 5, 0, $AA, $43
    .byte -11, 0, $CA, $43
    .byte -3, 0, $BA, $43
    .byte 5, -16, $AC, $43
    .byte -11, -16, $CC, $43
    .byte -3, -16, $BC, $43
    L_328312:
    .byte $08
    .byte 20, 6, $D8, $81
    .byte 12, 6, $D8, $41
    .byte -11, 0, $AA, $03
    .byte 5, 0, $E0, $03
    .byte -3, 0, $BA, $03
    .byte -11, -16, $AC, $03
    .byte 5, -16, $CC, $03
    .byte -3, -16, $BC, $03
    L_328333:
    .byte $08
    .byte -26, 6, $D8, $C1
    .byte -18, 6, $D8, $01
    .byte 5, 0, $AA, $43
    .byte -11, 0, $E0, $43
    .byte -3, 0, $BA, $43
    .byte 5, -16, $AC, $43
    .byte -11, -16, $CC, $43
    .byte -3, -16, $BC, $43
    L_328354:
    .byte $08
    .byte -3, -16, $BC, $03
    .byte -11, -16, $AC, $03
    .byte -8, -21, $DC, $81
    .byte -16, -21, $DC, $41
    .byte 5, 0, $CA, $03
    .byte 5, -16, $CC, $03
    .byte -11, 0, $AA, $03
    .byte -3, 0, $BA, $03
    L_328375:
    .byte $08
    .byte -3, -16, $BC, $43
    .byte 5, -16, $AC, $43
    .byte 2, -21, $DC, $C1
    .byte 10, -21, $DC, $01
    .byte -11, 0, $CA, $43
    .byte -11, -16, $CC, $43
    .byte 5, 0, $AA, $43
    .byte -3, 0, $BA, $43
    L_328396:
    .byte $08
    .byte -3, -15, $BC, $03
    .byte -11, -15, $AC, $03
    .byte -8, -18, $DC, $81
    .byte -16, -18, $DC, $41
    .byte 5, 1, $CA, $03
    .byte 5, -15, $CC, $03
    .byte -11, 1, $AA, $03
    .byte -3, 1, $BA, $03
    L_3283B7:
    .byte $08
    .byte -3, -15, $BC, $43
    .byte 5, -15, $AC, $43
    .byte 2, -18, $DC, $C1
    .byte 10, -18, $DC, $01
    .byte -11, 1, $CA, $43
    .byte -11, -15, $CC, $43
    .byte 5, 1, $AA, $43
    .byte -3, 1, $BA, $43
    L_3283D8:
    .byte $09
    .byte -3, -16, $90, $03
    .byte -11, -16, $80, $03
    .byte -10, -26, $DC, $81
    .byte -18, -26, $DC, $41
    .byte 11, 2, $C8, $03
    .byte 5, 0, $86, $03
    .byte -3, 0, $92, $03
    .byte -11, 0, $82, $03
    .byte 5, -16, $84, $03
    L_3283FD:
    .byte $09
    .byte -3, -16, $90, $43
    .byte 5, -16, $80, $43
    .byte 4, -26, $DC, $C1
    .byte 12, -26, $DC, $01
    .byte -17, 2, $C8, $43
    .byte -11, 0, $86, $43
    .byte -3, 0, $92, $43
    .byte 5, 0, $82, $43
    .byte -11, -16, $84, $43

L_328422:
    .addr L_328432
    .addr L_328443
    .addr L_328454
    .addr L_328465
    .addr L_328476
    .addr L_328487
    .addr L_328490
    .addr L_328499

    L_328432:
    .byte $04
    .byte -22, -10, $D8, $43
    .byte -33, -1, $DC, $C1
    .byte -25, -1, $CC, $C1
    .byte -14, -10, $C8, $43
    L_328443:
    .byte $04
    .byte -18, -1, $CC, $C1
    .byte -20, -10, $D8, $43
    .byte -26, -1, $DC, $C1
    .byte -12, -10, $C8, $43
    L_328454:
    .byte $04
    .byte 7, 1, $DC, $81
    .byte -1, 1, $CC, $81
    .byte -1, -10, $DA, $03
    .byte -9, -10, $CA, $03
    L_328465:
    .byte $04
    .byte 15, -1, $DC, $81
    .byte 7, -1, $CC, $81
    .byte 1, -11, $DA, $03
    .byte -7, -11, $CA, $03
    L_328476:
    .byte $04
    .byte 4, -6, $DC, $81
    .byte -4, -6, $CC, $81
    .byte 0, -10, $DA, $03
    .byte -8, -10, $CA, $03
    L_328487:
    .byte $02
    .byte 0, -10, $D8, $03
    .byte -8, -10, $C8, $03
    L_328490:
    .byte $02
    .byte -4, -10, $D8, $03
    .byte -12, -10, $C8, $03
    L_328499:
    .byte $02
    .byte -21, -10, $DA, $43
    .byte -13, -10, $CA, $43

L_3284A2:
    .addr L_3284AA
    .addr L_3284B3
    .addr L_3284BC
    .addr L_3284C5

    L_3284AA:
    .byte $02
    .byte 0, -10, $DC, $01
    .byte -8, -10, $CC, $01
    L_3284B3:
    .byte $02
    .byte 0, -10, $DC, $81
    .byte -8, -10, $CC, $81
    L_3284BC:
    .byte $02
    .byte -8, -10, $DC, $C1
    .byte 0, -10, $CC, $C1
    L_3284C5:
    .byte $02
    .byte -8, -10, $DC, $41
    .byte 0, -10, $CC, $41

L_3284CE:
    .addr L_3284DE
    .addr L_3284E7
    .addr L_3284F0
    .addr L_3284F9
    .addr L_328502
    .addr L_32850B
    .addr L_328514
    .addr L_32851D

    L_3284DE:
    .byte $02
    .byte 3, -9, $A2, $43
    .byte -5, -9, $B2, $43
    L_3284E7:
    .byte $02
    .byte 2, -9, $A0, $43
    .byte -6, -9, $B0, $43
    L_3284F0:
    .byte $02
    .byte -9, -9, $A0, $03
    .byte -1, -9, $B0, $03
    L_3284F9:
    .byte $02
    .byte -10, -9, $A2, $03
    .byte -2, -9, $B2, $03
    L_328502:
    .byte $02
    .byte -3, -9, $B6, $01
    .byte -11, -9, $A6, $01
    L_32850B:
    .byte $02
    .byte -1, -9, $B4, $01
    .byte -9, -9, $A4, $01
    L_328514:
    .byte $02
    .byte -6, -9, $B4, $41
    .byte 2, -9, $A4, $41
    L_32851D:
    .byte $02
    .byte -3, -9, $B6, $41
    .byte 5, -9, $A6, $41

L_328526:
    .addr L_32853A
    .addr L_328543
    .addr L_32854C
    .addr L_328555
    .addr L_32855E
    .addr L_328567
    .addr L_328570
    .addr L_328579
    .addr L_328582
    .addr L_328593

    L_32853A:
    .byte $02
    .byte -9, -8, $BA, $43
    .byte -1, -8, $AA, $43
    L_328543:
    .byte $02
    .byte -1, -8, $BA, $03
    .byte -9, -8, $AA, $03
    L_32854C:
    .byte $02
    .byte -9, -8, $BC, $43
    .byte -1, -8, $AC, $43
    L_328555:
    .byte $02
    .byte -1, -8, $BC, $03
    .byte -9, -8, $AC, $03
    L_32855E:
    .byte $02
    .byte -9, -8, $BE, $43
    .byte -1, -8, $AE, $43
    L_328567:
    .byte $02
    .byte -1, -8, $BE, $03
    .byte -9, -8, $AE, $03
    L_328570:
    .byte $02
    .byte -9, -7, $BE, $43
    .byte -1, -7, $AE, $43
    L_328579:
    .byte $02
    .byte -1, -7, $BE, $03
    .byte -9, -7, $AE, $03
    L_328582:
    .byte $04
    .byte -9, 0, $BE, $43
    .byte -1, 0, $AE, $43
    .byte -9, -16, $BE, $43
    .byte -1, -16, $AE, $43
    L_328593:
    .byte $04
    .byte -1, 0, $BE, $03
    .byte -9, 0, $AE, $03
    .byte -1, -16, $BE, $03
    .byte -9, -16, $AE, $03

L_3285A4:
    .addr L_3285B0
    .addr L_3285CB
    .addr L_3285C2
    .addr L_3285B9
    .addr L_3285D4
    .addr L_3285DD

    L_3285B0:
    .byte $02
    .byte -11, -8, $9C, $43
    .byte -3, -8, $8C, $43
    L_3285B9:
    .byte $02
    .byte -9, -8, $9E, $43
    .byte -1, -8, $8E, $43
    L_3285C2:
    .byte $02
    .byte 0, -8, $9E, $03
    .byte -8, -8, $8E, $03
    L_3285CB:
    .byte $02
    .byte 1, -8, $9C, $03
    .byte -7, -8, $8C, $03
    L_3285D4:
    .byte $02
    .byte -11, -8, $9C, $41
    .byte -3, -8, $8C, $41
    L_3285DD:
    .byte $02
    .byte 1, -8, $9C, $01
    .byte -7, -8, $8C, $01

L_3285E6:
    .addr L_32860E
    .addr L_328617
    .addr L_328620
    .addr L_328629
    .addr L_328632
    .addr L_32863B
    .addr L_328644
    .addr L_32864D
    .addr L_328656
    .addr L_32865F
L_3285FA:
    .addr L_328668
    .addr L_328672
    .addr L_32867B
    .addr L_328684
    .addr L_328672
    .addr L_32867B
    .addr L_328684
    .addr L_328672
    .addr L_328668
    .addr L_32866D

    L_32860E:
    .byte $02
    .byte -8, -8, $D0, $43
    .byte 0, -8, $C0, $43
    L_328617:
    .byte $02
    .byte 0, -8, $D0, $03
    .byte -8, -8, $C0, $03
    L_328620:
    .byte $02
    .byte -8, -8, $D2, $43
    .byte 0, -8, $C2, $43
    L_328629:
    .byte $02
    .byte 0, -8, $D2, $03
    .byte -8, -8, $C2, $03
    L_328632:
    .byte $02
    .byte -8, -8, $D4, $43
    .byte 0, -8, $C4, $43
    L_32863B:
    .byte $02
    .byte 0, -8, $D4, $03
    .byte -8, -8, $C4, $03
    L_328644:
    .byte $02
    .byte -5, -8, $D6, $43
    .byte 3, -8, $C6, $43
    L_32864D:
    .byte $02
    .byte -3, -8, $D6, $03
    .byte -11, -8, $C6, $03
    L_328656:
    .byte $02
    .byte -6, -8, $D6, $41
    .byte 2, -8, $C6, $41
    L_32865F:
    .byte $02
    .byte -2, -8, $D6, $01
    .byte -10, -8, $C6, $01
    L_328668:
    .byte $01
    .byte -4, -4, $25, $01
    L_32866D:
    .byte $01
    .byte -4, -8, $E8, $03
    L_328672:
    .byte $02
    .byte 1, -8, $E8, $03
    .byte -9, -8, $E8, $43
    L_32867B:
    .byte $02
    .byte 0, -4, $E8, $03
    .byte -8, -12, $E8, $43
    L_328684:
    .byte $02
    .byte -1, -13, $E8, $03
    .byte -8, -4, $E8, $43

L_32868D:
    .addr L_3286F3
    .addr L_3286EA
    .addr L_3286FC
    .addr L_3286E1
    .addr L_3286F3
    .addr L_3286EA
L_328699:
    .addr L_3286F3
    .addr L_3286EA
    .addr L_3286EA
    .addr L_3286F3
    .addr L_3286E1
    .addr L_3286FC
    .addr L_3286EA
    .addr L_3286F3
    .addr L_3286F3
    .addr L_3286EA
    .addr L_3286FC
    .addr L_3286E1
    .addr L_3286FC
    .addr L_3286E1
    .addr L_3286FC
    .addr L_3286E1
    .addr L_3286F3
    .addr L_3286EA
L_3286BD:
    .addr L_328705
    .addr L_32870E
    .addr L_328717
    .addr L_328720
L_3286C5:
    .addr L_328729
    .addr L_328736
    .addr L_328743
    .addr L_328750
    .addr L_32875D
    .addr L_32876A
    .addr L_328777
    .addr L_328784
    .addr L_328791
    .addr L_32879E
L_3286D9:
    .addr L_3286E1
    .addr L_3286EA
    .addr L_3286F3
    .addr L_3286FC

    L_3286E1:
    .byte $02
    .byte -1, -9, $F2, $03
    .byte -9, -9, $E2, $03
    L_3286EA:
    .byte $02
    .byte -1, -9, $F4, $03
    .byte -9, -9, $E4, $03
    L_3286F3:
    .byte $02
    .byte -7, -9, $F4, $43
    .byte 1, -9, $E4, $43
    L_3286FC:
    .byte $02
    .byte -7, -9, $F2, $43
    .byte 1, -9, $E2, $43
    L_328705:
    .byte $02
    .byte -8, -9, $F6, $43
    .byte 0, -9, $E6, $43
    L_32870E:
    .byte $02
    .byte 0, -9, $F6, $03
    .byte -8, -9, $E6, $03
    L_328717:
    .byte $02
    .byte -9, -9, $F6, $41
    .byte -1, -9, $E6, $41
    L_328720:
    .byte $02
    .byte 1, -9, $F6, $01
    .byte -7, -9, $E6, $01
    L_328729:
    .byte $03
    .byte -14, -9, $E8, $03
    .byte -13, -21, $E8, $03
    .byte 4, -11, $E8, $43
    L_328736:
    .byte $03
    .byte 8, -11, $E8, $03
    .byte 5, -21, $E8, $43
    .byte -13, -11, $E8, $03
    L_328743:
    .byte $03
    .byte -6, -25, $E8, $43
    .byte 14, -21, $E8, $43
    .byte -22, -12, $E8, $03
    L_328750:
    .byte $03
    .byte 0, -3, $E8, $83
    .byte 21, -20, $E8, $43
    .byte -29, -13, $E8, $03
    L_32875D:
    .byte $03
    .byte -4, -9, $E8, $03
    .byte 24, -19, $E8, $43
    .byte -33, -14, $E8, $03
    L_32876A:
    .byte $03
    .byte -12, -19, $E8, $83
    .byte 28, -18, $E8, $43
    .byte -36, -16, $E8, $03
    L_328777:
    .byte $03
    .byte 0, -23, $E8, $C3
    .byte 28, -17, $E8, $43
    .byte -36, -17, $E8, $03
    L_328784:
    .byte $03
    .byte -12, -1, $E8, $03
    .byte 25, -16, $E8, $43
    .byte -33, -18, $E8, $03
    L_328791:
    .byte $03
    .byte 4, -1, $E8, $83
    .byte 20, -15, $E8, $43
    .byte -28, -19, $E8, $03
    L_32879E:
    .byte $03
    .byte -4, 5, $E8, $03
    .byte 13, -13, $E8, $43
    .byte -21, -20, $E8, $03

L_3287AB:
    .addr L_3287C3
    .addr L_3287CC
    .addr L_3287D5
    .addr L_3287DE
L_3287B3:
    .addr L_3287E7
    .addr L_328802
    .addr L_3287F0
    .addr L_3287F9
    .addr L_3287F9
    .addr L_3287F0
    .addr L_328802
    .addr L_3287E7

    L_3287C3:
    .byte $02
    .byte -8, -9, $FC, $43
    .byte 0, -9, $EC, $43
    L_3287CC:
    .byte $02
    .byte 0, -9, $FC, $03
    .byte -8, -9, $EC, $03
    L_3287D5:
    .byte $02
    .byte -8, -9, $FE, $43
    .byte 0, -9, $EE, $43
    L_3287DE:
    .byte $02
    .byte 0, -9, $FE, $03
    .byte -8, -9, $EE, $03
    L_3287E7:
    .byte $02
    .byte 0, -9, $F8, $C3
    .byte -8, -9, $F8, $03
    L_3287F0:
    .byte $02
    .byte 0, -9, $EA, $43
    .byte -8, -9, $EA, $83
    L_3287F9:
    .byte $02
    .byte 0, -9, $FA, $43
    .byte -8, -9, $FA, $03
    L_328802:
    .byte $02
    .byte 0, -9, $EA, $C3
    .byte -8, -9, $EA, $03

L_32880B:
    .addr L_328823
    .addr L_32882C
    .addr L_328835
    .addr L_32883E
L_328813:
    .addr L_328847
    .addr L_328850
    .addr L_328859
    .addr L_328862
    .addr L_32886B
    .addr L_328874
    .addr L_32887D
    .addr L_328886

    L_328823:
    .byte $02
    .byte -9, -8, $90, $42
    .byte -1, -8, $80, $42
    L_32882C:
    .byte $02
    .byte -1, -8, $90, $02
    .byte -9, -8, $80, $02
    L_328835:
    .byte $02
    .byte -9, -8, $92, $42
    .byte -1, -8, $82, $42
    L_32883E:
    .byte $02
    .byte -1, -8, $92, $02
    .byte -9, -8, $82, $02
    L_328847:
    .byte $02
    .byte -9, -8, $90, $42
    .byte -1, -8, $94, $42
    L_328850:
    .byte $02
    .byte -1, -8, $90, $02
    .byte -9, -8, $94, $02
    L_328859:
    .byte $02
    .byte -9, -8, $92, $42
    .byte -1, -8, $84, $42
    L_328862:
    .byte $02
    .byte -1, -8, $92, $02
    .byte -9, -8, $84, $02
    L_32886B:
    .byte $02
    .byte -9, -8, $90, $41
    .byte -1, -8, $94, $41
    L_328874:
    .byte $02
    .byte -1, -8, $90, $01
    .byte -9, -8, $94, $01
    L_32887D:
    .byte $02
    .byte -9, -8, $92, $41
    .byte -1, -8, $84, $41
    L_328886:
    .byte $02
    .byte -1, -8, $92, $01
    .byte -9, -8, $84, $01

L_32888F:
    .addr L_3288AD
    .addr L_3288B6
    .addr L_3288BF
    .addr L_3288C8
    .addr L_3288D1
    .addr L_3288DA
    .addr L_3288E3
    .addr L_3288EC
L_32889F:
    .addr L_3288F5
    .addr L_3288FE
    .addr L_328907
    .addr L_328910
    .addr L_328919
    .addr L_328922
    .addr L_32892B

    L_3288AD:
    .byte $02
    .byte -9, -8, $98, $42
    .byte -1, -8, $88, $42
    L_3288B6:
    .byte $02
    .byte -1, -8, $98, $02
    .byte -9, -8, $88, $02
    L_3288BF:
    .byte $02
    .byte -9, -8, $9A, $42
    .byte -1, -8, $8A, $42
    L_3288C8:
    .byte $02
    .byte -1, -8, $9A, $02
    .byte -9, -8, $8A, $02
    L_3288D1:
    .byte $02
    .byte -1, -8, $86, $42
    .byte -9, -8, $86, $02
    L_3288DA:
    .byte $02
    .byte -1, -8, $96, $42
    .byte -9, -8, $96, $02
    L_3288E3:
    .byte $02
    .byte 0, -8, $C2, $42
    .byte -8, -8, $D4, $42
    L_3288EC:
    .byte $02
    .byte -10, -8, $C2, $02
    .byte -2, -8, $D4, $02
    L_3288F5:
    .byte $02
    .byte -9, -9, $D2, $42
    .byte -1, -9, $C2, $42
    L_3288FE:
    .byte $02
    .byte -1, -9, $D2, $02
    .byte -9, -9, $C2, $02
    L_328907:
    .byte $02
    .byte -9, -5, $D0, $42
    .byte -1, -5, $C0, $42
    L_328910:
    .byte $02
    .byte -1, -5, $D0, $02
    .byte -9, -5, $C0, $02
    L_328919:
    .byte $02
    .byte -1, -8, $C4, $42
    .byte -9, -8, $C4, $02
    L_328922:
    .byte $02
    .byte -1, -8, $C6, $42
    .byte -9, -8, $C6, $02
    L_32892B:
    .byte $02
    .byte -1, -8, $D6, $42
    .byte -9, -8, $D6, $02

L_328934:
    .addr L_328944
    .addr L_32894D
    .addr L_328956
    .addr L_32895F
    .addr L_328968
    .addr L_328971
    .addr L_3289C2
    .addr L_3289CB

    L_328944:
    .byte $02
    .byte -9, -8, $B2, $42
    .byte -1, -8, $A0, $42
    L_32894D:
    .byte $02
    .byte -1, -8, $B2, $02
    .byte -9, -8, $A0, $02
    L_328956:
    .byte $02
    .byte -9, -8, $B2, $42
    .byte -1, -8, $B0, $42
    L_32895F:
    .byte $02
    .byte -1, -8, $B2, $02
    .byte -9, -8, $B0, $02
    L_328968:
    .byte $02
    .byte -9, -8, $B2, $42
    .byte -1, -8, $A2, $42
    L_328971:
    .byte $02
    .byte -1, -8, $B2, $02
    .byte -9, -8, $A2, $02
    L_32897A:
    .byte $02
    .byte -9, -8, $90, $42
    .byte -1, -8, $80, $42
    L_328983:
    .byte $02
    .byte -1, -8, $90, $02
    .byte -9, -8, $80, $02
    L_32898C:
    .byte $02
    .byte -9, -8, $92, $42
    .byte -1, -8, $82, $42
    L_328995:
    .byte $02
    .byte -1, -8, $92, $02
    .byte -9, -8, $82, $02
    L_32899E:
    .byte $02
    .byte -9, -8, $90, $42
    .byte -1, -8, $94, $42
    L_3289A7:
    .byte $02
    .byte -1, -8, $90, $02
    .byte -9, -8, $94, $02
    L_3289B0:
    .byte $02
    .byte -9, -8, $92, $42
    .byte -1, -8, $84, $42
    L_3289B9:
    .byte $02
    .byte -1, -8, $92, $02
    .byte -9, -8, $84, $02
    L_3289C2:
    .byte $02
    .byte -9, -8, $A8, $82
    .byte -1, -8, $A8, $42
    L_3289CB:
    .byte $02
    .byte -1, -8, $A8, $C2
    .byte -9, -8, $A8, $02

L_3289D4:
    .addr L_3289F4
    .addr L_3289FD
    .addr L_328A06
    .addr L_328A0F
    .addr L_328A18
    .addr L_328A21
    .addr L_328A2A
    .addr L_328A33
    .addr L_328A3C
L_3289E6:
    .addr L_328A45
    .addr L_328A4E
    .addr L_328A57
    .addr L_328A60
L_3289EE:
    .addr L_328A69
    .addr L_328A72
    .addr L_328A7B

    L_3289F4:
    .byte $02
    .byte -1, -8, $B2, $02
    .byte -9, -8, $A2, $02
    L_3289FD:
    .byte $02
    .byte -9, -8, $B2, $42
    .byte -1, -8, $A2, $42
    L_328A06:
    .byte $02
    .byte -1, -8, $A0, $42
    .byte -9, -8, $B0, $42
    L_328A0F:
    .byte $02
    .byte -9, -8, $A0, $02
    .byte -1, -8, $B0, $02
    L_328A18:
    .byte $02
    .byte -1, -8, $B4, $42
    .byte -9, -8, $B4, $02
    L_328A21:
    .byte $02
    .byte -1, -8, $B6, $02
    .byte -9, -8, $B6, $42
    L_328A2A:
    .byte $02
    .byte -9, -8, $B6, $42
    .byte -1, -8, $A6, $42
    L_328A33:
    .byte $02
    .byte -1, -8, $B6, $02
    .byte -9, -8, $A6, $02
    L_328A3C:
    .byte $02
    .byte -1, -8, $A4, $42
    .byte -9, -8, $A4, $02
    L_328A45:
    .byte $02
    .byte 1, -8, $F2, $02
    .byte -7, -8, $E2, $02
    L_328A4E:
    .byte $02
    .byte -8, -8, $F4, $42
    .byte 0, -8, $E4, $42
    L_328A57:
    .byte $02
    .byte -2, -8, $F4, $02
    .byte -10, -8, $E4, $02
    L_328A60:
    .byte $02
    .byte -11, -8, $F2, $42
    .byte -3, -8, $E2, $42
    L_328A69:
    .byte $02
    .byte 0, -8, $F6, $02
    .byte -8, -8, $E6, $02
    L_328A72:
    .byte $02
    .byte -10, -8, $F6, $42
    .byte -2, -8, $E6, $42
    L_328A7B:
    .byte $02
    .byte -1, -11, $E8, $42
    .byte -9, -11, $E8, $02

L_328A84:
    .addr L_328B36
    .addr L_328B64
    .addr L_328BB2
    .addr L_328C00
    .addr L_328C4E
    .addr L_328ED8
    .addr L_328C9C
    .addr L_328CD6
    .addr L_328D10
    .addr L_328D4A
    .addr L_328D84
    .addr L_328DBE
    .addr L_328DF8
    .addr L_328E32
    .addr L_328E6C
    .addr L_328EA2
    .addr L_328EF2
    .addr L_328F0C
    .addr L_328F32
    .addr L_328F64
    .addr L_328F96
    .addr L_328FAC
    .addr L_328FC6
    .addr L_328FDC
    .addr L_329006
    .addr L_329034
    .addr L_32907A
    .addr L_3290A8
    .addr L_3290C6
    .addr L_3290DC
    .addr L_3290F2
    .addr L_3290FB
    .addr L_329104
    .addr L_32910D
    .addr L_329116
    .addr L_329160
    .addr L_3291AA
    .addr L_3291F4
    .addr L_32923E
    .addr L_329288
    .addr L_3292D2
    .addr L_32931C
    .addr L_329366
    .addr L_3293B0
    .addr L_3293FA
    .addr L_329450
    .addr L_3294A6
    .addr L_3294FC
    .addr L_329552
    .addr L_3295A8
    .addr L_3295FE
    .addr L_329654
    .addr L_3296AA
    .addr L_3296E8
    .addr L_329726
    .addr L_329764
    .addr L_3297A2
    .addr L_3297E8
    .addr L_32982E
    .addr L_329874
    .addr L_3298BA
    .addr L_3298F4
    .addr L_32992E
    .addr L_32996C
    .addr L_3299AA
    .addr L_3299E0
    .addr L_329A16
    .addr L_329A4C
    .addr L_329A82
    .addr L_329A88
    .addr L_329A8E
    .addr L_329A94
    .addr L_329A9A
    .addr L_329AA8
    .addr L_329AB6
    .addr L_329AC0
    .addr L_329ACA
    .addr L_329AD0
    .addr L_329AD6
    .addr L_329AE0
    .addr L_329AEA
    .addr L_329AF8
    .addr L_329B02
    .addr L_329B08
    .addr L_329B74
    .addr L_329BC6
    .addr L_329C18
    .addr L_329C4E
    .addr L_329B3E

    L_328B36:
    .byte $D2
    .byte $0B
    .byte 4, 2, $92, $43
    .byte 12, -16, $82, $43
    .byte -4, -32, $A0, $03
    .byte -20, -32, $80, $03
    .byte 12, -32, $80, $43
    .byte 4, -32, $90, $43
    .byte -20, -16, $82, $03
    .byte -12, 2, $92, $03
    .byte -4, 23, $84, $03
    .byte -12, -32, $90, $03
    .byte -4, -16, $A2, $03
    L_328B64:
    .byte $D2
    .byte $13
    .byte -27, -40, $F6, $03
    .byte 19, -40, $F6, $43
    .byte 30, 18, $8C, $43
    .byte -38, 18, $8C, $03
    .byte -9, -16, $AC, $02
    .byte 4, 0, $9A, $02
    .byte -12, 0, $98, $02
    .byte -5, 16, $AA, $02
    .byte -4, 0, $A8, $02
    .byte 20, -16, $8A, $43
    .byte 12, -16, $88, $43
    .byte 12, -32, $86, $43
    .byte 4, -32, $94, $43
    .byte -28, -16, $8A, $03
    .byte -20, -16, $88, $03
    .byte -20, -32, $86, $03
    .byte -12, -32, $94, $03
    .byte -4, -16, $A6, $03
    .byte -4, -32, $A4, $03
    L_328BB2:
    .byte $D2
    .byte $13
    .byte 18, -39, $F6, $43
    .byte -26, -39, $F6, $03
    .byte 22, 18, $9C, $43
    .byte -30, 18, $9C, $03
    .byte -9, -16, $AC, $02
    .byte 4, 0, $9A, $82
    .byte -12, 0, $98, $82
    .byte -4, 16, $DA, $42
    .byte -4, 0, $A8, $C2
    .byte 21, -16, $8A, $43
    .byte 13, -17, $96, $43
    .byte 12, -33, $86, $43
    .byte 4, -33, $94, $43
    .byte -29, -16, $8A, $03
    .byte -21, -17, $96, $03
    .byte -20, -33, $86, $03
    .byte -12, -33, $94, $03
    .byte -4, -17, $A6, $03
    .byte -4, -33, $A4, $03
    L_328C00:
    .byte $D2
    .byte $13
    .byte 19, -39, $F6, $43
    .byte -27, -39, $F6, $03
    .byte -34, 17, $9C, $03
    .byte 26, 17, $9C, $43
    .byte 1, -16, $AC, $42
    .byte -12, 0, $9A, $42
    .byte 4, 0, $98, $42
    .byte -4, 16, $AA, $02
    .byte -4, 0, $A8, $82
    .byte -28, -16, $8A, $03
    .byte -20, -16, $88, $03
    .byte -20, -32, $86, $03
    .byte -12, -32, $94, $03
    .byte 20, -16, $8A, $43
    .byte 12, -16, $88, $43
    .byte 12, -32, $86, $43
    .byte 4, -32, $94, $43
    .byte -4, -16, $A6, $03
    .byte -4, -32, $A4, $03
    L_328C4E:
    .byte $D2
    .byte $13
    .byte 18, -40, $F6, $43
    .byte -26, -40, $F6, $03
    .byte -20, 27, $8C, $03
    .byte 12, 27, $8C, $43
    .byte 1, -16, $AC, $42
    .byte -12, 0, $98, $02
    .byte 4, 0, $9A, $02
    .byte -3, 16, $DA, $82
    .byte -4, 0, $A8, $42
    .byte -29, -16, $8A, $03
    .byte -21, -17, $96, $03
    .byte -20, -33, $86, $03
    .byte -12, -33, $94, $03
    .byte 21, -16, $8A, $43
    .byte 13, -17, $96, $43
    .byte 12, -33, $86, $43
    .byte 4, -33, $94, $43
    .byte -4, -17, $A6, $03
    .byte -4, -33, $A4, $03
    L_328C9C:
    .byte $D2
    .byte $0E
    .byte 8, -17, $C6, $43
    .byte 3, 27, $C8, $43
    .byte -6, 38, $E6, $43
    .byte 24, -16, $B6, $43
    .byte -16, 16, $D6, $43
    .byte -24, 0, $E4, $43
    .byte -16, 0, $D4, $43
    .byte -16, -16, $D2, $43
    .byte -8, -16, $C2, $43
    .byte 0, -16, $E0, $43
    .byte 0, -32, $B0, $43
    .byte -8, -32, $C0, $43
    .byte -16, -32, $D0, $43
    .byte -24, -16, $E2, $43
    L_328CD6:
    .byte $D2
    .byte $0E
    .byte -16, -17, $C6, $03
    .byte -11, 27, $C8, $03
    .byte -2, 38, $E6, $03
    .byte -32, -16, $B6, $03
    .byte 8, 16, $D6, $03
    .byte 16, 0, $E4, $03
    .byte 8, 0, $D4, $03
    .byte 8, -16, $D2, $03
    .byte 0, -16, $C2, $03
    .byte -8, -16, $E0, $03
    .byte -8, -32, $B0, $03
    .byte 0, -32, $C0, $03
    .byte 8, -32, $D0, $03
    .byte 16, -16, $E2, $03
    L_328D10:
    .byte $D2
    .byte $0E
    .byte 8, -17, $C6, $43
    .byte 11, 17, $B8, $43
    .byte 22, -19, $B6, $43
    .byte -4, 36, $E6, $43
    .byte -14, 15, $D6, $43
    .byte -24, -1, $E4, $43
    .byte -16, -1, $B4, $43
    .byte -16, -17, $B2, $43
    .byte -8, -17, $C4, $43
    .byte 0, -17, $E0, $43
    .byte 0, -33, $B0, $43
    .byte -8, -33, $C0, $43
    .byte -16, -33, $D0, $43
    .byte -24, -17, $E2, $43
    L_328D4A:
    .byte $D2
    .byte $0E
    .byte -16, -17, $C6, $03
    .byte -19, 17, $B8, $03
    .byte -30, -19, $B6, $03
    .byte -4, 36, $E6, $03
    .byte 6, 15, $D6, $03
    .byte 16, -1, $E4, $03
    .byte 8, -1, $B4, $03
    .byte 8, -17, $B2, $03
    .byte 0, -17, $C4, $03
    .byte -8, -17, $E0, $03
    .byte -8, -33, $B0, $03
    .byte 0, -33, $C0, $03
    .byte 8, -33, $D0, $03
    .byte 16, -17, $E2, $03
    L_328D84:
    .byte $D2
    .byte $0E
    .byte 13, 3, $D8, $43
    .byte -3, 35, $E6, $43
    .byte 23, -17, $B6, $43
    .byte 8, -16, $C6, $43
    .byte -16, 16, $D6, $43
    .byte -24, 0, $E4, $43
    .byte -16, 0, $D4, $43
    .byte -16, -16, $D2, $43
    .byte -8, -16, $C2, $43
    .byte 0, -16, $E0, $43
    .byte 0, -32, $B0, $43
    .byte -8, -32, $C0, $43
    .byte -16, -32, $D0, $43
    .byte -24, -16, $E2, $43
    L_328DBE:
    .byte $D2
    .byte $0E
    .byte -21, 3, $D8, $03
    .byte -5, 35, $E6, $03
    .byte -31, -17, $B6, $03
    .byte -16, -16, $C6, $03
    .byte 8, 16, $D6, $03
    .byte 16, 0, $E4, $03
    .byte 8, 0, $D4, $03
    .byte 8, -16, $D2, $03
    .byte 0, -16, $C2, $03
    .byte -8, -16, $E0, $03
    .byte -8, -32, $B0, $03
    .byte 0, -32, $C0, $03
    .byte 8, -32, $D0, $03
    .byte 16, -16, $E2, $03
    L_328DF8:
    .byte $D2
    .byte $0E
    .byte 17, -5, $B8, $43
    .byte 23, -17, $B6, $43
    .byte 8, -18, $C6, $43
    .byte -1, 33, $E6, $43
    .byte -14, 14, $D6, $43
    .byte -24, -1, $E4, $43
    .byte -16, -1, $B4, $43
    .byte -16, -17, $B2, $43
    .byte -8, -17, $C4, $43
    .byte 0, -17, $E0, $43
    .byte 0, -33, $B0, $43
    .byte -8, -33, $C0, $43
    .byte -16, -33, $D0, $43
    .byte -24, -17, $E2, $43
    L_328E32:
    .byte $D2
    .byte $0E
    .byte -24, -5, $B8, $03
    .byte -31, -17, $B6, $03
    .byte -16, -18, $C6, $03
    .byte -7, 33, $E6, $03
    .byte 6, 14, $D6, $03
    .byte 16, -1, $E4, $03
    .byte 8, -1, $B4, $03
    .byte 8, -17, $B2, $03
    .byte 0, -17, $C4, $03
    .byte -8, -17, $E0, $03
    .byte -8, -33, $B0, $03
    .byte 0, -33, $C0, $03
    .byte 8, -33, $D0, $03
    .byte 16, -17, $E2, $03
    L_328E6C:
    .byte $D2
    .byte $0D
    .byte -25, -32, $B0, $03
    .byte 17, -8, $B8, $43
    .byte 22, -16, $B6, $43
    .byte 5, -19, $C6, $43
    .byte -2, 35, $E6, $43
    .byte -15, 15, $D6, $43
    .byte -25, 0, $E4, $43
    .byte -17, 0, $B4, $43
    .byte -17, -16, $B2, $43
    .byte -9, -16, $C4, $43
    .byte -9, -32, $D0, $03
    .byte -17, -32, $C0, $03
    .byte -25, -16, $9E, $03
    L_328EA2:
    .byte $D2
    .byte $0D
    .byte 18, -32, $B0, $43
    .byte -24, -8, $B8, $03
    .byte -29, -16, $B6, $03
    .byte -12, -19, $C6, $03
    .byte -5, 35, $E6, $03
    .byte 8, 15, $D6, $03
    .byte 18, 0, $E4, $03
    .byte 10, 0, $B4, $03
    .byte 10, -16, $B2, $03
    .byte 2, -16, $C4, $03
    .byte 2, -32, $D0, $43
    .byte 10, -32, $C0, $43
    .byte 18, -16, $9E, $43
    L_328ED8:
    .byte $D2
    .byte $06
    .byte -4, 12, $BC, $83
    .byte -4, -4, $BC, $03
    .byte 2, -12, $BC, $C3
    .byte 2, -28, $BC, $03
    .byte -10, -12, $BC, $83
    .byte -10, -28, $BC, $03
    L_328EF2:
    .byte $D2
    .byte $06
    .byte -4, 20, $BC, $83
    .byte -4, 4, $BC, $03
    .byte 4, -16, $BC, $C3
    .byte 4, -32, $BC, $03
    .byte -12, -16, $BC, $83
    .byte -12, -32, $BC, $03
    L_328F0C:
    .byte $D2
    .byte $09
    .byte -4, 42, $BC, $83
    .byte -4, 10, $BC, $03
    .byte 6, -18, $BC, $C3
    .byte 6, -50, $BC, $43
    .byte -15, -18, $BC, $83
    .byte -15, -50, $BC, $03
    .byte -4, 26, $CC, $83
    .byte -15, -34, $CC, $03
    .byte 6, -34, $CC, $43
    L_328F32:
    .byte $D2
    .byte $0C
    .byte 9, -35, $CC, $03
    .byte -18, -35, $CC, $03
    .byte -4, 45, $CC, $03
    .byte -4, 61, $BC, $83
    .byte -4, 13, $BC, $03
    .byte 9, -19, $BC, $C3
    .byte 9, -67, $BC, $03
    .byte -18, -19, $BC, $83
    .byte -18, -67, $BC, $03
    .byte -4, 29, $CC, $83
    .byte -18, -51, $CC, $03
    .byte 9, -51, $CC, $43
    L_328F64:
    .byte $D2
    .byte $0C
    .byte -4, 48, $CA, $03
    .byte -4, 32, $CA, $03
    .byte 2, -52, $CA, $03
    .byte -10, -52, $CA, $03
    .byte 2, -4, $CA, $03
    .byte -10, -4, $CA, $03
    .byte 2, -36, $CA, $03
    .byte -10, -36, $CA, $03
    .byte 2, -20, $CA, $03
    .byte -10, -20, $CA, $03
    .byte -4, 16, $CA, $03
    .byte -4, 0, $CA, $03
    L_328F96:
    .byte $D2
    .byte $05
    .byte -4, 24, $CA, $03
    .byte -4, -40, $CA, $03
    .byte -4, 8, $CA, $03
    .byte -4, -8, $CA, $03
    .byte -4, -24, $CA, $03
    L_328FAC:
    .byte $D2
    .byte $06
    .byte -4, -48, $BA, $03
    .byte -4, 32, $BA, $03
    .byte -4, -32, $BA, $03
    .byte -4, 16, $BA, $03
    .byte -4, 0, $BA, $03
    .byte -4, -16, $BA, $03
    L_328FC6:
    .byte $D2
    .byte $05
    .byte -16, 8, $DC, $42
    .byte -8, -24, $DC, $42
    .byte 8, -16, $BA, $42
    .byte -14, -6, $BA, $02
    .byte 7, 0, $DA, $02
    L_328FDC:
    .byte $D2
    .byte $0A
    .byte -24, 7, $BA, $82
    .byte 11, 16, $DA, $82
    .byte -22, -19, $DA, $02
    .byte 3, 2, $DC, $82
    .byte -11, 11, $DC, $42
    .byte -3, -30, $DC, $42
    .byte -5, -17, $DC, $02
    .byte -4, -25, $BA, $02
    .byte -16, 0, $BA, $02
    .byte 8, 0, $BA, $42
    L_329006:
    .byte $D2
    .byte $0B
    .byte -13, 16, $DA, $C2
    .byte -8, -6, $DA, $C2
    .byte 6, -5, $DA, $42
    .byte -22, 4, $DA, $82
    .byte 4, 25, $DC, $02
    .byte 0, -32, $9A, $02
    .byte -8, -26, $DC, $02
    .byte 5, 16, $BA, $02
    .byte -1, -24, $BA, $42
    .byte 10, 5, $BA, $02
    .byte -19, -17, $BA, $82
    L_329034:
    .byte $D2
    .byte $11
    .byte 4, 18, $BC, $83
    .byte -4, 34, $BC, $83
    .byte -12, 18, $BC, $83
    .byte 4, -46, $BC, $43
    .byte -4, -62, $BC, $03
    .byte -12, -46, $BC, $03
    .byte 4, -14, $CC, $03
    .byte -12, -14, $CC, $03
    .byte 4, -30, $CC, $03
    .byte -12, -30, $CC, $03
    .byte 4, 2, $CC, $C3
    .byte -12, 2, $CC, $C3
    .byte -4, 18, $CC, $C3
    .byte -4, 2, $CC, $03
    .byte -4, -14, $CC, $03
    .byte -4, -30, $CC, $03
    .byte -4, -46, $CC, $03
    L_32907A:
    .byte $D2
    .byte $0B
    .byte 4, -12, $CC, $03
    .byte -12, -12, $CC, $03
    .byte 4, -28, $BC, $03
    .byte -12, -28, $BC, $03
    .byte 4, 4, $BC, $C3
    .byte -12, 4, $BC, $C3
    .byte -4, 20, $BC, $C3
    .byte -4, 4, $CC, $03
    .byte -4, -12, $CC, $03
    .byte -4, -28, $CC, $03
    .byte -4, -44, $BC, $03
    L_3290A8:
    .byte $D2
    .byte $07
    .byte -4, -11, $CC, $C3
    .byte -4, 5, $BC, $C3
    .byte 4, -3, $BA, $01
    .byte 4, -19, $BA, $01
    .byte -12, -3, $BA, $01
    .byte -12, -19, $BA, $01
    .byte -4, -27, $BC, $03
    L_3290C6:
    .byte $D2
    .byte $05
    .byte -4, -28, $BA, $01
    .byte -4, -12, $BA, $01
    .byte -4, 4, $BA, $01
    .byte 4, -12, $BA, $01
    .byte -12, -12, $BA, $01
    L_3290DC:
    .byte $D2
    .byte $05
    .byte -4, 17, $BA, $01
    .byte -4, -45, $BA, $01
    .byte -4, -30, $BA, $01
    .byte -4, -14, $BA, $01
    .byte -4, 2, $BA, $01
    L_3290F2:
    .byte $02
    .byte 0, -8, $F0, $41
    .byte -8, -8, $F0, $01
    L_3290FB:
    .byte $02
    .byte 0, -8, $F4, $01
    .byte -8, -8, $F2, $01
    L_329104:
    .byte $02
    .byte 0, -7, $F0, $C1
    .byte -8, -7, $F0, $81
    L_32910D:
    .byte $02
    .byte 0, -8, $F2, $C1
    .byte -8, -8, $F4, $C1
    L_329116:
    .byte $D2
    .byte $12
    .byte 22, -42, $F6, $43
    .byte -30, -42, $F6, $03
    .byte 20, 17, $9C, $43
    .byte -28, 17, $9C, $03
    .byte 4, 1, $9A, $82
    .byte -12, 1, $98, $82
    .byte -4, 17, $DA, $42
    .byte -4, 1, $A8, $C2
    .byte 21, -15, $8A, $43
    .byte 13, -16, $96, $43
    .byte 12, -32, $86, $43
    .byte 4, -32, $94, $43
    .byte -29, -15, $8A, $03
    .byte -21, -16, $96, $03
    .byte -20, -32, $86, $03
    .byte -12, -32, $94, $03
    .byte -4, -16, $EA, $03
    .byte -4, -36, $E8, $03
    L_329160:
    .byte $D2
    .byte $12
    .byte -33, -48, $F6, $03
    .byte 25, -48, $F6, $43
    .byte 28, 14, $8C, $43
    .byte -36, 14, $8C, $03
    .byte 4, -2, $9A, $02
    .byte -12, -2, $98, $02
    .byte -5, 14, $AA, $02
    .byte -4, -2, $A8, $02
    .byte 20, -18, $8A, $43
    .byte 12, -18, $88, $43
    .byte 12, -34, $86, $43
    .byte 4, -34, $94, $43
    .byte -28, -18, $8A, $03
    .byte -20, -18, $88, $03
    .byte -20, -34, $86, $03
    .byte -12, -34, $94, $03
    .byte -4, -21, $EA, $03
    .byte -4, -34, $E8, $03
    L_3291AA:
    .byte $D4
    .byte $12
    .byte -16, 12, $EC, $03
    .byte -8, 12, $EA, $03
    .byte 8, -8, $D2, $03
    .byte 24, -28, $92, $03
    .byte 16, -28, $E0, $03
    .byte 8, -28, $D0, $03
    .byte -12, -24, $C0, $03
    .byte -20, -24, $B0, $03
    .byte -28, -24, $A0, $03
    .byte -44, -9, $80, $03
    .byte -36, -10, $90, $03
    .byte -28, -10, $A2, $03
    .byte -8, -8, $B2, $03
    .byte 0, 8, $C4, $03
    .byte 16, 8, $E4, $03
    .byte 8, 8, $D4, $03
    .byte 0, -8, $C2, $03
    .byte 16, -8, $E2, $03
    L_3291F4:
    .byte $D4
    .byte $12
    .byte 8, 12, $EC, $43
    .byte 0, 12, $EA, $43
    .byte -16, -8, $D2, $43
    .byte -32, -28, $92, $43
    .byte -24, -28, $E0, $43
    .byte -16, -28, $D0, $43
    .byte 4, -24, $C0, $43
    .byte 12, -24, $B0, $43
    .byte 20, -24, $A0, $43
    .byte 36, -9, $80, $43
    .byte 28, -10, $90, $43
    .byte 20, -10, $A2, $43
    .byte 0, -8, $B2, $43
    .byte -8, 8, $C4, $43
    .byte -24, 8, $E4, $43
    .byte -16, 8, $D4, $43
    .byte -8, -8, $C2, $43
    .byte -24, -8, $E2, $43
    L_32923E:
    .byte $D4
    .byte $12
    .byte -8, 13, $EA, $03
    .byte -16, 13, $EC, $03
    .byte 8, -9, $D2, $03
    .byte 26, -31, $92, $03
    .byte 18, -31, $E0, $03
    .byte 10, -31, $D0, $03
    .byte -14, -26, $C0, $03
    .byte -22, -26, $B0, $03
    .byte -30, -26, $A0, $03
    .byte -46, -12, $80, $03
    .byte -38, -12, $90, $03
    .byte -30, -12, $A2, $03
    .byte -8, -9, $B2, $03
    .byte 0, 7, $C4, $03
    .byte 16, 7, $E4, $03
    .byte 8, 7, $D4, $03
    .byte 0, -9, $C2, $03
    .byte 16, -9, $E2, $03
    L_329288:
    .byte $D4
    .byte $12
    .byte 0, 13, $EA, $43
    .byte 8, 13, $EC, $43
    .byte -16, -9, $D2, $43
    .byte -34, -31, $92, $43
    .byte -26, -31, $E0, $43
    .byte -18, -31, $D0, $43
    .byte 6, -26, $C0, $43
    .byte 14, -26, $B0, $43
    .byte 22, -26, $A0, $43
    .byte 38, -12, $80, $43
    .byte 30, -12, $90, $43
    .byte 22, -12, $A2, $43
    .byte 0, -9, $B2, $43
    .byte -8, 7, $C4, $43
    .byte -24, 7, $E4, $43
    .byte -16, 7, $D4, $43
    .byte -8, -9, $C2, $43
    .byte -24, -9, $E2, $43
    L_3292D2:
    .byte $D4
    .byte $12
    .byte -8, 8, $A4, $42
    .byte -16, -8, $94, $42
    .byte -8, -8, $84, $42
    .byte 0, -8, $82, $43
    .byte 16, -40, $92, $03
    .byte 8, -40, $E0, $03
    .byte 0, -40, $D0, $03
    .byte -16, -44, $C0, $03
    .byte -24, -44, $B0, $03
    .byte -32, -44, $A0, $03
    .byte -48, -31, $80, $03
    .byte -40, -31, $90, $03
    .byte -32, -23, $A2, $03
    .byte -16, -24, $B2, $03
    .byte 8, -8, $E4, $03
    .byte -8, -24, $C2, $03
    .byte 8, -24, $E2, $03
    .byte 0, -24, $D2, $03
    L_32931C:
    .byte $D4
    .byte $12
    .byte 0, 8, $A4, $02
    .byte 8, -8, $94, $02
    .byte 0, -8, $84, $02
    .byte -8, -8, $82, $03
    .byte -24, -40, $92, $43
    .byte -16, -40, $E0, $43
    .byte -8, -40, $D0, $43
    .byte 8, -44, $C0, $43
    .byte 16, -44, $B0, $43
    .byte 24, -44, $A0, $43
    .byte 40, -31, $80, $43
    .byte 32, -31, $90, $43
    .byte 24, -23, $A2, $43
    .byte 8, -24, $B2, $43
    .byte -16, -8, $E4, $43
    .byte 0, -24, $C2, $43
    .byte -16, -24, $E2, $43
    .byte -8, -24, $D2, $43
    L_329366:
    .byte $D4
    .byte $12
    .byte -8, 8, $A4, $02
    .byte 0, -8, $94, $02
    .byte -8, -8, $84, $02
    .byte 0, -9, $82, $43
    .byte 16, -43, $92, $03
    .byte 8, -43, $E0, $03
    .byte 0, -43, $D0, $03
    .byte -18, -44, $C0, $03
    .byte -26, -44, $B0, $03
    .byte -34, -44, $A0, $03
    .byte -50, -31, $80, $03
    .byte -42, -31, $90, $03
    .byte -34, -23, $A2, $03
    .byte -16, -25, $B2, $03
    .byte 8, -9, $E4, $03
    .byte -8, -25, $C2, $03
    .byte 8, -25, $E2, $03
    .byte 0, -25, $D2, $03
    L_3293B0:
    .byte $D4
    .byte $12
    .byte 0, 8, $A4, $42
    .byte -8, -8, $94, $42
    .byte 0, -8, $84, $42
    .byte -8, -9, $82, $03
    .byte -24, -43, $92, $43
    .byte -16, -43, $E0, $43
    .byte -8, -43, $D0, $43
    .byte 10, -44, $C0, $43
    .byte 18, -44, $B0, $43
    .byte 26, -44, $A0, $43
    .byte 42, -31, $80, $43
    .byte 34, -31, $90, $43
    .byte 26, -23, $A2, $43
    .byte 8, -25, $B2, $43
    .byte -16, -9, $E4, $43
    .byte 0, -25, $C2, $43
    .byte -16, -25, $E2, $43
    .byte -8, -25, $D2, $43
    L_3293FA:
    .byte $D4
    .byte $15
    .byte -8, 8, $B4, $42
    .byte -16, 10, $C6, $02
    .byte -24, 7, $D6, $C2
    .byte -24, -5, $D6, $42
    .byte -16, -9, $C6, $82
    .byte -8, -8, $A8, $02
    .byte 0, -8, $98, $43
    .byte 17, -42, $92, $03
    .byte 9, -42, $E0, $03
    .byte 1, -42, $D0, $03
    .byte -19, -44, $C0, $03
    .byte -27, -44, $B0, $03
    .byte -35, -44, $A0, $03
    .byte -51, -31, $80, $03
    .byte -43, -31, $90, $03
    .byte -35, -23, $A2, $03
    .byte -16, -24, $B6, $43
    .byte 8, -8, $88, $43
    .byte -8, -24, $A6, $43
    .byte 8, -24, $86, $43
    .byte 0, -24, $96, $43
    L_329450:
    .byte $D4
    .byte $15
    .byte 0, 8, $B4, $02
    .byte 8, 10, $C6, $42
    .byte 16, 7, $D6, $82
    .byte 16, -5, $D6, $02
    .byte 8, -9, $C6, $C2
    .byte 0, -8, $A8, $42
    .byte -8, -8, $98, $03
    .byte -25, -42, $92, $43
    .byte -17, -42, $E0, $43
    .byte -9, -42, $D0, $43
    .byte 11, -44, $C0, $43
    .byte 19, -44, $B0, $43
    .byte 27, -44, $A0, $43
    .byte 43, -31, $80, $43
    .byte 35, -31, $90, $43
    .byte 27, -23, $A2, $43
    .byte 8, -24, $B6, $03
    .byte -16, -8, $88, $03
    .byte 0, -24, $A6, $03
    .byte -16, -24, $86, $03
    .byte -8, -24, $96, $03
    L_3294A6:
    .byte $D4
    .byte $15
    .byte -9, 20, $B4, $82
    .byte -16, 8, $C6, $C2
    .byte -24, 8, $D6, $C2
    .byte -24, -8, $D6, $42
    .byte -16, -8, $C6, $42
    .byte -8, -8, $A8, $42
    .byte 0, -9, $98, $43
    .byte 18, -44, $92, $03
    .byte 10, -44, $E0, $03
    .byte 2, -44, $D0, $03
    .byte -21, -46, $C0, $03
    .byte -29, -46, $B0, $03
    .byte -37, -46, $A0, $03
    .byte -53, -33, $80, $03
    .byte -45, -33, $90, $03
    .byte -37, -25, $A2, $03
    .byte -16, -25, $B6, $43
    .byte 8, -9, $88, $43
    .byte -8, -25, $A6, $43
    .byte 8, -25, $86, $43
    .byte 0, -25, $96, $43
    L_3294FC:
    .byte $D4
    .byte $15
    .byte 1, 20, $B4, $C2
    .byte 8, 8, $C6, $82
    .byte 16, 8, $D6, $82
    .byte 16, -8, $D6, $02
    .byte 8, -8, $C6, $02
    .byte 0, -8, $A8, $02
    .byte -8, -9, $98, $03
    .byte -26, -44, $92, $43
    .byte -18, -44, $E0, $43
    .byte -10, -44, $D0, $43
    .byte 13, -46, $C0, $43
    .byte 21, -46, $B0, $43
    .byte 29, -46, $A0, $43
    .byte 45, -33, $80, $43
    .byte 37, -33, $90, $43
    .byte 29, -25, $A2, $43
    .byte 8, -25, $B6, $03
    .byte -16, -9, $88, $03
    .byte 0, -25, $A6, $03
    .byte -16, -25, $86, $03
    .byte -8, -25, $96, $03
    L_329552:
    .byte $D4
    .byte $15
    .byte -8, -24, $B4, $C2
    .byte -16, -26, $C6, $82
    .byte -24, -23, $D6, $42
    .byte -24, -11, $D6, $C2
    .byte -16, -7, $C6, $02
    .byte -8, -8, $A8, $82
    .byte 0, -8, $98, $C3
    .byte 17, 26, $92, $83
    .byte 9, 26, $E0, $83
    .byte 1, 26, $D0, $83
    .byte -19, 28, $C0, $83
    .byte -27, 28, $B0, $83
    .byte -35, 28, $A0, $83
    .byte -51, 15, $80, $83
    .byte -43, 15, $90, $83
    .byte -35, 7, $A2, $83
    .byte -16, 8, $B6, $C3
    .byte 8, -8, $88, $C3
    .byte -8, 8, $A6, $C3
    .byte 8, 8, $86, $C3
    .byte 0, 8, $96, $C3
    L_3295A8:
    .byte $D4
    .byte $15
    .byte 0, -24, $B4, $82
    .byte 8, -26, $C6, $C2
    .byte 16, -23, $D6, $02
    .byte 16, -11, $D6, $82
    .byte 8, -7, $C6, $42
    .byte 0, -8, $A8, $C2
    .byte -8, -8, $98, $83
    .byte -25, 26, $92, $C3
    .byte -17, 26, $E0, $C3
    .byte -9, 26, $D0, $C3
    .byte 11, 28, $C0, $C3
    .byte 19, 28, $B0, $C3
    .byte 27, 28, $A0, $C3
    .byte 43, 15, $80, $C3
    .byte 35, 15, $90, $C3
    .byte 27, 7, $A2, $C3
    .byte 8, 8, $B6, $83
    .byte -16, -8, $88, $83
    .byte 0, 8, $A6, $83
    .byte -16, 8, $86, $83
    .byte -8, 8, $96, $83
    L_3295FE:
    .byte $D4
    .byte $15
    .byte -9, -38, $B4, $02
    .byte -16, -26, $C6, $42
    .byte -24, -26, $D6, $42
    .byte -24, -10, $D6, $C2
    .byte -16, -10, $C6, $C2
    .byte -8, -10, $A8, $C2
    .byte 0, -9, $98, $C3
    .byte 18, 26, $92, $83
    .byte 10, 26, $E0, $83
    .byte 2, 26, $D0, $83
    .byte -21, 28, $C0, $83
    .byte -29, 28, $B0, $83
    .byte -37, 28, $A0, $83
    .byte -53, 15, $80, $83
    .byte -45, 15, $90, $83
    .byte -37, 7, $A2, $83
    .byte -16, 7, $B6, $C3
    .byte 8, -9, $88, $C3
    .byte -8, 7, $A6, $C3
    .byte 8, 7, $86, $C3
    .byte 0, 7, $96, $C3
    L_329654:
    .byte $D4
    .byte $15
    .byte 1, -38, $B4, $42
    .byte 8, -26, $C6, $02
    .byte 16, -26, $D6, $02
    .byte 16, -10, $D6, $82
    .byte 8, -10, $C6, $82
    .byte 0, -10, $A8, $82
    .byte -8, -9, $98, $83
    .byte -26, 26, $92, $C3
    .byte -18, 26, $E0, $C3
    .byte -10, 26, $D0, $C3
    .byte 13, 28, $C0, $C3
    .byte 21, 28, $B0, $C3
    .byte 29, 28, $A0, $C3
    .byte 45, 15, $80, $C3
    .byte 37, 15, $90, $C3
    .byte 29, 7, $A2, $C3
    .byte 8, 7, $B6, $83
    .byte -16, -9, $88, $83
    .byte 0, 7, $A6, $83
    .byte -16, 7, $86, $83
    .byte -8, 7, $96, $83
    L_3296AA:
    .byte $D4
    .byte $0F
    .byte -12, 0, $BE, $43
    .byte -17, -12, $CC, $43
    .byte -9, -14, $CA, $03
    .byte -2, 16, $AE, $43
    .byte -10, -16, $AC, $43
    .byte -2, -16, $9C, $43
    .byte -2, 0, $9E, $43
    .byte 6, 0, $8E, $43
    .byte 6, -16, $8C, $43
    .byte -18, -32, $AA, $43
    .byte -10, -32, $C2, $03
    .byte 6, -32, $E2, $03
    .byte -2, -32, $D2, $03
    .byte -6, -11, $84, $42
    .byte -7, 6, $A4, $42
    L_3296E8:
    .byte $D4
    .byte $0F
    .byte 4, 0, $BE, $03
    .byte 9, -12, $CC, $03
    .byte 1, -14, $CA, $43
    .byte -6, 16, $AE, $03
    .byte 2, -16, $AC, $03
    .byte -6, -16, $9C, $03
    .byte -6, 0, $9E, $03
    .byte -14, 0, $8E, $03
    .byte -14, -16, $8C, $03
    .byte 10, -32, $AA, $03
    .byte 2, -32, $C2, $43
    .byte -14, -32, $E2, $43
    .byte -6, -32, $D2, $43
    .byte -2, -11, $84, $02
    .byte -1, 6, $A4, $02
    L_329726:
    .byte $D4
    .byte $0F
    .byte -20, -22, $8C, $03
    .byte -16, -8, $8E, $03
    .byte -16, 0, $BE, $43
    .byte 0, 16, $AE, $43
    .byte -8, -16, $AC, $43
    .byte 0, -16, $9C, $43
    .byte 0, 0, $9E, $43
    .byte 8, 0, $8E, $43
    .byte 8, -16, $8C, $43
    .byte -16, -32, $AA, $43
    .byte -8, -32, $C2, $03
    .byte 8, -32, $E2, $03
    .byte 0, -32, $D2, $03
    .byte -9, -10, $84, $02
    .byte -10, 6, $A4, $02
    L_329764:
    .byte $D4
    .byte $0F
    .byte 12, -22, $8C, $43
    .byte 8, -8, $8E, $43
    .byte 8, 0, $BE, $03
    .byte -8, 16, $AE, $03
    .byte 0, -16, $AC, $03
    .byte -8, -16, $9C, $03
    .byte -8, 0, $9E, $03
    .byte -16, 0, $8E, $03
    .byte -16, -16, $8C, $03
    .byte 8, -32, $AA, $03
    .byte 0, -32, $C2, $43
    .byte -16, -32, $E2, $43
    .byte -8, -32, $D2, $43
    .byte 1, -10, $84, $42
    .byte 2, 6, $A4, $42
    L_3297A2:
    .byte $D4
    .byte $11
    .byte -32, 0, $CE, $43
    .byte -24, 0, $BE, $43
    .byte -32, -16, $BC, $43
    .byte -40, -16, $CC, $43
    .byte 0, 16, $AE, $43
    .byte -8, -16, $AC, $43
    .byte 0, -16, $9C, $43
    .byte 0, 0, $9E, $43
    .byte 8, 0, $8E, $43
    .byte 8, -16, $8C, $43
    .byte -16, -32, $AA, $43
    .byte -8, -32, $C2, $03
    .byte 8, -32, $E2, $03
    .byte 0, -32, $D2, $03
    .byte -4, -11, $84, $42
    .byte -12, -10, $94, $42
    .byte -5, 6, $A4, $42
    L_3297E8:
    .byte $D4
    .byte $11
    .byte 24, 0, $CE, $03
    .byte 16, 0, $BE, $03
    .byte 24, -16, $BC, $03
    .byte 32, -16, $CC, $03
    .byte -8, 16, $AE, $03
    .byte 0, -16, $AC, $03
    .byte -8, -16, $9C, $03
    .byte -8, 0, $9E, $03
    .byte -16, 0, $8E, $03
    .byte -16, -16, $8C, $03
    .byte 8, -32, $AA, $03
    .byte 0, -32, $C2, $43
    .byte -16, -32, $E2, $43
    .byte -8, -32, $D2, $43
    .byte -4, -11, $84, $02
    .byte 4, -10, $94, $02
    .byte -3, 6, $A4, $02
    L_32982E:
    .byte $D4
    .byte $11
    .byte -32, 0, $CE, $43
    .byte -24, 0, $BE, $43
    .byte -32, -16, $BC, $43
    .byte -40, -16, $CC, $43
    .byte 0, 16, $AE, $43
    .byte -8, -16, $AC, $43
    .byte 0, -16, $9C, $43
    .byte 0, 0, $9E, $43
    .byte 8, 0, $8E, $43
    .byte 8, -16, $8C, $43
    .byte -16, -32, $AA, $43
    .byte -8, -32, $C2, $03
    .byte 8, -32, $E2, $03
    .byte 0, -32, $D2, $03
    .byte -9, -10, $84, $82
    .byte -1, -7, $94, $02
    .byte -10, 7, $A4, $02
    L_329874:
    .byte $D4
    .byte $11
    .byte 24, 0, $CE, $03
    .byte 16, 0, $BE, $03
    .byte 24, -16, $BC, $03
    .byte 32, -16, $CC, $03
    .byte -8, 16, $AE, $03
    .byte 0, -16, $AC, $03
    .byte -8, -16, $9C, $03
    .byte -8, 0, $9E, $03
    .byte -16, 0, $8E, $03
    .byte -16, -16, $8C, $03
    .byte 8, -32, $AA, $03
    .byte 0, -32, $C2, $43
    .byte -16, -32, $E2, $43
    .byte -8, -32, $D2, $43
    .byte 1, -10, $84, $C2
    .byte -7, -7, $94, $42
    .byte 2, 7, $A4, $42
    L_3298BA:
    .byte $D4
    .byte $0E
    .byte 6, 0, $BE, $03
    .byte 11, -12, $CC, $03
    .byte 3, -14, $CA, $43
    .byte -4, 16, $AE, $03
    .byte 4, -16, $DE, $03
    .byte -4, -16, $DC, $03
    .byte -4, 0, $9E, $03
    .byte -12, 0, $8E, $03
    .byte -12, -16, $DA, $03
    .byte 4, -32, $E2, $03
    .byte -12, -32, $8A, $03
    .byte -4, -32, $D2, $03
    .byte 0, -11, $84, $02
    .byte 1, 6, $A4, $02
    L_3298F4:
    .byte $D4
    .byte $0E
    .byte -14, 0, $BE, $43
    .byte -19, -12, $CC, $43
    .byte -11, -14, $CA, $03
    .byte -4, 16, $AE, $43
    .byte -12, -16, $DE, $43
    .byte -4, -16, $DC, $43
    .byte -4, 0, $9E, $43
    .byte 4, 0, $8E, $43
    .byte 4, -16, $DA, $43
    .byte -12, -32, $E2, $43
    .byte 4, -32, $8A, $43
    .byte -4, -32, $D2, $43
    .byte -8, -11, $84, $42
    .byte -9, 6, $A4, $42
    L_32992E:
    .byte $D4
    .byte $0F
    .byte 14, -22, $8C, $43
    .byte 10, -8, $8E, $43
    .byte 10, 0, $BE, $03
    .byte -6, 16, $AE, $03
    .byte 2, -16, $DE, $03
    .byte -6, -16, $DC, $03
    .byte -6, 0, $9E, $03
    .byte -14, 0, $8E, $03
    .byte -14, -16, $DA, $03
    .byte 10, -32, $D8, $03
    .byte 2, -32, $E2, $03
    .byte -14, -32, $8A, $03
    .byte -6, -32, $D2, $03
    .byte 3, -10, $84, $42
    .byte 4, 6, $A4, $42
    L_32996C:
    .byte $D4
    .byte $0F
    .byte -22, -22, $8C, $03
    .byte -18, -8, $8E, $03
    .byte -18, 0, $BE, $43
    .byte -2, 16, $AE, $43
    .byte -10, -16, $DE, $43
    .byte -2, -16, $DC, $43
    .byte -2, 0, $9E, $43
    .byte 6, 0, $8E, $43
    .byte 6, -16, $DA, $43
    .byte -18, -32, $D8, $43
    .byte -10, -32, $E2, $43
    .byte 6, -32, $8A, $43
    .byte -2, -32, $D2, $43
    .byte -11, -10, $84, $02
    .byte -12, 6, $A4, $02
    L_3299AA:
    .byte $D4
    .byte $0D
    .byte -8, 16, $AE, $03
    .byte -16, 0, $8E, $03
    .byte -8, 0, $9E, $03
    .byte 8, -47, $F8, $43
    .byte 0, -16, $DE, $03
    .byte -8, -16, $DC, $03
    .byte -16, -16, $DA, $03
    .byte 8, -32, $D8, $03
    .byte 0, -32, $E2, $03
    .byte -16, -32, $8A, $03
    .byte -8, -32, $D2, $03
    .byte 0, -6, $84, $02
    .byte 1, 11, $A4, $02
    L_3299E0:
    .byte $D4
    .byte $0D
    .byte 0, 16, $AE, $43
    .byte 8, 0, $8E, $43
    .byte 0, 0, $9E, $43
    .byte -16, -47, $F8, $03
    .byte -8, -16, $DE, $43
    .byte 0, -16, $DC, $43
    .byte 8, -16, $DA, $43
    .byte -16, -32, $D8, $43
    .byte -8, -32, $E2, $43
    .byte 8, -32, $8A, $43
    .byte 0, -32, $D2, $43
    .byte -8, -6, $84, $42
    .byte -8, 11, $A4, $42
    L_329A16:
    .byte $D4
    .byte $0D
    .byte -8, 16, $AE, $03
    .byte -16, 0, $8E, $03
    .byte -8, 0, $9E, $03
    .byte 8, -48, $F8, $43
    .byte 0, -16, $DE, $03
    .byte -8, -16, $DC, $03
    .byte -16, -16, $DA, $03
    .byte 8, -32, $D8, $03
    .byte 0, -32, $E2, $03
    .byte -16, -32, $8A, $03
    .byte -8, -32, $D2, $03
    .byte -2, -7, $84, $42
    .byte 0, 8, $A4, $82
    L_329A4C:
    .byte $D4
    .byte $0D
    .byte 0, 16, $AE, $43
    .byte 8, 0, $8E, $43
    .byte 0, 0, $9E, $43
    .byte -16, -48, $F8, $03
    .byte -8, -16, $DE, $43
    .byte 0, -16, $DC, $43
    .byte 8, -16, $DA, $43
    .byte -16, -32, $D8, $43
    .byte -8, -32, $E2, $43
    .byte 8, -32, $8A, $43
    .byte 0, -32, $D2, $43
    .byte -6, -7, $84, $02
    .byte -8, 8, $A4, $C2
    L_329A82:
    .byte $D4
    .byte $01
    .byte -4, -13, $F6, $03
    L_329A88:
    .byte $D4
    .byte $01
    .byte -4, -13, $F6, $43
    L_329A8E:
    .byte $D4
    .byte $01
    .byte -4, -13, $F8, $03
    L_329A94:
    .byte $D4
    .byte $01
    .byte -4, -13, $F8, $43
    L_329A9A:
    .byte $D4
    .byte $03
    .byte -6, -32, $F0, $01
    .byte 2, -32, $F0, $41
    .byte -4, -13, $F8, $03
    L_329AA8:
    .byte $D4
    .byte $03
    .byte -2, -32, $F0, $41
    .byte -10, -32, $F0, $01
    .byte -4, -13, $F8, $43
    L_329AB6:
    .byte $D4
    .byte $02
    .byte 0, 2, $C8, $43
    .byte 8, 2, $9A, $43
    L_329AC0:
    .byte $D4
    .byte $02
    .byte -8, 2, $C8, $03
    .byte -16, 2, $9A, $03
    L_329ACA:
    .byte $D4
    .byte $01
    .byte -4, -13, $E6, $01
    L_329AD0:
    .byte $D4
    .byte $01
    .byte -4, -13, $E6, $41
    L_329AD6:
    .byte $D4
    .byte $02
    .byte 2, -4, $A4, $42
    .byte -10, -14, $E8, $42
    L_329AE0:
    .byte $D4
    .byte $02
    .byte -10, -8, $94, $42
    .byte 2, -8, $84, $42
    L_329AEA:
    .byte $D4
    .byte $03
    .byte 4, -6, $A4, $42
    .byte -12, -6, $84, $42
    .byte -4, 0, $E8, $42
    L_329AF8:
    .byte $D4
    .byte $02
    .byte -4, -14, $94, $C2
    .byte -12, -8, $E8, $C2
    L_329B02:
    .byte $D4
    .byte $01
    .byte 4, -2, $84, $C2
    L_329B08:
    .byte $D6
    .byte $0D
    .byte 4, 8, $A2, $02
    .byte -4, 16, $E0, $02
    .byte -4, 0, $92, $02
    .byte -12, 0, $82, $02
    .byte -36, -16, $90, $03
    .byte -44, -24, $80, $03
    .byte 12, -32, $D0, $03
    .byte -20, -32, $A0, $03
    .byte 4, -32, $B0, $43
    .byte -12, -32, $B0, $03
    .byte -12, -16, $B2, $02
    .byte -4, -16, $C2, $03
    .byte -4, -32, $C0, $43
    L_329B3E:
    .byte $D6
    .byte $0D
    .byte -12, 8, $A2, $42
    .byte -4, 16, $E0, $42
    .byte -4, 0, $92, $42
    .byte 4, 0, $82, $42
    .byte 28, -16, $90, $43
    .byte 36, -24, $80, $43
    .byte -20, -32, $D0, $43
    .byte 12, -32, $A0, $43
    .byte -12, -32, $B0, $03
    .byte 4, -32, $B0, $43
    .byte 4, -16, $B2, $42
    .byte -4, -16, $C2, $03
    .byte -4, -32, $C0, $43
    L_329B74:
    .byte $D6
    .byte $14
    .byte -2, -48, $E2, $43
    .byte 14, -32, $E6, $43
    .byte -18, -48, $88, $43
    .byte -26, -48, $98, $43
    .byte -34, -48, $A8, $43
    .byte -18, -32, $B8, $43
    .byte -26, -32, $C8, $43
    .byte -34, -32, $D8, $43
    .byte -26, 0, $D6, $43
    .byte -18, 0, $C6, $43
    .byte -10, 0, $B6, $43
    .byte -34, -16, $E4, $43
    .byte -26, -16, $D4, $43
    .byte -18, -16, $C4, $43
    .byte -10, -16, $B4, $43
    .byte 14, -16, $84, $43
    .byte 6, 0, $96, $43
    .byte 6, -16, $94, $43
    .byte -2, 0, $A6, $43
    .byte -2, -16, $A4, $43
    L_329BC6:
    .byte $D6
    .byte $14
    .byte -6, -48, $E2, $03
    .byte -22, -32, $E6, $03
    .byte 10, -48, $88, $03
    .byte 18, -48, $98, $03
    .byte 26, -48, $A8, $03
    .byte 10, -32, $B8, $03
    .byte 18, -32, $C8, $03
    .byte 26, -32, $D8, $03
    .byte 18, 0, $D6, $03
    .byte 10, 0, $C6, $03
    .byte 2, 0, $B6, $03
    .byte 26, -16, $E4, $03
    .byte 18, -16, $D4, $03
    .byte 10, -16, $C4, $03
    .byte 2, -16, $B4, $03
    .byte -22, -16, $84, $03
    .byte -14, 0, $96, $03
    .byte -14, -16, $94, $03
    .byte -6, 0, $A6, $03
    .byte -6, -16, $A4, $03
    L_329C18:
    .byte $D6
    .byte $0D
    .byte 4, -24, $A2, $82
    .byte -4, -32, $E0, $82
    .byte -4, -16, $92, $82
    .byte -12, -16, $82, $82
    .byte -36, 0, $90, $83
    .byte -44, 8, $80, $83
    .byte 12, 16, $D0, $83
    .byte -20, 16, $A0, $83
    .byte 4, 16, $B0, $C3
    .byte -12, 16, $B0, $83
    .byte -12, 0, $B2, $82
    .byte -4, 0, $C2, $83
    .byte -4, 16, $C0, $C3
    L_329C4E:
    .byte $D6
    .byte $0D
    .byte -12, -24, $A2, $C2
    .byte -4, -32, $E0, $C2
    .byte -4, -16, $92, $C2
    .byte 4, -16, $82, $C2
    .byte 28, 0, $90, $C3
    .byte 36, 8, $80, $C3
    .byte -20, 16, $D0, $C3
    .byte 12, 16, $A0, $C3
    .byte -12, 16, $B0, $83
    .byte 4, 16, $B0, $C3
    .byte 4, 0, $B2, $C2
    .byte -4, 0, $C2, $83
    .byte -4, 16, $C0, $C3

L_329C84:
    .addr L_329CA8
    .addr L_329CC9
    .addr L_329CEA
    .addr L_329D0B
    .addr L_329D2C
    .addr L_329D4D
    .addr L_329D6E
    .addr L_329D97
L_329C94:
    .addr L_329DC0
    .addr L_329DD1
L_329C98:
    .addr L_329DDA
    .addr L_329DE3
    .addr L_329DEC
    .addr L_329DF5
    .addr L_329DFE
    .addr L_329E07
    .addr L_329E10
    .addr L_329E19

    L_329CA8:
    .byte $08
    .byte -16, -17, $CA, $03
    .byte -8, -17, $DA, $03
    .byte 8, -17, $AA, $43
    .byte 0, -17, $BA, $43
    .byte 0, -1, $FA, $C2
    .byte 8, -1, $EA, $C2
    .byte -16, -1, $8A, $82
    .byte -8, -1, $9A, $82
    L_329CC9:
    .byte $08
    .byte 8, -17, $8A, $43
    .byte 0, -17, $9A, $43
    .byte -8, -17, $FA, $03
    .byte -16, -17, $EA, $03
    .byte 0, -1, $DA, $C2
    .byte 8, -1, $CA, $C2
    .byte -8, -1, $BA, $82
    .byte -16, -1, $AA, $82
    L_329CEA:
    .byte $08
    .byte 0, -17, $FA, $43
    .byte 8, -17, $EA, $43
    .byte -16, -17, $8A, $03
    .byte -8, -17, $9A, $03
    .byte -8, -1, $DA, $82
    .byte -16, -1, $CA, $82
    .byte 0, -1, $BA, $C2
    .byte 8, -1, $AA, $C2
    L_329D0B:
    .byte $08
    .byte -16, -17, $AA, $03
    .byte -8, -17, $BA, $03
    .byte 0, -17, $DA, $43
    .byte 8, -17, $CA, $43
    .byte -8, -1, $FA, $82
    .byte -16, -1, $EA, $82
    .byte 8, -1, $8A, $C2
    .byte 0, -1, $9A, $C2
    L_329D2C:
    .byte $08
    .byte 8, -17, $8C, $43
    .byte -16, -17, $8C, $03
    .byte 0, -17, $9C, $43
    .byte -8, -17, $9C, $03
    .byte 0, -1, $9C, $C2
    .byte 8, -1, $8C, $C2
    .byte -16, -1, $8C, $82
    .byte -8, -1, $9C, $82
    L_329D4D:
    .byte $08
    .byte 8, -17, $AC, $43
    .byte -16, -17, $AC, $03
    .byte 0, -17, $BC, $43
    .byte -8, -17, $BC, $03
    .byte 8, -1, $AC, $C2
    .byte -16, -1, $AC, $82
    .byte 0, -1, $BC, $C2
    .byte -8, -1, $BC, $82
    L_329D6E:
    .byte $0A
    .byte 12, -17, $8E, $42
    .byte -20, -17, $CE, $42
    .byte -12, -17, $BE, $42
    .byte 4, -17, $9E, $42
    .byte -4, -17, $AE, $42
    .byte 12, -1, $CE, $82
    .byte -20, -1, $8E, $82
    .byte 4, -1, $BE, $82
    .byte -12, -1, $9E, $82
    .byte -4, -1, $AE, $82
    L_329D97:
    .byte $0A
    .byte -20, -17, $8E, $02
    .byte 12, -17, $CE, $02
    .byte 4, -17, $BE, $02
    .byte -12, -17, $9E, $02
    .byte -4, -17, $AE, $02
    .byte -20, -1, $CE, $C2
    .byte 12, -1, $8E, $C2
    .byte -12, -1, $BE, $C2
    .byte 4, -1, $9E, $C2
    .byte -4, -1, $AE, $C2
    L_329DC0:
    .byte $04
    .byte 2, -1, $EC, $81
    .byte 2, -17, $EC, $01
    .byte -10, -1, $CC, $81
    .byte -10, -17, $CC, $01
    L_329DD1:
    .byte $02
    .byte -4, -17, $DC, $01
    .byte -4, -1, $DC, $81
    L_329DDA:
    .byte $02
    .byte 0, -9, $F0, $43
    .byte -8, -9, $F0, $03
    L_329DE3:
    .byte $02
    .byte 0, -9, $F4, $03
    .byte -8, -9, $F2, $03
    L_329DEC:
    .byte $02
    .byte 0, -8, $F0, $C3
    .byte -8, -8, $F0, $83
    L_329DF5:
    .byte $02
    .byte 0, -9, $F2, $43
    .byte -8, -9, $F4, $43
    L_329DFE:
    .byte $02
    .byte 0, -10, $E8, $43
    .byte -8, -10, $E8, $03
    L_329E07:
    .byte $02
    .byte 0, -9, $EE, $03
    .byte -8, -9, $DE, $03
    L_329E10:
    .byte $02
    .byte 0, -8, $E8, $C3
    .byte -8, -8, $E8, $83
    L_329E19:
    .byte $02
    .byte 0, -9, $DE, $43
    .byte -8, -9, $EE, $43

L_329E22:
    .addr L_329E2A
    .addr L_329E33
    .addr L_329E3C
    .addr L_329E45

    L_329E2A:
    .byte $02
    .byte -8, -8, $D0, $42
    .byte 0, -8, $C0, $42
    L_329E33:
    .byte $02
    .byte 0, -8, $D0, $02
    .byte -8, -8, $C0, $02
    L_329E3C:
    .byte $02
    .byte 0, -8, $C2, $42
    .byte -8, -8, $D2, $42
    L_329E45:
    .byte $02
    .byte -8, -8, $C2, $02
    .byte 0, -8, $D2, $02

L_329E4E:
    .addr L_329E74
    .addr L_329E7D
    .addr L_329E8F
    .addr L_329E86
    .addr L_329E86
    .addr L_329E8F
    .addr L_329E7D
    .addr L_329E74
    .addr L_329E62
    .addr L_329E6B

    L_329E62:
    .byte $02
    .byte -8, -8, $D4, $42
    .byte 0, -8, $C4, $42
    L_329E6B:
    .byte $02
    .byte 0, -8, $D4, $02
    .byte -8, -8, $C4, $02
    L_329E74:
    .byte $02
    .byte 0, -8, $D6, $02
    .byte -8, -8, $C6, $02
    L_329E7D:
    .byte $02
    .byte -8, -8, $D6, $42
    .byte 0, -8, $C6, $42
    L_329E86:
    .byte $02
    .byte -8, -8, $D6, $C2
    .byte 0, -8, $C6, $C2
    L_329E8F:
    .byte $02
    .byte 0, -8, $D6, $82
    .byte -8, -8, $C6, $82

L_329E98:
    .addr L_329EEE
    .addr L_329F21
    .addr L_329F10
    .addr L_329EFF
    .addr L_329EAA
    .addr L_329EBB
    .addr L_329ECC
    .addr L_329EDD
L_329EA8:
    .addr L_329F32

    L_329EAA:
    .byte $04
    .byte -30, 5, $DE, $C1
    .byte -22, 5, $CE, $C1
    .byte 22, -28, $C6, $01
    .byte 14, -28, $C4, $01
    L_329EBB:
    .byte $04
    .byte -30, -28, $DE, $41
    .byte -22, -28, $CE, $41
    .byte 22, 5, $C6, $81
    .byte 14, 5, $C4, $81
    L_329ECC:
    .byte $04
    .byte 22, 5, $DE, $81
    .byte 15, 5, $CE, $81
    .byte -30, -28, $C6, $41
    .byte -22, -28, $C4, $41
    L_329EDD:
    .byte $04
    .byte 22, -28, $DE, $01
    .byte 14, -28, $CE, $01
    .byte -30, 5, $C6, $C1
    .byte -22, 5, $C4, $C1
    L_329EEE:
    .byte $04
    .byte 20, -24, $DE, $01
    .byte 12, -24, $CE, $01
    .byte -20, 1, $CE, $C1
    .byte -28, 1, $DE, $C1
    L_329EFF:
    .byte $04
    .byte -28, -24, $DE, $41
    .byte -20, -24, $CE, $41
    .byte 12, 1, $CE, $81
    .byte 20, 1, $DE, $81
    L_329F10:
    .byte $04
    .byte 18, -20, $DE, $01
    .byte 10, -20, $CE, $01
    .byte -18, -2, $CE, $C1
    .byte -26, -2, $DE, $C1
    L_329F21:
    .byte $04
    .byte -26, -20, $DE, $41
    .byte -18, -20, $CE, $41
    .byte 10, -2, $CE, $81
    .byte 18, -2, $DE, $81
    L_329F32:
    .byte $01
    .byte -4, -9, $DA, $01

L_329F37:
    .addr L_329F3F
    .addr L_329F60
    .addr L_329F81
    .addr L_329FA2

    L_329F3F:
    .byte $08
    .byte 8, 8, $BC, $02
    .byte 0, 8, $AC, $42
    .byte -8, 8, $AC, $02
    .byte -16, 8, $9C, $02
    .byte 8, -8, $A4, $43
    .byte 0, -8, $9A, $43
    .byte -8, -8, $9A, $03
    .byte -16, -8, $A4, $03
    L_329F60:
    .byte $08
    .byte 8, -24, $BC, $82
    .byte 0, -24, $AC, $C2
    .byte -8, -24, $AC, $82
    .byte -16, -24, $9C, $82
    .byte 8, -8, $A4, $C3
    .byte 0, -8, $9A, $C3
    .byte -8, -8, $9A, $83
    .byte -16, -8, $A4, $83
    L_329F81:
    .byte $08
    .byte 8, 10, $CE, $02
    .byte 0, 10, $BE, $42
    .byte -8, 10, $BE, $02
    .byte -16, 10, $AE, $02
    .byte 8, -6, $8E, $43
    .byte 0, -6, $9E, $43
    .byte -8, -6, $9E, $03
    .byte -16, -6, $8E, $03
    L_329FA2:
    .byte $08
    .byte 8, -26, $CE, $82
    .byte 0, -26, $BE, $C2
    .byte -8, -26, $BE, $82
    .byte -16, -26, $AE, $82
    .byte 8, -10, $8E, $C3
    .byte 0, -10, $9E, $C3
    .byte -8, -10, $9E, $83
    .byte -16, -10, $8E, $83

    .byte $55,$FF,$D4,$EF,$55,$FF,$14,$BD,$15,$EF,$55,$EB,$D5
    .byte $FF,$77,$7E,$D5,$BF,$C6,$FF,$57,$FF,$41,$7D,$55,$FC,$7F,$F7,$85
    .byte $5F,$55,$FE,$55,$9F,$14,$3F,$15,$DF,$15,$DF,$C1,$DF,$74,$FD,$04
    .byte $DF,$15,$6E,$35,$DF,$55,$3F,$45,$FF,$15,$FD,$34,$FE,$57,$DF,$17

.segment "PRG33": absolute

L_338000:
    .addr L_338068
    .addr L_338089
    .addr L_3380C3
    .addr L_3380AA
    .addr L_3380F5
    .addr L_3380DC
    .addr L_338127
    .addr L_33810E
    .addr L_338159
    .addr L_338140
    .addr L_33818B
    .addr L_338172
    .addr L_3381BD
    .addr L_3381A4
    .addr L_3381EF
    .addr L_3381D6
    .addr L_338221
    .addr L_338208
    .addr L_338253
    .addr L_33823A
    .addr L_338285
    .addr L_33826C
    .addr L_3382B7
    .addr L_33829E
    .addr L_3382E9
    .addr L_3382D0
    .addr L_338379
    .addr L_338368
    .addr L_338302
    .addr L_338313
    .addr L_338335
    .addr L_338324
    .addr L_338346
    .addr L_338357
    .addr L_338068
    .addr L_338089
    .addr L_338089
    .addr L_338068
    .addr L_338253
    .addr L_33823A
    .addr L_338285
    .addr L_33826C
    .addr L_338324
    .addr L_338335
    .addr L_338253
    .addr L_33823A
    .addr L_338285
    .addr L_33826C
    .addr L_3382B7
    .addr L_33829E
    .addr L_3382E9
    .addr L_3382D0

    L_338068:
    .byte $08
    .byte 9, 0, $E2, $C3
    .byte 9, -16, $AA, $C3
    .byte 1, 0, $BA, $43
    .byte -7, 0, $BA, $03
    .byte -15, 0, $AA, $03
    .byte 1, -16, $F2, $43
    .byte -7, -16, $F2, $03
    .byte -15, -16, $E2, $03
    L_338089:
    .byte $08
    .byte -15, -16, $AA, $83
    .byte -15, 0, $E2, $83
    .byte -7, 0, $BA, $03
    .byte -7, -16, $F2, $03
    .byte 1, 0, $BA, $43
    .byte 1, -16, $F2, $43
    .byte 9, 0, $AA, $43
    .byte 9, -16, $E2, $43
    L_3380AA:
    .byte $06
    .byte 4, 0, $AE, $43
    .byte -12, -16, $8C, $43
    .byte 4, -16, $8E, $83
    .byte -4, -16, $96, $43
    .byte -4, 0, $98, $43
    .byte -12, 0, $8E, $43
    L_3380C3:
    .byte $06
    .byte 4, -16, $8C, $03
    .byte 4, 0, $8E, $03
    .byte -4, 0, $98, $03
    .byte -12, 0, $AE, $03
    .byte -4, -16, $96, $03
    .byte -12, -16, $8E, $C3
    L_3380DC:
    .byte $06
    .byte 4, -16, $AC, $43
    .byte -12, -16, $AE, $83
    .byte 4, 0, $AE, $43
    .byte -4, -16, $BC, $43
    .byte -4, 0, $98, $43
    .byte -12, 0, $8E, $43
    L_3380F5:
    .byte $06
    .byte 4, 0, $8E, $03
    .byte -4, 0, $98, $03
    .byte -12, 0, $AE, $03
    .byte 4, -16, $AE, $C3
    .byte -4, -16, $BC, $03
    .byte -12, -16, $AC, $03
    L_33810E:
    .byte $06
    .byte 4, 0, $8C, $83
    .byte -12, -16, $AE, $83
    .byte 4, -16, $8E, $83
    .byte -4, -16, $96, $43
    .byte -4, 0, $98, $43
    .byte -12, 0, $8E, $43
    L_338127:
    .byte $06
    .byte 4, -16, $AE, $C3
    .byte 4, 0, $8E, $03
    .byte -4, 0, $98, $03
    .byte -12, 0, $8C, $C3
    .byte -4, -16, $96, $03
    .byte -12, -16, $8E, $C3
    L_338140:
    .byte $06
    .byte 4, -16, $8E, $83
    .byte -12, -16, $AE, $83
    .byte 4, 0, $AE, $43
    .byte -4, -16, $96, $43
    .byte -4, 0, $BE, $43
    .byte -12, 0, $AC, $83
    L_338159:
    .byte $06
    .byte 4, 0, $AC, $C3
    .byte -4, 0, $BE, $03
    .byte -12, 0, $AE, $03
    .byte 4, -16, $AE, $C3
    .byte -4, -16, $96, $03
    .byte -12, -16, $8E, $C3
    L_338172:
    .byte $06
    .byte -12, 1, $88, $43
    .byte -12, -15, $84, $43
    .byte 4, 1, $90, $43
    .byte -4, 1, $92, $43
    .byte -4, -15, $80, $43
    .byte 4, -15, $E4, $43
    L_33818B:
    .byte $06
    .byte 4, 1, $88, $03
    .byte 4, -15, $84, $03
    .byte -4, 1, $92, $03
    .byte -12, 1, $90, $03
    .byte -4, -15, $80, $03
    .byte -12, -15, $E4, $03
    L_3381A4:
    .byte $06
    .byte -12, 1, $88, $43
    .byte -12, -15, $84, $43
    .byte 4, 1, $E6, $43
    .byte -4, 1, $82, $43
    .byte -4, -15, $80, $43
    .byte 4, -15, $88, $83
    L_3381BD:
    .byte $06
    .byte 4, 1, $88, $03
    .byte 4, -15, $84, $03
    .byte -4, 1, $82, $03
    .byte -12, 1, $E6, $03
    .byte -4, -15, $80, $03
    .byte -12, -15, $88, $C3
    L_3381D6:
    .byte $06
    .byte -12, 1, $E4, $83
    .byte -12, -15, $84, $43
    .byte 4, 1, $90, $43
    .byte -4, 1, $92, $43
    .byte -4, -15, $80, $43
    .byte 4, -15, $88, $83
    L_3381EF:
    .byte $06
    .byte 4, 1, $E4, $C3
    .byte 4, -15, $84, $03
    .byte -4, 1, $92, $03
    .byte -12, 1, $90, $03
    .byte -4, -15, $80, $03
    .byte -12, -15, $88, $C3
    L_338208:
    .byte $06
    .byte -12, 1, $88, $43
    .byte -12, -15, $84, $43
    .byte 4, 1, $90, $43
    .byte -4, 1, $92, $43
    .byte -4, -15, $80, $43
    .byte 4, -15, $88, $83
    L_338221:
    .byte $06
    .byte 4, 1, $88, $03
    .byte 4, -15, $84, $03
    .byte -4, 1, $92, $03
    .byte -12, 1, $90, $03
    .byte -4, -15, $80, $03
    .byte -12, -15, $88, $C3
    L_33823A:
    .byte $06
    .byte -12, 1, $88, $43
    .byte -12, -15, $86, $43
    .byte 4, 1, $90, $43
    .byte -4, 1, $92, $43
    .byte -4, -15, $80, $43
    .byte 4, -15, $E4, $43
    L_338253:
    .byte $06
    .byte 4, 1, $88, $03
    .byte 4, -15, $86, $03
    .byte -4, 1, $92, $03
    .byte -12, 1, $90, $03
    .byte -4, -15, $80, $03
    .byte -12, -15, $E4, $03
    L_33826C:
    .byte $06
    .byte -12, 1, $88, $43
    .byte -12, -15, $86, $43
    .byte 4, 1, $E6, $43
    .byte -4, 1, $82, $43
    .byte -4, -15, $80, $43
    .byte 4, -15, $88, $83
    L_338285:
    .byte $06
    .byte 4, 1, $88, $03
    .byte 4, -15, $86, $03
    .byte -4, 1, $82, $03
    .byte -12, 1, $E6, $03
    .byte -4, -15, $80, $03
    .byte -12, -15, $88, $C3
    L_33829E:
    .byte $06
    .byte -12, 1, $E4, $83
    .byte -12, -15, $86, $43
    .byte 4, 1, $90, $43
    .byte -4, 1, $92, $43
    .byte -4, -15, $80, $43
    .byte 4, -15, $88, $83
    L_3382B7:
    .byte $06
    .byte 4, 1, $E4, $C3
    .byte 4, -15, $86, $03
    .byte -4, 1, $92, $03
    .byte -12, 1, $90, $03
    .byte -4, -15, $80, $03
    .byte -12, -15, $88, $C3
    L_3382D0:
    .byte $06
    .byte -12, 1, $88, $43
    .byte -12, -15, $86, $43
    .byte 4, 1, $90, $43
    .byte -4, 1, $92, $43
    .byte -4, -15, $80, $43
    .byte 4, -15, $88, $83
    L_3382E9:
    .byte $06
    .byte 4, 1, $88, $03
    .byte 4, -15, $86, $03
    .byte -4, 1, $92, $03
    .byte -12, 1, $90, $03
    .byte -4, -15, $80, $03
    .byte -12, -15, $88, $C3
    L_338302:
    .byte $04
    .byte 8, -1, $8A, $43
    .byte 0, -1, $94, $43
    .byte -8, -1, $94, $83
    .byte -16, -1, $F4, $83
    L_338313:
    .byte $04
    .byte 8, -1, $F4, $C3
    .byte 0, -1, $94, $C3
    .byte -8, -1, $94, $03
    .byte -16, -1, $8A, $03
    L_338324:
    .byte $04
    .byte 8, -1, $F4, $43
    .byte 0, -1, $F6, $43
    .byte -8, -1, $F6, $83
    .byte -16, -1, $F4, $83
    L_338335:
    .byte $04
    .byte 8, -1, $F4, $C3
    .byte 0, -1, $F6, $C3
    .byte -8, -1, $F6, $03
    .byte -16, -1, $F4, $03
    L_338346:
    .byte $04
    .byte 8, -1, $F4, $43
    .byte 0, -1, $94, $43
    .byte -8, -1, $94, $83
    .byte -16, -1, $8A, $83
    L_338357:
    .byte $04
    .byte 8, -1, $8A, $C3
    .byte 0, -1, $94, $C3
    .byte -8, -1, $94, $03
    .byte -16, -1, $F4, $03
    L_338368:
    .byte $04
    .byte 8, -1, $F4, $43
    .byte 0, -1, $94, $43
    .byte -8, -1, $94, $83
    .byte -16, -1, $F4, $83
    L_338379:
    .byte $04
    .byte 8, -1, $F4, $C3
    .byte 0, -1, $94, $C3
    .byte -8, -1, $94, $03
    .byte -16, -1, $F4, $03

L_33838A:
    .addr L_338422
    .addr L_33843B
    .addr L_33873E
    .addr L_338757
    .addr L_3384F2
    .addr L_33850F
    .addr L_33852C
    .addr L_33854D
    .addr L_338486
    .addr L_33849F
    .addr L_3384B8
    .addr L_3384D5
    .addr L_3389EE
    .addr L_338A03
    .addr L_338454
    .addr L_33846D
    .addr L_338486
    .addr L_33849F
    .addr L_33856E
    .addr L_33857F
    .addr L_338590
    .addr L_3385A9
    .addr L_3385C2
    .addr L_3385E3
    .addr L_338770
    .addr L_338799
    .addr L_3387C2
    .addr L_3387F3
    .addr L_3385C2
    .addr L_3385E3
    .addr L_338604
    .addr L_338621
    .addr L_33863E
    .addr L_33865F
    .addr L_338604
    .addr L_338621
    .addr L_3386F4
    .addr L_338719
    .addr L_338A52
    .addr L_338A77
    .addr L_3387C2
    .addr L_3387F3
    .addr L_338824
    .addr L_338851
    .addr L_33887E
    .addr L_3388AF
    .addr L_338824
    .addr L_338851
    .addr L_33898C
    .addr L_3389BD
    .addr L_338AEE
    .addr L_338B1F
    .addr L_3385C2
    .addr L_3385E3
    .addr L_338604
    .addr L_338621
    .addr L_33863E
    .addr L_33865F
    .addr L_338680
    .addr L_33869D
    .addr L_3386BA
    .addr L_3386D7
    .addr L_338A18
    .addr L_338A35
    .addr L_3387C2
    .addr L_3387F3
    .addr L_338824
    .addr L_338851
    .addr L_33887E
    .addr L_3388AF
    .addr L_3388E0
    .addr L_33890D
    .addr L_33893A
    .addr L_338963
    .addr L_338A9C
    .addr L_338AC5

    L_338422:
    .byte $06
    .byte -12, -18, $CA, $43
    .byte -4, -18, $98, $43
    .byte 4, -18, $88, $43
    .byte -12, -2, $CC, $43
    .byte -4, -2, $9A, $43
    .byte 4, -2, $8A, $43
    L_33843B:
    .byte $06
    .byte 4, -18, $CA, $03
    .byte -4, -18, $98, $03
    .byte -12, -18, $88, $03
    .byte 4, -2, $CC, $03
    .byte -4, -2, $9A, $03
    .byte -12, -2, $8A, $03
    L_338454:
    .byte $06
    .byte 4, -2, $86, $43
    .byte -4, -18, $B2, $43
    .byte -12, -18, $C6, $43
    .byte -20, -2, $D8, $43
    .byte -12, -2, $C8, $43
    .byte -4, -2, $96, $43
    L_33846D:
    .byte $06
    .byte -12, -2, $86, $03
    .byte -4, -18, $B2, $03
    .byte 4, -18, $C6, $03
    .byte 12, -2, $D8, $03
    .byte 4, -2, $C8, $03
    .byte -4, -2, $96, $03
    L_338486:
    .byte $06
    .byte -15, -17, $CA, $43
    .byte -7, -17, $98, $43
    .byte 1, -17, $88, $43
    .byte -12, -1, $D4, $43
    .byte -4, -1, $C4, $43
    .byte 4, -1, $A0, $43
    L_33849F:
    .byte $06
    .byte 7, -17, $CA, $03
    .byte -1, -17, $98, $03
    .byte -9, -17, $88, $03
    .byte 4, -1, $D4, $03
    .byte -4, -1, $C4, $03
    .byte -12, -1, $A0, $03
    L_3384B8:
    .byte $07
    .byte -15, -17, $CA, $43
    .byte -7, -17, $98, $43
    .byte 1, -17, $DA, $43
    .byte -12, -1, $D4, $43
    .byte -4, -1, $C4, $43
    .byte 4, -1, $A0, $43
    .byte -18, -22, $D6, $83
    L_3384D5:
    .byte $07
    .byte 7, -17, $CA, $03
    .byte -1, -17, $98, $03
    .byte -9, -17, $DA, $03
    .byte 4, -1, $D4, $03
    .byte -4, -1, $C4, $03
    .byte -12, -1, $A0, $03
    .byte 10, -22, $D6, $C3
    L_3384F2:
    .byte $07
    .byte -16, -7, $D8, $43
    .byte -11, -18, $CA, $43
    .byte -3, -18, $98, $43
    .byte 5, -18, $88, $43
    .byte -11, -2, $80, $43
    .byte -3, -2, $9A, $43
    .byte 5, -2, $A2, $43
    L_33850F:
    .byte $07
    .byte 8, -7, $D8, $03
    .byte 3, -18, $CA, $03
    .byte -5, -18, $98, $03
    .byte -13, -18, $88, $03
    .byte 3, -2, $80, $03
    .byte -5, -2, $9A, $03
    .byte -13, -2, $A2, $03
    L_33852C:
    .byte $08
    .byte -16, -7, $D8, $43
    .byte -11, -18, $CA, $43
    .byte -3, -18, $98, $43
    .byte 5, -18, $DA, $43
    .byte -11, -2, $80, $43
    .byte 5, -2, $A2, $43
    .byte -15, -23, $D6, $83
    .byte -3, -2, $9A, $43
    L_33854D:
    .byte $08
    .byte 8, -7, $D8, $03
    .byte 3, -18, $CA, $03
    .byte -5, -18, $98, $03
    .byte -13, -18, $DA, $03
    .byte 3, -2, $80, $03
    .byte -13, -2, $A2, $03
    .byte 7, -23, $D6, $C3
    .byte -5, -2, $9A, $03
    L_33856E:
    .byte $04
    .byte -16, -2, $B0, $43
    .byte -8, -2, $82, $43
    .byte 0, -2, $A6, $83
    .byte 8, -2, $B6, $83
    L_33857F:
    .byte $04
    .byte 8, -2, $B0, $03
    .byte 0, -2, $82, $03
    .byte -8, -2, $A6, $C3
    .byte -16, -2, $B6, $C3
    L_338590:
    .byte $06
    .byte 0, -2, $A6, $83
    .byte 8, -2, $B6, $83
    .byte 4, -2, $00, $01
    .byte 12, -2, $10, $01
    .byte -16, -2, $B0, $43
    .byte -8, -2, $82, $43
    L_3385A9:
    .byte $06
    .byte -8, -2, $A6, $C3
    .byte -16, -2, $B6, $C3
    .byte -12, -2, $00, $41
    .byte -20, -2, $10, $41
    .byte 8, -2, $B0, $03
    .byte 0, -2, $82, $03
    L_3385C2:
    .byte $08
    .byte -4, -2, $DC, $43
    .byte -2, -4, $08, $00
    .byte 6, -3, $18, $00
    .byte -12, -18, $CA, $43
    .byte -4, -18, $98, $43
    .byte 4, -18, $88, $43
    .byte 4, -2, $8A, $43
    .byte -12, -2, $CC, $43
    L_3385E3:
    .byte $08
    .byte -4, -2, $DC, $03
    .byte -6, -4, $08, $40
    .byte -14, -3, $18, $40
    .byte 4, -18, $CA, $03
    .byte -4, -18, $98, $03
    .byte -12, -18, $88, $03
    .byte -12, -2, $8A, $03
    .byte 4, -2, $CC, $03
    L_338604:
    .byte $07
    .byte -7, -18, $2A, $00
    .byte 1, -18, $2C, $00
    .byte -21, -2, $D8, $43
    .byte -13, -18, $C6, $43
    .byte -13, -2, $C8, $43
    .byte -5, -2, $96, $43
    .byte 3, -2, $86, $43
    L_338621:
    .byte $07
    .byte -1, -18, $2A, $40
    .byte -9, -18, $2C, $40
    .byte 13, -2, $D8, $03
    .byte 5, -18, $C6, $03
    .byte 5, -2, $C8, $03
    .byte -3, -2, $96, $03
    .byte -11, -2, $86, $03
    L_33863E:
    .byte $08
    .byte -7, -18, $2C, $00
    .byte -6, -18, $B2, $43
    .byte -14, -18, $C6, $43
    .byte -15, -18, $2A, $00
    .byte -21, -2, $D8, $43
    .byte -13, -2, $C8, $43
    .byte -5, -2, $96, $43
    .byte 3, -2, $86, $43
    L_33865F:
    .byte $08
    .byte -1, -18, $2C, $40
    .byte -2, -18, $B2, $03
    .byte 6, -18, $C6, $03
    .byte 7, -18, $2A, $40
    .byte 13, -2, $D8, $03
    .byte 5, -2, $C8, $03
    .byte -3, -2, $96, $03
    .byte -11, -2, $86, $03
    L_338680:
    .byte $07
    .byte -27, -4, $B6, $43
    .byte -19, -4, $A6, $43
    .byte -16, -10, $2A, $C0
    .byte -24, -10, $2C, $C0
    .byte -13, -2, $C8, $43
    .byte -5, -2, $96, $43
    .byte 3, -2, $86, $43
    L_33869D:
    .byte $07
    .byte 19, -4, $B6, $03
    .byte 11, -4, $A6, $03
    .byte 8, -10, $2A, $80
    .byte 16, -10, $2C, $80
    .byte 5, -2, $C8, $03
    .byte -3, -2, $96, $03
    .byte -11, -2, $86, $03
    L_3386BA:
    .byte $07
    .byte -27, -1, $B6, $43
    .byte -19, -1, $A6, $43
    .byte -18, -1, $2A, $C0
    .byte -26, -2, $2C, $C0
    .byte -13, -2, $C8, $43
    .byte -5, -2, $96, $43
    .byte 3, -2, $86, $43
    L_3386D7:
    .byte $07
    .byte 19, -1, $B6, $03
    .byte 11, -1, $A6, $03
    .byte 10, -1, $2A, $80
    .byte 18, -2, $2C, $80
    .byte 5, -2, $C8, $03
    .byte -3, -2, $96, $03
    .byte -11, -2, $86, $03
    L_3386F4:
    .byte $09
    .byte -3, 0, $DC, $43
    .byte -2, 2, $4E, $80
    .byte 6, 2, $5E, $80
    .byte -16, -5, $D8, $43
    .byte -11, -16, $CA, $43
    .byte -3, -16, $98, $43
    .byte 5, -16, $88, $43
    .byte -11, 0, $80, $43
    .byte 5, 0, $A2, $43
    L_338719:
    .byte $09
    .byte -5, 0, $DC, $03
    .byte -6, 2, $4E, $C0
    .byte -14, 2, $5E, $C0
    .byte 8, -5, $D8, $03
    .byte 3, -16, $CA, $03
    .byte -5, -16, $98, $03
    .byte -13, -16, $88, $03
    .byte 3, 0, $80, $03
    .byte -13, 0, $A2, $03
    L_33873E:
    .byte $06
    .byte -12, -17, $CA, $43
    .byte -4, -17, $98, $43
    .byte 4, -17, $88, $43
    .byte -12, -1, $A8, $43
    .byte -4, -1, $B4, $43
    .byte 4, -1, $A4, $43
    L_338757:
    .byte $06
    .byte 4, -17, $CA, $03
    .byte -4, -17, $98, $03
    .byte -12, -17, $88, $03
    .byte 4, -1, $A8, $03
    .byte -4, -1, $B4, $03
    .byte -12, -1, $A4, $03
    L_338770:
    .byte $0A
    .byte 8, -2, $B6, $83
    .byte 0, -2, $A6, $83
    .byte 4, 6, $08, $40
    .byte 12, 6, $1E, $00
    .byte 20, 6, $2E, $00
    .byte 20, -10, $2C, $00
    .byte 4, -10, $0C, $00
    .byte 12, -10, $1C, $00
    .byte -16, -2, $B0, $43
    .byte -8, -2, $82, $43
    L_338799:
    .byte $0A
    .byte -16, -2, $B6, $C3
    .byte -8, -2, $A6, $C3
    .byte -12, 6, $08, $00
    .byte -20, 6, $1E, $40
    .byte -28, 6, $2E, $40
    .byte -28, -10, $2C, $40
    .byte -12, -10, $0C, $40
    .byte -20, -10, $1C, $40
    .byte 8, -2, $B0, $03
    .byte 0, -2, $82, $03
    L_3387C2:
    .byte $0C
    .byte -4, -2, $DC, $43
    .byte -2, -11, $0C, $00
    .byte 6, -11, $1C, $00
    .byte 14, -11, $2C, $00
    .byte 14, 5, $2E, $00
    .byte -2, 5, $08, $40
    .byte 6, 5, $1E, $00
    .byte -12, -18, $CA, $43
    .byte -4, -18, $98, $43
    .byte 4, -18, $88, $43
    .byte 4, -2, $8A, $43
    .byte -12, -2, $CC, $43
    L_3387F3:
    .byte $0C
    .byte -4, -2, $DC, $03
    .byte -6, -11, $0C, $40
    .byte -14, -11, $1C, $40
    .byte -22, -11, $2C, $40
    .byte -22, 5, $2E, $40
    .byte -6, 5, $08, $00
    .byte -14, 5, $1E, $40
    .byte 4, -18, $CA, $03
    .byte -4, -18, $98, $03
    .byte -12, -18, $88, $03
    .byte -12, -2, $8A, $03
    .byte 4, -2, $CC, $03
    L_338824:
    .byte $0B
    .byte -13, -18, $C6, $43
    .byte -12, -10, $08, $40
    .byte -12, -26, $0C, $00
    .byte -4, -26, $1C, $00
    .byte 4, -26, $2C, $00
    .byte -4, -10, $1E, $00
    .byte 4, -10, $2E, $00
    .byte -21, -2, $D8, $43
    .byte -13, -2, $C8, $43
    .byte -5, -2, $96, $43
    .byte 3, -2, $86, $43
    L_338851:
    .byte $0B
    .byte 5, -18, $C6, $03
    .byte 4, -10, $08, $00
    .byte 4, -26, $0C, $40
    .byte -4, -26, $1C, $40
    .byte -12, -26, $2C, $40
    .byte -4, -10, $1E, $40
    .byte -12, -10, $2E, $40
    .byte 13, -2, $D8, $03
    .byte 5, -2, $C8, $03
    .byte -3, -2, $96, $03
    .byte -11, -2, $86, $03
    L_33887E:
    .byte $0C
    .byte -13, -18, $C6, $43
    .byte -23, -14, $08, $40
    .byte -23, -30, $0C, $00
    .byte -15, -30, $1C, $00
    .byte -7, -30, $2C, $00
    .byte -7, -14, $2E, $00
    .byte -6, -18, $B2, $43
    .byte -15, -14, $1E, $00
    .byte -21, -2, $D8, $43
    .byte -13, -2, $C8, $43
    .byte -5, -2, $96, $43
    .byte 3, -2, $86, $43
    L_3388AF:
    .byte $0C
    .byte 5, -18, $C6, $03
    .byte 15, -14, $08, $00
    .byte 15, -30, $0C, $40
    .byte 7, -30, $1C, $40
    .byte -1, -30, $2C, $40
    .byte -1, -14, $2E, $40
    .byte -2, -18, $B2, $03
    .byte 7, -14, $1E, $40
    .byte 13, -2, $D8, $03
    .byte 5, -2, $C8, $03
    .byte -3, -2, $96, $03
    .byte -11, -2, $86, $03
    L_3388E0:
    .byte $0B
    .byte -19, -4, $A6, $43
    .byte -13, -2, $C8, $43
    .byte -8, -26, $08, $80
    .byte -8, -10, $0C, $C0
    .byte -16, -26, $1E, $C0
    .byte -24, -26, $2E, $C0
    .byte -27, -4, $B6, $43
    .byte -16, -10, $1C, $C0
    .byte -24, -10, $2C, $C0
    .byte -5, -2, $96, $43
    .byte 3, -2, $86, $43
    L_33890D:
    .byte $0B
    .byte 11, -4, $A6, $03
    .byte 5, -2, $C8, $03
    .byte 0, -26, $08, $C0
    .byte 0, -10, $0C, $80
    .byte 8, -26, $1E, $80
    .byte 16, -26, $2E, $80
    .byte 19, -4, $B6, $03
    .byte 8, -10, $1C, $80
    .byte 16, -10, $2C, $80
    .byte -3, -2, $96, $03
    .byte -11, -2, $86, $03
    L_33893A:
    .byte $0A
    .byte -19, -1, $A6, $43
    .byte -13, -2, $C8, $43
    .byte -10, -18, $08, $80
    .byte -18, -18, $1E, $C0
    .byte -26, -18, $2E, $C0
    .byte -27, -1, $B6, $43
    .byte -18, -2, $1C, $C0
    .byte -26, -2, $2C, $C0
    .byte -5, -2, $96, $43
    .byte 3, -2, $86, $43
    L_338963:
    .byte $0A
    .byte 11, -1, $A6, $03
    .byte 5, -2, $C8, $03
    .byte 2, -18, $08, $C0
    .byte 10, -18, $1E, $80
    .byte 18, -18, $2E, $80
    .byte 19, -1, $B6, $03
    .byte 10, -2, $1C, $80
    .byte 18, -2, $2C, $80
    .byte -3, -2, $96, $03
    .byte -11, -2, $86, $03
    L_33898C:
    .byte $0C
    .byte -3, 0, $DC, $43
    .byte -2, 6, $0C, $80
    .byte 6, 6, $1C, $80
    .byte 14, 6, $2C, $80
    .byte 14, -10, $2E, $80
    .byte -2, -10, $08, $C0
    .byte 6, -10, $1E, $80
    .byte -16, -5, $D8, $43
    .byte -11, -16, $CA, $43
    .byte -3, -16, $98, $43
    .byte 5, -16, $88, $43
    .byte -11, 0, $80, $43
    L_3389BD:
    .byte $0C
    .byte -5, 0, $DC, $03
    .byte -6, 6, $0C, $C0
    .byte -14, 6, $1C, $C0
    .byte -22, 6, $2C, $C0
    .byte -22, -10, $2E, $C0
    .byte -6, -10, $08, $80
    .byte -14, -10, $1E, $C0
    .byte 8, -5, $D8, $03
    .byte 3, -16, $CA, $03
    .byte -5, -16, $98, $03
    .byte -13, -16, $88, $03
    .byte 3, 0, $80, $03
    L_3389EE:
    .byte $05
    .byte -27, 1, $B6, $43
    .byte -19, 1, $A6, $43
    .byte -13, 0, $C8, $43
    .byte -5, 0, $96, $43
    .byte 3, 0, $86, $43
    L_338A03:
    .byte $05
    .byte 19, 1, $B6, $03
    .byte 11, 1, $A6, $03
    .byte 5, 0, $C8, $03
    .byte -3, 0, $96, $03
    .byte -11, 0, $86, $03
    L_338A18:
    .byte $07
    .byte -27, -1, $B6, $43
    .byte -19, -1, $A6, $43
    .byte -18, -1, $2A, $C1
    .byte -26, -2, $2C, $C1
    .byte -13, -2, $C8, $43
    .byte -5, -2, $96, $43
    .byte 3, -2, $86, $43
    L_338A35:
    .byte $07
    .byte 19, -1, $B6, $03
    .byte 11, -1, $A6, $03
    .byte 10, -1, $2A, $81
    .byte 18, -2, $2C, $81
    .byte 5, -2, $C8, $03
    .byte -3, -2, $96, $03
    .byte -11, -2, $86, $03
    L_338A52:
    .byte $09
    .byte -3, 0, $DC, $43
    .byte -2, 2, $4E, $81
    .byte 6, 2, $5E, $81
    .byte -16, -5, $D8, $43
    .byte -11, -16, $CA, $43
    .byte -3, -16, $98, $43
    .byte 5, -16, $88, $43
    .byte -11, 0, $80, $43
    .byte 5, 0, $A2, $43
    L_338A77:
    .byte $09
    .byte -5, 0, $DC, $03
    .byte -6, 2, $4E, $C1
    .byte -14, 2, $5E, $C1
    .byte 8, -5, $D8, $03
    .byte 3, -16, $CA, $03
    .byte -5, -16, $98, $03
    .byte -13, -16, $88, $03
    .byte 3, 0, $80, $03
    .byte -13, 0, $A2, $03
    L_338A9C:
    .byte $0A
    .byte -19, -1, $A6, $43
    .byte -13, -2, $C8, $43
    .byte -10, -18, $08, $81
    .byte -18, -18, $1E, $C1
    .byte -26, -18, $2E, $C1
    .byte -27, -1, $B6, $43
    .byte -18, -2, $1C, $C1
    .byte -26, -2, $2C, $C1
    .byte -5, -2, $96, $43
    .byte 3, -2, $86, $43
    L_338AC5:
    .byte $0A
    .byte 11, -1, $A6, $03
    .byte 5, -2, $C8, $03
    .byte 2, -18, $08, $C1
    .byte 10, -18, $1E, $81
    .byte 18, -18, $2E, $81
    .byte 19, -1, $B6, $03
    .byte 10, -2, $1C, $81
    .byte 18, -2, $2C, $81
    .byte -3, -2, $96, $03
    .byte -11, -2, $86, $03
    L_338AEE:
    .byte $0C
    .byte -3, 0, $DC, $43
    .byte -2, 6, $0C, $81
    .byte 6, 6, $1C, $81
    .byte 14, 6, $2C, $81
    .byte 14, -10, $2E, $81
    .byte -2, -10, $08, $C1
    .byte 6, -10, $1E, $81
    .byte -16, -5, $D8, $43
    .byte -11, -16, $CA, $43
    .byte -3, -16, $98, $43
    .byte 5, -16, $88, $43
    .byte -11, 0, $80, $43
    L_338B1F:
    .byte $0C
    .byte -5, 0, $DC, $03
    .byte -6, 6, $0C, $C1
    .byte -14, 6, $1C, $C1
    .byte -22, 6, $2C, $C1
    .byte -22, -10, $2E, $C1
    .byte -6, -10, $08, $81
    .byte -14, -10, $1E, $C1
    .byte 8, -5, $D8, $03
    .byte 3, -16, $CA, $03
    .byte -5, -16, $98, $03
    .byte -13, -16, $88, $03
    .byte 3, 0, $80, $03

L_338B50:
    .addr L_338C28
    .addr L_338C41
    .addr L_338C5A
    .addr L_338C73
    .addr L_338C8C
    .addr L_338CA5
    .addr L_338C5A
    .addr L_338C73
    .addr L_338CBE
    .addr L_338CD7
    .addr L_33954F
    .addr L_33954F
    .addr L_338CF0
    .addr L_338D09
    .addr L_338E4E
    .addr L_338E67
    .addr L_338E1C
    .addr L_338E35
    .addr L_338DEA
    .addr L_338E03
    .addr L_338DB8
    .addr L_338DD1
    .addr L_338D86
    .addr L_338D9F
    .addr L_338D54
    .addr L_338D3B
    .addr L_338D22
    .addr L_338D6D
    .addr L_338F04
    .addr L_338F21
    .addr L_3390A2
    .addr L_3390BF
    .addr L_339068
    .addr L_339085
    .addr L_33902E
    .addr L_33904B
    .addr L_338FF4
    .addr L_339011
    .addr L_338FB2
    .addr L_338FD3
    .addr L_338F78
    .addr L_338F95
    .addr L_338F3E
    .addr L_338F5B
    .addr L_338D86
    .addr L_338D9F
    .addr L_338D54
    .addr L_338D6D
    .addr L_338D86
    .addr L_338D9F
    .addr L_338DB8
    .addr L_338DD1
    .addr L_338E80
    .addr L_338EA1
    .addr L_338EC2
    .addr L_338EE3
    .addr L_3392CC
    .addr L_3392FD
    .addr L_33932E
    .addr L_33935B
    .addr L_33923F
    .addr L_33925C
    .addr L_339279
    .addr L_339292
    .addr L_3392AF
    .addr L_3391D4
    .addr L_3391F9
    .addr L_33921A
    .addr L_3394BB
    .addr L_3394E4
    .addr L_339279
    .addr L_339505
    .addr L_339526
    .addr L_339430
    .addr L_339465
    .addr L_339486
    .addr L_339116
    .addr L_339137
    .addr L_339158
    .addr L_339179
    .addr L_3391B7
    .addr L_33919A
    .addr L_338F3E
    .addr L_338F5B
    .addr L_338F78
    .addr L_338F95
    .addr L_338FB2
    .addr L_338FD3
    .addr L_338FF4
    .addr L_339011
    .addr L_33902E
    .addr L_33904B
    .addr L_339068
    .addr L_339085
    .addr L_3390A2
    .addr L_3390BF
    .addr L_338F04
    .addr L_338F21
    .addr L_3390DC
    .addr L_3390F9
    .addr L_33938C
    .addr L_3393B9
    .addr L_3393E6
    .addr L_33940B
    .addr L_33955C
    .addr L_3395A6
    .addr L_3395F0
    .addr L_3391B7

    L_338C28:
    .byte $06
    .byte -12, -18, $F6, $43
    .byte -4, -18, $E6, $43
    .byte 4, -18, $F0, $43
    .byte -12, -2, $F8, $43
    .byte -4, -2, $E8, $43
    .byte 4, -2, $F2, $43
    L_338C41:
    .byte $06
    .byte 4, -18, $F6, $03
    .byte -4, -18, $E6, $03
    .byte -12, -18, $F0, $03
    .byte 4, -2, $F8, $03
    .byte -4, -2, $E8, $03
    .byte -12, -2, $F2, $03
    L_338C5A:
    .byte $06
    .byte -12, -18, $F6, $43
    .byte -4, -18, $E6, $43
    .byte 4, -18, $F0, $43
    .byte -12, -2, $9E, $43
    .byte -4, -2, $EE, $43
    .byte 4, -2, $9C, $43
    L_338C73:
    .byte $06
    .byte 4, -18, $F6, $03
    .byte -4, -18, $E6, $03
    .byte -12, -18, $F0, $03
    .byte 4, -2, $9E, $03
    .byte -4, -2, $EE, $03
    .byte -12, -2, $9C, $03
    L_338C8C:
    .byte $06
    .byte -12, -18, $F6, $43
    .byte -4, -18, $E6, $43
    .byte 4, -18, $F0, $43
    .byte -12, -2, $F8, $43
    .byte -4, -2, $EE, $43
    .byte 4, -2, $9C, $43
    L_338CA5:
    .byte $06
    .byte 4, -18, $F6, $03
    .byte -4, -18, $E6, $03
    .byte -12, -18, $F0, $03
    .byte 4, -2, $F8, $03
    .byte -4, -2, $EE, $03
    .byte -12, -2, $9C, $03
    L_338CBE:
    .byte $06
    .byte -12, -18, $F6, $43
    .byte -4, -18, $E6, $43
    .byte 4, -18, $F0, $43
    .byte -12, -2, $9E, $43
    .byte -4, -2, $E8, $43
    .byte 4, -2, $F2, $43
    L_338CD7:
    .byte $06
    .byte 4, -18, $F6, $03
    .byte -4, -18, $E6, $03
    .byte -12, -18, $F0, $03
    .byte 4, -2, $9E, $03
    .byte -4, -2, $E8, $03
    .byte -12, -2, $F2, $03
    L_338CF0:
    .byte $06
    .byte 4, -2, $98, $43
    .byte -12, -2, $FE, $43
    .byte -4, -2, $B8, $43
    .byte -12, -18, $DE, $43
    .byte 4, -18, $DE, $03
    .byte -4, -18, $CE, $43
    L_338D09:
    .byte $06
    .byte -12, -2, $98, $03
    .byte 4, -2, $FE, $03
    .byte -4, -2, $B8, $03
    .byte 4, -18, $DE, $03
    .byte -12, -18, $DE, $43
    .byte -4, -18, $CE, $03
    L_338D22:
    .byte $06
    .byte 4, -18, $E0, $43
    .byte 4, -2, $E2, $43
    .byte -12, -14, $FC, $43
    .byte -4, -14, $EC, $43
    .byte -12, 2, $FC, $C3
    .byte -4, 2, $EC, $C3
    L_338D3B:
    .byte $06
    .byte -12, -18, $E0, $03
    .byte -12, -2, $E2, $03
    .byte 4, -14, $FC, $03
    .byte -4, -14, $EC, $03
    .byte 4, 2, $FC, $83
    .byte -4, 2, $EC, $83
    L_338D54:
    .byte $06
    .byte 4, -10, $88, $C3
    .byte -12, -10, $FE, $C3
    .byte -4, -10, $9A, $C3
    .byte -12, 6, $DE, $C3
    .byte 4, 6, $DE, $83
    .byte -4, 6, $CE, $C3
    L_338D6D:
    .byte $06
    .byte -12, -10, $88, $83
    .byte 4, -10, $FE, $83
    .byte -4, -10, $9A, $83
    .byte 4, 6, $DE, $83
    .byte -12, 6, $DE, $C3
    .byte -4, 6, $CE, $83
    L_338D86:
    .byte $06
    .byte 4, -18, $86, $43
    .byte -4, -18, $E4, $43
    .byte -12, -18, $F4, $43
    .byte -12, -2, $FA, $C3
    .byte -4, -2, $EA, $C3
    .byte 4, -2, $FA, $83
    L_338D9F:
    .byte $06
    .byte -12, -18, $86, $03
    .byte -4, -18, $E4, $03
    .byte 4, -18, $F4, $03
    .byte 4, -2, $FA, $83
    .byte -4, -2, $EA, $83
    .byte -12, -2, $FA, $C3
    L_338DB8:
    .byte $06
    .byte -12, -10, $98, $83
    .byte 4, -10, $FE, $83
    .byte -4, -10, $B8, $83
    .byte 4, 6, $DE, $83
    .byte -12, 6, $DE, $C3
    .byte -4, 6, $CE, $83
    L_338DD1:
    .byte $06
    .byte 4, -10, $98, $C3
    .byte -12, -10, $FE, $C3
    .byte -4, -10, $B8, $C3
    .byte -12, 6, $DE, $C3
    .byte 4, 6, $DE, $83
    .byte -4, 6, $CE, $C3
    L_338DEA:
    .byte $06
    .byte -12, 6, $E0, $83
    .byte -12, -10, $E2, $83
    .byte 4, -14, $FC, $03
    .byte -4, -14, $EC, $03
    .byte 4, 2, $FC, $83
    .byte -4, 2, $EC, $83
    L_338E03:
    .byte $06
    .byte 4, 6, $E0, $C3
    .byte 4, -10, $E2, $C3
    .byte -12, -14, $FC, $43
    .byte -4, -14, $EC, $43
    .byte -12, 2, $FC, $C3
    .byte -4, 2, $EC, $C3
    L_338E1C:
    .byte $06
    .byte -12, -2, $88, $03
    .byte 4, -2, $FE, $03
    .byte -4, -2, $9A, $03
    .byte 4, -18, $DE, $03
    .byte -12, -18, $DE, $43
    .byte -4, -18, $CE, $03
    L_338E35:
    .byte $06
    .byte 4, -2, $88, $43
    .byte -12, -2, $FE, $43
    .byte -4, -2, $9A, $43
    .byte -12, -18, $DE, $43
    .byte 4, -18, $DE, $03
    .byte -4, -18, $CE, $43
    L_338E4E:
    .byte $06
    .byte -12, 6, $86, $83
    .byte -4, 6, $E4, $83
    .byte 4, 6, $F4, $83
    .byte 4, -10, $FA, $03
    .byte -12, -10, $FA, $43
    .byte -4, -10, $EA, $43
    L_338E67:
    .byte $06
    .byte 4, 6, $86, $C3
    .byte -4, 6, $E4, $C3
    .byte -12, 6, $F4, $C3
    .byte -12, -10, $FA, $43
    .byte 4, -10, $FA, $03
    .byte -4, -10, $EA, $03
    L_338E80:
    .byte $08
    .byte -2, -3, $96, $83
    .byte 8, -3, $10, $01
    .byte 0, -3, $00, $01
    .byte -11, -18, $F6, $43
    .byte -3, -18, $E6, $43
    .byte 5, -18, $F0, $43
    .byte -12, -2, $F8, $43
    .byte -4, -2, $E8, $43
    L_338EA1:
    .byte $08
    .byte -6, -3, $96, $C3
    .byte -16, -3, $10, $41
    .byte -8, -3, $00, $41
    .byte 3, -18, $F6, $03
    .byte -5, -18, $E6, $03
    .byte -13, -18, $F0, $03
    .byte 4, -2, $F8, $03
    .byte -4, -2, $E8, $03
    L_338EC2:
    .byte $08
    .byte -4, -2, $8C, $43
    .byte 4, -3, $10, $00
    .byte -4, -3, $00, $00
    .byte -12, -18, $F6, $43
    .byte -4, -18, $E6, $43
    .byte 4, -18, $F0, $43
    .byte -12, -2, $F8, $43
    .byte 4, -2, $F2, $43
    L_338EE3:
    .byte $08
    .byte -4, -2, $8C, $03
    .byte -12, -3, $10, $40
    .byte -4, -3, $00, $40
    .byte 4, -18, $F6, $03
    .byte -4, -18, $E6, $03
    .byte -12, -18, $F0, $03
    .byte 4, -2, $F8, $03
    .byte -12, -2, $F2, $03
    L_338F04:
    .byte $07
    .byte -4, -2, $B8, $43
    .byte 4, -2, $98, $43
    .byte 6, -1, $46, $80
    .byte -12, -2, $FE, $43
    .byte -12, -18, $DE, $43
    .byte 4, -18, $DE, $03
    .byte -4, -18, $CE, $43
    L_338F21:
    .byte $07
    .byte -4, -2, $B8, $03
    .byte -12, -2, $98, $03
    .byte -14, -1, $46, $C0
    .byte 4, -2, $FE, $03
    .byte 4, -18, $DE, $03
    .byte -12, -18, $DE, $43
    .byte -4, -18, $CE, $03
    L_338F3E:
    .byte $07
    .byte 4, -2, $E2, $43
    .byte 4, -18, $E0, $43
    .byte 7, -6, $46, $00
    .byte -12, -14, $FC, $43
    .byte -4, -14, $EC, $43
    .byte -12, 2, $FC, $C3
    .byte -4, 2, $EC, $C3
    L_338F5B:
    .byte $07
    .byte -12, -2, $E2, $03
    .byte -12, -18, $E0, $03
    .byte -15, -6, $46, $40
    .byte 4, -14, $FC, $03
    .byte -4, -14, $EC, $03
    .byte 4, 2, $FC, $83
    .byte -4, 2, $EC, $83
    L_338F78:
    .byte $07
    .byte 4, -10, $88, $C3
    .byte -4, -10, $9A, $C3
    .byte 5, -12, $46, $00
    .byte -12, -10, $FE, $C3
    .byte -12, 6, $DE, $C3
    .byte 4, 6, $DE, $83
    .byte -4, 6, $CE, $C3
    L_338F95:
    .byte $07
    .byte -12, -10, $88, $83
    .byte -4, -10, $9A, $83
    .byte -13, -12, $46, $40
    .byte 4, -10, $FE, $83
    .byte 4, 6, $DE, $83
    .byte -12, 6, $DE, $C3
    .byte -4, 6, $CE, $83
    L_338FB2:
    .byte $08
    .byte 4, -18, $86, $43
    .byte -12, -18, $F4, $43
    .byte -4, -18, $E4, $43
    .byte 4, -2, $FA, $83
    .byte -4, -2, $EA, $43
    .byte 0, -13, $46, $80
    .byte -7, -13, $46, $C0
    .byte -12, -2, $FA, $C3
    L_338FD3:
    .byte $08
    .byte -12, -18, $86, $03
    .byte 4, -18, $F4, $03
    .byte -4, -18, $E4, $03
    .byte -12, -2, $FA, $C3
    .byte -4, -2, $EA, $03
    .byte -8, -13, $46, $C0
    .byte -1, -13, $46, $80
    .byte 4, -2, $FA, $83
    L_338FF4:
    .byte $07
    .byte -4, -10, $B8, $83
    .byte -12, -10, $98, $83
    .byte -14, -11, $46, $40
    .byte 4, -10, $FE, $83
    .byte 4, 6, $DE, $83
    .byte -12, 6, $DE, $C3
    .byte -4, 6, $CE, $83
    L_339011:
    .byte $07
    .byte -4, -10, $B8, $C3
    .byte 4, -10, $98, $C3
    .byte 6, -11, $46, $00
    .byte -12, -10, $FE, $C3
    .byte -12, 6, $DE, $C3
    .byte 4, 6, $DE, $83
    .byte -4, 6, $CE, $C3
    L_33902E:
    .byte $07
    .byte -12, -10, $E2, $83
    .byte -12, 6, $E0, $83
    .byte -15, -6, $46, $C0
    .byte 4, 2, $FC, $83
    .byte -4, 2, $EC, $83
    .byte 4, -14, $FC, $03
    .byte -4, -14, $EC, $03
    L_33904B:
    .byte $07
    .byte 4, -10, $E2, $C3
    .byte 4, 6, $E0, $C3
    .byte 7, -6, $46, $80
    .byte -12, 2, $FC, $C3
    .byte -4, 2, $EC, $C3
    .byte -12, -14, $FC, $43
    .byte -4, -14, $EC, $43
    L_339068:
    .byte $07
    .byte -12, -2, $88, $03
    .byte -4, -2, $9A, $03
    .byte -13, 0, $46, $C0
    .byte 4, -2, $FE, $03
    .byte 4, -18, $DE, $03
    .byte -12, -18, $DE, $43
    .byte -4, -18, $CE, $03
    L_339085:
    .byte $07
    .byte 4, -2, $88, $43
    .byte -4, -2, $9A, $43
    .byte 5, 0, $46, $80
    .byte -12, -2, $FE, $43
    .byte -12, -18, $DE, $43
    .byte 4, -18, $DE, $03
    .byte -4, -18, $CE, $43
    L_3390A2:
    .byte $07
    .byte -12, 6, $86, $83
    .byte 4, 6, $F4, $83
    .byte -4, 6, $E4, $83
    .byte -12, -10, $FA, $43
    .byte -4, -10, $EA, $83
    .byte -7, 0, $46, $40
    .byte 4, -10, $FA, $03
    L_3390BF:
    .byte $07
    .byte 4, 6, $86, $C3
    .byte -12, 6, $F4, $C3
    .byte -4, 6, $E4, $C3
    .byte 4, -10, $FA, $03
    .byte -4, -10, $EA, $C3
    .byte -1, 0, $46, $00
    .byte -12, -10, $FA, $43
    L_3390DC:
    .byte $07
    .byte -20, -10, $96, $43
    .byte -12, -10, $8A, $43
    .byte 4, -10, $FE, $83
    .byte -4, -10, $B8, $83
    .byte 4, 6, $DE, $83
    .byte -12, 6, $DE, $C3
    .byte -4, 6, $CE, $83
    L_3390F9:
    .byte $07
    .byte 12, -10, $96, $03
    .byte 4, -10, $8A, $03
    .byte -12, -10, $FE, $C3
    .byte -4, -10, $B8, $C3
    .byte -12, 6, $DE, $C3
    .byte 4, 6, $DE, $83
    .byte -4, 6, $CE, $C3
    L_339116:
    .byte $08
    .byte -4, -3, $8C, $43
    .byte -4, -3, $00, $00
    .byte 4, -3, $10, $00
    .byte -12, -18, $F6, $43
    .byte -4, -18, $E6, $43
    .byte 4, -18, $F0, $43
    .byte -12, -2, $9E, $43
    .byte 4, -2, $9C, $43
    L_339137:
    .byte $08
    .byte -4, -3, $8C, $03
    .byte -4, -3, $00, $40
    .byte -12, -3, $10, $40
    .byte 4, -18, $F6, $03
    .byte -4, -18, $E6, $03
    .byte -12, -18, $F0, $03
    .byte 4, -2, $9E, $03
    .byte -12, -2, $9C, $03
    L_339158:
    .byte $08
    .byte 4, 6, $F4, $83
    .byte -4, 6, $E4, $83
    .byte 4, -10, $FA, $03
    .byte -4, -10, $EA, $43
    .byte 1, 5, $2A, $C0
    .byte -12, 6, $86, $83
    .byte -12, -10, $FA, $43
    .byte -7, 5, $62, $C0
    L_339179:
    .byte $08
    .byte -12, 6, $F4, $C3
    .byte -4, 6, $E4, $C3
    .byte -12, -10, $FA, $43
    .byte -4, -10, $EA, $03
    .byte -9, 5, $2A, $80
    .byte 4, 6, $86, $C3
    .byte 4, -10, $FA, $03
    .byte -1, 5, $62, $80
    L_33919A:
    .byte $07
    .byte -20, -2, $96, $C3
    .byte -12, -2, $8A, $C3
    .byte 4, -2, $FE, $03
    .byte -4, -2, $B8, $03
    .byte 4, -18, $DE, $03
    .byte -12, -18, $DE, $43
    .byte -4, -18, $CE, $03
    L_3391B7:
    .byte $07
    .byte 12, -2, $96, $83
    .byte 4, -2, $8A, $83
    .byte -12, -2, $FE, $43
    .byte -4, -2, $B8, $43
    .byte -12, -18, $DE, $43
    .byte 4, -18, $DE, $03
    .byte -4, -18, $CE, $43
    L_3391D4:
    .byte $09
    .byte -2, -5, $96, $C3
    .byte -3, -6, $08, $40
    .byte -11, -6, $18, $40
    .byte -11, -18, $E0, $03
    .byte -11, -2, $E2, $03
    .byte 5, -14, $FC, $03
    .byte -3, -14, $EC, $03
    .byte 5, 2, $FC, $83
    .byte -3, 2, $EC, $83
    L_3391F9:
    .byte $08
    .byte -12, 2, $8E, $C3
    .byte -12, -14, $8E, $43
    .byte 4, 2, $8E, $83
    .byte 4, -14, $8E, $03
    .byte 0, -6, $3E, $00
    .byte -8, -6, $3C, $00
    .byte -4, -14, $EC, $03
    .byte -4, 2, $EC, $83
    L_33921A:
    .byte $09
    .byte -6, -5, $96, $83
    .byte -5, -6, $08, $00
    .byte 3, -6, $18, $00
    .byte 3, -18, $E0, $43
    .byte 3, -2, $E2, $43
    .byte -13, -14, $FC, $43
    .byte -5, -14, $EC, $43
    .byte -13, 2, $FC, $C3
    .byte -5, 2, $EC, $C3
    L_33923F:
    .byte $07
    .byte 2, -2, $E2, $43
    .byte 2, -18, $E0, $43
    .byte 10, -6, $14, $00
    .byte -14, -14, $FC, $43
    .byte -6, -14, $EC, $43
    .byte -14, 2, $FC, $C3
    .byte -6, 2, $EC, $C3
    L_33925C:
    .byte $07
    .byte -5, 2, $EC, $C3
    .byte -5, -14, $EC, $43
    .byte 0, 2, $FC, $83
    .byte 0, -14, $FC, $03
    .byte 6, -6, $32, $40
    .byte -13, -14, $FC, $43
    .byte -13, 2, $FC, $C3
    L_339279:
    .byte $06
    .byte -12, -14, $FC, $43
    .byte -12, 2, $FC, $C3
    .byte 4, 2, $FC, $83
    .byte 4, -14, $FC, $03
    .byte -4, -14, $EC, $03
    .byte -4, 2, $EC, $C3
    L_339292:
    .byte $07
    .byte -3, 2, $EC, $83
    .byte -3, -14, $EC, $03
    .byte -8, 2, $FC, $C3
    .byte -8, -14, $FC, $43
    .byte -14, -6, $32, $00
    .byte 5, -14, $FC, $03
    .byte 5, 2, $FC, $83
    L_3392AF:
    .byte $07
    .byte -10, -2, $E2, $03
    .byte -10, -18, $E0, $03
    .byte -18, -6, $14, $40
    .byte 6, -14, $FC, $03
    .byte -2, -14, $EC, $03
    .byte 6, 2, $FC, $83
    .byte -2, 2, $EC, $83
    L_3392CC:
    .byte $0C
    .byte -2, -3, $96, $83
    .byte -2, -9, $0C, $01
    .byte 6, -9, $1C, $01
    .byte 14, -9, $2C, $01
    .byte 14, 7, $2E, $01
    .byte 6, 7, $1E, $01
    .byte -2, 7, $08, $41
    .byte -11, -18, $F6, $43
    .byte -3, -18, $E6, $43
    .byte 5, -18, $F0, $43
    .byte -12, -2, $F8, $43
    .byte -4, -2, $E8, $43
    L_3392FD:
    .byte $0C
    .byte -6, -3, $96, $C3
    .byte -6, -9, $0C, $41
    .byte -14, -9, $1C, $41
    .byte -22, -9, $2C, $41
    .byte -22, 7, $2E, $41
    .byte -14, 7, $1E, $41
    .byte -6, 7, $08, $01
    .byte 3, -18, $F6, $03
    .byte -5, -18, $E6, $03
    .byte -13, -18, $F0, $03
    .byte 4, -2, $F8, $03
    .byte -4, -2, $E8, $03
    L_33932E:
    .byte $0B
    .byte -4, -2, $8C, $43
    .byte -4, -10, $0C, $00
    .byte 4, -10, $1C, $00
    .byte 12, -10, $2C, $00
    .byte 12, 6, $2E, $00
    .byte 4, 6, $1E, $00
    .byte -4, 6, $08, $40
    .byte -12, -18, $F6, $43
    .byte -4, -18, $E6, $43
    .byte 4, -18, $F0, $43
    .byte -12, -2, $F8, $43
    L_33935B:
    .byte $0C
    .byte -4, -2, $8C, $03
    .byte -4, -10, $0C, $40
    .byte -12, -10, $1C, $40
    .byte -20, -10, $2C, $40
    .byte -20, 6, $2E, $40
    .byte -12, 6, $1E, $40
    .byte -4, 6, $08, $00
    .byte 4, -18, $F6, $03
    .byte -4, -18, $E6, $03
    .byte -12, -18, $F0, $03
    .byte 4, -2, $F8, $03
    .byte -12, -2, $F2, $03
    L_33938C:
    .byte $0B
    .byte -4, -2, $8C, $43
    .byte -4, -10, $0C, $00
    .byte 4, -10, $1C, $00
    .byte 12, -10, $2C, $00
    .byte 12, 6, $2E, $00
    .byte 4, 6, $1E, $00
    .byte -4, 6, $08, $40
    .byte -12, -18, $F6, $43
    .byte -4, -18, $E6, $43
    .byte 4, -18, $F0, $43
    .byte -12, -2, $9E, $43
    L_3393B9:
    .byte $0B
    .byte -4, -2, $8C, $03
    .byte -4, -10, $0C, $40
    .byte -12, -10, $1C, $40
    .byte -20, -10, $2C, $40
    .byte -20, 6, $2E, $40
    .byte -12, 6, $1E, $40
    .byte -4, 6, $08, $00
    .byte 4, -18, $F6, $03
    .byte -4, -18, $E6, $03
    .byte -12, -18, $F0, $03
    .byte 4, -2, $9E, $03
    L_3393E6:
    .byte $09
    .byte 4, 6, $F4, $83
    .byte 4, -10, $FA, $03
    .byte 4, 6, $2C, $80
    .byte -4, 6, $E4, $83
    .byte -4, -10, $EA, $43
    .byte -4, 6, $1C, $80
    .byte -12, 6, $86, $83
    .byte -12, -10, $FA, $43
    .byte -12, 6, $0C, $80
    L_33940B:
    .byte $09
    .byte -12, 6, $F4, $C3
    .byte -12, -10, $FA, $43
    .byte -12, 6, $2C, $C0
    .byte -4, 6, $E4, $C3
    .byte -4, -10, $EA, $03
    .byte -4, 6, $1C, $C0
    .byte 4, 6, $86, $C3
    .byte 4, -10, $FA, $03
    .byte 4, 6, $0C, $C0
    L_339430:
    .byte $0D
    .byte -3, 6, $08, $00
    .byte -11, 6, $1E, $40
    .byte -19, 6, $2E, $40
    .byte -19, -10, $2C, $40
    .byte -2, -5, $96, $C3
    .byte -3, -10, $0C, $40
    .byte -11, -10, $1C, $40
    .byte -11, -18, $E0, $03
    .byte -11, -2, $E2, $03
    .byte 5, -14, $FC, $03
    .byte -3, -14, $EC, $03
    .byte 5, 2, $FC, $83
    .byte -3, 2, $EC, $83
    L_339465:
    .byte $08
    .byte -12, -14, $8E, $43
    .byte 4, -14, $8E, $03
    .byte 4, 7, $08, $00
    .byte 4, -9, $2C, $00
    .byte -12, -10, $0C, $00
    .byte -4, 6, $1E, $00
    .byte -12, 2, $8E, $C3
    .byte -4, -10, $1C, $00
    L_339486:
    .byte $0D
    .byte -5, 6, $08, $40
    .byte 3, 6, $1E, $00
    .byte 11, 6, $2E, $00
    .byte 11, -10, $2C, $00
    .byte -6, -5, $96, $83
    .byte -5, -10, $0C, $00
    .byte 3, -10, $1C, $00
    .byte 3, -18, $E0, $43
    .byte 3, -2, $E2, $43
    .byte -13, -14, $FC, $43
    .byte -5, -14, $EC, $43
    .byte -13, 2, $FC, $C3
    .byte -5, 2, $EC, $C3
    L_3394BB:
    .byte $0A
    .byte 2, -2, $E2, $43
    .byte 4, 6, $16, $00
    .byte 2, -18, $E0, $43
    .byte 4, -10, $14, $00
    .byte 12, 6, $26, $00
    .byte 12, -10, $24, $00
    .byte -14, -14, $FC, $43
    .byte -6, -14, $EC, $43
    .byte -14, 2, $FC, $C3
    .byte -6, 2, $EC, $C3
    L_3394E4:
    .byte $08
    .byte 7, 6, $06, $00
    .byte -5, 2, $EC, $C3
    .byte -5, -14, $EC, $43
    .byte 0, 2, $FC, $83
    .byte 0, -14, $FC, $03
    .byte 6, -10, $00, $40
    .byte -13, -14, $FC, $43
    .byte -13, 2, $FC, $C3
    L_339505:
    .byte $08
    .byte -15, 6, $06, $40
    .byte -3, 2, $EC, $83
    .byte -3, -14, $EC, $03
    .byte -8, 2, $FC, $C3
    .byte -8, -14, $FC, $43
    .byte -14, -10, $00, $00
    .byte 5, -14, $FC, $03
    .byte 5, 2, $FC, $83
    L_339526:
    .byte $0A
    .byte -10, -2, $E2, $03
    .byte -12, 6, $16, $40
    .byte -10, -18, $E0, $03
    .byte -12, -10, $14, $40
    .byte -20, 6, $26, $40
    .byte -20, -10, $24, $40
    .byte 6, -14, $FC, $03
    .byte -2, -14, $EC, $03
    .byte 6, 2, $FC, $83
    .byte -2, 2, $EC, $83
    L_33954F:
    .byte $03
    .byte 4, -2, $FA, $03
    .byte -4, -2, $EA, $03
    .byte -12, -2, $FA, $43
    L_33955C:
    .byte $09
    .byte -18, -10, $96, $43
    .byte -12, -10, $8A, $43
    .byte -12, -10, $C6, $42
    .byte -20, -10, $D6, $42
    .byte 4, -10, $FE, $83
    .byte -4, -10, $B8, $83
    .byte 4, 6, $DE, $83
    .byte -12, 6, $DE, $C3
    .byte -4, 6, $CE, $83
    L_339581:
    .byte $09
    .byte 10, -10, $96, $03
    .byte 4, -10, $8A, $03
    .byte 4, -10, $C6, $02
    .byte 12, -10, $D6, $02
    .byte -12, -10, $FE, $C3
    .byte -4, -10, $B8, $C3
    .byte -12, 6, $DE, $C3
    .byte 4, 6, $DE, $83
    .byte -4, 6, $CE, $C3
    L_3395A6:
    .byte $09
    .byte -8, -22, $D6, $42
    .byte 0, -22, $C6, $42
    .byte 12, -2, $96, $83
    .byte 4, -2, $8A, $83
    .byte -12, -2, $FE, $43
    .byte -4, -2, $B8, $43
    .byte -12, -18, $DE, $43
    .byte 4, -18, $DE, $03
    .byte -4, -18, $CE, $43
    L_3395CB:
    .byte $09
    .byte 0, -22, $D6, $02
    .byte -8, -22, $C6, $02
    .byte -20, -2, $96, $C3
    .byte -12, -2, $8A, $C3
    .byte 4, -2, $FE, $03
    .byte -4, -2, $B8, $03
    .byte 4, -18, $DE, $03
    .byte -12, -18, $DE, $43
    .byte -4, -18, $CE, $03
    L_3395F0:
    .byte $09
    .byte 12, -2, $96, $83
    .byte 15, -11, $D6, $02
    .byte 7, -11, $C6, $02
    .byte 4, -2, $8A, $83
    .byte -12, -2, $FE, $43
    .byte -4, -2, $B8, $43
    .byte -12, -18, $DE, $43
    .byte 4, -18, $DE, $03
    .byte -4, -18, $CE, $43
    L_339615:
    .byte $09
    .byte -20, -2, $96, $C3
    .byte -23, -11, $D6, $42
    .byte -15, -11, $C6, $42
    .byte -12, -2, $8A, $C3
    .byte 4, -2, $FE, $03
    .byte -4, -2, $B8, $03
    .byte 4, -18, $DE, $03
    .byte -12, -18, $DE, $43
    .byte -4, -18, $CE, $03

L_33963A:
    .addr L_339674
    .addr L_339642
    .addr L_33968D
    .addr L_33965B

    L_339642:
    .byte $06
    .byte -12, 1, $8E, $42
    .byte -4, 1, $8C, $42
    .byte 4, 1, $96, $42
    .byte -12, -15, $94, $42
    .byte -4, -15, $92, $42
    .byte 4, -15, $90, $42
    L_33965B:
    .byte $06
    .byte -12, 1, $8E, $42
    .byte -4, 1, $8C, $42
    .byte 4, 1, $8A, $42
    .byte -12, -15, $88, $42
    .byte -4, -15, $86, $42
    .byte 4, -15, $84, $42
    L_339674:
    .byte $06
    .byte 4, 1, $8E, $02
    .byte -4, 1, $8C, $02
    .byte -12, 1, $96, $02
    .byte 4, -15, $94, $02
    .byte -4, -15, $92, $02
    .byte -12, -15, $90, $02
    L_33968D:
    .byte $06
    .byte 4, 1, $8E, $02
    .byte -4, 1, $8C, $02
    .byte -12, 1, $8A, $02
    .byte 4, -15, $88, $02
    .byte -4, -15, $86, $02
    .byte -12, -15, $84, $02

L_3396A6:
    .addr L_3396E8
    .addr L_3396AE
    .addr L_339705
    .addr L_3396CB

    L_3396AE:
    .byte $07
    .byte -16, -9, $AC, $42
    .byte -8, -1, $AA, $42
    .byte 0, -1, $A8, $42
    .byte 8, -1, $A6, $42
    .byte -8, -17, $A4, $42
    .byte 0, -17, $A2, $42
    .byte 8, -17, $A0, $42
    L_3396CB:
    .byte $07
    .byte -16, -1, $9E, $42
    .byte -8, -1, $9C, $42
    .byte 0, -1, $9A, $42
    .byte 8, -1, $98, $42
    .byte -8, -17, $88, $42
    .byte 0, -17, $86, $42
    .byte 8, -17, $84, $42
    L_3396E8:
    .byte $07
    .byte 8, -9, $AC, $02
    .byte 0, -1, $AA, $02
    .byte -8, -1, $A8, $02
    .byte -16, -1, $A6, $02
    .byte 0, -17, $A4, $02
    .byte -8, -17, $A2, $02
    .byte -16, -17, $A0, $02
    L_339705:
    .byte $07
    .byte 8, -1, $9E, $02
    .byte 0, -1, $9C, $02
    .byte -8, -1, $9A, $02
    .byte -16, -1, $98, $02
    .byte 0, -17, $88, $02
    .byte -8, -17, $86, $02
    .byte -16, -17, $84, $02

L_339722:
    .addr L_339726
    .addr L_339737

    L_339726:
    .byte $04
    .byte 0, 1, $B8, $42
    .byte 8, 1, $B6, $42
    .byte -8, 1, $B8, $02
    .byte -16, 1, $B6, $02
    L_339737:
    .byte $08
    .byte 0, -1, $B4, $42
    .byte 8, -1, $B2, $42
    .byte 0, -17, $B0, $42
    .byte 8, -17, $AE, $42
    .byte -8, -1, $B4, $02
    .byte -16, -1, $B2, $02
    .byte -8, -17, $B0, $02
    .byte -16, -17, $AE, $02

L_339758:
    .addr L_339779
    .addr L_33975C

    L_33975C:
    .byte $07
    .byte -16, -2, $D6, $42
    .byte -8, -1, $9C, $42
    .byte 0, -1, $D4, $42
    .byte 8, -1, $D2, $42
    .byte -8, -17, $88, $42
    .byte 0, -17, $D0, $42
    .byte 8, -17, $CE, $42
    L_339779:
    .byte $07
    .byte 8, -2, $D6, $02
    .byte 0, -1, $9C, $02
    .byte -8, -1, $D4, $02
    .byte -16, -1, $D2, $02
    .byte 0, -17, $88, $02
    .byte -8, -17, $D0, $02
    .byte -16, -17, $CE, $02

L_339796:
    .addr L_339816
    .addr L_3397A6
    .addr L_33982F
    .addr L_3397BF
    .addr L_339850
    .addr L_3397E0
    .addr L_33986D
    .addr L_3397FD

    L_3397A6:
    .byte $06
    .byte -12, 1, $8E, $42
    .byte -4, 1, $8C, $42
    .byte 4, 1, $E8, $42
    .byte 4, -15, $EC, $42
    .byte -12, -15, $C8, $42
    .byte -4, -15, $C6, $42
    L_3397BF:
    .byte $08
    .byte 12, 1, $E8, $42
    .byte 12, -15, $CA, $42
    .byte -12, 1, $8E, $42
    .byte -4, 1, $8C, $42
    .byte 4, 1, $EA, $42
    .byte 4, -15, $CC, $42
    .byte -12, -15, $C8, $42
    .byte -4, -15, $C6, $42
    L_3397E0:
    .byte $07
    .byte -16, -2, $D6, $42
    .byte -8, -1, $9C, $42
    .byte 0, -1, $D4, $42
    .byte 8, -1, $D2, $42
    .byte -8, -17, $88, $42
    .byte 0, -17, $D0, $42
    .byte 8, -17, $CE, $42
    L_3397FD:
    .byte $06
    .byte -12, 1, $8E, $42
    .byte -4, 1, $8C, $42
    .byte 4, 1, $96, $42
    .byte -12, -15, $94, $42
    .byte -4, -15, $92, $42
    .byte 4, -15, $90, $42
    L_339816:
    .byte $06
    .byte 5, 1, $8E, $02
    .byte -3, 1, $8C, $02
    .byte -11, 1, $E8, $02
    .byte -11, -15, $EC, $02
    .byte 5, -15, $C8, $02
    .byte -3, -15, $C6, $02
    L_33982F:
    .byte $08
    .byte -19, 1, $E8, $02
    .byte -19, -15, $CA, $02
    .byte 5, 1, $8E, $02
    .byte -3, 1, $8C, $02
    .byte -11, 1, $EA, $02
    .byte -11, -15, $CC, $02
    .byte 5, -15, $C8, $02
    .byte -3, -15, $C6, $02
    L_339850:
    .byte $07
    .byte 8, -2, $D6, $02
    .byte 0, -1, $9C, $02
    .byte -8, -1, $D4, $02
    .byte -16, -1, $D2, $02
    .byte 0, -17, $88, $02
    .byte -8, -17, $D0, $02
    .byte -16, -17, $CE, $02
    L_33986D:
    .byte $06
    .byte 4, 1, $8E, $02
    .byte -4, 1, $8C, $02
    .byte -12, 1, $96, $02
    .byte 4, -15, $94, $02
    .byte -4, -15, $92, $02
    .byte -12, -15, $90, $02

L_339886:
    .addr L_3398E1
    .addr L_339892
    .addr L_3398FE
    .addr L_3398AF
    .addr L_339917
    .addr L_3398C8

    L_339892:
    .byte $07
    .byte -16, -1, $9E, $42
    .byte -8, -1, $9C, $42
    .byte 0, -1, $9A, $42
    .byte 8, -1, $98, $42
    .byte -8, -17, $88, $42
    .byte 0, -17, $86, $42
    .byte 8, -17, $84, $42
    L_3398AF:
    .byte $06
    .byte -8, -17, $C4, $42
    .byte -16, -1, $C2, $42
    .byte -8, -1, $C0, $42
    .byte 0, -1, $BE, $42
    .byte 0, -17, $BC, $42
    .byte 8, -1, $BA, $42
    L_3398C8:
    .byte $06
    .byte -12, 1, $8E, $42
    .byte -4, 1, $8C, $42
    .byte 4, 1, $96, $42
    .byte -12, -15, $94, $42
    .byte -4, -15, $92, $42
    .byte 4, -15, $90, $42
    L_3398E1:
    .byte $07
    .byte 8, -1, $9E, $02
    .byte 0, -1, $9C, $02
    .byte -8, -1, $9A, $02
    .byte -16, -1, $98, $02
    .byte 0, -17, $88, $02
    .byte -8, -17, $86, $02
    .byte -16, -17, $84, $02
    L_3398FE:
    .byte $06
    .byte 0, -17, $C4, $02
    .byte 8, -1, $C2, $02
    .byte 0, -1, $C0, $02
    .byte -8, -1, $BE, $02
    .byte -8, -17, $BC, $02
    .byte -16, -1, $BA, $02
    L_339917:
    .byte $06
    .byte 4, 1, $8E, $02
    .byte -4, 1, $8C, $02
    .byte -12, 1, $96, $02
    .byte 4, -15, $94, $02
    .byte -4, -15, $92, $02
    .byte -12, -15, $90, $02

L_339930:
    .addr L_33993C
    .addr L_33995D
    .addr L_33997A
    .addr L_33999F
    .addr L_3399C0
    .addr L_3399DD

    L_33993C:
    .byte $08
    .byte -16, -17, $E4, $42
    .byte -16, -1, $9E, $42
    .byte -8, -1, $9C, $42
    .byte 0, -1, $9A, $42
    .byte 8, -1, $98, $42
    .byte -8, -17, $E6, $42
    .byte 0, -17, $86, $42
    .byte 8, -17, $84, $42
    L_33995D:
    .byte $07
    .byte -16, -1, $9E, $42
    .byte -8, -1, $9C, $42
    .byte 0, -1, $9A, $42
    .byte 8, -1, $98, $42
    .byte -8, -17, $88, $42
    .byte 0, -17, $86, $42
    .byte 8, -17, $84, $42
    L_33997A:
    .byte $09
    .byte 22, 5, $DE, $C1
    .byte 14, 5, $DE, $01
    .byte -16, -6, $D6, $42
    .byte -8, -5, $9C, $42
    .byte 0, -5, $9A, $42
    .byte 8, -5, $DC, $42
    .byte -9, -21, $94, $42
    .byte -1, -21, $92, $42
    .byte 7, -21, $90, $42
    L_33999F:
    .byte $08
    .byte 8, -17, $E4, $02
    .byte 8, -1, $9E, $02
    .byte 0, -1, $9C, $02
    .byte -8, -1, $9A, $02
    .byte -16, -1, $98, $02
    .byte 0, -17, $E6, $02
    .byte -8, -17, $86, $02
    .byte -16, -17, $84, $02
    L_3399C0:
    .byte $07
    .byte 8, -1, $9E, $02
    .byte 0, -1, $9C, $02
    .byte -8, -1, $9A, $02
    .byte -16, -1, $98, $02
    .byte 0, -17, $88, $02
    .byte -8, -17, $86, $02
    .byte -16, -17, $84, $02
    L_3399DD:
    .byte $09
    .byte -30, 5, $DE, $81
    .byte -22, 5, $DE, $41
    .byte 8, -6, $D6, $02
    .byte 0, -5, $9C, $02
    .byte -8, -5, $9A, $02
    .byte -16, -5, $DC, $02
    .byte 1, -21, $94, $02
    .byte -7, -21, $92, $02
    .byte -15, -21, $90, $02

L_339A02:
    .addr L_339A23
    .addr L_339A06

    L_339A06:
    .byte $07
    .byte -16, -2, $D6, $42
    .byte -8, -1, $9C, $42
    .byte 0, -1, $D4, $42
    .byte 8, -1, $D2, $42
    .byte -8, -17, $88, $42
    .byte 0, -17, $DA, $42
    .byte 8, -17, $D8, $42
    L_339A23:
    .byte $07
    .byte 8, -2, $D6, $02
    .byte 0, -1, $9C, $02
    .byte -8, -1, $D4, $02
    .byte -16, -1, $D2, $02
    .byte 0, -17, $88, $02
    .byte -8, -17, $DA, $02
    .byte -16, -17, $D8, $02

L_339A40:
    .addr L_339ABC
    .addr L_339A50
    .addr L_339AD9
    .addr L_339A6D
    .addr L_339AF6
    .addr L_339A8A
    .addr L_339B0F
    .addr L_339AA3

    L_339A50:
    .byte $07
    .byte -16, -2, $D6, $43
    .byte -8, -1, $9C, $43
    .byte 0, -1, $D4, $43
    .byte 8, -1, $D2, $43
    .byte -8, -17, $88, $43
    .byte 0, -17, $DA, $43
    .byte 8, -17, $D8, $43
    L_339A6D:
    .byte $07
    .byte -16, -2, $D6, $43
    .byte -8, -1, $9C, $43
    .byte 0, -1, $D4, $43
    .byte 8, -1, $D2, $43
    .byte -8, -17, $88, $43
    .byte 0, -17, $D0, $43
    .byte 8, -17, $CE, $43
    L_339A8A:
    .byte $06
    .byte -8, -17, $C4, $43
    .byte -16, -1, $C2, $43
    .byte -8, -1, $C0, $43
    .byte 0, -1, $BE, $43
    .byte 0, -17, $80, $43
    .byte 8, -1, $BA, $43
    L_339AA3:
    .byte $06
    .byte -8, -17, $C4, $43
    .byte -16, -1, $C2, $43
    .byte -8, -1, $C0, $43
    .byte 0, -1, $BE, $43
    .byte 0, -17, $BC, $43
    .byte 8, -1, $BA, $43
    L_339ABC:
    .byte $07
    .byte 8, -2, $D6, $03
    .byte 0, -1, $9C, $03
    .byte -8, -1, $D4, $03
    .byte -16, -1, $D2, $03
    .byte 0, -17, $88, $03
    .byte -8, -17, $DA, $03
    .byte -16, -17, $D8, $03
    L_339AD9:
    .byte $07
    .byte 8, -2, $D6, $03
    .byte 0, -1, $9C, $03
    .byte -8, -1, $D4, $03
    .byte -16, -1, $D2, $03
    .byte 0, -17, $88, $03
    .byte -8, -17, $D0, $03
    .byte -16, -17, $CE, $03
    L_339AF6:
    .byte $06
    .byte 0, -17, $C4, $03
    .byte 8, -1, $C2, $03
    .byte 0, -1, $C0, $03
    .byte -8, -1, $BE, $03
    .byte -8, -17, $80, $03
    .byte -16, -1, $BA, $03
    L_339B0F:
    .byte $06
    .byte 0, -17, $C4, $03
    .byte 8, -1, $C2, $03
    .byte 0, -1, $C0, $03
    .byte -8, -1, $BE, $03
    .byte -8, -17, $BC, $03
    .byte -16, -1, $BA, $03

L_339B28:
    .addr L_339B8B
    .addr L_339B34
    .addr L_339BA4
    .addr L_339B4D
    .addr L_339BC1
    .addr L_339B6A

    L_339B34:
    .byte $06
    .byte -12, 1, $8E, $42
    .byte -4, 1, $8C, $42
    .byte 4, 1, $8A, $42
    .byte -12, -15, $88, $42
    .byte -4, -15, $86, $42
    .byte 4, -15, $84, $42
    L_339B4D:
    .byte $07
    .byte -16, -2, $D6, $42
    .byte -8, -1, $9C, $42
    .byte 0, -1, $D4, $42
    .byte 8, -1, $D2, $42
    .byte -8, -17, $88, $42
    .byte 0, -17, $D0, $42
    .byte 8, -17, $CE, $42
    L_339B6A:
    .byte $08
    .byte -16, -1, $EE, $42
    .byte -8, -1, $82, $42
    .byte 0, -1, $FA, $42
    .byte 8, -1, $F8, $42
    .byte -16, -17, $F6, $42
    .byte -8, -17, $F4, $42
    .byte 0, -17, $F2, $42
    .byte 8, -17, $F0, $42
    L_339B8B:
    .byte $06
    .byte 4, 1, $8E, $02
    .byte -4, 1, $8C, $02
    .byte -12, 1, $8A, $02
    .byte 4, -15, $88, $02
    .byte -4, -15, $86, $02
    .byte -12, -15, $84, $02
    L_339BA4:
    .byte $07
    .byte 8, -2, $D6, $02
    .byte 0, -1, $9C, $02
    .byte -8, -1, $D4, $02
    .byte -16, -1, $D2, $02
    .byte 0, -17, $88, $02
    .byte -8, -17, $D0, $02
    .byte -16, -17, $CE, $02
    L_339BC1:
    .byte $08
    .byte 8, -1, $EE, $02
    .byte 0, -1, $82, $02
    .byte -8, -1, $FA, $02
    .byte -16, -1, $F8, $02
    .byte 8, -17, $F6, $02
    .byte 0, -17, $F4, $02
    .byte -8, -17, $F2, $02
    .byte -16, -17, $F0, $02

L_339BE2:
    .addr L_339BE6
    .addr L_339C03

    L_339BE6:
    .byte $07
    .byte -16, -2, $D6, $42
    .byte -8, -1, $9C, $42
    .byte 0, -1, $D4, $42
    .byte 8, -1, $D2, $42
    .byte -8, -17, $88, $42
    .byte 0, -17, $D0, $42
    .byte 8, -17, $CE, $42
    L_339C03:
    .byte $07
    .byte 8, -2, $D6, $02
    .byte 0, -1, $9C, $02
    .byte -8, -1, $D4, $02
    .byte -16, -1, $D2, $02
    .byte 0, -17, $88, $02
    .byte -8, -17, $D0, $02
    .byte -16, -17, $CE, $02

L_339C20:
    .addr L_339C8F
    .addr L_339C34
    .addr L_339CB0
    .addr L_339C55
    .addr L_339CCD
    .addr L_339C72
    .addr L_339CEA
    .addr L_339CEA
    .addr L_339D18
    .addr L_339CFB

    L_339C34:
    .byte $08
    .byte -16, -17, $E4, $42
    .byte -16, -1, $9E, $42
    .byte -8, -1, $9C, $42
    .byte 0, -1, $9A, $42
    .byte 8, -1, $98, $42
    .byte -8, -17, $E6, $42
    .byte 0, -17, $86, $42
    .byte 8, -17, $84, $42
    L_339C55:
    .byte $07
    .byte -16, -1, $9E, $42
    .byte -8, -1, $9C, $42
    .byte 0, -1, $9A, $42
    .byte 8, -1, $98, $42
    .byte -8, -17, $88, $42
    .byte 0, -17, $86, $42
    .byte 8, -17, $84, $42
    L_339C72:
    .byte $07
    .byte -16, -6, $D6, $42
    .byte -8, -5, $9C, $42
    .byte 0, -5, $9A, $42
    .byte 8, -5, $DC, $42
    .byte -9, -21, $94, $42
    .byte -1, -21, $92, $42
    .byte 7, -21, $90, $42
    L_339C8F:
    .byte $08
    .byte 8, -17, $E4, $02
    .byte 8, -1, $9E, $02
    .byte 0, -1, $9C, $02
    .byte -8, -1, $9A, $02
    .byte -16, -1, $98, $02
    .byte 0, -17, $E6, $02
    .byte -8, -17, $86, $02
    .byte -16, -17, $84, $02
    L_339CB0:
    .byte $07
    .byte 8, -1, $9E, $02
    .byte 0, -1, $9C, $02
    .byte -8, -1, $9A, $02
    .byte -16, -1, $98, $02
    .byte 0, -17, $88, $02
    .byte -8, -17, $86, $02
    .byte -16, -17, $84, $02
    L_339CCD:
    .byte $07
    .byte 8, -6, $D6, $02
    .byte 0, -5, $9C, $02
    .byte -8, -5, $9A, $02
    .byte -16, -5, $DC, $02
    .byte 1, -21, $94, $02
    .byte -7, -21, $92, $02
    .byte -15, -21, $90, $02
    L_339CEA:
    .byte $04
    .byte 0, 1, $B8, $42
    .byte 8, 1, $B6, $42
    .byte -8, 1, $B8, $02
    .byte -16, 1, $B6, $02
    L_339CFB:
    .byte $07
    .byte -16, -9, $AC, $42
    .byte -8, -1, $AA, $42
    .byte 0, -1, $A8, $42
    .byte 8, -1, $A6, $42
    .byte -8, -17, $A4, $42
    .byte 0, -17, $A2, $42
    .byte 8, -17, $A0, $42
    L_339D18:
    .byte $07
    .byte 8, -9, $AC, $02
    .byte 0, -1, $AA, $02
    .byte -8, -1, $A8, $02
    .byte -16, -1, $A6, $02
    .byte 0, -17, $A4, $02
    .byte -8, -17, $A2, $02
    .byte -16, -17, $A0, $02

L_339D35:
    .addr L_339D6C
    .addr L_339D51
    .addr L_339D63
    .addr L_339D5A
    .addr L_339D5A
    .addr L_339D63
    .addr L_339D51
    .addr L_339D6C
    .addr L_339D87
    .addr L_339D75
    .addr L_339D90
    .addr L_339D7E
    .addr L_339D6C
    .addr L_339D51

    L_339D51:
    .byte $02
    .byte -8, -9, $DE, $01
    .byte 0, -9, $DE, $C1
    L_339D5A:
    .byte $02
    .byte 0, -9, $E2, $C1
    .byte -8, -9, $E2, $01
    L_339D63:
    .byte $02
    .byte 0, -9, $E2, $41
    .byte -8, -9, $E2, $81
    L_339D6C:
    .byte $02
    .byte -8, -9, $DE, $81
    .byte 0, -9, $DE, $41
    L_339D75:
    .byte $02
    .byte 0, -9, $E0, $C1
    .byte -8, -9, $E0, $01
    L_339D7E:
    .byte $02
    .byte 0, -9, $E0, $41
    .byte -8, -9, $E0, $81
    L_339D87:
    .byte $02
    .byte -8, -9, $E0, $81
    .byte 0, -9, $E0, $41
    L_339D90:
    .byte $02
    .byte -8, -9, $E0, $01
    .byte 0, -9, $E0, $C1

L_339D99:
    .addr L_339DA6
    .addr L_339D9D

    L_339D9D:
    .byte $02
    .byte -8, -9, $FE, $01
    .byte 0, -9, $FC, $01
    L_339DA6:
    .byte $02
    .byte 0, -9, $FE, $41
    .byte -8, -9, $FC, $41

L_339DAF:
    .addr L_339DB9
    .addr L_339DC2
    .addr L_339DCB
    .addr L_339DD4
    .addr L_339DDD

    L_339DB9:
    .byte $02
    .byte 0, -9, $7A, $41
    .byte -8, -9, $7A, $01
    L_339DC2:
    .byte $02
    .byte 0, -9, $78, $01
    .byte -8, -9, $76, $01
    L_339DCB:
    .byte $02
    .byte 0, -9, $7A, $C1
    .byte -8, -9, $7A, $81
    L_339DD4:
    .byte $02
    .byte 0, -9, $76, $41
    .byte -8, -9, $78, $41
    L_339DDD:
    .byte $01
    .byte -4, -4, $21, $01

L_339DE2:
    .addr L_339DEA
    .addr L_339DF3
    .addr L_339DFC
    .addr L_339E05

    L_339DEA:
    .byte $02
    .byte 0, -9, $7A, $41
    .byte -8, -9, $7A, $01
    L_339DF3:
    .byte $02
    .byte 0, -9, $78, $01
    .byte -8, -9, $76, $01
    L_339DFC:
    .byte $02
    .byte 0, -9, $7A, $C1
    .byte -8, -9, $7A, $81
    L_339E05:
    .byte $02
    .byte 0, -9, $76, $41
    .byte -8, -9, $78, $41

L_339E0E:
    .addr L_339E18
    .addr L_339E22
    .addr L_339E2C
    .addr L_339E36
    .addr L_339E40

    L_339E18:
    .byte $80
    .byte $02
    .byte -8, -9, $3E, $40
    .byte 0, -9, $3C, $40
    L_339E22:
    .byte $80
    .byte $02
    .byte -8, -9, $3E, $C0
    .byte 0, -9, $3C, $C0
    L_339E2C:
    .byte $80
    .byte $02
    .byte 0, -9, $3E, $80
    .byte -8, -9, $3C, $80
    L_339E36:
    .byte $80
    .byte $02
    .byte 0, -9, $3E, $00
    .byte -8, -9, $3C, $00
    L_339E40:
    .byte $82
    .byte $06
    .byte -4, -1, $1E, $00
    .byte 4, -1, $2E, $00
    .byte -12, -1, $08, $40
    .byte 4, -17, $2C, $00
    .byte -4, -17, $1C, $00
    .byte -12, -17, $0C, $00

L_339E5A:
    .addr L_339E97
    .addr L_339E7E
    .addr L_339E97
    .addr L_339E7E
    .addr L_339EC9
    .addr L_339EB0
    .addr L_339E97
    .addr L_339E7E
    .addr L_339EFB
    .addr L_339EE2
    .addr L_339EFB
    .addr L_339EE2
    .addr L_339F21
    .addr L_339F14
    .addr L_339F2E
    .addr L_339F4B
    .addr L_339F68
    .addr L_339F85

    L_339E7E:
    .byte $06
    .byte -12, -13, $C0, $43
    .byte -12, 3, $C2, $43
    .byte -4, 3, $B6, $43
    .byte -4, -13, $B4, $43
    .byte 4, 3, $A6, $43
    .byte 4, -13, $A4, $43
    L_339E97:
    .byte $06
    .byte 4, -13, $C0, $03
    .byte 4, 3, $C2, $03
    .byte -4, 3, $B6, $03
    .byte -4, -13, $B4, $03
    .byte -12, 3, $A6, $03
    .byte -12, -13, $A4, $03
    L_339EB0:
    .byte $06
    .byte -11, -5, $F6, $43
    .byte -3, -5, $E6, $43
    .byte -11, -21, $F4, $43
    .byte -3, -21, $E4, $43
    .byte 5, -5, $D6, $43
    .byte 5, -21, $D4, $43
    L_339EC9:
    .byte $06
    .byte 4, -5, $F6, $03
    .byte -4, -5, $E6, $03
    .byte 4, -21, $F4, $03
    .byte -4, -21, $E4, $03
    .byte -12, -5, $D6, $03
    .byte -12, -21, $D4, $03
    L_339EE2:
    .byte $06
    .byte -12, -13, $C0, $43
    .byte -12, 3, $E8, $43
    .byte -4, 3, $DC, $43
    .byte -4, -13, $B4, $43
    .byte 4, 3, $CC, $43
    .byte 4, -13, $A4, $43
    L_339EFB:
    .byte $06
    .byte 4, -13, $C0, $03
    .byte 4, 3, $E8, $03
    .byte -4, 3, $DC, $03
    .byte -4, -13, $B4, $03
    .byte -12, 3, $CC, $03
    .byte -12, -13, $A4, $03
    L_339F14:
    .byte $03
    .byte -12, -5, $D8, $43
    .byte -4, -5, $C8, $43
    .byte 4, -5, $B8, $43
    L_339F21:
    .byte $03
    .byte 4, -5, $D8, $03
    .byte -4, -5, $C8, $03
    .byte -12, -5, $B8, $03
    L_339F2E:
    .byte $07
    .byte 12, -13, $CA, $03
    .byte 4, 3, $F2, $03
    .byte -4, 3, $E2, $03
    .byte -12, 3, $D2, $03
    .byte 4, -13, $F0, $03
    .byte -4, -13, $E0, $03
    .byte -12, -13, $D0, $03
    L_339F4B:
    .byte $07
    .byte -20, -13, $CA, $43
    .byte -12, 3, $F2, $43
    .byte -4, 3, $E2, $43
    .byte 4, 3, $D2, $43
    .byte -12, -13, $F0, $43
    .byte -4, -13, $E0, $43
    .byte 4, -13, $D0, $43
    L_339F68:
    .byte $07
    .byte 12, -14, $CA, $01
    .byte 4, 2, $F2, $01
    .byte -4, 2, $E2, $01
    .byte -12, 2, $D2, $01
    .byte 4, -14, $F0, $01
    .byte -4, -14, $E0, $01
    .byte -12, -14, $D0, $01
    L_339F85:
    .byte $07
    .byte -20, -14, $CA, $41
    .byte -12, 2, $F2, $41
    .byte -4, 2, $E2, $41
    .byte 4, 2, $D2, $41
    .byte -12, -14, $F0, $41
    .byte -4, -14, $E0, $41
    .byte 4, -14, $D0, $41


    .byte $FD,$46,$6F,$F1,$9A,$15,$7F,$F5,$BF,$64,$FE,$55,$FC,$53
    .byte $7F,$95,$FF,$55,$FB,$54,$FE,$54,$97,$C4,$B6,$45,$7F,$C1,$FF,$51
    .byte $7D,$5F,$3F,$51,$FB,$5D,$4F,$57,$FF,$11,$A1,$6F,$BB,$51,$EA,$59
    .byte $37,$65,$FB,$75,$BD,$75,$E8,$57,$AE,$50,$FD,$57,$EF,$51,$7F,$17
    .byte $4E,$54,$AF,$2D,$DC,$5D,$6D,$5D,$BF,$7D,$AF,$51,$FB,$41,$96,$44
    .byte $72,$55,$BF,$4D,$B5,$54,$D7,$65,$F6,$0D,$B8,$15,$FF,$10,$9F,$51
