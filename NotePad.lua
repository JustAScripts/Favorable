local sg = Instance.new("ScreenGui")
local tg = Instance.new("ScreenGui")
local fr = Instance.new("Frame")
local tb = Instance.new("TextBox")
local t = Instance.new("TextLabel")
local k = Instance.new("TextLabel")
local m = Instance.new("TextLabel")
local h = Instance.new("TextLabel")
local sc = Instance.new("ScrollingFrame")

client = game:GetService("Players").LocalPlayer
clip = setclipboard or toclipboard

sg.Name = "sg"
sg.Parent = game:GetService("CoreGui")
fr.Name = "fr"
fr.Parent = sg
fr.BorderSizePixel = 0
fr.BackgroundTransparency = 1
fr.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
fr.Position = UDim2.new(0, 117, 0, -26)
fr.Size = UDim2.new(0, 600, 0, 370)
sc.Name = "sc"
sc.Parent = fr
sc.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
sc.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
sc.BorderSizePixel = 0
sc.Position = UDim2.new(0.016846545, 0, 0.120983839, 0)
sc.Size = UDim2.new(0, 630, 0, 300)
sc.ScrollBarThickness = 7
tb.Name = "tb"
tb.Parent = sc
tb.BackgroundTransparency = 0.8
tb.Position = UDim2.new(0, 0, 0, 0)
tb.Size = UDim2.new(1, 0, 1, 0)
tb.ClearTextOnFocus = false
tb.Font = Enum.Font.SourceSans
tb.MultiLine = true
tb.PlaceholderText = "-- NotePad Somehow 🤔"
tb.Text = ""
tb.TextColor3 = Color3.new(1, 1, 1)
tb.TextSize = 14
tb.TextWrapped = true
tb.TextXAlignment = Enum.TextXAlignment.Left
tb.TextYAlignment = Enum.TextYAlignment.Top
local v = true
tg.Name = "tg"
tg.Parent = game:GetService("CoreGui")
local b = Instance.new("TextButton")
b.Name = "b"
b.Size = UDim2.new(0, 40, 0, 40)
b.Position = UDim2.new(0, 10, 0, 10)
b.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
b.Parent = tg
local c = Instance.new("UICorner")
c.CornerRadius = UDim.new(0,8)
c.Parent = b
t.Size = UDim2.new(1, 0, 1, 0)
t.Position = UDim2.new(0, 0, 0, 0)
t.BackgroundTransparency = 1
t.TextColor3 = Color3.new(1, 1, 1)
t.Text = "</>"
t.Font = Enum.Font.SourceSans
t.TextSize = 13
t.Parent = b
local f
local cl
local e
b.MouseButton1Click:Connect(function()
    v = not v
    fr.Visible = v
    if f then
        f.Visible = v
    end
    if cl then
        cl.Visible = v
    end
    if e then
        e.Visible = v
    end
end)

local function p()
    clip(tb.Text)
end
b.MouseButton1Click:Connect(p)
local j = Instance.new("ScreenGui")
j.Name = "j"
j.Parent = client.PlayerGui
f = Instance.new("TextButton")
f.Size = UDim2.new(0, 100, 0, 30)
f.Position = UDim2.new(0, 184, 0, -19)
f.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
f.BorderSizePixel = 0
f.Parent = j
local g = Instance.new("UICorner")
g.CornerRadius = UDim.new(0,8)
g.Parent = f
h.Text = "Setclipboard"
h.Size = UDim2.new(1, 0, 1, 0)
h.Position = UDim2.new(0, 0, 0, 0)
h.TextColor3 = Color3.new(1, 1, 1)
h.BackgroundTransparency = 1
h.Parent = f
cl = Instance.new("TextButton")
cl.Size = UDim2.new(0, 100, 0, 30)
cl.Position = UDim2.new(0, 300, 0, -19)
cl.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
cl.BorderSizePixel = 0
cl.Parent = j
local i = Instance.new("UICorner")
i.CornerRadius = UDim.new(0,8)
i.Parent = cl
k.Text = "Clear Text"
k.Size = UDim2.new(1, 0, 1, 0)
k.Position = UDim2.new(0, 0, 0, 0)
k.TextColor3 = Color3.new(1, 1, 1)
k.BackgroundTransparency = 1
k.Parent = cl
local function q()
    tb.Text = "" 
end
cl.MouseButton1Click:Connect(q)
cl.Visible = true
e = Instance.new("TextButton")
e.Size = UDim2.new(0, 100, 0, 30)
e.Position = UDim2.new(0, 414, 0, -19)
e.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
e.BorderSizePixel = 0
e.Parent = j
local l = Instance.new("UICorner")
l.CornerRadius = UDim.new(0,8)
l.Parent = e
m.Text = "Execute"
m.Size = UDim2.new(1, 0, 1, 0)
m.Position = UDim2.new(0, 0, 0, 0)
m.TextColor3 = Color3.new(1, 1, 1)
m.BackgroundTransparency = 1
m.Parent = e

local function n()
    local success, errorMsg = pcall(function()
        loadstring(tb.Text)()
    end)
    if not success then
        warn("Errro:", errorMsg)
    end
end

e.MouseButton1Click:Connect(n)
e.Visible = true

b.MouseButton1Click:Connect(function()
    e.Visible = not e.Visible 
end)
