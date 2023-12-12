return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("nvim-tree").setup({
      view = {
        number = true,
        relativenumber = true,
      },

      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    })
  end,

  keys = {
    { "<leader>1", ":NvimTreeToggle<cr>" },
    { "<leader>2", ":NvimTreeFindFile<cr>" },
  },
}
