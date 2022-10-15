local cmp = require 'cmp'

cmp.setup({
  -- Define the sources where completion options will be pulled.
  sources = cmp.config.sources({
    -- Add completion for paths (it might not be pleasant when using "paths" option on tsconfig for TypeScript projects)
    { name = 'path', option = { label_trailing_slash = true } },
    -- Add general LSP completion
    { name = 'nvim_lsp' },
    -- Add completion for function signatures
    { name = 'nvim_lsp_signature_help' },
  }),

  -- To enable mappings in insert mode and allow completion options to be selected.
  mapping = cmp.mapping.preset.insert(),
})
