local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DefDepot HUB", "Ocean")

    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
   
        MainSection:NewButton("Infinite Yield", "FE CMDS", function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end)

        MainSection:NewButton("Esp Crates", "Put a red dot in crates. JUST CLICK THIS BUTTON ONE TIME!", function()
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

        MainSection:NewToggle("AutoCrate", "You'll probably get banned if someone caught you. :)", function(state)
            if state then
                _G.Active = true

                while (_G.Active)
                do task.wait(2)
                local player = game:GetService("Players").LocalPlayer
                local character = player.Character
                character:WaitForChild("HumanoidRootPart").CFrame = game.workspace.Crate.CFrame
                end        
            else
                _G.Active = false

                while (_G.Active)
                do task.wait(1)
                local player = game:GetService("Players").LocalPlayer
                local character = player.Character
                character:WaitForChild("HumanoidRootPart").CFrame = game.workspace.Crate.CFrame
                end
            end
        end)

        MainSection:NewToggle("AutoFight", "This enable auto fight or disable when off.", function(state)
            if state then
                _G.Active = true

                while (_G.Active)
                do task.wait(1)
                local ohString1 = "spawn"
                local ohBoolean2 = false
                game:GetService("ReplicatedStorage").Events.StartStage:FireServer(ohString1, ohBoolean2)
                end
            else
                _G.Active = false

                while (_G.Active)
                do task.wait(1)
                local ohString1 = "spawn"
                local ohBoolean2 = false
                game:GetService("ReplicatedStorage").Events.StartStage:FireServer(ohString1, ohBoolean2)
                end
            end
        end)

    local Miscs = Window:NewTab("Misc")     
    local MiscsSection = Miscs:NewSection("Misc")

    local function codeInput(code)
        game:GetService("ReplicatedStorage").Events.CheckCode:InvokeServer(code)
    end
    
    --muda teu misc button
    local miscCodes = {"*%@?", "bingchillin", "65M!", "300kFAVE", "festiveTime", "snowsnosns", "60M!", "DD2", "winteriscoming", "candy", "corn", "soonTM", "tags?!", "redYELLOWred", "spamspam", "settingsnoway", "ty4100k", "Ascensions!", "gaming", "ascend?", "killALLpls", "zoooom", "worldWIDE", "SUPERCHAT", "tahc labolg", "thatswild", "token?", "wal", "FONUFO", "O_o", "ZaP", "speeeed", "daily", "spooky", "bugcatcher", "69"} -- bota o resto dos codes
    MiscsSection:NewButton("Redeem All Codes", "....", function()
        for _, code in ipairs(miscCodes) do
            codeInput(code)
        end
    end)

    local Others = Window:NewTab("Others")
    local OthersSection = Others:NewSection("Others")

    OthersSection:NewKeybind("Toggle UI off", "...", Enum.KeyCode.LeftShift, function()
        Library:ToggleUI()
    end)



