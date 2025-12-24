-- ui/toggle.lua
local Toggle = {}

function Toggle:Create(gui, panel, config)
    local button = Instance.new("TextButton")
    button.Size = UDim2.fromOffset(50, 50)
    button.Position = UDim2.fromScale(0, 0.4)
    button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    button.Text = "SEU"
    button.TextColor3 = Color3.fromRGB(255, 0, 0)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 16
    button.Parent = gui

    local open = true
    button.MouseButton1Click:Connect(function()
        open = not open
        panel.Visible = open
    end)
end

return Toggle
