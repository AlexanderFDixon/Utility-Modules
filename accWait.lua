local rs = game:GetService("RunService")
local pr = rs.PreRender
return function(seconds)
	assert(type(seconds) == "number")
	local st = os.clock()
	repeat pr:Wait() until (os.clock() - st) >= seconds
end
