-- alpha.lua

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
    return
end

local icons = require "config.icons"

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
    [[                       ,----,                                 ]],
    [[                 ,/   .`|       ,--,                     ,--, ]],
    [[  ,----..      ,`   .'  :     ,--.'|     ,----,        ,--.'| ]],
    [[ /   /   \   ;    ;     /  ,--,  | :   .'   .' \    ,--,  | : ]],
    [[|   :     :.'___,/    ,',---.'|  : ' ,----,'    |,---.'|  : ' ]],
    [[.   |  ;. /|    :     | |   | : _' | |    :  .  ;;   : |  | ; ]],
    [[.   ; /--` ;    |.';  ; :   : |.'  | ;    |.'  / |   | : _' | ]],
    [[;   | ;    `----'  |  | |   ' '  ; : `----'/  ;  :   : |.'  | ]],
    [[|   : |        '   :  ; '   |  .'. |   /  ;  /   |   ' '  ; : ]],
    [[.   | '___     |   |  ' |   | :  | '  ;  /  /-,  \   \  .'. | ]],
    [['   ; : .'|    '   :  | '   : |  : ; /  /  /.`|   `---`:  | ' ]],
    [['   | '/  :    ;   |.'  |   | '  ,/./__;      :        '  ; | ]],
    [[|   :    /     '---'    ;   : ;--' |   :    .'         |  : ; ]],
    [[ \   \ .'               |   ,/     ;   | .'            '  ,/  ]],
    [[  `---`                 '---'      `---'               '--']]
}
dashboard.section.buttons.val = {
    dashboard.button("f", " Find file", ":Telescope fd <CR>"),
    dashboard.button("e", " New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button(
        "p",
        " Find project",
        ":lua require('telescope').extensions.projects.projects()<CR>"
    ),
    dashboard.button("r", " Recent files", ":Telescope oldfiles <CR>"),
    dashboard.button("t", " Find text", ":Telescope live_grep <CR>"),
    dashboard.button("u", " Update", ":PackerSync<CR>"),
    dashboard.button("q", " Quit", ":qa<CR>"),
}
local function footer()
    -- NOTE: requires the fortune-mod package to work
    -- local handle = io.popen("fortune")
    -- local fortune = handle:read("*a")
    -- handle:close()
    -- return fortune
    return "daniel.hoffmann@cth24.de"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
