local Walkspeed = {}
local fast = false

function Walkspeed.Toggle()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    fast = not fast
    humanoid.WalkSpeed = fast and 100 or 16
end

return Walkspeed
