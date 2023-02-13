return require('packer').startup({
  function (use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'

    use 'folke/tokyonight.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'lewis6991/gitsigns.nvim'

    use {
      'folke/trouble.nvim',
      config = function()
        require('trouble').setup()
      end,
    }

    use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.1',
    }

    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
    }

    use {
      'nvim-tree/nvim-tree.lua',
      'nvim-tree/nvim-web-devicons',
    }

    use {
      'mattn/emmet-vim',
      config = function()
        vim.g.user_emmet_leader_key = '<c-z>'
      end,
    }

    use {
      'williamboman/mason.nvim',

      -- nvim-lspconfig will enable lsp configurations for neovim
      -- mason-lspconfig is the bridge between mason.nvim and nvim-lspconfig
      'neovim/nvim-lspconfig',
      'williamboman/mason-lspconfig.nvim',

      -- null-ls will enable diagnostics from linters and code formatters
      -- mason-null-ls is the bridge between mason.nvim and null-ls
      'jose-elias-alvarez/null-ls.nvim',
      'jay-babu/mason-null-ls.nvim',
    }

    use {
      'hrsh7th/nvim-cmp',
      requires = {
        'SirVer/ultisnips',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lsp-signature-help',
      },
    }

    use {
      '~/.config/nvim/lua/plugins/keymap-tracker.nvim',
      config = function()
        require('keymap-tracker').setup()
      end,
    }

    use {
      '~/.config/nvim/lua/plugins/lazygit.nvim',
      config = function()
        require('lazygit').setup()
      end,
    }
  end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    },
  },
})
