if game:GetService("TextChatService") then
    local adonisFound = false

    for _, descendant in pairs(game:GetService("TextChatService"):GetDescendants()) do
        if descendant:IsA("Instance") and descendant.Name:sub(1, 6):lower() == "adonis" then
            adonisFound = true
            local g = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
            local label = Instance.new("TextLabel", g)
            label.Text, label.Size, label.Position, label.BackgroundColor3, label.TextColor3, label.BackgroundTransparency =
                "Adonis Found!", UDim2.new(0, 200, 0, 50), UDim2.new(0.5, -100, 1, -50), Color3.new(0, 0, 0), Color3.new(1, 1, 1), 0.5

            local tween = game:GetService("TweenService"):Create(label, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -100, 0.9, -25)})
            tween:Play()

            wait(15)

            tween:Destroy()
            label:Destroy()
            break 
        end
    end

    if not adonisFound then
        local gui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
        local label = Instance.new("TextLabel", gui)
        label.Text, label.Size, label.Position, label.BackgroundColor3, label.TextColor3, label.BackgroundTransparency =
            "No Adonis was found.", UDim2.new(0, 200, 0, 50), UDim2.new(0.5, -100, 1, -50), Color3.new(0, 0, 0), Color3.new(1, 1, 1), 0.5

        local tween = game:GetService("TweenService"):Create(label, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -100, 0.9, -25)})
        tween:Play()

        wait(10)

        tween:Destroy()
        label:Destroy()
    end
end
