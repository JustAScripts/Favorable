local nahiko = "Eru" -- put your Link like linkvertise inside double quotes 
local eru = "Pass" -- Password 

local player = game.Players.LocalPlayer

local ntfy2Label = Instance.new("TextLabel")
local iReFrame = Instance.new("Frame")
local NAhFrame = Instance.new("Frame")
local NAh = Instance.new("ScreenGui")
local NAhButton = Instance.new("TextButton")
local wXC = Instance.new("ScreenGui")
local wXCFrame = Instance.new("Frame")
local FELFrame = Instance.new("TextButton")
local FEL = Instance.new("ScreenGui")
local ntfyLabel = Instance.new("TextLabel")
local passwordTextBox = Instance.new("TextBox")
local ntfy2Frame = Instance.new("Frame")
local ntfyFrame = Instance.new("Frame")
local iRe = Instance.new("ScreenGui")
local ntfy = Instance.new("ScreenGui")
local ntfy2 = Instance.new("ScreenGui")

iRe.Name = "JustAScript"
iRe.Parent = player.PlayerGui

iReFrame.Size = UDim2.new(0, 340, 0, 230)
iReFrame.Position = UDim2.new(0, 246, 0, 57)
iReFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
iReFrame.Parent = iRe

NAh.Name = "JustAScript"
NAh.Parent = player.PlayerGui
NAhFrame.Size = UDim2.new(0, 150, 0, 40)
NAhFrame.Position = UDim2.new(0, 424, 0, 225)
NAhFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
NAhFrame.BorderColor3 = Color3.fromRGB(23, 23, 23)
NAhFrame.Parent = NAh

NAhButton.Text = "Get Key"
NAhButton.Size = UDim2.new(1, 0, 1, 0)
NAhButton.Position = UDim2.new(0, 0, 0, 0)
NAhButton.TextColor3 = Color3.new(1, 1, 1)
NAhButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
NAhButton.Parent = NAhFrame

NAhButton.MouseButton1Click:Connect(function()
	setclipboard(nahiko) 
end)

wXC.Name = "JustAScript"
wXC.Parent = player.PlayerGui
wXCFrame.Size = UDim2.new(0, 310, 0, 40)
wXCFrame.Position = UDim2.new(0, 263, 0, 175)
wXCFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
wXCFrame.Parent = wXC

passwordTextBox.PlaceholderText = "Enter password"
passwordTextBox.Text = ""
passwordTextBox.Size = UDim2.new(1, 0, 1, 0)
passwordTextBox.Position = UDim2.new(0, 0, 0, 0)
passwordTextBox.TextColor3 = Color3.new(1, 1, 1)
passwordTextBox.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
passwordTextBox.Parent = wXCFrame

FEL.Name = "JustAScript"
FEL.Parent = player.PlayerGui
FELFrame.Size = UDim2.new(0, 150, 0, 40)
FELFrame.Position = UDim2.new(0, 263, 0, 225)
FELFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
FELFrame.Text = "Check Key"
FELFrame.TextColor3 = Color3.new(1, 1, 1)
FELFrame.Parent = FEL

FELFrame.MouseButton1Click:Connect(function()
	local password = passwordTextBox.Text
	if password == eru then
		ntfy.Name = "ntfy"
		ntfy.Parent = player.PlayerGui

		ntfyFrame.Size = UDim2.new(0, 130, 0, 50)
		ntfyFrame.Position = UDim2.new(0.5, -77, 0, 0)
		ntfyFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		ntfyFrame.Parent = ntfy

		ntfyLabel.Text = "Correct Key"
		ntfyLabel.Size = UDim2.new(1, 0, 1, 0)
		ntfyLabel.Position = UDim2.new(0, 0, 0, 0)
		ntfyLabel.TextColor3 = Color3.new(1, 1, 1)
		ntfyLabel.BackgroundTransparency = 1
		ntfyLabel.Parent = ntfyFrame

		local startPos = UDim2.new(0, 351, 0, 0)
		local endPos = UDim2.new(0, 351, 0, 79)

		local function tweenGui()
			local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
			local tween = game:GetService("TweenService"):Create(ntfyFrame, tweenInfo, {Position = endPos})
			tween:Play()
			tween.Completed:Connect(function()
				wait(3)
				ntfy:Destroy()
			end)
		end
		tweenGui()

for i = 1,10 do		game.Players.LocalPlayer.PlayerGui:FindFirstChild("JustAScript"):Destroy()
end

		print("Loadstring Script") -- Remove this print and this explanation put your Script
	else
		ntfy2.Name = "ntfy2"
		ntfy2.Parent = player.PlayerGui

		ntfy2Frame.Size = UDim2.new(0, 130, 0, 50)
		ntfy2Frame.Position = UDim2.new(0.5, -77, 0, 0)
		ntfy2Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		ntfy2Frame.Parent = ntfy2

		ntfy2Label.Text = "Wrong Key"
		ntfy2Label.Size = UDim2.new(1, 0, 1, 0)
		ntfy2Label.Position = UDim2.new(0, 0, 0, 0)
		ntfy2Label.TextColor3 = Color3.new(1, 1, 1)
		ntfy2Label.BackgroundTransparency = 1
		ntfy2Label.Parent = ntfy2Frame

		local startPos = UDim2.new(0, 351, 0, -300)
		local endPos = UDim2.new(0, 351, 0, 79)

		local function tweenGui()
			local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
			local tween = game:GetService("TweenService"):Create(ntfy2Frame, tweenInfo, {Position = endPos})
			tween:Play()
			tween.Completed:Connect(function()
				wait(3)
				ntfy2:Destroy()
			end)
		end
		tweenGui()
	end
end)