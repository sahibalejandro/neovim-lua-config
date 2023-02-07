local cmp = require('cmp')

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
  }),

  mapping = cmp.mapping.preset.insert({
    ['<c-j>'] = cmp.mapping.scroll_docs(1),
    ['<c-k>'] = cmp.mapping.scroll_docs(-1),
    ['<tab>'] = cmp.mapping.confirm({ select = true }),
  })
})
