function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
    while not isSampAvailable() do wait(100) end
	while true do wait(100)
		if isPlayerUsingJetpack(PLAYER_HANDLE) and not sampIsChatInputActive() and isKeyDown(0xA4) and isKeyDown(0x57) then -- CLOSE CHAT, GET A JetPack AND PRESS LEFT ALT + W
			heading = getCharHeading(PLAYER_PED)
			vecX = math.sin(-math.rad(heading)) * 80
			vecY = math.cos(-math.rad(heading)) * 80
			setCharVelocity(PLAYER_PED, vecX, vecY, 0.5)
		end
		if isPlayerUsingJetpack(PLAYER_HANDLE) and not sampIsChatInputActive() and isKeyDown(0xA4) and isKeyDown(0x44) then -- CLOSE CHAT, GET A JetPack AND PRESS LEFT ALT + D
			heading = getCharHeading(PLAYER_PED)
			vecX = math.cos(math.rad(heading)) * 80
			vecY = math.sin(math.rad(heading)) * 80
			setCharVelocity(PLAYER_PED, vecX, vecY, 0.5)
		end
		if isPlayerUsingJetpack(PLAYER_HANDLE) and not sampIsChatInputActive() and isKeyDown(0xA4) and isKeyDown(0x53) then -- CLOSE CHAT, GET A JetPack AND PRESS LEFT ALT + S
			heading = getCharHeading(PLAYER_PED)
			vecX = math.sin(-math.rad(heading)) * -80
			vecY = math.cos(-math.rad(heading)) * -80
			setCharVelocity(PLAYER_PED, vecX, vecY, 0.5)
		end
		if isPlayerUsingJetpack(PLAYER_HANDLE) and not sampIsChatInputActive() and isKeyDown(0xA4) and isKeyDown(0x41) then -- CLOSE CHAT, GET A JetPack AND PRESS LEFT ALT + A
			heading = getCharHeading(PLAYER_PED)
			vecX = math.cos(math.rad(heading)) * -80
			vecY = math.sin(math.rad(heading)) * -80
			setCharVelocity(PLAYER_PED, vecX, vecY, 0.5)
		end
	end
end