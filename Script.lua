local Day = os.time({Year = 2022, Month = 12, Day = 18, Hour = 12, Minute = 30, Second = 15})

local function LiveEvent()
    print[[@ataridiscord on all socials.]]
end

while task.wait() do
	local SecondsBetween = os.difftime(Day, os.time())

	local Seconds = SecondsBetween % 60
	local Minutes = math.floor(SecondsBetween % (60 * 60) / 60)
	local Hours = math.floor(SecondsBetween % (60 * 60 * 24) / (60 * 60))
	local Days = math.floor(SecondsBetween % (60 * 60 * 24 * 30) / (60 * 60 * 24))
	
	if SecondsBetween <= 0 then 
		LiveEvent()
		break
	end
end
