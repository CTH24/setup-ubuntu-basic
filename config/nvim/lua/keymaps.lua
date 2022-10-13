-- keymaps.lua


local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }
--local expr = { noremap = true, silent = true, expr = true }


--------------------------------------------------------------------------------
--  Leader KEY
--------------------------------------------------------------------------------
map("n", "<Space>", "<Nop>", opts)
vim.g.mapleader      = " "
vim.g.maplocalleader = " "




--------------------------------------------------------------------------------
--  Basic Bindings
--------------------------------------------------------------------------------
map("i", "<C-c>", "<ESC>", opts)
map("n", "<leader>j", "<cmd>Telescope fd<cr>", opts)
map("n", "<leader>f", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>o", "<cmd>lua vim.lsp.buf.format { async = true}<cr>", opts)
map('n', '<leader>d', ':lua vim.lsp.buf.hover()<cr>', opts)
map("n", "<leader>k", "<cmd>NvimTreeToggle<CR>", opts)

