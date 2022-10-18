vim.keymap.set('i', 'jk', '<esc>')

vim.keymap.set('n', '<leader><leader>', ':b#<cr>')

-- Telescope
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>o', builtin.find_files)
vim.keymap.set('n', '<leader>p', builtin.buffers)
vim.keymap.set('n', '<leader>s', builtin.live_grep)

-- Nvim Tree
vim.keymap.set('n', '<leader>1', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>2', ':NvimTreeFindFile<cr>')
