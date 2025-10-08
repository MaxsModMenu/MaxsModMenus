local Fly = {}
local flying = false

function Fly.Toggle()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")

    flying = not flying

    if flying then
        local bv = Instance.new("BodyVelocity")
        bv.Name = "FlyVelocity"
        bv.Velocity = Vector3.new(0, 50, 0)
        bv.MaxForce = Vector3.new(0, math.huge, 0)
        bv.Parent = hrp
    else
        local existing = hrp:FindFirstChild("FlyVelocity")
        if existing then existing:Destroy() end
    end
end

return Fly
