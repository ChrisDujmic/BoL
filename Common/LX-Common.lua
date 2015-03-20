--[Version0.01]

function Update_Needed(name,version)
	--CommonCheck
	local Response = GetWebResult("raw.github.com", "/ChrisDujmic/BoL/master/Common/LX-Common.lua")
	print(Response)
	--local OnlineVersion = string.match(Response,"%[Version(.*)%]")
	--print(OnlineVersion)
	return true
end