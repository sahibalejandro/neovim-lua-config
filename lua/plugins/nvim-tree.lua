return {
  "nvim-tree/nvim-tree.lua",

  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function ()
    require("nvim-tree").setup({
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
  end,

  keys = {
    { "<leader>1", "<cmd>NvimTreeToggle<cr>" },
    { "<leader>2", "<cmd>NvimTreeFindFile<cr>" },
  },
}
