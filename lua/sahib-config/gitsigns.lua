require('gitsigns').setup({
  current_line_blame_opts = {
    delay = 100,
  },
  current_line_blame_formatter = '<abbrev_sha> at <author_time> by <author> - <summary>',
})
