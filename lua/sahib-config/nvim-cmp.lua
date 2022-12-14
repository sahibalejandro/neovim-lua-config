local toggle_nvim_cmp_enabled = function()
  local enabled = not vim.g.sahib_nvim_cmp_enabled
  vim.g.sahib_nvim_cmp_enabled = enabled

  print('nvim_cmp is '..(enabled and 'enabled' or 'disabled'))
end

vim.g.sahib_nvim_cmp_enabled = false
vim.keymap.set('n', '<leader>ac', toggle_nvim_cmp_enabled)

local cmp = require 'cmp'
cmp.setup({
  -- REQUIRED: Snippet engine is required.
  snippet = {
    expand = function(args)
      vim.fn['UltiSnips#Anon'](args.body)
    end,
  },

  enabled = function()
    return vim.g.sahib_nvim_cmp_enabled
  end,

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
  mapping = cmp.mapping.preset.insert({
    ['<tab>'] = cmp.mapping.confirm({ select = true })
  }),
})
