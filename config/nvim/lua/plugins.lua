-- lua/plugins.lua


-- Place where packer is going to be saved
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"


-- Install packer from github if is not in our system
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = vim.fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end


-- Auto-command that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


-- Use a protected require call (pcall) so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end


-- Show packer messages in a popup. Looks cooler
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})


-- Alt installation of packer without a function
packer.reset()
local use = packer.use



--------------------------------------------------------------------------------
-- Packer
--------------------------------------------------------------------------------
use({ "wbthomason/packer.nvim" })




--------------------------------------------------------------------------------
-- Prettier
--------------------------------------------------------------------------------
use({ "prettier/vim-prettier" })




--------------------------------------------------------------------------------
-- Treesitter
--------------------------------------------------------------------------------
use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
        require("config.treesitter")
    end,
})
use('p00f/nvim-ts-rainbow')




--------------------------------------------------------------------------------
-- LSP
--------------------------------------------------------------------------------
use({
    "neovim/nvim-lspconfig",
    requires = {
        "williamboman/nvim-lsp-installer",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "onsails/lspkind-nvim",
        "b0o/schemastore.nvim",
    },
    config = function()
        require("mason").setup()
        require("config.lsp")
    end,
})

use({
    "ray-x/lsp_signature.nvim",
    config = function()
        require("config.lsp-signature")
    end,
})




--------------------------------------------------------------------------------
-- Telescope
--------------------------------------------------------------------------------
use({ -- Telescope: The swiws army knife of searching
    "nvim-telescope/telescope.nvim",
    requires = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-frecency.nvim", -- Better sorting algorithm
            "tami5/sqlite.lua",
        },
        "nvim-telescope/telescope-ui-select.nvim",
        "nvim-telescope/telescope-node-modules.nvim",
        "nvim-telescope/telescope-live-grep-raw.nvim",
        "nvim-telescope/telescope-symbols.nvim",
        "nvim-telescope/telescope-project.nvim",
    },
    config = function()
        require("config.telescope")
    end,
})
use({ 'JoseConseco/telescope_sessions_picker.nvim' })
use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }





--------------------------------------------------------------------------------
-- CMP
--------------------------------------------------------------------------------
use({
    "hrsh7th/nvim-cmp",
    requires = {
        "onsails/lspkind-nvim", -- Icons on the popups
        "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
        "hrsh7th/cmp-buffer", -- Buffer source for nvim-cmp
        "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-mcp
        "hrsh7th/cmp-path", -- path completions
        "hrsh7th/cmp-cmdline", -- cmdline completions
        "rafamadriz/friendly-snippets", -- a bunch of snippets to use
        "L3MON4D3/LuaSnip", -- Snippet engine
    },
    config = function()
        require("config.cmp")
    end,
})




--------------------------------------------------------------------------------
-- GitSigns
--------------------------------------------------------------------------------
use {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup()
    end
}



--------------------------------------------------------------------------------
-- nvim-tree
--------------------------------------------------------------------------------
use {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly'
}




--------------------------------------------------------------------------------
-- NeoScroll
--------------------------------------------------------------------------------
use {
    'karb94/neoscroll.nvim',
    config = function()
        require('neoscroll').setup()
    end
}




--------------------------------------------------------------------------------
-- Terminal
--------------------------------------------------------------------------------
use({ -- Floating terminal with C-k C-t
    "akinsho/toggleterm.nvim",
    config = function()
        require("config.toggleterm")
    end,
})



--------------------------------------------------------------------------------
-- Alpha
--------------------------------------------------------------------------------
use {
    'goolord/alpha-nvim',
    config = function()
        require("config.alpha")
    end
}




--------------------------------------------------------------------------------
-- Copilot
--------------------------------------------------------------------------------
use {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
        vim.defer_fn(function()
            require "config.copilot"
        end, 100)
    end,
}

-- load file


use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
        require("copilot_cmp").setup {
            method = "getCompletionsCycling",
        }
    end
}


--------------------------------------------------------------------------------
-- Whichkey
--------------------------------------------------------------------------------
use({ -- Whichkey: popup help for keymaps
    "folke/which-key.nvim",
    config = function()
        require("config.which-key")
    end,
})


--------------------------------------------------------------------------------
-- Wilder
--------------------------------------------------------------------------------
use { 'romgrk/fzy-lua-native' }
use {
    'gelguy/wilder.nvim',
    config = function()
        require("config.wilder") -- config goes here
    end,
}
use({ -- Allows you to use `:Rg <search_string>` for fast project search
    "rinx/nvim-ripgrep",
    config = function()
        require("nvim-ripgrep").setup({
            open_qf_fn = require("nvim-ripgrep.extensions").trouble_open_qf,
        })
    end,
})


--------------------------------------------------------------------------------
-- Theme
--------------------------------------------------------------------------------
use({ "Shatur/neovim-ayu" })


if PACKER_BOOTSTRAP then
    require("packer").sync()
end
