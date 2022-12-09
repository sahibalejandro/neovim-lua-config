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
  vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, opts)
  -- Displays hover information about the symbol under the cursor in a floating window.
  vim.keymap.set('n', '<leader>ls', vim.lsp.buf.hover, opts)
  -- Jumps to the definition of the symbol under the cursor.
  vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, opts)
  -- Lists all the references to the symbol under the cursor in the quickfix window.
  vim.keymap.set('n', '<leader>lR', vim.lsp.buf.references, opts)
  -- Jumps to the definition of the type of the symbol under the cursor.
  vim.keymap.set('n', '<leader>lt', vim.lsp.buf.type_definition, opts)

  vim.keymap.set('n', '<leader>li', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '<leader>ln', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<leader>lp', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', '<leader>lq', vim.diagnostic.setloclist, opts)
end

local serverOptions = {
  on_attach = on_attach,
  capabilities = capabilities,
}

local lspConfig = require('lspconfig')

-- TypeScript (js, jsx, ts, tsx)
lspConfig.tsserver.setup(serverOptions);

-- Flow
-- lspConfig.flow.setup(serverOptions);

-- Vue.js
lspConfig.vuels.setup(serverOptions);

-- CSS
lspConfig.cssls.setup(serverOptions);
