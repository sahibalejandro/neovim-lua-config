-- General
vim.g.mapleader = ' '
vim.o.wrap = false
vim.o.scrolloff = 5
vim.o.swapfile = false

-- Visuals
vim.o.termguicolors = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
vim.o.cursorline = false
vim.cmd('colorscheme nightfox')
vim.cmd('hi Normal guibg=none')
vim.cmd('hi NormalNC guibg=none')
vim.cmd('hi NvimTreeNormal guibg=none')
vim.cmd('hi EndOfBuffer guifg=grey')
vim.cmd('hi StatusLine guibg=none')
vim.cmd('hi StatusLineNC guibg=none')

-- Indentation
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.softtabstop = 0

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
--vim.o.grepprg = 'rgwaka --vimgrep --smart-case -- "$*"'

-- Plugin: emmet-vim
vim.g.user_emmet_leader_key = '<c-z>'

-- Plugin: ultisnips
vim.g.UltiSnipsExpandTrigger = '<tab>'
--vim.g.UltiSnipsJumpForwardTrigger = '<c-l>'
--vim.g.UltiSnipsJumpBackwardTrigger = '<c-h>'
