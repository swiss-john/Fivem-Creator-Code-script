ESX = exports["es_extended"]:getSharedObject()


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
                
                if code == "NOAH" then
                    xPlayer.addAccountMoney("bank", 5000)
                    xPlayer.addInventoryItem("cola", 5)

                    MySQL.Async.execute('UPDATE users SET ccode = @ccode WHERE identifier = @identifier', {['@ccode'] = code, ['@identifier'] = xPlayerz.identifier})
                    TriggerClientEvent('esx:showNotification', xPlayer.source, '~g~Code "'..code..'" Eingelöst!~s~')
                    PerformHttpRequest('https://discord.com/api/webhooks/1090324781083140166/uk4Sf3a7hwp2oEvi_vfDaHon8Kt--zMuWGi8A8wBRM7iqFQlxjoIP9hAbxbdz4lRyuEh', function(err, text, headers) end, 'POST', json.encode({username = "CREATOR CODE", content = steamname.." hat den Creator Code "..code.." eingelöst"}), { ['Content-Type'] = 'application/json' })
                 else
                    TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Dieser Code ist ungültig!~s~')
                 end

            else
                TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Du hast bereits den Creator Code "'..resultfrommysql2..'"eingelöst!~s~')
            end
        else
            TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Coulnt fetch SQL, Please contact the Support~s~')
            PerformHttpRequest('https://discord.com/api/webhooks/1090324781083140166/uk4Sf3a7hwp2oEvi_vfDaHon8Kt--zMuWGi8A8wBRM7iqFQlxjoIP9hAbxbdz4lRyuEh', function(err, text, headers) end, 'POST', json.encode({username = "CREATOR CODE", content = steamname.." versuchte "..code.." einzulösen aber die Datenbank reagiert nicht. <@&960513991359209526>"}), { ['Content-Type'] = 'application/json' })
        end
    end)
end)

