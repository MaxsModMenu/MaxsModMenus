local Invisibility = {}

function Invisibility.Toggle()
    local char = game.Players.LocalPlayer.Character
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") or part:IsA("Decal") then
            part.Transparency = 1
        end
    end
end

return Invisibility
