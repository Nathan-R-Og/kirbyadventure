.segment "PRG2C": absolute
Script44_PaintRoller:
    MOV         $0043,#$B0                  ; 2CA000/114300B0
    SETBANK     #$22                        ; 2CA004/2822
    ONPOSITION  $D9BB                       ; 2CA006/21BBD9
    SPRITEMAP   L_318E17                     ; 2CA009/1A178E31
    MOV         REG,VAR0                    ; 2CA00D/1E00
    JNE         L_2CA0EB                    ; 2CA00F/0BEBA0
    MOV         VAR5,#$00                   ; 2CA012/0D0500
    MOV         VAR6,#$00                   ; 2CA015/0D0600
    MOV         $0784,#$01                  ; 2CA018/11840701
    MOV         $0786,#$01                  ; 2CA01C/11860701
    MOV         $0787,#$11                  ; 2CA020/11870711
    MOV         $0788,#$FE                  ; 2CA024/118807FE
    MOV         $078B,#$00                  ; 2CA028/118B0700
    SETZPOS     #$007F                      ; 2CA02C/3A7F00
    MOV         $0789,#$00                  ; 2CA02F/11890700
    ASMCALL     $A68A                       ; 2CA033/D08AA6
    TASK        L_2CA0D5                    ; 2CA036/07D5A0
    A_JSR       $8452                       ; 2CA039/185284
    ENDLASTTASK                             ; 2CA03C/12
L_2CA03D:
    ONTICK      $2CA12C                     ; 2CA03D/082CA12C
    MOV         $0789,#$00                  ; 2CA041/11890700
    ASMCALL     $A68A                       ; 2CA045/D08AA6
    MOV         $0785,#$00                  ; 2CA048/11850700
    MOV         VAR2,#$04                   ; 2CA04C/0D0204
L_2CA04F:
    ASMCALL     $A2A4                       ; 2CA04F/D0A4A2
L_2CA052:
    MOV         REG,VAR2                    ; 2CA052/1E02
    JNE         L_2CA04F                    ; 2CA054/0B4FA0
    ASMCALL     $A1E7                       ; 2CA057/D0E7A1
L_2CA05A:
    ASMCALL     $A2A4                       ; 2CA05A/D0A4A2
L_2CA05D:
    MOV         REG,VAR2                    ; 2CA05D/1E02
    JNE         L_2CA05A                    ; 2CA05F/0B5AA0
    ZEROVEL                                 ; 2CA062/38
    ASMCALL     $A68A                       ; 2CA063/D08AA6
    MOV         REG,#$1E                    ; 2CA066/1B1E
    ASMCALL     $8B24                       ; 2CA068/D0248B // Check if REG == (VAR0 >> 1)
    JEQ         L_2CA075                    ; 2CA06B/0A75A0
    MOV         $0789,#$01                  ; 2CA06E/11890701
    A_JSR       L_2CA0DB                    ; 2CA072/18DBA0
L_2CA075:
    MOV         $0789,#$00                  ; 2CA075/11890700
    MOV         $0785,#$07                  ; 2CA079/11850707
    MOV         VAR2,#$05                   ; 2CA07D/0D0205
L_2CA080:
    ASMCALL     $A2A4                       ; 2CA080/D0A4A2
L_2CA083:
    MOV         REG,VAR2                    ; 2CA083/1E02
    JNE         L_2CA080                    ; 2CA085/0B80A0
    MOV         REG,#$1E                    ; 2CA088/1B1E
    ASMCALL     $8B24                       ; 2CA08A/D0248B // Check if REG == (VAR0 >> 1)
    JEQ         L_2CA092                    ; 2CA08D/0A92A0
    WAIT        #32                         ; 2CA090/0620
L_2CA092:
    ASMCALL     $DED0                       ; 2CA092/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CA095/09
    .byte       $12                         ; 2CA096/12
    .byte       $44                         ; 2CA097/44
    .byte       $00                         ; 2CA098/00
    .byte       $F0                         ; 2CA099/F0
    .byte       $00                         ; 2CA09A/00
    .byte       $01                         ; 2CA09B/01
    .byte       $00                         ; 2CA09C/00
    MOV         VAR6,REG                    ; 2CA09D/1D06
    ASMCALL     $DED0                       ; 2CA09F/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CA0A2/09
    .byte       $12                         ; 2CA0A3/12
    .byte       $5B                         ; 2CA0A4/5B
    .byte       $00                         ; 2CA0A5/00
    .byte       $00                         ; 2CA0A6/00
    .byte       $00                         ; 2CA0A7/00
    .byte       $00                         ; 2CA0A8/00
    .byte       $00                         ; 2CA0A9/00
    MOV         $0785,#$08                  ; 2CA0AA/11850708
    MOV         VAR2,#$05                   ; 2CA0AE/0D0205
L_2CA0B1:
    ASMCALL     $A2A4                       ; 2CA0B1/D0A4A2
L_2CA0B4:
    MOV         REG,VAR2                    ; 2CA0B4/1E02
    JNE         L_2CA0B1                    ; 2CA0B6/0BB1A0
    MOV         VAR6,#$00                   ; 2CA0B9/0D0600
    ASMCALL     $A6C6                       ; 2CA0BC/D0C6A6
    JEQ         L_2CA0CB                    ; 2CA0BF/0ACBA0
    LOOP        REG                         ; 2CA0C2/22
        MOV         $0789,#$02                  ; 2CA0C3/11890702
        A_JSR       L_2CA0DB                    ; 2CA0C7/18DBA0
    ENDLOOP                                 ; 2CA0CA/02
L_2CA0CB:
    A_JMP       L_2CA03D                    ; 2CA0CB/173DA0

; CODE OR DATA -- $2CA0CE .. $2CA0D5
incbinRange "../split/prg/bank2c.bin", $00CE, $00D5

L_2CA0D5:
    A_JSR       L_2CA0DB                    ; 2CA0D5/18DBA0
    A_JMP       L_2CA0D5                    ; 2CA0D8/17D5A0

L_2CA0DB:
    ZEROVEL                                 ; 2CA0DB/38
    ASMCALL     $8C53, WAIT #6              ; 2CA0DC/D6538C // Set pose (respect facing)
    .byte       $06                         ; 2CA0DF/06
L_2CA0E0:
    ADDPOSE     #-6                         ; 2CA0E0/60FA
    WAIT        #24                         ; 2CA0E2/0618
L_2CA0E4:
    ADDPOSE     #6, WAIT #6                 ; 2CA0E4/6606
L_2CA0E6:
    ADDPOSE     #4                          ; 2CA0E6/6004
    WAIT        #24                         ; 2CA0E8/0618
L_2CA0EA:
    A_RTS                                   ; 2CA0EA/19

L_2CA0EB:
    SETZPOS     #$007E                      ; 2CA0EB/3A7E00
    LOOP        #5                          ; 2CA0EE/0105
        ASMCALL     $8829                       ; 2CA0F0/D02988 // Set pose to 0 (respect facing)
        ADDPOSE     #14, WAIT #1                ; 2CA0F3/610E
L_2CA0F5:
        ADDPOSE     #2, WAIT #1                 ; 2CA0F5/6102
L_2CA0F7:
        ADDPOSE     #2, WAIT #1                 ; 2CA0F7/6102
L_2CA0F9:
        ADDPOSE     #2, WAIT #1                 ; 2CA0F9/6102
L_2CA0FB:
        ADDPOSE     #2, WAIT #1                 ; 2CA0FB/6102
L_2CA0FD:
        ADDPOSE     #2, WAIT #1                 ; 2CA0FD/6102
L_2CA0FF:
        ADDPOSE     #2, WAIT #1                 ; 2CA0FF/6102
L_2CA101:
        ADDPOSE     #2, WAIT #1                 ; 2CA101/6102
L_2CA103:
        ADDPOSE     #2, WAIT #1                 ; 2CA103/6102
L_2CA105:
        ADDPOSE     #2, WAIT #1                 ; 2CA105/6102
L_2CA107:
    ENDLOOP                                 ; 2CA107/02
    END                                     ; 2CA108/00

L_2CA109:
    ZEROVEL                                 ; 2CA109/38
    ASMCALL_l   $219952                     ; 2CA10A/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2CA10E/00
    .byte       $00                         ; 2CA10F/00
    .byte       $0C                         ; 2CA110/0C
    .byte       $00                         ; 2CA111/00
    A_JSR       $83C8                       ; 2CA112/18C883
    ASMCALL_l   $219952                     ; 2CA115/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2CA119/00
    .byte       $00                         ; 2CA11A/00
    .byte       $0C                         ; 2CA11B/0C
    .byte       $00                         ; 2CA11C/00
    A_JSR       $81DF                       ; 2CA11D/18DF81
    ASMCALL     $DED0                       ; 2CA120/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CA123/09
    .byte       $12                         ; 2CA124/12
    .byte       $06                         ; 2CA125/06
    .byte       $00                         ; 2CA126/00
    .byte       $00                         ; 2CA127/00
    .byte       $00                         ; 2CA128/00
    .byte       $02                         ; 2CA129/02
    .byte       $00                         ; 2CA12A/00
    END                                     ; 2CA12B/00

; CODE OR DATA -- $2CA12C .. $2CA6E4
incbinRange "../split/prg/bank2c.bin", $012C, $06E4

Script5B_PaintRollerDrawing:
    SETBANK     #$22                        ; 2CA6E4/2822
    ONPOSITION  $D9BB                       ; 2CA6E6/21BBD9
    SPRITEMAP   L_318E17                     ; 2CA6E9/1A178E31
    MOV         REG,VAR0                    ; 2CA6ED/1E00
    JNE         L_2CA825                    ; 2CA6EF/0B25A8
    SETZPOS     #$007D                      ; 2CA6F2/3A7D00
    MOV         VAR0,#$02                   ; 2CA6F5/0D0002
    ASMCALL     $A8D8                       ; 2CA6F8/D0D8A8
    LOOP        #5                          ; 2CA6FB/0105
        ASMCALL     $8C53, WAIT #2              ; 2CA6FD/D2538C // Set pose (respect facing)
        .byte       $24                         ; 2CA700/24
L_2CA701:
        SETPOSE     #$FF, WAIT #2               ; 2CA701/52FF
L_2CA703:
        ASMCALL     $8C53, WAIT #2              ; 2CA703/D2538C // Set pose (respect facing)
        .byte       $26                         ; 2CA706/26
L_2CA707:
        SETPOSE     #$FF, WAIT #2               ; 2CA707/52FF
L_2CA709:
    ENDLOOP                                 ; 2CA709/02
    ASMCALL     $A90F                       ; 2CA70A/D00FA9
    WAIT        #60                         ; 2CA70D/063C
L_2CA70F:
    MOV         VAR2,#$01                   ; 2CA70F/0D0201
    ONTICK      $2CA861                     ; 2CA712/0861A82C
    ASMCALL     $8851                       ; 2CA716/D05188 // Face towards Kirby
    SETZPOS     #$0080                      ; 2CA719/3A8000
    MOV         REG,VAR5                    ; 2CA71C/1E05
    TABLEJMP    #8                          ; 2CA71E/0F08
    .word       L_2CA730                    ; 2CA720/30A7
    .word       L_2CA73E                    ; 2CA722/3EA7
    .word       L_2CA750                    ; 2CA724/50A7
    .word       L_2CA762                    ; 2CA726/62A7
    .word       L_2CA775                    ; 2CA728/75A7
    .word       L_2CA78F                    ; 2CA72A/8FA7
    .word       L_2CA7C6                    ; 2CA72C/C6A7
    .word       L_2CA818                    ; 2CA72E/18A8
L_2CA730:
    ASMCALL     $DE4B                       ; 2CA730/D04BDE // Play sound effect
    .byte       $4F                         ; 2CA733/4F
    ASMCALL     $E26A                       ; 2CA734/D06AE2 // Set X velocity (respect facing)
    .word       $0300                       ; 2CA737/0003
    ASMCALL     $8C53                       ; 2CA739/D0538C // Set pose (respect facing)
    .byte       $28                         ; 2CA73C/28
    HALT                                    ; 2CA73D/09

L_2CA73E:
    ASMCALL     $DE4B                       ; 2CA73E/D04BDE // Play sound effect
    .byte       $3E                         ; 2CA741/3E
    ASMCALL     $E26A                       ; 2CA742/D06AE2 // Set X velocity (respect facing)
    .word       $0200                       ; 2CA745/0002
L_2CA747:
    ASMCALL     $8C53, WAIT #8              ; 2CA747/D8538C // Set pose (respect facing)
    .byte       $2A                         ; 2CA74A/2A
    ADDPOSE     #2, WAIT #8                 ; 2CA74B/6802
    A_JMP       L_2CA747                    ; 2CA74D/1747A7

L_2CA750:
    ASMCALL     $DE4B                       ; 2CA750/D04BDE // Play sound effect
    .byte       $3E                         ; 2CA753/3E
    ASMCALL     $E26A                       ; 2CA754/D06AE2 // Set X velocity (respect facing)
    .word       $0200                       ; 2CA757/0002
L_2CA759:
    ASMCALL     $8C53, WAIT #8              ; 2CA759/D8538C // Set pose (respect facing)
    .byte       $2E                         ; 2CA75C/2E
L_2CA75D:
    ADDPOSE     #2, WAIT #8                 ; 2CA75D/6802
    A_JMP       L_2CA759                    ; 2CA75F/1759A7

L_2CA762:
    ASMCALL     $DE4B                       ; 2CA762/D04BDE // Play sound effect
    .byte       $3E                         ; 2CA765/3E
    ASMCALL     $E26A                       ; 2CA766/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 2CA769/0001
L_2CA76B:
    ASMCALL     $8C53, WAIT #8              ; 2CA76B/D8538C // Set pose (respect facing)
    .byte       $32                         ; 2CA76E/32
    ASMCALL     $84DB, WAIT #8              ; 2CA76F/D8DB84 // Flip sprite horizontally (actually toggle LSB of pose)
    A_JMP       L_2CA76B                    ; 2CA772/176BA7

L_2CA775:
    ASMCALL     $DE4B                       ; 2CA775/D04BDE // Play sound effect
    .byte       $3E                         ; 2CA778/3E
    ONTICK      $2CA83F                     ; 2CA779/083FA82C
    ASMCALL     $868D                       ; 2CA77D/D08D86
    ASMCALL     $E23C                       ; 2CA780/D03CE2 // Unknown ASM $E23C
    .word       $0200                       ; 2CA783/0002
L_2CA785:
    ASMCALL     $8C53, WAIT #10             ; 2CA785/DA538C // Set pose (respect facing)
    .byte       $34                         ; 2CA788/34
L_2CA789:
    ASMCALL     $84DB, WAIT #10             ; 2CA789/DADB84 // Flip sprite horizontally (actually toggle LSB of pose)
L_2CA78C:
    A_JMP       L_2CA785                    ; 2CA78C/1785A7

L_2CA78F:
    ASMCALL     $DE4B                       ; 2CA78F/D04BDE // Play sound effect
    .byte       $1A                         ; 2CA792/1A
    MOV         VAR2,#$00                   ; 2CA793/0D0200
    ONTICK      $2CA8A3                     ; 2CA796/08A3A82C
    ASMCALL     $8C53                       ; 2CA79A/D0538C // Set pose (respect facing)
    .byte       $36                         ; 2CA79D/36
    ASMCALL     $E26A                       ; 2CA79E/D06AE2 // Set X velocity (respect facing)
    .word       $0080                       ; 2CA7A1/8000
    SETYVEL     #$0080, WAIT #6             ; 2CA7A3/C68000
    SETYVEL     #$0100, WAIT #6             ; 2CA7A6/C60001
    SETYVEL     #$0200, WAIT #10            ; 2CA7A9/CA0002
    ASMCALL     $DE4B                       ; 2CA7AC/D04BDE // Play sound effect
    .byte       $1C                         ; 2CA7AF/1C
    SETYVEL     #$FE00, WAIT #6             ; 2CA7B0/C600FE
    SETYVEL     #$FF80, WAIT #6             ; 2CA7B3/C680FF
    SETYVEL     #$0080, WAIT #6             ; 2CA7B6/C68000
    SETYVEL     #$0200, WAIT #4             ; 2CA7B9/C40002
    ASMCALL     $DE4B                       ; 2CA7BC/D04BDE // Play sound effect
    .byte       $1C                         ; 2CA7BF/1C
    ZEROVEL                                 ; 2CA7C0/38
    WAIT        #54                         ; 2CA7C1/0636
    A_JMP       $8180                       ; 2CA7C3/178081

L_2CA7C6:
    ASMCALL     $DE4B                       ; 2CA7C6/D04BDE // Play sound effect
    .byte       $3E                         ; 2CA7C9/3E
    ONTICK      $2CA83F                     ; 2CA7CA/083FA82C
    MOV         VAR2,#$00                   ; 2CA7CE/0D0200
    ASMCALL     $8C53                       ; 2CA7D1/D0538C // Set pose (respect facing)
    .byte       $3C                         ; 2CA7D4/3C
    SETYVEL     #$FE00, WAIT #4             ; 2CA7D5/C400FE
L_2CA7D8:
    SETYVEL     #$FF00, WAIT #8             ; 2CA7D8/C800FF
L_2CA7DB:
    SETYVEL     #$FF80, WAIT #8             ; 2CA7DB/C880FF
L_2CA7DE:
    ZEROVEL                                 ; 2CA7DE/38
    WAIT        #32                         ; 2CA7DF/0620
L_2CA7E1:
    ASMCALL     $8851                       ; 2CA7E1/D05188 // Face towards Kirby
L_2CA7E4:
    A_AND       VAR2,#$01                   ; 2CA7E4/13020001
    JEQ         L_2CA7F6                    ; 2CA7E8/0AF6A7
    ASMCALL     $DED0                       ; 2CA7EB/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CA7EE/09
    .byte       $12                         ; 2CA7EF/12
    .byte       $5B                         ; 2CA7F0/5B
    .byte       $00                         ; 2CA7F1/00
    .byte       $00                         ; 2CA7F2/00
    .byte       $00                         ; 2CA7F3/00
    .byte       $01                         ; 2CA7F4/01
    .byte       $00                         ; 2CA7F5/00
L_2CA7F6:
    ASMCALL     $8C53                       ; 2CA7F6/D0538C // Set pose (respect facing)
    .byte       $3C                         ; 2CA7F9/3C
    ASMCALL     $E26A                       ; 2CA7FA/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 2CA7FD/0001
    SETYVEL     #$FF80, WAIT #6             ; 2CA7FF/C680FF
L_2CA802:
    SETYVEL     #$FF00, WAIT #6             ; 2CA802/C600FF
L_2CA805:
    SETYVEL     #$FF80, WAIT #6             ; 2CA805/C680FF
L_2CA808:
    SETYVEL     #$0080, WAIT #6             ; 2CA808/C68000
L_2CA80B:
    SETYVEL     #$0100, WAIT #6             ; 2CA80B/C60001
L_2CA80E:
    SETYVEL     #$0080, WAIT #6             ; 2CA80E/C68000
L_2CA811:
    ADD         VAR2,#1                     ; 2CA811/13020201
    A_JMP       L_2CA7E4                    ; 2CA815/17E4A7

L_2CA818:
    ASMCALL     $DE4B                       ; 2CA818/D04BDE // Play sound effect
    .byte       $3E                         ; 2CA81B/3E
    SETPOSE     #$42                        ; 2CA81C/5042
    MOV         VAR9,#$20                   ; 2CA81E/0D0920
    JML         L_25A098                    ; 2CA821/0398A025

L_2CA825:
    SETZPOS     #$0080                      ; 2CA825/3A8000
    MOV         VAR5,#$08                   ; 2CA828/0D0508
    ASMCALL     $DE4B                       ; 2CA82B/D04BDE // Play sound effect
    .byte       $1C                         ; 2CA82E/1C
    ONTICK      $2CA8C1                     ; 2CA82F/08C1A82C
    SETYVEL     #$0400                      ; 2CA833/C00004
L_2CA836:
    ASMCALL     $8C53, WAIT #2              ; 2CA836/D2538C // Set pose (respect facing)
    .byte       $3E                         ; 2CA839/3E
L_2CA83A:
    ADDPOSE     #2, WAIT #4                 ; 2CA83A/6402
L_2CA83C:
    A_JMP       L_2CA836                    ; 2CA83C/1736A8

; CODE OR DATA -- $2CA83F .. $2CA9B3
incbinRange "../split/prg/bank2c.bin", $083F, $09B3

Script43_WhispyWoods:
    SETZPOS     #$00FF                      ; 2CA9B3/3AFF00
    SETBANK     #$22                        ; 2CA9B6/2822
    ONPOSITION  $D97D                       ; 2CA9B8/217DD9
    SPRITEMAP   L_308BC6                     ; 2CA9BB/1AC68B30
    SETPOSE     #$00                        ; 2CA9BF/5000
L_2CA9C1:
    ASMCALL     $AB6E, WAIT #1              ; 2CA9C1/D16EAB
L_2CA9C4:
    JEQ         L_2CA9C1                    ; 2CA9C4/0AC1A9
    ASMCALL     $89F3                       ; 2CA9C7/D0F389 // Lock camera scrolling
    MOV         $0784,#$04                  ; 2CA9CA/11840704
    A_JSR       $8452                       ; 2CA9CE/185284
    ONTICK      $2CAACB                     ; 2CA9D1/08CBAA2C
L_2CA9D5:
    MOV         VAR2,#$FF                   ; 2CA9D5/0D02FF
    MOV         VAR3,#$04                   ; 2CA9D8/0D0304
    SETPOSE     #$00                        ; 2CA9DB/5000
    WAIT        #20                         ; 2CA9DD/0614
L_2CA9DF:
    INCPOSE     WAIT #3                     ; 2CA9DF/73
L_2CA9E0:
    INCPOSE     WAIT #6                     ; 2CA9E0/76
L_2CA9E1:
    DECPOSE     WAIT #3                     ; 2CA9E1/83
L_2CA9E2:
    DECPOSE                                 ; 2CA9E2/80
    WAIT        #20                         ; 2CA9E3/0614
L_2CA9E5:
    INCPOSE     WAIT #3                     ; 2CA9E5/73
L_2CA9E6:
    INCPOSE     WAIT #8                     ; 2CA9E6/78
L_2CA9E7:
    DECPOSE     WAIT #3                     ; 2CA9E7/83
L_2CA9E8:
    DECPOSE     WAIT #10                    ; 2CA9E8/8A
L_2CA9E9:
    ASMCALL     $AABA                       ; 2CA9E9/D0BAAA
    TABLEJMP    #4                          ; 2CA9EC/0F04
    .word       L_2CAA20                    ; 2CA9EE/20AA
    .word       L_2CAA47                    ; 2CA9F0/47AA
    .word       L_2CA9F6                    ; 2CA9F2/F6A9
    .word       L_2CA9F6                    ; 2CA9F4/F6A9
L_2CA9F6:
    MOV         VAR2,#$03                   ; 2CA9F6/0D0203
    MOV         VAR3,#$00                   ; 2CA9F9/0D0300
L_2CA9FC:
    ASMCALL     $DED0                       ; 2CA9FC/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CA9FF/09
    .byte       $12                         ; 2CAA00/12
    .byte       $5A                         ; 2CAA01/5A
    .byte       $00                         ; 2CAA02/00
    .byte       $00                         ; 2CAA03/00
    .byte       $00                         ; 2CAA04/00
    .byte       $01                         ; 2CAA05/01
    .byte       $00                         ; 2CAA06/00
    SETPOSE     #$00                        ; 2CAA07/5000
    WAIT        #30                         ; 2CAA09/061E
L_2CAA0B:
    SETPOSE     #$01, WAIT #4               ; 2CAA0B/5401
L_2CAA0D:
    SETPOSE     #$02, WAIT #6               ; 2CAA0D/5602
L_2CAA0F:
    SETPOSE     #$01, WAIT #4               ; 2CAA0F/5401
L_2CAA11:
    SETPOSE     #$00                        ; 2CAA11/5000
    WAIT        #48                         ; 2CAA13/0630
L_2CAA15:
    MOV         REG,VAR2                    ; 2CAA15/1E02
    JNE         L_2CA9FC                    ; 2CAA17/0BFCA9
    ASMCALL     $AA97                       ; 2CAA1A/D097AA
    A_JMP       L_2CA9D5                    ; 2CAA1D/17D5A9

L_2CAA20:
    SETPOSE     #$07, WAIT #1               ; 2CAA20/5107
L_2CAA22:
    INCPOSE     WAIT #5                     ; 2CAA22/75
L_2CAA23:
    INCPOSE     WAIT #12                    ; 2CAA23/7C
L_2CAA24:
    MOV         VAR2,#$02                   ; 2CAA24/0D0202
    MOV         VAR3,#$01                   ; 2CAA27/0D0301
    MOV         VAR3,#$02                   ; 2CAA2A/0D0302
L_2CAA2D:
    ASMCALL     $DED0                       ; 2CAA2D/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CAA30/09
    .byte       $12                         ; 2CAA31/12
    .byte       $5A                         ; 2CAA32/5A
    .byte       $F0                         ; 2CAA33/F0
    .byte       $18                         ; 2CAA34/18
    .byte       $00                         ; 2CAA35/00
    .byte       $00                         ; 2CAA36/00
    .byte       $00                         ; 2CAA37/00
    SETPOSE     #$09, WAIT #12              ; 2CAA38/5C09
L_2CAA3A:
    DECPOSE     WAIT #1                     ; 2CAA3A/81
L_2CAA3B:
    DECPOSE     WAIT #1                     ; 2CAA3B/81
L_2CAA3C:
    MOV         REG,VAR2                    ; 2CAA3C/1E02
    JNE         L_2CAA2D                    ; 2CAA3E/0B2DAA
    ASMCALL     $AA97                       ; 2CAA41/D097AA
    A_JMP       L_2CA9D5                    ; 2CAA44/17D5A9

L_2CAA47:
    SETPOSE     #$08, WAIT #1               ; 2CAA47/5108
    INCPOSE     WAIT #5                     ; 2CAA49/75
    MOV         VAR2,#$04                   ; 2CAA4A/0D0204
    MOV         VAR3,#$03                   ; 2CAA4D/0D0303
L_2CAA50:
    ASMCALL     $DED0                       ; 2CAA50/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CAA53/09
    .byte       $12                         ; 2CAA54/12
    .byte       $5A                         ; 2CAA55/5A
    .byte       $F0                         ; 2CAA56/F0
    .byte       $18                         ; 2CAA57/18
    .byte       $00                         ; 2CAA58/00
    .byte       $00                         ; 2CAA59/00
    .byte       $00                         ; 2CAA5A/00
    SETPOSE     #$09, WAIT #5               ; 2CAA5B/5509
    DECPOSE     WAIT #1                     ; 2CAA5D/81
    DECPOSE     WAIT #11                    ; 2CAA5E/8B
    MOV         REG,VAR2                    ; 2CAA5F/1E02
    JNE         L_2CAA50                    ; 2CAA61/0B50AA
    ASMCALL     $AA97                       ; 2CAA64/D097AA
    A_JMP       L_2CA9D5                    ; 2CAA67/17D5A9

L_2CAA6A:
    ENDTICK                                 ; 2CAA6A/0E
    ASMCALL_l   $219952                     ; 2CAA6B/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2CAA6F/00
    .byte       $00                         ; 2CAA70/00
    .byte       $0C                         ; 2CAA71/0C
    .byte       $00                         ; 2CAA72/00
    A_JSR       $83C8                       ; 2CAA73/18C883
    ASMCALL_l   $219952                     ; 2CAA76/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2CAA7A/00
    .byte       $00                         ; 2CAA7B/00
    .byte       $0C                         ; 2CAA7C/0C
    .byte       $00                         ; 2CAA7D/00
    A_JSR       $81DF                       ; 2CAA7E/18DF81
    ASMCALL     $DED0                       ; 2CAA81/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CAA84/09
    .byte       $12                         ; 2CAA85/12
    .byte       $06                         ; 2CAA86/06
    .byte       $00                         ; 2CAA87/00
    .byte       $00                         ; 2CAA88/00
    .byte       $00                         ; 2CAA89/00
    .byte       $02                         ; 2CAA8A/02
    .byte       $00                         ; 2CAA8B/00
    SETZPOS     #$00FF                      ; 2CAA8C/3AFF00
    SPRITEMAP   L_308BC6                     ; 2CAA8F/1AC68B30
    SETPOSE     #$06, WAIT #8               ; 2CAA93/5806
L_2CAA95:
    DECPOSE     WAIT #15                    ; 2CAA95/8F
L_2CAA96:
    HALT                                    ; 2CAA96/09

; CODE OR DATA -- $2CAA97 .. $2CAB76
incbinRange "../split/prg/bank2c.bin", $0A97, $0B76

Script5A_WhispyProjectile:
    SETBANK     #$22                        ; 2CAB76/2822
    ONPOSITION  $D9BB                       ; 2CAB78/21BBD9
    MOV         REG,VAR0                    ; 2CAB7B/1E00
    TABLEJMP    #3                          ; 2CAB7D/0F03
    .word       L_2CAB85                    ; 2CAB7F/85AB
    .word       L_2CABA3                    ; 2CAB81/A3AB
    .word       L_2CAC28                    ; 2CAB83/28AC
L_2CAB85:
    SETZPOS     #$00FF                      ; 2CAB85/3AFF00
    ASMCALL     $DE4B                       ; 2CAB88/D04BDE // Play sound effect
    .byte       $1A                         ; 2CAB8B/1A
    ONTICK      $2CAC31                     ; 2CAB8C/0831AC2C
    ASMCALL     $AD06                       ; 2CAB90/D006AD
    ASMCALL     $AD0F                       ; 2CAB93/D00FAD
    MOV         VAR3,#$05                   ; 2CAB96/0D0305
    MOV         VAR2,#$00                   ; 2CAB99/0D0200
    SPRITEMAP   L_308BC6                     ; 2CAB9C/1AC68B30
    SETPOSE     #$0A                        ; 2CABA0/500A
    HALT                                    ; 2CABA2/09

L_2CABA3:
    SETZPOS     #$0080                      ; 2CABA3/3A8000
    ONTICK      $2CAC9F                     ; 2CABA6/089FAC2C
    SPRITEMAP   L_308294                     ; 2CABAA/1A948230
    ASMCALL     $AD06                       ; 2CABAE/D006AD
    ASMCALL     $AD21                       ; 2CABB1/D021AD
    LOOP        #4                          ; 2CABB4/0104
        SETPOSE     #$00, WAIT #6               ; 2CABB6/5600
L_2CABB8:
        SETPOSE     #$FF, WAIT #6               ; 2CABB8/56FF
L_2CABBA:
    ENDLOOP                                 ; 2CABBA/02
    SETPOSE     #$00                        ; 2CABBB/5000
    SETYVEL     #$0100, WAIT #6             ; 2CABBD/C60001
L_2CABC0:
    SETYVEL     #$0140, WAIT #6             ; 2CABC0/C64001
L_2CABC3:
    SETYVEL     #$0200, WAIT #6             ; 2CABC3/C60002
L_2CABC6:
    SETYVEL     #$0300, WAIT #6             ; 2CABC6/C60003
L_2CABC9:
    SETYVEL     #$0400                      ; 2CABC9/C00004
    WAIT        #20                         ; 2CABCC/0614
L_2CABCE:
    ASMCALL     $8851                       ; 2CABCE/D05188 // Face towards Kirby
    ASMCALL     $DE4B                       ; 2CABD1/D04BDE // Play sound effect
    .byte       $0E                         ; 2CABD4/0E
    ONTICK      $2CACA7                     ; 2CABD5/08A7AC2C
    MOV         VAR2,#$0A                   ; 2CABD9/0D020A
    ASMCALL     $E26A                       ; 2CABDC/D06AE2 // Set X velocity (respect facing)
    .word       $0100                       ; 2CABDF/0001
    SETYVEL     #$FE00, WAIT #8             ; 2CABE1/C800FE
L_2CABE4:
    SETYVEL     #$FF00, WAIT #8             ; 2CABE4/C800FF
L_2CABE7:
    SETYVEL     #$FFC0, WAIT #8             ; 2CABE7/C8C0FF
L_2CABEA:
    SETYVEL     #$0040, WAIT #8             ; 2CABEA/C84000
L_2CABED:
    SETYVEL     #$0100, WAIT #8             ; 2CABED/C80001
L_2CABF0:
    SETYVEL     #$0200, WAIT #8             ; 2CABF0/C80002
L_2CABF3:
    ASMCALL     $DE4B                       ; 2CABF3/D04BDE // Play sound effect
    .byte       $0E                         ; 2CABF6/0E
    ONTICK      $2CACBC                     ; 2CABF7/08BCAC2C
    MOV         VAR2,#$06                   ; 2CABFB/0D0206
    ASMCALL     $E26A                       ; 2CABFE/D06AE2 // Set X velocity (respect facing)
    .word       $0140                       ; 2CAC01/4001
    SETYVEL     #$FF00, WAIT #10            ; 2CAC03/CA00FF
L_2CAC06:
    SETYVEL     #$FFC0, WAIT #10            ; 2CAC06/CAC0FF
L_2CAC09:
    SETYVEL     #$0040, WAIT #10            ; 2CAC09/CA4000
L_2CAC0C:
    SETYVEL     #$0100, WAIT #10            ; 2CAC0C/CA0001
L_2CAC0F:
    ONTICK      $2CACD1                     ; 2CAC0F/08D1AC2C
    MOV         VAR2,#$08                   ; 2CAC13/0D0208
    ASMCALL     $E26A                       ; 2CAC16/D06AE2 // Set X velocity (respect facing)
    .word       $01CD                       ; 2CAC19/CD01
L_2CAC1B:
    ASMCALL     $DE4B                       ; 2CAC1B/D04BDE // Play sound effect
    .byte       $0E                         ; 2CAC1E/0E
    SETYVEL     #$FFC0, WAIT #10            ; 2CAC1F/CAC0FF
L_2CAC22:
    SETYVEL     #$0040, WAIT #10            ; 2CAC22/CA4000
L_2CAC25:
    A_JMP       L_2CAC1B                    ; 2CAC25/171BAC

L_2CAC28:
    ASMCALL_l   $219952                     ; 2CAC28/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2CAC2C/00
    .byte       $00                         ; 2CAC2D/00
    .byte       $0C                         ; 2CAC2E/0C
    .byte       $00                         ; 2CAC2F/00
    END                                     ; 2CAC30/00

; CODE OR DATA -- $2CAC31 .. $2CAD63
incbinRange "../split/prg/bank2c.bin", $0C31, $0D63

Script46_HeavyMole:
    MOV         $0043,#$B2                  ; 2CAD63/114300B2
    SETBANK     #$22                        ; 2CAD67/2822
    SPRITEMAP   L_319B35                     ; 2CAD69/1A359B31
    ONPOSITION  $D97D                       ; 2CAD6D/217DD9
    MOV         REG,VAR0                    ; 2CAD70/1E00
    TABLEJMP    #5                          ; 2CAD72/0F05
    .word       L_2CAD7C                    ; 2CAD74/7CAD
    .word       L_2CAE3E                    ; 2CAD76/3EAE
    .word       L_2CAE1B                    ; 2CAD78/1BAE
    .word       L_2CAEBA                    ; 2CAD7A/BAAE

L_2CAD7C:
    MOV         $05FA,#$01                  ; 2CAD7C/11FA0501
    MOV         VAR1,#$00                   ; 2CAD80/0D0100
    ASMCALL     $DED0                       ; 2CAD83/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CAD86/09
    .byte       $12                         ; 2CAD87/12
    .byte       $46                         ; 2CAD88/46
    .byte       $00                         ; 2CAD89/00
    .byte       $00                         ; 2CAD8A/00
    .byte       $00                         ; 2CAD8B/00
    .byte       $01                         ; 2CAD8C/01
    .byte       $00                         ; 2CAD8D/00
    ASMCALL     $DED0                       ; 2CAD8E/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CAD91/09
    .byte       $12                         ; 2CAD92/12
    .byte       $46                         ; 2CAD93/46
    .byte       $00                         ; 2CAD94/00
    .byte       $00                         ; 2CAD95/00
    .byte       $00                         ; 2CAD96/00
    .byte       $01                         ; 2CAD97/01
    .byte       $01                         ; 2CAD98/01
    ASMCALL     $B48B                       ; 2CAD99/D08BB4
    ZEROCAMERAVEL                           ; 2CAD9C/39
    ZEROVEL                                 ; 2CAD9D/38
    ONMOVE      $D86A                       ; 2CAD9E/236AD8
    SETZPOS     #$0080                      ; 2CADA1/3A8000
    MOV         VAR1,#$40                   ; 2CADA4/0D0140
    MOV         VAR2,#$60                   ; 2CADA7/0D0260
    MOV         VAR3,#$78                   ; 2CADAA/0D0378
    MOV         VAR5,#$00                   ; 2CADAD/0D0500
    MOV         VAR6,#$F0                   ; 2CADB0/0D06F0
    MOV         $0784,#$78                  ; 2CADB3/11840778
    MOV         $0785,#$00                  ; 2CADB7/11850700
    MOV         $0786,#$00                  ; 2CADBB/11860700
    MOV         $0787,#$00                  ; 2CADBF/11870700
    MOV         $078A,#$30                  ; 2CADC3/118A0730
    MOV         $078B,#$00                  ; 2CADC7/118B0700
    MOV         $07A9,#$04                  ; 2CADCB/11A90704
    MOV         $0797,#$00                  ; 2CADCF/11970700
    ASMCALL     $B3C6                       ; 2CADD3/D0C6B3
    SETZVEL     #$FF01                      ; 2CADD6/3C01FF
    TASK        L_2CADF2                    ; 2CADD9/07F2AD
    ONTICK      $2CAEDA                     ; 2CADDC/08DAAE2C
    SETPOSE     #$30                        ; 2CADE0/5030
L_2CADE2:
    ASMCALL     $B479                       ; 2CADE2/D079B4
L_2CADE5:
    INCPOSE                                 ; 2CADE5/70
    ASMCALL     $B479                       ; 2CADE6/D079B4
L_2CADE9:
    INCPOSE                                 ; 2CADE9/70
    ASMCALL     $B479                       ; 2CADEA/D079B4
L_2CADED:
    ADDPOSE     #-2                         ; 2CADED/60FE
    A_JMP       L_2CADE2                    ; 2CADEF/17E2AD

L_2CADF2:
    A_JSR       $8452                       ; 2CADF2/185284
    ENDTASK                                 ; 2CADF5/0C

L_2CADF6:
    ASMCALL_l   $219952                     ; 2CADF6/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2CADFA/00
    .byte       $00                         ; 2CADFB/00
    .byte       $0C                         ; 2CADFC/0C
    .byte       $00                         ; 2CADFD/00
    A_JSR       $83C8                       ; 2CADFE/18C883
    ASMCALL     $8E7E                       ; 2CAE01/D07E8E
    ASMCALL_l   $219952                     ; 2CAE04/26529921 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 2CAE08/00
    .byte       $00                         ; 2CAE09/00
    .byte       $0C                         ; 2CAE0A/0C
    .byte       $00                         ; 2CAE0B/00
    A_JSR       $81DF                       ; 2CAE0C/18DF81
    ASMCALL     $DED0                       ; 2CAE0F/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CAE12/09
    .byte       $12                         ; 2CAE13/12
    .byte       $06                         ; 2CAE14/06
    .byte       $00                         ; 2CAE15/00
    .byte       $00                         ; 2CAE16/00
    .byte       $00                         ; 2CAE17/00
    .byte       $02                         ; 2CAE18/02
    .byte       $00                         ; 2CAE19/00
    END                                     ; 2CAE1A/00

L_2CAE1B:
    ONMOVE      $D86A                       ; 2CAE1B/236AD8
    ASMCALL     $B581                       ; 2CAE1E/D081B5
    ONTICK      $2CB528                     ; 2CAE21/0828B52C
    SETPOSE     #$39, WAIT #2               ; 2CAE25/5239
L_2CAE27:
    INCPOSE     WAIT #4                     ; 2CAE27/74
L_2CAE28:
    INCPOSE                                 ; 2CAE28/70
    WAIT        #48                         ; 2CAE29/0630
L_2CAE2B:
    ASMCALL     $DED0                       ; 2CAE2B/D0D0DE // Create in any slot between `arg1` and `arg2` a child object with script `arg3` offset by (`arg4`, `arg5`, `arg6`). With VAR0=`arg7`, VAR1=(self.VAR1+`arg8`)
    .byte       $09                         ; 2CAE2E/09
    .byte       $12                         ; 2CAE2F/12
    .byte       $5D                         ; 2CAE30/5D
    .byte       $00                         ; 2CAE31/00
    .byte       $00                         ; 2CAE32/00
    .byte       $00                         ; 2CAE33/00
    .byte       $00                         ; 2CAE34/00
    .byte       $00                         ; 2CAE35/00
    WAIT        #64                         ; 2CAE36/0640
L_2CAE38:
    DECPOSE     WAIT #4                     ; 2CAE38/84
L_2CAE39:
    DECPOSE     WAIT #2                     ; 2CAE39/82
L_2CAE3A:
    ASMCALL     $B58A                       ; 2CAE3A/D08AB5
    END                                     ; 2CAE3D/00

L_2CAE3E:
    ONMOVE      $D86A                       ; 2CAE3E/236AD8
    SETZVEL     #$7801                      ; 2CAE41/3C0178
    MOV         REG,VAR1                    ; 2CAE44/1E01
    MOV         VAR3,REG                    ; 2CAE46/1D03
    JNE         L_2CAE51                    ; 2CAE48/0B51AE
    SETZPOS     #$007F                      ; 2CAE4B/3A7F00
    A_JMP       L_2CAE54                    ; 2CAE4E/1754AE

L_2CAE51:
    SETZPOS     #$0081                      ; 2CAE51/3A8100
L_2CAE54:
    SETXPOS     #$0000                      ; 2CAE54/2A0000
    SETYPOS     #$0000                      ; 2CAE57/2B0000
    ASMCALL     $B980                       ; 2CAE5A/D080B9
    MOV         VAR5,#$00                   ; 2CAE5D/0D0500
    SETPOSE     #$00                        ; 2CAE60/5000
    ONTICK      $2CB595                     ; 2CAE62/0895B52C
    HALT                                    ; 2CAE66/09

L_2CAE67:
    ONTICK      $2CB61A                     ; 2CAE67/081AB62C
L_2CAE6B:
    SETXPOS     #$0000                      ; 2CAE6B/2A0000
    SETYPOS     #$0000                      ; 2CAE6E/2B0000
L_2CAE71:
    SETPOSE     #$04, WAIT #2               ; 2CAE71/5204
L_2CAE73:
    INCPOSE     WAIT #2                     ; 2CAE73/72
L_2CAE74:
    A_JMP       L_2CAE71                    ; 2CAE74/1771AE

L_2CAE77:
    SETXPOS     #$0000                      ; 2CAE77/2A0000
    SETYPOS     #$0000                      ; 2CAE7A/2B0000
    ONTICK      $2CB63B                     ; 2CAE7D/083BB62C
    ASMCALL     $B98C                       ; 2CAE81/D08CB9
L_2CAE84:
    ADDPOSE     #10                         ; 2CAE84/600A
    ASMCALL     $BAA4                       ; 2CAE86/D0A4BA
L_2CAE89:
    ASMCALL     $BA07                       ; 2CAE89/D007BA
L_2CAE8C:
    JEQ         L_2CAE89                    ; 2CAE8C/0A89AE
    ASMCALL     $BAC0                       ; 2CAE8F/D0C0BA
L_2CAE92:
    OR          VAR6,#$20                   ; 2CAE92/13060120
    HALT                                    ; 2CAE96/09

L_2CAE97:
    MOV         VAR5,#$0B                   ; 2CAE97/0D050B
    MOV         VAR6,#$00                   ; 2CAE9A/0D0600
    ONTICK      $2CB66B                     ; 2CAE9D/086BB62C
    A_JMP       L_2CAE6B                    ; 2CAEA1/176BAE

L_2CAEA4:
    SETXPOS     #$0000                      ; 2CAEA4/2A0000
    SETYPOS     #$0000                      ; 2CAEA7/2B0000
    MOV         VAR6,#$18                   ; 2CAEAA/0D0618
    ONTICK      $2CB739                     ; 2CAEAD/0839B72C
L_2CAEB1:
    ASMCALL     $BAD9                       ; 2CAEB1/D0D9BA
L_2CAEB4:
    JNE         L_2CAEB1                    ; 2CAEB4/0BB1AE
    SETPOSE     #$04, WAIT #2               ; 2CAEB7/5204
L_2CAEB9:
    HALT                                    ; 2CAEB9/09

L_2CAEBA:
    MOV         VAR3,#$14                   ; 2CAEBA/0D0314
L_2CAEBD:
    MOV         VAR0,#$06                   ; 2CAEBD/0D0006
    ZEROVEL                                 ; 2CAEC0/38
    ASMCALL     $BB7F                       ; 2CAEC1/D07FBB
    ONTICK      $2CBB33                     ; 2CAEC4/0833BB2C
    WAIT        #5                          ; 2CAEC8/0605
L_2CAECA:
    SETPOSE     #$3E, WAIT #2               ; 2CAECA/523E
L_2CAECC:
    ADD         VAR3,#-1                    ; 2CAECC/130302FF
    MOV         REG,VAR3                    ; 2CAED0/1E03
    JNE         L_2CAEBD                    ; 2CAED2/0BBDAE
    ONTICK      $2CBB71                     ; 2CAED5/0871BB2C
    HALT                                    ; 2CAED9/09

; CODE OR DATA -- $2CAEDA .. $2CBE7F
incbinRange "../split/prg/bank2c.bin", $0EDA, $1E7F

L_2CBE7F:
    ASMCALL     $DE4B                       ; 2CBE7F/D04BDE // Play sound effect
    .byte       $36                         ; 2CBE82/36
    SETBANK     #$22                        ; 2CBE83/2822
    ONPOSITION  $D9BB                       ; 2CBE85/21BBD9
    SPRITEMAP   L_319B35                     ; 2CBE88/1A359B31
    MOV         VAR0,#$02                   ; 2CBE8C/0D0002
    MOV         VAR1,#$80                   ; 2CBE8F/0D0180
    SETXVEL     #$FE00                      ; 2CBE92/B000FE
    ADDXPOS     #-16                        ; 2CBE95/2CF0FF
    ASMCALL     $BED6                       ; 2CBE98/D0D6BE
    JEQ         L_2CBEB0                    ; 2CBE9B/0AB0BE
    ONTICK      $2CBEC2                     ; 2CBE9E/08C2BE2C
L_2CBEA2:
    SETPOSE     #$3F, WAIT #4               ; 2CBEA2/543F
L_2CBEA4:
    INCPOSE     WAIT #4                     ; 2CBEA4/74
L_2CBEA5:
    INCPOSE     WAIT #4                     ; 2CBEA5/74
L_2CBEA6:
    INCPOSE     WAIT #4                     ; 2CBEA6/74
L_2CBEA7:
    SETPOSE     #$3F, WAIT #4               ; 2CBEA7/543F
L_2CBEA9:
    INCPOSE     WAIT #4                     ; 2CBEA9/74
L_2CBEAA:
    INCPOSE     WAIT #4                     ; 2CBEAA/74
L_2CBEAB:
    SETPOSE     #$43, WAIT #4               ; 2CBEAB/5443
L_2CBEAD:
    A_JMP       L_2CBEA2                    ; 2CBEAD/17A2BE

L_2CBEB0:
    ONTICK      $2CBECC                     ; 2CBEB0/08CCBE2C
L_2CBEB4:
    SETPOSE     #$44, WAIT #4               ; 2CBEB4/5444
L_2CBEB6:
    INCPOSE     WAIT #4                     ; 2CBEB6/74
L_2CBEB7:
    INCPOSE     WAIT #4                     ; 2CBEB7/74
L_2CBEB8:
    INCPOSE     WAIT #4                     ; 2CBEB8/74
L_2CBEB9:
    SETPOSE     #$44, WAIT #4               ; 2CBEB9/5444
L_2CBEBB:
    INCPOSE     WAIT #4                     ; 2CBEBB/74
L_2CBEBC:
    INCPOSE     WAIT #4                     ; 2CBEBC/74
L_2CBEBD:
    SETPOSE     #$48, WAIT #4               ; 2CBEBD/5448
L_2CBEBF:
    A_JMP       L_2CBEB4                    ; 2CBEBF/17B4BE

; CODE OR DATA -- $2CBEC2 .. $2DA000
incbinRange "../split/prg/bank2c.bin", $1EC2, $2000