vim.g.mapleader = " "

vim.o.wrap = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.swapfile = false
vim.o.scrolloff = 5
vim.o.sidescrolloff = vim.o.scrolloff
vim.o.mouse = ""

vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.shiftwidth = vim.o.tabstop

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false

-- Useful keymaps
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<leader><leader>", ":b#<cr>")

-- Sort visual selected lines by length
vim.keymap.set("v", "<leader>s", ":!awk '{ print length(), $0 | \"sort -n | cut -d\\\\  -f2-\" }'<cr>")

-- UltiSnips
vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
