vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<leader><leader>', ':b#<cr>')

-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>o', telescope.find_files) -- open file
vim.keymap.set('n', '<leader>s', telescope.live_grep) -- search files
vim.keymap.set('n', '<leader>k', telescope.grep_string) -- search word under the cursor
vim.keymap.set('n', '<leader>p', telescope.oldfiles) -- list previous opened files
vim.keymap.set('n', '<leader>b', telescope.buffers) -- list buffers

-- Vim Diagnostics
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float) -- diagnostic expand

-- Nvim Tree
vim.keymap.set('n', '<leader>1', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>2', ':NvimTreeFindFile<cr>')

-- Gitsigns
local gitsigns = require('gitsigns')
vim.keymap.set('n', '<leader>gb', gitsigns.toggle_current_line_blame) -- git blame
vim.keymap.set('n', '<leader>gd', gitsigns.diffthis) -- git diff

-- Trouble
vim.keymap.set('n', '<leader>da', ':TroubleToggle document_diagnostics<cr>') -- diagnostic all
vim.keymap.set('n', '<leader>lR', ':TroubleToggle lsp_references<cr>') -- lsp references of the word under the cursor

-- Export mapping functions to be used within other plugins config files.
return {
  lsp_mappings = function (keymap_opts)
    vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, keymap_opts) -- lsp rename
    vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, keymap_opts) -- lsp format
    vim.keymap.set('n', '<leader>li', vim.lsp.buf.hover, keymap_opts) -- lsp info
    vim.keymap.set('n', '<leader>ls', telescope.lsp_document_symbols, keymap_opts) -- lsp file symbols
    vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition) -- go to definition
  end
}
