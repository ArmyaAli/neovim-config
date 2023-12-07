require("set") 
require("color") 

-- Bootstrap lazy.nvim package manager
-- BEGIN


local plugins = {
  -- do not remove the colorscheme!
  "folke/tokyonight.nvim",

  -- Gruvbox theme
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true},

  -- Required for telescope
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-lua/plenary.nvim" },

  -- Telescope fuzzy finder, fd and ripgrep also required
  { "nvim-telescope/telescope.nvim", tag = "0.1.5" }

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

require("lazy").setup(plugins)

-- Run the lazy package manager setup

-- END


