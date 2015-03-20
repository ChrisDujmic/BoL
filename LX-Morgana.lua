--[Version0.02]

--[[

	Script Name: 			LX-Morgana
    Author: 					Lexxes	
]]--

if (myHero.charName) ~= "Morgana" then return end

local_ScriptName = "LX-Morgana"
local_Author = "Lexxes"
local_Version = 0.02
local_UpdateDate = "20.03.2015"

if (FileExist(LIB_PATH .. "LX-Common.lua")) then 
		require("LX-Common")
		if (Update_Needed(local_ScriptName,local_Version)) then
			return
		end
	else
		Common_Link = "https://raw.githubusercontent.com/ChrisDujmic/BoL/master/Common/LX-Common.lua" .."?rand="..math.random(1,10000)
		
		function AfterDownload()
				print("<b><font color=\"#B0E57C\">LX-Common: </font><font color=\"#B4D8E7\">Download Complete pls Reload (double F9)</font></b>")
		end
		
		print("<b><font color=\"#B0E57C\">LX-Common: </font><font color=\"#B4D8E7\">Download LX-Common, pls wait ...</font></b>")
		DownloadFile(Common_Link, LIB_PATH .. "LX-Common.lua", AfterDownload)
		return
end

