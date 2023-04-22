return {
  "folke/tokyonight.nvim",

  opts = {
    style = "day",
  },

  config = function (_, opts)
    require("tokyonight").setup(opts)
    vim.cmd("colorscheme tokyonight")
  end,
}
