require('mason').setup()
require('mason-lspconfig').setup()

local lsp = require('lspconfig')
local mappings = require('config.mappings')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

local server_options = {
  on_attach = function (client, buffer)
    mappings.lsp_mappings({ buffer = buffer })
  end,
  capabilities = cmp_nvim_lsp.default_capabilities()
}

lsp.volar.setup(server_options)
lsp.tsserver.setup(server_options)
