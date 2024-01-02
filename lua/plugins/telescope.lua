return {
  "nvim-telescope/telescope.nvim",

  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },

  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
          width = 0.90,
          preview_cutoff = 30,
        },
      },
    })

    telescope.load_extension("fzf")

    vim.keymap.set("n", "<leader>o", builtin.find_files)
    vim.keymap.set("n", "<leader>k", builtin.grep_string)
    vim.keymap.set("n", "<leader>s", builtin.live_grep)
    vim.keymap.set("n", "<leader>p", builtin.oldfiles)
  end,
}
