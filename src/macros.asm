.macro incbinRange path, start, end
        .incbin path, start, end-start
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
