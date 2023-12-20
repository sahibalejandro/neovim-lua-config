return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        'css',
        'lua',
        'tsx',
        'vim',
        'bash',
        'html',
        'json',
        'scss',
        'yaml',
        'regex',
        'vimdoc',
        'gdscript',
        'markdown',
        'gitignore',
        'dockerfile',
        'javascript',
        'typescript',
        'markdown_inline',
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
