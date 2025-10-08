local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/ui.lua"))()
local fly = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/fly.lua"))()
local noclip = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/noclip.lua"))()
local walkspeed = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/walkspeed.lua"))()
local max = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/max.lua"))()
local flingall = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/flingall.lua"))()
local esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/esp.lua"))()
local gettools = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/gettools.lua"))()

ui:Create({
    onFly = fly.Toggle,
    onNoclip = noclip.Toggle,
    onWalkspeed = walkspeed.Toggle,
    onMax = max.Spawn,
    onFlingAll = flingall.Activate,
    onESP = esp.Enable,
    onGetTools = gettools.Grab
})

