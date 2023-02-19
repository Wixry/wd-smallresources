if Config.policeManagement == true then 
   
-- Hirepolice
RegisterCommand('hirepolice', function(source, args)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src) 
    local idTarget = ESX.GetPlayerFromId(args[1])

    if xPlayer.job.name == 'police' and xPlayer.job.grade >= 4 then
        if idTarget == nil then
            xPlayer.showNotification("Player not online")
        else
            if idTarget.job.name == 'police' and idTarget.job.grade >= 4 then
                xPlayer.showNotification("You can't take/change the job of someone with the same permissions.")
            else
                if toint(args[2]) > 4 then
                    xPlayer.showNotification("You can't make someone a higher rank than yourself!")
                else
                    if ESX.DoesJobExist('police', args[2]) then
                        idTarget.setJob('police', args[2])
                    end 
        
                    local targetName = idTarget.getName()
                    local name = xPlayer.getName()
                    xPlayer.showNotification("You have hired "..tostring(targetName).." and given the "..args[2].." grade.")
                    idTarget.showNotification("You have been hired as a policeman with the grade"..args[2].." by"..name)
                end
            end
        end
    else
        xPlayer.showNotification("You're not allowed to use this command!")
    end
end)

-- Firepolice
RegisterCommand('firepolice', function(source, args)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src) 
    local idTarget = ESX.GetPlayerFromId(args[1])

    if xPlayer.job.name == 'police' and xPlayer.job.grade >= 4 then
        if idTarget == nil then
            xPlayer.showNotification("Player not online")
        else
            if idTarget.job.name == 'police' and idTarget.job.grade >= 4 then
                xPlayer.showNotification("You can't take/change the job of someone with the same permissions.")
            else
                if idTarget.job.name == 'police' then
                    if ESX.DoesJobExist('unemployed', 0) then
                        idTarget.setJob('unemployed', 0)
                    end 

                    local targetName = idTarget.getName()
                    local name = xPlayer.getName()
                    xPlayer.showNotification("You have fired "..tostring(targetName))
                    idTarget.showNotification("You have been fired by "..name)
                else
                    xPlayer.showNotification("You can't fire someone who isn't a policemen")
                end
            end
        end
    end
end)

end