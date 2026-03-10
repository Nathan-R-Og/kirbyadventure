;defines before a segment gets set up
MAX_OBJ .set 18
MAX_SCR .set 32

.segment "ZP": zeropage
UNK_0: .res 1
UNK_1: .res 1
UNK_2: .res 1
UNK_3: .res 1
UNK_4: .res 1
UNK_5: .res 1
UNK_6: .res 1
UNK_7: .res 1
UNK_8: .res 1
UNK_9: .res 1
UNK_A: .res 1
UNK_B: .res 1
UNK_C: .res 1
UNK_D: .res 1
UNK_E: .res 1
UNK_F: .res 1
tmp0: .res 2 ; $10
tmp1: .res 2 ; $12
tmp2: .res 2 ; $14
ptr0: .res 2 ; $16
ptr1: .res 2 ; $18
ptr2: .res 2 ; $1A
UNK_1C: .res 2
script_ptr: .res 2 ; $1E - $1F
script_stack: .res 2 ; $20 - $21
UNK_22: .res 5
hitbox_data_ptr_0027: .res 2 ; $27 - $28
UNK_29: .res 10
irq_code_pointer: .res 2 ; $33 - $34
ram_PPUCTRL: .res 1 ; $35
ram_PPUMASK: .res 1 ; $36

screen_on: .res 1 ; $37
;FF = screen on
;00 = screen off
;This value is ANDed with PPUMASK

ram_BANKSELECT: .res 1 ; $38
nmi_done_flag: .res 1 ; $39
pad_hold: .res 2 ; $3A - $3B
pad_press: .res 2 ; $3C - $3D
random_number: .res 2 ; $3E - $3F
vram_update_queue_begin: .res 1 ; $40
vram_update_queue_end: .res 1 ; $41
chr_banks: .res 6 ; $42 - $47 ;spr01, spr23, bg0, bg1, bg2, bg3
lower_prg: .res 1 ; $48
upper_prg: .res 1 ; $49
nametable_mirroring: .res 1 ; $4A
temp_x_hi: .res 1 ; $4B
temp_y_hi: .res 1 ; $4C
status_bar_health_chr: .res 1 ; $4D ;Health & dancing kirby
status_bar_copy_chr: .res 1 ; $4E ;Copy ability icon
status_bar_background_chr: .res 1 ; $4F ;Background of status bar
status_bar_text_chr: .res 1 ; $50
UNK_51: .res $14
file_select_irq_line: .res 1 ; $65
UNK_66: .res 1
soft_reset_timer: .res 1 ; $67
oam_index: .res 1 ; $68
UNK_69: .res 1
temp_obj_screen_x: .res 2 ; $6A - $6B
temp_obj_screen_y: .res 2 ; $6C - $6D
curr_object_slot: .res 1 ; $6E
curr_script_slot: .res 1 ; $6F
OBJ_x_frac: .res $12 ; $70
OBJ_x_lo: .res $12 ; $82
    kirby_x_lo := OBJ_x_lo+1 ; $83
OBJ_x_hi: .res $12 ; $94
    kirby_x_hi := OBJ_x_hi+1 ; $95
OBJ_y_frac: .res $12 ; $A6
OBJ_y_lo: .res $12 ; $B8
    kirby_y_lo := OBJ_y_lo+1 ; $B9
OBJ_y_hi: .res $12 ; $CA
    kirby_y_hi := OBJ_y_hi+1 ; $CB

camera_x_frac: .res 1 ; $DC
camera_x: .res 2 ; $DD - $DE
camera_y_frac: .res 1 ; $DF
camera_y: .res 2 ; $E0 - $E1
camera_vel_x: .res 2 ; $E2 - $E3
camera_vel_y: .res 2 ; $E4 - $E5
temp_pad1_hold: .res 1 ; $E6
temp_pad1_press: .res 1 ; $E7
UNK_E8: .res 2
temp_camera_y: .res 1 ; $EA
temp_camera_x: .res 2 ; $EB - $EC
UNK_ED: .res 7
extra_game_flag: .res 1 ; $F4

.segment "RAM": absolute
palette_faded: .res $20 ; $100 - $11F
UNK_120: .res $60
scroll_type: .res 1 ; $180
last_scroll_type: .res 1 ; $181
color_palette: .res $20 ; $182 - $1A1
palette_fade: .res 1 ; $1A2
ram_PPUSCROLL: .res 2 ; $1A3 - $1A4
use_dynamic_chr0_bank: .res 1 ; $1A5
oam_attribute_mask: .res 1 ; $1A6
oam_extra_attribute: .res 1 ; $1A7
UNK_1A8: .res $58
oam1: .res $100 ; $200 - $2FF
oam2: .res $100 ; $300 - $3FF
UNK_400: .res $100 ; some kind of buffer
palette_update_something: .res 1 ; $500
hitbox1_flags_0501: .res 1 ; $501
hitbox1_x: .res 2 ; $502 - $503
hitbox1_y: .res 2 ; $504 - $505
hitbox1_width: .res 1 ; $506
hitbox1_height: .res 1 ; $507
OBJ_slot_hitbox: .res 1 ; $508
kirby_hitbox_y: .res 2 ; $509 - $50A
kirby_hitbox_height: .res 1 ; $50B
kirby_050C: .res 1 ; $50C
UNK_50D: .res 1
hitbox2_width: .res 1 ; $50E
hitbox2_height: .res 1 ; $50F
hitbox2_x: .res 2 ; $510 - $511
hitbox2_y: .res 2 ; $512 - $513
collision_slot: .res 1 ; $514
UNK_515: .res 2
cold_reset_marker: .res 5 ; $517 - $51B ;ASCII for "KIRBY"
UNK_51B: .res 2
kirby_camera_051E: .res 1 ; $51E
UNK_51F: .res 2
level_progress: .res 8 ; $521 - $528
level_switch_progress: .res 8 ; $529 - $530
level_boss_status: .res 7 ; $531 - $538 ;Set msb for defeated state
UNK_539: .res $20
current_level: .res 1 ; $558
current_stage: .res 1 ; $559
room_055A: .res 2 ; $55A - $55B
UNK_55C: .res 2
current_room: .res 2 ; $55E - $55F
UNK_560: .res 2
room_0562: .res 2 ; $562 - $563
UNK_564: .res 8
kirby_056C: .res 1 ; $56C
UNK_56D: .res 2
MAYBE_camera_seam_x: .res 2 ; $56F - $570
UNK_571: .res 4
temp_obj_lower_prg: .res 1 ; $575
temp_upper_prg: .res 1 ; $576
last_camera_x_0577: .res 1 ; $577
UNK_578: .res 1
kirby_0579_unknown_x_offset: .res 2 ; $579 - $57A
last_camera_x_057B: .res 1 ; $57B
last_camera_y_057C: .res 1 ; $57C
upper_prg_057D: .res 1 ; $57D
UNK_57E: .res $12
unknown_MAYBE_score_0590: .res 3 ; $590 - $592
current_score: .res 3 ; $593 - $595
kirby_max_health: .res 1 ; $596
kirby_health: .res 1 ; $597
ability_uses: .res 1 ; $598
extra_lives: .res 1 ; $599
unknown_camera_obj_slot_059A: .res 1 ; $59A
UNK_59B: .res 7
UNK_5A2: .res 1
UNK_5A3: .res $16
kirby_vel_x: .res 2 ; $5B9 - $5BA
kirby_vel_x_abs: .res 2 ; $5BB - $5BC
kirby_vel_y: .res 2 ; $5BD - $5BE
kirby_05BF: .res 1 ; $5BF
minimum_scroll_x: .res 2 ; $5C0 - $5C1 ;Minimum horizontal scroll value
maximum_scroll_x: .res 2 ; $5C2 - $5C3 ;Maximum horizontal scroll value (level width)
minimum_scroll_y: .res 2 ; $5C4 - $5C5 ;Minimum vertical scroll
maximum_scroll_y: .res 2 ; $5C6 - $5C7 ;Maximum vertical scroll (level height)
minimum_kirby_x: .res 2 ; $5C8 - $5C9 ;Minimum accepted value for Kirby's X position
maximum_kirby_x: .res 2 ; $5CA - $5CB ;Maximum value accepted for Kirby's X position
minimum_kirby_y: .res 2 ; $5CC - $5CD ;Minimum value accepted for Kirby's Y position
UNK_5CE: .res $12
kirby_05E0: .res 1 ; $5E0
kirby_05E1: .res 1 ; $5E1
UNK_5E2: .res 1
kirby_copy_ability: .res 1 ; $5E3
kirby_05E4: .res 1 ; $5E4
inhaling_count: .res 1 ; $5E5
inhaled_count: .res 1 ; $5E6
UNK_5E7: .res 3
kirby_05EA: .res 1 ; $5EA
UNK_5EB: .res 1
UNK_5EC: .res 1
kirby_last_slope_index: .res 1 ; $5ED
kirby_05EE_code: .res 2 ; $5EE - $5EF
UNK_5F0: .res 2
kirby_05F2: .res 1 ; $5F2
kirby_05F3: .res 1 ; $5F3

kirby_slope_state: .res 1 ; $5F4
.enum SLOPE_STATES
    LEVEL = 2 ;level ground
    GENTLE_UP = 3 ;gentle up
    GENTLE_DOWN = 4 ;gentle down
    STEEP_UP = 5 ;steep up
    STEEP_DOWN = 6 ;steep down
.endenum

kirby_swim_direction: .res 1 ; $5F5
kirby_swim_up_timer: .res 1 ; $5F6
kirby_underwater_flag: .res 1 ; $5F7
kirby_05F8: .res 1 ; $5F8
kirby_yellow_flash_timer: .res 1 ; $5F9
kirby_05FA: .res 1 ; $5FA

kirby_flags: .res 1 ; $5FB
;0 = ??? (cleared when taking damage)
;1 = ???
;2 = is grounded
;3 = land head-first on enemy
;4 = ???
kirby_nodiscard = 1 << 5 ; can't discard ability
kirby_ishyper = 1 << 6 ; hyper
;7 = can't pause? (demoing ability, crash ability, etc)


UNK_5FC: .res 4
music_upper_prg: .res 1 ; $600
UNK_601: .res $26
music_ram_4000: .res 4 ; $627 - $62A
music_ram_4004: .res 4 ; $62B - $62E
music_ram_4008: .res 4 ; $62F - $632
music_ram_400C: .res 4 ; $633 - $636
UNK_637: .res $a
music_timer_0641: .res 9 ; $641 - $649
UNK_64A: .res 1
music_data_ptr_lo_064B: .res 9 ; $64B - $653
UNK_654: .res 1
music_data_ptr_hi_0655: .res 9 ; $655 - $65D
UNK_65E: .res 1
music_timer_065F: .res 9 ; $65F - $667
UNK_668: .res 1
music_data_ptr_lo_0669: .res 9 ; $669 - $671
UNK_672: .res 1
music_data_ptr_hi_0673: .res 9 ; $673 - $67B
UNK_67C: .res 1
music_timer_067D: .res 9 ; $67D - $685
UNK_686: .res $fe

OBJ_0784: .res $12 ; $784 - $795
UNK_796: .res $3c
minigame_bonus_score: .res 2 ; $7D2 - $7D3
minigame_bonus_lives: .res 1 ; $7D4
UNK_7D5: .res 5
UNK_7DA: .res 1 ;Kirby Movement (as in: a movement curve)
UNK_7DB: .res $19
is_cold_reset: .res 1 ; $7F4
UNK_7F5: .res 1 ;Kirby Cutscene (as in: the ending)

;saveram
.segment "SRAM": absolute
palette_buffer: .res $20 ; $6000 - $601F
UNK_6020: .res 1
pad_previous: .res 2 ; $6021 - $6022
;TODO: should these be arrays? find out how they are indexed :)
new_object_var0: .res 1 ; $6023
new_object_var1: .res 1 ; $6024
new_object_var2: .res 1 ; $6025
new_object_var3: .res 1 ; $6026
new_object_var4: .res 1 ; $6027
new_object_var5: .res 1 ; $6028
new_object_var6: .res 1 ; $6029
new_object_var7: .res 1 ; $602A
new_object_x_hi: .res 1 ; $602B
new_object_y_hi: .res 1 ; $602C
new_object_z_lo: .res 1 ; $602D
new_object_z_hi: .res 1 ; $602E
OBJ_min_slot: .res 1 ; $602F
OBJ_max_slot: .res 1 ; $6030
script_bank: .res 1 ; $6031
first_obj: .res 1 ; $6032
OBJ_next_free: .res 1 ; $6033 ; Next free object slot?
SCR_next_free: .res 1 ; $6034 ; Next free script slot?
OBJ_first_draw: .res 1 ; $6035
OBJ_next_slot: .res 1 ; $6036
next_script: .res 1 ; $6037
script_jmp_addr: .res 2 ; $6038 - $6039
UNK_603A: .res 3
frame_counter: .res 1 ; $603D
OBJ_z_frac: .res $12 ; $603E - $604F
OBJ_z_lo: .res $12 ; $6050 - $6061
OBJ_z_hi: .res $12 ; $6062 - $6073
OBJ_store_x_lo: .res $12 ; $6074 - $6085
OBJ_store_x_hi: .res $12 ; $6086 - $6097
OBJ_store_y_lo: .res $12 ; $6098 - $60A9
OBJ_store_y_hi: .res $12 ; $60AA - $60BB
OBJ_store_z_lo: .res $12 ; $60BC - $60CD
OBJ_store_z_hi: .res $12 ; $60CE - $60DF
OBJ_vel_x_lo: .res $12 ; $60E0 - $60F1
OBJ_vel_x_hi: .res $12 ; $60F2 - $6103
OBJ_vel_y_lo: .res $12 ; $6104 - $6115
OBJ_vel_y_hi: .res $12 ; $6116 - $6127
OBJ_script: .res $12 ; $6128 - $6139
OBJ_next: .res $12 ; $613A - $614B
OBJ_script_slot: .res $12 ; $614C - $615D
obj_onposition_lo: .res $12 ; $615E - $616F
obj_onposition_hi: .res $12 ; $6170 - $6181
obj_draw_lo: .res $12 ; $6182 - $6193
obj_draw_hi: .res $12 ; $6194 - $61A5
obj_move_lo: .res $12 ; $61A6 - $61B7
obj_move_hi: .res $12 ; $61B8 - $61C9
OBJ_var0: .res $12 ; $61CA - $61DB
OBJ_var1: .res $12 ; $61DC - $61ED
OBJ_var2: .res $12 ; $61EE - $61FF
OBJ_var3: .res $12 ; $6200 - $6211
OBJ_var4: .res $12 ; $6212 - $6223
OBJ_var5: .res $12 ; $6224 - $6235
OBJ_var6: .res $12 ; $6236 - $6247
OBJ_var7: .res $12 ; $6248 - $6259
OBJ_vel_z_lo: .res $12 ; $625A - $626B
OBJ_vel_z_hi: .res $12 ; $626C - $627D
OBJ_tick_lo: .res $12 ; $627E - $628F
OBJ_tick_hi: .res $12 ; $6290 - $62A1
OBJ_tick_bank: .res $12 ; $62A2 - $62B3
OBJ_draw_sorting: .res $12 ; $62B4 - $62C5
OBJ_pose: .res $12 ; $62C6 - $62D7
OBJ_spritemap_lo: .res $12 ; $62D8 - $62E9
OBJ_spritemap_hi: .res $12 ; $62EA - $62FB
OBJ_spritemap_bank: .res $12 ; $62FC - $630D
OBJ_lower_prg: .res $12 ; $630E - $631F
SCR_next: .res $20 ; $6320 - $633F
SCR_stack_pointer: .res $20 ; $6340 - $635F
SCR_sleep_timer: .res $20 ; $6360 - $637F
SCR_pc_lo: .res $20 ; $6380 - $639F
SCR_pc_hi: .res $20 ; $63A0 - $63BF
SCR_bank: .res $20 ; $63C0 - $63DF
SCR_work_register: .res $20 ; $63E0 - $63FF
UNK_6400: .res $200
ram6600: .res 1 ; $6600
UNK_6601: .res $d4
mul_10_lut: .res 8 ; $66D5 - $66DC
UNK_66DD: .res 6
unknown_score_66E3: .res 3 ; $66E3 - $66E5
unknown_kirby_health_66E5: .res 1 ; $66E6
UNK_66E7: .res 1
unknown_extra_lives_66E8: .res 1 ; $66E8
UNK_66E9: .res 2
MAYBE_copy_ability_icon: .res 1 ; $66EB
UNK_66EC: .res $81
map_width_multiply_lut: .res 1 ; $676D
UNK_676E: .res $80

map_header: ; $67EE
    map_width: .res 1
    map_height: .res 1
    map_chr_index: .res 1
    map_bg_bank: .res 1
    map_bg_palette: .res 1
    map_spr_bank: .res 1
    map_spr_palette: .res 1
    map_music: .res 1
    map_bg_delay: .res 1
    map_screen_order: .res 8

UNK_67FF: .res $c9
map_screen_0: .res $c0 ; $68C8
map_screen_1: .res $c0 ; $6988
map_screen_2: .res $c0 ; $6A48
map_screen_3: .res $c0 ; $6B08
map_screen_4: .res $c0 ; $6BC8
map_screen_5: .res $c0 ; $6C88
map_screen_6: .res $c0 ; $6D48
map_screen_7: .res $c0 ; $6E08
map_screen_8: .res $c0 ; $6EC8
map_screen_9: .res $c0 ; $6F88
map_screen_A: .res $c0 ; $7048
map_screen_B: .res $c0 ; $7108
map_screen_C: .res $c0 ; $71C8
map_screen_D: .res $c0 ; $7288
map_screen_E: .res $c0 ; $7348
map_screen_F: .res $c0 ; $7408
UNK_74C8: .res $408

wind_type: .res 1 ; $78D0
;FF = NONE
;00 = UP_0
;01 = UP_1
;02 = UP_2
;03 = RIGHT_0
;04 = RIGHT_1
;05 = RIGHT_2
;06 = DOWN_0
;07 = DOWN_1
;08 = DOWN_2
;09 = LEFT_0
;0A = LEFT_1
;0B = LEFT_2
;(number is intensity)

has_boss_door_OR_oob_tile_attribute: .res 1 ; $78D1 ;1 when this map has a boss door?
UNK_78D2: .res 4
wind_smoke_timer: .res 1 ; $78D6
wind_smoke_x: .res 8 ; $78D7 - $78DE
wind_smoke_y: .res 8 ; $78DF - $78E6
kirby_78E7: .res 1 ; $78E7
bak_script_ptr: .res 3 ; $78E8 - $78EA
bak_tick_ptr: .res 3 ; $78EB - $78ED
bak_script_sleep_timer: .res 1 ; $78EE
bak_script_work_register: .res 1 ; $78EF
bak_obj_0501: .res 1 ; $78F0
UNK_78F1: .res $10f
metatile_top_left: .res $100 ; $7A00 - $7AFF
metatile_top_right: .res $100 ; $7B00 - $7BFF
metatile_bottom_left: .res $100 ; $7C00 - $7CFF
metatile_bottom_right: .res $100 ; $7D00 - $7DFF
metatile_palette: .res $100 ; $7E00 - $7EFF
metatile_attribute: .res $100 ; $7F00 - $7FFF
