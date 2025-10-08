local Noclip = {}
local enabled = false
local connection

function Noclip.Toggle()
    enabled = not enabled
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    if enabled then
        connection = game:GetService("RunService").Stepped:Connect(function()
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end)
    else
        if connection then
            connection:Disconnect()
            connection = nil
        end
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end

return Noclip
