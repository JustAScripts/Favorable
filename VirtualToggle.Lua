--// Notification

local playerName = game.Players.LocalPlayer.Name
 
local g = Instance.new("ScreenGui")
g.Name = "kura"
g.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local label = Instance.new("TextLabel", g)
label.Text = "Just A Script"
label.Size = UDim2.new(0, 200, 0, 50)
label.Position = UDim2.new(0.5, -100, 1, -50)
label.BackgroundColor3 = Color3.new(0, 0, 0)
label.TextColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 0.5

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 7)
corner.Parent = label

local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = game:GetService("TweenService"):Create(label, tweenInfo, {Position = UDim2.new(0.5, -100, 0.9, -25)})
tween:Play()

wait(2)

--// Toggle

local guiToggle = Instance.new("ScreenGui")
guiToggle.Name = "ToggleGui"
guiToggle.Parent = game:GetService("CoreGui")

local Butt = Instance.new("TextButton")
Butt.Name = "ToggleButton"
Butt.Size = UDim2.new(0, 40, 0, 40)
Butt.Position = UDim2.new(0, 10, 0, 10)
Butt.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Butt.Parent = guiToggle

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0,7)
Corner.Parent = Butt

local Tog = Instance.new("TextLabel")
Tog.Size = UDim2.new(1, 0, 1, 0)
Tog.Position = UDim2.new(0, 0, 0, 0)
Tog.BackgroundTransparency = 1
Tog.TextColor3 = Color3.new(1, 1, 1)
Tog.Text = "Toggle"
Tog.Font = Enum.Font.SourceSans
Tog.TextSize = 14
Tog.Parent = Butt

Butt.MouseButton1Click:Connect(function()
    keypress(key)
end)
Butt.Draggable = true 
    wait(4)
          label:Destroy()

--// Anti Afk

spawn(function()
    local VirtualUser = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end)
