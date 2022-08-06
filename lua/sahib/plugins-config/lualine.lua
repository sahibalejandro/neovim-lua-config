require("lualine").setup {
  options = {
    component_separators = { left = ">", right = "<" },
    section_separators = { left = "", right = "" },
    refresh = { statusline = 100 },
  },
  sections = {
    lualine_a = { "%f %m%r%h%w%q" },
    lualine_b = { "branch" },
    lualine_c = { "diff" },
    lualine_x = { "diagnostics", "filetype" },
    lualine_y = { "%l:%c / %L" },
    lualine_z = { "progress" },
  },
  inactive_sections = {
    lualine_a = { "filename" },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  }
}
