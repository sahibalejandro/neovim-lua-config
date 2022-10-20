-- Note:
-- More mappings are defined in nvim-lspconfig.lua file since they are
-- part of the LSP configurations, make sure you check those mappings
-- before adding new ones here to avoid collisions.

vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<leader><leader>', ':b#<cr>')

-- Telescope
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>o', builtin.find_files)
vim.keymap.set('n', '<leader>p', builtin.oldfiles)
vim.keymap.set('n', '<leader>s', builtin.live_grep)
vim.keymap.set('n', '<leader>b', builtin.buffers)

-- Nvim Tree
vim.keymap.set('n', '<leader>1', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>2', ':NvimTreeFindFile<cr>')

-- Gitsigns
vim.keymap.set('n', '<leader>gb', ':Gitsigns toggle_current_line_blame<cr>')
