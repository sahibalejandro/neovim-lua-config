require('mason').setup()
require('mason-lspconfig').setup()

local lsp = require('lspconfig')
local mappings = require('user.mappings')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

-- General options for all servers
local server_options = {
  on_attach = function (client, buffer)
    mappings.lsp_mappings({ buffer = buffer })
  end,
  capabilities = cmp_nvim_lsp.default_capabilities()
}

-- Specific options for TypeScript
local typescript_options = {
  on_attach = server_options.on_attach,
  capabilities = server_options.capabilities,
  -- Disable single file support to make sure the server is only
  -- attached when root_dir does not return nil.
  single_file_support = false,
  root_dir = function(filepath)
    if lsp.util.root_pattern('.flowconfig')(filepath) then
      return nil
    end

    return lsp.util.root_pattern('tsconfig.json', 'jsconfig.json', 'package.json', '.git')(filepath)
  end
}

lsp.flow.setup(server_options)
lsp.volar.setup(server_options)
lsp.intelephense.setup(server_options)
lsp.tsserver.setup(typescript_options)
