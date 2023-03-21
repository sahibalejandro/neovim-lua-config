local keymap_tracker = require('keymap-tracker')
keymap_tracker.setup()

local map = keymap_tracker.keymap

vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<leader><leader>', ':b#<cr>')

-- Move text up and down
map('Move line down', 'n', '<c-j>', ':m .+1<cr>==')
map('Move line up', 'n', '<c-k>', ':m .-2<cr>==')

-- Telescope
local telescope = require('telescope.builtin')
map('Open file', 'n', '<leader>o', telescope.find_files) -- open file
map('Search', 'n', '<leader>s', telescope.live_grep) -- search text
map('Search word under the cursor', 'n', '<leader>k', telescope.grep_string) -- search word under the cursor
map('Open previous file', 'n', '<leader>p', telescope.oldfiles) -- list previous opened files
map('Buffers list', 'n', '<leader>b', telescope.buffers) -- list buffers

-- Vim Diagnostics
map('Expand diagnostic', 'n', '<leader>de', vim.diagnostic.open_float) -- diagnostic expand

-- Nvim Tree
map('Toggle Nvim Tree', 'n', '<leader>1', ':NvimTreeToggle<cr>')
map('Show file in Nvim Tree', 'n', '<leader>2', ':NvimTreeFindFile<cr>')

-- Gitsigns
local gitsigns = require('gitsigns')
map('Toggle Git Blame', 'n', '<leader>gb', gitsigns.toggle_current_line_blame) -- git blame
map('Show git diff for current file', 'n', '<leader>gd', gitsigns.diffthis) -- git diff

-- Trouble
map('Open file diagnostics', 'n', '<leader>da', ':TroubleToggle document_diagnostics<cr>') -- diagnostic all
map('Search for references of the symbol under the cursor', 'n', '<leader>lR', ':TroubleToggle lsp_references<cr>') -- lsp references of the word under the cursor

-- LazyGit
map('Open LazyGit', 'n', '<leader>lg', ':LazyGit<cr>')

-- Keymap Tracker
map('Open Keymap Tracker', 'n', '<leader>cs', ':KeymapTracker<cr>')

-- Export mapping functions to be used within other plugins config files.
return {
  lsp_mappings = function (keymap_opts)
    map('Rename symbol', 'n', '<leader>lr', vim.lsp.buf.rename, keymap_opts) -- lsp rename
    map('Format code', 'n', '<leader>lf', vim.lsp.buf.format, keymap_opts) -- lsp format
    map('Signature info', 'n', '<leader>li', vim.lsp.buf.hover, keymap_opts) -- lsp info
    map('Document symbols', 'n', '<leader>ls', telescope.lsp_document_symbols, keymap_opts) -- lsp file symbols
    map('Go to definition', 'n', '<leader>ld', vim.lsp.buf.definition, keymap_opts) -- go to definition
    map('Go to implementation', 'n', '<leader>lm', vim.lsp.buf.implementation, keymap_opts) -- go to implementation
  end
}
