require('nvim-tree').setup({
  view = {
    width = 40,
    number = true,
    relativenumber = true,
  },

  actions = {
    open_file = {
      quit_on_open = true
    }
  }
})
