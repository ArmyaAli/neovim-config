-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Gruvbox theme
  use { "ellisonleao/gruvbox.nvim" }
  -- Telescope
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = { 'nvim-lua/plenary.nvim' } }
  -- plenary for Telescope
  use { 'nvim-lua/plenary.nvim' }
  -- LSP
  use { 'neovim/nvim-lspconfig' }
  -- lualine
  use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
  -- icons for lualine
  use { 'nvim-tree/nvim-web-devicons' }
  -- NERDTree
  use { 'preservim/nerdtree' }

end)
