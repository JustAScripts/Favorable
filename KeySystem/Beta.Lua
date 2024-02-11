getgenv().Link = "Hello"
local Key = "555"

local assetId = "16324370934"
local assetId3 = "16325887867"
local assetId2 = "16324266331"
local assetId1 = "16309357700"

local function createImage(assetId, imageSize, startPos, endPos, imageColor)
    local gui = Instance.new("ScreenGui")
    gui.Name = "AssetViewerGui"
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, imageSize.X.Offset, 0, imageSize.Y.Offset)
    frame.Position = startPos
    frame.AnchorPoint = Vector2.new(0.5, 0)
    frame.BackgroundTransparency = 1
    frame.Parent = gui

    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.new(1, 0, 1, 0)
    imageLabel.Position = UDim2.new(0, 0, 0, 0)
    imageLabel.BackgroundTransparency = 1
    imageLabel.ImageColor3 = imageColor or Color3.new(1, 1, 1) 
    imageLabel.Parent = frame

    local function showAssetThumbnail(assetId)
        local thumbnailUrl = string.format("https://www.roblox.com/asset-thumbnail/image?assetId=%s&width=420&height=420&format=png", assetId)
        imageLabel.Image = thumbnailUrl
        frame:TweenPosition(endPos, "Out", "Quad", 1, true)
    end

    showAssetThumbnail(assetId)
end

local function createTextBox(textBoxSize, startPos, endPos)
    local gui = Instance.new("ScreenGui")
    gui.Name = "AssetViewerGui"
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local textBox = Instance.new("TextBox")
    textBox.Size = textBoxSize
    textBox.Position = startPos
    textBox.AnchorPoint = Vector2.new(0.5, 0)
    textBox.BackgroundTransparency = 1
    textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    textBox.TextSize = 20
    textBox.TextWrapped = true
    textBox.TextXAlignment = Enum.TextXAlignment.Center
    textBox.TextYAlignment = Enum.TextYAlignment.Center
    textBox.PlaceholderText = "Put Your Key Here"
    textBox.Parent = gui

    textBox:TweenPosition(endPos, "Out", "Quad", 1, true)

    return textBox
end

local function createVerifyButton(buttonSize, buttonPos, buttonText, textBox)
    local gui = game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("AssetViewerGui")
    if not gui then
        return
    end

    local verifyButton = Instance.new("TextButton")
    verifyButton.Size = buttonSize
    verifyButton.Position = buttonPos
    verifyButton.AnchorPoint = Vector2.new(0.5, 0)
    verifyButton.Text = buttonText
    verifyButton.TextColor3 = Color3.new(1, 1, 1)
    verifyButton.TextSize = 14
    verifyButton.BackgroundTransparency = 1
    verifyButton.Visible = true
    verifyButton.Parent = gui

    local eventConnection 
--click
    local function onClick()
        if textBox.Text == Key then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAScripts/Favorable/main/GuiGen.lua", true))()
            wait(2)

for i = 1, 5 do
    local function destroyAssetViewerGui()
        local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        local assetViewerGui = playerGui:FindFirstChild("AssetViewerGui")
        
        if assetViewerGui then
            assetViewerGui:Destroy()
        end
    end
    
    destroyAssetViewerGui()
end

        else
            local function createImage(assetId, imageSize, startPos, endPos, destroyDelay)
    local invalidGui = Instance.new("ScreenGui")
    invalidGui.Name = "Invalid"
    invalidGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, imageSize.X, 0, imageSize.Y)
    frame.Position = startPos
    frame.AnchorPoint = Vector2.new(0, 0.5)
    frame.BackgroundTransparency = 1
    frame.Parent = invalidGui

    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.new(0, imageSize.X, 0, imageSize.Y)
    imageLabel.Position = UDim2.new(0, 0, 0, 0)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Image = string.format("https://www.roblox.com/asset-thumbnail/image?assetId=%s&width=420&height=420&format=png", assetId)
    imageLabel.Parent = frame

    frame:TweenPosition(endPos, "Out", "Quad", 0.5, true)

    wait(destroyDelay)
    invalidGui:Destroy()
end

local imageSize3 = Vector2.new(300, 250)
local startPos3 = UDim2.new(0, 700, 0, 280)
local endPos3 = UDim2.new(0, 530, 0, 280)
local destroyDelay = 3

createImage(assetId3, imageSize3, startPos3, endPos3, destroyDelay)
            -- Shake effect
            local originalPosition = textBox.Position
            local shakeIntensity = 10
            local duration = 0.5
            local startTime = tick() 
          
            if eventConnection then
                eventConnection:Disconnect()
            end
            
            eventConnection = game:GetService("RunService").RenderStepped:Connect(function()
                local elapsedTime = tick() - startTime
                if elapsedTime < duration then
                    local offsetX = math.sin(elapsedTime * 50) * shakeIntensity * (1 - elapsedTime / duration)
                    textBox.Position = UDim2.new(originalPosition.X.Scale, originalPosition.X.Offset + offsetX, originalPosition.Y.Scale, originalPosition.Y.Offset)
                else
                    textBox.Position = originalPosition
                    eventConnection:Disconnect() -- Disconnect the event after the shake is finished
                end
            end)
        end
    end

    verifyButton.MouseButton1Click:Connect(onClick)

    return verifyButton
end

local imageSize3 = UDim2.new(0, 600, 0, 300)
local startPos3 = UDim2.new(0, 400, 0, -450)
local endPos3 = UDim2.new(0, 400, 0, 0)
local textBoxSize = UDim2.new(0, 200, 0, 50)
local buttonSize = UDim2.new(0, 120, 0, 50)
local buttonPos = UDim2.new(0, 400, 0, 189)

local imageSize2 = UDim2.new(0, 345, 0, 295)
local startPos2 = UDim2.new(0, 408, 0, 100)
local endPos2 = UDim2.new(0, 408, 0,85)

createImage(assetId1, imageSize3, startPos3, endPos3, Color3.new(0, 0, 0)) -- AssetID 1 set to black
createImage(assetId2, imageSize2, startPos2, endPos2)

local textBox = createTextBox(textBoxSize, startPos3 + UDim2.new(0, 0, 0, 200), endPos3 + UDim2.new(0, 0, 0, 127))
createVerifyButton(buttonSize, buttonPos, "Verify", textBox)

--3rd Part Get Key

local imageSize1 = UDim2.new(0, 345, 0, 295)
local startPos1 = UDim2.new(0, 408, 0, 200)
local endPos1 = UDim2.new(0, 408, 0, 160)

local gui = Instance.new("ScreenGui")
gui.Name = "AssetViewerGui"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = imageSize1
imageLabel.Position = startPos1
imageLabel.AnchorPoint = Vector2.new(0.5, 0)
imageLabel.BackgroundTransparency = 1
imageLabel.Parent = gui
-- aaaaaaaaaaaaaaaaaa
local function showAssetThumbnail(assetId)
    local thumbnailUrl = string.format("https://www.roblox.com/asset-thumbnail/image?assetId=%s&width=420&height=420&format=png", assetId)
    imageLabel.Image = thumbnailUrl
    imageLabel:TweenPosition(endPos1, "Out", "Quad", 1, true, function()        
    end)
end

showAssetThumbnail(assetId)

local function createVisibleButton(position, size, text)
    local gui = Instance.new("ScreenGui")
    gui.Name = "VisibleButtonGui"
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 190, 0, 65)
    button.Position = position
    button.AnchorPoint = Vector2.new(0.5, 0.5)
    button.BackgroundTransparency = 100
    button.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    button.BorderSizePixel = 0
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 14
    button.Font = Enum.Font.SourceSans
    button.Visible = true 
    button.AutoButtonColor = true 
    button.Parent = gui

    
    button.MouseButton1Click:Connect(function()
        setclipboard(getgenv().Link)
    end)
end  --aaaaaaaaaaaaaaaaaaaaa

local buttonPosition = UDim2.new(0, 393, 0, 299)
local buttonSize = Vector2.new(100, 50)
local buttonText = ""

createVisibleButton(buttonPosition, buttonSize, buttonText)
