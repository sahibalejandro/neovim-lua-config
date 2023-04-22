return {
  "nvim-tree/nvim-tree.lua",

  config = true,
  dependencies = { "nvim-tree/nvim-web-devicons" },

  keys = {
    { "<leader>1", "<cmd>NvimTreeToggle<cr>" },
    { "<leader>2", "<cmd>NvimTreeFindFile<cr>" },
  },
}
