--[Version0.02]
local Common_Version = 0.02

function Update_Needed(name,version)
	--CommonCheck
	local Response = GetWebResult("raw.github.com", "/ChrisDujmic/BoL/master/Common/LX-Common.lua")
	local OnlineVersion = string.match(Response,"%[Version(.-)%]")
	Chat_Print("LX-Common","(v" .. tostring(Common_Version) .." -> v" .. OnlineVersion ..")")
	if (version < tonumber(OnlineVersion)) then
		Common_Link = "https://raw.githubusercontent.com/ChrisDujmic/BoL/master/Common/LX-Common.lua" .."?rand="..math.random(1,10000)
		
		function AfterDownload()
			Chat_Print("LX-Common","Updated (v" .. tostring(Common_Version) .." -> v" .. OnlineVersion ..") please Reload (double F9)")
		end
		
		DownloadFile(Common_Link, LIB_PATH .. "LX-Common.lua", AfterDownload)
		return true
	end
end

function Chat_Print(from,message)
print("<b><font color=\"#B0E57C\">" .. from .. ": </font><font color=\"#B4D8E7\">" .. message .. "</font></b>")
end