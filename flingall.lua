local FlingAll = {}

function FlingAll.Activate()
    local lp = game.Players.LocalPlayer
    local char = lp.Character or lp.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= lp and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local target = player.Character.HumanoidRootPart
            local bv = Instance.new("BodyVelocity")
            bv.Velocity = Vector3.new(0, 9999, 0)
            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bv.Parent = target
            game.Debris:AddItem(bv, 0.2)
        end
    end
end

return FlingAll
