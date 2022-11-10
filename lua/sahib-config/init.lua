-- Packer plugins definiton
require 'sahib-config.packer'

-- Options needed to be set before plugins configurations
require 'sahib-config.vim-options-before'

-- Plugins configuration
-- Key mappings are defined in mappings.lua
require 'sahib-config.nvim-treesitter'
require 'sahib-config.nvim-tree'
require 'sahib-config.nvim-cmp'
require 'sahib-config.nvim-lspconfig'
require 'sahib-config.null-ls'
require 'sahib-config.emmet-vim'
require 'sahib-config.gitsigns'
require 'sahib-config.lualine'
require 'sahib-config.tokyonight'
require 'sahib-config.lazygit'

-- Options needed to be set after plugins configurations
require 'sahib-config.vim-options-after'

require 'sahib-config.mappings'
