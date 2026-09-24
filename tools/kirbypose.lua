-- Kirby pose tester
-- SupremeKirb

-- Use keys to change Kirby's pose

-- key config
nextPose = "N"
prevPose = "M"


-- vars
cooldown = 0

-- constants
RAM_KIRBY_POSE = 0x62C7

function go()
	state = emu.getState()
	pose = emu.read(RAM_KIRBY_POSE, emu.memType.nesMemory)
	emu.drawString(10, 10, "Pose: "..tostring(pose))
	
	if cooldown == 0 then
		k_next = emu.isKeyPressed(nextPose) and lastKey ~= nextPose
		k_prev = emu.isKeyPressed(prevPose) and lastKey ~= prevPose
		
		if k_next then
			emu.write(RAM_KIRBY_POSE, (pose+2)%255, emu.memType.nesMemory)
			cooldown = 10
		elseif k_prev then
			emu.write(RAM_KIRBY_POSE, (pose-2)%255, emu.memType.nesMemory)
			cooldown = 10
		end
	else
		cooldown = cooldown - 1
	end
end

emu.addEventCallback(go,emu.eventType.endFrame)