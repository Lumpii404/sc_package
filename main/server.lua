ESX = exports["es_extended"]:getSharedObject()

for item, itemData in pairs(Config.Items) do
    ESX.RegisterUsableItem(item, function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        
        if xPlayer.getInventoryItem(item).count > 0 then
            local newItemCount = itemData.newItemCount or 1
            
            xPlayer.removeInventoryItem(item, 1)
            Citizen.Wait(3000)
            xPlayer.addInventoryItem(itemData.newItem, newItemCount)
            
            local message = string.format(Translation[Config.Locale]['text'], newItemCount, itemData.newItemLabel, itemData.name)
            TriggerClientEvent('esx:showNotification', source, message)
        else
            TriggerClientEvent('esx:showNotification', source, Translation[Config.Locale]['text_2'] .. itemData.name .. Translation[Config.Locale]['point'])
        end
    end)
end

local githubRepoURL = "https://raw.githubusercontent.com/ScubeScripts/sc_package/master/version"

function CheckVersion()
    PerformHttpRequest(githubRepoURL, function(errorCode, resultData, resultHeaders)
        if errorCode == 200 then
            local remoteVersion = string.gsub(resultData, "\n", "")
            local latestVersion = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)

            if remoteVersion ~= latestVersion then
                print("^7[^1INFO^7] ^3sc_package is outdated. Please update to the latest version. ^7(^2".. remoteVersion .."^7)^3 https://github.com/ScubeScripts/sc_package")
            else
                print("^7[^2INFO^7] ^7sc_package is up to date! ^7(^2".. latestVersion .."^7)")
            end
        else
            print("^7[^8ERROR^7] Version data retrieval not possible!")
        end
    end)
end

Citizen.CreateThread(function()
    while true do
        CheckVersion()
        Citizen.Wait(3600000)
    end
end)
