return {
  "folke/trouble.nvim",
  opts = {
    auto_close = true,
    cycle_results = false,
  },

  keys = {
    { "<leader>lR", "<cmd>Trouble lsp_references<cr>" },
    { "<leader>ld", "<cmd>Trouble lsp_definitions<cr>" },
  },
}
