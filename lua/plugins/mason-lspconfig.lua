return {
  "williamboman/mason-lspconfig.nvim",

  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },

  config = function()
    require("mason-lspconfig").setup()

    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.tsserver.setup({
      capabilities = capabilities,
    })

    -- Global Keymaps
    vim.keymap.set("n", "<leader>lo", vim.diagnostic.open_float)

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(event)
        -- Buffer local mappings
        local options = { buffer = event.buf }
        vim.keymap.set("n", "<leader>lt", vim.lsp.buf.type_definition, options)
        vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, options)
        vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, options)
        vim.keymap.set("n", "<leader>li", vim.lsp.buf.hover, options)
      end,
    })
  end,
}
