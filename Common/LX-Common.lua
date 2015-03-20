--[Version0.03]
local Common_Version = 0.03

function Update_Needed(name,version)
	--CommonCheck
	
	local Updated = false
	local Response = GetWebResult("raw.github.com", "/ChrisDujmic/BoL/master/Common/LX-Common.lua" .. "?rand="..math.random(1,10000))
	local OnlineVersion = string.match(Response,"%[Version(.-)%]")
	if (Common_Version < tonumber(OnlineVersion)) then
		Common_Link = "https://raw.githubusercontent.com/ChrisDujmic/BoL/master/Common/LX-Common.lua" .."?rand="..math.random(1,10000)	
		function AfterDownload()
			Chat_Print("LX-Common","Updated LX-Common (v" .. tostring(Common_Version) .." -> v" .. OnlineVersion ..") please Reload (double F9)")
		end
		DownloadFile(Common_Link, LIB_PATH .. "LX-Common.lua", AfterDownload)
		return true
	else 
			Chat_Print("LX-Common","Loaded LX-Common v" .. tostring(Common_Version))
	end
	
	Response = GetWebResult("raw.github.com", "/ChrisDujmic/BoL/master/" .. name .. ".lua" .. "?rand="..math.random(1,10000))
	OnlineVersion = string.match(Response,"%[Version(.-)%]")
	if (version < tonumber(OnlineVersion)) then
		Script_Link = "https://raw.githubusercontent.com/ChrisDujmic/BoL/master/" .. name .. ".lua" .."?rand="..math.random(1,10000)
		function AfterDownload()
			Chat_Print(name,"Updated " .. name .." (v" .. tostring(version) .." -> v" .. OnlineVersion ..") please Reload (double F9)")
		end
		DownloadFile(Script_Link, SCRIPT_PATH .. name .. ".lua", AfterDownload)
		return true
	else 
		Chat_Print("LX-Common","Loaded " .. name .." v" .. tostring(version))
	end
	
	return false
end

function Chat_Print(from,message)
print("<b><font color=\"#B0E57C\">" .. from .. ": </font><font color=\"#B4D8E7\">" .. message .. "</font></b>")
end