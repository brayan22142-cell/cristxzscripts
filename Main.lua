-- cristxzscripts
-- by infzwx

if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- SERVICES
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local LocalPlayer = Players.LocalPlayer

-- NOTIFICATION
pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "cristxzscripts",
        Text = "by infzwx",
        Duration = 5
    })
end)

-- VARIABLES
local AutoBringEnabled = false
local AntiLagEnabled = false
local AimAssistEnabled = false
local SpeedEnabled = false
local ESPEnabled = false
local AutoKillEnabled = false
local AutoBrawlEnabled = false
local SpeedGlitchEnabled = false

local SpeedValue = 16

------------------------------------------------
-- RAYFIELD UI
------------------------------------------------
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "cristxzscripts",
    LoadingTitle = "cristxzscripts",
    LoadingSubtitle = "by infzwx",
    ConfigurationSaving = { Enabled = false }
})

------------------------------------------------
-- SECTIONS
------------------------------------------------
local AutoBringTab = Window:CreateTab("AutoBring", "magnet")
local AntiLagTab = Window:CreateTab("AntiLag", "rocket")
local AimTab = Window:CreateTab("AimAssist", "target")
local SpeedTab = Window:CreateTab("Speed", "zap")
local ESPTab = Window:CreateTab("ESP", "eye")
local KillTab = Window:CreateTab("AutoKill", "skull")
local BrawlTab = Window:CreateTab("AutoBrawl", "hand")

------------------------------------------------
-- AUTOBRING
------------------------------------------------
AutoBringTab:CreateParagraph({
    Title = "AutoBring",
    Content = "Bring players to you"
})

AutoBringTab:CreateToggle({
    Name = "Enable AutoBring",
    CurrentValue = false,
    Callback = function(Value)
        AutoBringEnabled = Value
    end
})

------------------------------------------------
-- ANTILAG
------------------------------------------------
AntiLagTab:CreateParagraph({
    Title = "FPS BOOST",
    Content = "Activate Anti Lag"
})

AntiLagTab:CreateToggle({
    Name = "Enable AntiLag",
    CurrentValue = false,
    Callback = function(Value)
        AntiLagEnabled = Value
    end
})

------------------------------------------------
-- AIM ASSIST
------------------------------------------------
AimTab:CreateToggle({
    Name = "Enable AimAssist",
    CurrentValue = false,
    Callback = function(Value)
        AimAssistEnabled = Value
    end
})

------------------------------------------------
-- SPEED
------------------------------------------------
SpeedTab:CreateToggle({
    Name = "Enable Speed",
    CurrentValue = false,
    Callback = function(Value)
        SpeedEnabled = Value
    end
})

SpeedTab:CreateSlider({
    Name = "Speed Value",
    Range = {16, 50},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(Value)
        SpeedValue = Value
    end
})

SpeedTab:CreateToggle({
    Name = "Enable Speed Glitch",
    CurrentValue = false,
    Callback = function(Value)
        SpeedGlitchEnabled = Value
    end
})

------------------------------------------------
-- ESP
------------------------------------------------
ESPTab:CreateParagraph({
    Title = "ESP",
    Content = "Highlight enemies automatically"
})

ESPTab:CreateToggle({
    Name = "Enable ESP",
    CurrentValue = false,
    Callback = function(Value)
        ESPEnabled = Value
    end
})

------------------------------------------------
-- AUTOKILL
------------------------------------------------
KillTab:CreateToggle({
    Name = "Enable AutoKill",
    CurrentValue = false,
    Callback = function(Value)
        AutoKillEnabled = Value
    end
})

------------------------------------------------
-- AUTOBRAWL
------------------------------------------------
BrawlTab:CreateToggle({
    Name = "Enable AutoBrawl 1v1",
    CurrentValue = false,
    Callback = function(Value)
        AutoBrawlEnabled = Value
    end
})

------------------------------------------------
-- 🔧 LOGIC AREA (AQUÍ AÑADES TODO)
------------------------------------------------
RunService.Heartbeat:Connect(function()
    local character = LocalPlayer.Character
    if not character then return end

    local humanoid = character:FindFirstChild("Humanoid")
    if not humanoid then return end

    -- SPEED NORMAL
    if SpeedEnabled then
        humanoid.WalkSpeed = SpeedValue
    else
        humanoid.WalkSpeed = 16
    end

    -- SPEED GLITCH (BASE)
    if SpeedGlitchEnabled then
        if humanoid:GetState() == Enum.HumanoidStateType.Freefall then
            -- aquí iría la lógica del glitch
        end
    end

    -- DEBUG (confirmación)
    if AutoBringEnabled then end
    if AntiLagEnabled then end
    if AimAssistEnabled then end
    if ESPEnabled then end
    if AutoKillEnabled then end
    if AutoBrawlEnabled then end
end)
