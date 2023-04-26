return {
  "lewis6991/gitsigns.nvim",

  lazy = false,

  config = function ()
    require("gitsigns").setup({
      current_line_blame_opts = {
        delay = 100
      },

      current_line_blame_formatter = '<abbrev_sha> at <author_time> by <author> - <summary>',
    })
  end,

  keys = {
    { "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>" },
  },
}
