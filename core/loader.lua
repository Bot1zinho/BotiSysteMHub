-- core/loader.lua
local Loader = {}

function Loader:Init()
    print("Loader iniciado")

    local Config = loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/Bot1zinho/BotiSysteMHub/main/core/config.lua"
    ))()

    local UI = loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/Bot1zinho/BotiSysteMHub/main/ui/init.lua"
    ))()

    UI:Create(Config)
end

return Loader
