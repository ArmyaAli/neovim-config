-- Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- NERDTree
vim.api.nvim_set_keymap('n', '<C-t>', ":NERDTreeToggle<CR>", { noremap = true });
vim.api.nvim_set_keymap('i', '<C-t>', ":NERDTreeToggle<CR>", { noremap = true });

