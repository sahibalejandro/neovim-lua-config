return {
  "hrsh7th/nvim-cmp",

  dependencies = {
    "SirVer/ultisnips",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
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
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' }
      }, {
        { name = 'buffer' }
      }),

      mapping = cmp.mapping.preset.insert({
        ['<C-j>'] = cmp.mapping.scroll_docs(1),
        ['<C-k>'] = cmp.mapping.scroll_docs(-1),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
      })
    })
  end
}
