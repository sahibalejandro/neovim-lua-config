return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,

  config = function ()
    require("tokyonight").setup({
      style = "storm",
      transparent = true,
      on_highlights = function (hl, color)
        hl.CursorLine = {
          bg = "#202334"
        }
        hl.TelescopeBorder = {
          fg = "#88A0EB",
        }
        hl.TelescopeSelection = {
          bg = "#202334"
        }
        hl.TelescopeNormal = {
          fg = "#C0CAF5"
        }
      end,
    })

    vim.cmd([[colorscheme tokyonight]])
  end
}
