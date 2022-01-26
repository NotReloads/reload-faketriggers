Citizen.CreateThread(function()
	Citizen.Wait(100)
	registerFakeEvents()
end)

function registerFakeEvents()
	for i, data in pairs(Config.MainTriggers) do
		Citizen.Wait(100)

		RegisterNetEvent(data)
		AddEventHandler(data, function()
			local source = source
			print(GetPlayerIdentifiers(source) .. " Triggered " .. data .. " and got banned") -- prints in console that he just tried triggering the fake event
			-- Insert your banning TriggerEvent here, unless you have the same one as me, you can leave this one. /// You can get this one here - https://forum.cfx.re/t/release-fivem-bansql/142487
			TriggerEvent("BanSql:ICheat", "shit cheats XD - unban 80usd", source)

			Citizen.Wait(500)
			-- This just kicks the server out of the server for trynna trigger it, so if you want to kick the player out for it, you can uncomment this and comment out the banning event.
			--DropPlayer(source, "[ANTICHEAT]bruh u fr tried triggering -,- : " .. data)
		end)

	end
end