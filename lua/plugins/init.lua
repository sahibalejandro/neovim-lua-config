return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Neovim Core
  use 'nathom/filetype.nvim'
  use 'antoinemadec/FixCursorHold.nvim'

  -- Themes
  use 'EdenEast/nightfox.nvim'

  -- Syntax
  use 'kchmck/vim-coffee-script'

  -- Coding
  use 'mattn/emmet-vim' 
  use 'SirVer/ultisnips'
  use 'neovim/nvim-lspconfig'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'williamboman/nvim-lsp-installer'

  -- Finders
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }

  -- Interface
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  --use { 'nvim-lualine/lualine.nvim', require = { 'kyazdani42/nvim-web-devicons', opt = true } }
end)
