require('mason').setup();
require('mason-lspconfig').setup();

-- Get the capabilities for all servers, pass this variable
-- to each language server configuration.
local capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

-- These are the only key mappings defined outside mappings.lua
local on_attach = function (client, buffer)
  local opts = { buffer = buffer }
  vim.keymap.set('n', '<leader>ls', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', '<leader>lR', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>lR', vim.lsp.buf.type_definition, opts)
end

-- TypeScript (js, jsx, ts, tsx)
require('lspconfig').tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
});
