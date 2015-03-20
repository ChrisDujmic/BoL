-->Version=0.01<

function Download_Needed(name,verion)
	--CommonCheck
	local Response = GetWebResult("raw.github.com", "/ChrisDujmic/BoL/master/Common/LX-Common.lua?rand="..math.random(1,10000))
	local OnlineVersion = Response:match(text, "-->Version=(.*)<")
	print(OnlineVersion)
	return true
end