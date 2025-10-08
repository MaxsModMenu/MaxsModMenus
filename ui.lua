local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ModMenu = {}

function ModMenu:Create(callbacks)
    local gui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
    gui.Name = "ModMenu"
    gui.ResetOnSpawn = false

    local frame = Instance.new("Frame", gui)
    frame.Size = UDim2.new(0, 250, 0, 300)
    frame.Position = UDim2.new(0, 50, 0, 50)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BorderSizePixel = 0
    frame.Active = true
    frame.Draggable = true

    local toggleButton = Instance.new("TextButton", gui)
    toggleButton.Size = UDim2.new(0, 100, 0, 30)
    toggleButton.Position = UDim2.new(0, 50, 0, 50)
    toggleButton.Text = "Open Menu"
    toggleButton.Visible = false

    local closeButton = Instance.new("TextButton", frame)
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.Position = UDim2.new(1, -35, 0, 5)
    closeButton.Text = "-"
    closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)

    closeButton.MouseButton1Click:Connect(function()
        frame:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5, true)
        wait(0.5)
        frame.Visible = false
        toggleButton.Visible = true
    end)

    toggleButton.MouseButton1Click:Connect(function()
        frame.Visible = true
        frame:TweenSize(UDim2.new(0, 250, 0, 300), "Out", "Quad", 0.5, true)
        toggleButton.Visible = false
    end)

    local function createButton(name, yPos, callback)
        local btn = Instance.new("TextButton", frame)
        btn.Size = UDim2.new(0, 200, 0, 40)
        btn.Position = UDim2.new(0, 25, 0, yPos)
        btn.Text = name
        btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.MouseButton1Click:Connect(callback)
    end

    createButton("Fly", 50, callbacks.onFly or function() end)
    createButton("Noclip", 100, callbacks.onNoclip or function() end)
    createButton("Walkspeed", 150, callbacks.onWalkspeed or function() end)
    createButton("Allay", 200, callbacks.onAllay or function() end)
end

return ModMenu
