function Stack()
   return setmetatable({
      -- stack table  
      _stack = {},
      -- size of stack
      count = 0,

      -- push an element to the stack underlying array
      push = function(self, obj)
         -- increment the index
         self.count = self.count + 1
         -- set the element at the end of the array
         rawset(self._stack, self.count, obj)
      end,

      -- pop an element from the END of the stack
      popEnd = function(self)
         -- decrement the index    
         self.count = self.count - 1
         -- remove the first element
         table.remove(self._stack, 1)
      end,
   }, {
      __index = function(self, index)
      return rawget(self._stack, index)
   end,
})
end

-- Colors (ARGB, high A = low opacity)
cTextBG = 0x60000000
cTextPlain = 0x00FFFFFF

-- Cfg
textBaseX = 2
textBaseY = 0

-- Globals
msgBuffer = Stack()
mUID = 0

-- Frame callback
function printInfo()	
	-- draw messages in buffer and handle their fading, etc
	i = msgBuffer.count;
	decayRate = 3
	while i > 0 do
		v = msgBuffer[msgBuffer.count-i+1]
		colour = v.colour & 0xFFFFFF -- remove alpha channel from colour
		if v.time > (0xFF - decayRate*3) then
			colour = 0xFFFFFF -- white for first few frames, makes it clearer if it repeats
		end
		alpha = (0xFF - v.time) << 24 -- calculate alpha and shift up to correct position
		emu.drawString(textBaseX, textBaseY+(i*9), v.message, alpha | colour, alpha)
		v.time = v.time - decayRate -- decay rate
		if v.time <= 0 then -- remove from buffer
			msgBuffer:popEnd()
		end
		i = i - 1
	end
end

-- Misc
function postMessage(msg, colour)
	details = {}
	details.colour = colour
	details.time = 0xFF -- dont change, is related to alpha. if you want to change the decay rate, see above
	details.message = msg
	msgBuffer:push(details)
	mUID = mUID + 1
end	

function postStateChange()
	state = emu.getState()["cpu.x"]
	postMessage("State change: "..string.format("%02X", state), cTextPlain)
end

-- Callback
emu.addEventCallback(printInfo, emu.eventType.endFrame)
-- Kirby state change
emu.addMemoryCallback(postStateChange, emu.callbackType.exec, 0x42CEE, 0x42CEE, emu.cpuType.nes, emu.memType.nesPrgRom)

-- Startup
emu.displayMessage("OSS", "OSS display loaded")
