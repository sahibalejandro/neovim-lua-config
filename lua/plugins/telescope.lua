return {
  "nvim-telescope/telescope.nvim",

  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    local builtin = require("telescope.builtin")

    require("telescope").setup({
      defaults = {
        layout_strategy = "vertical",
        layout_config = { width = 0.9 },
      },
    })

    vim.keymap.set("n", "<leader>o", builtin.find_files)
    vim.keymap.set("n", "<leader>k", builtin.grep_string)
    vim.keymap.set("n", "<leader>s", builtin.live_grep)
    vim.keymap.set("n", "<leader>p", builtin.oldfiles)
  end,
}
