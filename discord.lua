Citizen.CreateThread(function()
	while true do

	local count = 0

local text = {
"Mettez vos phrases",
"ici",
"ça changera automatiquement" -- Don't forget to remove the comma
}

		for _, __ in pairs(text) do 
			count = count + 1
		end
	
		local presence  = math.random(1, count)
	
		local player = GetPlayerPed(-1)
	
		SetDiscordAppId('discordrpcid')
		SetDiscordRichPresenceAsset('image')
		SetRichPresence((GetPlayerName(PlayerId())) .. " " .. text[presence]) -- [Steam username] [text]
		--SetRichPresence("".. text[presence] .."")  -- [text]
		SetDiscordRichPresenceAssetText('discord.gg/garfield ')
		print('^5Discord Rich Presence updated :D')
		Citizen.Wait(300000) -- 5 minutes 
	end
end)