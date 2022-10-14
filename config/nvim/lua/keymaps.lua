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

-- Find
map("n", "<leader>j", "<cmd>Telescope fd<cr>", opts)
map("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>f", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
map("n", "<leader>s", "<cmd>Telescope lsp_workspace_symbols<cr>", opts)

-- VIM
map("n", "<leader>b", "<cmd>Telescope buffers<cr>", opts)

-- git
map("n", "<leader>t", "<cmd>Telescope git_branches<cr>", opts)
map("n", "<leader>i", "<cmd>Telescope git_status<cr>", opts)
map("n", "<leader>h", "<cmd>Telescope git_bcommits<cr>", opts)

-- Code Action
map("n", "<leader>o", "<cmd>lua vim.lsp.buf.format { async = true}<cr>", opts)
map("n", "<leader>d", "<cmd>Telescope diagnostics<cr>", opts)
map('n', '<leader>i', ':lua vim.lsp.buf.hover()<cr>', opts)

-- Tools
map("n", "<leader>k", "<cmd>NvimTreeToggle<CR>", opts)

-- Autocomplete
map("n", "<leader>l", ":Copilot suggestion toggle_auto_trigger<CR>", opts)

-- Hilfe
map("n", "<leader>m", "<cmd>Telescope man_pages<CR>", opts)
