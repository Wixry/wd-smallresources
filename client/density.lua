if Config.Density == true then 
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            SetVehicleDensityMultiplierThisFrame(Config.DensityMultiplier)
            SetPedDensityMultiplierThisFrame(Config.DensityMultiplier)
            SetRandomVehicleDensityMultiplierThisFrame(Config.DensityMultiplier)
            SetParkedVehicleDensityMultiplierThisFrame(Config.DensityMultiplier)
            SetScenarioPedDensityMultiplierThisFrame(Config.DensityMultiplier, Config.DensityMultiplier)
        end
    end)
end