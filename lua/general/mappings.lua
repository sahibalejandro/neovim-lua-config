local configDir = '~/Dropbox/shared/nvim'

-- General
vim.api.nvim_set_keymap('i', 'jk', '<esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>v', '<cmd>tabnew ' .. configDir .. '/init.lua<cr><cmd>tcd ' .. configDir .. '<cr>', { noremap = true })

-- Search
--vim.api.nvim_set_keymap('n', '<leader>s', ':silent grep ', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>s', '<cmd>Telescope live_grep<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>S', '<cmd>Telescope grep_string<cr>', { noremap = true })

-- Plugin: gitsigns
vim.api.nvim_set_keymap('n', '<leader>gb', '<cmd>Gitsigns toggle_current_line_blame<cr>', { noremap = true })

-- Plugin: Telescope
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>Telescope find_files find_command=rg,--hidden,--files,--glob,!.git/<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>Telescope buffers<cr>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>o', "<cmd>Telescope oldfiles<cr>", { noremap = true })

-- Plugin: nvim-tree
vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>NvimTreeToggle<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>2', '<cmd>NvimTreeFindFile<cr>', { noremap = true })
