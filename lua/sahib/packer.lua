return require("packer").startup(function(use)
  -- Community Plugins
  use "mattn/emmet-vim"
  use "nathom/filetype.nvim"
  use "neovim/nvim-lspconfig"
  use "wbthomason/packer.nvim"
  use "EdenEast/nightfox.nvim"
  use { "lewis6991/gitsigns.nvim", tag = "release" }
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use { "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } }
  use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } }
  use { "nvim-telescope/telescope.nvim", tag = "0.1.x", requires = { {"nvim-lua/plenary.nvim"} } }

  -- Sahib Plugins
  use "~/.config/nvim/lua/sahib/plugins/sahib-rename.nvim"
  use "~/.config/nvim/lua/sahib/plugins/sahib-prettier.nvim"
end)
