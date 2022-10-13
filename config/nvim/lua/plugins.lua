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
-- Packer
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

if PACKER_BOOTSTRAP then
    require("packer").sync()
end




--------------------------------------------------------------------------------
-- Theme
--------------------------------------------------------------------------------
use({ "Shatur/neovim-ayu"})