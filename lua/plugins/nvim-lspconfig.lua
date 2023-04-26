return {
  "neovim/nvim-lspconfig",

  config = function ()
    vim.keymap.set("n", "<leader>lq", vim.diagnostic.setloclist)
    vim.keymap.set("n", "<leader>lo", vim.diagnostic.open_float)

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function (e)
        local opts = { buffer = e.buf }

        vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', '<leader>li', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>lI', vim.lsp.buf.incoming_calls, opts)
        vim.keymap.set('n', '<leader>lR', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<leader>ltd', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<leader>f', function ()
          vim.lsp.buf.format({ async = true })
        end, opts)
      end,
    })
  end,
}
