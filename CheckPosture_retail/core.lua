local duration = 900 -- 15 Minutes (15 x 60 = 900)
local time = duration
local frame = CreateFrame("Frame")

frame:SetScript("OnUpdate", function(self, elapsed)
	time = time - elapsed
	if time <= 0 then
		print("Posture Check!")
		RaidNotice_AddMessage( RaidBossEmoteFrame, "Posture Check!", ChatTypeInfo["RAID_BOSS_EMOTE"])
		time = duration
	end
end)
