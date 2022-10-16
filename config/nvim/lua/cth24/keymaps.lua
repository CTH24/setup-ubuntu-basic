-- keymap.lua


--------------------------------------------------------------------------------
--  Set Local Variables
--------------------------------------------------------------------------------

local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
local keymap = vim.keymap




--------------------------------------------------------------------------------
--  Leader KEY
--------------------------------------------------------------------------------

map("n", "<Space>", "<Nop>", opts)
vim.g.mapleader      = " "
vim.g.maplocalleader = " "





--------------------------------------------------------------------------------
--  Reload NVIM Configuration
--------------------------------------------------------------------------------

map("n", "<leader>r", ":source $MYVIMRC<CR>", opts)


map('n', 'j', 'j', opts)
map('n', 'k', 'k', opts)
map('n', '<C-u>', '<C-u>zz', opts)
map('n', '<C-d>', '<C-d>zz', opts)


--------------------------------------------------------------------------------
-- Yank entire File
--------------------------------------------------------------------------------

keymap.set('n', '<F12>', 'gg<S-v>Gy')





--------------------------------------------------------------------------------
--  Better <C-c>
--------------------------------------------------------------------------------

map("i", "<C-c>", "<ESC>", opts)




keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Split window
keymap.set('n', 'ss', ':vsplit<Return><C-w>w')
keymap.set('n', 'sss', ':split<Return><C-w>w')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')



--------------------------------------------------------------------------------
--  Basic Bindings
--------------------------------------------------------------------------------


-- Find
map("n", "<leader>j", "<cmd>Telescope fd<cr>", opts)
map("n", "<leader>k", "<cmd>Telescope oldfiles<CR>", opts)
map("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>f", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
map("n", "<leader>s", "<cmd>Telescope lsp_workspace_symbols<cr>", opts)
map("n", "<leader>u", "<cmd>Telescope treesitter<cr>", opts)
map("n", "<leader>c", "<cmd>Telescope command_palette<cr>", opts)
map("n", "<leader>/", "<cmd>vsp backlog.md<cr>", opts)


-- VIM
map("n", "<leader>b", "<cmd>Telescope buffers<cr>", opts)


-- git
map("n", "<leader>t", "<cmd>Telescope git_branches<cr>", opts)
map("n", "<leader>i", "<cmd>Telescope git_status<cr>", opts)


-- Code Action
map("n", "<leader>o", "<cmd>lua vim.lsp.buf.format { async = true}<cr>", opts)
map("n", "<leader>d", "<cmd>Telescope diagnostics<cr>", opts)
map('n', '<leader>i', ':lua vim.lsp.buf.hover()<cr>', opts)


-- Autocomplete
map("n", "<leader>l", ":Copilot suggestion toggle_auto_trigger<CR>", opts)


-- Hilfe
map("n", "<leader>m", "<cmd>Telescope man_pages<CR>", opts)
