-- cristxzscripts loader

if not game:IsLoaded() then
    game.Loaded:Wait()
end

print("cristxzscripts cargado correctamente")

local StarterGui = game:GetService("StarterGui")

pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "cristxzscripts",
        Text = "by infzwx",
        Duration = 5
    })
end)
