--[[
 ▄▄▄██▀▀▀█    ██   ██████ ▄▄▄█████▓    ▄▄▄           ██████  ▄████▄   ██▀███   ██▓ ██▓███  ▄▄▄█████▓
   ▒██   ██  ▓██▒▒██    ▒ ▓  ██▒ ▓▒   ▒████▄       ▒██    ▒ ▒██▀ ▀█  ▓██ ▒ ██▒▓██▒▓██░  ██▒▓  ██▒ ▓▒
   ░██  ▓██  ▒██░░ ▓██▄   ▒ ▓██░ ▒░   ▒██  ▀█▄     ░ ▓██▄   ▒▓█    ▄ ▓██ ░▄█ ▒▒██▒▓██░ ██▓▒▒ ▓██░ ▒░
▓██▄██▓ ▓▓█  ░██░  ▒   ██▒░ ▓██▓ ░    ░██▄▄▄▄██      ▒   ██▒▒▓▓▄ ▄██▒▒██▀▀█▄  ░██░▒██▄█▓▒ ▒░ ▓██▓ ░ 
 ▓███▒  ▒▒█████▓ ▒██████▒▒  ▒██▒ ░     ▓█   ▓██▒   ▒██████▒▒▒ ▓███▀ ░░██▓ ▒██▒░██░▒██▒ ░  ░  ▒██▒ ░ 
 ▒▓▒▒░  ░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░  ▒ ░░       ▒▒   ▓▒█░   ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒▓ ░▒▓░░▓  ▒▓▒░ ░  ░  ▒ ░░   
 ▒ ░▒░  ░░▒░ ░ ░ ░ ░▒  ░ ░    ░         ▒   ▒▒ ░   ░ ░▒  ░ ░  ░  ▒     ░▒ ░ ▒░ ▒ ░░▒ ░         ░    
 ░ ░ ░   ░░░ ░ ░ ░  ░  ░    ░           ░   ▒      ░  ░  ░  ░          ░░   ░  ▒ ░░░         ░      
 ░   ░     ░           ░                    ░  ░         ░  ░ ░         ░      ░                    
                                                            ░        
]]--
local K = (game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart") local T = string.format("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(%s)", tostring(K.CFrame)) local X = T .. "\n\n-- Generated Using 'Gray No Cat'. Support us by joining our discord: https://discord.com/invite/9wtZJrVjWR" setclipboard(X)
