local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("radio", function(source)
    TriggerClientEvent('qb-radio:use', source)
end)

QBCore.Functions.CreateUseableItem("radio_blue", function(source)
    TriggerClientEvent('qb-radio:use', source)
end)

QBCore.Functions.CreateUseableItem("radio_green", function(source)
    TriggerClientEvent('qb-radio:use', source)
end)

QBCore.Functions.CreateUseableItem("radio_yellow", function(source)
    TriggerClientEvent('qb-radio:use', source)
end)

QBCore.Functions.CreateUseableItem("radio_pink", function(source)
    TriggerClientEvent('qb-radio:use', source)
end)

for channel, config in pairs(Config.RestrictedChannels) do
    exports['pma-voice']:addChannelCheck(channel, function(source)
        local Player = QBCore.Functions.GetPlayer(source)
        return config[Player.PlayerData.job.name] and Player.PlayerData.job.onduty
    end)
end
