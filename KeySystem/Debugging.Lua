-- I made a gui first with destroy 5 second so i can i change position easily since making gui mobile is hard
--then i made Screen Gui to Text button each Gui have it own easing it took me hour in this since the image of url when i change size of image it slso change the position since the roblox image bug still there it messed the image Position when i change tr size 
-- i made each gui each own easing reason is if i parent the textbutton to image the easing gonna messed up the easing of imsge gonna stop in middle of screen while the easing textchat is on top of image gui 
local function createImage(assetId, imageSize, startPos, endPos)
    local gui = Instance.new("ScreenGui")
    gui.Name = "AssetViewerGui"
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = imageSize
    imageLabel.Position = startPos
    imageLabel.AnchorPoint = Vector2.new(0.5, 0)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Parent = gui

    local function showAssetThumbnail()
        local thumbnailUrl = string.format("https://www.roblox.com/asset-thumbnail/image?assetId=%s&width=420&height=420&format=png", assetId)
        imageLabel.Image = thumbnailUrl
        imageLabel:TweenPosition(endPos, "Out", "Quad", 1, true, function()
            wait(5)
            imageLabel:Destroy()
        end)
    end

    showAssetThumbnail()
end

local assetId = "16324266331"
local imageSize3 = UDim2.new(0, 600, 0, 300)
local startPos3 = UDim2.new(0, 400, 0, -450)
local endPos3 = UDim2.new(0, 400, 0, 0)

createImage(assetId, imageSize3, startPos3, endPos3)


Check key

local assetId = "16324370970"
local imageSize = UDim2.new(0, 350, 0, 300) -- Size of the image

local startPos = UDim2.new(0, 400, 0, 100) -- Starting position (off-screen at the top)
local endPos = UDim2.new(0, 400, 0, 70) -- Ending position (where easing stops)

local gui = Instance.new("ScreenGui")
gui.Name = "AssetViewerGui"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = imageSize
imageLabel.Position = startPos
imageLabel.AnchorPoint = Vector2.new(0.5, 0)
imageLabel.BackgroundTransparency = 1
imageLabel.Parent = gui

local function showAssetThumbnail(assetId)
    local thumbnailUrl = string.format("https://www.roblox.com/asset-thumbnail/image?assetId=%s&width=420&height=420&format=png", assetId)
    imageLabel.Image = thumbnailUrl
    imageLabel:TweenPosition(endPos, "Out", "Quad", 1, true, function()
        wait(5)
        imageLabel:Destroy()
    end)
end

showAssetThumbnail(assetId)


-- after that i made a notification in advance error


local function createImage(assetId, imageSize, startPos, endPos, destroyDelay)
    local gui = Instance.new("ScreenGui")
    gui.Name = "AssetViewerGui"
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, imageSize.X, 0, imageSize.Y)
    frame.Position = startPos
    frame.AnchorPoint = Vector2.new(0, 0.5)
    frame.BackgroundTransparency = 1
    frame.Parent = gui

    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.new(0, imageSize.X, 0, imageSize.Y)
    imageLabel.Position = UDim2.new(0, 0, 0, 0)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Image = string.format("https://www.roblox.com/asset-thumbnail/image?assetId=%s&width=420&height=420&format=png", assetId)
    imageLabel.Parent = frame

    frame:TweenPosition(endPos, "Out", "Quad", 1, true)

    wait(destroyDelay)
    gui:Destroy()
end

local assetId3 = "16325887867"
local imageSize3 = Vector2.new(300, 250)
local startPos3 = UDim2.new(0, 700, 0, 280)
local endPos3 = UDim2.new(0, 530, 0, 280)
local destroyDelay = 2.5

createImage(assetId3, imageSize3, startPos3, endPos3, destroyDelay)
--Position - X: 0, 634, Y: 0, 269 -- i save this position 

local assetId3 = "16325887867"
local imageSize3 = Vector2.new(300, 250)
local startPos3 = UDim2.new(0, 700, 0, 280)
local endPos3 = UDim2.new(0, 530, 0, 280)
local destroyDelay = 2.5

createImage(assetId3, imageSize3, startPos3, endPos3, destroyDelay)

-- and after than i made Key system no Which check the password 

local function createImage(assetId, imageSize, startPos, endPos)
    local gui = Instance.new("ScreenGui")
    gui.Name = "AssetViewerGui"
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = imageSize
    imageLabel.Position = startPos
    imageLabel.AnchorPoint = Vector2.new(0.5, 0)
    imageLabel.BackgroundTransparency = 1
    imageLabel.ImageColor3 = Color3.new(0, 0, 0)
    imageLabel.Parent = gui

    local function showAssetThumbnail()
        local thumbnailUrl = string.format("https://www.roblox.com/asset-thumbnail/image?assetId=%s&width=420&height=420&format=png", assetId)
        imageLabel.Image = thumbnailUrl
        imageLabel:TweenPosition(endPos, "Out", "Quad", 1, true)
    end

    showAssetThumbnail()
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
    local gui = Instance.new("ScreenGui")
    gui.Name = "AssetViewerGui"
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local verifyButton = Instance.new("TextButton")
    verifyButton.Size = buttonSize
    verifyButton.Position = buttonPos
    verifyButton.AnchorPoint = Vector2.new(0.5, 0)
    verifyButton.Text = buttonText
    verifyButton.TextColor3 = Color3.new(1, 1, 1)
    verifyButton.TextSize = 14
    verifyButton.Parent = gui

    verifyButton.MouseButton1Click:Connect(function()
        if textBox.Text == "123456789" then
            print("Correct password!")
        else
            print("Wrong password!")
        end
    end)

    return verifyButton
end

local assetId = "16309357700"
local imageSize3 = UDim2.new(0, 600, 0, 300)
local startPos3 = UDim2.new(0, 400, 0, -450)
local endPos3 = UDim2.new(0, 400, 0, 0)
local textBoxSize = UDim2.new(0, 200, 0, 50)
local buttonSize = UDim2.new(0, 120, 0, 50)
local buttonPos = UDim2.new(0, 400, 0, 189)

createImage(assetId, imageSize3, startPos3, endPos3)
local textBox = createTextBox(textBoxSize, startPos3 + UDim2.new(0, 0, 0, 200), endPos3 + UDim2.new(0, 0, 0, 127))
createVerifyButton(buttonSize, buttonPos, "Verify", textBox)

--and more i lose some part of code in Note And this i did a lot of more but for no reason it Dissapear in note but i put all code st once at put all local Variable to top so i can read it easily and i gonna add more and make the gui more beautiful 
