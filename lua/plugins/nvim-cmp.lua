return {
  "hrsh7th/nvim-cmp",

  dependencies = {
    "SirVer/ultisnips",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "quangnguyen30192/cmp-nvim-ultisnips",
  },

  config = function ()
    local cmp = require("cmp")

    cmp.setup({
      -- Snippet engine is REQUIRED
      snippet = {
        expand = function(args)
          vim.fn['UltiSnips#Anon'](args.body)
        end
      },

      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },

      sources = cmp.config.sources({
        { name = 'ultisnips' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'path' },
      }, {
        { name = 'buffer' }
      }),

      mapping = cmp.mapping.preset.insert({
        ['<tab>'] = cmp.mapping.confirm({ select = true }),
      })
    })
  end
}
