.segment "PRG16": absolute

L_16A000:
    SPRITEMAP   $1C8216                     ; 16A000/1A16821C
    MOV         REG,$05E3                   ; 16A004/1CE305
    TABLECALL   #25                         ; 16A007/2919
    _is_faraddr L_16A070                    ; 16A009/70A016
    _is_faraddr L_16A144                    ; 16A00C/44A116
    _is_faraddr L_16A1BD                    ; 16A00F/BDA116
    _is_faraddr $000000                     ; 16A012/000000
    _is_faraddr L_18ABDB                    ; 16A015/DBAB18
    _is_faraddr L_16A1DD                    ; 16A018/DDA116
    _is_faraddr L_16A202                    ; 16A01B/02A216
    _is_faraddr L_18A847                    ; 16A01E/47A818
    _is_faraddr $000000                     ; 16A021/000000
    _is_faraddr $000000                     ; 16A024/000000
    _is_faraddr $000000                     ; 16A027/000000
    _is_faraddr L_16A2F2                    ; 16A02A/F2A216
    _is_faraddr L_16A364                    ; 16A02D/64A316
    _is_faraddr L_16A3B9                    ; 16A030/B9A316
    _is_faraddr L_14B68C                    ; 16A033/8CB614
    _is_faraddr L_16A0CF                    ; 16A036/CFA016
    _is_faraddr L_19B669                    ; 16A039/69B619
    _is_faraddr L_19B2F1                    ; 16A03C/F1B219
    _is_faraddr L_18AA17                    ; 16A03F/17AA18
    _is_faraddr L_16A414                    ; 16A042/14A416
    _is_faraddr L_16A516                    ; 16A045/16A516
    _is_faraddr L_16A55A                    ; 16A048/5AA516
    _is_faraddr L_16A55A                    ; 16A04B/5AA516
    _is_faraddr $000000                     ; 16A04E/000000
    _is_faraddr $000000                     ; 16A051/000000
L_16A054:
    SPRITEMAP   $1A8676                     ; 16A054/1A76861A
    JML         KST33_CopyWaterEnter                    ; 16A058/03AEBC14

KirbyState3C:
    SPRITEMAP   $1A8676                     ; 16A05C/1A76861A
    JML         KST39_CopyWaterSurface                    ; 16A060/03B7BF14

KirbyState3D:
    SPRITEMAP   $1A8676                     ; 16A064/1A76861A
    JML         KST2D_Ladder                    ; 16A068/035DBA14

KirbyState3E:
    JML         L_14B2D9                    ; 16A06C/03D9B214

L_16A070:
    MOV         $05E1,#$0C                  ; 16A070/11E1050C
    ONTICK      $16A0B4                     ; 16A074/08B4A016
    ASMCALL     $8FDC, WAIT #1              ; 16A078/D1DC8F // Set pose (respect facing)
    .byte       $04                         ; 16A07B/04
L_16A07C:
    TASK        L_16A08E                    ; 16A07C/078EA0
L_16A07F:
    LOOP        #10                         ; 16A07F/010A
        INC2POSE    WAIT #1                     ; 16A081/91
L_16A082:
        DEC2POSE    WAIT #1                     ; 16A082/A1
L_16A083:
    ENDLOOP                                 ; 16A083/02
    ASMCALL     $A0C4                       ; 16A084/D0C4A0 // Check if player is not holding the B Button
    JEQ         L_16A07F                    ; 16A087/0A7FA0
    ENDLASTTASK                             ; 16A08A/12
    A_JMP       KirbyState3E                ; 16A08B/176CA0

L_16A08E:
    ASMCALL     $99EA, WAIT #4              ; 16A08E/D4EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $0C                         ; 16A091/0C
    .byte       $00                         ; 16A092/00
    .byte       $01                         ; 16A093/01
    .byte       $F4                         ; 16A094/F4
L_16A095:
    ASMCALL     $99EA, WAIT #4              ; 16A095/D4EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $0C                         ; 16A098/0C
    .byte       $00                         ; 16A099/00
    .byte       $01                         ; 16A09A/01
    .byte       $08                         ; 16A09B/08
L_16A09C:
    ASMCALL     $99EA, WAIT #4              ; 16A09C/D4EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $0C                         ; 16A09F/0C
    .byte       $00                         ; 16A0A0/00
    .byte       $01                         ; 16A0A1/01
    .byte       $F8                         ; 16A0A2/F8
L_16A0A3:
    ASMCALL     $99EA, WAIT #4              ; 16A0A3/D4EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $0C                         ; 16A0A6/0C
    .byte       $00                         ; 16A0A7/00
    .byte       $01                         ; 16A0A8/01
    .byte       $0C                         ; 16A0A9/0C
L_16A0AA:
    ASMCALL     $99EA, WAIT #4              ; 16A0AA/D4EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $0C                         ; 16A0AD/0C
    .byte       $00                         ; 16A0AE/00
    .byte       $01                         ; 16A0AF/01
    .byte       $00                         ; 16A0B0/00
L_16A0B1:
    A_JMP       L_16A08E                    ; 16A0B1/178EA0

; CODE OR DATA -- $16A0B4 .. $16A0CF
incbinRange "../split/prg/bank16.bin", $00B4, $00CF

L_16A0CF:
    MOV         $05E1,#$0C                  ; 16A0CF/11E1050C
    ONTICK      $16A0B4                     ; 16A0D3/08B4A016
    MOV         VAR0,#$08                   ; 16A0D7/0D0008
    JSL         L_16A0E1                    ; 16A0DA/04E1A016
    A_JMP       KirbyState3E                ; 16A0DE/176CA0

L_16A0E1:
    TASK        L_16A0F3                    ; 16A0E1/07F3A0
    ASMCALL     $8FDC                       ; 16A0E4/D0DC8F // Set pose (respect facing)
    .byte       $78                         ; 16A0E7/78
    MOV         REG,VAR0                    ; 16A0E8/1E00
    LOOP        REG                         ; 16A0EA/22
        ASMCALL     $DE4B, WAIT #2              ; 16A0EB/D24BDE // Play sound effect
        .byte       $1D                         ; 16A0EE/1D
L_16A0EF:
        INC2POSE    WAIT #2                     ; 16A0EF/92
L_16A0F0:
        DEC2POSE                                ; 16A0F0/A0
    ENDLOOP                                 ; 16A0F1/02
    A_RTL                                   ; 16A0F2/05

L_16A0F3:
    LOOP        #2                          ; 16A0F3/0102
        ASMCALL     $99EA, WAIT #2              ; 16A0F5/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $08                         ; 16A0F8/08
        .byte       $00                         ; 16A0F9/00
        .byte       $06                         ; 16A0FA/06
        .byte       $C0                         ; 16A0FB/C0
L_16A0FC:
    ENDLOOP                                 ; 16A0FC/02
    LOOP        #2                          ; 16A0FD/0102
        ASMCALL     $99EA, WAIT #2              ; 16A0FF/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $08                         ; 16A102/08
        .byte       $00                         ; 16A103/00
        .byte       $06                         ; 16A104/06
        .byte       $D0                         ; 16A105/D0
L_16A106:
    ENDLOOP                                 ; 16A106/02
    LOOP        #2                          ; 16A107/0102
        ASMCALL     $99EA, WAIT #2              ; 16A109/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $08                         ; 16A10C/08
        .byte       $00                         ; 16A10D/00
        .byte       $06                         ; 16A10E/06
        .byte       $E0                         ; 16A10F/E0
L_16A110:
    ENDLOOP                                 ; 16A110/02
    LOOP        #2                          ; 16A111/0102
        ASMCALL     $99EA, WAIT #2              ; 16A113/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $08                         ; 16A116/08
        .byte       $00                         ; 16A117/00
        .byte       $06                         ; 16A118/06
        .byte       $F0                         ; 16A119/F0
L_16A11A:
    ENDLOOP                                 ; 16A11A/02
    LOOP        #2                          ; 16A11B/0102
        ASMCALL     $99EA, WAIT #2              ; 16A11D/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $08                         ; 16A120/08
        .byte       $00                         ; 16A121/00
        .byte       $06                         ; 16A122/06
        .byte       $00                         ; 16A123/00
L_16A124:
    ENDLOOP                                 ; 16A124/02
    LOOP        #2                          ; 16A125/0102
        ASMCALL     $99EA, WAIT #2              ; 16A127/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $08                         ; 16A12A/08
        .byte       $00                         ; 16A12B/00
        .byte       $06                         ; 16A12C/06
        .byte       $10                         ; 16A12D/10
L_16A12E:
    ENDLOOP                                 ; 16A12E/02
    LOOP        #2                          ; 16A12F/0102
        ASMCALL     $99EA, WAIT #2              ; 16A131/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $08                         ; 16A134/08
        .byte       $00                         ; 16A135/00
        .byte       $06                         ; 16A136/06
        .byte       $20                         ; 16A137/20
L_16A138:
    ENDLOOP                                 ; 16A138/02
    LOOP        #2                          ; 16A139/0102
        ASMCALL     $99EA, WAIT #2              ; 16A13B/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $08                         ; 16A13E/08
        .byte       $00                         ; 16A13F/00
        .byte       $06                         ; 16A140/06
        .byte       $30                         ; 16A141/30
L_16A142:
    ENDLOOP                                 ; 16A142/02
    ENDTASK                                 ; 16A143/0C

L_16A144:
    MOV         $05E1,#$0C                  ; 16A144/11E1050C
    MOV         VAR2,#$1A                   ; 16A148/0D021A
    ONTICK      $16A0B4                     ; 16A14B/08B4A016
    ASMCALL     $8FDC, WAIT #4              ; 16A14F/D4DC8F // Set pose (respect facing)
    .byte       $08                         ; 16A152/08
L_16A153:
    INC2POSE                                ; 16A153/90
    ONTICK      $16A17E                     ; 16A154/087EA116
L_16A158:
    ASMCALL     $DE4B                       ; 16A158/D04BDE // Play sound effect
    .byte       $39                         ; 16A15B/39
    ASMCALL     $9952, WAIT #2              ; 16A15C/D25299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 16A15F/00
    .byte       $00                         ; 16A160/00
    .byte       $1B                         ; 16A161/1B
    .byte       $00                         ; 16A162/00
L_16A163:
    ASMCALL     $9952                       ; 16A163/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 16A166/00
    .byte       $00                         ; 16A167/00
    .byte       $1B                         ; 16A168/1B
    .byte       $00                         ; 16A169/00
    INC2POSE    WAIT #2                     ; 16A16A/92
L_16A16B:
    DEC2POSE                                ; 16A16B/A0
    A_JMP       L_16A158                    ; 16A16C/1758A1

L_16A16F:
    ASMCALL     $DE4B                       ; 16A16F/D04BDE // Play sound effect
    .byte       $FF                         ; 16A172/FF
    ONTICK      $16A0B4                     ; 16A173/08B4A016
    ASMCALL     $8FDC, WAIT #8              ; 16A177/D8DC8F // Set pose (respect facing)
    .byte       $08                         ; 16A17A/08
L_16A17B:
    A_JMP       KirbyState3E                ; 16A17B/176CA0

; CODE OR DATA -- $16A17E .. $16A1BD
incbinRange "../split/prg/bank16.bin", $017E, $01BD

L_16A1BD:
    MOV         $05E1,#$0C                  ; 16A1BD/11E1050C
    ONTICK      $16A0B4                     ; 16A1C1/08B4A016
    JSL         L_16A1CC                    ; 16A1C5/04CCA116
    A_JMP       KirbyState3E                ; 16A1C9/176CA0

L_16A1CC:
    ASMCALL     $DE4B                       ; 16A1CC/D04BDE // Play sound effect
    .byte       $3F                         ; 16A1CF/3F
    ASMCALL     $8FDC, WAIT #8              ; 16A1D0/D8DC8F // Set pose (respect facing)
    .byte       $0E                         ; 16A1D3/0E
L_16A1D4:
    ASMCALL     $99EA                       ; 16A1D4/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $06                         ; 16A1D7/06
    .byte       $00                         ; 16A1D8/00
    .byte       $02                         ; 16A1D9/02
    .byte       $00                         ; 16A1DA/00
    INC2POSE    WAIT #2                     ; 16A1DB/92
L_16A1DC:
    A_RTL                                   ; 16A1DC/05

L_16A1DD:
    MOV         $05E1,#$0C                  ; 16A1DD/11E1050C
    ONTICK      $16A0B4                     ; 16A1E1/08B4A016
    JSL         L_16A1EC                    ; 16A1E5/04ECA116
    A_JMP       KirbyState3E                ; 16A1E9/176CA0

L_16A1EC:
    ASMCALL     $DE4B                       ; 16A1EC/D04BDE // Play sound effect
    .byte       $42                         ; 16A1EF/42
    ASMCALL     $8FDC, WAIT #2              ; 16A1F0/D2DC8F // Set pose (respect facing)
    .byte       $12                         ; 16A1F3/12
L_16A1F4:
    INC2POSE    WAIT #2                     ; 16A1F4/92
L_16A1F5:
    DEC2POSE    WAIT #2                     ; 16A1F5/A2
L_16A1F6:
    INC2POSE    WAIT #2                     ; 16A1F6/92
L_16A1F7:
    ASMCALL     $99EA                       ; 16A1F7/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 16A1FA/08
    .byte       $FE                         ; 16A1FB/FE
    .byte       $03                         ; 16A1FC/03
    .byte       $00                         ; 16A1FD/00
    DEC2POSE    WAIT #2                     ; 16A1FE/A2
L_16A1FF:
    INC2POSE    WAIT #2                     ; 16A1FF/92
L_16A200:
    DEC2POSE    WAIT #2                     ; 16A200/A2
L_16A201:
    A_RTL                                   ; 16A201/05

L_16A202:
    MOV         $05E1,#$0C                  ; 16A202/11E1050C
    MOV         $05F9,#$80                  ; 16A206/11F90580
    ASMCALL     $9EEA                       ; 16A20A/D0EA9E // Freeze all objects and set kirby flag 0x80 (can't pause flag?)
    MOV         VAR0,#$00                   ; 16A20D/0D0000
    ASMCALL     $987D                       ; 16A210/D07D98 // Zero Kirby's velocities
    ASMCALL     $A2CD                       ; 16A213/D0CDA2 // Store Kirby's X position to VAR2 and VAR3
    ONTICK      $16A2B1                     ; 16A216/08B1A216
    ADD         $0598,#-1                   ; 16A21A/16980502FF
    ASMCALL     $DE4B                       ; 16A21F/D04BDE // Play sound effect
    .byte       $1A                         ; 16A222/1A
    ASMCALL     $8FDC, WAIT #8              ; 16A223/D8DC8F // Set pose (respect facing)
    .byte       $28                         ; 16A226/28
L_16A227:
    ASMCALL     $99EA                       ; 16A227/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 16A22A/00
    .byte       $00                         ; 16A22B/00
    .byte       $04                         ; 16A22C/04
    .byte       $00                         ; 16A22D/00
    INC2POSE    WAIT #4                     ; 16A22E/94
L_16A22F:
    INC2POSE    WAIT #12                    ; 16A22F/9C
L_16A230:
    MOV         REG,$0598                   ; 16A230/1C9805
    TABLEJMP    #3                          ; 16A233/0F03
    .word       L_16A23B                    ; 16A235/3BA2
    .word       L_16A25C                    ; 16A237/5CA2
    .word       L_16A263                    ; 16A239/63A2
L_16A23B:
    ASMCALL     $8FDC, WAIT #2              ; 16A23B/D2DC8F // Set pose (respect facing)
    .byte       $32                         ; 16A23E/32
L_16A23F:
    INC2POSE                                ; 16A23F/90
    ASMCALL     $885C, WAIT #6              ; 16A240/D65C88 // Set Kirby's Y velocity
    .word       $FE00                       ; 16A243/00FE
L_16A245:
    ASMCALL     $885C, WAIT #6              ; 16A245/D65C88 // Set Kirby's Y velocity
    .word       $FF00                       ; 16A248/00FF
L_16A24A:
    ASMCALL     $885C, WAIT #6              ; 16A24A/D65C88 // Set Kirby's Y velocity
    .word       $0100                       ; 16A24D/0001
L_16A24F:
    INC2POSE                                ; 16A24F/90
    ASMCALL     $885C, WAIT #6              ; 16A250/D65C88 // Set Kirby's Y velocity
    .word       $0200                       ; 16A253/0002
L_16A255:
    INC2POSE                                ; 16A255/90
    ASMCALL     $987D                       ; 16A256/D07D98 // Zero Kirby's velocities
    A_JMP       L_16A267                    ; 16A259/1767A2

L_16A25C:
    ASMCALL     $8FDC                       ; 16A25C/D0DC8F // Set pose (respect facing)
    .byte       $30                         ; 16A25F/30
    A_JMP       L_16A267                    ; 16A260/1767A2

L_16A263:
    ASMCALL     $8FDC                       ; 16A263/D0DC8F // Set pose (respect facing)
    .byte       $2E                         ; 16A266/2E
L_16A267:
    ASMCALL     $DE4B                       ; 16A267/D04BDE // Play sound effect
    .byte       $00                         ; 16A26A/00
    MOV         VAR0,#$01                   ; 16A26B/0D0001
    ASMCALL     $9952                       ; 16A26E/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 16A271/00
    .byte       $00                         ; 16A272/00
    .byte       $0C                         ; 16A273/0C
    .byte       $00                         ; 16A274/00
    LOOP        #15                         ; 16A275/010F
        A_JSR       L_16A285                    ; 16A277/1885A2
    ENDLOOP                                 ; 16A27A/02
    ADD         VAR0,#1                     ; 16A27B/13000201
L_16A27F:
    A_JSR       L_16A285                    ; 16A27F/1885A2
    A_JMP       L_16A27F                    ; 16A282/177FA2

L_16A285:
    ADDXPOS     #1                          ; 16A285/2C0100
    WAIT        #1                          ; 16A288/0601
L_16A28A:
    ADDXPOS     #-1                         ; 16A28A/2CFFFF
    WAIT        #1                          ; 16A28D/0601
L_16A28F:
    ADDXPOS     #-1                         ; 16A28F/2CFFFF
    WAIT        #1                          ; 16A292/0601
L_16A294:
    ADDXPOS     #1                          ; 16A294/2C0100
    WAIT        #1                          ; 16A297/0601
L_16A299:
    A_RTS                                   ; 16A299/19

L_16A29A:
    ASMCALL     $A2DA                       ; 16A29A/D0DAA2 // Restore Kirby's X position from VAR2 and VAR3
    ASMCALL     $9EF6                       ; 16A29D/D0F69E // Unfreeze all objects and clear kirby flag 0x80 (can't pause flag?)
    MOV         $05F9,#$00                  ; 16A2A0/11F90500
    ASMCALL     $A2E7                       ; 16A2A4/D0E7A2 // Remove ability if all uses depleted (return 0 if all uses depleted)
    JEQ         L_16A2AD                    ; 16A2A7/0AADA2
    A_JMP       KirbyState3E                ; 16A2AA/176CA0

L_16A2AD:
    JML         KST01_DiscardAbility        ; 16A2AD/034BA714

; CODE OR DATA -- $16A2B1 .. $16A2F2
incbinRange "../split/prg/bank16.bin", $02B1, $02F2

L_16A2F2:
    MOV         $05E1,#$0C                  ; 16A2F2/11E1050C
    ASMCALL     $DE4B                       ; 16A2F6/D04BDE // Play sound effect
    .byte       $4D                         ; 16A2F9/4D
    ONTICK      $16A344                     ; 16A2FA/0844A316
    ASMCALL     $8FDC, WAIT #2              ; 16A2FE/D2DC8F // Set pose (respect facing)
    .byte       $3A                         ; 16A301/3A
L_16A302:
    INC2POSE    WAIT #2                     ; 16A302/92
L_16A303:
    INC2POSE    WAIT #1                     ; 16A303/91
L_16A304:
    INC2POSE    WAIT #1                     ; 16A304/91
L_16A305:
    INC2POSE    WAIT #1                     ; 16A305/91
L_16A306:
    INC2POSE    WAIT #1                     ; 16A306/91
L_16A307:
    ONTICK      $16A32E                     ; 16A307/082EA316
    INC2POSE    WAIT #2                     ; 16A30B/92
L_16A30C:
    INC2POSE    WAIT #2                     ; 16A30C/92
L_16A30D:
    ADDPOSE     #-6, WAIT #1                ; 16A30D/61FA
L_16A30F:
    INC2POSE    WAIT #1                     ; 16A30F/91
L_16A310:
    DEC2POSE                                ; 16A310/A0
    ONTICK      $16A324                     ; 16A311/0824A316
    WAIT        #60                         ; 16A315/063C
L_16A317:
    ONTICK      $16A344                     ; 16A317/0844A316
    ASMCALL     $8FDC, WAIT #4              ; 16A31B/D4DC8F // Set pose (respect facing)
    .byte       $3E                         ; 16A31E/3E
L_16A31F:
    ADDPOSE     #-4, WAIT #5                ; 16A31F/65FC
L_16A321:
    A_JMP       KirbyState3E                ; 16A321/176CA0

; CODE OR DATA -- $16A324 .. $16A364
incbinRange "../split/prg/bank16.bin", $0324, $0364

L_16A364:
    MOV         $05E1,#$0C                  ; 16A364/11E1050C
    ASMCALL     $DE4B                       ; 16A368/D04BDE // Play sound effect
    .byte       $44                         ; 16A36B/44
    ONTICK      $16A385                     ; 16A36C/0885A316
    ASMCALL     $8FDC                       ; 16A370/D0DC8F // Set pose (respect facing)
    .byte       $4A                         ; 16A373/4A
L_16A374:
    WAIT        #1                          ; 16A374/0601
L_16A376:
    LOOP        #5                          ; 16A376/0105
        INC2POSE    WAIT #1                     ; 16A378/91
L_16A379:
    ENDLOOP                                 ; 16A379/02
    ADDPOSE     #-10                        ; 16A37A/60F6
    ASMCALL     $A3AE                       ; 16A37C/D0AEA3 // Check if player is not holding the B Button (duplicate of ASM $16A0C4)
    JEQ         L_16A374                    ; 16A37F/0A74A3
    A_JMP       KirbyState3E                ; 16A382/176CA0

; CODE OR DATA -- $16A385 .. $16A3B9
incbinRange "../split/prg/bank16.bin", $0385, $03B9

L_16A3B9:
    MOV         $05E1,#$0C                  ; 16A3B9/11E1050C
    MOV         VAR2,#$1A                   ; 16A3BD/0D021A
    ASMCALL     $DE4B                       ; 16A3C0/D04BDE // Play sound effect
    .byte       $44                         ; 16A3C3/44
    ONTICK      $16A0B4                     ; 16A3C4/08B4A016
    ASMCALL     $8FDC, WAIT #4              ; 16A3C8/D4DC8F // Set pose (respect facing)
    .byte       $56                         ; 16A3CB/56
L_16A3CC:
    ONTICK      $16A3E4                     ; 16A3CC/08E4A316
L_16A3D0:
    LOOP        #16                         ; 16A3D0/0110
        INC2POSE    WAIT #1                     ; 16A3D2/91
L_16A3D3:
    ENDLOOP                                 ; 16A3D3/02
    ADDPOSE     #-32                        ; 16A3D4/60E0
    A_JMP       L_16A3D0                    ; 16A3D6/17D0A3

L_16A3D9:
    ONTICK      $16A0B4                     ; 16A3D9/08B4A016
    ASMCALL     $8FDC, WAIT #8              ; 16A3DD/D8DC8F // Set pose (respect facing)
    .byte       $56                         ; 16A3E0/56
L_16A3E1:
    A_JMP       KirbyState3E                ; 16A3E1/176CA0

; CODE OR DATA -- $16A3E4 .. $16A414
incbinRange "../split/prg/bank16.bin", $03E4, $0414

L_16A414:
    MOV         $05E1,#$0C                  ; 16A414/11E1050C
    ASMCALL     $9EEA                       ; 16A418/D0EA9E // Freeze all objects and set kirby flag 0x80 (can't pause flag?)
    ASMCALL     $DE4B                       ; 16A41B/D04BDE // Play sound effect
    .byte       $53                         ; 16A41E/53
    ASMCALL     $987D                       ; 16A41F/D07D98 // Zero Kirby's velocities
    ASMCALL     $8FDC, WAIT #8              ; 16A422/D8DC8F // Set pose (respect facing)
    .byte       $7C                         ; 16A425/7C
L_16A426:
    LOOP        #8                          ; 16A426/0108
        ASMCALL     $8FDC, WAIT #1              ; 16A428/D1DC8F // Set pose (respect facing)
        .byte       $7E                         ; 16A42B/7E
L_16A42C:
        INCPOSE     WAIT #1                     ; 16A42C/71
L_16A42D:
        INCPOSE     WAIT #1                     ; 16A42D/71
L_16A42E:
        INCPOSE     WAIT #1                     ; 16A42E/71
L_16A42F:
    ENDLOOP                                 ; 16A42F/02
    ASMCALL     $A4EE                       ; 16A430/D0EEA4
    SETPOSE     #$FF                        ; 16A433/50FF
    MOV         $058F,#$00                  ; 16A435/118F0500
    ASMCALL     $9A83                       ; 16A439/D0839A
    ASMCALL     $9952                       ; 16A43C/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 16A43F/00
    .byte       $00                         ; 16A440/00
    .byte       $09                         ; 16A441/09
    .byte       $00                         ; 16A442/00
    TASK        L_16A4B6                    ; 16A443/07B6A4
    LOOP        #10                         ; 16A446/010A
        ASMCALL     $DF38, WAIT #2              ; 16A448/D238DF // Unknown ASM $DF38
        .byte       $AA                         ; 16A44B/AA
        .byte       $A4                         ; 16A44C/A4
L_16A44D:
        ASMCALL     $A4CE, WAIT #2              ; 16A44D/D2CEA4
L_16A450:
        ASMCALL     $DF38, WAIT #2              ; 16A450/D238DF // Unknown ASM $DF38
        .byte       $B0                         ; 16A453/B0
        .byte       $A4                         ; 16A454/A4
L_16A455:
        ASMCALL     $9ED9, WAIT #4              ; 16A455/D4D99E
L_16A458:
    ENDLOOP                                 ; 16A458/02
    ENDLASTTASK                             ; 16A459/12
    ASMCALL     $8FDC                       ; 16A45A/D0DC8F // Set pose (respect facing)
    .byte       $86                         ; 16A45D/86
    ASMCALL     $9ED3                       ; 16A45E/D0D39E // Fade-out step
    WAIT        #1                          ; 16A461/0601
L_16A463:
    MOV         REG,VAR1                    ; 16A463/1E01
    MOV         VAR0,REG                    ; 16A465/1D00
    LOOP        #1                          ; 16A467/0101
        MOV         VAR1,#$00                   ; 16A469/0D0100
        LOOP        #8                          ; 16A46C/0108
            ASMCALL     $9952                       ; 16A46E/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
            .byte       $00                         ; 16A471/00
            .byte       $00                         ; 16A472/00
            .byte       $0A                         ; 16A473/0A
            .byte       $00                         ; 16A474/00
            ADD         VAR1,#1                     ; 16A475/13010201
            WAIT        #9                          ; 16A479/0609
L_16A47B:
        ENDLOOP                                 ; 16A47B/02
    ENDLOOP                                 ; 16A47C/02
    WAIT        #24                         ; 16A47D/0618
L_16A47F:
    MOV         REG,VAR0                    ; 16A47F/1E00
    MOV         VAR1,REG                    ; 16A481/1D01
    ASMCALL     $DE4B                       ; 16A483/D04BDE // Play sound effect
    .byte       $FF                         ; 16A486/FF
    ASMCALL     $C9A8                       ; 16A487/D0A8C9
    MOV         $058F,#$01                  ; 16A48A/118F0501
    ASMCALL     $99EA                       ; 16A48E/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 16A491/00
    .byte       $00                         ; 16A492/00
    .byte       $07                         ; 16A493/07
    .byte       $00                         ; 16A494/00
    ASMCALL     $9EF6                       ; 16A495/D0F69E // Unfreeze all objects and clear kirby flag 0x80 (can't pause flag?)
    ASMCALL_l   $229015                     ; 16A498/26159022
    ASMCALL     $A54B                       ; 16A49C/D04BA5 // Decrement ability uses and remove if depleted (return 0 if depleted)
    JML         KST01_DiscardAbility        ; 16A49F/034BA714

; CODE OR DATA -- $16A4A3 .. $16A4B6
incbinRange "../split/prg/bank16.bin", $04A3, $04B6

L_16A4B6:
    ASMCALL     $9952, WAIT #1              ; 16A4B6/D15299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 16A4B9/00
    .byte       $00                         ; 16A4BA/00
    .byte       $07                         ; 16A4BB/07
    .byte       $00                         ; 16A4BC/00
L_16A4BD:
    ASMCALL     $9952, WAIT #7              ; 16A4BD/D75299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 16A4C0/00
    .byte       $00                         ; 16A4C1/00
    .byte       $08                         ; 16A4C2/08
    .byte       $00                         ; 16A4C3/00
L_16A4C4:
    ASMCALL     $9952, WAIT #8              ; 16A4C4/D85299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 16A4C7/00
    .byte       $00                         ; 16A4C8/00
    .byte       $08                         ; 16A4C9/08
    .byte       $00                         ; 16A4CA/00
L_16A4CB:
    A_JMP       L_16A4B6                    ; 16A4CB/17B6A4

; CODE OR DATA -- $16A4CE .. $16A516
incbinRange "../split/prg/bank16.bin", $04CE, $0516

L_16A516:
    MOV         $05E1,#$0C                  ; 16A516/11E1050C
    ONTICK      $16A548                     ; 16A51A/0848A516
    ASMCALL     $9EEA                       ; 16A51E/D0EA9E // Freeze all objects and set kirby flag 0x80 (can't pause flag?)
    SETPOSE     #$98                        ; 16A521/5098
    MOV         REG,VAR1                    ; 16A523/1E01
    MOV         VAR0,REG                    ; 16A525/1D00
    MOV         VAR1,#$40                   ; 16A527/0D0140
    ASMCALL     $9952                       ; 16A52A/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $05                         ; 16A52D/05
    .byte       $F9                         ; 16A52E/F9
    .byte       $0B                         ; 16A52F/0B
    .byte       $00                         ; 16A530/00
    MOV         REG,VAR0                    ; 16A531/1E00
    MOV         VAR1,REG                    ; 16A533/1D01
    MOV         VAR0,#$00                   ; 16A535/0D0000
L_16A538:
    ASMCALL     $DF7D                       ; 16A538/D07DDF // Wait until (`arg1`) == #`arg2`
    .word       $61CB                       ; 16A53B/CB61
    .byte       $01                         ; 16A53D/01
    ASMCALL     $9EF6                       ; 16A53E/D0F69E // Unfreeze all objects and clear kirby flag 0x80 (can't pause flag?)
    ASMCALL     $A54B                       ; 16A541/D04BA5 // Decrement ability uses and remove if depleted (return 0 if depleted)
    JML         KST01_DiscardAbility        ; 16A544/034BA714

; CODE OR DATA -- $16A548 .. $16A55A
incbinRange "../split/prg/bank16.bin", $0548, $055A

L_16A55A:
    SPRITEMAP   $1A8846                     ; 16A55A/1A46881A
    MOV         $05E1,#$09                  ; 16A55E/11E10509
    MOV         $05FC,#$00                  ; 16A562/11FC0500
    MOV         VAR2,#$1E                   ; 16A566/0D021E
    MOV         VAR3,#$00                   ; 16A569/0D0300
    MOV         VAR4,#$01                   ; 16A56C/0D0401
    ASMCALL     $9D8C                       ; 16A56F/D08C9D
    ONTICK      $16A580                     ; 16A572/0880A516
    ASMCALL     $DE4B                       ; 16A576/D04BDE // Play sound effect
    .byte       $18                         ; 16A579/18
    ASMCALL     $8FDC, WAIT #8              ; 16A57A/D8DC8F // Set pose (respect facing)
    .byte       $00                         ; 16A57D/00
L_16A57E:
    INC2POSE                                ; 16A57E/90
    HALT                                    ; 16A57F/09

; CODE OR DATA -- $16A580 .. $16A5DF
incbinRange "../split/prg/bank16.bin", $0580, $05DF

L_16A5DF:
    ASMCALL     $DE4B                       ; 16A5DF/D04BDE // Play sound effect
    .byte       $FF                         ; 16A5E2/FF
    ONTICK      $16A5EF                     ; 16A5E3/08EFA516
    ASMCALL     $8FDC, WAIT #8              ; 16A5E7/D8DC8F // Set pose (respect facing)
    .byte       $00                         ; 16A5EA/00
L_16A5EB:
    JML         L_14B2D9                    ; 16A5EB/03D9B214

; CODE OR DATA -- $16A5EF .. $16A5FF
incbinRange "../split/prg/bank16.bin", $05EF, $05FF

L_16A5FF:
    MOV         $05E1,#$0C                  ; 16A5FF/11E1050C
    MOV         $05F9,#$80                  ; 16A603/11F90580
    MOV         VAR2,#$78                   ; 16A607/0D0278
    SPRITEMAP   $1A96A4                     ; 16A60A/1AA4961A
    ASMCALL     $DE4B                       ; 16A60E/D04BDE // Play sound effect
    .byte       $FF                         ; 16A611/FF
    ASMCALL     $DE4B                       ; 16A612/D04BDE // Play sound effect
    .byte       $02                         ; 16A615/02
    ONTICK      $16A673                     ; 16A616/0873A616
    ASMCALL     $8FDC, WAIT #1              ; 16A61A/D1DC8F // Set pose (respect facing)
    .byte       $00                         ; 16A61D/00
L_16A61E:
    ASMCALL     $A679                       ; 16A61E/D079A6 // Check if Kirby is not touching the ground (TODO: confirm this)
    JNE         L_16A63B                    ; 16A621/0B3BA6
    ASMCALL     $8710, WAIT #1              ; 16A624/D11087 // Set Kirby's X velocity
    .word       $FC00                       ; 16A627/00FC
L_16A629:
    ASMCALL     $8710, WAIT #2              ; 16A629/D21087 // Set Kirby's X velocity
    .word       $0400                       ; 16A62C/0004
L_16A62E:
    ASMCALL     $8710, WAIT #2              ; 16A62E/D21087 // Set Kirby's X velocity
    .word       $FC00                       ; 16A631/00FC
L_16A633:
    ASMCALL     $8710, WAIT #1              ; 16A633/D11087 // Set Kirby's X velocity
    .word       $0400                       ; 16A636/0004
L_16A638:
    ASMCALL     $86FB, WAIT #7              ; 16A638/D7FB86 // Zero Kirby's X velocity
L_16A63B:
    ASMCALL     $DFA3                       ; 16A63B/D0A3DF // SUB reg, #arg2, arg1
    .word       $05F7                       ; 16A63E/F705
    .byte       $00                         ; 16A640/00
    JNE         KirbyStateE1                ; 16A641/0BC7A9
    ASMCALL     $DFA3                       ; 16A644/D0A3DF // SUB reg, #arg2, arg1
    .word       $05E3                       ; 16A647/E305
    .byte       $16                         ; 16A649/16
    JEQ         L_16A660                    ; 16A64A/0A60A6
L_16A64D:
    ASMCALL     $A694, WAIT #1              ; 16A64D/D194A6 // Back drop input handler (decrement VAR2 timer, check ground collision, handle inputs)
L_16A650:
    TABLEJMP    #7                          ; 16A650/0F07
    .word       L_16A64D                    ; 16A652/4DA6
    .word       L_16A875                    ; 16A654/75A8
    .word       L_16A753                    ; 16A656/53A7
    .word       L_16A81D                    ; 16A658/1DA8
    .word       L_16A7BD                    ; 16A65A/BDA7
    .word       L_16A8CA                    ; 16A65C/CAA8
    .word       L_16A966                    ; 16A65E/66A9
L_16A660:
    ONTICK      $16A66D                     ; 16A660/086DA616
L_16A664:
    ASMCALL     $A683, WAIT #1              ; 16A664/D183A6 // Return 1 if timer in VAR2 reached zero OR player is holding the B Button
L_16A667:
    TABLEJMP    #2                          ; 16A667/0F02
    .word       L_16A664                    ; 16A669/64A6
    .word       L_16A6E0                    ; 16A66B/E0A6

B16_a66d:
    jsr $9c5a
    jsr $8fcc
    jsr $8049
    jmp $805b
    jsr $8b4e
    ldx #$00
    bcc B16_a681
    inx
B16_a681:
    txa
    rts

B16_a683:
    dec OBJ_var2+1
    lda OBJ_var2+1
    beq B16_a691
    lda temp_pad1_hold
    and #$40
    beq B16_a693
B16_a691:
    lda #$01
B16_a693:
    rts

B16_a694:
    dec OBJ_var2+1
    lda OBJ_var2+1
    bne B16_a6a6
    lda frame_counter
    and #$03
    tax
    lda B16_a6dc, x
    rts

B16_a6a6:
    jsr $8b4e
    bcc B16_a6ae
    lda #$06
    rts

B16_a6ae:
    lda temp_pad1_hold
    and #$80
    beq B16_a6b7
    lda #$05
    rts

B16_a6b7:
    jsr $98c3
    ldy #$04
    lda temp_pad1_hold
    and $8001, x
    bne B16_a6da
    dey
    lda temp_pad1_hold
    and #$04
    bne B16_a6da
    dey
    lda temp_pad1_hold
    and $8000, x
    bne B16_a6da
    dey
    lda temp_pad1_hold
    and #$08
    bne B16_a6da
    dey
B16_a6da:
    tya
    rts

B16_a6dc:
.byte $01,$03,$06,$06


L_16A6E0:
    ONTICK      $16A731                     ; 16A6E0/0831A716
    ASMCALL     $A741                       ; 16A6E4/D041A7
    JNE         L_16A70F                    ; 16A6E7/0B0FA7
    ASMCALL     $8FDC, WAIT #2              ; 16A6EA/D2DC8F // Set pose (respect facing)
    .byte       $0C                         ; 16A6ED/0C
L_16A6EE:
    INC2POSE    WAIT #4                     ; 16A6EE/94
L_16A6EF:
    ADDPOSE     #-12, WAIT #6               ; 16A6EF/66F4
L_16A6F1:
    INC2POSE    WAIT #2                     ; 16A6F1/92
L_16A6F2:
    INC2POSE    WAIT #2                     ; 16A6F2/92
L_16A6F3:
    MOV         $05FC,#$04                  ; 16A6F3/11FC0504
    ASMCALL     $DE4B                       ; 16A6F7/D04BDE // Play sound effect
    .byte       $4E                         ; 16A6FA/4E
    ASMCALL     $99EA                       ; 16A6FB/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 16A6FE/08
    .byte       $00                         ; 16A6FF/00
    .byte       $09                         ; 16A700/09
    .byte       $00                         ; 16A701/00
    ASMCALL     $8FDC, WAIT #2              ; 16A702/D2DC8F // Set pose (respect facing)
    .byte       $30                         ; 16A705/30
L_16A706:
    ASMCALL     $8FDC                       ; 16A706/D0DC8F // Set pose (respect facing)
    .byte       $1E                         ; 16A709/1E
    WAIT        #24                         ; 16A70A/0618
L_16A70C:
    A_JMP       L_16A72E                    ; 16A70C/172EA7

L_16A70F:
    ASMCALL     $8FDC, WAIT #4              ; 16A70F/D4DC8F // Set pose (respect facing)
    .byte       $06                         ; 16A712/06
L_16A713:
    ADDPOSE     #8, WAIT #8                 ; 16A713/6808
L_16A715:
    ADDPOSE     #-12, WAIT #2               ; 16A715/62F4
L_16A717:
    ADDPOSE     #8, WAIT #2                 ; 16A717/6208
L_16A719:
    MOV         $05FC,#$04                  ; 16A719/11FC0504
    ASMCALL     $DE4B                       ; 16A71D/D04BDE // Play sound effect
    .byte       $4E                         ; 16A720/4E
    ASMCALL     $99EA                       ; 16A721/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 16A724/08
    .byte       $00                         ; 16A725/00
    .byte       $09                         ; 16A726/09
    .byte       $00                         ; 16A727/00
    ASMCALL     $8FDC                       ; 16A728/D0DC8F // Set pose (respect facing)
    .byte       $32                         ; 16A72B/32
    WAIT        #24                         ; 16A72C/0618
L_16A72E:
    A_JMP       L_16A9B3                    ; 16A72E/17B3A9

; CODE OR DATA -- $16A731 .. $16A753
incbinRange "../split/prg/bank16.bin", $0731, $0753

L_16A753:
    ASMCALL     $987D                       ; 16A753/D07D98 // Zero Kirby's velocities
    ONTICK      $16A795                     ; 16A756/0895A716
    ASMCALL     $8FDC, WAIT #4              ; 16A75A/D4DC8F // Set pose (respect facing)
    .byte       $0C                         ; 16A75D/0C
L_16A75E:
    ASMCALL     $DE4B                       ; 16A75E/D04BDE // Play sound effect
    .byte       $04                         ; 16A761/04
    INC2POSE                                ; 16A762/90
    ASMCALL     $8710                       ; 16A763/D01087 // Set Kirby's X velocity
    .word       $0200                       ; 16A766/0002
    ASMCALL     $885C, WAIT #4              ; 16A768/D45C88 // Set Kirby's Y velocity
    .word       $FC00                       ; 16A76B/00FC
L_16A76D:
    ASMCALL     $885C, WAIT #4              ; 16A76D/D45C88 // Set Kirby's Y velocity
    .word       $FE00                       ; 16A770/00FE
L_16A772:
    ASMCALL     $885C, WAIT #4              ; 16A772/D45C88 // Set Kirby's Y velocity
    .word       $0200                       ; 16A775/0002
L_16A777:
    DEC2POSE                                ; 16A777/A0
    ASMCALL     $885C, WAIT #4              ; 16A778/D45C88 // Set Kirby's Y velocity
    .word       $0400                       ; 16A77B/0004
    ADDPOSE     #12                         ; 16A77D/600C
    ASMCALL     $8710                       ; 16A77F/D01087 // Set Kirby's X velocity
    .word       $0100                       ; 16A782/0001
    HALT                                    ; 16A784/09

L_16A785:
    MOV         $05FC,#$01                  ; 16A785/11FC0501
    ASMCALL     $987D                       ; 16A789/D07D98 // Zero Kirby's velocities
    ASMCALL     $8FDC                       ; 16A78C/D0DC8F // Set pose (respect facing)
    .byte       $18                         ; 16A78F/18
    WAIT        #18                         ; 16A790/0612
L_16A792:
    A_JMP       L_16A994                    ; 16A792/1794A9

; CODE OR DATA -- $16A795 .. $16A7BD
incbinRange "../split/prg/bank16.bin", $0795, $07BD

L_16A7BD:
    ASMCALL     $987D                       ; 16A7BD/D07D98 // Zero Kirby's velocities
    ONTICK      $16A7FD                     ; 16A7C0/08FDA716
    ASMCALL     $DE4B                       ; 16A7C4/D04BDE // Play sound effect
    .byte       $04                         ; 16A7C7/04
    ASMCALL     $8FDC                       ; 16A7C8/D0DC8F // Set pose (respect facing)
    .byte       $0C                         ; 16A7CB/0C
    ASMCALL     $8710                       ; 16A7CC/D01087 // Set Kirby's X velocity
    .word       $FE00                       ; 16A7CF/00FE
    ASMCALL     $885C, WAIT #4              ; 16A7D1/D45C88 // Set Kirby's Y velocity
    .word       $FC00                       ; 16A7D4/00FC
    INC2POSE                                ; 16A7D6/90
    ASMCALL     $885C, WAIT #4              ; 16A7D7/D45C88 // Set Kirby's Y velocity
    .word       $FE00                       ; 16A7DA/00FE
    INC2POSE                                ; 16A7DC/90
    ASMCALL     $885C, WAIT #4              ; 16A7DD/D45C88 // Set Kirby's Y velocity
    .word       $0200                       ; 16A7E0/0002
    ASMCALL     $885C, WAIT #4              ; 16A7E2/D45C88 // Set Kirby's Y velocity
    .word       $0400                       ; 16A7E5/0004
    ASMCALL     $8710                       ; 16A7E7/D01087 // Set Kirby's X velocity
    .word       $FF00                       ; 16A7EA/00FF
    HALT                                    ; 16A7EC/09

KirbyStateE3:
    MOV         $05FC,#$01                  ; 16A7ED/11FC0501
    ASMCALL     $987D                       ; 16A7F1/D07D98 // Zero Kirby's velocities
    ASMCALL     $8FDC                       ; 16A7F4/D0DC8F // Set pose (respect facing)
    .byte       $10                         ; 16A7F7/10
    WAIT        #18                         ; 16A7F8/0612
    A_JMP       L_16A994                    ; 16A7FA/1794A9

; CODE OR DATA -- $16A7FD .. $16A81D
incbinRange "../split/prg/bank16.bin", $07FD, $081D

L_16A81D:
    ASMCALL     $987D                       ; 16A81D/D07D98 // Zero Kirby's velocities
    ONTICK      $16A855                     ; 16A820/0855A816
    ASMCALL     $DE4B                       ; 16A824/D04BDE // Play sound effect
    .byte       $04                         ; 16A827/04
    ASMCALL     $8FDC                       ; 16A828/D0DC8F // Set pose (respect facing)
    .byte       $26                         ; 16A82B/26
    ASMCALL     $885C, WAIT #4              ; 16A82C/D45C88 // Set Kirby's Y velocity
    .word       $FC00                       ; 16A82F/00FC
L_16A831:
    ADDPOSE     #-20                        ; 16A831/60EC
    ASMCALL     $885C, WAIT #6              ; 16A833/D65C88 // Set Kirby's Y velocity
    .word       $FE00                       ; 16A836/00FE
L_16A838:
    ADDPOSE     #4                          ; 16A838/6004
    ASMCALL     $885C, WAIT #8              ; 16A83A/D85C88 // Set Kirby's Y velocity
    .word       $FF00                       ; 16A83D/00FF
L_16A83F:
    ASMCALL     $885C, WAIT #6              ; 16A83F/D65C88 // Set Kirby's Y velocity
    .word       $0600                       ; 16A842/0006
    HALT                                    ; 16A844/09

L_16A845:
    ASMCALL     $987D                       ; 16A845/D07D98 // Zero Kirby's velocities
    ASMCALL     $8FDC, WAIT #1              ; 16A848/D1DC8F // Set pose (respect facing)
    .byte       $20                         ; 16A84B/20
L_16A84C:
    MOV         $05FC,#$02                  ; 16A84C/11FC0502
    WAIT        #18                         ; 16A850/0612
L_16A852:
    A_JMP       L_16A994                    ; 16A852/1794A9

; CODE OR DATA -- $16A855 .. $16A875
incbinRange "../split/prg/bank16.bin", $0855, $0875

L_16A875:
    ASMCALL     $987D                       ; 16A875/D07D98 // Zero Kirby's velocities
    ONTICK      $16A8AA                     ; 16A878/08AAA816
    ASMCALL     $DE4B                       ; 16A87C/D04BDE // Play sound effect
    .byte       $04                         ; 16A87F/04
    ASMCALL     $8FDC                       ; 16A880/D0DC8F // Set pose (respect facing)
    .byte       $0C                         ; 16A883/0C
    ASMCALL     $885C, WAIT #4              ; 16A884/D45C88 // Set Kirby's Y velocity
    .word       $FC00                       ; 16A887/00FC
L_16A889:
    INC2POSE                                ; 16A889/90
    ASMCALL     $885C, WAIT #6              ; 16A88A/D65C88 // Set Kirby's Y velocity
    .word       $FE00                       ; 16A88D/00FE
L_16A88F:
    ASMCALL     $885C, WAIT #8              ; 16A88F/D85C88 // Set Kirby's Y velocity
    .word       $FF00                       ; 16A892/00FF
L_16A894:
    ASMCALL     $885C, WAIT #6              ; 16A894/D65C88 // Set Kirby's Y velocity
    .word       $0600                       ; 16A897/0006
    HALT                                    ; 16A899/09

L_16A89A:
    ASMCALL     $987D                       ; 16A89A/D07D98 // Zero Kirby's velocities
    ASMCALL     $8FDC, WAIT #1              ; 16A89D/D1DC8F // Set pose (respect facing)
    .byte       $22                         ; 16A8A0/22
L_16A8A1:
    MOV         $05FC,#$02                  ; 16A8A1/11FC0502
    WAIT        #18                         ; 16A8A5/0612
L_16A8A7:
    A_JMP       L_16A994                    ; 16A8A7/1794A9

; CODE OR DATA -- $16A8AA .. $16A8CA
incbinRange "../split/prg/bank16.bin", $08AA, $08CA

L_16A8CA:
    ASMCALL     $987D                       ; 16A8CA/D07D98 // Zero Kirby's velocities
    ONTICK      $16A91B                     ; 16A8CD/081BA916
    ASMCALL     $DE4B                       ; 16A8D1/D04BDE // Play sound effect
    .byte       $04                         ; 16A8D4/04
    ASMCALL     $8FDC                       ; 16A8D5/D0DC8F // Set pose (respect facing)
    .byte       $26                         ; 16A8D8/26
    ASMCALL     $885C                       ; 16A8D9/D05C88 // Set Kirby's Y velocity
    .word       $FC00                       ; 16A8DC/00FC
    WAIT        #16                         ; 16A8DE/0610
L_16A8E0:
    ADDPOSE     #-20                        ; 16A8E0/60EC
    ASMCALL     $885C, WAIT #4              ; 16A8E2/D45C88 // Set Kirby's Y velocity
    .word       $FE00                       ; 16A8E5/00FE
L_16A8E7:
    INC2POSE                                ; 16A8E7/90
    ASMCALL     $885C, WAIT #4              ; 16A8E8/D45C88 // Set Kirby's Y velocity
    .word       $FF00                       ; 16A8EB/00FF
L_16A8ED:
    INC2POSE                                ; 16A8ED/90
    ASMCALL     $885C, WAIT #4              ; 16A8EE/D45C88 // Set Kirby's Y velocity
    .word       $FF80                       ; 16A8F1/80FF
L_16A8F3:
    INC2POSE                                ; 16A8F3/90
    ASMCALL     $885C, WAIT #4              ; 16A8F4/D45C88 // Set Kirby's Y velocity
    .word       $0000                       ; 16A8F7/0000
L_16A8F9:
    ASMCALL     $885C                       ; 16A8F9/D05C88 // Set Kirby's Y velocity
    .word       $0600                       ; 16A8FC/0006
    HALT                                    ; 16A8FE/09

L_16A8FF:
    ASMCALL     $987D                       ; 16A8FF/D07D98 // Zero Kirby's velocities
    MOV         $05FC,#$02                  ; 16A902/11FC0502
    WAIT        #18                         ; 16A906/0612
L_16A908:
    A_JMP       L_16A994                    ; 16A908/1794A9

KirbyStateE7:
    ASMCALL     $987D                       ; 16A90B/D07D98 // Zero Kirby's velocities
    ASMCALL     $8FDC, WAIT #1              ; 16A90E/D1DC8F // Set pose (respect facing)
    .byte       $1A                         ; 16A911/1A
    MOV         $05FC,#$02                  ; 16A912/11FC0502
    WAIT        #18                         ; 16A916/0612
    A_JMP       L_16A9B3                    ; 16A918/17B3A9

; CODE OR DATA -- $16A91B .. $16A966
incbinRange "../split/prg/bank16.bin", $091B, $0966

L_16A966:
    ONTICK      $16A984                     ; 16A966/0884A916
    ASMCALL     $8FDC, WAIT #2              ; 16A96A/D2DC8F // Set pose (respect facing)
    .byte       $0C                         ; 16A96D/0C
    INC2POSE    WAIT #2                     ; 16A96E/92
    ADDPOSE     #-10, WAIT #2               ; 16A96F/62F6
    DEC2POSE    WAIT #6                     ; 16A971/A6
    INC2POSE    WAIT #2                     ; 16A972/92
    INC2POSE    WAIT #1                     ; 16A973/91
    INC2POSE    WAIT #1                     ; 16A974/91
    ADDPOSE     #22, WAIT #2                ; 16A975/6216
    MOV         $05FC,#$03                  ; 16A977/11FC0503
    ASMCALL     $DE4B                       ; 16A97B/D04BDE // Play sound effect
    .byte       $4E                         ; 16A97E/4E
    WAIT        #24                         ; 16A97F/0618
    A_JMP       L_16A9B3                    ; 16A981/17B3A9

; CODE OR DATA -- $16A984 .. $16A994
incbinRange "../split/prg/bank16.bin", $0984, $0994

L_16A994:
    ONTICK      $16A9BB                     ; 16A994/08BBA916
    ASMCALL     $8FDC                       ; 16A998/D0DC8F // Set pose (respect facing)
    .byte       $28                         ; 16A99B/28
    ASMCALL     $885C, WAIT #5              ; 16A99C/D55C88 // Set Kirby's Y velocity
    .word       $FD00                       ; 16A99F/00FD
L_16A9A1:
    INC2POSE                                ; 16A9A1/90
    ASMCALL     $885C, WAIT #5              ; 16A9A2/D55C88 // Set Kirby's Y velocity
    .word       $FE80                       ; 16A9A5/80FE
L_16A9A7:
    INC2POSE                                ; 16A9A7/90
    ASMCALL     $885C, WAIT #5              ; 16A9A8/D55C88 // Set Kirby's Y velocity
    .word       $0180                       ; 16A9AB/8001
L_16A9AD:
    INC2POSE                                ; 16A9AD/90
    ASMCALL     $885C, WAIT #5              ; 16A9AE/D55C88 // Set Kirby's Y velocity
    .word       $0300                       ; 16A9B1/0003
L_16A9B3:
    MOV         $05F9,#$00                  ; 16A9B3/11F90500
    JML         L_14B2D9                    ; 16A9B7/03D9B214

; CODE OR DATA -- $16A9BB .. $16A9C7
incbinRange "../split/prg/bank16.bin", $09BB, $09C7

KirbyStateE1:
    MOV         $05FC,#$05                  ; 16A9C7/11FC0505
    A_JMP       L_16A9B3                    ; 16A9CB/17B3A9

L_16A9CE:
    SETBANK     #$22                        ; 16A9CE/2822
    ASMCALL     $8090                       ; 16A9D0/D09080
    ONMOVE      $D86B                       ; 16A9D3/236BD8
    ONTICK      $16A9DC                     ; 16A9D6/08DCA916
    ZEROVEL                                 ; 16A9DA/38
    HALT                                    ; 16A9DB/09

; CODE OR DATA -- $16A9DC .. $16AA00
incbinRange "../split/prg/bank16.bin", $09DC, $0A00

L_16AA00:
    ZEROVEL                                 ; 16AA00/38
    SETBANK     #$21                        ; 16AA01/2821
    ASMCALL     $99EA, WAIT #1              ; 16AA03/D1EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 16AA06/00
    .byte       $00                         ; 16AA07/00
    .byte       $0B                         ; 16AA08/0B
    .byte       $00                         ; 16AA09/00
    END                                     ; 16AA0A/00

L_16AA0B:
    ONTICK      $16AA31                     ; 16AA0B/0831AA16
    ADDXPOS     #2                          ; 16AA0F/2C0200
    ADDYPOS     #1                          ; 16AA12/2D0100
    WAIT        #1                          ; 16AA15/0601
L_16AA17:
    ADDXPOS     #-2                         ; 16AA17/2CFEFF
    WAIT        #1                          ; 16AA1A/0601
L_16AA1C:
    ADDXPOS     #2                          ; 16AA1C/2C0200
    ADDYPOS     #-1                         ; 16AA1F/2DFFFF
    WAIT        #1                          ; 16AA22/0601
L_16AA24:
    ADDXPOS     #-2                         ; 16AA24/2CFEFF
    WAIT        #1                          ; 16AA27/0601
L_16AA29:
    A_AND       $05FB,#$FE                  ; 16AA29/16FB0500FE
    ASMCALL     $E33F                       ; 16AA2E/D03FE3

B16_aa31:
    lda bak_obj_0501
    sta hitbox1_flags_0501
    jmp SetPositionAbsolute

Script02_KirbyParticle:
    SETBANK     #$21                        ; 16AA3A/2821
    SPRITEMAP   $1C94CE                     ; 16AA3C/1ACE941C
    MOV         REG,VAR3                    ; 16AA40/1E03
    TABLEJMP    #32                         ; 16AA42/0F20
    .word       SCR02_BumpStar              ; 16AA44/84AA
    .word       SCR02_SkidSmoke             ; 16AA46/36AB
    .word       SCR02_KParticle02           ; 16AA48/E5AB
    .word       SCR02_BlockDestroyed        ; 16AA4A/72AC
    .word       SCR02_SplashIn              ; 16AA4C/7BAC
    .word       SCR02_SplashOut             ; 16AA4E/9AAC
    .word       SCR02_KParticle06           ; 16AA50/DCAB
    .word       SCR02_CrashKirby            ; 16AA52/ABAC
    .word       SCR02_CrashExplosion        ; 16AA54/15AD
    .word       SCR02_CrashShake            ; 16AA56/3CAD
    .word       SCR02_CrashKirbyCenter      ; 16AA58/43AD
    .word       SCR02_KParticle0B           ; 16AA5A/97AD
    .word       SCR02_ViolentShake          ; 16AA5C/0DAF
    .word       SCR02_KParticle0D           ; 16AA5E/47AF
    .word       SCR02_WaterBubble           ; 16AA60/69AF
    .word       SCR02_Fireball              ; 16AA62/FCAF
    .word       SCR02_StarDeath             ; 16AA64/49B0
    .word       SCR02_SmallStarDeath        ; 16AA66/71B0
    .word       SCR02_KParticle12           ; 16AA68/A0B0
    .word       SCR02_HiJumpStar            ; 16AA6A/E5B1
    .word       SCR02_KParticle14           ; 16AA6C/E5AE
    .word       SCR02_VerticalShake         ; 16AA6E/E2AE
    .word       SCR02_TomatoHeal            ; 16AA70/2AB2
    .word       SCR02_KParticle17           ; 16AA72/52B2
    .word       SCR02_BossHurt              ; 16AA74/6FB2
    .word       SCR02_KParticle19           ; 16AA76/93B2
    .word       SCR02_KParticle1A           ; 16AA78/CEAE
    .word       SCR02_SparkParticle         ; 16AA7A/F5B2
    .word       SCR02_DrinkHeal             ; 16AA7C/06B2
    .word       SCR02_EnemyHit              ; 16AA7E/0CAC
    .word       SCR02_SwallowSparkles       ; 16AA80/23AC
    .word       SCR02_TornadoSmoke          ; 16AA82/93AB
SCR02_BumpStar:
    ASMCALL     $AA96                       ; 16AA84/D096AA
    SETPOSE     #$0A                        ; 16AA87/500A
    ASMCALL     $AAA3                       ; 16AA89/D0A3AA
    ASMCALL     $AAE9, WAIT #3              ; 16AA8C/D3E9AA
L_16AA8F:
    ASMCALL     $AAE9, WAIT #3              ; 16AA8F/D3E9AA
L_16AA92:
    ZEROVEL                                 ; 16AA92/38
    WAIT        #8                          ; 16AA93/0608
L_16AA95:
    END                                     ; 16AA95/00

; CODE OR DATA -- $16AA96 .. $16AB36
incbinRange "../split/prg/bank16.bin", $0A96, $0B36

SCR02_SkidSmoke:
    SETZPOS     #$00FF                      ; 16AB36/3AFF00
    MOV         VAR0,#$03                   ; 16AB39/0D0003
L_16AB3C:
    ASMCALL     $AB49                       ; 16AB3C/D049AB
    SETPOSE     #$00, WAIT #2               ; 16AB3F/5200
L_16AB41:
    INCPOSE     WAIT #2                     ; 16AB41/72
L_16AB42:
    ASMCALL     $AB76                       ; 16AB42/D076AB
    JNE         L_16AB3C                    ; 16AB45/0B3CAB
    END                                     ; 16AB48/00

; CODE OR DATA -- $16AB49 .. $16AB93
incbinRange "../split/prg/bank16.bin", $0B49, $0B93

SCR02_TornadoSmoke:
    SETZPOS     #$00FF                      ; 16AB93/3AFF00
L_16AB96:
    ASMCALL     $ABA3                       ; 16AB96/D0A3AB
    SETPOSE     #$00, WAIT #2               ; 16AB99/5200
L_16AB9B:
    INCPOSE     WAIT #2                     ; 16AB9B/72
L_16AB9C:
    ASMCALL     $ABD0                       ; 16AB9C/D0D0AB
    JNE         L_16AB96                    ; 16AB9F/0B96AB
    END                                     ; 16ABA2/00

; CODE OR DATA -- $16ABA3 .. $16ABDC
incbinRange "../split/prg/bank16.bin", $0BA3, $0BDC

SCR02_KParticle06:
    LOOP        #4                          ; 16ABDC/0104
        ASMCALL     $AB49                       ; 16ABDE/D049AB
        SETPOSE     #$0A, WAIT #4               ; 16ABE1/540A
L_16ABE3:
    ENDLOOP                                 ; 16ABE3/02
    END                                     ; 16ABE4/00

SCR02_KParticle02:
    ONTICK      $16ABF8                     ; 16ABE5/08F8AB16
    ASMCALL     $8FDC                       ; 16ABE9/D0DC8F // Set pose (respect facing)
    .byte       $02                         ; 16ABEC/02
    SETYVEL     #$FF9A                      ; 16ABED/C09AFF
    ASMCALL     $E26A                       ; 16ABF0/D06AE2 // Set X velocity (respect facing)
    .word       $0033                       ; 16ABF3/3300
    WAIT        #56                         ; 16ABF5/0638
L_16ABF7:
    END                                     ; 16ABF7/00

; CODE OR DATA -- $16ABF8 .. $16AC0C
incbinRange "../split/prg/bank16.bin", $0BF8, $0C0C

SCR02_EnemyHit:
    SETZPOS     #$00FE                      ; 16AC0C/3AFE00
    ASMCALL     $AC15, WAIT #2              ; 16AC0F/D215AC // Set pose to 0x58 + (frame_counter % 4)
L_16AC12:
    SETPOSE     #$5C, WAIT #2               ; 16AC12/525C
L_16AC14:
    END                                     ; 16AC14/00

; CODE OR DATA -- $16AC15 .. $16AC23
incbinRange "../split/prg/bank16.bin", $0C15, $0C23

SCR02_SwallowSparkles:
    SETZPOS     #$00FF                      ; 16AC23/3AFF00
    LOOP        #8                          ; 16AC26/0108
        ASMCALL     $AC30                       ; 16AC28/D030AC
        SETPOSE     #$5D, WAIT #2               ; 16AC2B/525D
L_16AC2D:
        INCPOSE     WAIT #2                     ; 16AC2D/72
L_16AC2E:
    ENDLOOP                                 ; 16AC2E/02
    END                                     ; 16AC2F/00

; CODE OR DATA -- $16AC30 .. $16AC72
incbinRange "../split/prg/bank16.bin", $0C30, $0C72

SCR02_BlockDestroyed:
    SETZPOS     #$00C1                      ; 16AC72/3AC100
    ZEROVEL                                 ; 16AC75/38
    SETPOSE     #$0B, WAIT #3               ; 16AC76/530B
L_16AC78:
    INCPOSE     WAIT #3                     ; 16AC78/73
L_16AC79:
    INCPOSE     WAIT #4                     ; 16AC79/74
L_16AC7A:
    END                                     ; 16AC7A/00

SCR02_SplashIn:
    SETZPOS     #$00FF                      ; 16AC7B/3AFF00
    ASMCALL     $AC8D                       ; 16AC7E/D08DAC
    ASMCALL     $DE4B                       ; 16AC81/D04BDE // Play sound effect
    .byte       $1F                         ; 16AC84/1F
    SETPOSE     #$18, WAIT #1               ; 16AC85/5118
L_16AC87:
    LOOP        #20                         ; 16AC87/0114
        INCPOSE     WAIT #1                     ; 16AC89/71
L_16AC8A:
    ENDLOOP                                 ; 16AC8A/02
    INCPOSE     WAIT #3                     ; 16AC8B/73
L_16AC8C:
    END                                     ; 16AC8C/00

; CODE OR DATA -- $16AC8D .. $16AC9A
incbinRange "../split/prg/bank16.bin", $0C8D, $0C9A

SCR02_SplashOut:
    SETZPOS     #$00FF                      ; 16AC9A/3AFF00
    ASMCALL     $AC8D                       ; 16AC9D/D08DAC
    ASMCALL     $DE4B                       ; 16ACA0/D04BDE // Play sound effect
    .byte       $1F                         ; 16ACA3/1F
    SETPOSE     #$2D, WAIT #3               ; 16ACA4/532D
L_16ACA6:
    INCPOSE     WAIT #5                     ; 16ACA6/75
L_16ACA7:
    INCPOSE     WAIT #2                     ; 16ACA7/72
L_16ACA8:
    INCPOSE     WAIT #1                     ; 16ACA8/71
L_16ACA9:
    INCPOSE     WAIT #1                     ; 16ACA9/71
L_16ACAA:
    END                                     ; 16ACAA/00

SCR02_CrashKirby:
    ONPOSITION  $D9BB                       ; 16ACAB/21BBD9
    ASMCALL     $ACBD                       ; 16ACAE/D0BDAC
    ASMCALL     $E23C, WAIT #1              ; 16ACB1/D13CE2 // Unknown ASM $E23C
    .word       $1100                       ; 16ACB4/0011
L_16ACB6:
    ADDPOSE     #8, WAIT #1                 ; 16ACB6/6108
L_16ACB8:
    ADDPOSE     #-8, WAIT #1                ; 16ACB8/61F8
L_16ACBA:
    A_JMP       L_16ACB6                    ; 16ACBA/17B6AC

; CODE OR DATA -- $16ACBD .. $16AD15
incbinRange "../split/prg/bank16.bin", $0CBD, $0D15

SCR02_CrashExplosion:
    ASMCALL     $AD1F                       ; 16AD15/D01FAD
    SETPOSE     #$10, WAIT #1               ; 16AD18/5110
L_16AD1A:
    LOOP        #7                          ; 16AD1A/0107
        INCPOSE     WAIT #1                     ; 16AD1C/71
L_16AD1D:
    ENDLOOP                                 ; 16AD1D/02
    END                                     ; 16AD1E/00

; CODE OR DATA -- $16AD1F .. $16AD3C
incbinRange "../split/prg/bank16.bin", $0D1F, $0D3C

SCR02_CrashShake:
    LOOP        #3                          ; 16AD3C/0103
        A_JSR       L_16AF15                    ; 16AD3E/1815AF
    ENDLOOP                                 ; 16AD41/02
    END                                     ; 16AD42/00

SCR02_CrashKirbyCenter:
    ASMCALL     $AD63                       ; 16AD43/D063AD
    ASMCALL     $E23C, WAIT #3              ; 16AD46/D33CE2 // Unknown ASM $E23C
    .word       $4400                       ; 16AD49/0044
L_16AD4B:
    ADD         VAR1,#-128                  ; 16AD4B/13010280
    ASMCALL     $E23C                       ; 16AD4F/D03CE2 // Unknown ASM $E23C
    .word       $1100                       ; 16AD52/0011
    ASMCALL     $AD77                       ; 16AD54/D077AD // Unknown ASM $16AD77
    .byte       $32                         ; 16AD57/32
    .byte       $20                         ; 16AD58/20
    LOOP        #6                          ; 16AD59/0106
        WAIT        #1                          ; 16AD5B/0601
L_16AD5D:
        ADDPOSE     #8, WAIT #1                 ; 16AD5D/6108
L_16AD5F:
        ADDPOSE     #-8                         ; 16AD5F/60F8
    ENDLOOP                                 ; 16AD61/02
    END                                     ; 16AD62/00

; CODE OR DATA -- $16AD63 .. $16AD97
incbinRange "../split/prg/bank16.bin", $0D63, $0D97

SCR02_KParticle0B:
    ASMCALL     $DE4B                       ; 16AD97/D04BDE // Play sound effect
    .byte       $1A                         ; 16AD9A/1A
    ASMCALL     $AE37                       ; 16AD9B/D037AE
    ASMCALL     $E23C                       ; 16AD9E/D03CE2 // Unknown ASM $E23C
    .word       $0180                       ; 16ADA1/8001
    ONTICK      $16ADEA                     ; 16ADA3/08EAAD16
L_16ADA7:
    SETPOSE     #$42, WAIT #1               ; 16ADA7/5142
L_16ADA9:
    LOOP        #6                          ; 16ADA9/0106
        INCPOSE     WAIT #1                     ; 16ADAB/71
L_16ADAC:
    ENDLOOP                                 ; 16ADAC/02
    A_JMP       L_16ADA7                    ; 16ADAD/17A7AD

L_16ADB0:
    ONPOSITION  $D968                       ; 16ADB0/2168D9
    SETXPOS     #$0080                      ; 16ADB3/2A8000
    SETYPOS     #$0028                      ; 16ADB6/2B2800
    TASK        L_16ADD6                    ; 16ADB9/07D6AD
    ZEROVEL                                 ; 16ADBC/38
    SETYVEL     #$0080                      ; 16ADBD/C08000
    LOOP        #6                          ; 16ADC0/0106
        SETPOSE     #$49, WAIT #1               ; 16ADC2/5149
L_16ADC4:
        LOOP        #6                          ; 16ADC4/0106
            INCPOSE     WAIT #1                     ; 16ADC6/71
L_16ADC7:
        ENDLOOP                                 ; 16ADC7/02
    ENDLOOP                                 ; 16ADC8/02
    LOOP        #6                          ; 16ADC9/0106
        SETPOSE     #$50, WAIT #2               ; 16ADCB/5250
L_16ADCD:
        INCPOSE     WAIT #2                     ; 16ADCD/72
L_16ADCE:
        INCPOSE     WAIT #2                     ; 16ADCE/72
L_16ADCF:
        INCPOSE     WAIT #2                     ; 16ADCF/72
L_16ADD0:
    ENDLOOP                                 ; 16ADD0/02
    MOV         $61CB,#$01                  ; 16ADD1/11CB6101
    END                                     ; 16ADD5/00

L_16ADD6:
    ASMCALL     $DE4B                       ; 16ADD6/D04BDE // Play sound effect
    .byte       $44                         ; 16ADD9/44
    WAIT        #26                         ; 16ADDA/061A
L_16ADDC:
    ASMCALL     $DE4B, WAIT #4              ; 16ADDC/D44BDE // Play sound effect
    .byte       $44                         ; 16ADDF/44
L_16ADE0:
    ASMCALL     $AE6C                       ; 16ADE0/D06CAE
    LOOP        #7                          ; 16ADE3/0107
        ASMCALL     $AE84, WAIT #8              ; 16ADE5/D884AE
L_16ADE8:
    ENDLOOP                                 ; 16ADE8/02
    ENDTASK                                 ; 16ADE9/0C

; CODE OR DATA -- $16ADEA .. $16AECE
incbinRange "../split/prg/bank16.bin", $0DEA, $0ECE

SCR02_KParticle1A:
    ASMCALL     $E298                       ; 16AECE/D098E2 // Set PPUSCROLL to zero
    LOOP        #4                          ; 16AED1/0104
        ASMCALL     $E2A1, WAIT #2              ; 16AED3/D2A1E2 // Add `arg` to PPUSCROLL
        .word       $0200                       ; 16AED6/0002
L_16AED8:
        ASMCALL     $E2A1, WAIT #2              ; 16AED8/D2A1E2 // Add `arg` to PPUSCROLL
        .word       $FE00                       ; 16AEDB/00FE
L_16AEDD:
    ENDLOOP                                 ; 16AEDD/02
    ASMCALL     $E298                       ; 16AEDE/D098E2 // Set PPUSCROLL to zero
    END                                     ; 16AEE1/00

SCR02_VerticalShake:
    TASK        L_16AF07                    ; 16AEE2/0707AF
SCR02_KParticle14:
    ASMCALL     $DE4B                       ; 16AEE5/D04BDE // Play sound effect
    .byte       $40                         ; 16AEE8/40
    ASMCALL     $E298                       ; 16AEE9/D098E2 // Set PPUSCROLL to zero
    MOV         VAR6,#$00                   ; 16AEEC/0D0600
L_16AEEF:
    ASMCALL     $E2A1, WAIT #2              ; 16AEEF/D2A1E2 // Add `arg` to PPUSCROLL
    .word       $0200                       ; 16AEF2/0002
L_16AEF4:
    MOV         REG,VAR6                    ; 16AEF4/1E06
    JNE         L_16AF03                    ; 16AEF6/0B03AF
    ASMCALL     $E2A1, WAIT #2              ; 16AEF9/D2A1E2 // Add `arg` to PPUSCROLL
    .word       $FE00                       ; 16AEFC/00FE
L_16AEFE:
    MOV         REG,VAR6                    ; 16AEFE/1E06
    JEQ         L_16AEEF                    ; 16AF00/0AEFAE
L_16AF03:
    ASMCALL     $E298                       ; 16AF03/D098E2 // Set PPUSCROLL to zero
    END                                     ; 16AF06/00

L_16AF07:
    WAIT        #16                         ; 16AF07/0610
L_16AF09:
    MOV         VAR6,#$01                   ; 16AF09/0D0601
    ENDTASK                                 ; 16AF0C/0C

SCR02_ViolentShake:
    A_JSR       SUB_ViolentShake            ; 16AF0D/1811AF
    END                                     ; 16AF10/00

SUB_ViolentShake:
    ASMCALL     $DE4B                       ; 16AF11/D04BDE // Play sound effect
    .byte       $40                         ; 16AF14/40
L_16AF15:
    ASMCALL     $E298                       ; 16AF15/D098E2 // Set PPUSCROLL to zero
    ASMCALL     $E2A1, WAIT #2              ; 16AF18/D2A1E2 // Add `arg` to PPUSCROLL
    .word       $0200                       ; 16AF1B/0002
L_16AF1D:
    LOOP        #2                          ; 16AF1D/0102
        ASMCALL     $E2A1, WAIT #2              ; 16AF1F/D2A1E2 // Add `arg` to PPUSCROLL
        .word       $FC02                       ; 16AF22/02FC
L_16AF24:
        ASMCALL     $E2A1, WAIT #2              ; 16AF24/D2A1E2 // Add `arg` to PPUSCROLL
        .word       $04FC                       ; 16AF27/FC04
L_16AF29:
        ASMCALL     $E2A1, WAIT #2              ; 16AF29/D2A1E2 // Add `arg` to PPUSCROLL
        .word       $FE04                       ; 16AF2C/04FE
L_16AF2E:
        ASMCALL     $E2A1, WAIT #2              ; 16AF2E/D2A1E2 // Add `arg` to PPUSCROLL
        .word       $00FC                       ; 16AF31/FC00
L_16AF33:
        ASMCALL     $E2A1, WAIT #2              ; 16AF33/D2A1E2 // Add `arg` to PPUSCROLL
        .word       $0204                       ; 16AF36/0402
L_16AF38:
        ASMCALL     $E2A1, WAIT #2              ; 16AF38/D2A1E2 // Add `arg` to PPUSCROLL
        .word       $FCFC                       ; 16AF3B/FCFC
L_16AF3D:
        ASMCALL     $E2A1, WAIT #2              ; 16AF3D/D2A1E2 // Add `arg` to PPUSCROLL
        .word       $0402                       ; 16AF40/0204
L_16AF42:
    ENDLOOP                                 ; 16AF42/02
    ASMCALL     $E298, WAIT #2              ; 16AF43/D298E2 // Set PPUSCROLL to zero
L_16AF46:
    A_RTS                                   ; 16AF46/19

SCR02_KParticle0D:
    ASMCALL     $AF54                       ; 16AF47/D054AF
    SETZPOS     #$00FF                      ; 16AF4A/3AFF00
    SETYVEL     #$FF00                      ; 16AF4D/C000FF
    SETPOSE     #$54, WAIT #2               ; 16AF50/5254
L_16AF52:
    INCPOSE     WAIT #2                     ; 16AF52/72
L_16AF53:
    END                                     ; 16AF53/00

; CODE OR DATA -- $16AF54 .. $16AF69
incbinRange "../split/prg/bank16.bin", $0F54, $0F69

SCR02_WaterBubble:
    SETZPOS     #$00FF                      ; 16AF69/3AFF00
    ASMCALL     $8FDC                       ; 16AF6C/D0DC8F // Set pose (respect facing)
    .byte       $04                         ; 16AF6F/04
    SETYVEL     #$FF00                      ; 16AF70/C000FF
    ASMCALL     $AFBD                       ; 16AF73/D0BDAF
    ONTICK      $16AF82                     ; 16AF76/0882AF16
L_16AF7A:
    SETPOSE     #$04, WAIT #10              ; 16AF7A/5A04
L_16AF7C:
    INCPOSE     WAIT #8                     ; 16AF7C/78
L_16AF7D:
    DECPOSE     WAIT #8                     ; 16AF7D/88
L_16AF7E:
    INCPOSE     WAIT #10                    ; 16AF7E/7A
L_16AF7F:
    A_JMP       L_16AF7A                    ; 16AF7F/177AAF

; CODE OR DATA -- $16AF82 .. $16AFFC
incbinRange "../split/prg/bank16.bin", $0F82, $0FFC

SCR02_Fireball:
    ONTICK      $16B011                     ; 16AFFC/0811B016
    LOOP        #6                          ; 16B000/0106
        ASMCALL     $B01E                       ; 16B002/D01EB0
        ASMCALL     $E26A                       ; 16B005/D06AE2 // Set X velocity (respect facing)
        .word       $FE00                       ; 16B008/00FE
        ASMCALL     $8FDC, WAIT #2              ; 16B00A/D2DC8F // Set pose (respect facing)
        .byte       $06                         ; 16B00D/06
L_16B00E:
        INC2POSE    WAIT #2                     ; 16B00E/92
L_16B00F:
    ENDLOOP                                 ; 16B00F/02
    END                                     ; 16B010/00

; CODE OR DATA -- $16B011 .. $16B049
incbinRange "../split/prg/bank16.bin", $1011, $1049

SCR02_StarDeath:
    SPRITEMAP   $1C9CD7                     ; 16B049/1AD79C1C
    ASMCALL     $E23C, WAIT #3              ; 16B04D/D33CE2 // Unknown ASM $E23C
    .word       $0600                       ; 16B050/0006
L_16B052:
    SETPOSE     #$11, WAIT #3               ; 16B052/5311
L_16B054:
    ASMCALL     $E23C                       ; 16B054/D03CE2 // Unknown ASM $E23C
    .word       $0300                       ; 16B057/0003
    INCPOSE     WAIT #3                     ; 16B059/73
L_16B05A:
    INCPOSE     WAIT #3                     ; 16B05A/73
L_16B05B:
    ASMCALL     $E23C                       ; 16B05B/D03CE2 // Unknown ASM $E23C
    .word       $0180                       ; 16B05E/8001
    SETPOSE     #$10, WAIT #3               ; 16B060/5310
L_16B062:
    INCPOSE     WAIT #3                     ; 16B062/73
L_16B063:
    ASMCALL     $E23C                       ; 16B063/D03CE2 // Unknown ASM $E23C
    .word       $00C0                       ; 16B066/C000
    LOOP        #10                         ; 16B068/010A
        INCPOSE     WAIT #3                     ; 16B06A/73
L_16B06B:
        INCPOSE     WAIT #3                     ; 16B06B/73
L_16B06C:
        SETPOSE     #$10, WAIT #3               ; 16B06C/5310
L_16B06E:
        INCPOSE     WAIT #3                     ; 16B06E/73
L_16B06F:
    ENDLOOP                                 ; 16B06F/02
    END                                     ; 16B070/00

SCR02_SmallStarDeath:
    ASMCALL     $B083                       ; 16B071/D083B0
    SETPOSE     #$0A                        ; 16B074/500A
    ASMCALL     $AAA3                       ; 16B076/D0A3AA
    ASMCALL     $AAE9, WAIT #3              ; 16B079/D3E9AA
L_16B07C:
    ASMCALL     $AAE9, WAIT #3              ; 16B07C/D3E9AA
L_16B07F:
    ZEROVEL                                 ; 16B07F/38
    WAIT        #2                          ; 16B080/0602
L_16B082:
    END                                     ; 16B082/00

; CODE OR DATA -- $16B083 .. $16B0A0
incbinRange "../split/prg/bank16.bin", $1083, $10A0

SCR02_KParticle12:
    SETBANK     #$1C                        ; 16B0A0/281C
    ASMCALL     $B0AA                       ; 16B0A2/D0AAB0
    ONTICK      $16B0E0                     ; 16B0A5/08E0B016
L_16B0A9:
    HALT                                    ; 16B0A9/09

; CODE OR DATA -- $16B0AA .. $16B1E5
incbinRange "../split/prg/bank16.bin", $10AA, $11E5

SCR02_HiJumpStar:
    SETPOSE     #$0A                        ; 16B1E5/500A
    SETYVEL     #$0400                      ; 16B1E7/C00004
    ASMCALL     $B1EE, WAIT #8              ; 16B1EA/D8EEB1 // Set X velocity to opposite of Kirby's
L_16B1ED:
    END                                     ; 16B1ED/00

; CODE OR DATA -- $16B1EE .. $16B206
incbinRange "../split/prg/bank16.bin", $11EE, $1206

SCR02_DrinkHeal:
    ZEROVEL                                 ; 16B206/38
    ASMCALL     $DFE5                       ; 16B207/D0E5DF // Freeze all objects
    ASMCALL     $B21D                       ; 16B20A/D01DB2 // Get drink heal amount (2 on normal game, 1 on extra game)
    LOOP        REG                         ; 16B20D/22
        ASMCALL     $DE4B                       ; 16B20E/D04BDE // Play sound effect
        .byte       $12                         ; 16B211/12
        ASMCALL     $B23C, WAIT #8              ; 16B212/D83CB2 // Heal Kirby by 1 unit (return 1 if fully healed)
L_16B215:
        BREAKNE     L_16B219                    ; 16B215/1519B2
    ENDLOOP                                 ; 16B218/02
L_16B219:
    ASMCALL     $DFFB                       ; 16B219/D0FBDF // Unfreeze all objects
    END                                     ; 16B21C/00

; CODE OR DATA -- $16B21D .. $16B22A
incbinRange "../split/prg/bank16.bin", $121D, $122A

SCR02_TomatoHeal:
    ZEROVEL                                 ; 16B22A/38
    ASMCALL     $DFE5                       ; 16B22B/D0E5DF // Freeze all objects
L_16B22E:
    ASMCALL     $DE4B                       ; 16B22E/D04BDE // Play sound effect
    .byte       $12                         ; 16B231/12
    ASMCALL     $B23C, WAIT #8              ; 16B232/D83CB2 // Heal Kirby by 1 unit (return 1 if fully healed)
L_16B235:
    JEQ         L_16B22E                    ; 16B235/0A2EB2
    ASMCALL     $DFFB                       ; 16B238/D0FBDF // Unfreeze all objects
    END                                     ; 16B23B/00

; CODE OR DATA -- $16B23C .. $16B252
incbinRange "../split/prg/bank16.bin", $123C, $1252

SCR02_KParticle17:
    ONTICK      $16B25F                     ; 16B252/085FB216
    MOV         VAR6,#$00                   ; 16B256/0D0600
L_16B259:
    A_JSR       SUB_ViolentShake            ; 16B259/1811AF
    A_JMP       L_16B259                    ; 16B25C/1759B2

; CODE OR DATA -- $16B25F .. $16B26F
incbinRange "../split/prg/bank16.bin", $125F, $126F

SCR02_BossHurt:
    ONTICK      $16B274                     ; 16B26F/0874B216
    HALT                                    ; 16B273/09

; CODE OR DATA -- $16B274 .. $16B293
incbinRange "../split/prg/bank16.bin", $1274, $1293

SCR02_KParticle19:
    MOV         REG,#$02                    ; 16B293/1B02
    ASMCALL     $F862                       ; 16B295/D062F8
    LOOP        #90                         ; 16B298/015A
        ASMCALL     $9952, WAIT #1              ; 16B29A/D15299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 16B29D/00
        .byte       $00                         ; 16B29E/00
        .byte       $00                         ; 16B29F/00
        .byte       $00                         ; 16B2A0/00
L_16B2A1:
        ASMCALL     Load_Palette, WAIT #2       ; 16B2A1/D261DF // Load_Palette, palette, start_index, entries
        .word       $B2E5                       ; 16B2A4/E5B2
        .byte       $10                         ; 16B2A6/10
        .byte       $04                         ; 16B2A7/04
L_16B2A8:
        ASMCALL     Load_Palette, WAIT #1       ; 16B2A8/D161DF // Load_Palette, palette, start_index, entries
        .word       $B2E9                       ; 16B2AB/E9B2
        .byte       $10                         ; 16B2AD/10
        .byte       $04                         ; 16B2AE/04
L_16B2AF:
        ASMCALL     $9952, WAIT #1              ; 16B2AF/D15299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 16B2B2/00
        .byte       $00                         ; 16B2B3/00
        .byte       $00                         ; 16B2B4/00
        .byte       $00                         ; 16B2B5/00
L_16B2B6:
        ASMCALL     Load_Palette, WAIT #2       ; 16B2B6/D261DF // Load_Palette, palette, start_index, entries
        .word       $B2ED                       ; 16B2B9/EDB2
        .byte       $10                         ; 16B2BB/10
        .byte       $04                         ; 16B2BC/04
L_16B2BD:
        ASMCALL     Load_Palette, WAIT #1       ; 16B2BD/D161DF // Load_Palette, palette, start_index, entries
        .word       $B2F1                       ; 16B2C0/F1B2
        .byte       $10                         ; 16B2C2/10
        .byte       $04                         ; 16B2C3/04
L_16B2C4:
    ENDLOOP                                 ; 16B2C4/02
    MOV         REG,$0783                   ; 16B2C5/1C8307
    ASMCALL     $F862                       ; 16B2C8/D062F8
    LOOP        #30                         ; 16B2CB/011E
        ASMCALL     Load_Palette, WAIT #2       ; 16B2CD/D261DF // Load_Palette, palette, start_index, entries
        .word       $B2E5                       ; 16B2D0/E5B2
        .byte       $10                         ; 16B2D2/10
        .byte       $04                         ; 16B2D3/04
L_16B2D4:
        ASMCALL     Load_Palette, WAIT #2       ; 16B2D4/D261DF // Load_Palette, palette, start_index, entries
        .word       $B2E9                       ; 16B2D7/E9B2
        .byte       $10                         ; 16B2D9/10
        .byte       $04                         ; 16B2DA/04
L_16B2DB:
    ENDLOOP                                 ; 16B2DB/02
    ASMCALL     $9CB3                       ; 16B2DC/D0B39C // Load some palette? (Kirby's palette?)
    A_AND       $05FB,#$BF                  ; 16B2DF/16FB0500BF
    END                                     ; 16B2E4/00

; CODE OR DATA -- $16B2E5 .. $16B2F5
incbinRange "../split/prg/bank16.bin", $12E5, $12F5

SCR02_SparkParticle:
    SETZPOS     #$00C1                      ; 16B2F5/3AC100
    ASMCALL     $B304                       ; 16B2F8/D004B3
    ASMCALL     $E23C                       ; 16B2FB/D03CE2 // Unknown ASM $E23C
    .word       $0200                       ; 16B2FE/0002
    SETPOSE     #$56, WAIT #2               ; 16B300/5256
L_16B302:
    INCPOSE     WAIT #2                     ; 16B302/72
L_16B303:
    END                                     ; 16B303/00

; CODE OR DATA -- $16B304 .. $16B35B
incbinRange "../split/prg/bank16.bin", $1304, $135B

Script03_KirbyProjectile:
    SETBANK     #$21                        ; 16B35B/2821
    SPRITEMAP   $1C9CD7                     ; 16B35D/1AD79C1C
    MOV         REG,VAR3                    ; 16B361/1E03
    TABLEJMP    #14                         ; 16B363/0F0E
    .word       SCR03_StarExhale            ; 16B365/B7B3
    .word       SCR03_Fire                  ; 16B367/82B5
    .word       SCR03_Cutter                ; 16B369/DAB5
    .word       SCR03_Laser                 ; 16B36B/8EB6
    .word       SCR03_Mike                  ; 16B36D/F8B7
    .word       SCR03_AirExhale             ; 16B36F/66B8
    .word       SCR03_Beam                  ; 16B371/BFB8
    .word       SCR03_Crash                 ; 16B373/DFB8
    .word       SCR03_DoubleStarExhale      ; 16B375/6BB4
    .word       SCR03_ThrownEnemy           ; 16B377/2DB5
    .word       SCR03_IceCube               ; 16B379/AAB8
    .word       SCR03_GrabbedEnemy          ; 16B37B/E5B8
    .word       SCR03_KProj0C               ; 16B37D/5FB4
    .word       SCR03_StarRodStar           ; 16B37F/65B4
L_16B381:
    ZEROVEL                                 ; 16B381/38
    MOV         REG,VAR3                    ; 16B382/1E03
    MOV         VAR3,#$FF                   ; 16B384/0D03FF
    TABLEJMP    #14                         ; 16B387/0F0E
    .word       L_16B3B0                    ; 16B389/B0B3
    .word       L_16B3B0                    ; 16B38B/B0B3
    .word       L_16B3B0                    ; 16B38D/B0B3
    .word       L_16B3B0                    ; 16B38F/B0B3
    .word       L_16B3AF                    ; 16B391/AFB3
    .word       L_16B3A5                    ; 16B393/A5B3
    .word       L_16B3B0                    ; 16B395/B0B3
    .word       L_16B3AF                    ; 16B397/AFB3
    .word       L_16B3AF                    ; 16B399/AFB3
    .word       L_16B3AF                    ; 16B39B/AFB3
    .word       L_16B3B0                    ; 16B39D/B0B3
    .word       L_16B3AF                    ; 16B39F/AFB3
    .word       L_16B3B0                    ; 16B3A1/B0B3
    .word       L_16B3B0                    ; 16B3A3/B0B3
L_16B3A5:
    SETZPOS     #$0080                      ; 16B3A5/3A8000
    SPRITEMAP   $1C9F16                     ; 16B3A8/1A169F1C
    SETPOSE     #$0D, WAIT #2               ; 16B3AC/520D
L_16B3AE:
    INCPOSE     WAIT #2                     ; 16B3AE/72
L_16B3AF:
    END                                     ; 16B3AF/00

L_16B3B0:
    SPRITEMAP   $1C94CE                     ; 16B3B0/1ACE941C
    A_JMP       SCR02_EnemyHit              ; 16B3B4/170CAC

SCR03_StarExhale:
    MOV         VAR0,#$0A                   ; 16B3B7/0D000A
L_16B3BA:
    ONPOSITION  $D9BB                       ; 16B3BA/21BBD9
    ONTICK      $16B40A                     ; 16B3BD/080AB416
    ASMCALL     $E26A                       ; 16B3C1/D06AE2 // Set X velocity (respect facing)
    .word       $0400                       ; 16B3C4/0004
L_16B3C6:
    ASMCALL     $98D5                       ; 16B3C6/D0D598 // Get facing as 0 or 0x80
    JNE         L_16B3D4                    ; 16B3C9/0BD4B3
L_16B3CC:
    SETPOSE     #$10, WAIT #4               ; 16B3CC/5410
L_16B3CE:
    INCPOSE     WAIT #4                     ; 16B3CE/74
L_16B3CF:
    INCPOSE     WAIT #4                     ; 16B3CF/74
L_16B3D0:
    INCPOSE     WAIT #4                     ; 16B3D0/74
L_16B3D1:
    A_JMP       L_16B3CC                    ; 16B3D1/17CCB3

L_16B3D4:
    SETPOSE     #$13, WAIT #4               ; 16B3D4/5413
L_16B3D6:
    DECPOSE     WAIT #4                     ; 16B3D6/84
L_16B3D7:
    DECPOSE     WAIT #4                     ; 16B3D7/84
L_16B3D8:
    DECPOSE     WAIT #4                     ; 16B3D8/84
L_16B3D9:
    A_JMP       L_16B3D4                    ; 16B3D9/17D4B3

L_16B3DC:
    ONTICK      $16B420                     ; 16B3DC/0820B416
L_16B3E0:
    TASK        L_16B3C6                    ; 16B3E0/07C6B3
    ZEROVEL                                 ; 16B3E3/38
    WAIT        #1                          ; 16B3E4/0601
L_16B3E6:
    LOOP        #60                         ; 16B3E6/013C
        ADDYVEL     #$0004                      ; 16B3E8/2F0400
        WAIT        #1                          ; 16B3EB/0601
L_16B3ED:
    ENDLOOP                                 ; 16B3ED/02
    ENDLASTTASK                             ; 16B3EE/12
    ASMCALL     $DE4B                       ; 16B3EF/D04BDE // Play sound effect
    .byte       $2E                         ; 16B3F2/2E
    A_JMP       L_16B3FA                    ; 16B3F3/17FAB3

L_16B3F6:
    ASMCALL     $DE4B                       ; 16B3F6/D04BDE // Play sound effect
    .byte       $41                         ; 16B3F9/41
L_16B3FA:
    MOV         VAR3,#$FF                   ; 16B3FA/0D03FF
    SETZPOS     #$00C1                      ; 16B3FD/3AC100
    SPRITEMAP   $1C94CE                     ; 16B400/1ACE941C
    ZEROVEL                                 ; 16B404/38
    SETPOSE     #$0B, WAIT #3               ; 16B405/530B
L_16B407:
    INCPOSE     WAIT #3                     ; 16B407/73
L_16B408:
    INCPOSE     WAIT #4                     ; 16B408/74
L_16B409:
    END                                     ; 16B409/00

; CODE OR DATA -- $16B40A .. $16B45F
incbinRange "../split/prg/bank16.bin", $140A, $145F

SCR03_KProj0C:
    MOV         VAR0,#$01                   ; 16B45F/0D0001
    A_JMP       L_16B3BA                    ; 16B462/17BAB3

SCR03_StarRodStar:
    MOV         VAR0,#$0A                   ; 16B465/0D000A
    A_JMP       L_16B3BA                    ; 16B468/17BAB3

SCR03_DoubleStarExhale:
    MOV         VAR0,#$19                   ; 16B46B/0D0019
    ASMCALL     $E26A                       ; 16B46E/D06AE2 // Set X velocity (respect facing)
    .word       $0400                       ; 16B471/0004
L_16B473:
    ONTICK      $16B499                     ; 16B473/0899B416
    ONPOSITION  $D9BB                       ; 16B477/21BBD9
    ASMCALL     $98D5                       ; 16B47A/D0D598 // Get facing as 0 or 0x80
    JNE         L_16B489                    ; 16B47D/0B89B4
L_16B480:
    SETPOSE     #$14, WAIT #4               ; 16B480/5414
L_16B482:
    LOOP        #7                          ; 16B482/0107
        INCPOSE     WAIT #4                     ; 16B484/74
L_16B485:
    ENDLOOP                                 ; 16B485/02
    A_JMP       L_16B480                    ; 16B486/1780B4

L_16B489:
    SETPOSE     #$1B, WAIT #4               ; 16B489/541B
L_16B48B:
    LOOP        #7                          ; 16B48B/0107
        DECPOSE     WAIT #4                     ; 16B48D/84
L_16B48E:
    ENDLOOP                                 ; 16B48E/02
    A_JMP       L_16B489                    ; 16B48F/1789B4

; CODE OR DATA -- $16B492 .. $16B52D
incbinRange "../split/prg/bank16.bin", $1492, $152D

SCR03_ThrownEnemy:
    MOV         VAR0,#$12                   ; 16B52D/0D0012
    ASMCALL     $B536                       ; 16B530/D036B5
    A_JMP       L_16B473                    ; 16B533/1773B4

; CODE OR DATA -- $16B536 .. $16B582
incbinRange "../split/prg/bank16.bin", $1536, $1582

SCR03_Fire:
    SETZPOS     #$00FF                      ; 16B582/3AFF00
    MOV         VAR0,#$05                   ; 16B585/0D0005
    ASMCALL     $DE4B                       ; 16B588/D04BDE // Play sound effect
    .byte       $1E                         ; 16B58B/1E
    ONTICK      $16B59F                     ; 16B58C/089FB516
    ASMCALL     $E23C                       ; 16B590/D03CE2 // Unknown ASM $E23C
    .word       $0400                       ; 16B593/0004
    ASMCALL     $B5BD, WAIT #1              ; 16B595/D1BDB5
L_16B598:
    LOOP        #7                          ; 16B598/0107
        ASMCALL     $B5C8, WAIT #1              ; 16B59A/D1C8B5
L_16B59D:
    ENDLOOP                                 ; 16B59D/02
    END                                     ; 16B59E/00

; CODE OR DATA -- $16B59F .. $16B5DA
incbinRange "../split/prg/bank16.bin", $159F, $15DA

SCR03_Cutter:
    MOV         VAR0,#$04                   ; 16B5DA/0D0004
    ONPOSITION  $D9BB                       ; 16B5DD/21BBD9
    ONTICK      $16B656                     ; 16B5E0/0856B616
    ASMCALL     $E26A, WAIT #8              ; 16B5E4/D86AE2 // Set X velocity (respect facing)
    .word       $0400                       ; 16B5E7/0004
L_16B5E9:
    ASMCALL     $E26A, WAIT #8              ; 16B5E9/D86AE2 // Set X velocity (respect facing)
    .word       $0300                       ; 16B5EC/0003
L_16B5EE:
    ASMCALL     $E26A, WAIT #8              ; 16B5EE/D86AE2 // Set X velocity (respect facing)
    .word       $0180                       ; 16B5F1/8001
L_16B5F3:
    ASMCALL     $E26A, WAIT #8              ; 16B5F3/D86AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 16B5F6/8000
L_16B5F8:
    ONTICK      $16B62A                     ; 16B5F8/082AB616
    ASMCALL     $E26A, WAIT #8              ; 16B5FC/D86AE2 // Set X velocity (respect facing)
    .word       $FF80                       ; 16B5FF/80FF
L_16B601:
    ASMCALL     $E26A, WAIT #8              ; 16B601/D86AE2 // Set X velocity (respect facing)
    .word       $FE80                       ; 16B604/80FE
L_16B606:
    ASMCALL     $E26A, WAIT #8              ; 16B606/D86AE2 // Set X velocity (respect facing)
    .word       $FD00                       ; 16B609/00FD
L_16B60B:
    ASMCALL     $E26A                       ; 16B60B/D06AE2 // Set X velocity (respect facing)
    .word       $FC00                       ; 16B60E/00FC
    HALT                                    ; 16B610/09

L_16B611:
    ASMCALL     $DE4B                       ; 16B611/D04BDE // Play sound effect
    .byte       $41                         ; 16B614/41
    ONTICK      $16B67F                     ; 16B615/087FB616
    ASMCALL     $E26A                       ; 16B619/D06AE2 // Set X velocity (respect facing)
    .word       $FEAB                       ; 16B61C/ABFE
    SETYVEL     #$FE00                      ; 16B61E/C000FE
    LOOP        #20                         ; 16B621/0114
        ADDYVEL     #$0040                      ; 16B623/2F4000
        WAIT        #1                          ; 16B626/0601
L_16B628:
    ENDLOOP                                 ; 16B628/02
    END                                     ; 16B629/00

; CODE OR DATA -- $16B62A .. $16B68E
incbinRange "../split/prg/bank16.bin", $162A, $168E

SCR03_Laser:
    ONPOSITION  $D9BB                       ; 16B68E/21BBD9
    MOV         VAR0,#$03                   ; 16B691/0D0003
    MOV         VAR2,#$04                   ; 16B694/0D0204
    ONTICK      $16B6E0                     ; 16B697/08E0B616
    ASMCALL     $E23C                       ; 16B69B/D03CE2 // Unknown ASM $E23C
    .word       $0800                       ; 16B69E/0008
    SETPOSE     #$FF, WAIT #1               ; 16B6A0/51FF
L_16B6A2:
    ASMCALL     $AD77, WAIT #1              ; 16B6A2/D177AD // Unknown ASM $16AD77
    .byte       $20                         ; 16B6A5/20
    .byte       $40                         ; 16B6A6/40
L_16B6A7:
    ADDPOSE     #4, WAIT #1                 ; 16B6A7/6104
L_16B6A9:
    ADDPOSE     #4                          ; 16B6A9/6004
    HALT                                    ; 16B6AB/09

L_16B6AC:
    ASMCALL     $DE4B                       ; 16B6AC/D04BDE // Play sound effect
    .byte       $0B                         ; 16B6AF/0B
    ZEROVEL                                 ; 16B6B0/38
    SETZPOS     #$00FF                      ; 16B6B1/3AFF00
    LOOP        #2                          ; 16B6B4/0102
        SETPOSE     #$FF, WAIT #2               ; 16B6B6/52FF
L_16B6B8:
        SETPOSE     #$2C, WAIT #2               ; 16B6B8/522C
L_16B6BA:
    ENDLOOP                                 ; 16B6BA/02
    ASMCALL     $E23C                       ; 16B6BB/D03CE2 // Unknown ASM $E23C
    .word       $0800                       ; 16B6BE/0008
    SETPOSE     #$FF, WAIT #1               ; 16B6C0/51FF
L_16B6C2:
    ONTICK      $16B6E0                     ; 16B6C2/08E0B616
    A_JMP       L_16B6A2                    ; 16B6C6/17A2B6

L_16B6C9:
    MOV         VAR3,#$FF                   ; 16B6C9/0D03FF
    ADD         VAR1,#-128                  ; 16B6CC/13010280
    ASMCALL     $E23C                       ; 16B6D0/D03CE2 // Unknown ASM $E23C
    .word       $0400                       ; 16B6D3/0004
    SETZPOS     #$00FF                      ; 16B6D5/3AFF00
    SPRITEMAP   $1C94CE                     ; 16B6D8/1ACE941C
    SETPOSE     #$00, WAIT #2               ; 16B6DC/5200
L_16B6DE:
    INCPOSE     WAIT #2                     ; 16B6DE/72
L_16B6DF:
    END                                     ; 16B6DF/00

; CODE OR DATA -- $16B6E0 .. $16B7F8
incbinRange "../split/prg/bank16.bin", $16E0, $17F8

SCR03_Mike:
    ASMCALL     $B82D                       ; 16B7F8/D02DB8 // Set pose to one of [0x0C, 0x0A, 0x08] based on remaining ability uses
    MOV         VAR0,#$0A                   ; 16B7FB/0D000A
    MOV         VAR2,#$FF                   ; 16B7FE/0D02FF
    ASMCALL     $E26A, WAIT #4              ; 16B801/D46AE2 // Set X velocity (respect facing)
    .word       $0400                       ; 16B804/0004
L_16B806:
    ASMCALL     $E26A, WAIT #4              ; 16B806/D46AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 16B809/0001
L_16B80B:
    ZEROVEL                                 ; 16B80B/38
    WAIT        #8                          ; 16B80C/0608
L_16B80E:
    SETPOSE     #$FF                        ; 16B80E/50FF
L_16B810:
    ASMCALL     $DF7D                       ; 16B810/D07DDF // Wait until (`arg1`) == #`arg2`
    .word       $61CB                       ; 16B813/CB61
    .byte       $01                         ; 16B815/01
    MOV         VAR1,#$09                   ; 16B816/0D0109
L_16B819:
    ASMCALL     $B839                       ; 16B819/D039B8
    JNE         L_16B824                    ; 16B81C/0B24B8
    WAIT        #10                         ; 16B81F/060A
L_16B821:
    A_JMP       L_16B819                    ; 16B821/1719B8

L_16B824:
    ASMCALL     $DF7D                       ; 16B824/D07DDF // Wait until (`arg1`) == #`arg2`
    .word       $61CB                       ; 16B827/CB61
    .byte       $03                         ; 16B829/03
    A_JMP       L_16B3FA                    ; 16B82A/17FAB3

; CODE OR DATA -- $16B82D .. $16B866
incbinRange "../split/prg/bank16.bin", $182D, $1866

SCR03_AirExhale:
    MOV         VAR0,#$02                   ; 16B866/0D0002
    SETZPOS     #$00FF                      ; 16B869/3AFF00
    ONTICK      $16B88C                     ; 16B86C/088CB816
    ASMCALL     $8FDC                       ; 16B870/D0DC8F // Set pose (respect facing)
    .byte       $0E                         ; 16B873/0E
    ASMCALL     $E26A, WAIT #8              ; 16B874/D86AE2 // Set X velocity (respect facing)
    .word       $0400                       ; 16B877/0004
L_16B879:
    ASMCALL     $E26A, WAIT #3              ; 16B879/D36AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 16B87C/0001
L_16B87E:
    ASMCALL     $E26A, WAIT #2              ; 16B87E/D26AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 16B881/8000
L_16B883:
    ASMCALL     $E26A, WAIT #2              ; 16B883/D26AE2 // Set X velocity (respect facing)
    .word       $0055                       ; 16B886/5500
L_16B888:
    ZEROVEL                                 ; 16B888/38
    WAIT        #8                          ; 16B889/0608
L_16B88B:
    END                                     ; 16B88B/00

; CODE OR DATA -- $16B88C .. $16B8AA
incbinRange "../split/prg/bank16.bin", $188C, $18AA

SCR03_IceCube:
    MOV         VAR0,#$0A                   ; 16B8AA/0D000A
    SETZPOS     #$00FF                      ; 16B8AD/3AFF00
    ONPOSITION  $D9BB                       ; 16B8B0/21BBD9
    SPRITEMAP   $1C9CD7                     ; 16B8B3/1AD79C1C
    SETPOSE     #$2F                        ; 16B8B7/502F
    ASMCALL     $E26A, WAIT #8              ; 16B8B9/D86AE2 // Set X velocity (respect facing)
    .word       $0400                       ; 16B8BC/0004
L_16B8BE:
    HALT                                    ; 16B8BE/09

SCR03_Beam:
    MOV         VAR0,#$03                   ; 16B8BF/0D0003
    ONTICK      $16B8D4                     ; 16B8C2/08D4B816
    ASMCALL     $E23C                       ; 16B8C6/D03CE2 // Unknown ASM $E23C
    .word       $0800                       ; 16B8C9/0008
    LOOP        #2                          ; 16B8CB/0102
        SETPOSE     #$2D, WAIT #1               ; 16B8CD/512D
L_16B8CF:
        INCPOSE     WAIT #1                     ; 16B8CF/71
L_16B8D0:
    ENDLOOP                                 ; 16B8D0/02
    SETPOSE     #$2D, WAIT #1               ; 16B8D1/512D
L_16B8D3:
    END                                     ; 16B8D3/00

; CODE OR DATA -- $16B8D4 .. $16B8DF
incbinRange "../split/prg/bank16.bin", $18D4, $18DF

SCR03_Crash:
    MOV         VAR0,#$1D                   ; 16B8DF/0D001D
    WAIT        #1                          ; 16B8E2/0601
L_16B8E4:
    END                                     ; 16B8E4/00

SCR03_GrabbedEnemy:
    MOV         VAR0,#$0A                   ; 16B8E5/0D000A
    ASMCALL     $B8EE                       ; 16B8E8/D0EEB8 // Copy spritemap and pose from parent object, and destroy parent object
    A_JMP       L_16B914                    ; 16B8EB/1714B9

; CODE OR DATA -- $16B8EE .. $16B914
incbinRange "../split/prg/bank16.bin", $18EE, $1914

L_16B914:
    SETBANK     #$21                        ; 16B914/2821
    ZEROVEL                                 ; 16B916/38
    ONMOVE      $D8F8                       ; 16B917/23F8D8
    ONTICK      $16B91F                     ; 16B91A/081FB916
    HALT                                    ; 16B91E/09

; CODE OR DATA -- $16B91F .. $16BA2F
incbinRange "../split/prg/bank16.bin", $191F, $1A2F

L_16BA2F:
    SETYVEL     #$0400                      ; 16BA2F/C00004
    ONPOSITION  $D9BB                       ; 16BA32/21BBD9
    ASMCALL     $BA73                       ; 16BA35/D073BA
    ONMOVE      $D864                       ; 16BA38/2364D8
    ONTICK      $16BA40                     ; 16BA3B/0840BA16
    HALT                                    ; 16BA3F/09

; CODE OR DATA -- $16BA40 .. $16BA95
incbinRange "../split/prg/bank16.bin", $1A40, $1A95

L_16BA95:
    ASMCALL     $BA73                       ; 16BA95/D073BA
    ONMOVE      $D864                       ; 16BA98/2364D8
L_16BA9B:
    ASMCALL     $DE4B                       ; 16BA9B/D04BDE // Play sound effect
    .byte       $40                         ; 16BA9E/40
    ASMCALL     $9952                       ; 16BA9F/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 16BAA2/00
    .byte       $00                         ; 16BAA3/00
    .byte       $0C                         ; 16BAA4/0C
    .byte       $00                         ; 16BAA5/00
    MOV         VAR3,#$FF                   ; 16BAA6/0D03FF
    ZEROVEL                                 ; 16BAA9/38
    WAIT        #18                         ; 16BAAA/0612
L_16BAAC:
    SETBANK     #$22                        ; 16BAAC/2822
    A_JMP       $8100                       ; 16BAAE/170081

; CODE OR DATA -- $16BAB1 .. $17A000
incbinRange "../split/prg/bank16.bin", $1AB1, $2000
