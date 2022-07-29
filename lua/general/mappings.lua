local configDir = '~/Dropbox/shared/nvim'

-- General
vim.api.nvim_set_keymap('i', 'jk', '<esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>v', '<cmd>tabnew ' .. configDir .. '/init.lua<CR><cmd>tcd ' .. configDir .. '<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true })

-- Search
--vim.api.nvim_set_keymap('n', '<leader>s', ':silent grep ', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>s', '<cmd>Telescope live_grep<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>S', '<cmd>Telescope grep_string<CR>', { noremap = true })

-- Plugin: gitsigns
vim.api.nvim_set_keymap('n', '<leader>gb', '<cmd>Gitsigns toggle_current_line_blame<CR>', { noremap = true })

-- Plugin: Telescope
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>Telescope find_files find_command=rg,--hidden,--files,--glob,!.git/,--glob,!.pnpm-store,--glob,!node_modules/<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>Telescope buffers<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>o', "<cmd>Telescope oldfiles<CR>", { noremap = true })

-- Plugin: nvim-tree
vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>2', '<cmd>NvimTreeFindFile<CR>', { noremap = true })
