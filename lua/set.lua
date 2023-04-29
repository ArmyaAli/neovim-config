local set = vim.opt
local global = vim.g
local window = vim.wo
local buffer = vim.bo

set.autoindent = true
set.relativenumber = true
set.number = true
set.expandtab = true
set.tabstop = 2
set.shiftwidth = 2
set.smarttab = true
set.hlsearch = true
set.incsearch = true
set.wrap = true
set.ruler = true
set.background = "dark"
set.shell= "powershell"

vim.api.nvim_set_option("clipboard","unnamed")
