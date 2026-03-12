.segment "PRG15": absolute
    L_15A000:
        MOV         $05E0,#$03                  ; 15A000/11E00503
        SPRITEMAP   $1B8000                     ; 15A004/1A00801B
        ASMCALL     $9CB3                       ; 15A008/D0B39C // Load some palette? (Kirby's palette?)
    L_15A00B:
        ASMCALL     $9BF7                       ; 15A00B/D0F79B // Get Kirby's sub-state (0=STOP, 1=WALK, 2=DASH, 3=FALL, 4=WATER_STOP, 5=WATER_WALK, 6=SWIM, 7=LEAVE_WATER)
        TABLEJMP    #8                          ; 15A00E/0F08
        .word       L_15A020                    ; 15A010/20A0
        .word       L_15A0B9                    ; 15A012/B9A0
        .word       L_15A1F2                    ; 15A014/F2A1
        .word       L_15A36B                    ; 15A016/6BA3
        .word       L_15AA5C                    ; 15A018/5CAA
        .word       L_15AAB7                    ; 15A01A/B7AA
        .word       L_15AB6D                    ; 15A01C/6DAB
        .word       L_15A956                    ; 15A01E/56A9
    L_15A020:
        MOV         $05E1,#$00                  ; 15A020/11E10500
        ONTICK      B15_KirbyTick_SwordIdle     ; 15A024/083AA015
        ASMCALL     $8015                       ; 15A028/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
        JEQ         L_15A036                    ; 15A02B/0A36A0
        ASMCALL     $801F                       ; 15A02E/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
        .byte       $12                         ; 15A031/12
        .byte       $2E                         ; 15A032/2E
        A_JSR       $8003                       ; 15A033/180380
    L_15A036:
        ASMCALL     $A0AD                       ; 15A036/D0ADA0 // Set Kirby's idle pose (sword)
        HALT                                    ; 15A039/09

    ;Tick callback for Kirby state $61 (sword, idle)
    B15_KirbyTick_SwordIdle:
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8b4e ; MAYBE_KirbyGroundCollision
       bcc B15_a050
       ldx #$69                         ;Sword, falling
       jmp $8ce8 ; DoStateTransition
    B15_a050:
       jsr $8b1a ; KirbyCheckDPadHorizontal
       bcc B15_a05a
       ldx #$62                         ;Sword, walking
       jmp $8ce8 ; DoStateTransition
    B15_a05a:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_a064
       ldx #$6f                         ;Sword, climbing
       jmp $8ce8 ; DoStateTransition
    B15_a064:
       jsr $8b10 ; IsHoldingDown
       bcc B15_a06e
       ldx #$6d                         ;Sword, crouching
       jmp $8ce8 ; DoStateTransition
    B15_a06e:
       jsr $8ae8 ; HasJustPressedA
       bcc B15_a078
       ldx #$67                         ;Sword, jumping
       jmp $8ce8 ; DoStateTransition
    B15_a078:
       jsr $8af2 ; HasJustPressedB
       bcc B15_a082
       ldx #$70                         ;Sword slash
       jmp $8ce8 ; DoStateTransition
    B15_a082:
       jsr $8a15 ; WillEnterDoor
       bcc B15_a08c
       ldx #$00                         ;Entering door
       jmp $8ce8 ; DoStateTransition
    B15_a08c:
       jsr $8b06 ; IsHoldingUp
       bcc B15_a096
       ldx #$72                         ;Sword, begin flying
       jmp $8ce8 ; DoStateTransition
    B15_a096:
       jsr $8a5d ; HasSlopeStateChanged
       bcc B15_a0a0
       ldx #$61                         ;Sword, idle
       jmp $8ce8 ; DoStateTransition
    B15_a0a0:
       jsr $8957 ; TryDiscardCopyAbility
       bcc B15_a0aa
       ldx #$01                         ;Discarding ability
       jmp $8ce8 ; DoStateTransition
    B15_a0aa:
       jmp $805b ; KirbyFinalize
    B15_SetSwordKirbyIdlePose:
       jsr $8ffb ; SlopeStateToIndex
       pha
       asl a
       adc #$08
       sta OBJ_pose+1
       pla
       rts

    L_15A0B9:
        MOV         REG,$05F8                   ; 15A0B9/1CF805
        JEQ         KirbyState63                ; 15A0BC/0AC3A0
        ASMCALL     $DE4B                       ; 15A0BF/D04BDE // Play sound effect
        .byte       $31                         ; 15A0C2/31
    KirbyState63:
        MOV         $05E1,#$01                  ; 15A0C3/11E10501
        MOV         $05BF,#$00                  ; 15A0C7/11BF0500
        ONTICK      B15_a15c                    ; 15A0CB/085CA115
        ASMCALL     $8015                       ; 15A0CF/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
        JEQ         L_15A0DD                    ; 15A0D2/0ADDA0
        ASMCALL     $801F                       ; 15A0D5/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
        .byte       $12                         ; 15A0D8/12
        .byte       $2E                         ; 15A0D9/2E
        A_JSR       $8003                       ; 15A0DA/180380
    L_15A0DD:
        ASMCALL     $9B96                       ; 15A0DD/D0969B
    L_15A0E0:
        TABLEJMP    #15                         ; 15A0E0/0F0F
        .word       L_15A100                    ; 15A0E2/00A1
        .word       L_15A100                    ; 15A0E4/00A1
        .word       L_15A100                    ; 15A0E6/00A1
        .word       L_15A120                    ; 15A0E8/20A1
        .word       L_15A12B                    ; 15A0EA/2BA1
        .word       L_15A130                    ; 15A0EC/30A1
        .word       L_15A130                    ; 15A0EE/30A1
        .word       L_15A130                    ; 15A0F0/30A1
        .word       L_15A13B                    ; 15A0F2/3BA1
        .word       L_15A12B                    ; 15A0F4/2BA1
        .word       L_15A146                    ; 15A0F6/46A1
        .word       L_15A146                    ; 15A0F8/46A1
        .word       L_15A146                    ; 15A0FA/46A1
        .word       L_15A151                    ; 15A0FC/51A1
        .word       L_15A12B                    ; 15A0FE/2BA1
    L_15A100:
        ASMCALL     $8FF5                       ; 15A100/D0F58F // Return (frame_counter & 3)
        TABLEJMP    #4                          ; 15A103/0F04
        .word       L_15A10D                    ; 15A105/0DA1
        .word       L_15A111                    ; 15A107/11A1
        .word       L_15A115                    ; 15A109/15A1
        .word       L_15A119                    ; 15A10B/19A1
    L_15A10D:
        ASMCALL     $8FDC, WAIT #10             ; 15A10D/DADC8F // Set pose (respect facing)
        .byte       $18                         ; 15A110/18
    L_15A111:
        ASMCALL     $8FDC, WAIT #8              ; 15A111/D8DC8F // Set pose (respect facing)
        .byte       $1A                         ; 15A114/1A
    L_15A115:
        ASMCALL     $8FDC, WAIT #10             ; 15A115/DADC8F // Set pose (respect facing)
        .byte       $1C                         ; 15A118/1C
    L_15A119:
        ASMCALL     $8FDC, WAIT #8              ; 15A119/D8DC8F // Set pose (respect facing)
        .byte       $1A                         ; 15A11C/1A
    L_15A11D:
        A_JMP       L_15A10D                    ; 15A11D/170DA1

    L_15A120:
        ASMCALL     $8FDC, WAIT #6              ; 15A120/D6DC8F // Set pose (respect facing)
        .byte       $1E                         ; 15A123/1E
    L_15A124:
        INC2POSE    WAIT #6                     ; 15A124/96
        INC2POSE    WAIT #6                     ; 15A125/96
        DEC2POSE    WAIT #6                     ; 15A126/A6
        DEC2POSE    WAIT #6                     ; 15A127/A6
        A_JMP       L_15A124                    ; 15A128/1724A1

    L_15A12B:
        ASMCALL     $8FDC                       ; 15A12B/D0DC8F // Set pose (respect facing)
        .byte       $24                         ; 15A12E/24
        HALT                                    ; 15A12F/09

    L_15A130:
        ASMCALL     $8FDC, WAIT #4              ; 15A130/D4DC8F // Set pose (respect facing)
        .byte       $18                         ; 15A133/18
    L_15A134:
        INC2POSE    WAIT #3                     ; 15A134/93
    L_15A135:
        INC2POSE    WAIT #4                     ; 15A135/94
    L_15A136:
        DEC2POSE    WAIT #3                     ; 15A136/A3
    L_15A137:
        DEC2POSE    WAIT #4                     ; 15A137/A4
    L_15A138:
        A_JMP       L_15A134                    ; 15A138/1734A1

    L_15A13B:
        ASMCALL     $8FDC, WAIT #4              ; 15A13B/D4DC8F // Set pose (respect facing)
        .byte       $1E                         ; 15A13E/1E
    L_15A13F:
        INC2POSE    WAIT #4                     ; 15A13F/94
        INC2POSE    WAIT #4                     ; 15A140/94
        DEC2POSE    WAIT #4                     ; 15A141/A4
        DEC2POSE    WAIT #4                     ; 15A142/A4
        A_JMP       L_15A13F                    ; 15A143/173FA1

    L_15A146:
        ASMCALL     $8FDC, WAIT #3              ; 15A146/D3DC8F // Set pose (respect facing)
        .byte       $18                         ; 15A149/18
    L_15A14A:
        INC2POSE    WAIT #2                     ; 15A14A/92
        INC2POSE    WAIT #3                     ; 15A14B/93
        DEC2POSE    WAIT #2                     ; 15A14C/A2
        DEC2POSE    WAIT #3                     ; 15A14D/A3
        A_JMP       L_15A14A                    ; 15A14E/174AA1

    L_15A151:
        ASMCALL     $8FDC, WAIT #3              ; 15A151/D3DC8F // Set pose (respect facing)
        .byte       $1E                         ; 15A154/1E
    L_15A155:
        INC2POSE    WAIT #3                     ; 15A155/93
        INC2POSE    WAIT #3                     ; 15A156/93
        DEC2POSE    WAIT #3                     ; 15A157/A3
        DEC2POSE    WAIT #3                     ; 15A158/A3
        A_JMP       L_15A155                    ; 15A159/1755A1

    B15_a15c:
       jsr $8765 ; $8765
       jsr $95cd ; SetKirbyPosition
       jsr $8bfa ; $8bfa
       bcc B15_a16c
       ldx #$61
       jmp $8ce8 ; DoStateTransition
    B15_a16c:
       jsr $8b4e ; MAYBE_KirbyGroundCollision
       bcc B15_a176
       ldx #$69
       jmp $8ce8 ; DoStateTransition
    B15_a176:
       jsr $8a6c ; IsKirbyVelXZero
       bcc B15_a180
       ldx #$61
       jmp $8ce8 ; DoStateTransition
    B15_a180:
       jsr $8a78 ; $8a78
       bcc B15_a18a
       ldx #$66
       jmp $8ce8 ; DoStateTransition
    B15_a18a:
       jsr $8a86 ; $8a86
       bcc B15_a194
       ldx #$64
       jmp $8ce8 ; DoStateTransition
    B15_a194:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_a19e
       ldx #$6f
       jmp $8ce8 ; DoStateTransition
    B15_a19e:
       jsr $8b10 ; IsHoldingDown
       bcc B15_a1a8
       ldx #$6d
       jmp $8ce8 ; DoStateTransition
    B15_a1a8:
       jsr $8ae8 ; HasJustPressedA
       bcc B15_a1b2
       ldx #$67
       jmp $8ce8 ; DoStateTransition
    B15_a1b2:
       jsr $8af2 ; HasJustPressedB
       bcc B15_a1bc
       ldx #$70
       jmp $8ce8 ; DoStateTransition
    B15_a1bc:
       jsr $8a5d ; HasSlopeStateChanged
       bcc B15_a1c6
       ldx #$63
       jmp $8ce8 ; DoStateTransition
    B15_a1c6:
       jsr $8a15 ; WillEnterDoor
       bcc B15_a1d0
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_a1d0:
       jsr $8b06 ; IsHoldingUp
       bcc B15_a1da
       ldx #$72
       jmp $8ce8 ; DoStateTransition
    B15_a1da:
       jsr $8957 ; TryDiscardCopyAbility
       bcc B15_a1e4
       ldx #$01
       jmp $8ce8 ; DoStateTransition
    B15_a1e4:
       jmp $805b ; KirbyFinalize

    L_15A1E7:
        ASMCALL     $DE4B                       ; 15A1E7/D04BDE // Play sound effect
        .byte       $37                         ; 15A1EA/37
        ASMCALL     $9952                       ; 15A1EB/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15A1EE/00
        .byte       $00                         ; 15A1EF/00
        .byte       $01                         ; 15A1F0/01
        .byte       $00                         ; 15A1F1/00
    L_15A1F2:
        MOV         $05E1,#$02                  ; 15A1F2/11E10502
        ONTICK      B15_a20e                    ; 15A1F6/080EA215
        ASMCALL     $8015                       ; 15A1FA/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
        JEQ         L_15A208                    ; 15A1FD/0A08A2
        ASMCALL     $801F                       ; 15A200/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
        .byte       $12                         ; 15A203/12
        .byte       $2E                         ; 15A204/2E
        A_JSR       $8003                       ; 15A205/180380
    L_15A208:
        ASMCALL     $9BAA                       ; 15A208/D0AA9B
        A_JMP       L_15A0E0                    ; 15A20B/17E0A0

    B15_a20e:
       jsr $8781 ; $8781
       jsr $95cd ; SetKirbyPosition
       jsr $8bfa ; $8bfa
       bcc B15_a21e
       ldx #$61
       jmp $8ce8 ; DoStateTransition
    B15_a21e:
       jsr $8b4e ; MAYBE_KirbyGroundCollision
       bcc B15_a228
       ldx #$69
       jmp $8ce8 ; DoStateTransition
    B15_a228:
       jsr $8a78 ; $8a78
       bcc B15_a232
       ldx #$66
       jmp $8ce8 ; DoStateTransition
    B15_a232:
       jsr $8a4a ; $8a4a
       bcc B15_a23c
       ldx #$62
       jmp $8ce8 ; DoStateTransition
    B15_a23c:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_a246
       ldx #$6f
       jmp $8ce8 ; DoStateTransition
    B15_a246:
       jsr $8b10 ; IsHoldingDown
       bcc B15_a250
       ldx #$6d
       jmp $8ce8 ; DoStateTransition
    B15_a250:
       jsr $8ae8 ; HasJustPressedA
       bcc B15_a25a
       ldx #$67
       jmp $8ce8 ; DoStateTransition
    B15_a25a:
       jsr $8af2 ; HasJustPressedB
       bcc B15_a264
       ldx #$70
       jmp $8ce8 ; DoStateTransition
    B15_a264:
       jsr $8a5d ; HasSlopeStateChanged
       bcc B15_a26e
       ldx #$65
       jmp $8ce8 ; DoStateTransition
    B15_a26e:
       jsr $8a15 ; WillEnterDoor
       bcc B15_a278
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_a278:
       jsr $8b06 ; IsHoldingUp
       bcc B15_a282
       ldx #$72
       jmp $8ce8 ; DoStateTransition
    B15_a282:
       jsr $8957 ; TryDiscardCopyAbility
       bcc B15_a28c
       ldx #$01
       jmp $8ce8 ; DoStateTransition
    B15_a28c:
       jmp $805b ; KirbyFinalize


    L_15A28F:
        MOV         $05E1,#$03                  ; 15A28F/11E10503
        ASMCALL     $DE4B                       ; 15A293/D04BDE // Play sound effect
        .byte       $31                         ; 15A296/31
        ONTICK      B15_a2a7                     ; 15A297/08A7A215
        ASMCALL     $8FDC                       ; 15A29B/D0DC8F // Set pose (respect facing)
        .byte       $26                         ; 15A29E/26
        ASMCALL     $9952                       ; 15A29F/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15A2A2/00
        .byte       $00                         ; 15A2A3/00
        .byte       $01                         ; 15A2A4/01
        .byte       $00                         ; 15A2A5/00
        HALT                                    ; 15A2A6/09

    B15_a2a7:
       jsr $879d ; $879d
       jsr $95cd ; SetKirbyPosition
       jsr $8bfa ; $8bfa
       bcc B15_a2b7
       ldx #$61
       jmp $8ce8 ; DoStateTransition
    B15_a2b7:
       jsr $8b4e ; MAYBE_KirbyGroundCollision
       bcc B15_a2c1
       ldx #$69
       jmp $8ce8 ; DoStateTransition
    B15_a2c1:
       jsr $8a6c ; IsKirbyVelXZero
       bcc B15_a2cb
       ldx #$61
       jmp $8ce8 ; DoStateTransition
    B15_a2cb:
       jsr $8ae8 ; HasJustPressedA
       bcc B15_a2d5
       ldx #$67
       jmp $8ce8 ; DoStateTransition
    B15_a2d5:
       jsr $8af2 ; HasJustPressedB
       bcc B15_a2df
       ldx #$70
       jmp $8ce8 ; DoStateTransition
    B15_a2df:
       jmp $805b ; KirbyFinalize


    L_15A2E2:
        MOV         $05E1,#$04                  ; 15A2E2/11E10504
        ONTICK      B15_a30b                    ; 15A2E6/080BA315
        ASMCALL     $885C                       ; 15A2EA/D05C88 // Set Kirby's Y velocity
        .word       $FC70                       ; 15A2ED/70FC
        ASMCALL     $DE4B                       ; 15A2EF/D04BDE // Play sound effect
        .byte       $04                         ; 15A2F2/04
        SETPOSE     #$28                        ; 15A2F3/5028
        WAIT        #23                         ; 15A2F5/0617
    L_15A2F7:
        ASMCALL     $885C                       ; 15A2F7/D05C88 // Set Kirby's Y velocity
        .word       $FF50                       ; 15A2FA/50FF
        ONTICK      B15_a315                    ; 15A2FC/0815A315
        WAIT        #5                          ; 15A300/0605
    L_15A302:
        ASMCALL     $884D                       ; 15A302/D04D88 // Zero Kirby's Y velocity
        MOV         VAR0,#$1D                   ; 15A305/0D001D
        A_JMP       L_15A36E                    ; 15A308/176EA3

    B15_a30b:
       jsr $8a40 ; $8a40
       bcc B15_a315
       ldx #$68
       jmp $8ce8 ; DoStateTransition
    B15_a315:
       ldy #$00
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $873e ; $873e
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8bab ; $8bab
       bcc B15_a336
       ldx #$60
       jmp $8ce8 ; DoStateTransition
    B15_a336:
       jsr $8bd3 ; $8bd3
       bcc B15_a340
       ldx #$69
       jmp $8ce8 ; DoStateTransition
    B15_a340:
       jsr $8c61 ; $8c61
       bcc B15_a34a
       ldx #$69
       jmp $8ce8 ; DoStateTransition
    B15_a34a:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_a354
       ldx #$6f
       jmp $8ce8 ; DoStateTransition
    B15_a354:
       jsr $8af2 ; HasJustPressedB
       bcc B15_a35e
       ldx #$71
       jmp $8ce8 ; DoStateTransition
    B15_a35e:
       jsr $8a15 ; WillEnterDoor
       bcc B15_a368
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_a368:
       jmp $805b ; KirbyFinalize

    L_15A36B:
        MOV         VAR0,#$1C                   ; 15A36B/0D001C
    L_15A36E:
        MOV         $05E1,#$05                  ; 15A36E/11E10505
        ONTICK      B15_a391                    ; 15A372/0891A315
        ASMCALL     $8015                       ; 15A376/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
        JEQ         L_15A384                    ; 15A379/0A84A3
        ASMCALL     $801F                       ; 15A37C/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
        .byte       $12                         ; 15A37F/12
        .byte       $2E                         ; 15A380/2E
        A_JSR       $8003                       ; 15A381/180380
    L_15A384:
        SETPOSE     #$2A                        ; 15A384/502A
    L_15A386:
        ASMCALL     $9D82, WAIT #1              ; 15A386/D1829D // Check if Kirby's Y velocity is negative (moving upwards)
    L_15A389:
        JNE         L_15A386                    ; 15A389/0B86A3
        WAIT        VAR0                        ; 15A38C/1F00
    L_15A38E:
        A_JMP       L_15A405                    ; 15A38E/1705A4

    B15_a391:
       ldy #$00
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $873e ; $873e
       jsr $95cd ; SetKirbyPosition
       jsr $9034 ; $9034
       jsr $8bab ; $8bab
       bcc B15_a3b2
       ldx #$60
       jmp $8ce8 ; DoStateTransition
    B15_a3b2:
       jsr $8bd3 ; $8bd3
       bcc B15_a3bc
       ldx #$69
       jmp $8ce8 ; DoStateTransition
    B15_a3bc:
       jsr $88d5 ; $88d5
       bcc B15_a3c6
       ldx #$69
       jmp $8ce8 ; DoStateTransition
    B15_a3c6:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_a3d0
       ldx #$6f
       jmp $8ce8 ; DoStateTransition
    B15_a3d0:
       jsr $8af2 ; HasJustPressedB
       bcc B15_a3da
       ldx #$71
       jmp $8ce8 ; DoStateTransition
    B15_a3da:
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_a3e4
       ldx #$77
       jmp $8ce8 ; DoStateTransition
    B15_a3e4:
       jsr $8a15 ; WillEnterDoor
       bcc B15_a3ee
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_a3ee:
       jsr $8b06 ; IsHoldingUp
       bcc B15_a3f8
       ldx #$72
       jmp $8ce8 ; DoStateTransition
    B15_a3f8:
       jsr $8957 ; TryDiscardCopyAbility
       bcc B15_a402
       ldx #$01
       jmp $8ce8 ; DoStateTransition
    B15_a402:
       jmp $805b ; KirbyFinalize

    L_15A405:
        MOV         $05E1,#$05                  ; 15A405/11E10505
        ASMCALL     $9EE1                       ; 15A409/D0E19E // Clear "landed head-first on enemy" flag
        ONTICK      B15_a413                    ; 15A40C/0813A415
        SETPOSE     #$2C                        ; 15A410/502C
        HALT                                    ; 15A412/09

    B15_a413:
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $873e ; $873e
       jsr $95cd ; SetKirbyPosition
       jsr $a47e ; $a47e
       jsr $940e ; $940e
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8bab ; $8bab
       bcc B15_a435
       ldx #$6b
       jmp $8ce8 ; DoStateTransition
    B15_a435:
       jsr $8bd3 ; $8bd3
       bcc B15_a43f
       ldx #$69
       jmp $8ce8 ; DoStateTransition
    B15_a43f:
       jsr $88ca ; HasLandedHeadFirstOnEnemy
       bcc B15_a449
       ldx #$6a
       jmp $8ce8 ; DoStateTransition
    B15_a449:
       jsr $8af2 ; HasJustPressedB
       bcc B15_a453
       ldx #$71
       jmp $8ce8 ; DoStateTransition
    B15_a453:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_a45d
       ldx #$6f
       jmp $8ce8 ; DoStateTransition
    B15_a45d:
       jsr $8b06 ; IsHoldingUp
       bcc B15_a467
       ldx #$72
       jmp $8ce8 ; DoStateTransition
    B15_a467:
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_a471
       ldx #$77
       jmp $8ce8 ; DoStateTransition
    B15_a471:
       jsr $8a15 ; WillEnterDoor
       bcc B15_a47b
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_a47b:
       jmp $805b ; KirbyFinalize
    B15_a47e:
       lda #$87
       ldy #$a4
       ldx #$02
       jmp $9c72 ; GetKirbyHitbox
       .byte $06,$00,$00,$00,$00,$04,$08

    KirbyState6A:
        ASMCALL     $885C                       ; 15A48E/D05C88 // Set Kirby's Y velocity
        .word       $FD40                       ; 15A491/40FD
        ONTICK      B15_149a                    ; 15A493/089AA415
        SETPOSE     #$2C                        ; 15A497/502C
        HALT                                    ; 15A499/09

    B15_149a:
        ldy #$00
        jsr $87ba ; MAYBE_KirbyGravity
        jsr $9c5a ; SetKirbyDirection
        jsr $8fcc ; SetKirbyPoseDirection
        jsr $8112 ; GetKirbyVelXAbs
        jsr $873e ; $873e
        jsr $95cd ; SetKirbyPosition
        jsr $9034 ; $9034
        jsr $8bab ; $8bab
        bcc B15_a4bb
        ldx #$60
        jmp $8ce8 ; DoStateTransition
    B15_a4bb:
        jsr $8bd3 ; $8bd3
        bcc B15_a4c5
        ldx #$69
        jmp $8ce8 ; DoStateTransition
    B15_a4c5:
        jsr $88c1 ; IsKirbyNotFalling
        bcc B15_a4cf
        ldx #$69
        jmp $8ce8 ; DoStateTransition
    B15_a4cf:
        jsr $8c7d ; WillGrabOntoLadder
        bcc B15_a4d9
        ldx #$6f
        jmp $8ce8 ; DoStateTransition
    B15_a4d9:
        jsr $8af2 ; HasJustPressedB
        bcc B15_a4e3
        ldx #$71
        jmp $8ce8 ; DoStateTransition
    B15_a4e3:
        jsr $89d9 ; HasJustEnteredWater
        bcc B15_a4ed
        ldx #$77
        jmp $8ce8 ; DoStateTransition
    B15_a4ed:
        jsr $8a15 ; WillEnterDoor
        bcc B15_a4f7
        ldx #$00
        jmp $8ce8 ; DoStateTransition
    B15_a4f7:
        jsr $8b06 ; IsHoldingUp
        bcc B15_a501
        ldx #$72
        jmp $8ce8 ; DoStateTransition
    B15_a501:
        jsr $8957 ; TryDiscardCopyAbility
        bcc B15_a50b
        ldx #$01
        jmp $8ce8 ; DoStateTransition
    B15_a50b:
        jmp $805b ; KirbyFinalize

    L_15A50E:
        MOV         $05E1,#$05                  ; 15A50E/11E10505
        MOV         $05E4,#$FF                  ; 15A512/11E405FF
        ONTICK      B15_a52f                    ; 15A516/082FA515
        ASMCALL     $DE4B                       ; 15A51A/D04BDE // Play sound effect
        .byte       $55                         ; 15A51D/55
        ASMCALL     $9952                       ; 15A51E/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15A521/00
        .byte       $00                         ; 15A522/00
        .byte       $00                         ; 15A523/00
        .byte       $00                         ; 15A524/00
        ASMCALL     $8FDC                       ; 15A525/D0DC8F // Set pose (respect facing)
        .byte       $2C                         ; 15A528/2C
        ASMCALL     $885C                       ; 15A529/D05C88 // Set Kirby's Y velocity
        .word       $FD40                       ; 15A52C/40FD
        HALT                                    ; 15A52E/09

    B15_a52f:
       ldy #$0b
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8bab ; $8bab
       bcc B15_a544
       ldx #$60
       jmp $8ce8 ; DoStateTransition
    B15_a544:
       jsr $8b06 ; IsHoldingUp
       bcc B15_a54e
       ldx #$72
       jmp $8ce8 ; DoStateTransition
    B15_a54e:
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_a558
       ldx #$77
       jmp $8ce8 ; DoStateTransition
    B15_a558:
       jmp $805b ; KirbyFinalize

    KirbyState6C:
        MOV         $05E1,#$05                  ; 15A55B/11E10505
        ONTICK      B15_a56c                    ; 15A55F/086CA515
        ASMCALL     $8FDC                       ; 15A563/D0DC8F // Set pose (respect facing)
        .byte       $2A                         ; 15A566/2A
        WAIT        #16                         ; 15A567/0610
        A_JMP       L_15A00B                    ; 15A569/170BA0

    B15_a56c:
        ldy #$00
        jsr $87ba ; MAYBE_KirbyGravity
        jsr $95cd ; SetKirbyPosition
        jsr $9021 ; MAYBE_KirbyWallCollision
        jmp $805b ; KirbyFinalize

    L_15A57A:
        MOV         $05E1,#$06                  ; 15A57A/11E10506
        ASMCALL     $DE4B                       ; 15A57E/D04BDE // Play sound effect
        .byte       $0D                         ; 15A581/0D
        ONTICK      B15_a587                    ; 15A582/0887A515
        HALT                                    ; 15A586/09

    B15_a587:
       jsr $8112 ; GetKirbyVelXAbs
       jsr $9899 ; $9899
       lda #$00
       jsr $8597 ; $8597
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8b4e ; MAYBE_KirbyGroundCollision
       bcc B15_a5a2
       ldx #$69
       jmp $8ce8 ; DoStateTransition
    B15_a5a2:
       jsr $8ade ; IsPressingAB
       bcc B15_a5ac
       ldx #$6e
       jmp $8ce8 ; DoStateTransition
    B15_a5ac:
       jsr $8980 ; $8980
       bcc B15_a5b6
       ldx #$6c
       jmp $8ce8 ; DoStateTransition
    B15_a5b6:
       jsr $8a36 ; IsNotHoldingDown
       bcc B15_a5c0
       ldx #$60
       jmp $8ce8 ; DoStateTransition
    B15_a5c0:
       jsr $a5c6 ; $a5c6
       jmp $805b ; KirbyFinalize
    B15_a5c6:
       jsr $8ffb ; SlopeStateToIndex
       asl a
       adc #$2e
       jmp $8fe6 ; SetPoseWithFacing


    L_15A5CF:
        MOV         $05E1,#$07                  ; 15A5CF/11E10507
        ASMCALL     $DE4B                       ; 15A5D3/D04BDE // Play sound effect
        .byte       $38                         ; 15A5D6/38
        ONTICK      B15_a5ed                    ; 15A5D7/08EDA515
        ASMCALL     $9952                       ; 15A5DB/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15A5DE/00
        .byte       $00                         ; 15A5DF/00
        .byte       $01                         ; 15A5E0/01
        .byte       $00                         ; 15A5E1/00
        ASMCALL     $8710                       ; 15A5E2/D01087 // Set Kirby's X velocity
        .word       $02B3                       ; 15A5E5/B302
        ASMCALL     $8FDC, WAIT #2              ; 15A5E7/D2DC8F // Set pose (respect facing)
        .byte       $38                         ; 15A5EA/38
    L_15A5EB:
        INC2POSE                                ; 15A5EB/90
        HALT                                    ; 15A5EC/09

    B15_a5ed: ; Sword slide attack
       jsr $8112 ; GetKirbyVelXAbs
       jsr $9899 ; $9899
       lda #$00
       jsr $8597 ; $8597
       jsr $95cd ; SetKirbyPosition
       jsr $a622 ; $a622
       jsr $9420 ; Kirby_DamageEnemyCollision
       jsr $8bfa ; $8bfa
       bcc B15_a60b
       ldx #$61
       jmp $8ce8 ; DoStateTransition
    B15_a60b:
       jsr $8b4e ; MAYBE_KirbyGroundCollision
       bcc B15_a615
       ldx #$69
       jmp $8ce8 ; DoStateTransition
    B15_a615:
       jsr $8a23 ; IsDoneSliding
       bcc B15_a61f
       ldx #$61
       jmp $8ce8 ; DoStateTransition
    B15_a61f:
       jmp $805b ; KirbyFinalize
    B15_a622:
       lda OBJ_pose+1
       sec
       sbc #$38
       tax
       lda B15_a634,x
       ldy B15_a638,x
       ldx #$02
       jmp $9c72 ; GetKirbyHitbox
       B15_a634:
       .byte $3C,$43,$4A,$51
       B15_a638:
       .byte $A6,$A6,$A6,$A6,$04,$FB,$FF,$08
       .byte $00,$0D,$0D,$04,$05,$00,$08,$00
       .byte $0D,$0D,$01,$06,$00,$05,$00,$04
       .byte $02,$01,$FA,$FF,$05,$00,$04,$02

    L_15A658:
        MOV         $05E1,#$08                  ; 15A658/11E10508
        ONTICK      B15_a66c                    ; 15A65C/086CA615
        ASMCALL     $86FB                       ; 15A660/D0FB86 // Zero Kirby's X velocity
        MOV         VAR2,#$0A                   ; 15A663/0D020A
        MOV         VAR3,#$03                   ; 15A666/0D0303
        SETPOSE     #$81                        ; 15A669/5081
        HALT                                    ; 15A66B/09

    B15_a66c:
       lda temp_pad1_hold
       and #$08
       beq B15_a6b1
       ldx OBJ_store_x_lo+1
       lda OBJ_store_x_hi+1
       sta temp_x_hi
       lda OBJ_store_y_lo+1
       clc
       adc #$f9
       tay
       lda OBJ_store_y_hi+1
       adc #$ff
       sta temp_y_hi
       jsr $ed9c ; GetTileFlagsAND1F
       cmp #$02
       beq B15_a6bd
       dec OBJ_var2+1
       bpl B15_a6a7
       dec OBJ_var3+1
       bpl B15_a69e
       lda #$03
       sta OBJ_var3+1
    B15_a69e:
       ldx OBJ_var3+1
       lda B15_a714,x
       sta OBJ_var2+1
    B15_a6a7:
       ldx OBJ_var3+1
       ldy B15_a718,x
       ldx #$00
       beq B15_a6c1
    B15_a6b1:
       lda temp_pad1_hold
       and #$04
       beq B15_a6bd
       ldy #$81
       ldx #$01
       bne B15_a6c1
    B15_a6bd:
       ldx #$02
       bne B15_a6c4
    B15_a6c1:
       sty OBJ_pose+1
    B15_a6c4:
       txa
       pha
       lda B15_a71c,x
       sta kirby_vel_y+0
       lda B15_a71f,x
       sta kirby_vel_y+1
       jsr $95cd ; SetKirbyPosition
       pla
       cmp #$02
       bcs B15_a70b
       tax
       lda OBJ_store_y_lo+1
       clc
       adc B15_a722,x
       tay
       lda OBJ_store_y_hi+1
       adc B15_a724,x
       sta temp_y_hi
       ldx OBJ_store_x_lo+1
       lda OBJ_store_x_hi+1
       sta temp_x_hi
       jsr $ed9c ; GetTileFlagsAND1F
       cmp #$01
       beq B15_a70b
    B15_a6fa:
       lda #.BANK (L_15A00B)
       sta script_bank
       lda #.lobyte (L_15A00B)
       ldy #.hibyte (L_15A00B)
       ldx #$01
       jsr $cca7 ; OBJ_TryReplaceScriptPc
       jmp $805b ; KirbyFinalize
    B15_a70b:
       lda temp_pad1_hold
       and #$03
       bne B15_a6fa
       jmp $805b ; KirbyFinalize
    
    B15_a714:
       .byte $04,$0A,$04,$0A
    B15_a718:
       .byte $80,$7F,$80,$7E
    B15_a71c:
       .byte $CD,$33,$00
    B15_a71f:
       .byte $FE,$01,$00
    B15_a722:
       .byte $06,$07
    B15_a724:
       .byte $00,$00

    L_15A726:
        MOV         $05E1,#$0C                  ; 15A726/11E1050C
        ASMCALL     $DE4B                       ; 15A72A/D04BDE // Play sound effect
        .byte       $3A                         ; 15A72D/3A
        ONTICK      B15_a753                    ; 15A72E/0853A715
        ASMCALL     $8FDC, WAIT #2              ; 15A732/D2DC8F // Set pose (respect facing)
        .byte       $3C                         ; 15A735/3C
    L_15A736:
        INC2POSE    WAIT #1                     ; 15A736/91
    L_15A737:
        INC2POSE    WAIT #1                     ; 15A737/91
    L_15A738:
        INC2POSE    WAIT #1                     ; 15A738/91
    L_15A739:
        INC2POSE    WAIT #1                     ; 15A739/91
    L_15A73A:
        INC2POSE    WAIT #2                     ; 15A73A/92
    L_15A73B:
        INC2POSE    WAIT #1                     ; 15A73B/91
    L_15A73C:
        INC2POSE    WAIT #2                     ; 15A73C/92
    L_15A73D:
        ONTICK      B15_TICK_KirbySwordSlash    ; 15A73D/0849A715
        INC2POSE    WAIT #2                     ; 15A741/92
    L_15A742:
        INC2POSE    WAIT #2                     ; 15A742/92
    L_15A743:
        INC2POSE    WAIT #2                     ; 15A743/92
    L_15A744:
        ADDPOSE     #-4, WAIT #8                ; 15A744/68FC
    L_15A746:
        A_JMP       L_15A00B                    ; 15A746/170BA0

    B15_TICK_KirbySwordSlash:
       jsr $8af2 ; HasJustPressedB
       bcc B15_a753
       ldx #$70
       jmp $8ce8 ; DoStateTransition
    B15_a753:
       jsr $8049 ; KirbyPhysics
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_a760
       ldx #$77
       jmp $8ce8 ; DoStateTransition
    B15_a760:
       jsr $89e6 ; HasJustLeftWater
       bcc B15_a76a
       ldx #$7b
       jmp $8ce8 ; DoStateTransition
    B15_a76a:
       jsr $a773 ; KirbySwordSlash_GetHitbox
       jsr $9420 ; Kirby_DamageEnemyCollision
       jmp $805b ; KirbyFinalize
    B15_KirbySwordSlash_GetHitbox:
       lda OBJ_pose+1
       sec
       sbc #$3e
       cmp #$0e
       bcs B15_a789
       tax
       ldy B15_a798,x
       lda B15_a78a,x
       ldx #$05
       jmp $9c72 ; GetKirbyHitbox
    B15_a789:
       rts
    B15_a78a:
       .byte $A6,$AD,$B4,$BB,$C2,$C9,$D0,$D7
       .byte $DE,$E5,$EC,$F3,$FA,$01
    B15_a798:
       .byte $A7,$A7,$A7,$A7,$A7,$A7,$A7,$A7
       .byte $A7,$A7,$A7,$A7,$A7,$A8,$04,$FA
       .byte $FF,$F8,$FF,$05,$05,$04,$06,$00
       .byte $F8,$FF,$05,$05,$04,$00,$00,$F4
       .byte $FF,$06,$04,$04,$00,$00,$F4,$FF
       .byte $06,$04,$04,$09,$00,$F6,$FF,$05
       .byte $05,$04,$F7,$FF,$F6,$FF,$05,$05
       .byte $04,$09,$00,$0A,$00,$05,$05,$04
       .byte $F7,$FF,$0A,$00,$05,$05,$04,$1A
       .byte $00,$00,$00,$0C,$0C,$04,$E6,$FF
       .byte $00,$00,$0C,$0C,$04,$FC,$FF,$07
       .byte $00,$0A,$06,$04,$04,$00,$07,$00
       .byte $0A,$06,$04,$F8,$FF,$F8,$FF,$05
       .byte $05,$04,$08,$00,$F8,$FF,$05,$05

    L_15A808:
        MOV         $05E1,#$0C                  ; 15A808/11E1050C
        ASMCALL     $DE4B                       ; 15A80C/D04BDE // Play sound effect
        .byte       $3B                         ; 15A80F/3B
        ONTICK      B15_a820                    ; 15A810/0820A815
        LOOP        #2                          ; 15A814/0102
            SETPOSE     #$52, WAIT #1               ; 15A816/5152
    L_15A818:
            LOOP        #7                          ; 15A818/0107
                INC2POSE    WAIT #1                     ; 15A81A/91
    L_15A81B:
            ENDLOOP                                 ; 15A81B/02
        ENDLOOP                                 ; 15A81C/02
        A_JMP       L_15A00B                    ; 15A81D/170BA0

    B15_a820:
       jsr $8874 ; KirbyAccelY
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $873e ; $873e
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8bab ; $8bab
       bcc B15_a83f
       ldx #$60
       jmp $8ce8 ; DoStateTransition
    B15_a83f:
       jsr $904a ; TODO_OtherKirbyMapCollision
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_a84c
       ldx #$77
       jmp $8ce8 ; DoStateTransition
    B15_a84c:
       jsr $89e6 ; HasJustLeftWater
       bcc B15_a856
       ldx #$7b
       jmp $8ce8 ; DoStateTransition
    B15_a856:
       jsr $a85f ; $a85f
       jsr $9420 ; Kirby_DamageEnemyCollision
       jmp $805b ; KirbyFinalize
    B15_a85f:
       lda OBJ_pose+1
       sec
       sbc #$52
       tax
       ldy B15_a884,x
       beq B15_a873
       lda B15_a874,x
       ldx #$05
       jmp $9c72 ; GetKirbyHitbox
       B15_a873:
       rts

       B15_a874:
       .byte $94,$94,$9B,$A2,$A9,$B0,$B7,$BE
       .byte $C5,$C5,$BE,$B7,$B0,$A9,$A2,$9B
       B15_a884:
       .byte $A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8
       .byte $A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8
       .byte $04,$00,$00,$F6,$FF,$06,$04,$04
       .byte $08,$00,$F8,$FF,$05,$05,$04,$F8
       .byte $FF,$F8,$FF,$05,$05,$04,$0A,$00
       .byte $00,$00,$04,$06,$04,$F6,$FF,$00
       .byte $00,$04,$06,$04,$08,$00,$08,$00
       .byte $05,$05,$04,$F8,$FF,$08,$00,$05
       .byte $05,$04,$00,$00,$0A,$00,$06,$04

    L_15A8CC:
        ASMCALL     $DE4B                       ; 15A8CC/D04BDE // Play sound effect
        .byte       $30                         ; 15A8CF/30
        ONTICK      B15_a8dc                     ; 15A8D0/08DCA815
        SETPOSE     #$72, WAIT #6               ; 15A8D4/5672
    L_15A8D6:
        INC2POSE    WAIT #6                     ; 15A8D6/96
    L_15A8D7:
        INC2POSE    WAIT #6                     ; 15A8D7/96
    L_15A8D8:
        INC2POSE    WAIT #6                     ; 15A8D8/96
    L_15A8D9:
        A_JMP       L_15A956                    ; 15A8D9/1756A9

    B15_a8dc:
       jsr $88b0 ; $88b0
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $8758 ; $8758
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $904a ; TODO_OtherKirbyMapCollision
       jsr $9016 ; MAYBE_KirbyCeilingFloorCollision
       jsr $8a15 ; WillEnterDoor
       bcc B15_a901
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_a901:
       jmp $805b ; KirbyFinalize

    L_15A904:
        MOV         $05E1,#$0D                  ; 15A904/11E1050D
        ONTICK      B15_a918                    ; 15A908/0818A915
    L_15A90C:
        SETPOSE     #$7A, WAIT #4               ; 15A90C/547A
    L_15A90E:
        INC2POSE    WAIT #4                     ; 15A90E/94
    L_15A90F:
        ASMCALL     $9D72                       ; 15A90F/D0729D // Is holding Up outside water
        JNE         L_15A90C                    ; 15A912/0B0CA9
        A_JMP       L_15A956                    ; 15A915/1756A9

    B15_a918:
       ldy #$08
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $8758 ; $8758
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $9016 ; MAYBE_KirbyCeilingFloorCollision
       jsr $904a ; TODO_OtherKirbyMapCollision
       jsr $8af2 ; HasJustPressedB
       bcc B15_a93f
       ldx #$76
       jmp $8ce8 ; DoStateTransition
    B15_a93f:
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_a949
       ldx #$74
       jmp $8ce8 ; DoStateTransition
    B15_a949:
       jsr $8a15 ; WillEnterDoor
       bcc B15_a953
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_a953:
       jmp $805b ; KirbyFinalize

    L_15A956:
        MOV         $05E1,#$0D                  ; 15A956/11E1050D
        ONTICK      B15_a968                    ; 15A95A/0868A915
    L_15A95E:
        SETPOSE     #$7A                        ; 15A95E/507A
        WAIT        #20                         ; 15A960/0614
    L_15A962:
        INC2POSE                                ; 15A962/90
        WAIT        #20                         ; 15A963/0614
    L_15A965:
        A_JMP       L_15A95E                    ; 15A965/175EA9

    B15_a968:
       ldy #$01
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $8758 ; $8758
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $9016 ; MAYBE_KirbyCeilingFloorCollision
       jsr $904a ; TODO_OtherKirbyMapCollision
       jsr $894d ; IsHoldingUpOrA
       bcc B15_a98f
       ldx #$73
       jmp $8ce8 ; DoStateTransition
    B15_a98f:
       jsr $8af2 ; HasJustPressedB
       bcc B15_a999
       ldx #$76
       jmp $8ce8 ; DoStateTransition
    B15_a999:
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_a9a3
       ldx #$74
       jmp $8ce8 ; DoStateTransition
    B15_a9a3:
       jsr $8a15 ; WillEnterDoor
       bcc B15_a9ad
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_a9ad:
       jmp $805b ; KirbyFinalize

    KirbyState74:
        MOV         $05E1,#$0D                  ; 15A9B0/11E1050D
        ASMCALL     $988D                       ; 15A9B4/D08D98 // Set Kirby's underwater flag
        ONTICK      B15_a9c4                    ; 15A9B7/08C4A915
        SETPOSE     #$7C                        ; 15A9BB/507C
        HALT                                    ; 15A9BD/09

    KirbyState75:
        ASMCALL     $9893                       ; 15A9BE/D09398 // Clear Kirby's underwater flag
        A_JMP       L_15A956                    ; 15A9C1/1756A9

    B15_a9c4:
        ldy #$0c
        jsr $87ba ; MAYBE_KirbyGravity
        jsr $9c5a ; SetKirbyDirection
        jsr $8fcc ; SetKirbyPoseDirection
        jsr $8112 ; GetKirbyVelXAbs
        jsr $8758 ; $8758
        jsr $95cd ; SetKirbyPosition
        jsr $9021 ; MAYBE_KirbyWallCollision
        jsr $9016 ; MAYBE_KirbyCeilingFloorCollision
        jsr $904a ; TODO_OtherKirbyMapCollision
        jsr $8af2 ; HasJustPressedB
        bcc B15_a9eb
        ldx #$76
        jmp $8ce8 ; DoStateTransition
    B15_a9eb:
        jsr $89e6 ; HasJustLeftWater
        bcc B15_a9f5
        ldx #$75
        jmp $8ce8 ; DoStateTransition
    B15_a9f5:
        jsr $8a15 ; WillEnterDoor
        bcc B15_a9ff
        ldx #$00
        jmp $8ce8 ; DoStateTransition
    B15_a9ff:
        jmp $805b ; KirbyFinalize

    L_15AA02:
        MOV         $05E1,#$0A                  ; 15AA02/11E1050A
        ONTICK      B15_aa25                    ; 15AA06/0825AA15
        ASMCALL     $99EA                       ; 15AA0A/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $08                         ; 15AA0D/08
        .byte       $00                         ; 15AA0E/00
        .byte       $05                         ; 15AA0F/05
        .byte       $00                         ; 15AA10/00
        ASMCALL     $DE4B                       ; 15AA11/D04BDE // Play sound effect
        .byte       $1A                         ; 15AA14/1A
        ASMCALL     $8FDC, WAIT #12             ; 15AA15/DCDC8F // Set pose (respect facing)
        .byte       $78                         ; 15AA18/78
    L_15AA19:
        DEC2POSE    WAIT #4                     ; 15AA19/A4
    L_15AA1A:
        DEC2POSE    WAIT #4                     ; 15AA1A/A4
    L_15AA1B:
        DEC2POSE    WAIT #4                     ; 15AA1B/A4
    L_15AA1C:
        ASMCALL     $9D72                       ; 15AA1C/D0729D // Is holding Up outside water
        JNE         L_15A8CC                    ; 15AA1F/0BCCA8
        A_JMP       L_15A00B                    ; 15AA22/170BA0

    B15_aa25:
       ldy #$01
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $8758 ; $8758
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $9016 ; MAYBE_KirbyCeilingFloorCollision
       jsr $904a ; TODO_OtherKirbyMapCollision
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_aa4c
       ldx #$77
       jmp $8ce8 ; DoStateTransition
    B15_aa4c:
       jmp $805b ; KirbyFinalize

    L_15AA4F:
        ASMCALL     $9883                       ; 15AA4F/D08398 // Set swimming flag??
        ASMCALL     $9952                       ; 15AA52/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15AA55/00
        .byte       $F8                         ; 15AA56/F8
        .byte       $04                         ; 15AA57/04
        .byte       $00                         ; 15AA58/00
        A_JMP       L_15A00B                    ; 15AA59/170BA0

    L_15AA5C:
        MOV         $05E1,#$00                  ; 15AA5C/11E10500
        MOV         $05E4,#$FF                  ; 15AA60/11E405FF
        ONTICK      B15_aa6c                    ; 15AA64/086CAA15
        ASMCALL     $A0AD                       ; 15AA68/D0ADA0 // Set Kirby's idle pose (sword)
        HALT                                    ; 15AA6B/09

    B15_aa6c:
        jsr $9c5a ; SetKirbyDirection
        jsr $8fcc ; SetKirbyPoseDirection
        jsr $95cd ; SetKirbyPosition
        jsr $9021 ; MAYBE_KirbyWallCollision
        jsr $8b4e ; MAYBE_KirbyGroundCollision
        bcc B15_aa82
        ldx #$7a
        jmp $8ce8 ; DoStateTransition
    B15_aa82:
        jsr $8af2 ; HasJustPressedB
        bcc B15_aa8c
        ldx #$70
        jmp $8ce8 ; DoStateTransition
    B15_aa8c:
        jsr $89f7 ; $89f7
        bcc B15_aa96
        ldx #$7a
        jmp $8ce8 ; DoStateTransition
    B15_aa96:
        jsr $8b1a ; KirbyCheckDPadHorizontal
        bcc B15_aaa0
        ldx #$79
        jmp $8ce8 ; DoStateTransition
    B15_aaa0:
        jsr $8a15 ; WillEnterDoor
        bcc B15_aaaa
        ldx #$00
        jmp $8ce8 ; DoStateTransition
    B15_aaaa:
        jsr $8957 ; TryDiscardCopyAbility
        bcc B15_aab4
        ldx #$01
        jmp $8ce8 ; DoStateTransition
    B15_aab4:
        jmp $805b ; KirbyFinalize

    L_15AAB7:
        MOV         $05E1,#$01                  ; 15AAB7/11E10501
        MOV         $05E4,#$FF                  ; 15AABB/11E405FF
        ONTICK      B15_aaf7                    ; 15AABF/08F7AA15
        ASMCALL     $9B96                       ; 15AAC3/D0969B
        TABLEJMP    #10                         ; 15AAC6/0F0A
        .word       L_15AADC                    ; 15AAC8/DCAA
        .word       L_15AADC                    ; 15AACA/DCAA
        .word       L_15AADC                    ; 15AACC/DCAA
        .word       L_15AAE7                    ; 15AACE/E7AA
        .word       L_15AAF2                    ; 15AAD0/F2AA
        .word       L_15AADC                    ; 15AAD2/DCAA
        .word       L_15AADC                    ; 15AAD4/DCAA
        .word       L_15AADC                    ; 15AAD6/DCAA
        .word       L_15AAE7                    ; 15AAD8/E7AA
        .word       L_15AAF2                    ; 15AADA/F2AA
    L_15AADC:
        ASMCALL     $8FDC, WAIT #10             ; 15AADC/DADC8F // Set pose (respect facing)
        .byte       $18                         ; 15AADF/18
    L_15AAE0:
        INC2POSE    WAIT #8                     ; 15AAE0/98
    L_15AAE1:
        INC2POSE    WAIT #10                    ; 15AAE1/9A
    L_15AAE2:
        DEC2POSE    WAIT #8                     ; 15AAE2/A8
    L_15AAE3:
        DEC2POSE    WAIT #10                    ; 15AAE3/AA
        A_JMP       L_15AAE0                    ; 15AAE4/17E0AA

    L_15AAE7:
        ASMCALL     $8FDC, WAIT #6              ; 15AAE7/D6DC8F // Set pose (respect facing)
        .byte       $1E                         ; 15AAEA/1E
    L_15AAEB:
        INC2POSE    WAIT #6                     ; 15AAEB/96
        INC2POSE    WAIT #6                     ; 15AAEC/96
        DEC2POSE    WAIT #6                     ; 15AAED/A6
        DEC2POSE    WAIT #6                     ; 15AAEE/A6
        A_JMP       L_15AAEB                    ; 15AAEF/17EBAA

    L_15AAF2:
        ASMCALL     $8FDC                       ; 15AAF2/D0DC8F // Set pose (respect facing)
        .byte       $24                         ; 15AAF5/24
        HALT                                    ; 15AAF6/09

    B15_aaf7:
        jsr $8112 ; GetKirbyVelXAbs
        jsr $98c3 ; GetDirectionInX
        jsr $9899 ; $9899
        tya
        clc
        adc #$0e
        tay
        lda temp_pad1_hold
        and BANKSELECT,x ;??? that cant be right
        jsr $8597 ; $8597
        jsr $95cd ; SetKirbyPosition
        jsr $8bfa ; $8bfa
        bcc B15_ab1a
        ldx #$78
        jmp $8ce8 ; DoStateTransition
    B15_ab1a:
        jsr $8b4e ; MAYBE_KirbyGroundCollision
        bcc B15_ab24
        ldx #$7a
        jmp $8ce8 ; DoStateTransition
    B15_ab24:
        jsr $8a6c ; IsKirbyVelXZero
        bcc B15_ab2e
        ldx #$78
        jmp $8ce8 ; DoStateTransition
    B15_ab2e:
        jsr $8af2 ; HasJustPressedB
        bcc B15_ab38
        ldx #$70
        jmp $8ce8 ; DoStateTransition
    B15_ab38:
        jsr $89f7 ; $89f7
        bcc B15_ab42
        ldx #$7a
        jmp $8ce8 ; DoStateTransition
    B15_ab42:
        jsr $8a15 ; WillEnterDoor
        bcc B15_ab4c
        ldx #$00
        jmp $8ce8 ; DoStateTransition
    B15_ab4c:
        jsr $8a5d ; HasSlopeStateChanged
        bcc B15_ab56
        ldx #$79
        jmp $8ce8 ; DoStateTransition
    B15_ab56:
        jsr $89e6 ; HasJustLeftWater
        bcc B15_ab60
        ldx #$7b
        jmp $8ce8 ; DoStateTransition
    B15_ab60:
        jsr $8957 ; TryDiscardCopyAbility
        bcc B15_ab6a
        ldx #$01
        jmp $8ce8 ; DoStateTransition
    B15_ab6a:
        jmp $805b ; KirbyFinalize

    L_15AB6D:
        MOV         $05E1,#$05                  ; 15AB6D/11E10505
        MOV         $05E4,#$FF                  ; 15AB71/11E405FF
        ONTICK      B15_aba5                     ; 15AB75/08A5AB15
        MOV         REG,$05F5                   ; 15AB79/1CF505
        TABLEJMP    #5                          ; 15AB7C/0F05
        .word       L_15AB88                    ; 15AB7E/88AB
        .word       L_15AB8B                    ; 15AB80/8BAB
        .word       L_15AB99                    ; 15AB82/99AB
        .word       L_15AB96                    ; 15AB84/96AB
        .word       L_15AB99                    ; 15AB86/99AB
    L_15AB88:
        SETPOSE     #$2A                        ; 15AB88/502A
        HALT                                    ; 15AB8A/09

    L_15AB8B:
        ASMCALL     $DE4B                       ; 15AB8B/D04BDE // Play sound effect
        .byte       $48                         ; 15AB8E/48
        SETPOSE     #$6A, WAIT #10              ; 15AB8F/5A6A
    L_15AB91:
        INC2POSE    WAIT #6                     ; 15AB91/96
    L_15AB92:
        INC2POSE    WAIT #10                    ; 15AB92/9A
    L_15AB93:
        A_JMP       L_15AB8B                    ; 15AB93/178BAB

    L_15AB96:
        SETPOSE     #$70                        ; 15AB96/5070
        HALT                                    ; 15AB98/09

    L_15AB99:
        ASMCALL     $DE4B                       ; 15AB99/D04BDE // Play sound effect
        .byte       $48                         ; 15AB9C/48
        SETPOSE     #$62, WAIT #10              ; 15AB9D/5A62
    L_15AB9F:
        INC2POSE    WAIT #10                    ; 15AB9F/9A
    L_15ABA0:
        INC2POSE    WAIT #10                    ; 15ABA0/9A
    L_15ABA1:
        INC2POSE    WAIT #10                    ; 15ABA1/9A
    L_15ABA2:
        A_JMP       L_15AB99                    ; 15ABA2/1799AB

    B15_aba5:
       jsr $8883 ; $8883
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $874b ; $874b
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8bab ; $8bab
       bcc B15_abc4
       ldx #$60
       jmp $8ce8 ; DoStateTransition
    B15_abc4:
       jsr $904a ; TODO_OtherKirbyMapCollision
       jsr $8af2 ; HasJustPressedB
       bcc B15_abd1
       ldx #$71
       jmp $8ce8 ; DoStateTransition
    B15_abd1:
       jsr $8a06 ; $8a06
       bcc B15_abdb
       ldx #$7a
       jmp $8ce8 ; DoStateTransition
    B15_abdb:
       jsr $89e6 ; HasJustLeftWater
       bcc B15_abe5
       ldx #$7b
       jmp $8ce8 ; DoStateTransition
    B15_abe5:
       jsr $8a15 ; WillEnterDoor
       bcc B15_abef
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_abef:
       jsr $8957 ; TryDiscardCopyAbility
       bcc B15_abf9
       ldx #$01
       jmp $8ce8 ; DoStateTransition
    B15_abf9:
       jmp $805b ; KirbyFinalize


    L_15ABFC:
        ASMCALL     $9893                       ; 15ABFC/D09398 // Clear Kirby's underwater flag
        ASMCALL     $9952                       ; 15ABFF/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15AC02/00
        .byte       $F8                         ; 15AC03/F8
        .byte       $05                         ; 15AC04/05
        .byte       $00                         ; 15AC05/00
        A_JMP       L_15A2E2                    ; 15AC06/17E2A2

    L_15AC09:
        MOV         $05E0,#$05                  ; 15AC09/11E00505
        SPRITEMAP   $1B9320                     ; 15AC0D/1A20931B
        ASMCALL     $9CB3                       ; 15AC11/D0B39C // Load some palette? (Kirby's palette?)
    L_15AC14:
        ASMCALL     $9BF7                       ; 15AC14/D0F79B // Get Kirby's sub-state (0=STOP, 1=WALK, 2=DASH, 3=FALL, 4=WATER_STOP, 5=WATER_WALK, 6=SWIM, 7=LEAVE_WATER)
        TABLEJMP    #8                          ; 15AC17/0F08
        .word       L_15AC29                    ; 15AC19/29AC
        .word       L_15ACC5                    ; 15AC1B/C5AC
        .word       L_15AE01                    ; 15AC1D/01AE
        .word       L_15AF91                    ; 15AC1F/91AF
        .word       KirbyStateCC                ; 15AC21/FDB5
        .word       KirbyStateCD                ; 15AC23/5BB6
        .word       KirbyStateCE                ; 15AC25/14B7
        .word       L_15B4EE                    ; 15AC27/EEB4
    L_15AC29:
        MOV         $05E1,#$00                  ; 15AC29/11E10500
        ONTICK      $15AC43                     ; 15AC2D/0843AC15
        ASMCALL     $8015                       ; 15AC31/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
        JEQ         L_15AC3F                    ; 15AC34/0A3FAC
        ASMCALL     $801F                       ; 15AC37/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
        .byte       $18                         ; 15AC3A/18
        .byte       $3A                         ; 15AC3B/3A
        A_JSR       $8003                       ; 15AC3C/180380
    L_15AC3F:
        ASMCALL     $ACB9                       ; 15AC3F/D0B9AC // Set Kirby's idle pose (parasol)
    L_15AC42:
        HALT                                    ; 15AC42/09

    ;Tick callback for Kirby state $B4 (parasol, idle)
    B15_KirbyTick_ParasolIdle:
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8b4e ; MAYBE_KirbyGroundCollision
       bcc B15_ac59
       ldx #$bc                         ;Parasol, falling
       jmp $8ce8 ; DoStateTransition
    B15_ac59:
       jsr $8b1a ; KirbyCheckDPadHorizontal
       bcc B15_ac63
       ldx #$b5                         ;Parasol, walking
       jmp $8ce8 ; DoStateTransition
    B15_ac63:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_ac6d
       ldx #$c4                         ;Parasol, climbing
       jmp $8ce8 ; DoStateTransition
    B15_ac6d:
       jsr $8b10 ; IsHoldingDown
       bcc B15_ac77
       ldx #$c2                         ;Parasol, crouching
       jmp $8ce8 ; DoStateTransition
    B15_ac77:
       jsr $8ae8 ; HasJustPressedA
       bcc B15_ac81
       ldx #$ba                         ;Parasol, jumping
       jmp $8ce8 ; DoStateTransition
    B15_ac81:
       jsr $8af2 ; HasJustPressedB
       bcc B15_ac8b
       ldx #$c5                         ;Parasol attack
       jmp $8ce8 ; DoStateTransition
    B15_ac8b:
       jsr $8a15 ; WillEnterDoor
       bcc B15_ac95
       ldx #$00                         ;Entering door
       jmp $8ce8 ; DoStateTransition
    B15_ac95:
       jsr $8b06 ; IsHoldingUp
       bcc B15_ac9f
       ldx #$c6                         ;Parasol, begin flying
       jmp $8ce8 ; DoStateTransition
    B15_ac9f:
       jsr $8a5d ; HasSlopeStateChanged
       bcc B15_aca9
       ldx #$b4                         ;Parasol, idle
       jmp $8ce8 ; DoStateTransition
    B15_aca9:
       jsr $8957 ; TryDiscardCopyAbility
       bcc B15_acb3
       ldx #$01                         ;Discarding ability
       jmp $8ce8 ; DoStateTransition
    B15_acb3:
       jsr $b7b3 ; $b7b3
       jmp $805b ; KirbyFinalize

    B15_SetParasolKirbyIdlePose:
       jsr $8ffb ; SlopeStateToIndex
       pha
       asl a
       adc #$0e
       sta OBJ_pose+1
       pla
       rts

    L_15ACC5:
        MOV         REG,$05F8                   ; 15ACC5/1CF805
        JEQ         L_15ACCF                    ; 15ACC8/0ACFAC
        ASMCALL     $DE4B                       ; 15ACCB/D04BDE // Play sound effect
        .byte       $31                         ; 15ACCE/31
    L_15ACCF:
        MOV         $05E1,#$01                  ; 15ACCF/11E10501
        MOV         $05BF,#$00                  ; 15ACD3/11BF0500
        ONTICK      B15_ad68                    ; 15ACD7/0868AD15
        ASMCALL     $8015                       ; 15ACDB/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
        JEQ         L_15ACE9                    ; 15ACDE/0AE9AC
        ASMCALL     $801F                       ; 15ACE1/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
        .byte       $18                         ; 15ACE4/18
        .byte       $3A                         ; 15ACE5/3A
        A_JSR       $8003                       ; 15ACE6/180380
    L_15ACE9:
        ASMCALL     $9B96                       ; 15ACE9/D0969B
    L_15ACEC:
        TABLEJMP    #15                         ; 15ACEC/0F0F
        .word       L_15AD0C                    ; 15ACEE/0CAD
        .word       L_15AD0C                    ; 15ACF0/0CAD
        .word       L_15AD0C                    ; 15ACF2/0CAD
        .word       L_15AD2C                    ; 15ACF4/2CAD
        .word       L_15AD37                    ; 15ACF6/37AD
        .word       L_15AD3C                    ; 15ACF8/3CAD
        .word       L_15AD3C                    ; 15ACFA/3CAD
        .word       L_15AD3C                    ; 15ACFC/3CAD
        .word       L_15AD47                    ; 15ACFE/47AD
        .word       L_15AD37                    ; 15AD00/37AD
        .word       L_15AD52                    ; 15AD02/52AD
        .word       L_15AD52                    ; 15AD04/52AD
        .word       L_15AD52                    ; 15AD06/52AD
        .word       L_15AD5D                    ; 15AD08/5DAD
        .word       L_15AD37                    ; 15AD0A/37AD
    L_15AD0C:
        ASMCALL     $8FF5                       ; 15AD0C/D0F58F // Return (frame_counter & 3)
        TABLEJMP    #4                          ; 15AD0F/0F04
        .word       L_15AD19                    ; 15AD11/19AD
        .word       L_15AD1D                    ; 15AD13/1DAD
        .word       L_15AD21                    ; 15AD15/21AD
        .word       L_15AD25                    ; 15AD17/25AD
    L_15AD19:
        ASMCALL     $8FDC, WAIT #10             ; 15AD19/DADC8F // Set pose (respect facing)
        .byte       $1E                         ; 15AD1C/1E
    L_15AD1D:
        ASMCALL     $8FDC, WAIT #8              ; 15AD1D/D8DC8F // Set pose (respect facing)
        .byte       $20                         ; 15AD20/20
    L_15AD21:
        ASMCALL     $8FDC, WAIT #10             ; 15AD21/DADC8F // Set pose (respect facing)
        .byte       $22                         ; 15AD24/22
    L_15AD25:
        ASMCALL     $8FDC, WAIT #8              ; 15AD25/D8DC8F // Set pose (respect facing)
        .byte       $20                         ; 15AD28/20
    L_15AD29:
        A_JMP       L_15AD19                    ; 15AD29/1719AD

    L_15AD2C:
        ASMCALL     $8FDC, WAIT #6              ; 15AD2C/D6DC8F // Set pose (respect facing)
        .byte       $24                         ; 15AD2F/24
    L_15AD30:
        INC2POSE    WAIT #6                     ; 15AD30/96
        INC2POSE    WAIT #6                     ; 15AD31/96
        DEC2POSE    WAIT #6                     ; 15AD32/A6
        DEC2POSE    WAIT #6                     ; 15AD33/A6
        A_JMP       L_15AD30                    ; 15AD34/1730AD

    L_15AD37:
        ASMCALL     $8FDC                       ; 15AD37/D0DC8F // Set pose (respect facing)
        .byte       $2A                         ; 15AD3A/2A
        HALT                                    ; 15AD3B/09

    L_15AD3C:
        ASMCALL     $8FDC, WAIT #4              ; 15AD3C/D4DC8F // Set pose (respect facing)
        .byte       $1E                         ; 15AD3F/1E
    L_15AD40:
        INC2POSE    WAIT #3                     ; 15AD40/93
    L_15AD41:
        INC2POSE    WAIT #4                     ; 15AD41/94
    L_15AD42:
        DEC2POSE    WAIT #3                     ; 15AD42/A3
    L_15AD43:
        DEC2POSE    WAIT #4                     ; 15AD43/A4
    L_15AD44:
        A_JMP       L_15AD40                    ; 15AD44/1740AD

    L_15AD47:
        ASMCALL     $8FDC, WAIT #4              ; 15AD47/D4DC8F // Set pose (respect facing)
        .byte       $24                         ; 15AD4A/24
    L_15AD4B:
        INC2POSE    WAIT #4                     ; 15AD4B/94
        INC2POSE    WAIT #4                     ; 15AD4C/94
        DEC2POSE    WAIT #4                     ; 15AD4D/A4
        DEC2POSE    WAIT #4                     ; 15AD4E/A4
        A_JMP       L_15AD4B                    ; 15AD4F/174BAD

    L_15AD52:
        ASMCALL     $8FDC, WAIT #3              ; 15AD52/D3DC8F // Set pose (respect facing)
        .byte       $1E                         ; 15AD55/1E
    L_15AD56:
        INC2POSE    WAIT #2                     ; 15AD56/92
        INC2POSE    WAIT #3                     ; 15AD57/93
        DEC2POSE    WAIT #2                     ; 15AD58/A2
        DEC2POSE    WAIT #3                     ; 15AD59/A3
        A_JMP       L_15AD56                    ; 15AD5A/1756AD

    L_15AD5D:
        ASMCALL     $8FDC, WAIT #3              ; 15AD5D/D3DC8F // Set pose (respect facing)
        .byte       $24                         ; 15AD60/24
    L_15AD61:
        INC2POSE    WAIT #3                     ; 15AD61/93
        INC2POSE    WAIT #3                     ; 15AD62/93
        DEC2POSE    WAIT #3                     ; 15AD63/A3
        DEC2POSE    WAIT #3                     ; 15AD64/A3
        A_JMP       L_15AD61                    ; 15AD65/1761AD
    
    B15_ad68:
        jsr $8765 ; $8765
        jsr $95cd ; SetKirbyPosition
        jsr $8bfa ; $8bfa
        bcc B15_ad78
        ldx #$b4
        jmp $8ce8 ; DoStateTransition
    B15_ad78:
        jsr $8b4e ; MAYBE_KirbyGroundCollision
        bcc B15_ad82
        ldx #$bc
        jmp $8ce8 ; DoStateTransition
    B15_ad82:
        jsr $8a6c ; IsKirbyVelXZero
        bcc B15_ad8c
        ldx #$b4
        jmp $8ce8 ; DoStateTransition
    B15_ad8c:
        jsr $8a78 ; $8a78
        bcc B15_ad96
        ldx #$b9
        jmp $8ce8 ; DoStateTransition
    B15_ad96:
        jsr $8a86 ; $8a86
        bcc B15_ada0
        ldx #$b7
        jmp $8ce8 ; DoStateTransition
    B15_ada0:
        jsr $8c7d ; WillGrabOntoLadder
        bcc B15_adaa
        ldx #$c4
        jmp $8ce8 ; DoStateTransition
    B15_adaa:
        jsr $8b10 ; IsHoldingDown
        bcc B15_adb4
        ldx #$c2
        jmp $8ce8 ; DoStateTransition
    B15_adb4:
        jsr $8ae8 ; HasJustPressedA
        bcc B15_adbe
        ldx #$ba
        jmp $8ce8 ; DoStateTransition
    B15_adbe:
        jsr $8af2 ; HasJustPressedB
        bcc B15_adc8
        ldx #$c5
        jmp $8ce8 ; DoStateTransition
    B15_adc8:
        jsr $8a5d ; HasSlopeStateChanged
        bcc B15_add2
        ldx #$b6
        jmp $8ce8 ; DoStateTransition
    B15_add2:
        jsr $8a15 ; WillEnterDoor
        bcc B15_addc
        ldx #$00
        jmp $8ce8 ; DoStateTransition
    B15_addc:
        jsr $8b06 ; IsHoldingUp
        bcc B15_ade6
        ldx #$c6
        jmp $8ce8 ; DoStateTransition
    B15_ade6:
        jsr $8957 ; TryDiscardCopyAbility
        bcc B15_adf0
        ldx #$01
        jmp $8ce8 ; DoStateTransition
    B15_adf0:
        jsr $b7b3 ; $b7b3
        jmp $805b ; KirbyFinalize

    L_15ADF6:
        ASMCALL     $DE4B                       ; 15ADF6/D04BDE // Play sound effect
        .byte       $37                         ; 15ADF9/37
        ASMCALL     $9952                       ; 15ADFA/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15ADFD/00
        .byte       $00                         ; 15ADFE/00
        .byte       $01                         ; 15ADFF/01
        .byte       $00                         ; 15AE00/00
    L_15AE01:
        MOV         $05E1,#$02                  ; 15AE01/11E10502
        ONTICK      B15_ae1d                    ; 15AE05/081DAE15
        ASMCALL     $8015                       ; 15AE09/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
        JEQ         L_15AE17                    ; 15AE0C/0A17AE
        ASMCALL     $801F                       ; 15AE0F/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
        .byte       $18                         ; 15AE12/18
        .byte       $3A                         ; 15AE13/3A
        A_JSR       $8003                       ; 15AE14/180380
    L_15AE17:
        ASMCALL     $9BAA                       ; 15AE17/D0AA9B
        A_JMP       L_15ACEC                    ; 15AE1A/17ECAC

    B15_ae1d:
       jsr $8781 ; $8781
       jsr $95cd ; SetKirbyPosition
       jsr $8bfa ; $8bfa
       bcc B15_ae2d
       ldx #$b4
       jmp $8ce8 ; DoStateTransition
    B15_ae2d:
       jsr $8b4e ; MAYBE_KirbyGroundCollision
       bcc B15_ae37
       ldx #$bc
       jmp $8ce8 ; DoStateTransition
    B15_ae37:
       jsr $8a78 ; $8a78
       bcc B15_ae41
       ldx #$b9
       jmp $8ce8 ; DoStateTransition
    B15_ae41:
       jsr $8a4a ; $8a4a
       bcc B15_ae4b
       ldx #$b5
       jmp $8ce8 ; DoStateTransition
    B15_ae4b:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_ae55
       ldx #$c4
       jmp $8ce8 ; DoStateTransition
    B15_ae55:
       jsr $8b10 ; IsHoldingDown
       bcc B15_ae5f
       ldx #$c2
       jmp $8ce8 ; DoStateTransition
    B15_ae5f:
       jsr $8ae8 ; HasJustPressedA
       bcc B15_ae69
       ldx #$ba
       jmp $8ce8 ; DoStateTransition
    B15_ae69:
       jsr $8af2 ; HasJustPressedB
       bcc B15_ae73
       ldx #$c5
       jmp $8ce8 ; DoStateTransition
    B15_ae73:
       jsr $8a5d ; HasSlopeStateChanged
       bcc B15_ae7d
       ldx #$b8
       jmp $8ce8 ; DoStateTransition
    B15_ae7d:
       jsr $8a15 ; WillEnterDoor
       bcc B15_ae87
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_ae87:
       jsr $8b06 ; IsHoldingUp
       bcc B15_ae91
       ldx #$c6
       jmp $8ce8 ; DoStateTransition
    B15_ae91:
       jsr $8957 ; TryDiscardCopyAbility
       bcc B15_ae9b
       ldx #$01
       jmp $8ce8 ; DoStateTransition
    B15_ae9b:
       jsr $b7b3 ; $b7b3
       jmp $805b ; KirbyFinalize

    L_15AEA1:
        MOV         $05E1,#$03                  ; 15AEA1/11E10503
        ASMCALL     $DE4B                       ; 15AEA5/D04BDE // Play sound effect
        .byte       $31                         ; 15AEA8/31
        ONTICK      B15_aeb9                    ; 15AEA9/08B9AE15
        ASMCALL     $8FDC                       ; 15AEAD/D0DC8F // Set pose (respect facing)
        .byte       $2C                         ; 15AEB0/2C
        ASMCALL     $9952                       ; 15AEB1/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15AEB4/00
        .byte       $00                         ; 15AEB5/00
        .byte       $01                         ; 15AEB6/01
        .byte       $00                         ; 15AEB7/00
        HALT                                    ; 15AEB8/09

    B15_aeb9:
       jsr $879d ; $879d
       jsr $95cd ; SetKirbyPosition
       jsr $8bfa ; $8bfa
       bcc B15_aec9
       ldx #$b4
       jmp $8ce8 ; DoStateTransition
    B15_aec9:
       jsr $8b4e ; MAYBE_KirbyGroundCollision
       bcc B15_aed3
       ldx #$bc
       jmp $8ce8 ; DoStateTransition
    B15_aed3:
       jsr $8a6c ; IsKirbyVelXZero
       bcc B15_aedd
       ldx #$b4
       jmp $8ce8 ; DoStateTransition
    B15_aedd:
       jsr $8ae8 ; HasJustPressedA
       bcc B15_aee7
       ldx #$ba
       jmp $8ce8 ; DoStateTransition
    B15_aee7:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_aef1
       ldx #$c4
       jmp $8ce8 ; DoStateTransition
    B15_aef1:
       jsr $8b10 ; IsHoldingDown
       bcc B15_aefb
       ldx #$c2
       jmp $8ce8 ; DoStateTransition
    B15_aefb:
       jsr $8af2 ; HasJustPressedB
       bcc B15_af05
       ldx #$c5
       jmp $8ce8 ; DoStateTransition
    B15_af05:
       jsr $8a15 ; WillEnterDoor
       bcc B15_af0f
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_af0f:
       jmp $805b ; KirbyFinalize

    L_15AF12:
        MOV         $05E1,#$04                  ; 15AF12/11E10504
        ONTICK      B15_af38                    ; 15AF16/0838AF15
        ASMCALL     $885C                       ; 15AF1A/D05C88 // Set Kirby's Y velocity
        .word       $FC70                       ; 15AF1D/70FC
        ASMCALL     $DE4B                       ; 15AF1F/D04BDE // Play sound effect
        .byte       $04                         ; 15AF22/04
        SETPOSE     #$2E                        ; 15AF23/502E
        WAIT        #23                         ; 15AF25/0617
    L_15AF27:
        ASMCALL     $885C                       ; 15AF27/D05C88 // Set Kirby's Y velocity
        .word       $FF50                       ; 15AF2A/50FF
        ONTICK      B15_af42                    ; 15AF2C/0842AF15
        WAIT        #5                          ; 15AF30/0605
    L_15AF32:
        ASMCALL     $884D                       ; 15AF32/D04D88 // Zero Kirby's Y velocity
        A_JMP       L_15AF91                    ; 15AF35/1791AF

    B15_af38:
       jsr $8a40 ; $8a40
       bcc B15_af42
       ldx #$bb
       jmp $8ce8 ; DoStateTransition
    B15_af42:
       ldy #$00
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $873e ; $873e
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8bab ; $8bab
       bcc B15_af63
       ldx #$b3
       jmp $8ce8 ; DoStateTransition
    B15_af63:
       jsr $8bd3 ; $8bd3
       bcc B15_af6d
       ldx #$bc
       jmp $8ce8 ; DoStateTransition
    B15_af6d:
       jsr $8c61 ; $8c61
       bcc B15_af77
       ldx #$bc
       jmp $8ce8 ; DoStateTransition
    B15_af77:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_af81
       ldx #$c4
       jmp $8ce8 ; DoStateTransition
    B15_af81:
       jsr $8af2 ; HasJustPressedB
       bcc B15_af8b
       ldx #$c5
       jmp $8ce8 ; DoStateTransition
    B15_af8b:
       jsr $b7b3 ; $b7b3
       jmp $805b ; KirbyFinalize

    L_15AF91:
        MOV         $05E1,#$05                  ; 15AF91/11E10505
        ONTICK      B15_afaa                    ; 15AF95/08AAAF15
        ASMCALL     $8015                       ; 15AF99/D01580 // Return 0 if MSB of $05E4 is set, otherwise return 1
        JEQ         L_15AFA7                    ; 15AF9C/0AA7AF
        ASMCALL     $801F                       ; 15AF9F/D01F80 // Maybe set sloped pose? (first = regular, second = slope)
        .byte       $18                         ; 15AFA2/18
        .byte       $3A                         ; 15AFA3/3A
        A_JSR       $8003                       ; 15AFA4/180380
    L_15AFA7:
        SETPOSE     #$30                        ; 15AFA7/5030
        HALT                                    ; 15AFA9/09

    B15_afaa:
       ldy #$00
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $873e ; $873e
       jsr $95cd ; SetKirbyPosition
       jsr $9034 ; $9034
       jsr $8bab ; $8bab
       bcc B15_afcb
       ldx #$b3
       jmp $8ce8 ; DoStateTransition
    B15_afcb:
       jsr $8bd3 ; $8bd3
       bcc B15_afd5
       ldx #$bc
       jmp $8ce8 ; DoStateTransition
    B15_afd5:
       jsr $88d5 ; $88d5
       bcc B15_afdf
       ldx #$bc
       jmp $8ce8 ; DoStateTransition
    B15_afdf:
       jsr $b02b ; $b02b
       bcc B15_afe9
       ldx #$bd
       jmp $8ce8 ; DoStateTransition
    B15_afe9:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_aff3
       ldx #$c4
       jmp $8ce8 ; DoStateTransition
    B15_aff3:
       jsr $8af2 ; HasJustPressedB
       bcc B15_affd
       ldx #$c5
       jmp $8ce8 ; DoStateTransition
    B15_affd:
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_b007
       ldx #$cb
       jmp $8ce8 ; DoStateTransition
    B15_b007:
       jsr $8a15 ; WillEnterDoor
       bcc B15_b011
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_b011:
       jsr $8b06 ; IsHoldingUp
       bcc B15_b01b
       ldx #$c6
       jmp $8ce8 ; DoStateTransition
    B15_b01b:
       jsr $8957 ; TryDiscardCopyAbility
       bcc B15_b025
       ldx #$01
       jmp $8ce8 ; DoStateTransition
    B15_b025:
       jsr $b7b3 ; $b7b3
       jmp $805b ; KirbyFinalize
    B15_b02b:
       lda kirby_copy_ability
       cmp #$09
       beq B15_b034
    B15_b032:
       clc
    B15_b033:
       rts
    B15_b034:
       ldx kirby_vel_y+1
       bmi B15_b032
       lda kirby_vel_y+0
       sec
       sbc #$80
       txa
       sbc #$02
       bcc B15_b033
       rts

    L_15B045:
        MOV         $05E1,#$05                  ; 15B045/11E10505
    L_15B04A := * + 2 ; TABLECALL here at 25AA5D. Coincidentally an END
        MOV         VAR0,#$00                   ; 15B049/0D0000
        ONTICK      B15_b068                    ; 15B04C/0868B015
        ASMCALL     $885C                       ; 15B050/D05C88 // Set Kirby's Y velocity
        .word       $0080                       ; 15B053/8000
    L_15B055:
        SETPOSE     #$36                        ; 15B055/5036
        WAIT        #24                         ; 15B057/0618
    L_15B059:
        SETPOSE     #$32                        ; 15B059/5032
        WAIT        #24                         ; 15B05B/0618
    L_15B05D:
        SETPOSE     #$34                        ; 15B05D/5034
        WAIT        #24                         ; 15B05F/0618
    L_15B061:
        SETPOSE     #$32                        ; 15B061/5032
        WAIT        #24                         ; 15B063/0618
    L_15B065:
        A_JMP       L_15B055                    ; 15B065/1755B0

    B15_b068:
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $873e ; $873e
       jsr $856f ; SetKirbyVelX
       jsr $813a ; SetVelXFromKirby
       jsr $b0d9 ; $b0d9
       jsr $95d3 ; $95d3
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8bab ; $8bab
       bcc B15_b08d
       ldx #$b3
       jmp $8ce8 ; DoStateTransition
    B15_b08d:
       jsr $b119 ; $b119
       bcc B15_b097
       ldx #$be
       jmp $8ce8 ; DoStateTransition
    B15_b097:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_b0a1
       ldx #$c4
       jmp $8ce8 ; DoStateTransition
    B15_b0a1:
       jsr $8af2 ; HasJustPressedB
       bcc B15_b0ab
       ldx #$c5
       jmp $8ce8 ; DoStateTransition
    B15_b0ab:
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_b0b5
       ldx #$cb
       jmp $8ce8 ; DoStateTransition
    B15_b0b5:
       jsr $8a15 ; WillEnterDoor
       bcc B15_b0bf
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_b0bf:
       jsr $8b06 ; IsHoldingUp
       bcc B15_b0c9
       ldx #$c6
       jmp $8ce8 ; DoStateTransition
    B15_b0c9:
       jsr $8957 ; TryDiscardCopyAbility
       bcc B15_b0d3
       ldx #$01
       jmp $8ce8 ; DoStateTransition
    B15_b0d3:
       jsr $b7b3 ; $b7b3
       jmp $805b ; KirbyFinalize

    B15_b0d9:
       lda OBJ_var0+1
       lsr a
       lsr a
       lsr a
       tax
       lda B15_B101,x
       clc
       adc OBJ_vel_x_lo+1
       sta OBJ_vel_x_lo+1
       lda B15_B10D,x
       adc OBJ_vel_x_hi+1
       sta OBJ_vel_x_hi+1
       ldx OBJ_var0+1
       inx
       cpx #$60
       bcc B15_b0fd
       ldx #$00
    B15_b0fd:
       stx OBJ_var0+1
       rts
    
    B15_B101:
       .byte $80,$40,$10,$F0,$C0,$80
       .byte $80,$C0,$F0,$10,$40,$80
    B15_B10D:
       .byte $00,$00,$00,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$00,$00,$00
       
    B15_b119:
       lda temp_pad1_hold
       and #$04
       bne B15_b121
       clc
       rts
    B15_b121:
       sec
       rts

    L_15B123:
        MOV         $05E1,#$05                  ; 15B123/11E10505
        ASMCALL     $9EE1                       ; 15B127/D0E19E // Clear "landed head-first on enemy" flag
        ONTICK      B15_b131                    ; 15B12A/0831B115
        SETPOSE     #$38                        ; 15B12E/5038
        HALT                                    ; 15B130/09

    B15_b131:
       ldy #$00
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $873e ; $873e
       jsr $95cd ; SetKirbyPosition
       jsr $b1a1 ; $b1a1
       jsr $940e ; $940e
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8bab ; $8bab
       bcc B15_b158
       ldx #$c0
       jmp $8ce8 ; DoStateTransition
    B15_b158:
       jsr $88ca ; HasLandedHeadFirstOnEnemy
       bcc B15_b162
       ldx #$bf
       jmp $8ce8 ; DoStateTransition
    B15_b162:
       jsr $8c7d ; WillGrabOntoLadder
       bcc B15_b16c
       ldx #$c4
       jmp $8ce8 ; DoStateTransition
    B15_b16c:
       jsr $8af2 ; HasJustPressedB
       bcc B15_b176
       ldx #$c5
       jmp $8ce8 ; DoStateTransition
    B15_b176:
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_b180
       ldx #$cb
       jmp $8ce8 ; DoStateTransition
    B15_b180:
       jsr $8a15 ; WillEnterDoor
       bcc B15_b18a
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_b18a:
       jsr $8b06 ; IsHoldingUp
       bcc B15_b194
       ldx #$c6
       jmp $8ce8 ; DoStateTransition
    B15_b194:
       jsr $8957 ; TryDiscardCopyAbility
       bcc B15_b19e
       ldx #$01
       jmp $8ce8 ; DoStateTransition
    B15_b19e:
       jmp $805b ; KirbyFinalize
    B15_b1a1:
       jsr $b7be ; $b7be
       ldx #$02
       jmp $9c72 ; GetKirbyHitbox

    L_15B1A9:
        ASMCALL     $885C                       ; 15B1A9/D05C88 // Set Kirby's Y velocity
        .word       $FD40                       ; 15B1AC/40FD
        ONTICK      B15_b1b5                    ; 15B1AE/08B5B115
        SETPOSE     #$38                        ; 15B1B2/5038
        HALT                                    ; 15B1B4/09

    B15_b1b5:
        ldy #$00
        jsr $87ba ; MAYBE_KirbyGravity
        jsr $9c5a ; SetKirbyDirection
        jsr $8fcc ; SetKirbyPoseDirection
        jsr $8112 ; GetKirbyVelXAbs
        jsr $873e ; $873e
        jsr $95cd ; SetKirbyPosition
        jsr $9034 ; $9034
        jsr $8bab ; $8bab
        bcc B15_b1d6
        ldx #$b3
        jmp $8ce8 ; DoStateTransition
    B15_b1d6:
        jsr $8bd3 ; $8bd3
        bcc B15_b1e0
        ldx #$bc
        jmp $8ce8 ; DoStateTransition
    B15_b1e0:
        jsr $88c1 ; IsKirbyNotFalling
        bcc B15_b1ea
        ldx #$bc
        jmp $8ce8 ; DoStateTransition
    B15_b1ea:
        jsr $8c7d ; WillGrabOntoLadder
        bcc B15_b1f4
        ldx #$c4
        jmp $8ce8 ; DoStateTransition
    B15_b1f4:
        jsr $8af2 ; HasJustPressedB
        bcc B15_b1fe
        ldx #$c5
        jmp $8ce8 ; DoStateTransition
    B15_b1fe:
        jsr $89d9 ; HasJustEnteredWater
        bcc B15_b208
        ldx #$cb
        jmp $8ce8 ; DoStateTransition
    B15_b208:
        jsr $8a15 ; WillEnterDoor
        bcc B15_b212
        ldx #$00
        jmp $8ce8 ; DoStateTransition
    B15_b212:
        jsr $8b06 ; IsHoldingUp
        bcc B15_b21c
        ldx #$c6
        jmp $8ce8 ; DoStateTransition
    B15_b21c:
        jsr $8957 ; TryDiscardCopyAbility
        bcc B15_b226
        ldx #$01
        jmp $8ce8 ; DoStateTransition
    B15_b226:
        jsr $b7b3 ; $b7b3
        jmp $805b ; KirbyFinalize

    L_15B22C:
        MOV         $05E1,#$05                  ; 15B22C/11E10505
        MOV         $05E4,#$FF                  ; 15B230/11E405FF
        ONTICK      B15_b24d                    ; 15B234/084DB215
        ASMCALL     $DE4B                       ; 15B238/D04BDE // Play sound effect
        .byte       $55                         ; 15B23B/55
        ASMCALL     $9952                       ; 15B23C/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15B23F/00
        .byte       $00                         ; 15B240/00
        .byte       $00                         ; 15B241/00
        .byte       $00                         ; 15B242/00
        ASMCALL     $8FDC                       ; 15B243/D0DC8F // Set pose (respect facing)
        .byte       $38                         ; 15B246/38
        ASMCALL     $885C                       ; 15B247/D05C88 // Set Kirby's Y velocity
        .word       $FD40                       ; 15B24A/40FD
        HALT                                    ; 15B24C/09

    B15_b24d:
       ldy #$0b
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8bab ; $8bab
       bcc B15_b262
       ldx #$b3
       jmp $8ce8 ; DoStateTransition
    B15_b262:
       jsr $8b06 ; IsHoldingUp
       bcc B15_b26c
       ldx #$c6
       jmp $8ce8 ; DoStateTransition
    B15_b26c:
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_b276
       ldx #$cb
       jmp $8ce8 ; DoStateTransition
    B15_b276:
       jmp $805b ; KirbyFinalize

    L_15B279:
        MOV         $05E1,#$05                  ; 15B279/11E10505
        ONTICK      B15_b28a                    ; 15B27D/088AB215
        ASMCALL     $8FDC                       ; 15B281/D0DC8F // Set pose (respect facing)
        .byte       $30                         ; 15B284/30
        WAIT        #16                         ; 15B285/0610
    L_15B287:
        A_JMP       L_15AC14                    ; 15B287/1714AC

    B15_b28a:
        ldy #$00
        jsr $87ba ; MAYBE_KirbyGravity
        jsr $95cd ; SetKirbyPosition
        jsr $9021 ; MAYBE_KirbyWallCollision
        jsr $b7b3 ; $b7b3
        jmp $805b ; KirbyFinalize

    L_15B29B:
        MOV         $05E1,#$06                  ; 15B29B/11E10506
        ASMCALL     $DE4B                       ; 15B29F/D04BDE // Play sound effect
        .byte       $0D                         ; 15B2A2/0D
        ONTICK      B15_b2a8                    ; 15B2A3/08A8B215
        HALT                                    ; 15B2A7/09

    B15_b2a8:
       jsr $8112 ; GetKirbyVelXAbs
       jsr $9899 ; $9899
       lda #$00
       jsr $8597 ; $8597
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $8b4e ; MAYBE_KirbyGroundCollision
       bcc B15_b2c3
       ldx #$bc
       jmp $8ce8 ; DoStateTransition
    B15_b2c3:
       jsr $8ade ; IsPressingAB
       bcc B15_b2cd
       ldx #$c3
       jmp $8ce8 ; DoStateTransition
    B15_b2cd:
       jsr $8980 ; $8980
       bcc B15_b2d7
       ldx #$c1
       jmp $8ce8 ; DoStateTransition
    B15_b2d7:
       jsr $8a36 ; IsNotHoldingDown
       bcc B15_b2e1
       ldx #$b3
       jmp $8ce8 ; DoStateTransition
    B15_b2e1:
       jsr $b2ea ; $b2ea
       jsr $b7b3 ; $b7b3
       jmp $805b ; KirbyFinalize
    B15_b2ea:
       jsr $8ffb ; SlopeStateToIndex
       asl a
       adc #$3a
       jmp $8fe6 ; SetPoseWithFacing

    L_15B2F3:
        MOV         $05E1,#$07                  ; 15B2F3/11E10507
        ASMCALL     $DE4B                       ; 15B2F7/D04BDE // Play sound effect
        .byte       $38                         ; 15B2FA/38
        ONTICK      B15_b311                    ; 15B2FB/0811B315
        ASMCALL     $9952                       ; 15B2FF/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15B302/00
        .byte       $00                         ; 15B303/00
        .byte       $01                         ; 15B304/01
        .byte       $00                         ; 15B305/00
        ASMCALL     $8710                       ; 15B306/D01087 // Set Kirby's X velocity
        .word       $02B3                       ; 15B309/B302
        ASMCALL     $8FDC, WAIT #2              ; 15B30B/D2DC8F // Set pose (respect facing)
        .byte       $44                         ; 15B30E/44
    L_15B30F:
        INC2POSE                                ; 15B30F/90
        HALT                                    ; 15B310/09

    B15_b311:
       jsr $8112 ; GetKirbyVelXAbs
       jsr $9899 ; $9899
       lda #$00
       jsr $8597 ; $8597
       jsr $95cd ; SetKirbyPosition
       jsr $b346 ; $b346
       jsr $9420 ; Kirby_DamageEnemyCollision
       jsr $8bfa ; $8bfa
       bcc B15_b32f
       ldx #$b4
       jmp $8ce8 ; DoStateTransition
    B15_b32f:
       jsr $8b4e ; MAYBE_KirbyGroundCollision
       bcc B15_b339
       ldx #$bc
       jmp $8ce8 ; DoStateTransition
    B15_b339:
       jsr $8a23 ; IsDoneSliding
       bcc B15_b343
       ldx #$b4
       jmp $8ce8 ; DoStateTransition
    B15_b343:
       jmp $805b ; KirbyFinalize
    
    B15_b346:
       jsr $b7be ; $b7be
       ldx #$02
       jmp $9c72 ; GetKirbyHitbox

    L_15B34E:
        MOV         $05E1,#$08                  ; 15B34E/11E10508
        ONTICK      B15_b362                    ; 15B352/0862B315
        ASMCALL     $86FB                       ; 15B356/D0FB86 // Zero Kirby's X velocity
        MOV         VAR2,#$0A                   ; 15B359/0D020A
        MOV         VAR3,#$03                   ; 15B35C/0D0303
        SETPOSE     #$71                        ; 15B35F/5071
        HALT                                    ; 15B361/09
    
    B15_b362:
        lda temp_pad1_hold
        and #$08
        beq B15_b3a7
        ldx OBJ_store_x_lo+1
        lda OBJ_store_x_hi+1
        sta temp_x_hi
        lda OBJ_store_y_lo+1
        clc
        adc #$f9
        tay
        lda OBJ_store_y_hi+1
        adc #$ff
        sta temp_y_hi
        jsr $ed9c ; GetTileFlagsAND1F
        cmp #$02
        beq B15_b3b3
        dec OBJ_var2+1
        bpl B15_b39d
        dec OBJ_var3+1
        bpl B15_b394
        lda #$03
        sta OBJ_var3+1
    B15_b394:
        ldx OBJ_var3+1
        lda B15_b40d,x
        sta OBJ_var2+1
    B15_b39d:
        ldx OBJ_var3+1
        ldy B15_b411,x
        ldx #$00
        beq B15_b3b7
    B15_b3a7:
        lda temp_pad1_hold
        and #$04
        beq B15_b3b3
        ldy #$71
        ldx #$01
        bne B15_b3b7
    B15_b3b3:
        ldx #$02
        bne B15_b3ba
    B15_b3b7:
        sty OBJ_pose+1
    B15_b3ba:
        txa
        pha
        lda B15_b415,x
        sta kirby_vel_y+0
        lda B15_b418,x
        sta kirby_vel_y+1
        jsr $95cd ; SetKirbyPosition
        pla
        cmp #$02
        bcs B15_b401
        tax
        lda OBJ_store_y_lo+1
        clc
        adc B15_b41b,x
        tay
        lda OBJ_store_y_hi+1
        adc B15_b41d,x
        sta temp_y_hi
        ldx OBJ_store_x_lo+1
        lda OBJ_store_x_hi+1
        sta temp_x_hi
        jsr $ed9c ; GetTileFlagsAND1F
        cmp #$01
        beq B15_b401
    B15_b3f0:
        lda #$15
        sta script_bank
        lda #$14
        ldy #$ac
        ldx #$01
        jsr $cca7 ; OBJ_TryReplaceScriptPc
        jmp $805b ; KirbyFinalize
    B15_b401:
        lda temp_pad1_hold
        and #$03
        bne B15_b3f0
        jsr $b7b3 ; $b7b3
        jmp $805b ; KirbyFinalize

    B15_b40d:
        .byte $04,$0A,$04,$0A
    B15_b411:
        .byte $70,$6F,$70,$6E
    B15_b415:
        .byte $CD,$33,$00
    B15_b418:
        .byte $FE,$01,$00
    B15_b41b:
        .byte $06,$07
    B15_b41d:
        .byte $00,$00

    L_15B41F:
        MOV         $05E1,#$0C                  ; 15B41F/11E1050C
        ONTICK      B15_b436                    ; 15B423/0836B415
        ASMCALL     $DE4B                       ; 15B427/D04BDE // Play sound effect
        .byte       $46                         ; 15B42A/46
        ASMCALL     $8FDC, WAIT #2              ; 15B42B/D2DC8F // Set pose (respect facing)
        .byte       $48                         ; 15B42E/48
    L_15B42F:
        INC2POSE    WAIT #6                     ; 15B42F/96
    L_15B430:
        INC2POSE    WAIT #2                     ; 15B430/92
    L_15B431:
        INC2POSE    WAIT #2                     ; 15B431/92
    L_15B432:
        INC2POSE    WAIT #3                     ; 15B432/93
    L_15B433:
        A_JMP       L_15AC14                    ; 15B433/1714AC

    B15_b436:
       jsr $8049 ; KirbyPhysics
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_b443
       ldx #$cb
       jmp $8ce8 ; DoStateTransition
    B15_b443:
       jsr $89e6 ; HasJustLeftWater
       bcc B15_b44d
       ldx #$cf
       jmp $8ce8 ; DoStateTransition
    B15_b44d:
       jsr $b456 ; $b456
       jsr $9420 ; Kirby_DamageEnemyCollision
       jmp $805b ; KirbyFinalize
    B15_b456:
       jsr $b7be ; $b7be
       ldx #$06
       jmp $9c72 ; GetKirbyHitbox

    L_15B45E:
        ASMCALL     $DE4B                       ; 15B45E/D04BDE // Play sound effect
        .byte       $30                         ; 15B461/30
        ONTICK      B15_b46e                    ; 15B462/086EB415
        SETPOSE     #$62, WAIT #6               ; 15B466/5662
    L_15B468:
        INC2POSE    WAIT #6                     ; 15B468/96
    L_15B469:
        INC2POSE    WAIT #6                     ; 15B469/96
    L_15B46A:
        INC2POSE    WAIT #6                     ; 15B46A/96
    L_15B46B:
        A_JMP       L_15B4EE                    ; 15B46B/17EEB4

    B15_b46e:
       jsr $88b0 ; $88b0
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $8758 ; $8758
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $904a ; TODO_OtherKirbyMapCollision
       jsr $9016 ; MAYBE_KirbyCeilingFloorCollision
       jsr $8a15 ; WillEnterDoor
       bcc B15_b493
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_b493:
       jsr $b7b3 ; $b7b3
       jmp $805b ; KirbyFinalize

    L_15B499:
        MOV         $05E1,#$0D                  ; 15B499/11E1050D
        ONTICK      B15_b4ad                    ; 15B49D/08ADB415
    L_15B4A1:
        SETPOSE     #$6A, WAIT #4               ; 15B4A1/546A
    L_15B4A3:
        INC2POSE    WAIT #4                     ; 15B4A3/94
    L_15B4A4:
        ASMCALL     $9D72                       ; 15B4A4/D0729D // Is holding Up outside water
        JNE         L_15B4A1                    ; 15B4A7/0BA1B4
        A_JMP       L_15B4EE                    ; 15B4AA/17EEB4

    B15_b4ad:
       ldy #$08
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $8758 ; $8758
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $9016 ; MAYBE_KirbyCeilingFloorCollision
       jsr $904a ; TODO_OtherKirbyMapCollision
       jsr $8af2 ; HasJustPressedB
       bcc B15_b4d4
       ldx #$ca
       jmp $8ce8 ; DoStateTransition
    B15_b4d4:
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_b4de
       ldx #$c8
       jmp $8ce8 ; DoStateTransition
    B15_b4de:
       jsr $8a15 ; WillEnterDoor
       bcc B15_b4e8
       ldx #$00
       jmp $8ce8 ; DoStateTransition
    B15_b4e8:
       jsr $b7b3 ; $b7b3
       jmp $805b ; KirbyFinalize

    L_15B4EE:
        MOV         $05E1,#$0D                  ; 15B4EE/11E1050D
        ONTICK      B15_b500                    ; 15B4F2/0800B515
    L_15B4F6:
        SETPOSE     #$6A                        ; 15B4F6/506A
        WAIT        #20                         ; 15B4F8/0614
    L_15B4FA:
        INC2POSE                                ; 15B4FA/90
        WAIT        #20                         ; 15B4FB/0614
    L_15B4FD:
        A_JMP       L_15B4F6                    ; 15B4FD/17F6B4

    B15_b500:
        ldy #$01
        jsr $87ba ; MAYBE_KirbyGravity
        jsr $9c5a ; SetKirbyDirection
        jsr $8fcc ; SetKirbyPoseDirection
        jsr $8112 ; GetKirbyVelXAbs
        jsr $8758 ; $8758
        jsr $95cd ; SetKirbyPosition
        jsr $9021 ; MAYBE_KirbyWallCollision
        jsr $9016 ; MAYBE_KirbyCeilingFloorCollision
        jsr $904a ; TODO_OtherKirbyMapCollision
        jsr $894d ; IsHoldingUpOrA
        bcc B15_b527
        ldx #$c7
        jmp $8ce8 ; DoStateTransition
    B15_b527:
        jsr $8af2 ; HasJustPressedB
        bcc B15_b531
        ldx #$ca
        jmp $8ce8 ; DoStateTransition
    B15_b531:
        jsr $89d9 ; HasJustEnteredWater
        bcc B15_b53b
        ldx #$c8
        jmp $8ce8 ; DoStateTransition
    B15_b53b:
        jsr $8a15 ; WillEnterDoor
        bcc B15_b545
        ldx #$00
        jmp $8ce8 ; DoStateTransition
    B15_b545:
        jsr $b7b3 ; $b7b3
        jmp $805b ; KirbyFinalize

    KirbyStateC8:
        MOV         $05E1,#$0D                  ; 15B54B/11E1050D
        ASMCALL     $988D                       ; 15B54F/D08D98 // Set Kirby's underwater flag
        ONTICK      B15_b55f                    ; 15B552/085FB515
        SETPOSE     #$6C                        ; 15B556/506C
        HALT                                    ; 15B558/09

    KirbyStateC9:
        ASMCALL     $9893                       ; 15B559/D09398 // Clear Kirby's underwater flag
        A_JMP       L_15B4EE                    ; 15B55C/17EEB4

    B15_b55f:
        ldy #$0c
        jsr $87ba ; MAYBE_KirbyGravity
        jsr $9c5a ; SetKirbyDirection
        jsr $8fcc ; SetKirbyPoseDirection
        jsr $8112 ; GetKirbyVelXAbs
        jsr $8758 ; $8758
        jsr $95cd ; SetKirbyPosition
        jsr $9021 ; MAYBE_KirbyWallCollision
        jsr $9016 ; MAYBE_KirbyCeilingFloorCollision
        jsr $904a ; TODO_OtherKirbyMapCollision
        jsr $8af2 ; HasJustPressedB
        bcc B15_b586
        ldx #$ca
        jmp $8ce8 ; DoStateTransition
    B15_b586:
        jsr $89e6 ; HasJustLeftWater
        bcc B15_b590
        ldx #$c9
        jmp $8ce8 ; DoStateTransition
    B15_b590:
        jsr $8a15 ; WillEnterDoor
        bcc B15_b59a
        ldx #$00
        jmp $8ce8 ; DoStateTransition
    B15_b59a:
        jsr $b7b3 ; $b7b3
        jmp $805b ; KirbyFinalize

    L_15B5A0:
        MOV         $05E1,#$0A                  ; 15B5A0/11E1050A
        ONTICK      B15_b5c3                    ; 15B5A4/08C3B515
        ASMCALL     $99EA                       ; 15B5A8/D0EA99 // Create kirby projectile (slots 6 through 8) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $08                         ; 15B5AB/08
        .byte       $00                         ; 15B5AC/00
        .byte       $05                         ; 15B5AD/05
        .byte       $00                         ; 15B5AE/00
        ASMCALL     $DE4B                       ; 15B5AF/D04BDE // Play sound effect
        .byte       $1A                         ; 15B5B2/1A
        ASMCALL     $8FDC, WAIT #12             ; 15B5B3/DCDC8F // Set pose (respect facing)
        .byte       $68                         ; 15B5B6/68
    L_15B5B7:
        DEC2POSE    WAIT #4                     ; 15B5B7/A4
    L_15B5B8:
        DEC2POSE    WAIT #4                     ; 15B5B8/A4
    L_15B5B9:
        DEC2POSE    WAIT #4                     ; 15B5B9/A4
    L_15B5BA:
        ASMCALL     $9D72                       ; 15B5BA/D0729D // Is holding Up outside water
        JNE         L_15B45E                    ; 15B5BD/0B5EB4
        A_JMP       L_15AC14                    ; 15B5C0/1714AC

    B15_b5c3:
       ldy #$01
       jsr $87ba ; MAYBE_KirbyGravity
       jsr $9c5a ; SetKirbyDirection
       jsr $8fcc ; SetKirbyPoseDirection
       jsr $8112 ; GetKirbyVelXAbs
       jsr $8758 ; $8758
       jsr $95cd ; SetKirbyPosition
       jsr $9021 ; MAYBE_KirbyWallCollision
       jsr $9016 ; MAYBE_KirbyCeilingFloorCollision
       jsr $904a ; TODO_OtherKirbyMapCollision
       jsr $89d9 ; HasJustEnteredWater
       bcc B15_b5ea
       ldx #$cb
       jmp $8ce8 ; DoStateTransition
    B15_b5ea:
       jsr $b7b3 ; $b7b3
       jmp $805b ; KirbyFinalize

    KirbyStateCB:
        ASMCALL     $9883                       ; 15B5F0/D08398 // Set swimming flag??
        ASMCALL     $9952                       ; 15B5F3/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15B5F6/00
        .byte       $F8                         ; 15B5F7/F8
        .byte       $04                         ; 15B5F8/04
        .byte       $00                         ; 15B5F9/00
        A_JMP       L_15AC14                    ; 15B5FA/1714AC

    KirbyStateCC:
        MOV         $05E1,#$00                  ; 15B5FD/11E10500
        MOV         $05E4,#$FF                  ; 15B601/11E405FF
        ONTICK      B15_b60d                    ; 15B605/080DB615
        ASMCALL     $ACB9                       ; 15B609/D0B9AC // Set Kirby's idle pose (parasol)
        HALT                                    ; 15B60C/09

    B15_b60d:
        jsr $9c5a ; SetKirbyDirection
        jsr $8fcc ; SetKirbyPoseDirection
        jsr $95cd ; SetKirbyPosition
        jsr $9021 ; MAYBE_KirbyWallCollision
        jsr $8b4e ; MAYBE_KirbyGroundCollision
        bcc B15_b623
        ldx #$ce
        jmp $8ce8 ; DoStateTransition
    B15_b623:
        jsr $8af2 ; HasJustPressedB
        bcc B15_b62d
        ldx #$c5
        jmp $8ce8 ; DoStateTransition
    B15_b62d:
        jsr $89f7 ; $89f7
        bcc B15_b637
        ldx #$ce
        jmp $8ce8 ; DoStateTransition
    B15_b637:
        jsr $8b1a ; KirbyCheckDPadHorizontal
        bcc B15_b641
        ldx #$cd
        jmp $8ce8 ; DoStateTransition
    B15_b641:
        jsr $8a15 ; WillEnterDoor
        bcc B15_b64b
        ldx #$00
        jmp $8ce8 ; DoStateTransition
    B15_b64b:
        jsr $8957 ; TryDiscardCopyAbility
        bcc B15_b655
        ldx #$01
        jmp $8ce8 ; DoStateTransition
    B15_b655:
        jsr $b7b3 ; $b7b3
        jmp $805b ; KirbyFinalize

    KirbyStateCD:
        MOV         $05E1,#$01                  ; 15B65B/11E10501
        MOV         $05E4,#$FF                  ; 15B65F/11E405FF
        ONTICK      B15_b69b                    ; 15B663/089BB615
        ASMCALL     $9B96                       ; 15B667/D0969B
        TABLEJMP    #10                         ; 15B66A/0F0A
        .word       L_15B680                    ; 15B66C/80B6
        .word       L_15B680                    ; 15B66E/80B6
        .word       L_15B680                    ; 15B670/80B6
        .word       L_15B68B                    ; 15B672/8BB6
        .word       L_15B696                    ; 15B674/96B6
        .word       L_15B680                    ; 15B676/80B6
        .word       L_15B680                    ; 15B678/80B6
        .word       L_15B680                    ; 15B67A/80B6
        .word       L_15B68B                    ; 15B67C/8BB6
        .word       L_15B696                    ; 15B67E/96B6
    L_15B680:
        ASMCALL     $8FDC, WAIT #10             ; 15B680/DADC8F // Set pose (respect facing)
        .byte       $1E                         ; 15B683/1E
    L_15B684:
        INC2POSE    WAIT #8                     ; 15B684/98
        INC2POSE    WAIT #10                    ; 15B685/9A
        DEC2POSE    WAIT #8                     ; 15B686/A8
        DEC2POSE    WAIT #10                    ; 15B687/AA
        A_JMP       L_15B684                    ; 15B688/1784B6

    L_15B68B:
        ASMCALL     $8FDC, WAIT #6              ; 15B68B/D6DC8F // Set pose (respect facing)
        .byte       $24                         ; 15B68E/24
    L_15B68F:
        INC2POSE    WAIT #6                     ; 15B68F/96
        INC2POSE    WAIT #6                     ; 15B690/96
        DEC2POSE    WAIT #6                     ; 15B691/A6
        DEC2POSE    WAIT #6                     ; 15B692/A6
        A_JMP       L_15B68F                    ; 15B693/178FB6

    L_15B696:
        ASMCALL     $8FDC                       ; 15B696/D0DC8F // Set pose (respect facing)
        .byte       $2A                         ; 15B699/2A
        HALT                                    ; 15B69A/09
    
    B15_b69b:
        jsr $8112 ; GetKirbyVelXAbs
        jsr $98c3 ; GetDirectionInX
        jsr $9899 ; $9899
        tya
        clc
        adc #$0e
        tay
        lda temp_pad1_hold
        and BANKSELECT,x ; another one of these, whats with that
        jsr $8597 ; $8597
        jsr $95cd ; SetKirbyPosition
        jsr $8bfa ; $8bfa
        bcc B15_b6be
        ldx #$cc
        jmp $8ce8 ; DoStateTransition
    B15_b6be:
        jsr $8b4e ; MAYBE_KirbyGroundCollision
        bcc B15_b6c8
        ldx #$ce
        jmp $8ce8 ; DoStateTransition
    B15_b6c8:
        jsr $8a6c ; IsKirbyVelXZero
        bcc B15_b6d2
        ldx #$cc
        jmp $8ce8 ; DoStateTransition
    B15_b6d2:
        jsr $8af2 ; HasJustPressedB
        bcc B15_b6dc
        ldx #$c5
        jmp $8ce8 ; DoStateTransition
    B15_b6dc:
        jsr $89f7 ; $89f7
        bcc B15_b6e6
        ldx #$ce
        jmp $8ce8 ; DoStateTransition
    B15_b6e6:
        jsr $8a15 ; WillEnterDoor
        bcc B15_b6f0
        ldx #$00
        jmp $8ce8 ; DoStateTransition
    B15_b6f0:
        jsr $8a5d ; HasSlopeStateChanged
        bcc B15_b6fa
        ldx #$cd
        jmp $8ce8 ; DoStateTransition
    B15_b6fa:
        jsr $89e6 ; HasJustLeftWater
        bcc B15_b704
        ldx #$cf
        jmp $8ce8 ; DoStateTransition
    B15_b704:
        jsr $8957 ; TryDiscardCopyAbility
        bcc B15_b70e
        ldx #$01
        jmp $8ce8 ; DoStateTransition
    B15_b70e:
        jsr $b7b3 ; $b7b3
        jmp $805b ; KirbyFinalize

    KirbyStateCE:
        MOV         $05E1,#$05                  ; 15B714/11E10505
        MOV         $05E4,#$FF                  ; 15B718/11E405FF
        ONTICK      B15_b74c                    ; 15B71C/084CB715
        MOV         REG,$05F5                   ; 15B720/1CF505
        TABLEJMP    #5                          ; 15B723/0F05
        .word       L_15B72F                    ; 15B725/2FB7
        .word       L_15B732                    ; 15B727/32B7
        .word       L_15B740                    ; 15B729/40B7
        .word       L_15B73D                    ; 15B72B/3DB7
        .word       L_15B740                    ; 15B72D/40B7
    L_15B72F:
        SETPOSE     #$30                        ; 15B72F/5030
        HALT                                    ; 15B731/09

    L_15B732:
        ASMCALL     $DE4B                       ; 15B732/D04BDE // Play sound effect
        .byte       $48                         ; 15B735/48
        SETPOSE     #$5A, WAIT #10              ; 15B736/5A5A
        INC2POSE    WAIT #6                     ; 15B738/96
        INC2POSE    WAIT #10                    ; 15B739/9A
        A_JMP       L_15B732                    ; 15B73A/1732B7

    L_15B73D:
        SETPOSE     #$60                        ; 15B73D/5060
        HALT                                    ; 15B73F/09

    L_15B740:
        ASMCALL     $DE4B                       ; 15B740/D04BDE // Play sound effect
        .byte       $48                         ; 15B743/48
        SETPOSE     #$52, WAIT #10              ; 15B744/5A52
        INC2POSE    WAIT #10                    ; 15B746/9A
        INC2POSE    WAIT #10                    ; 15B747/9A
        INC2POSE    WAIT #10                    ; 15B748/9A
        A_JMP       L_15B740                    ; 15B749/1740B7
    
    B15_b74c:
        jsr $8883 ; $8883
        jsr $9c5a ; SetKirbyDirection
        jsr $8fcc ; SetKirbyPoseDirection
        jsr $8112 ; GetKirbyVelXAbs
        jsr $874b ; $874b
        jsr $95cd ; SetKirbyPosition
        jsr $9021 ; MAYBE_KirbyWallCollision
        jsr $8bab ; $8bab
        bcc B15_b76b
        ldx #$b3
        jmp $8ce8 ; DoStateTransition
    B15_b76b:
        jsr $904a ; TODO_OtherKirbyMapCollision
        jsr $8af2 ; HasJustPressedB
        bcc B15_b778
        ldx #$c5
        jmp $8ce8 ; DoStateTransition
    B15_b778:
        jsr $8a06 ; $8a06
        bcc B15_b782
        ldx #$ce
        jmp $8ce8 ; DoStateTransition
    B15_b782:
        jsr $89e6 ; HasJustLeftWater
        bcc B15_b78c
        ldx #$cf
        jmp $8ce8 ; DoStateTransition
    B15_b78c:
        jsr $8a15 ; WillEnterDoor
        bcc B15_b796
        ldx #$00
        jmp $8ce8 ; DoStateTransition
    B15_b796:
        jsr $8957 ; TryDiscardCopyAbility
        bcc B15_b7a0
        ldx #$01
        jmp $8ce8 ; DoStateTransition
    B15_b7a0:
        jsr $b7b3 ; $b7b3
        jmp $805b ; KirbyFinalize

    KirbyStateCF:
        ASMCALL     $9893                       ; 15B7A6/D09398 // Clear Kirby's underwater flag
        ASMCALL     $9952                       ; 15B7A9/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15B7AC/00
        .byte       $F8                         ; 15B7AD/F8
        .byte       $05                         ; 15B7AE/05
        .byte       $00                         ; 15B7AF/00
        A_JMP       L_15AF12                    ; 15B7B0/1712AF

    B15_b7b3:
        jsr $b7be ; $b7be
        beq B15_b7bd
        ldx #$02
        jmp $9c72 ; GetKirbyHitbox
    B15_b7bd:
        rts
    
    B15_b7be:
        ldx OBJ_pose+1
        lda .loword(B15_B7C8),x
        ldy .loword(B15_B83A),x
        rts
    
    B15_B7C8 := $15B7C8
    B15_B83A := $15B83A
    ; CODE OR DATA -- $15B7C8 .. $15BA9D
    ; Probably data
    incbinRange "../split/prg/bank15.bin", $17C8, $1A9D

    L_15BA9D:
        ONDRAW      $DDAA                       ; 15BA9D/20AADD
        ASMCALL     $BC5E                       ; 15BAA0/D05EBC
        JEQ         L_15BB0D                    ; 15BAA3/0A0DBB
        ASMCALL     $BC4C                       ; 15BAA6/D04CBC // Remove UFO ability
        ONTICK      B15_bf0e                     ; 15BAA9/080EBF15
        SPRITEMAP   $1C9F16                     ; 15BAAD/1A169F1C
        ASMCALL     $DE4B                       ; 15BAB1/D04BDE // Play sound effect
        .byte       $43                         ; 15BAB4/43
        MOV         $6620,#$01                  ; 15BAB5/11206601
        WAIT        #2                          ; 15BAB9/0602
    L_15BABB:
        MOV         $6620,#$02                  ; 15BABB/11206602
        WAIT        #2                          ; 15BABF/0602
    L_15BAC1:
        MOV         $6620,#$03                  ; 15BAC1/11206603
        SETPOSE     #$06, WAIT #6               ; 15BAC5/5606
    L_15BAC7:
        INCPOSE     WAIT #4                     ; 15BAC7/74
    L_15BAC8:
        ASMCALL     $BC92                       ; 15BAC8/D092BC // Add bonus minigame score and lives. Return 1 if there are still extra lives to add
        JEQ         L_15BAD7                    ; 15BACB/0AD7BA
        ASMCALL     $DE4B                       ; 15BACE/D04BDE // Play sound effect
        .byte       $21                         ; 15BAD1/21
        WAIT        #20                         ; 15BAD2/0614
    L_15BAD4:
        A_JMP       L_15BAC8                    ; 15BAD4/17C8BA

    L_15BAD7:
        MOV         REG,$78D5                   ; 15BAD7/1CD578
        JNE         L_15BB14                    ; 15BADA/0B14BB
        ASMCALL     $8710                       ; 15BADD/D01087 // Set Kirby's X velocity
        .word       $0080                       ; 15BAE0/8000
        INCPOSE     WAIT #4                     ; 15BAE2/74
    L_15BAE3:
        MOV         $6620,#$02                  ; 15BAE3/11206602
        INCPOSE     WAIT #2                     ; 15BAE7/72
    L_15BAE8:
        MOV         $6620,#$01                  ; 15BAE8/11206601
        WAIT        #2                          ; 15BAEC/0602
    L_15BAEE:
        MOV         $6620,#$00                  ; 15BAEE/11206600
        ASMCALL     $DE4B                       ; 15BAF2/D04BDE // Play sound effect
        .byte       $57                         ; 15BAF5/57
        INCPOSE     WAIT #4                     ; 15BAF6/74
    L_15BAF7:
        INCPOSE     WAIT #4                     ; 15BAF7/74
    L_15BAF8:
        INCPOSE     WAIT #4                     ; 15BAF8/74
    L_15BAF9:
        ASMCALL     $86FB                       ; 15BAF9/D0FB86 // Zero Kirby's X velocity
        ASMCALL     $BCB1                       ; 15BAFC/D0B1BC
        JEQ         L_15BB0D                    ; 15BAFF/0A0DBB
        ASMCALL     $9952                       ; 15BB02/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $F4                         ; 15BB05/F4
        .byte       $00                         ; 15BB06/00
        .byte       $03                         ; 15BB07/03
        .byte       $00                         ; 15BB08/00
        ASMCALL     $DE4B                       ; 15BB09/D04BDE // Play sound effect
        .byte       $1C                         ; 15BB0C/1C
    L_15BB0D:
        ONDRAW      $DDA3                       ; 15BB0D/20A3DD
        JML         L_14A077                    ; 15BB10/0377A014

    L_15BB14:
        SPRITEMAP   $1C9F16                     ; 15BB14/1A169F1C
        WAIT        #10                         ; 15BB18/060A
    L_15BB1A:
        SPRITEMAP   $1B9F22                     ; 15BB1A/1A229F1B
        ASMCALL     $8710                       ; 15BB1E/D01087 // Set Kirby's X velocity
        .word       $0140                       ; 15BB21/4001
        SETPOSE     #$00, WAIT #6               ; 15BB23/5600
    L_15BB25:
        ASMCALL     $86FB                       ; 15BB25/D0FB86 // Zero Kirby's X velocity
        ASMCALL     $885C                       ; 15BB28/D05C88 // Set Kirby's Y velocity
        .word       $FC00                       ; 15BB2B/00FC
        INCPOSE     WAIT #4                     ; 15BB2D/74
    L_15BB2E:
        ASMCALL     $885C, WAIT #4              ; 15BB2E/D45C88 // Set Kirby's Y velocity
        .word       $FE00                       ; 15BB31/00FE
    L_15BB33:
        MOV         $6620,#$02                  ; 15BB33/11206602
        ASMCALL     $885C, WAIT #2              ; 15BB37/D25C88 // Set Kirby's Y velocity
        .word       $FF00                       ; 15BB3A/00FF
    L_15BB3C:
        MOV         $6620,#$01                  ; 15BB3C/11206601
        WAIT        #2                          ; 15BB40/0602
    L_15BB42:
        MOV         $6620,#$00                  ; 15BB42/11206600
        ASMCALL     $DE4B                       ; 15BB46/D04BDE // Play sound effect
        .byte       $57                         ; 15BB49/57
        ASMCALL     $885C                       ; 15BB4A/D05C88 // Set Kirby's Y velocity
        .word       $0100                       ; 15BB4D/0001
        INCPOSE     WAIT #4                     ; 15BB4F/74
    L_15BB50:
        ASMCALL     $885C, WAIT #4              ; 15BB50/D45C88 // Set Kirby's Y velocity
        .word       $0200                       ; 15BB53/0002
    L_15BB55:
        ASMCALL     $885C, WAIT #4              ; 15BB55/D45C88 // Set Kirby's Y velocity
        .word       $0400                       ; 15BB58/0004
    L_15BB5A:
        ASMCALL     $884D                       ; 15BB5A/D04D88 // Zero Kirby's Y velocity
        ASMCALL     $DE4B                       ; 15BB5D/D04BDE // Play sound effect
        .byte       $54                         ; 15BB60/54
        ASMCALL     $9952                       ; 15BB61/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $00                         ; 15BB64/00
        .byte       $00                         ; 15BB65/00
        .byte       $1A                         ; 15BB66/1A
        .byte       $00                         ; 15BB67/00
        LOOP        #2                          ; 15BB68/0102
            SETPOSE     #$02                        ; 15BB6A/5002
            A_JSR       L_15BBF7                    ; 15BB6C/18F7BB
            INCPOSE                                 ; 15BB6F/70
            A_JSR       L_15BBF7                    ; 15BB70/18F7BB
            INCPOSE                                 ; 15BB73/70
            A_JSR       L_15BBF7                    ; 15BB74/18F7BB
        ENDLOOP                                 ; 15BB77/02
        ASMCALL     $86FB                       ; 15BB78/D0FB86 // Zero Kirby's X velocity
        ONTICK      $15BF06                     ; 15BB7B/0806BF15
        ONPOSITION  $D97D                       ; 15BB7F/217DD9
        ASMCALL     $BCF3                       ; 15BB82/D0F3BC
    L_15BB85:
        WAIT        #1                          ; 15BB85/0601
    L_15BB87:
        ASMCALL     $BE67                       ; 15BB87/D067BE
        JNE         L_15BB85                    ; 15BB8A/0B85BB
        ASMCALL     $BD68                       ; 15BB8D/D068BD // Store screen center coordinates to $0553 and $0555
        MOV         $0552,#$00                  ; 15BB90/11520500
    L_15BB94:
        ASMCALL     $DF7D                       ; 15BB94/D07DDF // Wait until (`arg1`) == #`arg2`
        .word       $0551                       ; 15BB97/5105
        .byte       $FF                         ; 15BB99/FF
        ASMCALL     $BEEE                       ; 15BB9A/D0EEBE
    L_15BB9D:
        WAIT        #1                          ; 15BB9D/0601
    L_15BB9F:
        ASMCALL     $BE67                       ; 15BB9F/D067BE
        JNE         L_15BB9D                    ; 15BBA2/0B9DBB
        ONTICK      B15_bf0e                     ; 15BBA5/080EBF15
        ONPOSITION  $D99C                       ; 15BBA9/219CD9
        SETPOSE     #$02, WAIT #8               ; 15BBAC/5802
    L_15BBAE:
        ASMCALL     $BC88                       ; 15BBAE/D088BC // Store current level progress in $78D2
        ASMCALL     $8710                       ; 15BBB1/D01087 // Set Kirby's X velocity
        .word       $FF00                       ; 15BBB4/00FF
        ASMCALL     $885C                       ; 15BBB6/D05C88 // Set Kirby's Y velocity
        .word       $FC00                       ; 15BBB9/00FC
        SETPOSE     #$05, WAIT #4               ; 15BBBB/5405
    L_15BBBD:
        ASMCALL     $885C                       ; 15BBBD/D05C88 // Set Kirby's Y velocity
        .word       $FE00                       ; 15BBC0/00FE
        INCPOSE     WAIT #4                     ; 15BBC2/74
    L_15BBC3:
        ASMCALL     $885C                       ; 15BBC3/D05C88 // Set Kirby's Y velocity
        .word       $FF00                       ; 15BBC6/00FF
        INCPOSE     WAIT #4                     ; 15BBC8/74
    L_15BBC9:
        ASMCALL     $885C                       ; 15BBC9/D05C88 // Set Kirby's Y velocity
        .word       $0100                       ; 15BBCC/0001
        INCPOSE     WAIT #4                     ; 15BBCE/74
    L_15BBCF:
        ASMCALL     $885C                       ; 15BBCF/D05C88 // Set Kirby's Y velocity
        .word       $0200                       ; 15BBD2/0002
        SETPOSE     #$05, WAIT #4               ; 15BBD4/5405
    L_15BBD6:
        ASMCALL     $885C                       ; 15BBD6/D05C88 // Set Kirby's Y velocity
        .word       $0400                       ; 15BBD9/0004
        SETPOSE     #$09, WAIT #4               ; 15BBDB/5409
    L_15BBDD:
        ASMCALL     $86FB                       ; 15BBDD/D0FB86 // Zero Kirby's X velocity
        ASMCALL     $884D                       ; 15BBE0/D04D88 // Zero Kirby's Y velocity
        ASMCALL     $BCB1                       ; 15BBE3/D0B1BC
        JEQ         L_15BB0D                    ; 15BBE6/0A0DBB
        ASMCALL     $9952                       ; 15BBE9/D05299 // Create or replace kirby particle (slots 3 through 5) of type `arg3`, offset by (`arg1`, `arg2`) with VAR0=0, VAR1=self.VAR1+`arg4`
        .byte       $10                         ; 15BBEC/10
        .byte       $00                         ; 15BBED/00
        .byte       $03                         ; 15BBEE/03
        .byte       $00                         ; 15BBEF/00
        ASMCALL     $DE4B                       ; 15BBF0/D04BDE // Play sound effect
        .byte       $1C                         ; 15BBF3/1C
        A_JMP       L_15BB0D                    ; 15BBF4/170DBB

    L_15BBF7:
        ASMCALL     $8710, WAIT #1              ; 15BBF7/D11087 // Set Kirby's X velocity
        .word       $0100                       ; 15BBFA/0001
    L_15BBFC:
        ASMCALL     $8710, WAIT #2              ; 15BBFC/D21087 // Set Kirby's X velocity
        .word       $FF00                       ; 15BBFF/00FF
    L_15BC01:
        ASMCALL     $8710, WAIT #1              ; 15BC01/D11087 // Set Kirby's X velocity
        .word       $0100                       ; 15BC04/0001
    L_15BC06:
        A_RTS                                   ; 15BC06/19

    L_15BC07:
        ASMCALL     $BF07                       ; 15BC07/D007BF // Call $38BD3D
        WAIT        #20                         ; 15BC0A/0614
    L_15BC0C:
        ONTICK      $15BF06                     ; 15BC0C/0806BF15
        ONPOSITION  $D97D                       ; 15BC10/217DD9
        ASMCALL     $BCEB                       ; 15BC13/D0EBBC
    L_15BC16:
        WAIT        #1                          ; 15BC16/0601
    L_15BC18:
        ASMCALL     $BE67                       ; 15BC18/D067BE
        JNE         L_15BC16                    ; 15BC1B/0B16BC
        ASMCALL     $BD68                       ; 15BC1E/D068BD // Store screen center coordinates to $0553 and $0555
        MOV         $0552,#$00                  ; 15BC21/11520500
    L_15BC25:
        ASMCALL     $DF7D                       ; 15BC25/D07DDF // Wait until (`arg1`) == #`arg2`
        .word       $0551                       ; 15BC28/5105
        .byte       $FF                         ; 15BC2A/FF
        ASMCALL     $BEEE                       ; 15BC2B/D0EEBE
    L_15BC2E:
        WAIT        #1                          ; 15BC2E/0601
    L_15BC30:
        ASMCALL     $BE67                       ; 15BC30/D067BE
        JNE         L_15BC2E                    ; 15BC33/0B2EBC
        ONTICK      B15_bf0e                     ; 15BC36/080EBF15
        ONPOSITION  $D99C                       ; 15BC3A/219CD9
        WAIT        #20                         ; 15BC3D/0614
    L_15BC3F:
        LOOP        #4                          ; 15BC3F/0104
            ASMCALL     $C996                       ; 15BC41/D096C9 // Palette fade (out?) step
            WAIT        #4                          ; 15BC44/0604
    L_15BC46:
        ENDLOOP                                 ; 15BC46/02
        MOV         $056A,#$02                  ; 15BC47/116A0502
        END                                     ; 15BC4B/00


    B15_RemoveUfoAbility:
       lda kirby_copy_ability
       cmp #$17                         ;UFO
       bne B15_bc5d
       lda #$ff
       sta kirby_copy_ability
       lda #$00
       sta kirby_05E0
    B15_bc5d:
       rts
    B15_bc5e:
       lda #$01
       sta $0552
       lda #$ff
       sta $056b
       lda OBJ_store_x_hi+1
       sta temp_x_hi
       lda OBJ_store_y_hi+1
       sta temp_y_hi
       ldx OBJ_store_x_lo+1
       ldy OBJ_store_y_lo+1
       jsr $eda2 ; $eda2
       lda $056b
       cmp #$ff
       beq B15_bc85
       lda #$01
       rts
    B15_bc85:
       lda #$00
       rts
    B15_bc88:
       ldx current_level
       lda level_progress,x
       sta $78d2
       rts
    B15_bc92:
       lda minigame_bonus_score+0
       ldx minigame_bonus_score+1
       jsr $e393 ; AddScore
       lda #$00
       sta minigame_bonus_score+0
       sta minigame_bonus_score+1
       lda minigame_bonus_lives
       beq B15_bcb0
       inc extra_lives
       dec minigame_bonus_lives
       lda #$01
    B15_bcb0:
       rts
    B15_bcb1:
       ldy #$00
       ldx current_level
       lda level_progress,x
       sta $78d2
       lda $0541,x
       ora B15_bce4,x
       and $0539,x
       cmp $78d3
       sta $78d3
       beq B15_bcce
       iny
    B15_bcce:
       lda $78d4
       and #$07
       sta $00
       lda level_boss_status,x
       sta $78d4
       and #$07
       cmp $00
       beq B15_bce2
       iny
    B15_bce2:
       tya
       rts
    
    B15_bce4:
       .byte $7F,$7F,$5E,$5A,$46,$40,$5E

    B15_bceb:
       lda current_stage
       clc
       adc #$08
       bne B15_bcf6
    B15_bcf3:
       lda current_stage
    B15_bcf6:
       sta $00
       lda camera_x+0
       sta $78fe
       lda camera_x+1
       sta $78ff
       lda camera_y+0
       sta $7900
       lda camera_y+1
       sta $7901
       lda current_level
       asl a
       asl a
       asl a
       asl a
       ora $00
       asl a
       tax
       ldy #$00
       lda B15_bd87,x
       bpl B15_bd23
       eor #$ff
       clc
       adc #$01
    B15_bd23:
       sta $00
       lda B15_bd87,x
       bpl B15_bd2f
       eor #$ff
       clc
       adc #$01
    B15_bd2f:
       cmp $00
       bcs B15_bd34
       iny
    B15_bd34:
       sty $7902
       ldy #$00
       lda B15_bd87,x
       bpl B15_bd3f
       dey
    B15_bd3f:
       asl a
       asl a
       asl a
       asl a
       clc
       adc camera_x+0
       sta $78fa
       tya
       adc camera_x+1
       sta $78fb
       ldy #$00
       lda B15_bd88,x
       bpl B15_bd57
       dey
    B15_bd57:
       asl a
       asl a
       asl a
       asl a
       clc
       adc camera_y+0
       sta $78fc
       tya
       adc camera_y+1
       sta $78fd
       rts
    B15_bd68:
       lda camera_x+0
       clc
       adc #$80
       sta $0553
       lda camera_x+1
       adc #$00
       sta $0554
       lda camera_y+0
       clc
       adc #$60
       sta $0555
       lda camera_y+1
       adc #$00
       sta $0556
       rts
    
    B15_bd87:
        .byte $02
    B15_bd88:
        .byte $00,$00,$FF,$00,$00,$00,$FB

    
    ; CODE OR DATA -- $15BD8F .. $16BE67
    ; Probably data
    incbinRange "../split/prg/bank15.bin", $1D8F, $1E67

    B15_be67:
       lda $7902
       bne B15_be77
       jsr $be88 ; $be88
       bcs B15_be7f
       jsr $bebb ; $bebb
       jmp $be7f ; $be7f
    B15_be77:
       jsr $bebb ; $bebb
       bcs B15_be7f
       jsr $be88 ; $be88
    B15_be7f:
       lda $00
       ora $01
       ora $02
       ora $03
       rts
    B15_be88:
       lda $78fa
       sec
       sbc camera_x+0
       sta $00
       lda $78fb
       sbc camera_x+1
       sta $01
       ora $00
       bne B15_be9d
       clc
       rts
    B15_be9d:
       bit $01
       bpl B15_beae
       lda camera_x+0
       sec
       sbc #$04
       sta camera_x+0
       bcs B15_beb9
       dec camera_x+1
       sec
       rts
    B15_beae:
       lda camera_x+0
       clc
       adc #$04
       sta camera_x+0
       bcc B15_beb9
       inc camera_x+1
    B15_beb9:
       sec
       rts
    B15_bebb:
       lda $78fc
       sec
       sbc camera_y+0
       sta $02
       lda $78fd
       sbc camera_y+1
       sta $03
       ora $02
       bne B15_bed0
       clc
       rts
    B15_bed0:
       bit $03
       bpl B15_bee1
       lda camera_y+0
       sec
       sbc #$04
       sta camera_y+0
       bcs B15_beec
       dec camera_y+1
       sec
       rts
    B15_bee1:
       lda camera_y+0
       clc
       adc #$04
       sta camera_y+0
       bcc B15_beec
       inc camera_y+1
    B15_beec:
       sec
       rts
    B15_beee:
       lda $78fe
       sta $78fa
       lda $78ff
       sta $78fb
       lda $7900
       sta $78fc
       lda $7901
       sta $78fd
    B15_bf06:
       rts
    B15_bf07:
       jsr $d805 ; LongCall
       .byte $38,$BD,$3D
       rts

    B15_bf0e:
       jmp $95cd ; SetKirbyPosition


    ; CODE OR DATA -- $15BF11 .. $16A000
    ; Probably data
    incbinRange "../split/prg/bank15.bin", $1F11, $2000