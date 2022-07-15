require('lualine').setup {
  options = {
    section_separators = {}
  },
  sections = {
    lualine_a = { '%f%m%r%h%w' },
    lualine_b = { 'branch' },
    lualine_c = {},
    lualine_x = { 'diagnostics' },
    lualine_y = { 'filetype' },
    lualine_z = { 'location' },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = { 'diagnostics ' },
    lualine_c = {},
    lualine_x = { 'branch' },
  },
}
