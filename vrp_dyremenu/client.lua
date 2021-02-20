
local delay = 200

RegisterNetEvent("vrp_dyremenu:menuopen")
AddEventHandler("vrp_dyremenu:menuopen", function()
    SetNuiFocus(true, true)
    Citizen.Wait(100)
    SendNUIMessage({status = true,})
end)

RegisterNUICallback("farve1", function (data, callback)
    local skin = "a_c_chimp"
    local model = GetHashKey(skin)
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(0)
        end
        exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Opdatere model...", useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
        Citizen.Wait(5000)
        SetPlayerModel(PlayerId(), model)
    end
end)

RegisterNUICallback("farve2", function (data, callback)
    local skin = "a_c_rhesus"
    local model = GetHashKey(skin)
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(0)
        end
        exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Opdatere model...", useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
        Citizen.Wait(5000)
        SetPlayerModel(PlayerId(), model)
    end
end)

RegisterNUICallback("farve3", function (data, callback)
    local skin = "mp_m_freemode_01"
    local model = GetHashKey(skin)
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(0)
        end
        exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Opdatere model...", useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
        Citizen.Wait(5000)
        SetPlayerModel(PlayerId(), model)
    end
end)

RegisterNUICallback("farve4", function (data, callback)
    local skin = "a_c_poodle"
    local model = GetHashKey(skin)
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(0)
        end
        exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Opdatere model...", useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
        Citizen.Wait(5000)
        SetPlayerModel(PlayerId(), model)
    end
end)

RegisterNUICallback("farve5", function (data, callback)
    local skin = "a_c_pug"
    local model = GetHashKey(skin)
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(0)
        end
        exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Opdatere model...", useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
        Citizen.Wait(5000)
        SetPlayerModel(PlayerId(), model)
    end
end)

RegisterNUICallback("farve6", function (data, callback)
    local skin = "a_c_hen"
    local model = GetHashKey(skin)
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(0)
        end
        exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Opdatere model...", useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
        Citizen.Wait(5000)
        SetPlayerModel(PlayerId(), model)
    end
end)

RegisterNUICallback("farve7", function (data, callback)
    local skin = "a_c_pig"
    local model = GetHashKey(skin)
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(0)
        end
        exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Opdatere model...", useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
        Citizen.Wait(5000)
        SetPlayerModel(PlayerId(), model)
    end
end)

RegisterNUICallback("farve8", function (data, callback)
    local skin = "a_c_rabbit_01"
    local model = GetHashKey(skin)
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(0)
        end
        exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Opdatere model...", useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
        Citizen.Wait(5000)
        SetPlayerModel(PlayerId(), model)
    end
end)
  
RegisterNUICallback("Luk", function (data, callback)
    SetNuiFocus(false, false)
end)

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end

AddEventHandler("onResourceStop",function(a)if a==GetCurrentResourceName()then SetNuiFocus(false,false) end end)
                
                                                    
