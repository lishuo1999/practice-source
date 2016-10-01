display.setDefault("anchorX", 0)
display.setDefault("anchorY", 0)
_W = display.contentWidth
_H = display.contentHeight

local physics = require "physics"

physics.start()
physics.setDrawMode("hybrid")
physics.setGravity(0,9.8)
local img = display.newImage("Icon.png", 50, 50)
physics.addBody(img, "dynamic", nil)

local w1 = display.newRect(0, 0, _W, 20)
physics.addBody(w1, "static", nil)

local w2 = display.newRect(0, 20, 20, _H)
physics.addBody(w2, "static", nil)

local w3 = display.newRect(0, _H-20, _W, 20)
physics.addBody(w3, "static", nil)

local w4 = display.newRect(_W-20, 20, 20, _H)
physics.addBody(w4, "static", nil)

local a = display.newRect(20,20,30,30)
b = true

function asd(event) 
	if b == true then
	physics.pause()
	b=false
	elseif b == false then
	physics.start()
	b=true

end
end

a:addEventListener("touch",asd)