vim.g.mapleader = " "

-- Configuration for NvimTree to make it work nicer.
vim.o.loaded_netrw = 1
vim.o.loaded_netrwPlugin = 1
vim.o.termguicolors = true

vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.smartindent = true
vim.o.shiftwidth = vim.o.tabstop

vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<leader><leader>", "<cmd>b#<cr>")

require("lazy-nvim")
