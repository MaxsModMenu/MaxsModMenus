local ESP = {}

function ESP.Enable()
    local lp = game.Players.LocalPlayer
    local runService = game:GetService("RunService")

    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= lp and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            if not player.Character:FindFirstChild(player.Name .. "_ESP") then
                local highlight = Instance.new("Highlight")
                highlight.Name = player.Name .. "_ESP"
                highlight.Adornee = player.Character
                highlight.FillTransparency = 1
                highlight.OutlineColor = Color3.new(1, 0, 0)
                highlight.OutlineTransparency = 0
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.Parent = player.Character
            end
        end
    end

    runService.RenderStepped:Connect(function()
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= lp and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local esp = player.Character:FindFirstChild(player.Name .. "_ESP")
                if not esp then
                    ESP.Enable()
                end
            end
        end
    end)
end

return ESP
