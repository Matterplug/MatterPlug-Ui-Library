-- MatterPlug UI Library

local MatterPlugUI = {}

-- Create the window frame
function MatterPlugUI:CreateWindow(title, size)
    local window = Instance.new("Frame")
    window.Name = "Window"
    window.Size = size or UDim2.new(0.5, 0, 0.5, 0)
    window.Position = UDim2.new(0.25, 0, 0.25, 0)
    window.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    window.BorderSizePixel = 0
    window.AnchorPoint = Vector2.new(0.5, 0.5)

    -- Title bar for the window
    local titleBar = Instance.new("TextLabel")
    titleBar.Name = "TitleBar"
    titleBar.Size = UDim2.new(1, 0, 0, 30)
    titleBar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    titleBar.Text = title
    titleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleBar.TextSize = 18
    titleBar.TextXAlignment = Enum.TextXAlignment.Center
    titleBar.Parent = window

    window.Parent = game.Players.LocalPlayer.PlayerGui

    return window
end

-- Create a button inside the window
function MatterPlugUI:CreateButton(parentWindow, buttonText, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.5, -25)
    button.Text = buttonText
    button.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 20
    button.Parent = parentWindow

    button.MouseButton1Click:Connect(function()
        callback()
    end)

    return button
end

-- Return the library
return MatterPlugUI
