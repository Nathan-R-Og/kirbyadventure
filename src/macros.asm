.macro incbinRange path, start, end
        .incbin path, start, end-start
.endmacro

; Like .lobytes and .hibytes, but for bank bytes.
; Necessary because .BANK and .bankbyte are actually distinct concepts.
; List of values must be passed in curly braces.
.macro bankTable tbl
    .repeat .tcount({tbl}), i
        .if ((i .mod 2) = 0) ; Skip every second token, because those are commas
            .define t .left(1, .right(.tcount({tbl})-i, {tbl})) ; Couldn't figure out how to get .mid to behave, so have this
            .if .const(t) ; Is a constant, do regular bankbyte
                .bankbytes t
            .else ; Else label
                .byte <.BANK (t)
            .endif
            .undefine t
        .endif
    .endrep
.endmacro

.macro STATE_TRANSITION_IF check, state
.local skip
    jsr check
    bcc skip
    ldx #state
    jmp $8ce8 ; DoStateTransition

skip:
.endmacro

.enum ObjectSlot
    CURSOR              = 0
    KIRBY               = 1
    INHALED_BLOCK       = 2
    KPARTICLE_START     = 3
    KPARTICLE_END       = 5
    KPROJECTILE_START   = 6
    KPROJECTILE_END     = 8
    ENEMY_START         = 9
    ENEMY_END           = 17
.endenum

.enum KParticleType
    BUMP_STAR           = $00 ; Bump into a wall, ground or ceiling
    SKID_SMOKE          = $01 ; Start dashing or skidding
    TYPE_02             = $02
    BLOCK_DESTROYED     = $03
    SPLASH_IN           = $04 ; Splash into water
    SPLASH_OUT          = $05 ; Splash out of water
    TYPE_06             = $06
    CRASH_KIRBY         = $07 ; TODO CRASH ability, Kirby flying around
    CRASH_EXPLOSION     = $08 ; TODO CRASH ability, explosion
    CRASH_SHAKE         = $09 ; TODO CRASH ability, screen shake
    CRASH_KIRBY_CENTER  = $0A ; TODO CRASH ability, Kirby flying towards center
    TYPE_0B             = $0B
    VIOLENT_SHAKE       = $0C ; Violent screen shake
    TYPE_0D             = $0D
    WATER_BUBBLE        = $0E
    FIREBALL            = $0F
    DEATH_STAR          = $10 ; Big stars flying around after dying (...not THAT Death Star!!)
    SMALL_DEATH_STAR    = $11 ; Ditto but the smaller ones
    TYPE_12             = $12
    HIJUMP_STAR         = $13
    TYPE_14             = $14
    VERTICAL_SHAKE      = $15 ; TODO Vertical screen shake
    TOMATO_HEAL         = $16 ; Maxim Tomato full heal
    TYPE_17             = $17
    BOSS_HURT           = $18 ; TODO Boss was hit
    TYPE_19             = $19
    TYPE_1A             = $1A
    SPARK               = $1B
    DRINK_HEAL          = $1C ; Pep Drink small heal
    ENEMY_HIT           = $1D ; TODO Enemy was hit
    SWALLOW_SPARKLES    = $1E ; Copy ability sparkles when swallowing enemy
    TORNADO_SMOKE       = $1F
.endenum

.enum KProjectileType
    STAR                = $00 ; Spit out something
    FIRE                = $01
    CUTTER              = $02
    LASER               = $03
    MIKE                = $04
    AIR_PUFF            = $05
    BEAM                = $06
    CRASH               = $07
    DOUBLE_STAR         = $08 ; Exhale double something
    THROWN_ENEMY        = $09
    ICE_CUBE            = $0A
    GRABBED_ENEMY       = $0B
    TYPE_0C             = $0C
    STAR_ROD            = $0D
.endenum

.enum KState

.endenum

.enum CopyAbility
    NONE     = $FF ; no copy ability
    FIRE     = $00
    SPARK    = $01
    CUTTER   = $02
    SWORD    = $03
    FIREBALL = $04 ; aka burning
    LASER    = $05
    MIKE     = $06
    WHEEL    = $07
    HAMMER   = $08
    PARASOL  = $09
    SLEEP    = $0A
    NEEDLE   = $0B
    ICE      = $0C
    FREEZE   = $0D
    HIJUMP   = $0E
    BEAM     = $0F
    STONE    = $10
    BALL     = $11
    TORNADO  = $12
    CRASH    = $13
    LIGHT    = $14
    BACKDROP = $15
    THROW    = $16
    UFO      = $17
    STARROD  = $18
    BYEBYE   = $19 ; for HUD graphic at end of game
.endenum
.define COPY_ABILITY_COUNT 26 ; Bye Bye is often not accounted for, so you might need to subtract 1

.enum SoundEffect
.endenum