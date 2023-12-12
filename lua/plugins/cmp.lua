return {
  "hrsh7th/nvim-cmp",

  dependencies = {
    "SirVer/ultisnips",
  },

  config = function()
    local cmp = require("cmp")

    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["UltiSnips#Anon"](args.body)
        end,
      },

      sources = cmp.config.sources({
        { name = "nvim_lsp" },
      }, {
        name = "buffer",
      }),

      mapping = cmp.mapping.preset.insert({
        ["<c-j>"] = cmp.mapping.select_next_item(),
        ["<c-k>"] = cmp.mapping.select_prev_item(),
        ["<c-n>"] = cmp.mapping.scroll_docs(1),
        ["<c-p>"] = cmp.mapping.scroll_docs(-1),
        ["<c-k>"] = cmp.mapping.select_prev_item(),
        ["<tab>"] = cmp.mapping.confirm({ select = true }),
        ["<cr>"] = cmp.mapping.confirm({ select = true }),
        ["<esc>"] = cmp.mapping.abort(),
      }),
    })
  end,
}
