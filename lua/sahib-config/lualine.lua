require('lualine').setup({
  options = {
    theme = 'tokyonight',
    icons_enabled = false,
    component_separators = { left = '|', right = '|' },
    section_separators = '',
  },

  sections = {
    lualine_a = {
      -- use path = 1 to display the relative path name
      { 'filename', path = 1 },
    },
    lualine_b = { 'branch' },
    lualine_c = { 'diff' },
    lualine_x = { 'diagnostics', 'filetype' },
  },
})
