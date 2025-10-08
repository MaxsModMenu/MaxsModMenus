local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/ui.lua"))()
local fly = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/fly.lua"))()
local noclip = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/noclip.lua"))()
local walkspeed = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/walkspeed.lua"))()
local allay = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxsModMenu/MaxsModMenus/main/allay.lua"))()

ui:Create({
    onFly = fly.Toggle,
    onNoclip = noclip.Toggle,
    onWalkspeed = walkspeed.Toggle,
    onAllay = allay.Spawn
})
