if Config.IDCommand == true then 
    RegisterCommand('id', function(source, args)
        local src = source
            TriggerClientEvent('chatMessage', src, "[" .. "ID" .. "]", {255, 0, 0}, 'Your Server ID is ' .. src)
    end, false)
end
