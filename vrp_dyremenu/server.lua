

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPclient = Tunnel.getInterface("vRP", "dp_customize") 
vRP = Proxy.getInterface("vRP")

RegisterCommand('dyremenu', function(source, args, rawCommand, suggestions)
    local source = source
    local user_id = vRP.getUserId({source})
    if vRP.hasGroup({user_id, Config.Group}) then
        TriggerClientEvent('vrp_dyremenu:menuopen', source)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Ingen adgang!', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
    end
end)


