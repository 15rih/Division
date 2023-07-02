repeat task.wait(0.001) until game:IsLoaded() and game.Players.LocalPlayer

pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/15rih/extensions/main/BannedUsers.lua"))()
end)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Division", "DarkTheme")

local function notify(title,text,time)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = time;
    })
end

notify("Executed", "division group has been copied to clipboard", 13)
setclipboard("https://www.roblox.com/groups/17366917/dlvlsion#!/about")

local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")

MainSection:NewToggle("Auto Blow", "", function(state)
    if state then
        getgenv().AutoBlow = true
        while AutoBlow == true do
            task.wait()
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("BlowBubble")
        end
    else
        getgenv().AutoBlow = false
    end
end)

MainSection:NewToggle("Auto Sell [spawn area]", "", function(state)
    if state then
        getgenv().AutoSell1 = true
        while AutoSell1 == true do
            task.wait(0.0000001)
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("SellBubble", "Sell")
        end
    else
        getgenv().AutoSell1 = false
    end
end)

local SelectedWorld
MainSection:NewDropdown("Select World For Auto-Sell", "", {"Sell", "Candy Land", "Toy Wold", "Beach World", "Atlantis", "Rainbow Land", "Underworld", "Mystic Forest"}, function(World)
    if World ~= nil then
        local SelectedWorld = World
    end
end)

MainSection:NewToggle("Auto Sell", "", function(state)
    if state then
        getgenv().AutoSell = true
        while AutoSell == true do
            task.wait()
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("SellBubble", tostring(SelectedWorld))
        end
    else
        getgenv().AutoSell = false
    end
end)

local MiscTab = Window:NewTab("Miscellaneous")
local MiscSection = MiscTab:NewSection("Miscellaneous")

MiscSection:NewToggle("Auto Trade Decline", "", function(autotradeDecline)
    if autotradeDecline then
        getgenv().AutoTradeDecline = true
        while AutoTradeDecline == true do
            task.wait()
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("TradeDecline")
        end
    else
        getgenv().AutoTradeDecline = false
    end
end)

MiscSection:NewToggle("Auto Trade Confirm", "", function(autotradeConfirm)
    if autotradeConfirm then
        getgenv().AutoTradeConfirm = true
        while AutoTradeConfirm == true do
            task.wait()
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("TradeReady") -- ready
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("TradeConfirm") -- confirm
        end
    else
        getgenv().AutoTradeConfirm = false
    end
end)

MiscSection:NewButton("Spin To Win", "", function()
    game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("SpinToWin")
end)

MiscSection:NewButton("Claim Daily Reward", "", function()
    game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("ClaimDailyReward")
end)

MiscSection:NewButton("Collect Group Rewards [MUST BE IN RS GROUP]", "", function()
    game:GetService("ReplicatedStorage").NetworkRemoteFunction:InvokeServer("CollectGroupReward")
    notify("Collect Group Rewards", "Group was copied to clipboard", 6)
    setclipboard("https://www.roblox.com/groups/3333298/Rumble-Studios#!/about")
end)


local TeleportsTab = Window:NewTab("Teleports")
local TeleportsSection = TeleportsTab:NewSection("Teleports")

TeleportsSection:NewButton("The Floating Island", "ButtonInfo", function()
    local TweenServ = game:GetService("TweenService")
    local Tween = TweenServ:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(9, Enum.EasingStyle.Quad), {CFrame = CFrame.new(114.862228, 899.094299, -327.20343, -0.841624677, 2.90999555e-18, 0.540062845, -7.53537798e-18, 1, -1.71312579e-17, -0.540062845, -1.8487667e-17, -0.841624677)})
    Tween:Play()
end)

TeleportsSection:NewButton("Space Island", "ButtonInfo", function()
    local TweenServ = game:GetService("TweenService")
    local Tween = TweenServ:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(9, Enum.EasingStyle.Quad), {CFrame = CFrame.new(88.6860809, 5224.86816, -290.169189, -0.469373733, -4.6273637e-20, -0.882999599, 3.52852631e-20, 1, -7.11615403e-20, 0.882999599, -6.4558235e-20, -0.469373733)})
    Tween:Play()
end)

TeleportsSection:NewButton("The Twilight Island", "ButtonInfo", function()
    local TweenServ = game:GetService("TweenService")
    local Tween = TweenServ:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(9, Enum.EasingStyle.Quad), {CFrame = CFrame.new(105.493706, 11384.0908, -315.10199, -0.864303052, 4.26230102e-16, 0.502971411, -1.68081926e-17, 1, -8.763072e-16, -0.502971411, -7.65849021e-16, -0.864303052)})
    Tween:Play()
end)

TeleportsSection:NewButton("The Skylands", "ButtonInfo", function()
    local TweenServ = game:GetService("TweenService")
    local Tween = TweenServ:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(9, Enum.EasingStyle.Quad), {CFrame = CFrame.new(113.364365, 21099.0898, -327.54541, -0.81663233, 5.30199387e-08, 0.577158213, 3.80401275e-08, 1, -3.80400742e-08, -0.577158213, -9.10958509e-09, -0.81663233)})
    Tween:Play()
end)

TeleportsSection:NewButton("The Void", "ButtonInfo", function()
    local TweenServ = game:GetService("TweenService")
    local Tween = TweenServ:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(9, Enum.EasingStyle.Quad), {CFrame = CFrame.new(114.434685, 32132.0918, -325.691345, -0.145052746, 3.22937134e-15, 0.989423931, -2.34110474e-13, 1, -3.75852439e-14, -0.989423931, -2.37086338e-13, -0.145052746)})
    Tween:Play()
end)

local FarmingTab = Window:NewTab("Farming")
local FarmingSection = FarmingTab:NewSection("Farming")

FarmingSection:NewToggle("House Farm [Snowflakes]", "", function(state)
    if state then
    	game:GetService("Workspace").CurrentCamera.CameraSubject = workspace.ChristmasMap.Part
    	notify("House Snowflake Farm", "The snowflake farm is now on and working", 5)
    	task.wait(0.4)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/15rih/Random-Scripts/main/BubbleGumSim_SnowflakeAutofarm.lua", true))()
    else
        notify("Leaving game to turn off", "", 5)
        wait(14)
        game:Shutdown()
    end
end)

local CreditsTab = Window:NewTab("Credits")
local CreditsSection = CreditsTab:NewSection("Made by fortunatesouls#8803 / 15rih#7746")
