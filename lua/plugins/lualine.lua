return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    sections = {
      lualine_a = { "%f" },
      lualine_b = { "branch", "diff" },
      lualine_c = { },
      lualine_x = { "diagnostics", "filetype" },
    }
  }
}
