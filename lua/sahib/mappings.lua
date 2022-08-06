--------------------------------------------------------------------------------
--
-- General Mappings
--

vim.keymap.set("i", "jk", "<ESC>", { noremap = true })
-- Jump to previous buffer
vim.keymap.set("n", "<leader>e", ":b#<CR>", { noremap = true })
-- Open LazyGit on a terminal buffer and enter Terminal-mode
vim.keymap.set("n", "<leader>gg", ":terminal lazygit<CR>i", { noremap = true })

--------------------------------------------------------------------------------
--
-- Plugin: nvim-tree
--

-- Toggle Nvim Tree
vim.keymap.set("n", "<leader>1", ":NvimTreeToggle<CR>", { noremap = true })
-- Open Nvim Tree and locate the current file
vim.keymap.set("n", "<leader>2", ":NvimTreeFindFile<CR>", { noremap = true })

--------------------------------------------------------------------------------
--
-- Plugin: Rename Current File
--
vim.keymap.set("n", "<leader>R", ":RenameCurrentFile<CR>", { noremap = true })

--------------------------------------------------------------------------------
--
-- Plugin: emmet
--
vim.g.user_emmet_leader_key = "<c-z>"

--------------------------------------------------------------------------------
--
-- Plugin: Gitsigns
--

-- Toggle git blame
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { noremap = true })

--------------------------------------------------------------------------------
--
-- Plugin: Telescope
--
local telescope = require "telescope.builtin"

-- List files in the CWD
vim.keymap.set("n", "<leader>o", telescope.find_files, { noremap = true })
-- Search for a string in the CWD
vim.keymap.set("n", "<leader>s", telescope.live_grep, { noremap = true })
-- List open buffers in current neovim instance
vim.keymap.set("n", "<leader>b", telescope.buffers, { noremap = true })
-- List previously open files
vim.keymap.set("n", "<leader>p", telescope.oldfiles, { noremap = true })
-- Find the word under the cursor in the CWD
vim.keymap.set("n", "<leader>k", telescope.grep_string, { noremap = true })
-- (LSP) Go to definition
vim.keymap.set("n", "<leader>ld", telescope.lsp_definitions, { noremap = true })
-- (LSP) Go to references
vim.keymap.set("n", "<leader>lR", telescope.lsp_references, { noremap = true })
-- (LSP) Show ALL diagnostics
vim.keymap.set("n", "<leader>lI", telescope.diagnostics, { noremap = true })

--------------------------------------------------------------------------------
--
-- Plugin: nvim-lspconfig
--
-- Show current line diagnostic in a floating window
vim.keymap.set("n", "<leader>li", vim.diagnostic.open_float, { noremap = true })
-- Rename node under the cursor
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { noremap = true })
-- Go to next diagnostic
vim.keymap.set("n", "<leader>ln", vim.diagnostic.goto_next, { noremap = true })
-- Go to previous diagnostic
vim.keymap.set("n", "<leader>lp", vim.diagnostic.goto_prev, { noremap = true })
