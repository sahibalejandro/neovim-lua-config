-- Packer plugins definiton
require 'sahib-config.packer'

-- Plugins configuration
-- Key mappings are defined in mappings.lua
require 'sahib-config.nvim-treesitter'
require 'sahib-config.nvim-tree'
require 'sahib-config.nvim-cmp'
require 'sahib-config.nvim-lspconfig'
require 'sahib-config.gitsigns'
require 'sahib-config.lualine'
require 'sahib-config.tokyonight'

-- Neovim configuration
require 'sahib-config.vim-options'
require 'sahib-config.mappings'
