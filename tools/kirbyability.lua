-- Kirby ability tester
-- SupremeKirb

-- Use keys to change Kirby's ability
-- NOTE: works best if you already have an ability
-- if you want to use an ability with its own states (sword, parasol, etc)
-- then set it, drop it, and grab it again

-- key config
nextAbility = "N"
prevAbility = "B"


-- vars
cooldown = 0

-- constants
RAM_KIRBY_ABILITY = 0x05E3

function go()
	state = emu.getState()
	ability = emu.read(RAM_KIRBY_ABILITY, emu.memType.nesMemory)
	emu.drawString(10, 10, "Ability: "..tostring(ability))
	
	if cooldown == 0 then
		k_next = emu.isKeyPressed(nextAbility) and lastKey ~= nextAbility
		k_prev = emu.isKeyPressed(prevAbility) and lastKey ~= prevAbility
		
		if k_next then
			emu.write(RAM_KIRBY_ABILITY, (ability+1)%255, emu.memType.nesMemory)
			cooldown = 10
		elseif k_prev then
			emu.write(RAM_KIRBY_ABILITY, (ability-1)%255, emu.memType.nesMemory)
			cooldown = 10
		end
	else
		cooldown = cooldown - 1
	end
end

emu.addEventCallback(go,emu.eventType.endFrame)