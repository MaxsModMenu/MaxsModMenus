local Max = {}

function Max.Spawn()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")

    local npc = Instance.new("Part")
    npc.Name = "Max"
    npc.Size = Vector3.new(2, 3, 2)
    npc.Shape = Enum.PartType.Block
    npc.Material = Enum.Material.SmoothPlastic
    npc.Color = Color3.fromRGB(0, 150, 255)
    npc.Anchored = false
    npc.CanCollide = false
    npc.Position = hrp.Position + Vector3.new(3, 3, 0)
    npc.Parent = workspace

    local follow = Instance.new("BodyPosition", npc)
    follow.MaxForce = Vector3.new(100000, 100000, 100000)
    follow.Position = hrp.Position + Vector3.new(3, 3, 0)

    game:GetService("RunService").Heartbeat:Connect(function()
        follow.Position = hrp.Position + Vector3.new(3, 3, 0)
    end)
end

return Max
