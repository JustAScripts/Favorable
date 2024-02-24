
--// original version of it loadstring(game:HttpGet(("https://raw.githubusercontent.com/TrueStrikes/redblue/main/cacc.lua")))() \\--

--// Ideas From glitchesa#2974 aka Felix trueStrike idk if i should add Redblue from here since he's name mentioned in Git And i ask him and he said he didn't make it \\--

--// Double thinking if i should leak this open source since this can be patched easily \\--

print("Bypassed CAC group Requirements:  \nhow does it work? U need to Get the ID of Group then put it in first Column of textbox after that put the Code below the first column after that step click redeem and bom u got the ugc that only exclusive for group member only")


local player = game.Players.LocalPlayer
--//Frame Screen Gui Instance
local oFJ = Instance.new("ScreenGui")
local Gwu = Instance.new("ScreenGui")
local wIl = Instance.new("ScreenGui")
local TtG = Instance.new("ScreenGui")
local oFJFrame = Instance.new("Frame")


--// Main Backround 
oFJ.Name = "JustAScript"
oFJ.Parent = player.PlayerGui
oFJFrame.Size = UDim2.new(0, 200, 0, 160)
oFJFrame.Position = UDim2.new(0, 309, 0, 81)
oFJFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
oFJFrame.BorderSizePixel = 2
oFJFrame.BorderColor3 = Color3.new(1, 1, 1)
oFJFrame.Parent = oFJ
local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 6)
Corner.Parent = oFJFrame

--// Group ID textboxz
Gwu.Name = "JustAScript"
Gwu.Parent = player.PlayerGui

local GwuFrame = Instance.new("TextBox")
GwuFrame.Size = UDim2.new(0, 160, 0, 40)
GwuFrame.Position = UDim2.new(0, 326, 0, 140)
GwuFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
GwuFrame.PlaceholderText = "UGC CODE" 
GwuFrame.PlaceholderColor3 = Color3.fromRGB(255, 255, 255) 
GwuFrame.Parent = Gwu
local Corner2 = Instance.new("UICorner")
Corner2.CornerRadius = UDim.new(0,5)
Corner2.Parent = GwuFrame

--// Code Ujicees
wIl.Name = "JustAScript"
wIl.Parent = player.PlayerGui
local wIlFrame = Instance.new("TextBox")
wIlFrame.Size = UDim2.new(0, 160, 0, 40)
wIlFrame.Position = UDim2.new(0, 326, 0, 91)
wIlFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
wIlFrame.PlaceholderText = "Group ID"
wIlFrame.PlaceholderColor3 = Color3.fromRGB(255, 255, 255) 
wIlFrame.Parent = wIl
local Corner3 = Instance.new("UICorner")
Corner3.CornerRadius = UDim.new(0, 5)
Corner3.Parent = wIlFrame

--// Redeem Button
TtG.Name = "JustAScript"
TtG.Parent = player.PlayerGui
local TtGFrame = Instance.new("TextButton")
TtGFrame.Size = UDim2.new(0, 100, 0, 40)
TtGFrame.Position = UDim2.new(0, 358, 0, 193)
TtGFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TtGFrame.Text = "Redeem"
TtGFrame.Parent = TtG
local Corner4 = Instance.new("UICorner")
Corner4.CornerRadius = UDim.new(0,5)
Corner4.Parent = TtGFrame

--// Response Mostly made By Felix i just Added Gui and Concantenate for gui instead of Printing in Console :>

--// I don't wanna messed the Instance of this or it gonna lock Waaa

local function ShowResponseGui(responseText)
    local Gr = Instance.new("ScreenGui")
    Gr.Name = "JustAScript"
    Gr.Parent = player.PlayerGui

    local ResponseLabel = Instance.new("TextLabel")
    ResponseLabel.Size = UDim2.new(0, 200, 0, 40)
    ResponseLabel.Position = UDim2.new(0, 306, 0, 300)
    ResponseLabel.BackgroundTransparency = 1
    ResponseLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    ResponseLabel.Font = Enum.Font.SourceSans
    ResponseLabel.TextSize = 20
    ResponseLabel.TextWrapped = true
    ResponseLabel.Text = responseText
    ResponseLabel.Parent = Gr

    local Corner5 = Instance.new("UICorner")
    Corner5.CornerRadius = UDim.new(0, 5)
    Corner5.Parent = ResponseLabel

    local goal = {}
    goal.Position = UDim2.new(0, 306, 0, 243)
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = game:GetService("TweenService"):Create(ResponseLabel, tweenInfo, goal)
    tween:Play()

    wait(1.3)
    Gr:Destroy()
end

--// Reedem Remote 

local function Redeem()
    local code = GwuFrame.Text
    local groupText = wIlFrame.Text
    local group = tonumber(groupText)
    
    if group then
        local args = {
            [1] = {
                ["MyGroupIds"] = {
                    [1] = group
                },
                ["Action"] = "RedeemCode",
                ["Code"] = tostring(code)  
            }
        }
--// Protective Call 
        local success, response = pcall(function()
            return game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UGCCodesRemoteFunction"):InvokeServer(unpack(args))
        end)

        if success then
            if type(response) == "string" then
                ShowResponseGui(response)
            elseif type(response) == "table" then
                local responseString = ""
                for key, value in pairs(response) do
                    responseString = responseString .. key .. ": " .. tostring(value) .. "\n"
                end
                ShowResponseGui(responseString)
            end
        else --// And Some Red Gui 
local error = Instance.new("ScreenGui")
error.Name = "JustAScript"
error.Parent = player.PlayerGui

local errorFrame = Instance.new("TextLabel")
errorFrame.Size = UDim2.new(0, 100, 0, 40)
errorFrame.Position = UDim2.new(0, 358, 0, 193)
errorFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
errorFrame.TextColor3 = Color3.new(1, 0, 0) 
errorFrame.Text = "Redeem"
errorFrame.Parent = error

local Corner4 = Instance.new("UICorner")
Corner4.CornerRadius = UDim.new(0, 5)
Corner4.Parent = errorFrame

wait(0.777)
error:Destroy()
            print("Error occurred while redeeming code this probably u reedem too Fast.")
        end
    else
local error = Instance.new("ScreenGui")
error.Name = "JustAScript"
error.Parent = player.PlayerGui

local errorFrame = Instance.new("TextLabel")
errorFrame.Size = UDim2.new(0, 100, 0, 40)
errorFrame.Position = UDim2.new(0, 358, 0, 193)
errorFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
errorFrame.TextColor3 = Color3.new(1, 0, 0) 
errorFrame.Text = "Redeem"
errorFrame.Parent = error

local Corner4 = Instance.new("UICorner")
Corner4.CornerRadius = UDim.new(0, 5)
Corner4.Parent = errorFrame

wait(0.777)
error:Destroy()
        print("Invalid input. Please enter valid Group ID and Code.") --// didn't remove this print so ppl would know whag problem 
    end
end

TtGFrame.MouseButton1Click:Connect(Redeem)

-- // Toggle GUI
local guiToggle = Instance.new("ScreenGui")
guiToggle.Name = "ToggleGui"
guiToggle.Parent = player.PlayerGui

local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 40, 0, 40)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
toggleButton.Parent = guiToggle

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0.5, 0)
Corner.Parent = toggleButton

local toggleLabel = Instance.new("TextLabel")
toggleLabel.Size = UDim2.new(1, 0, 1, 0)
toggleLabel.Position = UDim2.new(0, 0, 0, 0)
toggleLabel.BackgroundTransparency = 1
toggleLabel.TextColor3 = Color3.new(1, 1, 1)
toggleLabel.Text = "Toggle GUI"
toggleLabel.Font = Enum.Font.SourceSans
toggleLabel.TextSize = 14
toggleLabel.Parent = toggleButton
toggleButton.Draggable = true

--// Gui Visibility

local isGuiVisible = true

local function toggleGUI()
    isGuiVisible = not isGuiVisible
    if isGuiVisible then
        player.PlayerGui.JustAScript.Enabled = true
        oFJ.Enabled = true
        Gwu.Enabled = true
        wIl.Enabled = true
        TtG.Enabled = true
    else
        player.PlayerGui.JustAScript.Enabled = false
        oFJ.Enabled = false
        Gwu.Enabled = false
        wIl.Enabled = false
        TtG.Enabled = false
    end
end

toggleButton.MouseButton1Click:Connect(toggleGUI)
