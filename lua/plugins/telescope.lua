return {
  "nvim-telescope/telescope.nvim",

  tag = "0.1.1",
  dependencies = { "nvim-lua/plenary.nvim" },

  keys = {
    { "<leader>o", "<cmd>Telescope find_files<cr>" },
    { "<leader>p", "<cmd>Telescope oldfiles<cr>" },
    { "<leader>s", "<cmd>Telescope live_grep<cr>" },
  },
}
