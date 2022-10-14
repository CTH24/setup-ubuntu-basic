local wilder = require('wilder')

local gradient = {
    '#f4468f', '#fd4a85', '#ff507a', '#ff566f', '#ff5e63',
    '#ff6658', '#ff704e', '#ff7a45', '#ff843d', '#ff9036',
    '#f89b31', '#efa72f', '#e6b32e', '#dcbe30', '#d2c934',
    '#c8d43a', '#bfde43', '#b6e84e', '#aff05b'
}

for i, fg in ipairs(gradient) do
    gradient[i] = wilder.make_hl('WilderGradient' .. i, 'Pmenu', { { a = 1 }, { a = 1 }, { foreground = fg } })
end

wilder.setup({ modes = { ':', '/', '?' } })

-- Disable Python remote plugin

wilder.set_option('use_python_remote_plugin', 0)

wilder.set_option('pipeline', {
    wilder.branch(
        wilder.cmdline_pipeline({
            fuzzy = 1,
            fuzzy_filter = wilder.lua_fzy_filter(),
        }),
        wilder.vim_search_pipeline()
    )
})

wilder.set_option('renderer', wilder.renderer_mux({
    [':'] = wilder.popupmenu_renderer({
        highlighter = wilder.lua_fzy_highlighter(),
        left = {
            ' ',
            wilder.popupmenu_devicons()
        },
        right = {
            ' ',
            wilder.popupmenu_scrollbar()
        },
    }),
    ['/'] = wilder.wildmenu_renderer({
        highlighter = wilder.lua_fzy_highlighter(),
    }),
}))

wilder.set_option('renderer', wilder.popupmenu_renderer(
    wilder.popupmenu_border_theme({
        highlighter = wilder.basic_highlighter(),
        min_width = '100%', -- minimum height of the popupmenu, can also be a number
        min_height = '50%', -- to set a fixed height, set max_height to the same value
        reverse = 0, -- if 1, shows the candidates from bottom to top
    })
))

wilder.set_option('renderer', wilder.popupmenu_renderer(

    wilder.popupmenu_palette_theme({
        highlights = {
            accent = wilder.make_hl('WilderAccent', 'Pmenu', { { a = 1 }, { a = 1 }, { foreground = '#f4468f' } }),
            gradient = gradient,
        },
        highlighter = {
            --wilder.lua_pcre2_highlighter(), -- requires `Luarocks install pcre2`
            wilder.lua_fzy_highlighter(), -- requires fzy-lua-native vim plugin found
        },
        left = {
            ' ',
            wilder.popupmenu_devicons()
        },
        right = {
            ' ',
            wilder.popupmenu_scrollbar()
        },
        -- 'single', 'double', 'rounded' or 'solid'
        -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
        border = 'rounded',
        max_height = '75%', -- max height of the palette
        min_height = 0, -- set to the same as 'max_height' for a fixed height window
        prompt_position = 'top', -- 'top' or 'bottom' to set the location of the prompt
        reverse = 0, -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
    })
))
