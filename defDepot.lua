local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DefDepot HUB", "Ocean")

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

        local Others = Window:NewTab("Others")
        local OthersSection = Others:NewSection("Others")

        OthersSection:NewButton("Infinite Yield", "FE CMDS", function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
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
        
        OthersSection:NewKeybind("Hide UI", "Change Keycode if you want.", Enum.KeyCode.LeftShift, function()
            Library:ToggleUI()
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




