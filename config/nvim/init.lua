-- init.lua

require("options")
require("plugins")
require("keymaps")

-- Remove Tilde
vim.wo.fillchars = 'eob: '

-- Remember Cursor Position
vim.cmd([[
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END
]])

vim.cmd([[command! Diffsplit execute "Gitsigns diffthis"]])

-- Theme
vim.cmd 'set termguicolors'
vim.cmd("colorscheme ayu")
vim.cmd('highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6')
vim.cmd('highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6')
vim.cmd('highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0')
vim.cmd('highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0')
vim.cmd('highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE')
vim.cmd('highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4')
vim.cmd('hi Pmenu ctermbg=251 ctermfg=237 guibg=#0F1419 guifg=#E6E1CF')
vim.cmd('hi PmenuSbar ctermbg=251 ctermfg=NONE guibg=#253340 guifg=NONE')
vim.cmd('hi PmenuSel ctermbg=248 ctermfg=235 guibg=#253340 guifg=#E6E1CF')
vim.cmd('hi PmenuThumb ctermbg=237 ctermfg=NONE guibg=#253340 guifg=NONE')
vim.cmd [[hi VertSplit guibg=#0f1117 guifg=bg]]
vim.cmd [[hi Normal ctermbg=none guibg=none ]]
vim.cmd [[hi LineNr guibg=none ctermbg=none]]
vim.cmd [[hi Folded guibg=none ctermbg=none]]
vim.cmd [[hi NonText guibg=none ctermbg=none]]
vim.cmd [[hi SpecialKey guibg=none ctermbg=none]]
vim.cmd [[hi VertSplit guibg=none ctermbg=none]]
vim.cmd [[hi SignColumn guibg=none ctermbg=none]]
vim.cmd [[hi EndOfBuffer guibg=none ctermbg=none]]
