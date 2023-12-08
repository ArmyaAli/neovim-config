require("set") 
require("color") 
require("keymap") 

-- LSP Configuration
--local lspconfig = require('lspconfig')

-- Bootstrap lazy.nvim package manager
--
-- BEGIN
local plugins = {
  -- do not remove the colorscheme!
  "folke/tokyonight.nvim",

  -- LSP client
  "neovim/nvim-lspconfig",

  -- Gruvbox theme
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true},

  -- Required for telescope
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-lua/plenary.nvim" },

  -- Telescope fuzzy finder, fd (find alternative prgram) and ripgrep also required
  { "nvim-telescope/telescope.nvim", tag = "0.1.5" },

  -- LSP Manager
  {"williamboman/mason.nvim"},
	
  -- Code completion
  { "hrsh7th/nvim-cmp" },

 }


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Run the lazy package manager setup
require("lazy").setup(plugins)

-- Setup Mason (LSP Manager)
require("mason").setup()

-- Setup theme
require("gruvbox").setup()

vim.cmd("colorscheme gruvbox")

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
