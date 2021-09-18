local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DriftLeaks/Death-Hub/main/Library.lua"))()
local Window = Library.CreateLib("Prison Life", "Sentinel")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"M9", "Remington 870", "AK-47"}, function(v)
    local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
    local Event = game:GetService("Workspace").Remote.ItemHandler
    Event:InvokeServer(A_1)
end)

MainSection:NewDropdown("Change Team", "Changes you Team", {"Inmate", "N/A", "Police", "Criminal"}, function(v)
    if v == "Police" then
        Workspace.Remote.TeamEvent:FireServer("Bright blue")
    end
if v == "Criminal" then
    LP = game.Players.LocalPlayer

RE = LP.Character.HumanoidRootPart.Position
LP.Character.HumanoidRootPart.CFrame = CFrame.new(-919.958, 95.327, 2138.189)
wait(0.075)
LP.Character.HumanoidRootPart.CFrame = CFrame.new(RE)
end
if v == "N/A" then
    Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end
if v == "Inmate" then
    Workspace.Remote.TeamEvent:FireServer("Bright orange")
end
end)

MainSection:NewDropdown("Gun Mod", "Makes the gun op", {"M9", "Remington 870", "AK-47"}, function(v)
    local module = nil
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
        module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
        module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
    end
    if module ~= nil then
        module["MaxAmmo"] = math.huge
        module["CurrentAmmo"] = math.huge
        module["StoredAmmo"] = math.huge
        module["FireRate"] = 0.000001
        module["Spread"] = 0
        module["Range"] = math.huge
        module["Bullets"] = 10
        module["ReloadTime"] = 0.000001
        module["AutoFire"] = true
    end
end)

-- PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)
