return {
  "nvim-telescope/telescope.nvim",

  tag = "0.1.1",
  dependencies = { "nvim-lua/plenary.nvim" },

  keys = {
    -- Lists files in your current directory.
    { "<leader>o", "<cmd>Telescope find_files<cr>" },

    -- Lists previously open files.
    { "<leader>p", "<cmd>Telescope oldfiles<cr>" },

    -- Search for a string in your current working directory.
    { "<leader>s", "<cmd>Telescope live_grep<cr>" },

    -- Searches for the string under the cursor or selection.
    { "<leader>k", "<cmd>Telescope grep_string<cr>"},
  },
}
