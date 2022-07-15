require("nvim-lsp-installer").setup {}
local nvim_lsp = require('lspconfig')

-- Called for each server when it is attached to the buffer.
local on_attach = function(_, buffer)
  vim.api.nvim_buf_set_keymap(buffer, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', { noremap = true })
  vim.api.nvim_buf_set_keymap(buffer, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', { noremap = true })
  vim.api.nvim_buf_set_keymap(buffer, 'n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', { noremap = true })
end

-- List of servers, add more as needed.
local servers = { 'tsserver' }

-- Set common configuration to all defined servers.
for _, server in ipairs(servers) do
  nvim_lsp[server].setup {
    on_attach = on_attach,
  }
end
