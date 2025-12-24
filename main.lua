print("Main carregado")

local success, result = pcall(function()
    return loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/Bot1zinho/BotiSysteMHub/main/core/loader.lua"
    ))()
end)

if not success then
    warn("Erro ao carregar loader:", result)
    return
end

result:Init()
