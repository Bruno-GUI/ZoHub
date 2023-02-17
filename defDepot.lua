local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DefDepot HUB", "Ocean")

    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
   
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

    local Misc = Window:NewTab("Misc")     
    local MiscSection = Misc:NewSection("Misc")

    local function codeInput(code)
        game:GetService("ReplicatedStorage").Events.CheckCode:InvokeServer(code)
    end
    
    --muda teu misc button
    local miscCodes = {"*%@?", "bingchillin", "65M!", "300kFAVE", "festiveTime", "snowsnosns", "60M!", "DD2", "winteriscoming", "candy", "corn", "soonTM", "tags?!", "redYELLOWred", "spamspam", "settingsnoway", "ty4100k", "Ascensions!", "gaming", "ascend?", "killALLpls", "zoooom", "worldWIDE", "SUPERCHAT", "tahc labolg", "thatswild", "token?", "wal", "FONUFO", "O_o", "ZaP", "speeeed", "daily", "spooky", "bugcatcher", "69"} -- bota o resto dos codes
    MiscSection:NewButton("Redeem All Codes", "....", function()
        for _, code in ipairs(miscCodes) do
            codeInput(code)
        end
    end)