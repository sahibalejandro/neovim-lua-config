return {
  "folke/trouble.nvim",
  opts = {
    auto_close = true,
    cycle_results = false,
  },

  keys = {
    { "<leader>lR", "<cmd>TroubleToggle lsp_references<cr>" },
    { "<leader>ld", "<cmd>TroubleToggle lsp_definitions<cr>" },
  },
}
