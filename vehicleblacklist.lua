local allowedToBypass = false
local allowedToBypass2 = false
local allowedToBypass3 = false
local allowedToBypass4 = false


-- This is for ace perm "hillf.bypass"
local blockedModels = { 
    "",
    "bikelete",
    "apc"
}

-- The above blacklists the listed vehicles for everyone. To bypass them you need to do add_ace blah blah blah

-- This is for ace perm "hillf.bypass2"
local blockedModels2 = {
    "ccvolvo",
    "bikelete"
}

-- This is for ace perm "hillf.bypass3"
local blockedModels3 = {
    "model1",
    "model2"
}

-- This is for ace perm "hillf.bypass4"
local blockedModels4 = {
    "model1",
    "model2"
}


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------- DO NOT TOUCH ANY OF THIS BELOW!!!!! ---------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hillf.vebl.return")
AddEventHandler("hillf.vebl.return", function(allowed)
    if allowed then
        allowedToBypass = allowed
    end
end)

RegisterNetEvent("hillf2.vebl.return")
AddEventHandler("hillf2.vebl.return", function(allowed)
    if allowed then
        allowedToBypass2 = allowed
    end
end)

RegisterNetEvent("hillf3.vebl.return")
AddEventHandler("hillf3.vebl.return", function(allowed)
    if allowed then
        allowedToBypass2 = allowed
    end
end)

RegisterNetEvent("hillf4.vebl.return")
AddEventHandler("hillf4.vebl.return", function(allowed)
    if allowed then
        allowedToBypass2 = allowed
    end
end)

Citizen.CreateThread(function()
    TriggerServerEvent("hillf.vebl")
    while true do
        Citizen.Wait(1)
        if not allowedToBypass then
            if IsPedInAnyVehicle(PlayerPedId(), true) then
                local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                if DoesEntityExist(veh) and IsEntityAVehicle(veh) and not IsEntityDead(veh) then
                    if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                        for _,car in pairs(blockedModels) do
                            local model = GetEntityModel(veh)
                            if GetHashKey(car) == model then
                                SetEntityAsMissionEntity(veh, true, true)
                                DeleteVehicle(veh)
                                ForbiddenMessage("You are not allowed to use this vehicle!")
                            end
                        end
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    TriggerServerEvent("hillf2.vebl")
    while true do
        Citizen.Wait(1)
        if not allowedToBypass2 then
            if IsPedInAnyVehicle(PlayerPedId(), true) then
                local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                if DoesEntityExist(veh) and IsEntityAVehicle(veh) and not IsEntityDead(veh) then
                    if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                        for _,car in pairs(blockedModels2) do
                            local model = GetEntityModel(veh)
                            if GetHashKey(car) == model then
                                SetEntityAsMissionEntity(veh, true, true)
                                DeleteVehicle(veh)
                                ForbiddenMessage("You are not allowed to use this vehicle!")
                            end
                        end
                    end
                end
            end
        end
    end
end)
    
Citizen.CreateThread(function()
    TriggerServerEvent("hillf3.vebl")
    while true do
        Citizen.Wait(1)
        if not allowedToBypass3 then
            if IsPedInAnyVehicle(PlayerPedId(), true) then
                local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                if DoesEntityExist(veh) and IsEntityAVehicle(veh) and not IsEntityDead(veh) then
                    if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                        for _,car in pairs(blockedModels3) do
                            local model = GetEntityModel(veh)
                            if GetHashKey(car) == model then
                                SetEntityAsMissionEntity(veh, true, true)
                                DeleteVehicle(veh)
                                ForbiddenMessage("You are not allowed to use this vehicle!")
                            end
                        end
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    TriggerServerEvent("hillf4.vebl")
    while true do
        Citizen.Wait(1)
        if not allowedToBypass4 then
            if IsPedInAnyVehicle(PlayerPedId(), true) then
                local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                if DoesEntityExist(veh) and IsEntityAVehicle(veh) and not IsEntityDead(veh) then
                    if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                        for _,car in pairs(blockedModels4) do
                            local model = GetEntityModel(veh)
                            if GetHashKey(car) == model then
                                SetEntityAsMissionEntity(veh, true, true)
                                DeleteVehicle(veh)
                                ForbiddenMessage("You are not allowed to use this vehicle!")
                            end
                        end
                    end
                end
            end
        end
    end
end)


function ForbiddenMessage(message)
    TriggerEvent("chatMessage", "", {0, 0, 0}, "^1" .. message)
end
