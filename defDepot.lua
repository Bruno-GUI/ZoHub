local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local colors = {
    SchemeColor = Color3.fromHex("a419e9"), -- SectionColor
    Background = Color3.fromHex("1b071e"), --1b071e ...
    Header = Color3.fromHex("2a062d"),
    TextColor = Color3.fromHex("FFFFFF"),
    ElementColor = Color3.fromHex("2a062d")
}

local Window = Library.CreateLib("ZoHub", colors)

    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
   

        MainSection:NewToggle("AutoFight Gamepass", "This give you autofight pass.", function(state)
            if state then
                game:GetService("Players").LocalPlayer:WaitForChild("Info"):WaitForChild("Gamepasses"):WaitForChild("Auto").Value = true
                local player = game.Players.LocalPlayer
               --[[ _G.Active = true

                while (_G.Active)
                do task.wait(1)
                local ohString1 = "spawn"
                local ohBoolean2 = false
                game:GetService("ReplicatedStorage").Events.StartStage:FireServer(ohString1, ohBoolean2)
                end]]
            else
                game:GetService("Players").LocalPlayer:WaitForChild("Info"):WaitForChild("Gamepasses"):WaitForChild("Auto").Value = false
                local player = game.Players.LocalPlayer
               --[[ _G.Active = false

                while (_G.Active)
                do task.wait(1)
                local ohString1 = "spawn"
                local ohBoolean2 = false
                game:GetService("ReplicatedStorage").Events.StartStage:FireServer(ohString1, ohBoolean2)
                end]]
            end
        end)

        MainSection:NewButton("Shinify Gamepass", "More chance on shiny when rebirth.", function()
            game:GetService("Players").LocalPlayer:WaitForChild("Info"):WaitForChild("Gamepasses"):WaitForChild("Shiny").Value = true
            local player = game.Players.LocalPlayer
        end)

        MainSection:NewButton("AutoCrate", "Bring all crates to you.", function()
            local player = game.Players.LocalPlayer
            for i,p in pairs(game.Workspace:GetChildren()) do
              if p.Name == "Crate" then
                  p.CanCollide = false
                  p.Position = player.Character.HumanoidRootPart.Position
              end
            end
            
            workspace.ChildAdded:Connect(function(child)
            if child.Name == "Crate" then
                  child.CanCollide = false
                  child.Position = player.Character.HumanoidRootPart.Position
              end
            end)
            
            spawn(function()
            while wait(15) do
            for i,p in pairs(game.Workspace:GetChildren()) do
              if p.Name == "Crate" then
                  p.CanCollide = false
                  p.Position = player.Character.HumanoidRootPart.Position
            end
            end
            end
            end)   
        end)


        
            local Teleports = { 
            Blue = CFrame.new(374.989014, 14.1000004, -19.5510006, -0.998631716, 0, 0.0522932447, 0, 1, 0, -0.0522932447, 0, -0.998631716),
            Green = CFrame.new(319.837006, 29.1000004, -179.973007, -0.961250067, 0, -0.275678426, 0, 1, 0, 0.275678426, 0, -0.961250067),
            Orange = CFrame.new(-62.6419983, 31.1000004, 350.268005, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002),
            Purple = CFrame.new(-74.4089966, 32.0999985, -300.610992, 0, 0, -1, 0, 1, 0, 1, 0, 0),
            Red = CFrame.new(-262.830994, 27.1000004, -86.0090027, 0.970287263, -0, -0.241955817, 0, 1, -0, 0.241955817, 0, 0.970287263),
            Yellow = CFrame.new(-249.050003, 25.1000004, 136.837997, 0.965929627, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, 0.965929627),
        }
        local tpArray = {} 
        for i,v in next, Teleports do
            tpArray[#tpArray + 1] = i
        end
        
    local tping = Window:NewTab("Teleport's")
    local tpingSection = tping:NewSection("Teleport's")
        
        tpingSection:NewDropdown("Teams", "...", tpArray, function(SelectedLocation)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Teleports[SelectedLocation]
        end)        

        tpingSection:NewButton("Trader", "...", function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(117, -23, 229)
        end)

        tpingSection:NewButton("Lobby", "Leaderboards", function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12, 14, -1)
        end)

        tpingSection:NewButton("Hide yourself", "...", function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-422, 20, 513)
        end) 


        local Miscs = Window:NewTab("Misc")     
        local MiscsSection = Miscs:NewSection("Misc")

        local function codeInput(code)
            game:GetService("ReplicatedStorage").Events.CheckCode:InvokeServer(code)
        end
    
        
        local miscCodes = {"*%@?", "bingchillin", "65M!", "300kFAVE", "festiveTime", "snowsnosns", "60M!", "DD2", "winteriscoming", "candy", "corn", "soonTM", "tags?!", "redYELLOWred", "spamspam", "settingsnoway", "ty4100k", "Ascensions!", "gaming", "ascend?", "killALLpls", "zoooom", "worldWIDE", "SUPERCHAT", "tahc labolg", "thatswild", "token?", "wal", "FONUFO", "O_o", "ZaP", "speeeed", "daily", "spooky", "bugcatcher", "69"}
        MiscsSection:NewButton("Redeem All Codes", "....", function()
            for _, code in ipairs(miscCodes) do
                codeInput(code)
            end
        end)

        local Others = Window:NewTab("Others")
        local OthersSection = Others:NewSection("Others")
    
            OthersSection:NewButton("Infinite Yield", "...", function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
            end)

            OthersSection:NewButton("CMD-X", "...", function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source'))()
            end)
    
            OthersSection:NewButton("Esp Crates", "Put a dot in crates.", function()
                game.Workspace.ChildAdded:connect(function(Thing)
                    if Thing.Name == 'Crate' then
                    local x = Instance.new('BillboardGui',Thing)
                    x.AlwaysOnTop = true
                    x.Size = UDim2.new(1,0,1,0)
                    local b = Instance.new('Frame',x)
                    b.Size = UDim2.new(1,0,1,0)
                    x.Adornee = Thing
                    b.BackgroundColor3 = Color3.new(1,0,0)
                    end
                end) 
            end)
            
            OthersSection:NewButton("BoomBox Pass (Client Only)", "...", function()
                game:GetService("Players").LocalPlayer:WaitForChild("Info"):WaitForChild("Gamepasses"):WaitForChild("BoomBox").Value = true
                local player = game.Players.LocalPlayer
            end)

            OthersSection:NewKeybind("Hide UI", "Change Keycode if you want.", Enum.KeyCode.LeftShift, function()
                Library:ToggleUI()
            end)

            OthersSection:NewLabel("Scripts made by: Zooh#0001")



