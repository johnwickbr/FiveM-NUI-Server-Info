local display = false

RegisterCommand("open", function()
    Citizen.CreateThread(function()
      TriggerEvent('nui:on', true)
    end)
end)
  


  RegisterCommand("close", function()
    Citizen.CreateThread(function()
        TriggerEvent("nui:off", true)
    end)
  end)

  RegisterNetEvent('nui:on')
  AddEventHandler('nui:on', function()
    SendNUIMessage({
      type = "ui",
      display = true
    })
  end)

  RegisterNetEvent('nui:off')
  AddEventHandler('nui:off', function()
    SendNUIMessage({
      type = "ui",
      display = false
    })
  end)
