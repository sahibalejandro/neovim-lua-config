require('mason').setup();
require('mason-lspconfig').setup();

-- To setup lspconfig with cmp-nvim-lsp
local capabilities = require('cmp_nvim_lsp').update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

-- TypeScript (js, jsx, ts, tsx)
require('lspconfig').tsserver.setup({ capabilities });
