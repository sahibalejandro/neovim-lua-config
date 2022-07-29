return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'nathom/filetype.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)
