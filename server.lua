RegisterServerEvent("hillf.vebl")
AddEventHandler('hillf.vebl', function()
    if IsPlayerAceAllowed(source, "hillf.bypass") then
        TriggerClientEvent("hillf.vebl.return", source, true)
    end
end)

RegisterServerEvent("hillf2.vebl")
AddEventHandler('hillf2.vebl', function()
    if IsPlayerAceAllowed(source, "hillf.bypass2") then
        TriggerClientEvent("hillf2.vebl.return", source, true)
    end
end)

RegisterServerEvent("hillf3.vebl")
AddEventHandler('wldcore.vehblacklist', function()
    if IsPlayerAceAllowed(source, "hillf.bypass3") then
        TriggerClientEvent("hillf3.vebl.return", source, true)
    end
end)

RegisterServerEvent("hillf4.vebl")
AddEventHandler('hillf4.vebl', function()
    if IsPlayerAceAllowed(source, "hillf.bypass4") then
        TriggerClientEvent("hillf4.vebl.return", source, true) 
    end
end)
