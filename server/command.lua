ESX = exports["es_extended"]:getSharedObject()
local webhook = "WEBHOOK HERE"
local devping = "<@%ROLE ID HERE>"

RegisterCommand("creatorcode", function(source, args, rawCommand)
local _source = source
local xPlayerz = ESX.GetPlayerFromId(_source)
local xPlayers = ESX.GetPlayers()
local code = args[1]
local xPlayer = ESX.GetPlayerFromId(_source)
local steamname = GetPlayerName(_source)
    MySQL.Async.fetchAll('SELECT ccode FROM users WHERE identifier = @identifier', {['@identifier'] = xPlayerz.identifier}, function(result)
        if result[1] then
            local resultfrommysql = json.encode(result[1].ccode)
            local resultfrommysql2 = result[1].ccode
            if resultfrommysql2 == "server" then
                
                -- CODE 1 HERE
                if code == "NOAH" then
                    xPlayer.addAccountMoney("bank", 5000)
                    xPlayer.addInventoryItem("cola", 5)

                    MySQL.Async.execute('UPDATE users SET ccode = @ccode WHERE identifier = @identifier', {['@ccode'] = code, ['@identifier'] = xPlayerz.identifier})
                    TriggerClientEvent('esx:showNotification', xPlayer.source, '~g~Code "'..code..'" Eingelöst!~s~')
                    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "CREATOR CODE", content = steamname.." hat den Creator Code "..code.." eingelöst"}), { ['Content-Type'] = 'application/json' })
                 else
                    TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Dieser Code ist ungültig!~s~')
                 end
                 -- CODE 1 ENDS HERE


            else
                TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Du hast bereits den Creator Code "'..resultfrommysql2..'"eingelöst!~s~')
            end
        else
            TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Coulnt fetch SQL, Please contact the Support~s~')
            PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "CREATOR CODE", content = steamname.." versuchte "..code.." einzulösen aber die Datenbank reagiert nicht."..devping}), { ['Content-Type'] = 'application/json' })
        end
    end)
end)

