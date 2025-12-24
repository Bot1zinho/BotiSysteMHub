-- ui/init.lua
local UI = {}

function UI:Create(config)
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer

    local gui = Instance.new("ScreenGui")
    gui.Name = config.ScriptName
    gui.ResetOnSpawn = false
    gui.Parent = player:WaitForChild("PlayerGui")

    -- Painel principal
    local main = Instance.new("Frame")
    main.Size = UDim2.fromOffset(600, 400)
    main.Position = UDim2.fromScale(0.5, 0.5)
    main.AnchorPoint = Vector2.new(0.5, 0.5)
    main.BackgroundColor3 = config.Colors.Background
    main.Parent = gui

    -- Sidebar
    local sidebar = Instance.new("Frame")
    sidebar.Size = UDim2.fromOffset(160, 400)
    sidebar.BackgroundColor3 = config.Colors.Sidebar
    sidebar.Parent = main

    -- Título
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 50)
    title.BackgroundTransparency = 1
    title.Text = config.ScriptName .. "  " .. config.Version
    title.TextColor3 = config.Colors.Text
    title.Font = Enum.Font.GothamBold
    title.TextSize = 18
    title.Parent = sidebar

    -- Toggle
    local Toggle = loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/Bot1zinho/BotiSysteMHub/main/ui/toggle.lua"
    ))()

    Toggle:Create(gui, main, config)
end

return UI
