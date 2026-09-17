.segment "PRG2E": absolute
L_2EA000:
    ASMCALL     $A008                       ; 2EA000/D008A0
    A_RTL                                   ; 2EA003/05

L_2EA004:
    ASMCALL     $A068                       ; 2EA004/D068A0
    A_RTL                                   ; 2EA007/05

; CODE OR DATA -- $2EA008 .. $2EA09E
incbinRange "../split/prg/bank2e.bin", $0008, $009E

L_2EA09E:
    LOOP        #4                          ; 2EA09E/0104
        ASMCALL     $A0A5, WAIT #6              ; 2EA0A0/D6A5A0
L_2EA0A3:
    ENDLOOP                                 ; 2EA0A3/02
    A_RTL                                   ; 2EA0A4/05

; CODE OR DATA -- $2EA0A5 .. $2EA1B4
incbinRange "../split/prg/bank2e.bin", $00A5, $01B4

Script6D_GameOver:
    MOV         REG,VAR0                    ; 2EA1B4/1E00
    TABLEJMP    #4                          ; 2EA1B6/0F04
    .word       L_2EA1C0                    ; 2EA1B8/C0A1
    .word       L_2EA252                    ; 2EA1BA/52A2
    .word       L_2EA360                    ; 2EA1BC/60A3
    .word       L_2EA373                    ; 2EA1BE/73A3
L_2EA1C0:
    MOV         $051E,#$00                  ; 2EA1C0/111E0500
    ASMCALL     $DF0D                       ; 2EA1C4/D00DDF // Destroy all other objects
    ASMCALL     $A4AC                       ; 2EA1C7/D0ACA4
    ASMCALL     Load_Palette                ; 2EA1CA/D061DF // Load_Palette, palette, start_index, entries
    .word       $A96B                       ; 2EA1CD/6BA9
    .byte       $00                         ; 2EA1CF/00
    .byte       $20                         ; 2EA1D0/20
    ASMCALL     $A500                       ; 2EA1D1/D000A5
    ASMCALL     $DE45                       ; 2EA1D4/D045DE // Play music
    .byte       $0B                         ; 2EA1D7/0B
    LOOP        #4                          ; 2EA1D8/0104
        ASMCALL     $C94C, WAIT #4              ; 2EA1DA/D44CC9 // Palette fade dark in step
    ENDLOOP                                 ; 2EA1DD/02
    ONTICK      $2EA567                     ; 2EA1DE/0867A52E
    WAIT        #150                        ; 2EA1E2/0696
    ASMCALL     $A557                       ; 2EA1E4/D057A5
    JNE         L_2EA4A1                    ; 2EA1E7/0BA1A4
    ENDTICK                                 ; 2EA1EA/0E
    LOOP        #4                          ; 2EA1EB/0104
        ASMCALL     $C996, WAIT #2              ; 2EA1ED/D296C9 // Palette fade (out?) step
    ENDLOOP                                 ; 2EA1F0/02
    ASMCALL     $A52B                       ; 2EA1F1/D02BA5
    SETZPOS     #$00BE                      ; 2EA1F4/3ABE00
    ZEROVEL                                 ; 2EA1F7/38
    ASMCALL     $DE51                       ; 2EA1F8/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6D                         ; 2EA1FB/6D
    .byte       $00                         ; 2EA1FC/00
    .byte       $00                         ; 2EA1FD/00
    .byte       $00                         ; 2EA1FE/00
    .byte       $01                         ; 2EA1FF/01
    .byte       $00                         ; 2EA200/00
    MOV         VAR3,REG                    ; 2EA201/1D03
    ASMCALL     $DE51                       ; 2EA203/D051DE // Create a child object with script `arg1` offset by (`arg2`, `arg3`, `arg4`). With VAR0=`arg5`, VAR1=(self.VAR1+`arg6`)
    .byte       $6D                         ; 2EA206/6D
    .byte       $00                         ; 2EA207/00
    .byte       $00                         ; 2EA208/00
    .byte       $00                         ; 2EA209/00
    .byte       $02                         ; 2EA20A/02
    .byte       $00                         ; 2EA20B/00
    MOV         VAR4,REG                    ; 2EA20C/1D04
    LOOP        #4                          ; 2EA20E/0104
        ASMCALL     $C94C, WAIT #4              ; 2EA210/D44CC9 // Palette fade dark in step
    ENDLOOP                                 ; 2EA213/02
    SPRITEMAP   L_359B38                     ; 2EA214/1A389B35
    SETPOSE     #$08                        ; 2EA218/5008
    MOV         VAR7,#$00                   ; 2EA21A/0D0700
    ONTICK      $2EA59E                     ; 2EA21D/089EA52E
L_2EA221:
    WAIT        #1                          ; 2EA221/0601
    MOV         REG,VAR7                    ; 2EA223/1E07
    JEQ         L_2EA221                    ; 2EA225/0A21A2
    SETYVEL     #$0400, WAIT #5             ; 2EA228/C50004
    SETYVEL     #$0200, WAIT #4             ; 2EA22B/C40002
    SETYVEL     #$0100, WAIT #4             ; 2EA22E/C40001
    ZEROVEL                                 ; 2EA231/38
    MOV         VAR7,#$FF                   ; 2EA232/0D07FF
    HALT                                    ; 2EA235/09

; CODE OR DATA -- $2EA236 .. $2EA252
incbinRange "../split/prg/bank2e.bin", $0236, $0252

L_2EA252:
    SETXPOS     #$0080                      ; 2EA252/2A8000
    SETYPOS     #$0098                      ; 2EA255/2B9800
    SETZPOS     #$00C0                      ; 2EA258/3AC000
    ONDRAW      $DDA3                       ; 2EA25B/20A3DD
    ZEROVEL                                 ; 2EA25E/38
    MOV         VAR4,#$00                   ; 2EA25F/0D0400
    SPRITEMAP   L_1C8216                     ; 2EA262/1A16821C
L_2EA266:
    ASMCALL     $DE4B                       ; 2EA266/D04BDE // Play sound effect
    .byte       $52                         ; 2EA269/52
    SETPOSE     #$8F                        ; 2EA26A/508F
    WAIT        #32                         ; 2EA26C/0620
    INC2POSE    WAIT #12                    ; 2EA26E/9C
    INC2POSE                                ; 2EA26F/90
    WAIT        #64                         ; 2EA270/0640
    DEC2POSE    WAIT #8                     ; 2EA272/A8
    A_JMP       L_2EA266                    ; 2EA273/1766A2

; CODE OR DATA -- $2EA276 .. $2EA360
incbinRange "../split/prg/bank2e.bin", $0276, $0360

L_2EA360:
    SETZPOS     #$00C8                      ; 2EA360/3AC800
    SPRITEMAP   L_359B38                     ; 2EA363/1A389B35
L_2EA367:
    SETXPOS     #$0072                      ; 2EA367/2A7200
    SETYPOS     #$008E                      ; 2EA36A/2B8E00
    A_JSR       L_2EA386                    ; 2EA36D/1886A3
    A_JMP       L_2EA367                    ; 2EA370/1767A3

L_2EA373:
    SETZPOS     #$00C1                      ; 2EA373/3AC100
    SPRITEMAP   L_359B38                     ; 2EA376/1A389B35
    SETXPOS     #$0062                      ; 2EA37A/2A6200
    SETYPOS     #$008E                      ; 2EA37D/2B8E00
    A_JSR       L_2EA386                    ; 2EA380/1886A3
    A_JMP       L_2EA373                    ; 2EA383/1773A3

L_2EA386:
    ZEROVEL                                 ; 2EA386/38
    SETPOSE     #$FF                        ; 2EA387/50FF
    SETXVEL     #$0020                      ; 2EA389/B02000
    SETYVEL     #$0040                      ; 2EA38C/C04000
    WAIT        #44                         ; 2EA38F/062C
    SETPOSE     #$10                        ; 2EA391/5010
    SETXVEL     #$FFE0                      ; 2EA393/B0E0FF
    SETYVEL     #$FFC0                      ; 2EA396/C0C0FF
    WAIT        #60                         ; 2EA399/063C
    SETPOSE     #$FF, WAIT #12              ; 2EA39B/5CFF
    A_RTS                                   ; 2EA39D/19

; CODE OR DATA -- $2EA39E .. $2EA4A1
incbinRange "../split/prg/bank2e.bin", $039E, $04A1

L_2EA4A1:
    ZEROVEL                                 ; 2EA4A1/38
    LOOP        #4                          ; 2EA4A2/0104
        ASMCALL     $C996, WAIT #4              ; 2EA4A4/D496C9 // Palette fade (out?) step
    ENDLOOP                                 ; 2EA4A7/02
    ASMCALL     $DF0D                       ; 2EA4A8/D00DDF // Destroy all other objects
    END                                     ; 2EA4AB/00

; CODE OR DATA -- $2EA4AC .. $2EB055
incbinRange "../split/prg/bank2e.bin", $04AC, $1055

L_2EB055:
    MOV         REG,VAR0                    ; 2EB055/1E00
    TABLEJMP    #8                          ; 2EB057/0F08
    .word       L_2EB069                    ; 2EB059/69B0
    .word       L_2EB3EE                    ; 2EB05B/EEB3
    .word       L_2EB4BB                    ; 2EB05D/BBB4
    .word       L_2EB4CE                    ; 2EB05F/CEB4
    .word       L_2EB334                    ; 2EB061/34B3
    .word       L_2EB39F                    ; 2EB063/9FB3
    .word       L_2EB373                    ; 2EB065/73B3
    .word       L_2EB31E                    ; 2EB067/1EB3
L_2EB069:
    ONPOSITION  $D968                       ; 2EB069/2168D9
    ONMOVE      $D942                       ; 2EB06C/2342D9
    SETBANK     #$22                        ; 2EB06F/2822
    SPRITEMAP   L_379A97                     ; 2EB071/1A979A37
    MOV         $0042,#$98                  ; 2EB075/11420098
    MOV         $0043,#$CC                  ; 2EB079/114300CC
    MOV         $058A,#$01                  ; 2EB07D/118A0501
    SETPOSE     #$FF                        ; 2EB081/50FF
    ASMCALL     $C086                       ; 2EB083/D086C0 // Write 0xFF to $37 and wait a frame
    ASMCALL     $9009                       ; 2EB086/D00990 // Call $3DBCFC
    MOV         current_room+1,#$00                  ; 2EB089/115F0500
    ONTICK      $2EBAD8                     ; 2EB08D/08D8BA2E
    MOV         VAR0,#$07                   ; 2EB091/0D0007
    ASMCALL     $BA64                       ; 2EB094/D064BA
    MOV         palette_fade,#$04                  ; 2EB097/11A20104
    LOOP        #4                          ; 2EB09B/0104
        ASMCALL     $C996, WAIT #8              ; 2EB09D/D896C9 // Palette fade (out?) step
L_2EB0A0:
    ENDLOOP                                 ; 2EB0A0/02
    WAIT        #240                        ; 2EB0A1/06F0
L_2EB0A3:
    TASK        L_2EB314                    ; 2EB0A3/0714B3
    MOV         VAR0,#$01                   ; 2EB0A6/0D0001
    MOV         VAR1,#$00                   ; 2EB0A9/0D0100
    LOOP        #8                          ; 2EB0AC/0108
        ASMCALL     $BA64                       ; 2EB0AE/D064BA
    ENDLOOP                                 ; 2EB0B1/02
    WAIT        #12                         ; 2EB0B2/060C
L_2EB0B4:
    ASMCALL     $BB60                       ; 2EB0B4/D060BB
    WAIT        #212                        ; 2EB0B7/06D4
L_2EB0B9:
    MOV         VAR2,#$00                   ; 2EB0B9/0D0200
    MOV         VAR0,#$02                   ; 2EB0BC/0D0002
    ASMCALL     $BA64                       ; 2EB0BF/D064BA
    SETZPOS     #$00C0                      ; 2EB0C2/3AC000
    SETPOSE     #$08                        ; 2EB0C5/5008
    SETXPOS     #$0053                      ; 2EB0C7/2A5300
    SETYPOS     #$0042                      ; 2EB0CA/2B4200
    WAIT        #4                          ; 2EB0CD/0604
L_2EB0CF:
    SETYVEL     #$FFC0                      ; 2EB0CF/C0C0FF
    SETXVEL     #$FFE0                      ; 2EB0D2/B0E0FF
    WAIT        #80                         ; 2EB0D5/0650
L_2EB0D7:
    SETXVEL     #$FFF0                      ; 2EB0D7/B0F0FF
    WAIT        #24                         ; 2EB0DA/0618
L_2EB0DC:
    SETPOSE     #$2E                        ; 2EB0DC/502E
    SETXVEL     #$FFF8                      ; 2EB0DE/B0F8FF
    WAIT        #24                         ; 2EB0E1/0618
L_2EB0E3:
    SETXVEL     #$0008                      ; 2EB0E3/B00800
    WAIT        #24                         ; 2EB0E6/0618
L_2EB0E8:
    SETXVEL     #$0010                      ; 2EB0E8/B01000
    WAIT        #24                         ; 2EB0EB/0618
L_2EB0ED:
    SETXVEL     #$0020                      ; 2EB0ED/B02000
    WAIT        #24                         ; 2EB0F0/0618
L_2EB0F2:
    SETXVEL     #$0040                      ; 2EB0F2/B04000
    WAIT        #24                         ; 2EB0F5/0618
L_2EB0F7:
    SETXVEL     #$0080                      ; 2EB0F7/B08000
    WAIT        #24                         ; 2EB0FA/0618
L_2EB0FC:
    SETPOSE     #$FF                        ; 2EB0FC/50FF
    ZEROVEL                                 ; 2EB0FE/38
    SETXVEL     #$0400                      ; 2EB0FF/B00004
    WAIT        #28                         ; 2EB102/061C
L_2EB104:
    ZEROVEL                                 ; 2EB104/38
    WAIT        #32                         ; 2EB105/0620
L_2EB107:
    MOV         $0603,#$FF                  ; 2EB107/110306FF
    ASMCALL     $DE45                       ; 2EB10B/D045DE // Play music
    .byte       $37                         ; 2EB10E/37
    ASMCALL     $DE4B                       ; 2EB10F/D04BDE // Play sound effect
    .byte       $14                         ; 2EB112/14
    SETPOSE     #$2F                        ; 2EB113/502F
    SETXVEL     #$0080                      ; 2EB115/B08000
    SETYVEL     #$0040                      ; 2EB118/C04000
    WAIT        #48                         ; 2EB11B/0630
L_2EB11D:
    SETXVEL     #$0080                      ; 2EB11D/B08000
    SETYVEL     #$0080                      ; 2EB120/C08000
    WAIT        #32                         ; 2EB123/0620
L_2EB125:
    SETXVEL     #$0080                      ; 2EB125/B08000
    SETYVEL     #$00C0                      ; 2EB128/C0C000
    WAIT        #16                         ; 2EB12B/0610
L_2EB12D:
    SETPOSE     #$FF                        ; 2EB12D/50FF
    SETXVEL     #$FF00                      ; 2EB12F/B000FF
    SETYVEL     #$0400, WAIT #14            ; 2EB132/CE0004
L_2EB135:
    ZEROVEL                                 ; 2EB135/38
    WAIT        #32                         ; 2EB136/0620
L_2EB138:
    SETYCAMERAVEL#$0028                     ; 2EB138/332800
    MOV         VAR2,#$01                   ; 2EB13B/0D0201
    SETPOSE     #$0A                        ; 2EB13E/500A
    SETXVEL     #$FE00                      ; 2EB140/B000FE
    SETYVEL     #$0080                      ; 2EB143/C08000
    WAIT        #32                         ; 2EB146/0620
L_2EB148:
    SETYVEL     #$0040                      ; 2EB148/C04000
    WAIT        #16                         ; 2EB14B/0610
L_2EB14D:
    SETYVEL     #$FFC0                      ; 2EB14D/C0C0FF
    WAIT        #16                         ; 2EB150/0610
L_2EB152:
    SETYVEL     #$FF80                      ; 2EB152/C080FF
    WAIT        #16                         ; 2EB155/0610
L_2EB157:
    SETXVEL     #$FF00                      ; 2EB157/B000FF
    WAIT        #16                         ; 2EB15A/0610
L_2EB15C:
    SETXVEL     #$FF80                      ; 2EB15C/B080FF
    WAIT        #16                         ; 2EB15F/0610
L_2EB161:
    SETXVEL     #$FFC0                      ; 2EB161/B0C0FF
    WAIT        #16                         ; 2EB164/0610
L_2EB166:
    SETXVEL     #$0040                      ; 2EB166/B04000
    SETYVEL     #$FFC0                      ; 2EB169/C0C0FF
    WAIT        #16                         ; 2EB16C/0610
L_2EB16E:
    SETYVEL     #$0040                      ; 2EB16E/C04000
    WAIT        #64                         ; 2EB171/0640
L_2EB173:
    LOOP        #3                          ; 2EB173/0103
        A_JSR       L_2EB2AA                    ; 2EB175/18AAB2
    ENDLOOP                                 ; 2EB178/02
    ASMCALL     $DE4B                       ; 2EB179/D04BDE // Play sound effect
    .byte       $FF                         ; 2EB17C/FF
    LOOP        #6                          ; 2EB17D/0106
        A_JSR       L_2EB2AA                    ; 2EB17F/18AAB2
    ENDLOOP                                 ; 2EB182/02
    MOV         VAR0,#$04                   ; 2EB183/0D0004
    ASMCALL     $BA64                       ; 2EB186/D064BA
    A_JSR       L_2EB2E2                    ; 2EB189/18E2B2
    MOV         VAR2,#$00                   ; 2EB18C/0D0200
    SETZPOS     #$0080                      ; 2EB18F/3A8000
    A_JSR       L_2EB2E2                    ; 2EB192/18E2B2
    SETPOSE     #$0C                        ; 2EB195/500C
    ZEROVEL                                 ; 2EB197/38
    WAIT        #80                         ; 2EB198/0650
L_2EB19A:
    SETYVEL     #$0020, WAIT #8             ; 2EB19A/C82000
L_2EB19D:
    SETYVEL     #$0040, WAIT #8             ; 2EB19D/C84000
L_2EB1A0:
    LOOP        #2                          ; 2EB1A0/0102
        SETPOSE     #$0D                        ; 2EB1A2/500D
        SETYVEL     #$0080, WAIT #8             ; 2EB1A4/C88000
L_2EB1A7:
        INCPOSE     WAIT #8                     ; 2EB1A7/78
L_2EB1A8:
        INCPOSE     WAIT #8                     ; 2EB1A8/78
L_2EB1A9:
        INCPOSE     WAIT #8                     ; 2EB1A9/78
L_2EB1AA:
        DECPOSE                                 ; 2EB1AA/80
        SETYVEL     #$0040, WAIT #8             ; 2EB1AB/C84000
L_2EB1AE:
        DECPOSE                                 ; 2EB1AE/80
        SETYVEL     #$0020, WAIT #8             ; 2EB1AF/C82000
L_2EB1B2:
        DECPOSE                                 ; 2EB1B2/80
        SETYVEL     #$FFE0, WAIT #8             ; 2EB1B3/C8E0FF
L_2EB1B6:
        INCPOSE                                 ; 2EB1B6/70
        SETYVEL     #$FFC0, WAIT #8             ; 2EB1B7/C8C0FF
L_2EB1BA:
        INCPOSE                                 ; 2EB1BA/70
        SETYVEL     #$FF80, WAIT #8             ; 2EB1BB/C880FF
L_2EB1BE:
        INCPOSE                                 ; 2EB1BE/70
        SETYVEL     #$FF80, WAIT #8             ; 2EB1BF/C880FF
L_2EB1C2:
        DECPOSE     WAIT #8                     ; 2EB1C2/88
L_2EB1C3:
        DECPOSE     WAIT #8                     ; 2EB1C3/88
L_2EB1C4:
    ENDLOOP                                 ; 2EB1C4/02
    SETPOSE     #$0C                        ; 2EB1C5/500C
    SETYVEL     #$FFC0, WAIT #8             ; 2EB1C7/C8C0FF
L_2EB1CA:
    SETYVEL     #$FFE0, WAIT #8             ; 2EB1CA/C8E0FF
L_2EB1CD:
    ZEROVEL                                 ; 2EB1CD/38
    WAIT        #128                        ; 2EB1CE/0680
L_2EB1D0:
    MOV         VAR2,#$01                   ; 2EB1D0/0D0201
    SETZPOS     #$00C0                      ; 2EB1D3/3AC000
    LOOP        #11                         ; 2EB1D6/010B
        SETPOSE     #$0A                        ; 2EB1D8/500A
        SETXVEL     #$0004                      ; 2EB1DA/B00400
        SETYVEL     #$0020, WAIT #8             ; 2EB1DD/C82000
L_2EB1E0:
        SETXVEL     #$0008                      ; 2EB1E0/B00800
        SETYVEL     #$0040, WAIT #8             ; 2EB1E3/C84000
L_2EB1E6:
        SETYVEL     #$0080                      ; 2EB1E6/C08000
        WAIT        #32                         ; 2EB1E9/0620
L_2EB1EB:
        SETYVEL     #$0040, WAIT #8             ; 2EB1EB/C84000
L_2EB1EE:
        SETXVEL     #$0004                      ; 2EB1EE/B00400
        SETYVEL     #$0020, WAIT #8             ; 2EB1F1/C82000
L_2EB1F4:
        SETYVEL     #$FFE0, WAIT #8             ; 2EB1F4/C8E0FF
L_2EB1F7:
        SETXVEL     #$0008                      ; 2EB1F7/B00800
        SETYVEL     #$FFC0, WAIT #8             ; 2EB1FA/C8C0FF
L_2EB1FD:
        SETYVEL     #$FF80                      ; 2EB1FD/C080FF
        WAIT        #24                         ; 2EB200/0618
L_2EB202:
        SETYVEL     #$FFC0, WAIT #8             ; 2EB202/C8C0FF
L_2EB205:
        SETXVEL     #$0004                      ; 2EB205/B00400
        SETYVEL     #$FFE0, WAIT #8             ; 2EB208/C8E0FF
L_2EB20B:
    ENDLOOP                                 ; 2EB20B/02
    SETPOSE     #$0A                        ; 2EB20C/500A
    SETXVEL     #$FF80                      ; 2EB20E/B080FF
    SETYVEL     #$0080, WAIT #8             ; 2EB211/C88000
L_2EB214:
    SETXVEL     #$FF00                      ; 2EB214/B000FF
    SETYVEL     #$0100, WAIT #8             ; 2EB217/C80001
L_2EB21A:
    SETXVEL     #$FE00                      ; 2EB21A/B000FE
    SETYVEL     #$0080, WAIT #12            ; 2EB21D/CC8000
L_2EB220:
    SETYVEL     #$FF80, WAIT #12            ; 2EB220/CC80FF
L_2EB223:
    SETXVEL     #$FF00                      ; 2EB223/B000FF
    SETYVEL     #$FF00, WAIT #8             ; 2EB226/C800FF
L_2EB229:
    SETXVEL     #$FF80                      ; 2EB229/B080FF
    SETYVEL     #$FF00, WAIT #8             ; 2EB22C/C800FF
L_2EB22F:
    SETXVEL     #$0080                      ; 2EB22F/B08000
    SETYVEL     #$FE00, WAIT #8             ; 2EB232/C800FE
L_2EB235:
    SETXVEL     #$0100                      ; 2EB235/B00001
    SETYVEL     #$FF00, WAIT #8             ; 2EB238/C800FF
L_2EB23B:
    SETXVEL     #$0200                      ; 2EB23B/B00002
    SETYVEL     #$0080                      ; 2EB23E/C08000
    WAIT        #40                         ; 2EB241/0628
L_2EB243:
    SETXVEL     #$0100, WAIT #8             ; 2EB243/B80001
L_2EB246:
    SETXVEL     #$0080                      ; 2EB246/B08000
    SETYVEL     #$FFE0, WAIT #8             ; 2EB249/C8E0FF
L_2EB24C:
    SETXVEL     #$0020                      ; 2EB24C/B02000
    SETYVEL     #$FF80, WAIT #8             ; 2EB24F/C880FF
L_2EB252:
    ZEROVEL                                 ; 2EB252/38
    WAIT        #16                         ; 2EB253/0610
L_2EB255:
    MOV         $0043,#$80                  ; 2EB255/11430080
    MOV         VAR0,#$05                   ; 2EB259/0D0005
    ASMCALL     $BA64                       ; 2EB25C/D064BA
    SETYVEL     #$0200, WAIT #2             ; 2EB25F/C20002
L_2EB262:
    SETYVEL     #$FE00, WAIT #2             ; 2EB262/C200FE
L_2EB265:
    ZEROVEL                                 ; 2EB265/38
    SETPOSE     #$11                        ; 2EB266/5011
    WAIT        #60                         ; 2EB268/063C
L_2EB26A:
    MOV         $0043,#$D0                  ; 2EB26A/114300D0
    SETPOSE     #$28                        ; 2EB26E/5028
    SETYVEL     #$0200, WAIT #2             ; 2EB270/C20002
L_2EB273:
    SETYVEL     #$FE00, WAIT #2             ; 2EB273/C200FE
L_2EB276:
    ZEROVEL                                 ; 2EB276/38
    WAIT        #12                         ; 2EB277/060C
L_2EB279:
    INCPOSE     WAIT #2                     ; 2EB279/72
L_2EB27A:
    MOV         VAR0,#$06                   ; 2EB27A/0D0006
    ASMCALL     $BA64                       ; 2EB27D/D064BA
    INCPOSE     WAIT #2                     ; 2EB280/72
L_2EB281:
    INCPOSE     WAIT #4                     ; 2EB281/74
L_2EB282:
    INCPOSE                                 ; 2EB282/70
    WAIT        #16                         ; 2EB283/0610
L_2EB285:
    MOV         $0043,#$80                  ; 2EB285/11430080
    SETPOSE     #$11                        ; 2EB289/5011
    WAIT        #60                         ; 2EB28B/063C
L_2EB28D:
    SETPOSE     #$0B                        ; 2EB28D/500B
    SETYVEL     #$0200, WAIT #2             ; 2EB28F/C20002
L_2EB292:
    SETYVEL     #$FE00, WAIT #2             ; 2EB292/C200FE
L_2EB295:
    ZEROVEL                                 ; 2EB295/38
    WAIT        #32                         ; 2EB296/0620
L_2EB298:
    ASMCALL     $DE4B                       ; 2EB298/D04BDE // Play sound effect
    .byte       $FF                         ; 2EB29B/FF
    LOOP        #4                          ; 2EB29C/0104
        ASMCALL     $C94C, WAIT #6              ; 2EB29E/D64CC9 // Palette fade dark in step
L_2EB2A1:
    ENDLOOP                                 ; 2EB2A1/02
    MOV         VAR2,#$FF                   ; 2EB2A2/0D02FF
    ZEROCAMERAVEL                           ; 2EB2A5/39
    ASMCALL     $BAF5                       ; 2EB2A6/D0F5BA
    END                                     ; 2EB2A9/00

L_2EB2AA:
    ZEROVEL                                 ; 2EB2AA/38
    SETYVEL     #$0020, WAIT #8             ; 2EB2AB/C82000
L_2EB2AE:
    SETXVEL     #$0004                      ; 2EB2AE/B00400
    SETYVEL     #$0040, WAIT #8             ; 2EB2B1/C84000
L_2EB2B4:
    SETXVEL     #$0008                      ; 2EB2B4/B00800
    SETYVEL     #$0080                      ; 2EB2B7/C08000
    WAIT        #32                         ; 2EB2BA/0620
L_2EB2BC:
    SETXVEL     #$0004                      ; 2EB2BC/B00400
    SETYVEL     #$0040, WAIT #8             ; 2EB2BF/C84000
L_2EB2C2:
    ZEROVEL                                 ; 2EB2C2/38
    SETYVEL     #$0020, WAIT #8             ; 2EB2C3/C82000
L_2EB2C6:
    SETYVEL     #$FFE0, WAIT #8             ; 2EB2C6/C8E0FF
L_2EB2C9:
    SETXVEL     #$0004                      ; 2EB2C9/B00400
    SETYVEL     #$FFC0, WAIT #8             ; 2EB2CC/C8C0FF
L_2EB2CF:
    SETXVEL     #$0008                      ; 2EB2CF/B00800
    SETYVEL     #$FF80                      ; 2EB2D2/C080FF
    WAIT        #32                         ; 2EB2D5/0620
L_2EB2D7:
    SETXVEL     #$0004                      ; 2EB2D7/B00400
    SETYVEL     #$FFC0, WAIT #8             ; 2EB2DA/C8C0FF
L_2EB2DD:
    ZEROVEL                                 ; 2EB2DD/38
    SETYVEL     #$FFE0, WAIT #8             ; 2EB2DE/C8E0FF
L_2EB2E1:
    A_RTS                                   ; 2EB2E1/19

L_2EB2E2:
    SETXVEL     #$0004                      ; 2EB2E2/B00400
    SETYVEL     #$0020, WAIT #8             ; 2EB2E5/C82000
L_2EB2E8:
    SETXVEL     #$0008                      ; 2EB2E8/B00800
    SETYVEL     #$0040, WAIT #8             ; 2EB2EB/C84000
L_2EB2EE:
    SETYVEL     #$0080                      ; 2EB2EE/C08000
    WAIT        #32                         ; 2EB2F1/0620
L_2EB2F3:
    SETYVEL     #$0040, WAIT #8             ; 2EB2F3/C84000
L_2EB2F6:
    SETXVEL     #$0004                      ; 2EB2F6/B00400
    SETYVEL     #$0020, WAIT #8             ; 2EB2F9/C82000
L_2EB2FC:
    SETYVEL     #$FFE0, WAIT #8             ; 2EB2FC/C8E0FF
L_2EB2FF:
    SETXVEL     #$0008                      ; 2EB2FF/B00800
    SETYVEL     #$FFC0, WAIT #8             ; 2EB302/C8C0FF
L_2EB305:
    SETYVEL     #$FF80                      ; 2EB305/C080FF
    WAIT        #32                         ; 2EB308/0620
L_2EB30A:
    SETYVEL     #$FFC0, WAIT #8             ; 2EB30A/C8C0FF
L_2EB30D:
    SETXVEL     #$0004                      ; 2EB30D/B00400
    SETYVEL     #$FFE0, WAIT #8             ; 2EB310/C8E0FF
L_2EB313:
    A_RTS                                   ; 2EB313/19

L_2EB314:
    LOOP        #9                          ; 2EB314/0109
        ASMCALL     $DE4B                       ; 2EB316/D04BDE // Play sound effect
        .byte       $40                         ; 2EB319/40
        WAIT        #4                          ; 2EB31A/0604
L_2EB31C:
    ENDLOOP                                 ; 2EB31C/02
    ENDTASK                                 ; 2EB31D/0C

L_2EB31E:
    LOOP        #15                         ; 2EB31E/010F
        WAIT        #60                         ; 2EB320/063C
L_2EB322:
    ENDLOOP                                 ; 2EB322/02
    MOV         $058A,#$15                  ; 2EB323/118A0515
    LOOP        #10                         ; 2EB327/010A
        WAIT        #150                        ; 2EB329/0696
L_2EB32B:
        WAIT        #150                        ; 2EB32B/0696
L_2EB32D:
        ADD         $058A,#1                    ; 2EB32D/168A050201
    ENDLOOP                                 ; 2EB332/02
    END                                     ; 2EB333/00

L_2EB334:
    ONPOSITION  $D968                       ; 2EB334/2168D9
    ONMOVE      $D945                       ; 2EB337/2345D9
    SPRITEMAP   L_339B28                     ; 2EB33A/1A289B33
    SETZPOS     #$0080                      ; 2EB33E/3A8000
    SETXPOS     #$00D0                      ; 2EB341/2AD000
    SETYPOS     #$00B0                      ; 2EB344/2BB000
    SETPOSE     #$04                        ; 2EB347/5004
    SETXVEL     #$FFE0                      ; 2EB349/B0E0FF
    SETYVEL     #$FFC0                      ; 2EB34C/C0C0FF
    WAIT        #240                        ; 2EB34F/06F0
L_2EB351:
    SETYVEL     #$FFE0                      ; 2EB351/C0E0FF
    WAIT        #128                        ; 2EB354/0680
L_2EB356:
    SETXVEL     #$FFF0                      ; 2EB356/B0F0FF
    WAIT        #16                         ; 2EB359/0610
L_2EB35B:
    SETXVEL     #$FFF8, WAIT #8             ; 2EB35B/B8F8FF
L_2EB35E:
    SETXVEL     #$0008                      ; 2EB35E/B00800
    SETYVEL     #$FFE0, WAIT #8             ; 2EB361/C8E0FF
L_2EB364:
    SETXVEL     #$0010                      ; 2EB364/B01000
    SETYVEL     #$FFC0, WAIT #8             ; 2EB367/C8C0FF
L_2EB36A:
    SETXVEL     #$0020                      ; 2EB36A/B02000
    SETYVEL     #$FF80                      ; 2EB36D/C080FF
    WAIT        #160                        ; 2EB370/06A0
L_2EB372:
    END                                     ; 2EB372/00

L_2EB373:
    SPRITEMAP   L_379A97                     ; 2EB373/1A979A37
    ONPOSITION  $D9BB                       ; 2EB377/21BBD9
    ONMOVE      $D920                       ; 2EB37A/2320D9
    SETXPOS     #$00B0                      ; 2EB37D/2AB000
    SETYPOS     #$006A                      ; 2EB380/2B6A00
    SETXVEL     #$FC00                      ; 2EB383/B000FC
    SETYVEL     #$FC00                      ; 2EB386/C000FC
    ASMCALL     $DE4B                       ; 2EB389/D04BDE // Play sound effect
    .byte       $47                         ; 2EB38C/47
L_2EB38D:
    SETPOSE     #$14, WAIT #2               ; 2EB38D/5214
L_2EB38F:
    INCPOSE     WAIT #2                     ; 2EB38F/72
L_2EB390:
    INCPOSE     WAIT #2                     ; 2EB390/72
L_2EB391:
    INCPOSE     WAIT #2                     ; 2EB391/72
L_2EB392:
    INCPOSE     WAIT #2                     ; 2EB392/72
L_2EB393:
    INCPOSE     WAIT #2                     ; 2EB393/72
L_2EB394:
    INCPOSE     WAIT #2                     ; 2EB394/72
L_2EB395:
    INCPOSE     WAIT #2                     ; 2EB395/72
L_2EB396:
    INCPOSE     WAIT #2                     ; 2EB396/72
L_2EB397:
    INCPOSE     WAIT #2                     ; 2EB397/72
L_2EB398:
    INCPOSE     WAIT #2                     ; 2EB398/72
L_2EB399:
    INCPOSE     WAIT #2                     ; 2EB399/72
L_2EB39A:
    INCPOSE     WAIT #2                     ; 2EB39A/72
L_2EB39B:
    INCPOSE     WAIT #2                     ; 2EB39B/72
L_2EB39C:
    A_JMP       L_2EB38D                    ; 2EB39C/178DB3

L_2EB39F:
    SPRITEMAP   L_379A97                     ; 2EB39F/1A979A37
    ONPOSITION  $D968                       ; 2EB3A3/2168D9
    ONMOVE      $D945                       ; 2EB3A6/2345D9
    ZEROVEL                                 ; 2EB3A9/38
    ASMCALL     $BA84                       ; 2EB3AA/D084BA
    SETPOSE     #$FF, WAIT #4               ; 2EB3AD/54FF
L_2EB3AF:
    SETPOSE     #$24                        ; 2EB3AF/5024
    SETYVEL     #$FE00                      ; 2EB3B1/C000FE
    WAIT        #16                         ; 2EB3B4/0610
L_2EB3B6:
    INCPOSE                                 ; 2EB3B6/70
    SETYVEL     #$FF00, WAIT #8             ; 2EB3B7/C800FF
L_2EB3BA:
    INCPOSE                                 ; 2EB3BA/70
    SETYVEL     #$FF80, WAIT #8             ; 2EB3BB/C880FF
L_2EB3BE:
    SETPOSE     #$2D                        ; 2EB3BE/502D
    SETYVEL     #$0080, WAIT #8             ; 2EB3C0/C88000
L_2EB3C3:
    SETPOSE     #$27                        ; 2EB3C3/5027
    SETYVEL     #$0100, WAIT #8             ; 2EB3C5/C80001
L_2EB3C8:
    SETYVEL     #$0200, WAIT #12            ; 2EB3C8/CC0002
L_2EB3CB:
    ZEROVEL                                 ; 2EB3CB/38
    SETPOSE     #$FF                        ; 2EB3CC/50FF
    WAIT        #40                         ; 2EB3CE/0628
L_2EB3D0:
    SETPOSE     #$24                        ; 2EB3D0/5024
    SETYVEL     #$FE00, WAIT #12            ; 2EB3D2/CC00FE
L_2EB3D5:
    SETYVEL     #$FF00, WAIT #8             ; 2EB3D5/C800FF
L_2EB3D8:
    SETPOSE     #$2D                        ; 2EB3D8/502D
    SETYVEL     #$FF80, WAIT #8             ; 2EB3DA/C880FF
L_2EB3DD:
    SETPOSE     #$26                        ; 2EB3DD/5026
    SETYVEL     #$0080, WAIT #8             ; 2EB3DF/C88000
L_2EB3E2:
    DECPOSE                                 ; 2EB3E2/80
    SETYVEL     #$0100, WAIT #8             ; 2EB3E3/C80001
L_2EB3E6:
    SETPOSE     #$27                        ; 2EB3E6/5027
    SETYVEL     #$0200                      ; 2EB3E8/C00002
    WAIT        #16                         ; 2EB3EB/0610
L_2EB3ED:
    END                                     ; 2EB3ED/00

L_2EB3EE:
    SPRITEMAP   L_379A97                     ; 2EB3EE/1A979A37
    SETXPOS     #$0070                      ; 2EB3F2/2A7000
    SETYPOS     #$0067                      ; 2EB3F5/2B6700
    MOV         REG,VAR1                    ; 2EB3F8/1E01
    TABLEJSR    #8                          ; 2EB3FA/1008
    .word       L_2EB43D                    ; 2EB3FC/3DB4
    .word       L_2EB43D                    ; 2EB3FE/3DB4
    .word       L_2EB43D                    ; 2EB400/3DB4
    .word       L_2EB440                    ; 2EB402/40B4
    .word       L_2EB458                    ; 2EB404/58B4
    .word       L_2EB461                    ; 2EB406/61B4
    .word       L_2EB46A                    ; 2EB408/6AB4
    .word       L_2EB473                    ; 2EB40A/73B4
    ZEROVEL                                 ; 2EB40C/38
    SETYVEL     #$0020                      ; 2EB40D/C02000
    LOOP        #25                         ; 2EB410/0119
        SETPOSE     #$00, WAIT #2               ; 2EB412/5200
L_2EB414:
        SETPOSE     #$FF, WAIT #1               ; 2EB414/51FF
L_2EB416:
        SETPOSE     #$01, WAIT #2               ; 2EB416/5201
L_2EB418:
        SETPOSE     #$FF, WAIT #1               ; 2EB418/51FF
L_2EB41A:
    ENDLOOP                                 ; 2EB41A/02
    LOOP        #9                          ; 2EB41B/0109
        SETPOSE     #$02, WAIT #2               ; 2EB41D/5202
L_2EB41F:
        SETPOSE     #$FF, WAIT #1               ; 2EB41F/51FF
L_2EB421:
        SETPOSE     #$03, WAIT #2               ; 2EB421/5203
L_2EB423:
        SETPOSE     #$FF, WAIT #1               ; 2EB423/51FF
L_2EB425:
    ENDLOOP                                 ; 2EB425/02
    LOOP        #9                          ; 2EB426/0109
        SETPOSE     #$04, WAIT #2               ; 2EB428/5204
L_2EB42A:
        SETPOSE     #$FF, WAIT #1               ; 2EB42A/51FF
L_2EB42C:
        SETPOSE     #$05, WAIT #2               ; 2EB42C/5205
L_2EB42E:
        SETPOSE     #$FF, WAIT #1               ; 2EB42E/51FF
L_2EB430:
    ENDLOOP                                 ; 2EB430/02
    LOOP        #9                          ; 2EB431/0109
        SETPOSE     #$06, WAIT #2               ; 2EB433/5206
L_2EB435:
        SETPOSE     #$FF, WAIT #1               ; 2EB435/51FF
L_2EB437:
        SETPOSE     #$07, WAIT #2               ; 2EB437/5207
L_2EB439:
        SETPOSE     #$FF, WAIT #1               ; 2EB439/51FF
L_2EB43B:
    ENDLOOP                                 ; 2EB43B/02
    END                                     ; 2EB43C/00

L_2EB43D:
    A_JMP       L_2EB488                    ; 2EB43D/1788B4

L_2EB440:
    LOOP        #33                         ; 2EB440/0121
        SETPOSE     #$FF                        ; 2EB442/50FF
        SETYVEL     #$FFC0, WAIT #1             ; 2EB444/C1C0FF
L_2EB447:
        SETPOSE     #$00                        ; 2EB447/5000
        SETYVEL     #$FFE0, WAIT #2             ; 2EB449/C2E0FF
L_2EB44C:
        SETPOSE     #$FF                        ; 2EB44C/50FF
        SETYVEL     #$FFC0, WAIT #1             ; 2EB44E/C1C0FF
L_2EB451:
        SETPOSE     #$01                        ; 2EB451/5001
        SETYVEL     #$FFE0, WAIT #2             ; 2EB453/C2E0FF
L_2EB456:
    ENDLOOP                                 ; 2EB456/02
    A_RTS                                   ; 2EB457/19

L_2EB458:
    SETXVEL     #$0020                      ; 2EB458/B02000
    SETYVEL     #$0020                      ; 2EB45B/C02000
    A_JMP       L_2EB47C                    ; 2EB45E/177CB4

L_2EB461:
    SETXVEL     #$0020                      ; 2EB461/B02000
    SETYVEL     #$FFE0                      ; 2EB464/C0E0FF
    A_JMP       L_2EB47C                    ; 2EB467/177CB4

L_2EB46A:
    SETXVEL     #$FFE0                      ; 2EB46A/B0E0FF
    SETYVEL     #$0020                      ; 2EB46D/C02000
    A_JMP       L_2EB47C                    ; 2EB470/177CB4

L_2EB473:
    SETXVEL     #$FFE0                      ; 2EB473/B0E0FF
    SETYVEL     #$FFE0                      ; 2EB476/C0E0FF
    A_JMP       L_2EB47C                    ; 2EB479/177CB4

L_2EB47C:
    LOOP        #33                         ; 2EB47C/0121
        SETPOSE     #$FF, WAIT #1               ; 2EB47E/51FF
L_2EB480:
        SETPOSE     #$00, WAIT #2               ; 2EB480/5200
L_2EB482:
        SETPOSE     #$FF, WAIT #1               ; 2EB482/51FF
L_2EB484:
        SETPOSE     #$01, WAIT #2               ; 2EB484/5201
L_2EB486:
    ENDLOOP                                 ; 2EB486/02
    A_RTS                                   ; 2EB487/19

L_2EB488:
    LOOP        #33                         ; 2EB488/0121
        SETPOSE     #$00                        ; 2EB48A/5000
        TABLEJSR    #3                          ; 2EB48C/1003
        .word       L_2EB4A0                    ; 2EB48E/A0B4
        .word       L_2EB4A9                    ; 2EB490/A9B4
        .word       L_2EB4B2                    ; 2EB492/B2B4
        SETPOSE     #$01                        ; 2EB494/5001
        TABLEJSR    #3                          ; 2EB496/1003
        .word       L_2EB4A0                    ; 2EB498/A0B4
        .word       L_2EB4A9                    ; 2EB49A/A9B4
        .word       L_2EB4B2                    ; 2EB49C/B2B4
    ENDLOOP                                 ; 2EB49E/02
    A_RTS                                   ; 2EB49F/19

L_2EB4A0:
    SETYVEL     #$0020, WAIT #2             ; 2EB4A0/C22000
L_2EB4A3:
    SETPOSE     #$FF                        ; 2EB4A3/50FF
    SETYVEL     #$0040, WAIT #1             ; 2EB4A5/C14000
L_2EB4A8:
    A_RTS                                   ; 2EB4A8/19

L_2EB4A9:
    SETXVEL     #$0020, WAIT #2             ; 2EB4A9/B22000
L_2EB4AC:
    SETPOSE     #$FF                        ; 2EB4AC/50FF
    SETXVEL     #$0040, WAIT #1             ; 2EB4AE/B14000
L_2EB4B1:
    A_RTS                                   ; 2EB4B1/19

L_2EB4B2:
    SETXVEL     #$FFE0, WAIT #2             ; 2EB4B2/B2E0FF
L_2EB4B5:
    SETPOSE     #$FF                        ; 2EB4B5/50FF
    SETXVEL     #$FFC0, WAIT #1             ; 2EB4B7/B1C0FF
L_2EB4BA:
    A_RTS                                   ; 2EB4BA/19

L_2EB4BB:
    SETPOSE     #$FF                        ; 2EB4BB/50FF
L_2EB4BD:
    ASMCALL     $BADD                       ; 2EB4BD/D0DDBA
    JEQ         L_2EB4C9                    ; 2EB4C0/0AC9B4
    MOV         VAR0,#$03                   ; 2EB4C3/0D0003
    ASMCALL     $BA64, WAIT #15             ; 2EB4C6/DF64BA
L_2EB4C9:
    WAIT        #1                          ; 2EB4C9/0601
L_2EB4CB:
    A_JMP       L_2EB4BD                    ; 2EB4CB/17BDB4

L_2EB4CE:
    ONPOSITION  $D968                       ; 2EB4CE/2168D9
    ONMOVE      $D945                       ; 2EB4D1/2345D9
    SPRITEMAP   L_379A97                     ; 2EB4D4/1A979A37
    ZEROVEL                                 ; 2EB4D8/38
    SETPOSE     #$2E                        ; 2EB4D9/502E
    ASMCALL     $BA97                       ; 2EB4DB/D097BA
    SETXVEL     #$0100, WAIT #15            ; 2EB4DE/BF0001
L_2EB4E1:
    SETXVEL     #$0200, WAIT #15            ; 2EB4E1/BF0002
L_2EB4E4:
    SETXVEL     #$0300, WAIT #15            ; 2EB4E4/BF0003
L_2EB4E7:
    SETXVEL     #$0400, WAIT #15            ; 2EB4E7/BF0004
L_2EB4EA:
    ASMCALL     $BAEA, WAIT #2              ; 2EB4EA/D2EABA
L_2EB4ED:
    JEQ         L_2EB4EA                    ; 2EB4ED/0AEAB4
    END                                     ; 2EB4F0/00

L_2EB4F1:
    MOV         REG,VAR0                    ; 2EB4F1/1E00
    TABLEJMP    #7                          ; 2EB4F3/0F07
    .word       L_2EB503                    ; 2EB4F5/03B5
    .word       L_2EB858                    ; 2EB4F7/58B8
    .word       L_2EB88D                    ; 2EB4F9/8DB8
    .word       L_2EB7C4                    ; 2EB4FB/C4B7
    .word       L_2EB5C5                    ; 2EB4FD/C5B5
    .word       L_2EB6B5                    ; 2EB4FF/B5B6
    .word       L_2EB8CD                    ; 2EB501/CDB8
L_2EB503:
    SETBANK     #$21                        ; 2EB503/2821
    SPRITEMAP   L_379A97                     ; 2EB505/1A979A37
    MOV         $0042,#$98                  ; 2EB509/11420098
    MOV         $0043,#$80                  ; 2EB50D/11430080
    MOV         $058A,#$01                  ; 2EB511/118A0501
    MOV         palette_fade,#$04                  ; 2EB515/11A20104
    ASMCALL     $C086                       ; 2EB519/D086C0 // Write 0xFF to $37 and wait a frame
    MOV         VAR0,#$06                   ; 2EB51C/0D0006
    ASMCALL     $BA64                       ; 2EB51F/D064BA
    LOOP        #4                          ; 2EB522/0104
        ASMCALL     $C996, WAIT #8              ; 2EB524/D896C9 // Palette fade (out?) step
L_2EB527:
    ENDLOOP                                 ; 2EB527/02
    A_JSR       L_2EB802                    ; 2EB528/1802B8
    MOV         VAR0,#$03                   ; 2EB52B/0D0003
    ASMCALL     $BA64                       ; 2EB52E/D064BA
    TASK        L_2EB89F                    ; 2EB531/079FB8
    MOV         VAR6,#$FF                   ; 2EB534/0D06FF
    WAIT        #100                        ; 2EB537/0664
L_2EB539:
    WAIT        #80                         ; 2EB539/0650
L_2EB53B:
    WAIT        #60                         ; 2EB53B/063C
L_2EB53D:
    ASMCALL     $9952                       ; 2EB53D/D05299
    END                                     ; 2EB540/00

; CODE OR DATA -- $2EB541 .. $2EB548
incbinRange "../split/prg/bank2e.bin", $1541, $1548

L_2EB548:
    ASMCALL     $8E7E                       ; 2EB548/D07E8E
    WAIT        #30                         ; 2EB54B/061E
L_2EB54D:
    MOV         VAR1,#$00                   ; 2EB54D/0D0100
    MOV         VAR0,#$04                   ; 2EB550/0D0004
    LOOP        #7                          ; 2EB553/0107
        ASMCALL     $BA64                       ; 2EB555/D064BA
    ENDLOOP                                 ; 2EB558/02
    ONMOVE      $D91D                       ; 2EB559/231DD9
    SETYCAMERAVEL#$FD00                     ; 2EB55C/3300FD
    WAIT        #32                         ; 2EB55F/0620
L_2EB561:
    LOOP        #4                          ; 2EB561/0104
        ASMCALL     $C94C, WAIT #4              ; 2EB563/D44CC9 // Palette fade dark in step
L_2EB566:
    ENDLOOP                                 ; 2EB566/02
    ASMCALL     $BC04                       ; 2EB567/D004BC
    MOV         VAR1,#$3E                   ; 2EB56A/0D013E
    ASMCALL     $BB18                       ; 2EB56D/D018BB
    MOV         VAR5,#$00                   ; 2EB570/0D0500
    ASMCALL     $BB8C                       ; 2EB573/D08CBB
    MOV         $0180,#$00                  ; 2EB576/11800100
    ASMCALL     $C9A8                       ; 2EB57A/D0A8C9
    MOV         palette_fade,#$04                  ; 2EB57D/11A20104
    ASMCALL     $C977                       ; 2EB581/D077C9
    WAIT        #120                        ; 2EB584/0678
L_2EB586:
    MOV         VAR1,#$00                   ; 2EB586/0D0100
    MOV         VAR0,#$05                   ; 2EB589/0D0005
    LOOP        #10                         ; 2EB58C/010A
        ASMCALL     $BA64                       ; 2EB58E/D064BA
    ENDLOOP                                 ; 2EB591/02
    WAIT        #210                        ; 2EB592/06D2
L_2EB594:
    A_JSR       L_2EB7D1                    ; 2EB594/18D1B7
    WAIT        #210                        ; 2EB597/06D2
L_2EB599:
    MOV         palette_fade,#$00                  ; 2EB599/11A20100
    LOOP        #4                          ; 2EB59D/0104
        ASMCALL     $BBE5, WAIT #12             ; 2EB59F/DCE5BB
L_2EB5A2:
        ADD         palette_fade,#1                    ; 2EB5A2/16A2010201
    ENDLOOP                                 ; 2EB5A7/02
    MOV         $0603,#$FF                  ; 2EB5A8/110306FF
    LOOP        #128                        ; 2EB5AC/0180
        ADD         $0603,#-2                   ; 2EB5AE/16030602FE
        WAIT        #1                          ; 2EB5B3/0601
L_2EB5B5:
    ENDLOOP                                 ; 2EB5B5/02
    MOV         $0603,#$FF                  ; 2EB5B6/110306FF
    ASMCALL     $DE45                       ; 2EB5BA/D045DE // Play music
    .byte       $03                         ; 2EB5BD/03
    MOV         $056A,#$08                  ; 2EB5BE/116A0508
    WAIT        #240                        ; 2EB5C2/06F0
    END                                     ; 2EB5C4/00

L_2EB5C5:
    ASMCALL     $DE4B                       ; 2EB5C5/D04BDE // Play sound effect
    .byte       $44                         ; 2EB5C8/44
    ONMOVE      $D920                       ; 2EB5C9/2320D9
    SPRITEMAP   L_379A97                     ; 2EB5CC/1A979A37
    SETXPOS     #$007E                      ; 2EB5D0/2A7E00
    SETYPOS     #$003A                      ; 2EB5D3/2B3A00
    MOV         REG,VAR1                    ; 2EB5D6/1E01
    TABLEJSR    #7                          ; 2EB5D8/1007
    .word       L_2EB5E8                    ; 2EB5DA/E8B5
    .word       L_2EB607                    ; 2EB5DC/07B6
    .word       L_2EB626                    ; 2EB5DE/26B6
    .word       L_2EB639                    ; 2EB5E0/39B6
    .word       L_2EB658                    ; 2EB5E2/58B6
    .word       L_2EB677                    ; 2EB5E4/77B6
    .word       L_2EB696                    ; 2EB5E6/96B6
L_2EB5E8:
    SETPOSE     #$2F                        ; 2EB5E8/502F
    SETXVEL     #$0300                      ; 2EB5EA/B00003
    SETYVEL     #$FD00, WAIT #6             ; 2EB5ED/C600FD
L_2EB5F0:
    SETXVEL     #$0140                      ; 2EB5F0/B04001
    SETYVEL     #$FEC0, WAIT #12            ; 2EB5F3/CCC0FE
L_2EB5F6:
    SETXVEL     #$00C0                      ; 2EB5F6/B0C000
    SETYVEL     #$FF40                      ; 2EB5F9/C040FF
    WAIT        #18                         ; 2EB5FC/0612
L_2EB5FE:
    SETXVEL     #$0040                      ; 2EB5FE/B04000
    SETYVEL     #$FFC0                      ; 2EB601/C0C0FF
    WAIT        #24                         ; 2EB604/0618
    END                                     ; 2EB606/00

L_2EB607:
    SETPOSE     #$2F                        ; 2EB607/502F
    SETXVEL     #$FD00                      ; 2EB609/B000FD
    SETYVEL     #$FD00, WAIT #6             ; 2EB60C/C600FD
L_2EB60F:
    SETXVEL     #$FEC0                      ; 2EB60F/B0C0FE
    SETYVEL     #$FEC0, WAIT #12            ; 2EB612/CCC0FE
L_2EB615:
    SETXVEL     #$FF40                      ; 2EB615/B040FF
    SETYVEL     #$FF40                      ; 2EB618/C040FF
    WAIT        #18                         ; 2EB61B/0612
L_2EB61D:
    SETXVEL     #$FFC0                      ; 2EB61D/B0C0FF
    SETYVEL     #$FFC0                      ; 2EB620/C0C0FF
    WAIT        #24                         ; 2EB623/0618
    END                                     ; 2EB625/00

L_2EB626:
    SETPOSE     #$2F                        ; 2EB626/502F
    SETYVEL     #$FC00, WAIT #6             ; 2EB628/C600FC
L_2EB62B:
    SETYVEL     #$FE00, WAIT #12            ; 2EB62B/CC00FE
L_2EB62E:
    SETYVEL     #$FF00                      ; 2EB62E/C000FF
    WAIT        #18                         ; 2EB631/0612
L_2EB633:
    SETYVEL     #$FFC0                      ; 2EB633/C0C0FF
    WAIT        #24                         ; 2EB636/0618
    END                                     ; 2EB638/00

L_2EB639:
    SETPOSE     #$2E                        ; 2EB639/502E
    SETXVEL     #$0140                      ; 2EB63B/B04001
    SETYVEL     #$FC00, WAIT #6             ; 2EB63E/C600FC
L_2EB641:
    SETXVEL     #$00C0                      ; 2EB641/B0C000
    SETYVEL     #$FE00, WAIT #12            ; 2EB644/CC00FE
L_2EB647:
    SETXVEL     #$0080                      ; 2EB647/B08000
    SETYVEL     #$FF40                      ; 2EB64A/C040FF
    WAIT        #18                         ; 2EB64D/0612
L_2EB64F:
    SETXVEL     #$0020                      ; 2EB64F/B02000
    SETYVEL     #$FFC0                      ; 2EB652/C0C0FF
    WAIT        #24                         ; 2EB655/0618
    END                                     ; 2EB657/00

L_2EB658:
    SETPOSE     #$2E                        ; 2EB658/502E
    SETXVEL     #$FEC0                      ; 2EB65A/B0C0FE
    SETYVEL     #$FC00, WAIT #6             ; 2EB65D/C600FC
L_2EB660:
    SETXVEL     #$FF40                      ; 2EB660/B040FF
    SETYVEL     #$FE00, WAIT #12            ; 2EB663/CC00FE
L_2EB666:
    SETXVEL     #$FF80                      ; 2EB666/B080FF
    SETYVEL     #$FF40                      ; 2EB669/C040FF
    WAIT        #18                         ; 2EB66C/0612
L_2EB66E:
    SETXVEL     #$FFE0                      ; 2EB66E/B0E0FF
    SETYVEL     #$FFC0                      ; 2EB671/C0C0FF
    WAIT        #24                         ; 2EB674/0618
    END                                     ; 2EB676/00

L_2EB677:
    SETPOSE     #$2E                        ; 2EB677/502E
    SETXVEL     #$0400                      ; 2EB679/B00004
    SETYVEL     #$FEC0, WAIT #6             ; 2EB67C/C6C0FE
L_2EB67F:
    SETXVEL     #$0200                      ; 2EB67F/B00002
    SETYVEL     #$FF40, WAIT #12            ; 2EB682/CC40FF
L_2EB685:
    SETXVEL     #$00C0                      ; 2EB685/B0C000
    SETYVEL     #$FFC0                      ; 2EB688/C0C0FF
    WAIT        #18                         ; 2EB68B/0612
L_2EB68D:
    SETXVEL     #$0040                      ; 2EB68D/B04000
    SETYVEL     #$FFE0                      ; 2EB690/C0E0FF
    WAIT        #24                         ; 2EB693/0618
    END                                     ; 2EB695/00

L_2EB696:
    SETPOSE     #$2E                        ; 2EB696/502E
    SETXVEL     #$FC00                      ; 2EB698/B000FC
    SETYVEL     #$FEC0, WAIT #6             ; 2EB69B/C6C0FE
L_2EB69E:
    SETXVEL     #$FE00                      ; 2EB69E/B000FE
    SETYVEL     #$FF40, WAIT #12            ; 2EB6A1/CC40FF
L_2EB6A4:
    SETXVEL     #$FF40                      ; 2EB6A4/B040FF
    SETYVEL     #$FFC0                      ; 2EB6A7/C0C0FF
    WAIT        #18                         ; 2EB6AA/0612
L_2EB6AC:
    SETXVEL     #$FFC0                      ; 2EB6AC/B0C0FF
    SETYVEL     #$FFE0                      ; 2EB6AF/C0E0FF
    WAIT        #24                         ; 2EB6B2/0618
    END                                     ; 2EB6B4/00

L_2EB6B5:
    SPRITEMAP   L_379A97                     ; 2EB6B5/1A979A37
    ONMOVE      $D920                       ; 2EB6B9/2320D9
    MOV         REG,VAR1                    ; 2EB6BC/1E01
    TABLEJMP    #10                         ; 2EB6BE/0F0A
    .word       L_2EB6D4                    ; 2EB6C0/D4B6
    .word       L_2EB6E1                    ; 2EB6C2/E1B6
    .word       L_2EB6EE                    ; 2EB6C4/EEB6
    .word       L_2EB6FD                    ; 2EB6C6/FDB6
    .word       L_2EB70C                    ; 2EB6C8/0CB7
    .word       L_2EB71D                    ; 2EB6CA/1DB7
    .word       L_2EB72A                    ; 2EB6CC/2AB7
    .word       L_2EB737                    ; 2EB6CE/37B7
    .word       L_2EB746                    ; 2EB6D0/46B7
    .word       L_2EB757                    ; 2EB6D2/57B7
L_2EB6D4:
    SETPOSE     #$FF                        ; 2EB6D4/50FF
    WAIT        #30                         ; 2EB6D6/061E
L_2EB6D8:
    SETXPOS     #$0040                      ; 2EB6D8/2A4000
    A_JSR       L_2EB768                    ; 2EB6DB/1868B7
    A_JMP       L_2EB6D4                    ; 2EB6DE/17D4B6

L_2EB6E1:
    SETPOSE     #$FF                        ; 2EB6E1/50FF
    WAIT        #34                         ; 2EB6E3/0622
L_2EB6E5:
    SETXPOS     #$0060                      ; 2EB6E5/2A6000
    A_JSR       L_2EB768                    ; 2EB6E8/1868B7
    A_JMP       L_2EB6E1                    ; 2EB6EB/17E1B6

L_2EB6EE:
    SETPOSE     #$FF                        ; 2EB6EE/50FF
    WAIT        #160                        ; 2EB6F0/06A0
L_2EB6F2:
    WAIT        #210                        ; 2EB6F2/06D2
L_2EB6F4:
    SETXPOS     #$0080                      ; 2EB6F4/2A8000
    A_JSR       L_2EB768                    ; 2EB6F7/1868B7
    A_JMP       L_2EB6EE                    ; 2EB6FA/17EEB6

L_2EB6FD:
    SETPOSE     #$FF                        ; 2EB6FD/50FF
    WAIT        #14                         ; 2EB6FF/060E
L_2EB701:
    WAIT        #210                        ; 2EB701/06D2
L_2EB703:
    SETXPOS     #$00A0                      ; 2EB703/2AA000
    A_JSR       L_2EB768                    ; 2EB706/1868B7
    A_JMP       L_2EB6FD                    ; 2EB709/17FDB6

L_2EB70C:
    SETPOSE     #$FF                        ; 2EB70C/50FF
    WAIT        #240                        ; 2EB70E/06F0
L_2EB710:
    WAIT        #240                        ; 2EB710/06F0
L_2EB712:
    WAIT        #34                         ; 2EB712/0622
L_2EB714:
    SETXPOS     #$00C0                      ; 2EB714/2AC000
    A_JSR       L_2EB768                    ; 2EB717/1868B7
    A_JMP       L_2EB70C                    ; 2EB71A/170CB7

L_2EB71D:
    SETPOSE     #$FF                        ; 2EB71D/50FF
    WAIT        #30                         ; 2EB71F/061E
L_2EB721:
    SETXPOS     #$0040                      ; 2EB721/2A4000
    A_JSR       L_2EB796                    ; 2EB724/1896B7
    A_JMP       L_2EB71D                    ; 2EB727/171DB7

L_2EB72A:
    SETPOSE     #$FF                        ; 2EB72A/50FF
    WAIT        #130                        ; 2EB72C/0682
L_2EB72E:
    SETXPOS     #$0060                      ; 2EB72E/2A6000
    A_JSR       L_2EB796                    ; 2EB731/1896B7
    A_JMP       L_2EB72A                    ; 2EB734/172AB7

L_2EB737:
    SETPOSE     #$FF                        ; 2EB737/50FF
    WAIT        #240                        ; 2EB739/06F0
L_2EB73B:
    WAIT        #98                         ; 2EB73B/0662
L_2EB73D:
    SETXPOS     #$0080                      ; 2EB73D/2A8000
    A_JSR       L_2EB796                    ; 2EB740/1896B7
    A_JMP       L_2EB737                    ; 2EB743/1737B7

L_2EB746:
    SETPOSE     #$FF                        ; 2EB746/50FF
    WAIT        #240                        ; 2EB748/06F0
L_2EB74A:
    WAIT        #240                        ; 2EB74A/06F0
L_2EB74C:
    WAIT        #130                        ; 2EB74C/0682
L_2EB74E:
    SETXPOS     #$00A0                      ; 2EB74E/2AA000
    A_JSR       L_2EB796                    ; 2EB751/1896B7
    A_JMP       L_2EB746                    ; 2EB754/1746B7

L_2EB757:
    SETPOSE     #$FF                        ; 2EB757/50FF
    WAIT        #240                        ; 2EB759/06F0
L_2EB75B:
    WAIT        #240                        ; 2EB75B/06F0
L_2EB75D:
    WAIT        #98                         ; 2EB75D/0662
L_2EB75F:
    SETXPOS     #$00C0                      ; 2EB75F/2AC000
    A_JSR       L_2EB796                    ; 2EB762/1896B7
    A_JMP       L_2EB757                    ; 2EB765/1757B7

L_2EB768:
    SETYPOS     #$0000                      ; 2EB768/2B0000
    SETYVEL     #$0080                      ; 2EB76B/C08000
    SETPOSE     #$32                        ; 2EB76E/5032
    LOOP        #5                          ; 2EB770/0105
        SETXVEL     #$0020, WAIT #4             ; 2EB772/B42000
L_2EB775:
        SETXVEL     #$0080, WAIT #8             ; 2EB775/B88000
L_2EB778:
        SETXVEL     #$0100                      ; 2EB778/B00001
        WAIT        #20                         ; 2EB77B/0614
L_2EB77D:
        SETXVEL     #$0080, WAIT #8             ; 2EB77D/B88000
L_2EB780:
        SETXVEL     #$0030, WAIT #4             ; 2EB780/B43000
L_2EB783:
        SETXVEL     #$FFF8, WAIT #4             ; 2EB783/B4F8FF
L_2EB786:
        SETXVEL     #$FFE0, WAIT #8             ; 2EB786/B8E0FF
L_2EB789:
        SETXVEL     #$FF80                      ; 2EB789/B080FF
        WAIT        #20                         ; 2EB78C/0614
L_2EB78E:
        SETXVEL     #$FFE0, WAIT #8             ; 2EB78E/B8E0FF
L_2EB791:
        SETXVEL     #$FFF8, WAIT #4             ; 2EB791/B4F8FF
L_2EB794:
    ENDLOOP                                 ; 2EB794/02
    A_RTS                                   ; 2EB795/19

L_2EB796:
    SETYPOS     #$0000                      ; 2EB796/2B0000
    SETYVEL     #$0040                      ; 2EB799/C04000
    SETPOSE     #$2E                        ; 2EB79C/502E
    LOOP        #7                          ; 2EB79E/0107
        SETXVEL     #$FFE0, WAIT #4             ; 2EB7A0/B4E0FF
L_2EB7A3:
        SETXVEL     #$FF80, WAIT #8             ; 2EB7A3/B880FF
L_2EB7A6:
        SETXVEL     #$FF00                      ; 2EB7A6/B000FF
        WAIT        #16                         ; 2EB7A9/0610
L_2EB7AB:
        SETXVEL     #$FF80, WAIT #8             ; 2EB7AB/B880FF
L_2EB7AE:
        SETXVEL     #$FFE0, WAIT #4             ; 2EB7AE/B4E0FF
L_2EB7B1:
        SETXVEL     #$0008, WAIT #4             ; 2EB7B1/B40800
L_2EB7B4:
        SETXVEL     #$0020, WAIT #8             ; 2EB7B4/B82000
L_2EB7B7:
        SETXVEL     #$0080                      ; 2EB7B7/B08000
        WAIT        #16                         ; 2EB7BA/0610
L_2EB7BC:
        SETXVEL     #$0020, WAIT #8             ; 2EB7BC/B82000
L_2EB7BF:
        SETXVEL     #$0008, WAIT #4             ; 2EB7BF/B40800
L_2EB7C2:
    ENDLOOP                                 ; 2EB7C2/02
    A_RTS                                   ; 2EB7C3/19

L_2EB7C4:
    SPRITEMAP   L_379A97                     ; 2EB7C4/1A979A37
    SETXPOS     #$0080                      ; 2EB7C8/2A8000
    SETYPOS     #$0123                      ; 2EB7CB/2B2301
    SETPOSE     #$33                        ; 2EB7CE/5033
L_2EB7D0:
    HALT                                    ; 2EB7D0/09

L_2EB7D1:
    ONMOVE      $D920                       ; 2EB7D1/2320D9
    SPRITEMAP   L_379A97                     ; 2EB7D4/1A979A37
    ONPOSITION  $D97D                       ; 2EB7D8/217DD9
    ASMCALL     $DE4B                       ; 2EB7DB/D04BDE // Play sound effect
    .byte       $14                         ; 2EB7DE/14
    SETPOSE     #$09                        ; 2EB7DF/5009
    SETXPOS     #$0000                      ; 2EB7E1/2A0000
    SETYPOS     #$00B0                      ; 2EB7E4/2BB000
    SETYVEL     #$FF00                      ; 2EB7E7/C000FF
    SETXVEL     #$0800, WAIT #8             ; 2EB7EA/B80008
L_2EB7ED:
    SETXVEL     #$0400, WAIT #8             ; 2EB7ED/B80004
L_2EB7F0:
    SETXVEL     #$0200, WAIT #8             ; 2EB7F0/B80002
L_2EB7F3:
    SETXVEL     #$0140, WAIT #8             ; 2EB7F3/B84001
L_2EB7F6:
    SETXVEL     #$0100                      ; 2EB7F6/B00001
    WAIT        #24                         ; 2EB7F9/0618
L_2EB7FB:
    LOOP        #10                         ; 2EB7FB/010A
        SETPOSE     #$12, WAIT #6               ; 2EB7FD/5612
L_2EB7FF:
        INCPOSE     WAIT #6                     ; 2EB7FF/76
L_2EB800:
    ENDLOOP                                 ; 2EB800/02
    A_RTS                                   ; 2EB801/19

L_2EB802:
    MOV         VAR0,#$01                   ; 2EB802/0D0001
    ASMCALL     $BA64                       ; 2EB805/D064BA
    MOV         VAR2,#$00                   ; 2EB808/0D0200
L_2EB80B:
    WAIT        #1                          ; 2EB80B/0601
L_2EB80D:
    MOV         REG,VAR2                    ; 2EB80D/1E02
    JEQ         L_2EB80B                    ; 2EB80F/0A0BB8
    ONPOSITION  $D968                       ; 2EB812/2168D9
    ONMOVE      $D945                       ; 2EB815/2345D9
    SETPOSE     #$FF                        ; 2EB818/50FF
    SETZPOS     #$00C0                      ; 2EB81A/3AC000
    SETXPOS     #$00FF                      ; 2EB81D/2AFF00
    SETYPOS     #$0050                      ; 2EB820/2B5000
    ZEROVEL                                 ; 2EB823/38
    WAIT        #96                         ; 2EB824/0660
L_2EB826:
    ASMCALL     $DE4B                       ; 2EB826/D04BDE // Play sound effect
    .byte       $14                         ; 2EB829/14
    TASK        L_2EB84F                    ; 2EB82A/074FB8
    SETPOSE     #$0B                        ; 2EB82D/500B
    SETXVEL     #$F800                      ; 2EB82F/B000F8
    SETYVEL     #$0100, WAIT #2             ; 2EB832/C20001
L_2EB835:
    SETYVEL     #$0080, WAIT #2             ; 2EB835/C28000
L_2EB838:
    SETYVEL     #$0020, WAIT #2             ; 2EB838/C22000
L_2EB83B:
    SETYVEL     #$FF80, WAIT #4             ; 2EB83B/C480FF
L_2EB83E:
    SETYVEL     #$FF40, WAIT #4             ; 2EB83E/C440FF
L_2EB841:
    SETYVEL     #$FF00, WAIT #4             ; 2EB841/C400FF
L_2EB844:
    SETYVEL     #$FEC0, WAIT #4             ; 2EB844/C4C0FE
L_2EB847:
    SETYVEL     #$FE00, WAIT #8             ; 2EB847/C800FE
L_2EB84A:
    SETPOSE     #$FF                        ; 2EB84A/50FF
    ZEROVEL                                 ; 2EB84C/38
    ENDLASTTASK                             ; 2EB84D/12
    A_RTS                                   ; 2EB84E/19

L_2EB84F:
    MOV         VAR0,#$02                   ; 2EB84F/0D0002
    ASMCALL     $BA64, WAIT #3              ; 2EB852/D364BA
L_2EB855:
    A_JMP       L_2EB84F                    ; 2EB855/174FB8

L_2EB858:
    SPRITEMAP   L_379A97                     ; 2EB858/1A979A37
    SETXPOS     #$0080                      ; 2EB85C/2A8000
    SETYPOS     #$00C8                      ; 2EB85F/2BC800
    ZEROVEL                                 ; 2EB862/38
    LOOP        #2                          ; 2EB863/0102
        SETPOSE     #$14                        ; 2EB865/5014
        SETYVEL     #$0100, WAIT #2             ; 2EB867/C20001
L_2EB86A:
        INCPOSE     WAIT #2                     ; 2EB86A/72
L_2EB86B:
        INCPOSE     WAIT #2                     ; 2EB86B/72
L_2EB86C:
        INCPOSE     WAIT #2                     ; 2EB86C/72
L_2EB86D:
        INCPOSE     WAIT #2                     ; 2EB86D/72
L_2EB86E:
        INCPOSE     WAIT #2                     ; 2EB86E/72
L_2EB86F:
        INCPOSE     WAIT #2                     ; 2EB86F/72
L_2EB870:
        INCPOSE     WAIT #2                     ; 2EB870/72
L_2EB871:
        INCPOSE     WAIT #2                     ; 2EB871/72
L_2EB872:
        INCPOSE     WAIT #2                     ; 2EB872/72
L_2EB873:
        INCPOSE     WAIT #2                     ; 2EB873/72
L_2EB874:
        INCPOSE     WAIT #2                     ; 2EB874/72
L_2EB875:
        INCPOSE     WAIT #2                     ; 2EB875/72
L_2EB876:
        INCPOSE     WAIT #2                     ; 2EB876/72
L_2EB877:
    ENDLOOP                                 ; 2EB877/02
    INCPOSE     WAIT #3                     ; 2EB878/73
L_2EB879:
    ASMCALL     $DE4B                       ; 2EB879/D04BDE // Play sound effect
    .byte       $54                         ; 2EB87C/54
    ZEROVEL                                 ; 2EB87D/38
    SETPOSE     #$22                        ; 2EB87E/5022
    MOV         VAR1,#$00                   ; 2EB880/0D0100
    LOOP        #4                          ; 2EB883/0104
        ASMCALL     $BB20, WAIT #8              ; 2EB885/D820BB
L_2EB888:
    ENDLOOP                                 ; 2EB888/02
    ASMCALL     $BB37                       ; 2EB889/D037BB
L_2EB88C:
    HALT                                    ; 2EB88C/09

L_2EB88D:
    SPRITEMAP   L_379A97                     ; 2EB88D/1A979A37
    ONMOVE      $D920                       ; 2EB891/2320D9
    ASMCALL     $BB41                       ; 2EB894/D041BB
    SETYVEL     #$0400                      ; 2EB897/C00004
    SETPOSE     #$2E, WAIT #4               ; 2EB89A/542E
L_2EB89C:
    WAIT        #20                         ; 2EB89C/0614
L_2EB89E:
    END                                     ; 2EB89E/00

L_2EB89F:
    LOOP        #12                         ; 2EB89F/010C
        MOV         VAR5,#$01                   ; 2EB8A1/0D0501
        ASMCALL     $BB8C, WAIT #5              ; 2EB8A4/D58CBB
L_2EB8A7:
        MOV         VAR5,#$02                   ; 2EB8A7/0D0502
        ASMCALL     $BB8C, WAIT #5              ; 2EB8AA/D58CBB
L_2EB8AD:
    ENDLOOP                                 ; 2EB8AD/02
    LOOP        #12                         ; 2EB8AE/010C
        MOV         VAR5,#$03                   ; 2EB8B0/0D0503
        ASMCALL     $BB8C, WAIT #4              ; 2EB8B3/D48CBB
L_2EB8B6:
        MOV         VAR5,#$02                   ; 2EB8B6/0D0502
        ASMCALL     $BB8C, WAIT #4              ; 2EB8B9/D48CBB
L_2EB8BC:
    ENDLOOP                                 ; 2EB8BC/02
    LOOP        #11                         ; 2EB8BD/010B
        MOV         VAR5,#$04                   ; 2EB8BF/0D0504
        ASMCALL     $BB8C, WAIT #3              ; 2EB8C2/D38CBB
L_2EB8C5:
        MOV         VAR5,#$03                   ; 2EB8C5/0D0503
        ASMCALL     $BB8C, WAIT #3              ; 2EB8C8/D38CBB
L_2EB8CB:
    ENDLOOP                                 ; 2EB8CB/02
    ENDTASK                                 ; 2EB8CC/0C

L_2EB8CD:
    MOV         $0047,#$7A                  ; 2EB8CD/1147007A
    WAIT        #20                         ; 2EB8D1/0614
L_2EB8D3:
    MOV         $0047,#$7B                  ; 2EB8D3/1147007B
    WAIT        #20                         ; 2EB8D7/0614
L_2EB8D9:
    MOV         $0047,#$7C                  ; 2EB8D9/1147007C
    WAIT        #20                         ; 2EB8DD/0614
L_2EB8DF:
    MOV         $0047,#$7D                  ; 2EB8DF/1147007D
    WAIT        #20                         ; 2EB8E3/0614
L_2EB8E5:
    A_JMP       L_2EB8CD                    ; 2EB8E5/17CDB8

L_2EB8E8:
    MOV         REG,VAR0                    ; 2EB8E8/1E00
    TABLEJMP    #3                          ; 2EB8EA/0F03
    .word       L_2EB8F2                    ; 2EB8EC/F2B8
    .word       L_2EB98E                    ; 2EB8EE/8EB9
    .word       L_2EB96C                    ; 2EB8F0/6CB9
L_2EB8F2:
    MOV         $058A,#$00                  ; 2EB8F2/118A0500
    MOV         $05E3,#$19                  ; 2EB8F6/11E30519
    SETPOSE     #$FF                        ; 2EB8FA/50FF
    TASK        L_2EB8CD                    ; 2EB8FC/07CDB8
    TASK        L_2EB97F                    ; 2EB8FF/077FB9
    MOV         $0042,#$6C                  ; 2EB902/1142006C
    MOV         $0043,#$E4                  ; 2EB906/114300E4
    MOV         VAR1,#$00                   ; 2EB90A/0D0100
    MOV         VAR0,#$01                   ; 2EB90D/0D0001
    LOOP        #5                          ; 2EB910/0105
        ASMCALL     $BA64                       ; 2EB912/D064BA
    ENDLOOP                                 ; 2EB915/02
    MOV         VAR0,#$02                   ; 2EB916/0D0002
    ASMCALL     $BA64                       ; 2EB919/D064BA
    ASMCALL     $C086                       ; 2EB91C/D086C0 // Write 0xFF to $37 and wait a frame
    ASMCALL     Load_Palette                ; 2EB91F/D061DF // Load_Palette, palette, start_index, entries
    .word       $B968                       ; 2EB922/68B9
    .byte       $1C                         ; 2EB924/1C
    .byte       $04                         ; 2EB925/04
    SPRITEMAP   L_379A97                     ; 2EB926/1A979A37
    ONMOVE      $D945                       ; 2EB92A/2345D9
    ONPOSITION  $D968                       ; 2EB92D/2168D9
    SETZPOS     #$00C0                      ; 2EB930/3AC000
    SETPOSE     #$34                        ; 2EB933/5034
    SETXPOS     #$00C8                      ; 2EB935/2AC800
    SETYPOS     #$0080                      ; 2EB938/2B8000
    MOV         REG,#$04                    ; 2EB93B/1B04
    ASMCALL     $C9AA, WAIT #2              ; 2EB93D/D2AAC9
L_2EB940:
    LOOP        #4                          ; 2EB940/0104
        ASMCALL     $C996, WAIT #8              ; 2EB942/D896C9 // Palette fade (out?) step
L_2EB945:
    ENDLOOP                                 ; 2EB945/02
    MOV         VAR1,#$00                   ; 2EB946/0D0100
    MOV         VAR2,#$00                   ; 2EB949/0D0200
    ONTICK      $2EBC19                     ; 2EB94C/0819BC2E
L_2EB950:
    HALT                                    ; 2EB950/09

L_2EB951:
    TASK        L_2EB95E                    ; 2EB951/075EB9
    LOOP        #4                          ; 2EB954/0104
        ASMCALL     $C996, WAIT #6              ; 2EB956/D696C9 // Palette fade (out?) step
L_2EB959:
    ENDLOOP                                 ; 2EB959/02
    ASMCALL     $BC2F                       ; 2EB95A/D02FBC
    HALT                                    ; 2EB95D/09

L_2EB95E:
    WAIT        #1                          ; 2EB95E/0601
L_2EB960:
    ADD         $0603,#-7                   ; 2EB960/16030602F9
    A_JMP       L_2EB95E                    ; 2EB965/175EB9

; CODE OR DATA -- $2EB968 .. $2EB96C
incbinRange "../split/prg/bank2e.bin", $1968, $196C

L_2EB96C:
    SPRITEMAP   L_379A97                     ; 2EB96C/1A979A37
    ONMOVE      $D945                       ; 2EB970/2345D9
    ONPOSITION  $D968                       ; 2EB973/2168D9
    SETXPOS     #$0080                      ; 2EB976/2A8000
    SETYPOS     #$003B                      ; 2EB979/2B3B00
    SETPOSE     #$23                        ; 2EB97C/5023
L_2EB97E:
    HALT                                    ; 2EB97E/09

L_2EB97F:
    MOV         VAR5,#$06                   ; 2EB97F/0D0506
    ASMCALL     $BB8C, WAIT #2              ; 2EB982/D28CBB
L_2EB985:
    MOV         VAR5,#$07                   ; 2EB985/0D0507
    ASMCALL     $BB8C, WAIT #2              ; 2EB988/D28CBB
L_2EB98B:
    A_JMP       L_2EB97F                    ; 2EB98B/177FB9

L_2EB98E:
    MOV         REG,VAR1                    ; 2EB98E/1E01
    TABLEJMP    #5                          ; 2EB990/0F05
    .word       L_2EB9B5                    ; 2EB992/B5B9
    .word       L_2EB9C1                    ; 2EB994/C1B9
    .word       L_2EB9CF                    ; 2EB996/CFB9
    .word       L_2EB9DD                    ; 2EB998/DDB9
    .word       L_2EB99C                    ; 2EB99A/9CB9
L_2EB99C:
    ONMOVE      $D864                       ; 2EB99C/2364D8
    ONPOSITION  $D9BB                       ; 2EB99F/21BBD9
    SETXPOS     #$0081                      ; 2EB9A2/2A8100
    SETYPOS     #$0068                      ; 2EB9A5/2B6800
    SPRITEMAP   L_359310                     ; 2EB9A8/1A109335
L_2EB9AC:
    SETPOSE     #$00, WAIT #1               ; 2EB9AC/5100
L_2EB9AE:
    INCPOSE     WAIT #1                     ; 2EB9AE/71
L_2EB9AF:
    INCPOSE     WAIT #1                     ; 2EB9AF/71
L_2EB9B0:
    INCPOSE     WAIT #1                     ; 2EB9B0/71
L_2EB9B1:
    INCPOSE     WAIT #1                     ; 2EB9B1/71
L_2EB9B2:
    A_JMP       L_2EB9AC                    ; 2EB9B2/17ACB9

L_2EB9B5:
    SETXPOS     #$00B0                      ; 2EB9B5/2AB000
    SETYPOS     #$0020                      ; 2EB9B8/2B2000
    A_JSR       L_2EB9EB                    ; 2EB9BB/18EBB9
    A_JMP       L_2EBA00                    ; 2EB9BE/1700BA

L_2EB9C1:
    SETXPOS     #$0020                      ; 2EB9C1/2A2000
    SETYPOS     #$0028                      ; 2EB9C4/2B2800
    SETPOSE     #$FF, WAIT #3               ; 2EB9C7/53FF
L_2EB9C9:
    A_JSR       L_2EB9EB                    ; 2EB9C9/18EBB9
    A_JMP       L_2EBA0C                    ; 2EB9CC/170CBA

L_2EB9CF:
    SETXPOS     #$00E0                      ; 2EB9CF/2AE000
    SETYPOS     #$0028                      ; 2EB9D2/2B2800
    SETPOSE     #$FF, WAIT #6               ; 2EB9D5/56FF
L_2EB9D7:
    A_JSR       L_2EB9EB                    ; 2EB9D7/18EBB9
    A_JMP       L_2EBA0C                    ; 2EB9DA/170CBA

L_2EB9DD:
    SETXPOS     #$0050                      ; 2EB9DD/2A5000
    SETYPOS     #$0020                      ; 2EB9E0/2B2000
    SETPOSE     #$FF, WAIT #9               ; 2EB9E3/59FF
L_2EB9E5:
    A_JSR       L_2EB9EB                    ; 2EB9E5/18EBB9
    A_JMP       L_2EBA00                    ; 2EB9E8/1700BA

L_2EB9EB:
    ONMOVE      $D864                       ; 2EB9EB/2364D8
    ONPOSITION  $D9BB                       ; 2EB9EE/21BBD9
    SPRITEMAP   L_359282                     ; 2EB9F1/1A829235
    LOOP        #10                         ; 2EB9F5/010A
        LOOP        #255                        ; 2EB9F7/01FF
            SETPOSE     #$FF, WAIT #3               ; 2EB9F9/53FF
L_2EB9FB:
            SETPOSE     #$02, WAIT #1               ; 2EB9FB/5102
L_2EB9FD:
        ENDLOOP                                 ; 2EB9FD/02
    ENDLOOP                                 ; 2EB9FE/02
    A_RTS                                   ; 2EB9FF/19

L_2EBA00:
    A_JSR       L_2EBA42                    ; 2EBA00/1842BA
    A_JSR       L_2EBA20                    ; 2EBA03/1820BA
    A_JSR       L_2EBA18                    ; 2EBA06/1818BA
    A_JMP       L_2EBA00                    ; 2EBA09/1700BA

L_2EBA0C:
    A_JSR       L_2EBA18                    ; 2EBA0C/1818BA
    A_JSR       L_2EBA42                    ; 2EBA0F/1842BA
    A_JSR       L_2EBA20                    ; 2EBA12/1820BA
    A_JMP       L_2EBA0C                    ; 2EBA15/170CBA

L_2EBA18:
    LOOP        #48                         ; 2EBA18/0130
        SETPOSE     #$FF, WAIT #3               ; 2EBA1A/53FF
        SETPOSE     #$02, WAIT #1               ; 2EBA1C/5102
    ENDLOOP                                 ; 2EBA1E/02
    A_RTS                                   ; 2EBA1F/19

L_2EBA20:
    SETPOSE     #$05, WAIT #1               ; 2EBA20/5105
    SETPOSE     #$FF, WAIT #3               ; 2EBA22/53FF
    LOOP        #2                          ; 2EBA24/0102
        SETPOSE     #$04, WAIT #1               ; 2EBA26/5104
        SETPOSE     #$FF, WAIT #3               ; 2EBA28/53FF
    ENDLOOP                                 ; 2EBA2A/02
    SETPOSE     #$03, WAIT #1               ; 2EBA2B/5103
    SETPOSE     #$FF, WAIT #3               ; 2EBA2D/53FF
    LOOP        #2                          ; 2EBA2F/0102
        SETPOSE     #$05, WAIT #1               ; 2EBA31/5105
        SETPOSE     #$FF, WAIT #3               ; 2EBA33/53FF
    ENDLOOP                                 ; 2EBA35/02
    SETPOSE     #$03, WAIT #1               ; 2EBA36/5103
    SETPOSE     #$FF, WAIT #3               ; 2EBA38/53FF
    LOOP        #2                          ; 2EBA3A/0102
        SETPOSE     #$04, WAIT #1               ; 2EBA3C/5104
        SETPOSE     #$FF, WAIT #3               ; 2EBA3E/53FF
    ENDLOOP                                 ; 2EBA40/02
    A_RTS                                   ; 2EBA41/19

L_2EBA42:
    SETPOSE     #$03, WAIT #1               ; 2EBA42/5103
    SETPOSE     #$FF, WAIT #3               ; 2EBA44/53FF
    LOOP        #2                          ; 2EBA46/0102
        SETPOSE     #$04, WAIT #1               ; 2EBA48/5104
        SETPOSE     #$FF, WAIT #3               ; 2EBA4A/53FF
    ENDLOOP                                 ; 2EBA4C/02
    SETPOSE     #$03, WAIT #1               ; 2EBA4D/5103
    SETPOSE     #$FF, WAIT #3               ; 2EBA4F/53FF
    LOOP        #2                          ; 2EBA51/0102
        SETPOSE     #$05, WAIT #1               ; 2EBA53/5105
        SETPOSE     #$FF, WAIT #3               ; 2EBA55/53FF
    ENDLOOP                                 ; 2EBA57/02
    SETPOSE     #$04, WAIT #1               ; 2EBA58/5104
    SETPOSE     #$FF, WAIT #3               ; 2EBA5A/53FF
    LOOP        #2                          ; 2EBA5C/0102
        SETPOSE     #$05, WAIT #1               ; 2EBA5E/5105
        SETPOSE     #$FF, WAIT #3               ; 2EBA60/53FF
    ENDLOOP                                 ; 2EBA62/02
    A_RTS                                   ; 2EBA63/19

; CODE OR DATA -- $2EBA64 .. $2FA011
incbinRange "../split/prg/bank2e.bin", $1A64, $2000