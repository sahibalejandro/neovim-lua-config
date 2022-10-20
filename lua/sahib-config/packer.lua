return require('packer').startup(function (use)
  use 'wbthomason/packer.nvim'

  -- Finders
  use { 'nvim-tree/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = 'nvim-lua/plenary.nvim' }

  -- Visuals
  use 'folke/tokyonight.nvim'
  use 'nvim-lualine/lualine.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'lewis6991/gitsigns.nvim', tag = 'release' }

  -- LSP
  use { 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim', 'neovim/nvim-lspconfig' }
  use { 'jose-elias-alvarez/null-ls.nvim' }

  -- Autocompletion
  use { 'hrsh7th/nvim-cmp', requires = { 'hrsh7th/cmp-path', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-nvim-lsp-signature-help' } }
  use 'mattn/emmet-vim'
end)
