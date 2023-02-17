local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DefDepot HUB", "Ocean")

    local Tab = Window:NewTab("Main")
    local MainSection = Tab:NewSection("Main")
   
   
    MainSection:NewButton("Infinite Yield", "FE CMDS", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
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