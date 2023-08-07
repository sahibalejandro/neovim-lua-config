return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function ()
    -- set path = 1 to display the relative path name
    local filename_options = { 'filename', path = 1 }

    require("lualine").setup({
      options = {
        disabled_filetypes = {
          'NvimTree'
        },
        -- set section_separators to empty string to avoid breaking the startup screen.
        -- section_separators = ''
      },

      sections = {
        lualine_a = { filename_options },
        lualine_b = { 'branch' },
        lualine_c = { 'diff' },
        lualine_x = { 'diagnostics', 'filetype' }
      },

      inactive_sections = {
        lualine_c = { filename_options }
      },
    })
  end,
}
