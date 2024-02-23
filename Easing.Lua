local player = game.Players.LocalPlayer
local lSD = Instance.new("ScreenGui")
lSD.Name = "JustAScript"
lSD.Parent = player.PlayerGui
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

--// Instances 
local RejoinGui = Instance.new("ScreenGui")
local RejoinLabel = Instance.new("TextLabel")
local RejoinFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local FailedLabel = Instance.new("TextLabel")
local FailedFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UICorner = Instance.new("UICorner")
local center = Instance.new("TextButton")
local UICornerCenter = Instance.new("UICorner")
local right = Instance.new("TextButton")
local left = Instance.new("TextButton")
local UICornerLeft = Instance.new("UICorner")
local UICornerRight = Instance.new("UICorner")
local above = Instance.new("TextButton") 
local UICornerAbove = Instance.new("UICorner")
local Below = Instance.new("TextButton") 
local UICornerBelow = Instance.new("UICorner")
local LookingFrame = Instance.new("Frame")
local LookingLabel = Instance.new("TextLabel")
local CookingFrame = Instance.new("Frame")
local CookingLabel = Instance.new("TextLabel")

--//usleess things

local buttonSize = UDim2.new(0, 60, 0, 60)

center.Size = buttonSize
center.Position = UDim2.new(0, 373, 0, -9)
center.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
center.BorderSizePixel = 2
center.BorderColor3 = Color3.new(1, 1, 1)
center.Parent = lSD

UICornerCenter.CornerRadius = UDim.new(1, 0)
UICornerCenter.Parent = center

right.Size = buttonSize
right.Position = UDim2.new(0, 1000, 0, 141) 
right.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
right.BorderSizePixel = 2
right.BorderColor3 = Color3.new(1, 1, 1)
right.Parent = lSD

UICornerRight.CornerRadius = UDim.new(1, 0)
UICornerRight.Parent = right

left.Size = buttonSize
left.Position = UDim2.new(0, -600, 0, 141) 
left.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
left.BorderSizePixel = 2
left.BorderColor3 = Color3.new(1, 1, 1)
left.Parent = lSD

UICornerLeft.CornerRadius = UDim.new(1, 0)
UICornerLeft.Parent = left

above.Size = buttonSize
above.Position = UDim2.new(0, 373, 0, 999) 
above.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
above.BorderSizePixel = 2
above.BorderColor3 = Color3.new(1, 1, 1)
above.Parent = lSD

UICornerAbove.CornerRadius = UDim.new(1, 0)
UICornerAbove.Parent = above

Below.Size = buttonSize
Below.Position = UDim2.new(0, 373, 0, 999) 
Below.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Below.BorderSizePixel = 2
Below.BorderColor3 = Color3.new(1, 1, 1)
Below.Parent = lSD

UICornerBelow.CornerRadius = UDim.new(1, 0)
UICornerBelow.Parent = Below

local TweenService = game:GetService("TweenService")
--Sux

local isCenterUp = false
local isRightMoved = false
local isLeftMoved = false

center.MouseButton1Click:Connect(function()
    isCenterUp = not isCenterUp
    local targetPositionCenter = isCenterUp and UDim2.new(0, 373, 0, 141) or UDim2.new(0, 373, 0, -9)
    
    local tweenInfoCenter = TweenInfo.new(
        1,
        Enum.EasingStyle.Quint,
        Enum.EasingDirection.InOut
    )
    
    local tweenCenter = TweenService:Create(center, tweenInfoCenter, {Position = targetPositionCenter})
    tweenCenter:Play()
    
    local targetPositionRight = isCenterUp and UDim2.new(0, 444, 0, 141) or UDim2.new(0, 1000, 0, 141)
    local tweenInfoRight = TweenInfo.new(
        1,
        Enum.EasingStyle.Quint,
        Enum.EasingDirection.InOut
    )
    
    local tweenRight = TweenService:Create(right, tweenInfoRight, {Position = targetPositionRight})
    tweenRight:Play()
    
    local targetPositionLeft = isCenterUp and UDim2.new(0, 301, 0, 141) or UDim2.new(0, -600, 0, 141)
    local tweenInfoLeft = TweenInfo.new(
        1,
        Enum.EasingStyle.Quint,
        Enum.EasingDirection.InOut
    )
    
    local tweenLeft = TweenService:Create(left, tweenInfoLeft, {Position = targetPositionLeft})
    tweenLeft:Play()
    
    local targetPositionAbove = isCenterUp and UDim2.new(0, 373, 0, 70) or UDim2.new(0, 373, 0, -999)
    local tweenInfoAbove = TweenInfo.new(
        1,
        Enum.EasingStyle.Quint,
        Enum.EasingDirection.InOut
    )
    
    local tweenAbove = TweenService:Create(above, tweenInfoAbove, {Position = targetPositionAbove})
    tweenAbove:Play()
    
    local targetPositionBelow = isCenterUp and UDim2.new(0, 373, 0, 212) or UDim2.new(0, 373, 0, 999)
    local tweenInfoBelow = TweenInfo.new(
        1,
        Enum.EasingStyle.Quint,
        Enum.EasingDirection.InOut
    )
    
    local tweenBelow = TweenService:Create(Below, tweenInfoBelow, {Position = targetPositionBelow})
    tweenBelow:Play()
end)

right.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
local Looking = Instance.new("ScreenGui")
Looking.Name = "Looking For Server"
Looking.Parent = player.PlayerGui

LookingFrame.Size = UDim2.new(0, 180, 0, 60)
LookingFrame.Position = UDim2.new(0, 322, 0, -60)
LookingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
LookingFrame.BorderSizePixel = 2
LookingFrame.BorderColor3 = Color3.new(1, 1, 1)
LookingFrame.Parent = Looking

LookingLabel.Text = "Looking For Server..."
LookingLabel.Size = UDim2.new(1, 0, 1, 0)
LookingLabel.Position = UDim2.new(0, 0, 0, 0)
LookingLabel.TextColor3 = Color3.new(1, 1, 1)
LookingLabel.BackgroundTransparency = 1
LookingLabel.Parent = LookingFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.7, 0)
UICorner.Parent = LookingFrame

local TweenService = game:GetService("TweenService")

local tweenInfo = TweenInfo.new(
    1,
    Enum.EasingStyle.Quint,
    Enum.EasingDirection.Out
)

local targetPosition = UDim2.new(0, 322, 0, 229)
local tween = TweenService:Create(LookingFrame, tweenInfo, {Position = targetPosition})
tween:Play()


local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end

function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    local serverFound = false
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    serverFound = true
                    Looking:Destroy()
                    local player = game.Players.LocalPlayer
                    local Wait = Instance.new("ScreenGui")
                    Wait.Name = "JustAScript"
                    Wait.Parent = player.PlayerGui

                    local WaitFrame = Instance.new("Frame")
                    WaitFrame.Size = UDim2.new(0, 180, 0, 60)
                    WaitFrame.Position = UDim2.new(0, 322, 0, -60)
                    
                    WaitFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                    WaitFrame.BorderSizePixel = 2
                    WaitFrame.BorderColor3 = Color3.new(1, 1, 1)
                    WaitFrame.Parent = Wait

                    local WaitLabel = Instance.new("TextLabel")
                    WaitLabel.Text = "Found Server Teleporting..."
                    WaitLabel.Size = UDim2.new(1, 0, 1, 0)
                    WaitLabel.Position = UDim2.new(0, 0, 0, 0)
                    WaitLabel.TextColor3 = Color3.new(1, 1, 1)
                    WaitLabel.BackgroundTransparency = 1
                    WaitLabel.Parent = WaitFrame

                    local UICorner = Instance.new("UICorner")
                    UICorner.CornerRadius = UDim.new(0.7, 0)
                    UICorner.Parent = WaitFrame

                    local TweenService = game:GetService("TweenService")

                    local tweenInfo = TweenInfo.new(
                        1,
                        Enum.EasingStyle.Quint,
                        Enum.EasingDirection.Out
                    )

                    local targetPosition = UDim2.new(0, 322, 0, 229)
                    local tween = TweenService:Create(WaitFrame, tweenInfo, {Position = targetPosition})
                    tween:Play()

                    wait(5)

                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
    if not serverFound then
        local player = game.Players.LocalPlayer
local Cooking = Instance.new("ScreenGui")
Cooking.Name = "Cooking"
Cooking.Parent = player.PlayerGui


CookingFrame.Size = UDim2.new(0, 180, 0, 60)
CookingFrame.Position = UDim2.new(0, 322, 0, -60)
CookingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
CookingFrame.BorderSizePixel = 2
CookingFrame.BorderColor3 = Color3.new(1, 1, 1)
CookingFrame.Parent = Cooking

CookingLabel.Text = "Failed Looking For Another Server"
CookingLabel.Size = UDim2.new(1, 0, 1, 0)
CookingLabel.Position = UDim2.new(0, 0, 0, 0)
CookingLabel.TextColor3 = Color3.new(1, 1, 1)
CookingLabel.BackgroundTransparency = 1
CookingLabel.Parent = CookingFrame

UICorner.CornerRadius = UDim.new(0.7, 0)
UICorner.Parent = CookingFrame

local TweenService = game:GetService("TweenService")

local tweenInfo = TweenInfo.new(
    1,
    Enum.EasingStyle.Quint,
    Enum.EasingDirection.Out
)

local targetPosition = UDim2.new(0, 322, 0, 229)
local tween = TweenService:Create(CookingFrame, tweenInfo, {Position = targetPosition})
tween:Play()
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

Teleport() 
end)



left.MouseButton1Click:Connect(function()
    
RejoinGui.Name = "Rejoin"
RejoinGui.Parent = LocalPlayer.PlayerGui

RejoinFrame.Size = UDim2.new(0, 180, 0, 60)
RejoinFrame.Position = UDim2.new(0, 322, 0, -60)
RejoinFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
RejoinFrame.BorderSizePixel = 2
RejoinFrame.BorderColor3 = Color3.new(1, 1, 1)
RejoinFrame.Parent = RejoinGui

RejoinLabel.Text = "Rejoining...."
RejoinLabel.Size = UDim2.new(1, 0, 1, 0)
RejoinLabel.Position = UDim2.new(0, 0, 0, 0)
RejoinLabel.TextColor3 = Color3.new(1, 1, 1)
RejoinLabel.BackgroundTransparency = 1
RejoinLabel.Parent = RejoinFrame

UICorner.CornerRadius = UDim.new(0.7, 0)
UICorner.Parent = RejoinFrame

local TweenService = game:GetService("TweenService")

local tweenInfo = TweenInfo.new(
    1,
    Enum.EasingStyle.Quint,
    Enum.EasingDirection.Out
)

local targetPosition = UDim2.new(0, 322, 0, 229)
local tween = TweenService:Create(RejoinFrame, tweenInfo, {Position = targetPosition})
tween:Play()

wait(4)

local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)

    if ErrorMessage and not Success then
        local FailedGui = Instance.new("ScreenGui")
        FailedGui.Name = "Failed"
        FailedGui.Parent = LocalPlayer.PlayerGui
        
        FailedFrame.Size = UDim2.new(0, 180, 0, 60)
        FailedFrame.Position = UDim2.new(0, 322, 0, -60)
        FailedFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        FailedFrame.BorderSizePixel = 2
        FailedFrame.BorderColor3 = Color3.new(1, 1, 1)
        FailedFrame.Parent = FailedGui

        FailedLabel.Text = "Failed to Rejoin."
        FailedLabel.Size = UDim2.new(1, 0, 1, 0)
        FailedLabel.Position = UDim2.new(0, 0, 0, 0)
        FailedLabel.TextColor3 = Color3.new(1, 1, 1)
        FailedLabel.BackgroundTransparency = 1
        FailedLabel.Parent = FailedFrame
        
        UICorner.CornerRadius = UDim.new(0.7, 0)
        UICorner.Parent = FailedFrame

        local tweenInfo = TweenInfo.new(
            1,
            Enum.EasingStyle.Quint,
            Enum.EasingDirection.Out
        )

        local targetPosition = UDim2.new(0, 322, 0, 229)
        local tween = TweenService:Create(FailedFrame, tweenInfo, {Position = targetPosition})
        tween:Play()
    end
end)

coroutine.resume(Rejoin)
end)

local player = game.Players.LocalPlayer
local justAScriptGui = player.PlayerGui:FindFirstChild("JustAScript")

above.MouseButton1Click:Connect(function()
if justAScriptGui then
    justAScriptGui:Destroy()
end
end)

Below.MouseButton1Click:Connect(function()
    print("Below button clicked!")
end)

