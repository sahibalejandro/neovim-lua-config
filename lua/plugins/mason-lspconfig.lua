return {
  "williamboman/mason-lspconfig.nvim",

  dependencies = {
    "williamboman/mason.nvim",
  },

  config = function ()
    require("mason-lspconfig").setup()
    require("mason-lspconfig").setup_handlers({
      function (server_name)
        -- Add CMP capabilities to LSP servers.
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require("lspconfig")[server_name].setup({
          capabilities = capabilities
        })
      end,
    })
  end,
}
