local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.standardjs,
    null_ls.builtins.diagnostics.eslint.with({
      prefer_local = "node_modules/.bin",
      condition = function (utils)
        return utils.root_has_file({ ".eslintrc.js", ".eslintrc.json" })
      end,
    }),

    null_ls.builtins.formatting.prettier.with({
      prefer_local = "node_modules/.bin",
      condition = function(utils)
        return utils.root_has_file({ ".prettierrc", ".prettierrc.js", ".prettierrc.json" })
      end
    }),
  }
})
