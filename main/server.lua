ESX = exports["es_extended"]:getSharedObject()

for item, itemData in pairs(Config.Items) do
    ESX.RegisterUsableItem(item, function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        
        if xPlayer.getInventoryItem(item).count > 0 then
            local newItemCount = itemData.newItemCount or 1
            
            xPlayer.removeInventoryItem(item, 1)
            TriggerClientEvent('startProgressEvent', -1)
            Citizen.Wait(5000)
            xPlayer.addInventoryItem(itemData.newItem, newItemCount)
            
            local message = string.format(Translation[Config.Locale]['text'], newItemCount, itemData.newItemLabel, itemData.name)
            TriggerClientEvent('esx:showNotification', source, message)
        else
            TriggerClientEvent('esx:showNotification', source, Translation[Config.Locale]['text_2'] .. itemData.name .. Translation[Config.Locale]['point'])
        end
    end)
end