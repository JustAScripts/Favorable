local Libr = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Wind = Libr:NewWindow("SkyBlock Legacy's [Beta]")
local Kill = Wind:NewSection("Automate")

local UserID = game:GetService("Players").LocalPlayer.UserId
local clip = setclipboard or toclipboard 

getgenv().ops = false
getgenv().a = false
getgenv().tree = false
getgenv().Rock = false
getgenv().totem = false
getgenv().sped = 1

Kill:CreateTextbox("Loop Settings", function(speed)
    local numberSpeed = tonumber(speed)
    if numberSpeed then
        getgenv().sped = numberSpeed
    end
end)

Kill:CreateToggle("Auto Slime", function(Slim)
    getgenv().a = Slim
end)

local slim = {"slime", "slimePink", "slimeBlue"}

spawn(function()
    while true do
        if getgenv().a then
            for _, kil in ipairs(slim) do
                spawn(function()
                    pcall(function()
                        local args = {
                            [1] = {
                                ["hitUnit"] = workspace.Entities[kil]
                            }
                        }
                        game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.CLIENT_SWING_SWORD:InvokeServer(unpack(args))
                    end)
                end)
            end
        end
        wait(getgenv().sped)
    end
end)

-- [[ Auto Tree ]] --

Kill:CreateToggle("Auto Tree", function(ak)
    getgenv().tree = ak
end)

spawn(function()
    while true do
        if getgenv().tree then
            for i = 1, 5 do
                spawn(function()
                    pcall(function()
                        local args = {
                            [1] = {
                                ["block"] = workspace.Islands:FindFirstChild(UserID .. "-island").Blocks["tree" .. i]
                            }
                        }
                        game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.BLOCK_HIT_REQUEST:InvokeServer(unpack(args))
                    end)
                end)
            end
        end
        wait(getgenv().sped)
    end
end)

-- [[ Auto Coal, Iron, Rock ]] --

Kill:CreateToggle("Auto Rock", function(ak)
    getgenv().Rock = ak
end)

local roc = {"rockIron", "rockCoal", "rockStone"}

spawn(function()
    while true do
        if getgenv().Rock then
            for _, v in ipairs(roc) do
                spawn(function()
                    pcall(function()
                        local args = {
                            [1] = {
                                ["block"] = workspace.WildernessBlocks[v]
                            }
                        }
                        game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.BLOCK_HIT_REQUEST:InvokeServer(unpack(args))
                    end)
                end)
            end
        end
        wait(getgenv().sped)
    end
end)

-- [[ Destroy All Tall Grass in Your Island ]] --

Kill:CreateToggle("Auto TallGrass", function(grass)
    getgenv().ops = grass
end)

spawn(function()
    while true do
        if getgenv().ops then
            while true do
                local inst = workspace:FindFirstChild("tallGrass", true)
                if not inst then break end

                local args = { [1] = { ["block"] = inst } }
                pcall(function()
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.BLOCK_HIT_REQUEST:InvokeServer(unpack(args))
                end)
                wait(getgenv().sped)
            end
        end
        wait(getgenv().sped)
    end
end)

-- [[ Totem Rock ]] --

local totem = {"rockCoal", "rockIron", "rockStone"}

Kill:CreateToggle("Auto Totem", function(oke)
    getgenv().totem = oke
end)

for _, v in ipairs(totem) do
    spawn(function()
        while true do
            if getgenv().totem then
                local success, err = pcall(function()
                    local args = {
                        [1] = {
                            ["block"] = workspace.Islands:FindFirstChild(UserID .."-island").Blocks[v]
                        }
                    }
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.BLOCK_HIT_REQUEST:InvokeServer(unpack(args))
                end)
                if not success then
                    warn(err) -- little Debugging 
                end
            end
            wait(getgenv().sped)
        end
    end)
end

-- [[ another Script Section ]] --

local okp = Wind:NewSection("etcetra")

okp:CreateButton("Remote Spy", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RS/main/SimpleSpyMobile"))()
Notify("SimpleSpy Loaded")
end)

okp:CreateButton("Infinite Yield", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

okp:CreateButton("Dark Dex", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
Notify("Dex V3 Loaded")
end)

-- [[ Credits Section ]] --

local CrdSec = Wind:NewSection("Credit")

CrdSec:CreateButton("Discord", function()
    clip("https://discord.com/invite/GRFYMNEE4d")
end)

CrdSec:CreateButton("Fourth Petal ❇️", function()
    clip("https://discord.com/invite/GRFYMNEE4d")
end)
