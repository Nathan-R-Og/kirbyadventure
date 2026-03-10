local OBJ_z_frac = 0x603E
local OBJ_z_lo = 0x6050
local OBJ_z_hi = 0x6062
local OBJ_store_x_lo = 0x6074
local OBJ_store_x_hi = 0x6086
local OBJ_store_y_lo = 0x6098
local OBJ_store_y_hi = 0x60AA
local OBJ_store_z_lo = 0x60BC 
local OBJ_store_z_hi = 0x60CE
local OBJ_vel_x_lo = 0x60E0
local OBJ_vel_x_hi = 0x60F2
local OBJ_vel_y_lo = 0x6104
local OBJ_vel_y_hi = 0x6116
local OBJ_script = 0x6128
local OBJ_next = 0x613A
local OBJ_script_slot = 0x614C
local obj_onposition_lo = 0x615E
local obj_onposition_hi = 0x6170
local obj_draw_lo = 0x6182
local obj_draw_hi = 0x6194
local obj_move_lo = 0x61A6
local obj_move_hi = 0x61B8
local OBJ_var0 = 0x61CA
local OBJ_var1 = 0x61DC
local OBJ_var2 = 0x61EE
local OBJ_var3 = 0x6200
local OBJ_var4 = 0x6212
local OBJ_var5 = 0x6224
local OBJ_var6 = 0x6236
local OBJ_var7 = 0x6248
local OBJ_vel_z_lo = 0x625A
local OBJ_vel_z_hi = 0x626C
local OBJ_tick_lo = 0x627E
local OBJ_tick_hi = 0x6290
local OBJ_tick_bank = 0x62A2
local OBJ_draw_sorting = 0x62B4
local OBJ_pose = 0x62C6
local OBJ_spritemap_lo = 0x62D8
local OBJ_spritemap_hi = 0x62EA
local OBJ_spritemap_bank = 0x62FC
local OBJ_lower_prg = 0x630E

local current_object = 0

local jp = false

function show()
	local z_frac = emu.read(OBJ_z_frac+current_object, emu.memType.nesDebug)
	local z_lo = emu.read(OBJ_z_lo+current_object, emu.memType.nesDebug)
	local z_hi = emu.read(OBJ_z_hi+current_object, emu.memType.nesDebug)
	local store_x_lo = emu.read(OBJ_store_x_lo+current_object, emu.memType.nesDebug)
	local store_x_hi = emu.read(OBJ_store_x_hi+current_object, emu.memType.nesDebug)
	local store_y_lo = emu.read(OBJ_store_y_lo+current_object, emu.memType.nesDebug)
	local store_y_hi = emu.read(OBJ_store_y_hi+current_object, emu.memType.nesDebug)
	local store_z_lo = emu.read(OBJ_store_z_lo+current_object, emu.memType.nesDebug)
	local store_z_hi = emu.read(OBJ_store_z_hi+current_object, emu.memType.nesDebug)
	local vel_x_lo = emu.read(OBJ_vel_x_lo+current_object, emu.memType.nesDebug)
	local vel_x_hi = emu.read(OBJ_vel_x_hi+current_object, emu.memType.nesDebug)
	local vel_y_lo = emu.read(OBJ_vel_y_lo+current_object, emu.memType.nesDebug)
	local vel_y_hi = emu.read(OBJ_vel_y_hi+current_object, emu.memType.nesDebug)
	local script = emu.read(OBJ_script+current_object, emu.memType.nesDebug)
	local _next = emu.read(OBJ_next+current_object, emu.memType.nesDebug)
	local script_slot = emu.read(OBJ_script_slot+current_object, emu.memType.nesDebug)
	local onposition_lo = emu.read(obj_onposition_lo+current_object, emu.memType.nesDebug)
	local onposition_hi = emu.read(obj_onposition_hi+current_object, emu.memType.nesDebug)
	local draw_lo = emu.read(obj_draw_lo+current_object, emu.memType.nesDebug)
	local draw_hi = emu.read(obj_draw_hi+current_object, emu.memType.nesDebug)
	local move_lo = emu.read(obj_move_lo+current_object, emu.memType.nesDebug)
	local move_hi = emu.read(obj_move_hi+current_object, emu.memType.nesDebug)
	local var0 = emu.read(OBJ_var0+current_object, emu.memType.nesDebug)
	local var1 = emu.read(OBJ_var1+current_object, emu.memType.nesDebug)
	local var2 = emu.read(OBJ_var2+current_object, emu.memType.nesDebug)
	local var3 = emu.read(OBJ_var3+current_object, emu.memType.nesDebug)
	local var4 = emu.read(OBJ_var4+current_object, emu.memType.nesDebug)
	local var5 = emu.read(OBJ_var5+current_object, emu.memType.nesDebug)
	local var6 = emu.read(OBJ_var6+current_object, emu.memType.nesDebug)
	local var7 = emu.read(OBJ_var7+current_object, emu.memType.nesDebug)
	local vel_z_lo = emu.read(OBJ_vel_z_lo+current_object, emu.memType.nesDebug)
	local vel_z_hi = emu.read(OBJ_vel_z_hi+current_object, emu.memType.nesDebug)
	local tick_lo = emu.read(OBJ_tick_lo+current_object, emu.memType.nesDebug)
	local tick_hi = emu.read(OBJ_tick_hi+current_object, emu.memType.nesDebug)
	local tick_bank = emu.read(OBJ_tick_bank+current_object, emu.memType.nesDebug)
	local draw_sorting = emu.read(OBJ_draw_sorting+current_object, emu.memType.nesDebug)
	local pose = emu.read(OBJ_pose+current_object, emu.memType.nesDebug)
	local spritemap_lo = emu.read(OBJ_spritemap_lo+current_object, emu.memType.nesDebug)
	local spritemap_hi = emu.read(OBJ_spritemap_hi+current_object, emu.memType.nesDebug)
	local spritemap_bank = emu.read(OBJ_spritemap_bank+current_object, emu.memType.nesDebug)
	local lower_prg = emu.read(OBJ_lower_prg+current_object, emu.memType.nesDebug)

	local text_Color = 0x80FFFFFF
	local bg_color = 0x80000000
	
	local y_i = 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x%02x - Z", z_hi, z_lo, z_frac), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x - Store X", store_x_hi, store_x_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x - Store Y", store_y_hi, store_y_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x - Store Z", store_z_hi, store_z_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x - Vel X", vel_x_hi, vel_x_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x - Vel Y", vel_y_hi, vel_y_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x - Vel Z", vel_z_hi, vel_z_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x - Script", script), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x - Next", _next), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x - Slot", script_slot), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x - On Position", onposition_hi, onposition_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x - Draw", draw_hi, draw_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x - Move", move_hi, move_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, "VARIABLES", text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x %02x %02x %02x %02x %02x %02x %02x",
    var0, var1, var2, var3, var4, var5, var6, var7), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x%02x - Tick", tick_bank, tick_hi, tick_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x - Sorting", draw_sorting), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x - Pose", pose), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x - Move", move_hi, move_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x%02x%02x - Sprite Map", spritemap_bank, spritemap_hi, spritemap_lo), text_Color, bg_color)
    y_i = y_i + 1
    emu.drawString(8, 8*y_i, string.format("%02x - Lower PRG", lower_prg), text_Color, bg_color)
    
    local left_button = "End"
    local right_button = "Page Down" 
    --Select colors based on whether the left button is held down
    if emu.isKeyPressed(left_button) and not jp then
    	current_object = current_object - 1
    	jp = true
	end
	if emu.isKeyPressed(right_button) and not jp then
    	current_object = current_object + 1
    	jp = true
	end
	
    if not emu.isKeyPressed(left_button) and not emu.isKeyPressed(right_button) and jp then
    	jp = false
	end
	
	
	current_object = current_object % 0x12
    
    emu.drawString(170, 8, string.format("Object %02x", current_object), text_Color, bg_color)
end

emu.addEventCallback(show, emu.eventType.endFrame);