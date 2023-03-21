-- General options
vim.g.mapleader = ' '
vim.o.mouse = ''
vim.o.wrap = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
vim.o.swapfile = false
vim.o.scrolloff = 5
vim.o.sidescrolloff = vim.o.scrolloff
vim.o.splitright = true
vim.o.splitbelow = true

-- (Nvim Tree) Disable netrw: https://github.com/nvim-tree/nvim-tree.lua#setup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Colors
vim.o.termguicolors = true
vim.cmd("colorscheme tokyonight-night")

-- Indentation
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.shiftwidth = vim.o.tabstop

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Netrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3