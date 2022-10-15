require('sordok.base')
require('sordok.highlights')
require('sordok.keymaps')
require('sordok.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('sordok.macos')
end
if is_win then
  require('sordok.windows')
end

vim.cmd('colorscheme ayu')
