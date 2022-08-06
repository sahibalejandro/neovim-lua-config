-- General
vim.g.mapleader = " "
vim.opt.wrap = false
vim.opt.scrolloff = 5
vim.opt.swapfile = false

-- Visuals
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.cmd "colorscheme duskfox"
--vim.cmd "hi Normal guibg=none"
--vim.cmd "hi NormalNC guibg=none"
--vim.cmd "hi EndOfBuffer guifg=grey"
--vim.cmd "hi StatusLine guibg=none"
--vim.cmd "hi StatusLineNC guibg=none"

-- Indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Netrw
vim.g.netrw_preview = 1
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
