-- ui/theme.lua
local Theme = {}

function Theme:Apply(frame, color)
    frame.BackgroundColor3 = color
end

return Theme
