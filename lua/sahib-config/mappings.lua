vim.keymap.set('i', 'jk', '<esc>')

-- Telescope
local telescope = require 'telescope.builtin'
vim.keymap.set('n', '<leader>o', telescope.find_files)
vim.keymap.set('n', '<leader>p', telescope.buffers)

-- Nvim Tree
vim.keymap.set('n', '<leader>1', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>2', ':NvimTreeFindFile<cr>')
