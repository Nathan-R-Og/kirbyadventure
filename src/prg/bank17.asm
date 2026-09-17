.segment "PRG17": absolute

L_17A000:
    MOV         $05E0,#$06                  ; 17A000/11E00506
    OR          $05FB,#$20                  ; 17A004/16FB050120
    SPRITEMAP   L_1A8EE6                     ; 17A009/1AE68E1A
    ASMCALL     $9CB3                       ; 17A00D/D0B39C // Load some palette? (Kirby's palette?)
L_17A010:
    ASMCALL     $9BF7                       ; 17A010/D0F79B // Get Kirby's sub-state (0=STOP, 1=WALK, 2=DASH, 3=FALL, 4=WATER_STOP, 5=WATER_WALK, 6=SWIM, 7=LEAVE_WATER)
    TABLEJMP    #8                          ; 17A013/0F08
    .word       L_17A025                    ; 17A015/25A0
    .word       L_17A0BE                    ; 17A017/BEA0
    .word       KirbyState81                ; 17A019/F7A1
    .word       KirbyState85                ; 17A01B/05A4
    .word       KirbyState93                ; 17A01D/22AA
    .word       KirbyState94                ; 17A01F/7DAA
    .word       KirbyState95                ; 17A021/33AB
    .word       L_17A91C                    ; 17A023/1CA9
L_17A025:
    MOV         $05E1,#$00                  ; 17A025/11E10500
    ONTICK      $17A03F                     ; 17A029/083FA017
    ASMCALL     $8015                       ; 17A02D/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_17A03B                    ; 17A030/0A3BA0
    ASMCALL     $801F                       ; 17A033/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0A                         ; 17A036/0A
    .byte       $24                         ; 17A037/24
    A_JSR       $8003                       ; 17A038/180380
L_17A03B:
    ASMCALL     $A0B2                       ; 17A03B/D0B2A0 // Set Kirby's idle pose (star rod)
L_17A03E:
    HALT                                    ; 17A03E/09

; CODE OR DATA -- $17A03F .. $17A0BE
incbinRange "../split/prg/bank17.bin", $003F, $00BE

L_17A0BE:
    MOV         REG,$05F8                   ; 17A0BE/1CF805
    JEQ         KirbyState7F                ; 17A0C1/0AC8A0
    ASMCALL     $DE4B                       ; 17A0C4/D04BDE // Play sound effect
    .byte       $31                         ; 17A0C7/31
KirbyState7F:
    MOV         $05E1,#$01                  ; 17A0C8/11E10501
    MOV         $05BF,#$00                  ; 17A0CC/11BF0500
    ONTICK      $17A161                     ; 17A0D0/0861A117
    ASMCALL     $8015                       ; 17A0D4/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_17A0E2                    ; 17A0D7/0AE2A0
    ASMCALL     $801F                       ; 17A0DA/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0A                         ; 17A0DD/0A
    .byte       $24                         ; 17A0DE/24
    A_JSR       $8003                       ; 17A0DF/180380
L_17A0E2:
    ASMCALL     $9B96                       ; 17A0E2/D0969B
L_17A0E5:
    TABLEJMP    #15                         ; 17A0E5/0F0F
    .word       L_17A105                    ; 17A0E7/05A1
    .word       L_17A105                    ; 17A0E9/05A1
    .word       L_17A105                    ; 17A0EB/05A1
    .word       L_17A125                    ; 17A0ED/25A1
    .word       L_17A130                    ; 17A0EF/30A1
    .word       L_17A135                    ; 17A0F1/35A1
    .word       L_17A135                    ; 17A0F3/35A1
    .word       L_17A135                    ; 17A0F5/35A1
    .word       L_17A140                    ; 17A0F7/40A1
    .word       L_17A130                    ; 17A0F9/30A1
    .word       L_17A14B                    ; 17A0FB/4BA1
    .word       L_17A14B                    ; 17A0FD/4BA1
    .word       L_17A14B                    ; 17A0FF/4BA1
    .word       L_17A156                    ; 17A101/56A1
    .word       L_17A130                    ; 17A103/30A1
L_17A105:
    ASMCALL     $8FF5                       ; 17A105/D0F58F // Return (frame_counter & 3)
    TABLEJMP    #4                          ; 17A108/0F04
    .word       L_17A112                    ; 17A10A/12A1
    .word       L_17A116                    ; 17A10C/16A1
    .word       L_17A11A                    ; 17A10E/1AA1
    .word       L_17A11E                    ; 17A110/1EA1
L_17A112:
    ASMCALL     $8FDC, WAIT #10             ; 17A112/DADC8F // Set pose (respect facing)
    .byte       $10                         ; 17A115/10
L_17A116:
    ASMCALL     $8FDC, WAIT #8              ; 17A116/D8DC8F // Set pose (respect facing)
    .byte       $12                         ; 17A119/12
L_17A11A:
    ASMCALL     $8FDC, WAIT #10             ; 17A11A/DADC8F // Set pose (respect facing)
    .byte       $14                         ; 17A11D/14
L_17A11E:
    ASMCALL     $8FDC, WAIT #8              ; 17A11E/D8DC8F // Set pose (respect facing)
    .byte       $12                         ; 17A121/12
L_17A122:
    A_JMP       L_17A112                    ; 17A122/1712A1

L_17A125:
    ASMCALL     $8FDC, WAIT #6              ; 17A125/D6DC8F // Set pose (respect facing)
    .byte       $16                         ; 17A128/16
L_17A129:
    INC2POSE    WAIT #6                     ; 17A129/96
    INC2POSE    WAIT #6                     ; 17A12A/96
    DEC2POSE    WAIT #6                     ; 17A12B/A6
    DEC2POSE    WAIT #6                     ; 17A12C/A6
    A_JMP       L_17A129                    ; 17A12D/1729A1

L_17A130:
    ASMCALL     $8FDC                       ; 17A130/D0DC8F // Set pose (respect facing)
    .byte       $1C                         ; 17A133/1C
    HALT                                    ; 17A134/09

L_17A135:
    ASMCALL     $8FDC, WAIT #4              ; 17A135/D4DC8F // Set pose (respect facing)
    .byte       $10                         ; 17A138/10
L_17A139:
    INC2POSE    WAIT #3                     ; 17A139/93
L_17A13A:
    INC2POSE    WAIT #4                     ; 17A13A/94
L_17A13B:
    DEC2POSE    WAIT #3                     ; 17A13B/A3
L_17A13C:
    DEC2POSE    WAIT #4                     ; 17A13C/A4
L_17A13D:
    A_JMP       L_17A139                    ; 17A13D/1739A1

L_17A140:
    ASMCALL     $8FDC, WAIT #4              ; 17A140/D4DC8F // Set pose (respect facing)
    .byte       $16                         ; 17A143/16
L_17A144:
    INC2POSE    WAIT #4                     ; 17A144/94
    INC2POSE    WAIT #4                     ; 17A145/94
    DEC2POSE    WAIT #4                     ; 17A146/A4
    DEC2POSE    WAIT #4                     ; 17A147/A4
    A_JMP       L_17A144                    ; 17A148/1744A1

L_17A14B:
    ASMCALL     $8FDC, WAIT #3              ; 17A14B/D3DC8F // Set pose (respect facing)
    .byte       $10                         ; 17A14E/10
L_17A14F:
    INC2POSE    WAIT #2                     ; 17A14F/92
    INC2POSE    WAIT #3                     ; 17A150/93
    DEC2POSE    WAIT #2                     ; 17A151/A2
    DEC2POSE    WAIT #3                     ; 17A152/A3
    A_JMP       L_17A14F                    ; 17A153/174FA1

L_17A156:
    ASMCALL     $8FDC, WAIT #3              ; 17A156/D3DC8F // Set pose (respect facing)
    .byte       $16                         ; 17A159/16
L_17A15A:
    INC2POSE    WAIT #3                     ; 17A15A/93
    INC2POSE    WAIT #3                     ; 17A15B/93
    DEC2POSE    WAIT #3                     ; 17A15C/A3
    DEC2POSE    WAIT #3                     ; 17A15D/A3
    A_JMP       L_17A15A                    ; 17A15E/175AA1

; CODE OR DATA -- $17A161 .. $17A1EC
incbinRange "../split/prg/bank17.bin", $0161, $01EC

L_17A1EC:
    ASMCALL     $DE4B                       ; 17A1EC/D04BDE // Play sound effect
    .byte       $37                         ; 17A1EF/37
    ASMCALL     $9952                       ; 17A1F0/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17A1F3/00
    .byte       $00                         ; 17A1F4/00
    .byte       $01                         ; 17A1F5/01
    .byte       $00                         ; 17A1F6/00
KirbyState81:
    MOV         $05E1,#$02                  ; 17A1F7/11E10502
    ONTICK      $17A213                     ; 17A1FB/0813A217
    ASMCALL     $8015                       ; 17A1FF/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_17A20D                    ; 17A202/0A0DA2
    ASMCALL     $801F                       ; 17A205/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0A                         ; 17A208/0A
    .byte       $24                         ; 17A209/24
    A_JSR       $8003                       ; 17A20A/180380
L_17A20D:
    ASMCALL     $9BAA                       ; 17A20D/D0AA9B
    A_JMP       L_17A0E5                    ; 17A210/17E5A0

; CODE OR DATA -- $17A213 .. $17A294
incbinRange "../split/prg/bank17.bin", $0213, $0294

L_17A294:
    MOV         $05E1,#$03                  ; 17A294/11E10503
    ASMCALL     $DE4B                       ; 17A298/D04BDE // Play sound effect
    .byte       $31                         ; 17A29B/31
    ONTICK      $17A2AC                     ; 17A29C/08ACA217
    ASMCALL     $8FDC                       ; 17A2A0/D0DC8F // Set pose (respect facing)
    .byte       $1E                         ; 17A2A3/1E
    ASMCALL     $9952                       ; 17A2A4/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17A2A7/00
    .byte       $00                         ; 17A2A8/00
    .byte       $01                         ; 17A2A9/01
    .byte       $00                         ; 17A2AA/00
    HALT                                    ; 17A2AB/09

; CODE OR DATA -- $17A2AC .. $17A2E7
incbinRange "../split/prg/bank17.bin", $02AC, $02E7

L_17A2E7:
    MOV         $05E1,#$04                  ; 17A2E7/11E10504
    ONTICK      $17A30C                     ; 17A2EB/080CA317
    MOV         VAR0,#$00                   ; 17A2EF/0D0000
    ASMCALL     $885C                       ; 17A2F2/D05C88 // Set Kirby's Y velocity
    .word       $FB80                       ; 17A2F5/80FB
    ASMCALL     $DE4B                       ; 17A2F7/D04BDE // Play sound effect
    .byte       $04                         ; 17A2FA/04
    WAIT        #30                         ; 17A2FB/061E
L_17A2FD:
    ASMCALL     $885C                       ; 17A2FD/D05C88 // Set Kirby's Y velocity
    .word       $FF50                       ; 17A300/50FF
    ONTICK      $17A316                     ; 17A302/0816A317
    WAIT        #5                          ; 17A306/0605
L_17A308:
    ASMCALL     $884D                       ; 17A308/D04D88 // Zero Kirby's Y velocity
    HALT                                    ; 17A30B/09

; CODE OR DATA -- $17A30C .. $17A405
incbinRange "../split/prg/bank17.bin", $030C, $0405

KirbyState85:
    MOV         $05E1,#$05                  ; 17A405/11E10505
    ONTICK      $17A428                     ; 17A409/0828A417
    ASMCALL     $8015                       ; 17A40D/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_17A41B                    ; 17A410/0A1BA4
    ASMCALL     $801F                       ; 17A413/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $0A                         ; 17A416/0A
    .byte       $24                         ; 17A417/24
    A_JSR       $8003                       ; 17A418/180380
L_17A41B:
    SETPOSE     #$20                        ; 17A41B/5020
L_17A41D:
    ASMCALL     $9D82, WAIT #1              ; 17A41D/D1829D // Check if Kirby's Y velocity is negative (moving upwards)
L_17A420:
    JNE         L_17A41D                    ; 17A420/0B1DA4
    WAIT        #28                         ; 17A423/061C
L_17A425:
    A_JMP       L_17A49C                    ; 17A425/179CA4

; CODE OR DATA -- $17A428 .. $17A49C
incbinRange "../split/prg/bank17.bin", $0428, $049C

L_17A49C:
    MOV         $05E1,#$05                  ; 17A49C/11E10505
    ASMCALL     $9EE1                       ; 17A4A0/D0E19E // Clear "landed head-first on enemy" flag
    ONTICK      $17A4AA                     ; 17A4A3/08AAA417
    SETPOSE     #$22                        ; 17A4A7/5022
    HALT                                    ; 17A4A9/09

; CODE OR DATA -- $17A4AA .. $17A52B
incbinRange "../split/prg/bank17.bin", $04AA, $052B

KirbyState86:
    ASMCALL     $885C                       ; 17A52B/D05C88 // Set Kirby's Y velocity
    .word       $FD40                       ; 17A52E/40FD
    ONTICK      $17A537                     ; 17A530/0837A517
    SETPOSE     #$22                        ; 17A534/5022
    HALT                                    ; 17A536/09

; CODE OR DATA -- $17A537 .. $17A5AB
incbinRange "../split/prg/bank17.bin", $0537, $05AB

L_17A5AB:
    MOV         $05E1,#$05                  ; 17A5AB/11E10505
    MOV         $05E4,#$FF                  ; 17A5AF/11E405FF
    ONTICK      $17A5CC                     ; 17A5B3/08CCA517
    ASMCALL     $DE4B                       ; 17A5B7/D04BDE // Play sound effect
    .byte       $55                         ; 17A5BA/55
    ASMCALL     $9952                       ; 17A5BB/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17A5BE/00
    .byte       $00                         ; 17A5BF/00
    .byte       $00                         ; 17A5C0/00
    .byte       $00                         ; 17A5C1/00
    ASMCALL     $8FDC                       ; 17A5C2/D0DC8F // Set pose (respect facing)
    .byte       $22                         ; 17A5C5/22
    ASMCALL     $885C                       ; 17A5C6/D05C88 // Set Kirby's Y velocity
    .word       $FD40                       ; 17A5C9/40FD
    HALT                                    ; 17A5CB/09

; CODE OR DATA -- $17A5CC .. $17A5F8
incbinRange "../split/prg/bank17.bin", $05CC, $05F8

KirbyState88:
    MOV         $05E1,#$05                  ; 17A5F8/11E10505
    ONTICK      $17A609                     ; 17A5FC/0809A617
    ASMCALL     $8FDC                       ; 17A600/D0DC8F // Set pose (respect facing)
    .byte       $20                         ; 17A603/20
    WAIT        #16                         ; 17A604/0610
    A_JMP       L_17A010                    ; 17A606/1710A0

; CODE OR DATA -- $17A609 .. $17A617
incbinRange "../split/prg/bank17.bin", $0609, $0617

L_17A617:
    MOV         $05E1,#$06                  ; 17A617/11E10506
    ASMCALL     $DE4B                       ; 17A61B/D04BDE // Play sound effect
    .byte       $0D                         ; 17A61E/0D
    ONTICK      $17A624                     ; 17A61F/0824A617
    HALT                                    ; 17A623/09

; CODE OR DATA -- $17A624 .. $17A66C
incbinRange "../split/prg/bank17.bin", $0624, $066C

L_17A66C:
    MOV         $05E1,#$07                  ; 17A66C/11E10507
    ASMCALL     $DE4B                       ; 17A670/D04BDE // Play sound effect
    .byte       $38                         ; 17A673/38
    ONTICK      $17A68A                     ; 17A674/088AA617
    ASMCALL     $9952                       ; 17A678/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17A67B/00
    .byte       $00                         ; 17A67C/00
    .byte       $01                         ; 17A67D/01
    .byte       $00                         ; 17A67E/00
    ASMCALL     $8710                       ; 17A67F/D01087 // Set Kirby's X velocity
    .word       $02B3                       ; 17A682/B302
    ASMCALL     $8FDC, WAIT #2              ; 17A684/D2DC8F // Set pose (respect facing)
    .byte       $2E                         ; 17A687/2E
L_17A688:
    INC2POSE                                ; 17A688/90
    HALT                                    ; 17A689/09

; CODE OR DATA -- $17A68A .. $17A6F5
incbinRange "../split/prg/bank17.bin", $068A, $06F5

KirbyState8B:
    MOV         $05E1,#$08                  ; 17A6F5/11E10508
    ONTICK      $17A709                     ; 17A6F9/0809A717
    ASMCALL     $86FB                       ; 17A6FD/D0FB86 // Zero Kirby's X velocity
    MOV         VAR2,#$0A                   ; 17A700/0D020A
    MOV         VAR3,#$03                   ; 17A703/0D0303
    SETPOSE     #$7A                        ; 17A706/507A
    HALT                                    ; 17A708/09

; CODE OR DATA -- $17A709 .. $17A7C3
incbinRange "../split/prg/bank17.bin", $0709, $07C3

L_17A7C3:
    MOV         $05E1,#$0C                  ; 17A7C3/11E1050C
    ONTICK      $17A7FB                     ; 17A7C7/08FBA717
    ASMCALL     $8FDC, WAIT #2              ; 17A7CB/D2DC8F // Set pose (respect facing)
    .byte       $32                         ; 17A7CE/32
L_17A7CF:
    INC2POSE    WAIT #2                     ; 17A7CF/92
L_17A7D0:
    INC2POSE    WAIT #1                     ; 17A7D0/91
L_17A7D1:
    ASMCALL     $DE4B                       ; 17A7D1/D04BDE // Play sound effect
    .byte       $47                         ; 17A7D4/47
    ASMCALL     $99EA                       ; 17A7D5/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 17A7D8/08
    .byte       $00                         ; 17A7D9/00
    .byte       $0D                         ; 17A7DA/0D
    .byte       $00                         ; 17A7DB/00
    INC2POSE    WAIT #1                     ; 17A7DC/91
L_17A7DD:
    INC2POSE    WAIT #1                     ; 17A7DD/91
L_17A7DE:
    ASMCALL     $9952                       ; 17A7DE/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17A7E1/00
    .byte       $08                         ; 17A7E2/08
    .byte       $06                         ; 17A7E3/06
    .byte       $00                         ; 17A7E4/00
    INC2POSE    WAIT #1                     ; 17A7E5/91
L_17A7E6:
    ONTICK      $17A7F1                     ; 17A7E6/08F1A717
    INC2POSE    WAIT #2                     ; 17A7EA/92
L_17A7EB:
    INC2POSE    WAIT #2                     ; 17A7EB/92
L_17A7EC:
    INC2POSE    WAIT #4                     ; 17A7EC/94
L_17A7ED:
    DEC2POSE    WAIT #2                     ; 17A7ED/A2
L_17A7EE:
    A_JMP       L_17A010                    ; 17A7EE/1710A0

; CODE OR DATA -- $17A7F1 .. $17A892
incbinRange "../split/prg/bank17.bin", $07F1, $0892

L_17A892:
    ASMCALL     $DE4B                       ; 17A892/D04BDE // Play sound effect
    .byte       $30                         ; 17A895/30
    ONTICK      $17A8A2                     ; 17A896/08A2A817
    SETPOSE     #$64, WAIT #6               ; 17A89A/5664
L_17A89C:
    INC2POSE    WAIT #6                     ; 17A89C/96
L_17A89D:
    INC2POSE    WAIT #6                     ; 17A89D/96
L_17A89E:
    INC2POSE    WAIT #6                     ; 17A89E/96
L_17A89F:
    A_JMP       L_17A91C                    ; 17A89F/171CA9

; CODE OR DATA -- $17A8A2 .. $17A8CA
incbinRange "../split/prg/bank17.bin", $08A2, $08CA

KirbyState8E:
    MOV         $05E1,#$0D                  ; 17A8CA/11E1050D
    ONTICK      $17A8DE                     ; 17A8CE/08DEA817
L_17A8D2:
    SETPOSE     #$6C, WAIT #4               ; 17A8D2/546C
    INC2POSE    WAIT #4                     ; 17A8D4/94
    ASMCALL     $9D72                       ; 17A8D5/D0729D // Is holding Up outside water
    JNE         L_17A8D2                    ; 17A8D8/0BD2A8
    A_JMP       L_17A91C                    ; 17A8DB/171CA9

; CODE OR DATA -- $17A8DE .. $17A91C
incbinRange "../split/prg/bank17.bin", $08DE, $091C

L_17A91C:
    MOV         $05E1,#$0D                  ; 17A91C/11E1050D
    ONTICK      $17A92E                     ; 17A920/082EA917
L_17A924:
    SETPOSE     #$6C                        ; 17A924/506C
    WAIT        #20                         ; 17A926/0614
    INC2POSE                                ; 17A928/90
    WAIT        #20                         ; 17A929/0614
    A_JMP       L_17A924                    ; 17A92B/1724A9

; CODE OR DATA -- $17A92E .. $17A976
incbinRange "../split/prg/bank17.bin", $092E, $0976

KirbyState8F:
    MOV         $05E1,#$0D                  ; 17A976/11E1050D
    ASMCALL     $988D                       ; 17A97A/D08D98 // Set Kirby's underwater flag
    ONTICK      $17A98A                     ; 17A97D/088AA917
    SETPOSE     #$6E                        ; 17A981/506E
    HALT                                    ; 17A983/09

KirbyState90:
    ASMCALL     $9893                       ; 17A984/D09398 // Clear Kirby's underwater flag
    A_JMP       L_17A91C                    ; 17A987/171CA9

; CODE OR DATA -- $17A98A .. $17A9C8
incbinRange "../split/prg/bank17.bin", $098A, $09C8

L_17A9C8:
    MOV         $05E1,#$0A                  ; 17A9C8/11E1050A
    ONTICK      $17A9EB                     ; 17A9CC/08EBA917
    ASMCALL     $99EA                       ; 17A9D0/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 17A9D3/08
    .byte       $00                         ; 17A9D4/00
    .byte       $05                         ; 17A9D5/05
    .byte       $00                         ; 17A9D6/00
    ASMCALL     $DE4B                       ; 17A9D7/D04BDE // Play sound effect
    .byte       $1A                         ; 17A9DA/1A
    ASMCALL     $8FDC, WAIT #12             ; 17A9DB/DCDC8F // Set pose (respect facing)
    .byte       $6A                         ; 17A9DE/6A
L_17A9DF:
    DEC2POSE    WAIT #4                     ; 17A9DF/A4
L_17A9E0:
    DEC2POSE    WAIT #4                     ; 17A9E0/A4
L_17A9E1:
    DEC2POSE    WAIT #4                     ; 17A9E1/A4
L_17A9E2:
    ASMCALL     $9D72                       ; 17A9E2/D0729D // Is holding Up outside water
    JNE         L_17A892                    ; 17A9E5/0B92A8
    A_JMP       L_17A010                    ; 17A9E8/1710A0

; CODE OR DATA -- $17A9EB .. $17AA15
incbinRange "../split/prg/bank17.bin", $09EB, $0A15

KirbyState92:
    ASMCALL     $9883                       ; 17AA15/D08398 // Set swimming flag??
    ASMCALL     $9952                       ; 17AA18/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17AA1B/00
    .byte       $F8                         ; 17AA1C/F8
    .byte       $04                         ; 17AA1D/04
    .byte       $00                         ; 17AA1E/00
    A_JMP       L_17A010                    ; 17AA1F/1710A0

KirbyState93:
    MOV         $05E1,#$00                  ; 17AA22/11E10500
    MOV         $05E4,#$FF                  ; 17AA26/11E405FF
    ONTICK      $17AA32                     ; 17AA2A/0832AA17
    ASMCALL     $A0B2                       ; 17AA2E/D0B2A0 // Set Kirby's idle pose (star rod)
    HALT                                    ; 17AA31/09

; CODE OR DATA -- $17AA32 .. $17AA7D
incbinRange "../split/prg/bank17.bin", $0A32, $0A7D

KirbyState94:
    MOV         $05E1,#$01                  ; 17AA7D/11E10501
    MOV         $05E4,#$FF                  ; 17AA81/11E405FF
    ONTICK      $17AABD                     ; 17AA85/08BDAA17
    ASMCALL     $9B96                       ; 17AA89/D0969B
    TABLEJMP    #10                         ; 17AA8C/0F0A
    .word       L_17AAA2                    ; 17AA8E/A2AA
    .word       L_17AAA2                    ; 17AA90/A2AA
    .word       L_17AAA2                    ; 17AA92/A2AA
    .word       L_17AAAD                    ; 17AA94/ADAA
    .word       L_17AAB8                    ; 17AA96/B8AA
    .word       L_17AAA2                    ; 17AA98/A2AA
    .word       L_17AAA2                    ; 17AA9A/A2AA
    .word       L_17AAA2                    ; 17AA9C/A2AA
    .word       L_17AAAD                    ; 17AA9E/ADAA
    .word       L_17AAB8                    ; 17AAA0/B8AA
L_17AAA2:
    ASMCALL     $8FDC, WAIT #10             ; 17AAA2/DADC8F // Set pose (respect facing)
    .byte       $10                         ; 17AAA5/10
L_17AAA6:
    INC2POSE    WAIT #8                     ; 17AAA6/98
    INC2POSE    WAIT #10                    ; 17AAA7/9A
    DEC2POSE    WAIT #8                     ; 17AAA8/A8
    DEC2POSE    WAIT #10                    ; 17AAA9/AA
    A_JMP       L_17AAA6                    ; 17AAAA/17A6AA

L_17AAAD:
    ASMCALL     $8FDC, WAIT #6              ; 17AAAD/D6DC8F // Set pose (respect facing)
    .byte       $16                         ; 17AAB0/16
L_17AAB1:
    INC2POSE    WAIT #6                     ; 17AAB1/96
    INC2POSE    WAIT #6                     ; 17AAB2/96
    DEC2POSE    WAIT #6                     ; 17AAB3/A6
    DEC2POSE    WAIT #6                     ; 17AAB4/A6
    A_JMP       L_17AAB1                    ; 17AAB5/17B1AA

L_17AAB8:
    ASMCALL     $8FDC                       ; 17AAB8/D0DC8F // Set pose (respect facing)
    .byte       $1C                         ; 17AABB/1C
    HALT                                    ; 17AABC/09

; CODE OR DATA -- $17AABD .. $17AB33
incbinRange "../split/prg/bank17.bin", $0ABD, $0B33

KirbyState95:
    MOV         $05E1,#$05                  ; 17AB33/11E10505
    MOV         $05E4,#$FF                  ; 17AB37/11E405FF
    ONTICK      $17AB6B                     ; 17AB3B/086BAB17
    MOV         REG,$05F5                   ; 17AB3F/1CF505
    TABLEJMP    #5                          ; 17AB42/0F05
    .word       L_17AB4E                    ; 17AB44/4EAB
    .word       L_17AB51                    ; 17AB46/51AB
    .word       L_17AB5F                    ; 17AB48/5FAB
    .word       L_17AB5C                    ; 17AB4A/5CAB
    .word       L_17AB5F                    ; 17AB4C/5FAB
L_17AB4E:
    SETPOSE     #$20                        ; 17AB4E/5020
    HALT                                    ; 17AB50/09

L_17AB51:
    ASMCALL     $DE4B                       ; 17AB51/D04BDE // Play sound effect
    .byte       $48                         ; 17AB54/48
    SETPOSE     #$5C, WAIT #10              ; 17AB55/5A5C
    INC2POSE    WAIT #6                     ; 17AB57/96
    INC2POSE    WAIT #10                    ; 17AB58/9A
    A_JMP       L_17AB51                    ; 17AB59/1751AB

L_17AB5C:
    SETPOSE     #$62                        ; 17AB5C/5062
    HALT                                    ; 17AB5E/09

L_17AB5F:
    ASMCALL     $DE4B                       ; 17AB5F/D04BDE // Play sound effect
    .byte       $48                         ; 17AB62/48
    SETPOSE     #$54, WAIT #10              ; 17AB63/5A54
    INC2POSE    WAIT #10                    ; 17AB65/9A
    INC2POSE    WAIT #10                    ; 17AB66/9A
    INC2POSE    WAIT #10                    ; 17AB67/9A
    A_JMP       L_17AB5F                    ; 17AB68/175FAB

; CODE OR DATA -- $17AB6B .. $17ABC2
incbinRange "../split/prg/bank17.bin", $0B6B, $0BC2

KirbyState96:
    ASMCALL     $9893                       ; 17ABC2/D09398 // Clear Kirby's underwater flag
    ASMCALL     $9952                       ; 17ABC5/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17ABC8/00
    .byte       $F8                         ; 17ABC9/F8
    .byte       $05                         ; 17ABCA/05
    .byte       $00                         ; 17ABCB/00
    A_JMP       L_17A2E7                    ; 17ABCC/17E7A2

L_17ABCF:
    MOV         $05E0,#$04                  ; 17ABCF/11E00504
    SPRITEMAP   L_1B88F2                     ; 17ABD3/1AF2881B
    ASMCALL     $9CB3                       ; 17ABD7/D0B39C // Load some palette? (Kirby's palette?)
L_17ABDA:
    ASMCALL     $9BF7                       ; 17ABDA/D0F79B // Get Kirby's sub-state (0=STOP, 1=WALK, 2=DASH, 3=FALL, 4=WATER_STOP, 5=WATER_WALK, 6=SWIM, 7=LEAVE_WATER)
    TABLEJMP    #8                          ; 17ABDD/0F08
    .word       L_17ABEF                    ; 17ABDF/EFAB
    .word       L_17AC88                    ; 17ABE1/88AC
    .word       L_17ADC4                    ; 17ABE3/C4AD
    .word       L_17AF3D                    ; 17ABE5/3DAF
    .word       L_17B63F                    ; 17ABE7/3FB6
    .word       L_17B69A                    ; 17ABE9/9AB6
    .word       L_17B751                    ; 17ABEB/51B7
    .word       L_17B539                    ; 17ABED/39B5
L_17ABEF:
    MOV         $05E1,#$00                  ; 17ABEF/11E10500
    ONTICK      $17AC09                     ; 17ABF3/0809AC17
    ASMCALL     $8015                       ; 17ABF7/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_17AC05                    ; 17ABFA/0A05AC
    ASMCALL     $801F                       ; 17ABFD/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $18                         ; 17AC00/18
    .byte       $36                         ; 17AC01/36
    A_JSR       $8003                       ; 17AC02/180380
L_17AC05:
    ASMCALL     $AC7C                       ; 17AC05/D07CAC // Set Kirby's idle pose (hammer)
    HALT                                    ; 17AC08/09

; CODE OR DATA -- $17AC09 .. $17AC88
incbinRange "../split/prg/bank17.bin", $0C09, $0C88

L_17AC88:
    MOV         REG,$05F8                   ; 17AC88/1CF805
    JEQ         L_17AC92                    ; 17AC8B/0A92AC
    ASMCALL     $DE4B                       ; 17AC8E/D04BDE // Play sound effect
    .byte       $31                         ; 17AC91/31
L_17AC92:
    MOV         $05E1,#$01                  ; 17AC92/11E10501
    MOV         $05BF,#$00                  ; 17AC96/11BF0500
    ONTICK      $17AD2E                     ; 17AC9A/082EAD17
    ASMCALL     $8015                       ; 17AC9E/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_17ACAC                    ; 17ACA1/0AACAC
    ASMCALL     $801F                       ; 17ACA4/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $18                         ; 17ACA7/18
    .byte       $36                         ; 17ACA8/36
    A_JSR       $8003                       ; 17ACA9/180380
L_17ACAC:
    ASMCALL     $9B96                       ; 17ACAC/D0969B
L_17ACAF:
    TABLEJMP    #15                         ; 17ACAF/0F0F
    .word       L_17ACCF                    ; 17ACB1/CFAC
    .word       L_17ACCF                    ; 17ACB3/CFAC
    .word       L_17ACCF                    ; 17ACB5/CFAC
    .word       L_17ACEF                    ; 17ACB7/EFAC
    .word       L_17ACFB                    ; 17ACB9/FBAC
    .word       L_17AD00                    ; 17ACBB/00AD
    .word       L_17AD00                    ; 17ACBD/00AD
    .word       L_17AD00                    ; 17ACBF/00AD
    .word       L_17AD0B                    ; 17ACC1/0BAD
    .word       L_17ACFB                    ; 17ACC3/FBAC
    .word       L_17AD17                    ; 17ACC5/17AD
    .word       L_17AD17                    ; 17ACC7/17AD
    .word       L_17AD17                    ; 17ACC9/17AD
    .word       L_17AD22                    ; 17ACCB/22AD
    .word       L_17ACFB                    ; 17ACCD/FBAC
L_17ACCF:
    ASMCALL     $8FF5                       ; 17ACCF/D0F58F // Return (frame_counter & 3)
    TABLEJMP    #4                          ; 17ACD2/0F04
    .word       L_17ACDC                    ; 17ACD4/DCAC
    .word       L_17ACE0                    ; 17ACD6/E0AC
    .word       L_17ACE4                    ; 17ACD8/E4AC
    .word       L_17ACE8                    ; 17ACDA/E8AC
L_17ACDC:
    ASMCALL     $8FDC, WAIT #10             ; 17ACDC/DADC8F // Set pose (respect facing)
    .byte       $1E                         ; 17ACDF/1E
L_17ACE0:
    ASMCALL     $8FDC, WAIT #8              ; 17ACE0/D8DC8F // Set pose (respect facing)
    .byte       $20                         ; 17ACE3/20
L_17ACE4:
    ASMCALL     $8FDC, WAIT #10             ; 17ACE4/DADC8F // Set pose (respect facing)
    .byte       $22                         ; 17ACE7/22
L_17ACE8:
    ASMCALL     $8FDC, WAIT #8              ; 17ACE8/D8DC8F // Set pose (respect facing)
    .byte       $20                         ; 17ACEB/20
L_17ACEC:
    A_JMP       L_17ACDC                    ; 17ACEC/17DCAC

L_17ACEF:
    ASMCALL     $8FDC, WAIT #6              ; 17ACEF/D6DC8F // Set pose (respect facing)
    .byte       $24                         ; 17ACF2/24
L_17ACF3:
    INC2POSE    WAIT #6                     ; 17ACF3/96
    INC2POSE    WAIT #6                     ; 17ACF4/96
    INC2POSE    WAIT #6                     ; 17ACF5/96
    ADDPOSE     #-6, WAIT #6                ; 17ACF6/66FA
    A_JMP       L_17ACF3                    ; 17ACF8/17F3AC

L_17ACFB:
    ASMCALL     $8FDC                       ; 17ACFB/D0DC8F // Set pose (respect facing)
    .byte       $2C                         ; 17ACFE/2C
    HALT                                    ; 17ACFF/09

L_17AD00:
    ASMCALL     $8FDC, WAIT #4              ; 17AD00/D4DC8F // Set pose (respect facing)
    .byte       $1E                         ; 17AD03/1E
L_17AD04:
    INC2POSE    WAIT #3                     ; 17AD04/93
L_17AD05:
    INC2POSE    WAIT #4                     ; 17AD05/94
L_17AD06:
    DEC2POSE    WAIT #3                     ; 17AD06/A3
L_17AD07:
    DEC2POSE    WAIT #4                     ; 17AD07/A4
L_17AD08:
    A_JMP       L_17AD04                    ; 17AD08/1704AD

L_17AD0B:
    ASMCALL     $8FDC, WAIT #4              ; 17AD0B/D4DC8F // Set pose (respect facing)
    .byte       $24                         ; 17AD0E/24
L_17AD0F:
    INC2POSE    WAIT #4                     ; 17AD0F/94
L_17AD10:
    INC2POSE    WAIT #4                     ; 17AD10/94
L_17AD11:
    INC2POSE    WAIT #4                     ; 17AD11/94
L_17AD12:
    ADDPOSE     #-6, WAIT #4                ; 17AD12/64FA
L_17AD14:
    A_JMP       L_17AD0F                    ; 17AD14/170FAD

L_17AD17:
    ASMCALL     $8FDC, WAIT #3              ; 17AD17/D3DC8F // Set pose (respect facing)
    .byte       $1E                         ; 17AD1A/1E
L_17AD1B:
    INC2POSE    WAIT #2                     ; 17AD1B/92
L_17AD1C:
    INC2POSE    WAIT #3                     ; 17AD1C/93
L_17AD1D:
    DEC2POSE    WAIT #2                     ; 17AD1D/A2
    DEC2POSE    WAIT #3                     ; 17AD1E/A3
    A_JMP       L_17AD1B                    ; 17AD1F/171BAD

L_17AD22:
    ASMCALL     $8FDC, WAIT #3              ; 17AD22/D3DC8F // Set pose (respect facing)
    .byte       $24                         ; 17AD25/24
L_17AD26:
    INC2POSE    WAIT #3                     ; 17AD26/93
    INC2POSE    WAIT #3                     ; 17AD27/93
    INC2POSE    WAIT #3                     ; 17AD28/93
    ADDPOSE     #-6, WAIT #3                ; 17AD29/63FA
    A_JMP       L_17AD26                    ; 17AD2B/1726AD

; CODE OR DATA -- $17AD2E .. $17ADB9
incbinRange "../split/prg/bank17.bin", $0D2E, $0DB9

L_17ADB9:
    ASMCALL     $DE4B                       ; 17ADB9/D04BDE // Play sound effect
    .byte       $37                         ; 17ADBC/37
    ASMCALL     $9952                       ; 17ADBD/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17ADC0/00
    .byte       $00                         ; 17ADC1/00
    .byte       $01                         ; 17ADC2/01
    .byte       $00                         ; 17ADC3/00
L_17ADC4:
    MOV         $05E1,#$02                  ; 17ADC4/11E10502
    ONTICK      $17ADE0                     ; 17ADC8/08E0AD17
    ASMCALL     $8015                       ; 17ADCC/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_17ADDA                    ; 17ADCF/0ADAAD
    ASMCALL     $801F                       ; 17ADD2/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $18                         ; 17ADD5/18
    .byte       $36                         ; 17ADD6/36
    A_JSR       $8003                       ; 17ADD7/180380
L_17ADDA:
    ASMCALL     $9BAA                       ; 17ADDA/D0AA9B
    A_JMP       L_17ACAF                    ; 17ADDD/17AFAC

; CODE OR DATA -- $17ADE0 .. $17AE61
incbinRange "../split/prg/bank17.bin", $0DE0, $0E61

L_17AE61:
    MOV         $05E1,#$03                  ; 17AE61/11E10503
    ASMCALL     $DE4B                       ; 17AE65/D04BDE // Play sound effect
    .byte       $31                         ; 17AE68/31
    ONTICK      $17AE79                     ; 17AE69/0879AE17
    ASMCALL     $8FDC                       ; 17AE6D/D0DC8F // Set pose (respect facing)
    .byte       $2E                         ; 17AE70/2E
    ASMCALL     $9952                       ; 17AE71/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17AE74/00
    .byte       $00                         ; 17AE75/00
    .byte       $01                         ; 17AE76/01
    .byte       $00                         ; 17AE77/00
    HALT                                    ; 17AE78/09

; CODE OR DATA -- $17AE79 .. $17AEB4
incbinRange "../split/prg/bank17.bin", $0E79, $0EB4

L_17AEB4:
    MOV         $05E1,#$04                  ; 17AEB4/11E10504
    ONTICK      $17AEDD                     ; 17AEB8/08DDAE17
    ASMCALL     $885C                       ; 17AEBC/D05C88 // Set Kirby's Y velocity
    .word       $FC70                       ; 17AEBF/70FC
    ASMCALL     $DE4B                       ; 17AEC1/D04BDE // Play sound effect
    .byte       $04                         ; 17AEC4/04
    SETPOSE     #$30                        ; 17AEC5/5030
    WAIT        #23                         ; 17AEC7/0617
L_17AEC9:
    ASMCALL     $885C                       ; 17AEC9/D05C88 // Set Kirby's Y velocity
    .word       $FF50                       ; 17AECC/50FF
    ONTICK      $17AEE7                     ; 17AECE/08E7AE17
    WAIT        #5                          ; 17AED2/0605
L_17AED4:
    ASMCALL     $884D                       ; 17AED4/D04D88 // Zero Kirby's Y velocity
    MOV         VAR0,#$1D                   ; 17AED7/0D001D
    A_JMP       L_17AF40                    ; 17AEDA/1740AF

; CODE OR DATA -- $17AEDD .. $17AF3D
incbinRange "../split/prg/bank17.bin", $0EDD, $0F3D

L_17AF3D:
    MOV         VAR0,#$1C                   ; 17AF3D/0D001C
L_17AF40:
    MOV         $05E1,#$05                  ; 17AF40/11E10505
    ONTICK      $17AF63                     ; 17AF44/0863AF17
    ASMCALL     $8015                       ; 17AF48/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
    JEQ         L_17AF56                    ; 17AF4B/0A56AF
    ASMCALL     $801F                       ; 17AF4E/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
    .byte       $18                         ; 17AF51/18
    .byte       $36                         ; 17AF52/36
    A_JSR       $8003                       ; 17AF53/180380
L_17AF56:
    SETPOSE     #$32                        ; 17AF56/5032
L_17AF58:
    ASMCALL     $9D82, WAIT #1              ; 17AF58/D1829D // Check if Kirby's Y velocity is negative (moving upwards)
L_17AF5B:
    JNE         L_17AF58                    ; 17AF5B/0B58AF
    WAIT        VAR0                        ; 17AF5E/1F00
L_17AF60:
    A_JMP       L_17AFD7                    ; 17AF60/17D7AF

; CODE OR DATA -- $17AF63 .. $17AFD7
incbinRange "../split/prg/bank17.bin", $0F63, $0FD7

L_17AFD7:
    MOV         $05E1,#$05                  ; 17AFD7/11E10505
    ASMCALL     $9EE1                       ; 17AFDB/D0E19E // Clear "landed head-first on enemy" flag
    ONTICK      $17AFE5                     ; 17AFDE/08E5AF17
    SETPOSE     #$34                        ; 17AFE2/5034
    HALT                                    ; 17AFE4/09

; CODE OR DATA -- $17AFE5 .. $17B060
incbinRange "../split/prg/bank17.bin", $0FE5, $1060

KirbyStateA1:
    ASMCALL     $885C                       ; 17B060/D05C88 // Set Kirby's Y velocity
    .word       $FD40                       ; 17B063/40FD
    ONTICK      $17B06C                     ; 17B065/086CB017
    SETPOSE     #$34                        ; 17B069/5034
    HALT                                    ; 17B06B/09

; CODE OR DATA -- $17B06C .. $17B0E0
incbinRange "../split/prg/bank17.bin", $106C, $10E0

L_17B0E0:
    MOV         $05E1,#$05                  ; 17B0E0/11E10505
    MOV         $05E4,#$FF                  ; 17B0E4/11E405FF
    ONTICK      $17B101                     ; 17B0E8/0801B117
    ASMCALL     $DE4B                       ; 17B0EC/D04BDE // Play sound effect
    .byte       $55                         ; 17B0EF/55
    ASMCALL     $9952                       ; 17B0F0/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17B0F3/00
    .byte       $00                         ; 17B0F4/00
    .byte       $00                         ; 17B0F5/00
    .byte       $00                         ; 17B0F6/00
    ASMCALL     $8FDC                       ; 17B0F7/D0DC8F // Set pose (respect facing)
    .byte       $34                         ; 17B0FA/34
    ASMCALL     $885C                       ; 17B0FB/D05C88 // Set Kirby's Y velocity
    .word       $FD40                       ; 17B0FE/40FD
    HALT                                    ; 17B100/09

; CODE OR DATA -- $17B101 .. $17B12D
incbinRange "../split/prg/bank17.bin", $1101, $112D

KirbyStateA3:
    MOV         $05E1,#$05                  ; 17B12D/11E10505
    ONTICK      $17B13E                     ; 17B131/083EB117
    ASMCALL     $8FDC                       ; 17B135/D0DC8F // Set pose (respect facing)
    .byte       $32                         ; 17B138/32
    WAIT        #16                         ; 17B139/0610
    A_JMP       L_17ABDA                    ; 17B13B/17DAAB

; CODE OR DATA -- $17B13E .. $17B14C
incbinRange "../split/prg/bank17.bin", $113E, $114C

L_17B14C:
    MOV         $05E1,#$06                  ; 17B14C/11E10506
    ASMCALL     $DE4B                       ; 17B150/D04BDE // Play sound effect
    .byte       $0D                         ; 17B153/0D
    ONTICK      $17B159                     ; 17B154/0859B117
    HALT                                    ; 17B158/09

; CODE OR DATA -- $17B159 .. $17B1A1
incbinRange "../split/prg/bank17.bin", $1159, $11A1

L_17B1A1:
    MOV         $05E1,#$07                  ; 17B1A1/11E10507
    ASMCALL     $DE4B                       ; 17B1A5/D04BDE // Play sound effect
    .byte       $38                         ; 17B1A8/38
    ONTICK      $17B1BF                     ; 17B1A9/08BFB117
    ASMCALL     $9952                       ; 17B1AD/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17B1B0/00
    .byte       $00                         ; 17B1B1/00
    .byte       $01                         ; 17B1B2/01
    .byte       $00                         ; 17B1B3/00
    ASMCALL     $8710                       ; 17B1B4/D01087 // Set Kirby's X velocity
    .word       $02B3                       ; 17B1B7/B302
    ASMCALL     $8FDC, WAIT #2              ; 17B1B9/D2DC8F // Set pose (respect facing)
    .byte       $40                         ; 17B1BC/40
L_17B1BD:
    INC2POSE                                ; 17B1BD/90
    HALT                                    ; 17B1BE/09

; CODE OR DATA -- $17B1BF .. $17B22A
incbinRange "../split/prg/bank17.bin", $11BF, $122A

L_17B22A:
    MOV         $05E1,#$08                  ; 17B22A/11E10508
    ONTICK      $17B23E                     ; 17B22E/083EB217
    ASMCALL     $86FB                       ; 17B232/D0FB86 // Zero Kirby's X velocity
    MOV         VAR2,#$0A                   ; 17B235/0D020A
    MOV         VAR3,#$03                   ; 17B238/0D0303
    SETPOSE     #$83                        ; 17B23B/5083
    HALT                                    ; 17B23D/09

; CODE OR DATA -- $17B23E .. $17B2F8
incbinRange "../split/prg/bank17.bin", $123E, $12F8

L_17B2F8:
    MOV         $05E1,#$0C                  ; 17B2F8/11E1050C
    ASMCALL     $DE4B                       ; 17B2FC/D04BDE // Play sound effect
    .byte       $46                         ; 17B2FF/46
    ONTICK      $17B319                     ; 17B300/0819B317
    ASMCALL     $8FDC, WAIT #2              ; 17B304/D2DC8F // Set pose (respect facing)
    .byte       $46                         ; 17B307/46
L_17B308:
    DEC2POSE    WAIT #1                     ; 17B308/A1
L_17B309:
    ADDPOSE     #4, WAIT #1                 ; 17B309/6104
L_17B30B:
    INC2POSE    WAIT #1                     ; 17B30B/91
L_17B30C:
    INC2POSE    WAIT #1                     ; 17B30C/91
L_17B30D:
    INC2POSE    WAIT #1                     ; 17B30D/91
L_17B30E:
    INC2POSE    WAIT #4                     ; 17B30E/94
L_17B30F:
    DEC2POSE    WAIT #1                     ; 17B30F/A1
L_17B310:
    DEC2POSE    WAIT #1                     ; 17B310/A1
L_17B311:
    ADDPOSE     #-4, WAIT #1                ; 17B311/61FC
L_17B313:
    ADDPOSE     #-4, WAIT #1                ; 17B313/61FC
L_17B315:
    INC2POSE    WAIT #1                     ; 17B315/91
L_17B316:
    A_JMP       L_17ABDA                    ; 17B316/17DAAB

; CODE OR DATA -- $17B319 .. $17B3D0
incbinRange "../split/prg/bank17.bin", $1319, $13D0

L_17B3D0:
    MOV         $05E1,#$0C                  ; 17B3D0/11E1050C
    ASMCALL     $DE4B                       ; 17B3D4/D04BDE // Play sound effect
    .byte       $46                         ; 17B3D7/46
    ONTICK      $17B3E5                     ; 17B3D8/08E5B317
    SETPOSE     #$54, WAIT #2               ; 17B3DC/5254
L_17B3DE:
    LOOP        #7                          ; 17B3DE/0107
        INC2POSE    WAIT #2                     ; 17B3E0/92
L_17B3E1:
    ENDLOOP                                 ; 17B3E1/02
    A_JMP       L_17ABDA                    ; 17B3E2/17DAAB

; CODE OR DATA -- $17B3E5 .. $17B4AD
incbinRange "../split/prg/bank17.bin", $13E5, $14AD

L_17B4AD:
    ASMCALL     $DE4B                       ; 17B4AD/D04BDE // Play sound effect
    .byte       $30                         ; 17B4B0/30
    ONTICK      $17B4BD                     ; 17B4B1/08BDB417
    SETPOSE     #$74, WAIT #6               ; 17B4B5/5674
L_17B4B7:
    INC2POSE    WAIT #6                     ; 17B4B7/96
L_17B4B8:
    INC2POSE    WAIT #6                     ; 17B4B8/96
L_17B4B9:
    INC2POSE    WAIT #6                     ; 17B4B9/96
L_17B4BA:
    A_JMP       L_17B539                    ; 17B4BA/1739B5

; CODE OR DATA -- $17B4BD .. $17B4E7
incbinRange "../split/prg/bank17.bin", $14BD, $14E7

L_17B4E7:
    MOV         $05E1,#$0D                  ; 17B4E7/11E1050D
    ONTICK      $17B4FB                     ; 17B4EB/08FBB417
L_17B4EF:
    SETPOSE     #$7C, WAIT #4               ; 17B4EF/547C
L_17B4F1:
    INC2POSE    WAIT #4                     ; 17B4F1/94
L_17B4F2:
    ASMCALL     $9D72                       ; 17B4F2/D0729D // Is holding Up outside water
    JNE         L_17B4EF                    ; 17B4F5/0BEFB4
    A_JMP       L_17B539                    ; 17B4F8/1739B5

; CODE OR DATA -- $17B4FB .. $17B539
incbinRange "../split/prg/bank17.bin", $14FB, $1539

L_17B539:
    MOV         $05E1,#$0D                  ; 17B539/11E1050D
    ONTICK      $17B54B                     ; 17B53D/084BB517
L_17B541:
    SETPOSE     #$7C                        ; 17B541/507C
    WAIT        #20                         ; 17B543/0614
L_17B545:
    INC2POSE                                ; 17B545/90
    WAIT        #20                         ; 17B546/0614
L_17B548:
    A_JMP       L_17B541                    ; 17B548/1741B5

; CODE OR DATA -- $17B54B .. $17B593
incbinRange "../split/prg/bank17.bin", $154B, $1593

L_17B593:
    MOV         $05E1,#$0D                  ; 17B593/11E1050D
    ASMCALL     $988D                       ; 17B597/D08D98 // Set Kirby's underwater flag
    ONTICK      $17B5A7                     ; 17B59A/08A7B517
    SETPOSE     #$7E                        ; 17B59E/507E
    HALT                                    ; 17B5A0/09

L_17B5A1:
    ASMCALL     $9893                       ; 17B5A1/D09398 // Clear Kirby's underwater flag
    A_JMP       L_17B539                    ; 17B5A4/1739B5

; CODE OR DATA -- $17B5A7 .. $17B5E5
incbinRange "../split/prg/bank17.bin", $15A7, $15E5

L_17B5E5:
    MOV         $05E1,#$0A                  ; 17B5E5/11E1050A
    ONTICK      $17B608                     ; 17B5E9/0808B617
    ASMCALL     $99EA                       ; 17B5ED/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 17B5F0/08
    .byte       $00                         ; 17B5F1/00
    .byte       $05                         ; 17B5F2/05
    .byte       $00                         ; 17B5F3/00
    ASMCALL     $DE4B                       ; 17B5F4/D04BDE // Play sound effect
    .byte       $1A                         ; 17B5F7/1A
    ASMCALL     $8FDC, WAIT #12             ; 17B5F8/DCDC8F // Set pose (respect facing)
    .byte       $7A                         ; 17B5FB/7A
L_17B5FC:
    DEC2POSE    WAIT #4                     ; 17B5FC/A4
L_17B5FD:
    DEC2POSE    WAIT #4                     ; 17B5FD/A4
L_17B5FE:
    DEC2POSE    WAIT #4                     ; 17B5FE/A4
L_17B5FF:
    ASMCALL     $9D72                       ; 17B5FF/D0729D // Is holding Up outside water
    JNE         L_17B4AD                    ; 17B602/0BADB4
    A_JMP       L_17ABDA                    ; 17B605/17DAAB

; CODE OR DATA -- $17B608 .. $17B632
incbinRange "../split/prg/bank17.bin", $1608, $1632

L_17B632:
    ASMCALL     $9883                       ; 17B632/D08398 // Set swimming flag??
    ASMCALL     $9952                       ; 17B635/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17B638/00
    .byte       $F8                         ; 17B639/F8
    .byte       $04                         ; 17B63A/04
    .byte       $00                         ; 17B63B/00
    A_JMP       L_17ABDA                    ; 17B63C/17DAAB

L_17B63F:
    MOV         $05E1,#$00                  ; 17B63F/11E10500
    MOV         $05E4,#$FF                  ; 17B643/11E405FF
    ONTICK      $17B64F                     ; 17B647/084FB617
    ASMCALL     $AC7C                       ; 17B64B/D07CAC // Set Kirby's idle pose (hammer)
    HALT                                    ; 17B64E/09

; CODE OR DATA -- $17B64F .. $17B69A
incbinRange "../split/prg/bank17.bin", $164F, $169A

L_17B69A:
    MOV         $05E1,#$01                  ; 17B69A/11E10501
    MOV         $05E4,#$FF                  ; 17B69E/11E405FF
    ONTICK      $17B6DB                     ; 17B6A2/08DBB617
    ASMCALL     $9B96                       ; 17B6A6/D0969B
    TABLEJMP    #10                         ; 17B6A9/0F0A
    .word       L_17B6BF                    ; 17B6AB/BFB6
    .word       L_17B6BF                    ; 17B6AD/BFB6
    .word       L_17B6BF                    ; 17B6AF/BFB6
    .word       L_17B6CA                    ; 17B6B1/CAB6
    .word       L_17B6D6                    ; 17B6B3/D6B6
    .word       L_17B6BF                    ; 17B6B5/BFB6
    .word       L_17B6BF                    ; 17B6B7/BFB6
    .word       L_17B6BF                    ; 17B6B9/BFB6
    .word       L_17B6CA                    ; 17B6BB/CAB6
    .word       L_17B6D6                    ; 17B6BD/D6B6
L_17B6BF:
    ASMCALL     $8FDC, WAIT #10             ; 17B6BF/DADC8F // Set pose (respect facing)
    .byte       $1E                         ; 17B6C2/1E
L_17B6C3:
    INC2POSE    WAIT #8                     ; 17B6C3/98
L_17B6C4:
    INC2POSE    WAIT #10                    ; 17B6C4/9A
L_17B6C5:
    DEC2POSE    WAIT #8                     ; 17B6C5/A8
L_17B6C6:
    DEC2POSE    WAIT #10                    ; 17B6C6/AA
L_17B6C7:
    A_JMP       L_17B6C3                    ; 17B6C7/17C3B6

L_17B6CA:
    ASMCALL     $8FDC, WAIT #6              ; 17B6CA/D6DC8F // Set pose (respect facing)
    .byte       $24                         ; 17B6CD/24
L_17B6CE:
    INC2POSE    WAIT #6                     ; 17B6CE/96
    INC2POSE    WAIT #6                     ; 17B6CF/96
    INC2POSE    WAIT #6                     ; 17B6D0/96
    ADDPOSE     #-6, WAIT #6                ; 17B6D1/66FA
    A_JMP       L_17B6CE                    ; 17B6D3/17CEB6

L_17B6D6:
    ASMCALL     $8FDC                       ; 17B6D6/D0DC8F // Set pose (respect facing)
    .byte       $2C                         ; 17B6D9/2C
    HALT                                    ; 17B6DA/09

; CODE OR DATA -- $17B6DB .. $17B751
incbinRange "../split/prg/bank17.bin", $16DB, $1751

L_17B751:
    MOV         $05E1,#$05                  ; 17B751/11E10505
    MOV         $05E4,#$FF                  ; 17B755/11E405FF
    ONTICK      $17B789                     ; 17B759/0889B717
    MOV         REG,$05F5                   ; 17B75D/1CF505
    TABLEJMP    #5                          ; 17B760/0F05
    .word       L_17B76C                    ; 17B762/6CB7
    .word       L_17B76F                    ; 17B764/6FB7
    .word       L_17B77D                    ; 17B766/7DB7
    .word       L_17B77A                    ; 17B768/7AB7
    .word       L_17B77D                    ; 17B76A/7DB7
L_17B76C:
    SETPOSE     #$32                        ; 17B76C/5032
    HALT                                    ; 17B76E/09

L_17B76F:
    ASMCALL     $DE4B                       ; 17B76F/D04BDE // Play sound effect
    .byte       $48                         ; 17B772/48
    SETPOSE     #$6C, WAIT #10              ; 17B773/5A6C
L_17B775:
    INC2POSE    WAIT #6                     ; 17B775/96
L_17B776:
    INC2POSE    WAIT #10                    ; 17B776/9A
L_17B777:
    A_JMP       L_17B76F                    ; 17B777/176FB7

L_17B77A:
    SETPOSE     #$72                        ; 17B77A/5072
    HALT                                    ; 17B77C/09

L_17B77D:
    ASMCALL     $DE4B                       ; 17B77D/D04BDE // Play sound effect
    .byte       $48                         ; 17B780/48
    SETPOSE     #$64, WAIT #10              ; 17B781/5A64
L_17B783:
    INC2POSE    WAIT #10                    ; 17B783/9A
L_17B784:
    INC2POSE    WAIT #10                    ; 17B784/9A
L_17B785:
    INC2POSE    WAIT #10                    ; 17B785/9A
L_17B786:
    A_JMP       L_17B77D                    ; 17B786/177DB7

; CODE OR DATA -- $17B789 .. $17B7E0
incbinRange "../split/prg/bank17.bin", $1789, $17E0

L_17B7E0:
    ASMCALL     $9893                       ; 17B7E0/D09398 // Clear Kirby's underwater flag
    ASMCALL     $9952                       ; 17B7E3/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17B7E6/00
    .byte       $F8                         ; 17B7E7/F8
    .byte       $05                         ; 17B7E8/05
    .byte       $00                         ; 17B7E9/00
    A_JMP       L_17AEB4                    ; 17B7EA/17B4AE

L_17B7ED:
    A_JSR       L_17B806                    ; 17B7ED/1806B8
    ASMCALL     $9952                       ; 17B7F0/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $00                         ; 17B7F3/00
    .byte       $00                         ; 17B7F4/00
    .byte       $03                         ; 17B7F5/03
    .byte       $00                         ; 17B7F6/00
    ASMCALL     $8FDC                       ; 17B7F7/D0DC8F // Set pose (respect facing)
    .byte       $00                         ; 17B7FA/00
    WAIT        #16                         ; 17B7FB/0610
L_17B7FD:
    A_JMP       L_17B81E                    ; 17B7FD/171EB8

L_17B800:
    A_JSR       L_17B806                    ; 17B800/1806B8
    A_JMP       L_17B81E                    ; 17B803/171EB8

L_17B806:
    MOV         $05E0,#$0D                  ; 17B806/11E0050D
    SPRITEMAP   L_1C800C                     ; 17B80A/1A0C801C
    ASMCALL     $B812                       ; 17B80E/D012B8
    A_RTS                                   ; 17B811/19

; CODE OR DATA -- $17B812 .. $17B81E
incbinRange "../split/prg/bank17.bin", $1812, $181E

L_17B81E:
    MOV         $05E1,#$00                  ; 17B81E/11E10500
    MOV         VAR2,#$00                   ; 17B822/0D0200
    ASMCALL     $987D                       ; 17B825/D07D98 // Zero Kirby's velocities
    ONTICK      $17B836                     ; 17B828/0836B817
L_17B82C:
    ASMCALL     $8FDC, WAIT #8              ; 17B82C/D8DC8F // Set pose (respect facing)
    .byte       $00                         ; 17B82F/00
L_17B830:
    INC2POSE    WAIT #8                     ; 17B830/98
L_17B831:
    INC2POSE    WAIT #8                     ; 17B831/98
L_17B832:
    INC2POSE    WAIT #8                     ; 17B832/98
L_17B833:
    A_JMP       L_17B82C                    ; 17B833/172CB8

; CODE OR DATA -- $17B836 .. $17B8C9
incbinRange "../split/prg/bank17.bin", $1836, $18C9

L_17B8C9:
    MOV         $05E1,#$01                  ; 17B8C9/11E10501
    ONTICK      $17B8E5                     ; 17B8CD/08E5B817
    MOV         REG,VAR2                    ; 17B8D1/1E02
    JNE         L_17B8DB                    ; 17B8D3/0BDBB8
    ASMCALL     $8FDC, WAIT #8              ; 17B8D6/D8DC8F // Set pose (respect facing)
    .byte       $08                         ; 17B8D9/08
L_17B8DA:
    INC2POSE    WAIT #8                     ; 17B8DA/98
L_17B8DB:
    ASMCALL     $8FDC, WAIT #2              ; 17B8DB/D2DC8F // Set pose (respect facing)
    .byte       $00                         ; 17B8DE/00
L_17B8DF:
    INC2POSE    WAIT #2                     ; 17B8DF/92
L_17B8E0:
    INC2POSE    WAIT #2                     ; 17B8E0/92
L_17B8E1:
    INC2POSE    WAIT #2                     ; 17B8E1/92
L_17B8E2:
    A_JMP       L_17B8DB                    ; 17B8E2/17DBB8

; CODE OR DATA -- $17B8E5 .. $17B938
incbinRange "../split/prg/bank17.bin", $18E5, $1938

L_17B938:
    MOV         $05E1,#$0C                  ; 17B938/11E1050C
    ONTICK      $17B9FB                     ; 17B93C/08FBB917
    MOV         VAR3,#$00                   ; 17B940/0D0300
    ASMCALL     $8FDC                       ; 17B943/D0DC8F // Set pose (respect facing)
    .byte       $0C                         ; 17B946/0C
    LOOP        #16                         ; 17B947/0110
        WAIT        #2                          ; 17B949/0602
L_17B94B:
        INC2POSE    WAIT #1                     ; 17B94B/91
L_17B94C:
        INC2POSE    WAIT #1                     ; 17B94C/91
L_17B94D:
        ADDPOSE     #-4                         ; 17B94D/60FC
        ADD         VAR3,#1                     ; 17B94F/13030201
    ENDLOOP                                 ; 17B953/02
    ASMCALL     $8FDC, WAIT #1              ; 17B954/D1DC8F // Set pose (respect facing)
    .byte       $0C                         ; 17B957/0C
L_17B958:
    ADDPOSE     #4, WAIT #1                 ; 17B958/6104
L_17B95A:
    ADDPOSE     #-4, WAIT #1                ; 17B95A/61FC
L_17B95C:
    A_JMP       L_17B958                    ; 17B95C/1758B9

L_17B95F:
    ASMCALL     $BA3C                       ; 17B95F/D03CBA
    TABLEJSR    #4                          ; 17B962/1004
    .word       L_17B96F                    ; 17B964/6FB9
    .word       L_17B9D7                    ; 17B966/D7B9
    .word       L_17B9E3                    ; 17B968/E3B9
    .word       L_17B9EF                    ; 17B96A/EFB9
    A_JMP       L_17B81E                    ; 17B96C/171EB8

L_17B96F:
    ONTICK      $17BA05                     ; 17B96F/0805BA17
    TASK        L_17B986                    ; 17B973/0786B9
    ASMCALL     $8FDC                       ; 17B976/D0DC8F // Set pose (respect facing)
    .byte       $0C                         ; 17B979/0C
    LOOP        #8                          ; 17B97A/0108
        ASMCALL     $DE4B, WAIT #1              ; 17B97C/D14BDE // Play sound effect
        .byte       $1D                         ; 17B97F/1D
L_17B980:
        INC2POSE    WAIT #1                     ; 17B980/91
L_17B981:
        DEC2POSE    WAIT #1                     ; 17B981/A1
L_17B982:
        INC2POSE    WAIT #1                     ; 17B982/91
L_17B983:
        DEC2POSE                                ; 17B983/A0
    ENDLOOP                                 ; 17B984/02
    A_RTS                                   ; 17B985/19

L_17B986:
    LOOP        #2                          ; 17B986/0102
        ASMCALL     $99EA, WAIT #2              ; 17B988/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $0A                         ; 17B98B/0A
        .byte       $FB                         ; 17B98C/FB
        .byte       $06                         ; 17B98D/06
        .byte       $C0                         ; 17B98E/C0
L_17B98F:
    ENDLOOP                                 ; 17B98F/02
    LOOP        #2                          ; 17B990/0102
        ASMCALL     $99EA, WAIT #2              ; 17B992/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $0A                         ; 17B995/0A
        .byte       $FB                         ; 17B996/FB
        .byte       $06                         ; 17B997/06
        .byte       $D0                         ; 17B998/D0
L_17B999:
    ENDLOOP                                 ; 17B999/02
    LOOP        #2                          ; 17B99A/0102
        ASMCALL     $99EA, WAIT #2              ; 17B99C/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $0A                         ; 17B99F/0A
        .byte       $FB                         ; 17B9A0/FB
        .byte       $06                         ; 17B9A1/06
        .byte       $E0                         ; 17B9A2/E0
L_17B9A3:
    ENDLOOP                                 ; 17B9A3/02
    LOOP        #2                          ; 17B9A4/0102
        ASMCALL     $99EA, WAIT #2              ; 17B9A6/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $0A                         ; 17B9A9/0A
        .byte       $FB                         ; 17B9AA/FB
        .byte       $06                         ; 17B9AB/06
        .byte       $F0                         ; 17B9AC/F0
L_17B9AD:
    ENDLOOP                                 ; 17B9AD/02
    LOOP        #2                          ; 17B9AE/0102
        ASMCALL     $99EA, WAIT #2              ; 17B9B0/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $0A                         ; 17B9B3/0A
        .byte       $FB                         ; 17B9B4/FB
        .byte       $06                         ; 17B9B5/06
        .byte       $00                         ; 17B9B6/00
L_17B9B7:
    ENDLOOP                                 ; 17B9B7/02
    LOOP        #2                          ; 17B9B8/0102
        ASMCALL     $99EA, WAIT #2              ; 17B9BA/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $0A                         ; 17B9BD/0A
        .byte       $FB                         ; 17B9BE/FB
        .byte       $06                         ; 17B9BF/06
        .byte       $10                         ; 17B9C0/10
L_17B9C1:
    ENDLOOP                                 ; 17B9C1/02
    LOOP        #2                          ; 17B9C2/0102
        ASMCALL     $99EA, WAIT #2              ; 17B9C4/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $0A                         ; 17B9C7/0A
        .byte       $FB                         ; 17B9C8/FB
        .byte       $06                         ; 17B9C9/06
        .byte       $20                         ; 17B9CA/20
L_17B9CB:
    ENDLOOP                                 ; 17B9CB/02
    LOOP        #2                          ; 17B9CC/0102
        ASMCALL     $99EA, WAIT #2              ; 17B9CE/D2EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $0A                         ; 17B9D1/0A
        .byte       $FB                         ; 17B9D2/FB
        .byte       $06                         ; 17B9D3/06
        .byte       $30                         ; 17B9D4/30
L_17B9D5:
    ENDLOOP                                 ; 17B9D5/02
    ENDTASK                                 ; 17B9D6/0C

L_17B9D7:
    ASMCALL     $DE4B                       ; 17B9D7/D04BDE // Play sound effect
    .byte       $42                         ; 17B9DA/42
    ASMCALL     $99EA                       ; 17B9DB/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $0A                         ; 17B9DE/0A
    .byte       $FB                         ; 17B9DF/FB
    .byte       $03                         ; 17B9E0/03
    .byte       $00                         ; 17B9E1/00
    A_RTS                                   ; 17B9E2/19

L_17B9E3:
    ASMCALL     $DE4B                       ; 17B9E3/D04BDE // Play sound effect
    .byte       $47                         ; 17B9E6/47
    ASMCALL     $99EA                       ; 17B9E7/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $0A                         ; 17B9EA/0A
    .byte       $FB                         ; 17B9EB/FB
    .byte       $00                         ; 17B9EC/00
    .byte       $00                         ; 17B9ED/00
    A_RTS                                   ; 17B9EE/19

L_17B9EF:
    ASMCALL     $DE4B                       ; 17B9EF/D04BDE // Play sound effect
    .byte       $32                         ; 17B9F2/32
    ASMCALL     $99EA                       ; 17B9F3/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $0A                         ; 17B9F6/0A
    .byte       $FB                         ; 17B9F7/FB
    .byte       $08                         ; 17B9F8/08
    .byte       $00                         ; 17B9F9/00
    A_RTS                                   ; 17B9FA/19

; CODE OR DATA -- $17B9FB .. $17BAA9
incbinRange "../split/prg/bank17.bin", $19FB, $1AA9

L_17BAA9:
    MOV         $05E0,#$0E                  ; 17BAA9/11E0050E
    MOV         $05E3,#$18                  ; 17BAAD/11E30518
    OR          $05FB,#$20                  ; 17BAB1/16FB050120
    SPRITEMAP   L_1C8134                     ; 17BAB6/1A34811C
    ASMCALL     $B812                       ; 17BABA/D012B8
    MOV         VAR2,#$09                   ; 17BABD/0D0209
    ASMCALL     $BACC                       ; 17BAC0/D0CCBA
    ONMOVE      $D8A6                       ; 17BAC3/23A6D8
    SETYCAMERAVEL#$0035                     ; 17BAC6/333500
    A_JMP       L_17BB2E                    ; 17BAC9/172EBB

; CODE OR DATA -- $17BACC .. $17BB2E
incbinRange "../split/prg/bank17.bin", $1ACC, $1B2E

L_17BB2E:
    ONTICK      $17BB3C                     ; 17BB2E/083CBB17
L_17BB32:
    SETPOSE     #$00                        ; 17BB32/5000
    WAIT        #48                         ; 17BB34/0630
L_17BB36:
    INCPOSE     WAIT #3                     ; 17BB36/73
L_17BB37:
    INCPOSE     WAIT #4                     ; 17BB37/74
L_17BB38:
    DECPOSE     WAIT #3                     ; 17BB38/83
L_17BB39:
    A_JMP       L_17BB32                    ; 17BB39/1732BB

; CODE OR DATA -- $17BB3C .. $17BC09
incbinRange "../split/prg/bank17.bin", $1B3C, $1C09

L_17BC09:
    ONTICK      $17BC24                     ; 17BC09/0824BC17
    SETPOSE     #$03, WAIT #2               ; 17BC0D/5203
L_17BC0F:
    ASMCALL     $99EA                       ; 17BC0F/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
    .byte       $08                         ; 17BC12/08
    .byte       $FC                         ; 17BC13/FC
    .byte       $0C                         ; 17BC14/0C
    .byte       $00                         ; 17BC15/00
    ASMCALL     $DE4B                       ; 17BC16/D04BDE // Play sound effect
    .byte       $1B                         ; 17BC19/1B
    INCPOSE     WAIT #2                     ; 17BC1A/72
L_17BC1B:
    INCPOSE     WAIT #2                     ; 17BC1B/72
L_17BC1C:
    INCPOSE     WAIT #2                     ; 17BC1C/72
L_17BC1D:
    INCPOSE     WAIT #2                     ; 17BC1D/72
L_17BC1E:
    INCPOSE     WAIT #3                     ; 17BC1E/73
L_17BC1F:
    DECPOSE     WAIT #2                     ; 17BC1F/82
L_17BC20:
    INC2POSE    WAIT #4                     ; 17BC20/94
L_17BC21:
    A_JMP       L_17BB2E                    ; 17BC21/172EBB

; CODE OR DATA -- $17BC24 .. $17BC40
incbinRange "../split/prg/bank17.bin", $1C24, $1C40

L_17BC40:
    SPRITEMAP   L_1C8DA6                     ; 17BC40/1AA68D1C
    SETPOSE     #$48                        ; 17BC44/5048
    JML         KSTEE_Miss                    ; 17BC46/03F8A414

; CODE OR DATA -- $17BC4A .. $18A311
incbinRange "../split/prg/bank17.bin", $1C4A, $2000