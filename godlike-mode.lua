vim.g.mapleader = " "

vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.shiftwidth = vim.o.tabstop

vim.keymap.set("i", "jk", "<ESC>");
vim.keymap.set("n", "<LEADER><LEADER>", "<CMD>b#<CR>");
