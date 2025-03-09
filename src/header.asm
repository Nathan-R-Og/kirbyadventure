;iNES Emulator Header File.
.segment        "HEADER":absolute

;----------------------------------------------------------------------------------------------------

;Bytes 0-3.
;      NES   EOF
.literal "NES", $1A        ;ASCII NES followed by MS-DOS end-of-file.

;----------------------------------------------------------------------------------------------------

;Byte 4.
.byte 32                       ;PRG ROM size: 1 bank * 16KB = 16KB.

;----------------------------------------------------------------------------------------------------

;Byte 5.
.byte 32                       ;CHR ROM size: 1 bank * 8KB = 8KB.

;----------------------------------------------------------------------------------------------------

;76543210
;||||||||
;|||||||+- Mirroring: 0: horizontal (vertical arrangement) (CIRAM A10 = PPU A11)
;|||||||              1: vertical (horizontal arrangement) (CIRAM A10 = PPU A10)
;||||||+-- 1: Cartridge contains battery-backed PRG RAM ($6000-7FFF) or other persistent memory
;|||||+--- 1: 512-byte trainer at $7000-$71FF (stored before PRG data)
;||||+---- 1: Ignore mirroring control or above mirroring bit; instead provide four-screen VRAM
;++++----- Lower nybble of mapper number
;
;Byte 6.
.byte $42                       ;persistent mirroring & mapper 4 (mmc3)

;----------------------------------------------------------------------------------------------------

;76543210
;||||||||
;|||||||+- VS Unisystem
;||||||+-- PlayChoice-10 (8 KB of Hint Screen data stored after CHR data)
;||||++--- If equal to 2, flags 8-15 are in NES 2.0 format
;++++----- Upper nybble of mapper number
;
;Byte 7.
.byte $00

;----------------------------------------------------------------------------------------------------

;76543210
;||||||||
;++++++++- PRG RAM size
;
;Byte 8.
.byte $00                       ;No PRG RAM.

;----------------------------------------------------------------------------------------------------

;76543210
;||||||||
;|||||||+- TV system (0: NTSC; 1: PAL)
;+++++++-- Reserved, set to zero
;
;Byte 9.
.byte $00                       ;NTSC.

;----------------------------------------------------------------------------------------------------

;76543210
;  ||  ||
;  ||  ++- TV system (0: NTSC; 2: PAL; 1/3: dual compatible)
;  |+----- PRG RAM ($6000-$7FFF) (0: present; 1: not present)
;  +------ 0: Board has no bus conflicts; 1: Board has bus conflicts
;
;Byte 10.
.byte $00                       ;NTSC, no PRG RAM, no bus conflicts.

;----------------------------------------------------------------------------------------------------

;Bytes 11-15.
.byte $00, $00, $00, $00, $00   ;Unused.