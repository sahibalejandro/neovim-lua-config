require('mason').setup()
require('mason-lspconfig').setup()

local lsp = require('lspconfig')
local mappings = require('user.mappings')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

-- General options for all servers
local common_options = {
  on_attach = function (_, buffer)
    mappings.lsp_mappings({ buffer = buffer })
  end,
  capabilities = cmp_nvim_lsp.default_capabilities()
}

-- Specific options for TypeScript
local tsserver_options = {
  on_attach = common_options.on_attach,
  capabilities = common_options.capabilities,

  -- Disable single file support to ensure the server is
  -- attached only when root_dir() does not return nil.
  single_file_support = false,

  root_dir = function(filepath)
    -- Disable tsserver if the current project is using Flow
    if lsp.util.root_pattern('.flowconfig')(filepath) then
      return nil
    end

    return lsp.util.root_pattern('tsconfig.json', 'jsconfig.json', 'package.json', '.git')(filepath)
  end
}

lsp.flow.setup(common_options)
lsp.cssls.setup(common_options)
lsp.volar.setup(common_options)
lsp.lua_ls.setup(common_options)
lsp.svelte.setup(common_options)
lsp.csharp_ls.setup(common_options)
lsp.tsserver.setup(tsserver_options)
lsp.intelephense.setup(common_options)
lsp.cssmodules_ls.setup(common_options)
