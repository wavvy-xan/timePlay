Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        variables['elapsedTime'] = GetGameTimer()

        variables['hours'] = math.floor(variables['elapsedTime'] / 3600000)
        variables['minutes'] = math.floor((variables['elapsedTime'] % 3600000) / 60000)
        variables['seconds'] = math.floor((variables['elapsedTime'] % 60000) / 1000)

        variables['sessionDesc'] = string.format("Aktualna sesja gry: %02d:%02d:%02d", variables['hours'], variables['minutes'], variables['seconds'])
        variables:drawClientText(0.16, 0.97, 0.2, 255, 255, 255, 255, variables['sessionDesc'])
    end
end)
