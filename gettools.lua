local GetTools = {}

function GetTools.Grab()
    local lp = game.Players.LocalPlayer
    local backpack = lp:WaitForChild("Backpack")

    local function cloneToolsFrom(storage)
        for _, tool in pairs(storage:GetChildren()) do
            if tool:IsA("Tool") then
                local clone = tool:Clone()
                clone.Parent = backpack
            end
        end
    end

    cloneToolsFrom(game:GetService("ReplicatedStorage"))
    cloneToolsFrom(game:GetService("ServerStorage"))
end

return GetTools
