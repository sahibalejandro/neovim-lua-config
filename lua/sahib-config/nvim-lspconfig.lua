require('mason').setup();
require('mason-lspconfig').setup();

-- Get the capabilities for all servers, pass this variable
-- to each language server configuration.
local capabilities = require('cmp_nvim_lsp').update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

-- TypeScript (js, jsx, ts, tsx)
require('lspconfig').tsserver.setup({ capabilities });
