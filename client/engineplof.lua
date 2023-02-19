if Config.enginePlof == true then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            local ply = PlayerPedId()
            local pedvehicle = GetVehiclePedIsIn(ply, false)

            if IsPedInAnyVehicle(ply, true) then
                if IsVehicleTyreBurst(pedvehicle, false) then
                    SetVehicleEngineHealth(pedvehicle, 300)
                    SetEntityMaxSpeed(pedvehicle, 25.0)
                    Wait(10000)
                    SetVehicleEngineHealth(pedvehicle, 0.0)
                    SetVehicleEngineOn(pedvehicle, false, true, true)
                    SetVehicleUndriveable(pedvehicle, true)
                end
            end

            --[[
            if IsPedInAnyVehicle(ply, true) then
                if IsVehicleTyreBurst(pedvehicle, false) then
                    SetVehicleEngineHealth(pedvehicle, 300)
                    SetEntityMaxSpeed(pedvehicle, 25.0)
                    Wait(10000)
                    SetVehicleEngineHealth(pedvehicle, 0.0)
                    SetVehicleEngineOn(pedvehicle, false, true, true)
                    SetVehicleUndriveable(pedvehicle, true)
                    while GetEntitySpeed() >= 1 do
                        repeat
                            local speed = 25
                            SetEntityMaxSpeed(pedvehicle, speed)
                            local speed = speed - 2
                        until speed =< 1w
                    end
                end
            end
            ]]--

        end
    end)
end
