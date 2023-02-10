local null_ls = require('null-ls')

local eslint_config_files = {
  '.eslintrc', -- not standard, but some projects have it
  '.eslintrc.js',
  '.eslintrc.cjs',
  '.eslintrc.yml',
  '.eslintrc.yaml',
  '.eslintrc.json',
  'eslint.config.js',
}

local prettier_config_files = {
  '.prettierrc',
  '.prettierrc.js',
  '.prettierrc.cjs',
  '.prettierrc.yml',
  '.prettierrc.yaml',
  '.prettierrc.json',
  '.prettierrc.toml',
  '.prettierrc.json5',
  'prettier.config.js',
  'prettier.config.cjs',
}

null_ls.setup({
  debug = true,
  sources = {
    -- eslint classic
    null_ls.builtins.diagnostics.eslint_d.with({
      condition = function(utils)
        return not utils.root_has_file({ '.pnp.cjs' }) and utils.root_has_file(eslint_config_files)
      end
    }),

    -- eslint with Yarn PnP
    null_ls.builtins.diagnostics.eslint_d.with({
      command = 'yarn',
      args = { 'eslint', '-f', 'json', '--stdin', '--stdin-filename', '$FILENAME' },
      condition = function(utils)
        return utils.root_has_file({ '.pnp.cjs' }) and utils.root_has_file(eslint_config_files)
      end
    }),

    null_ls.builtins.formatting.prettierd.with({
      condition = function(utils)
        return utils.root_has_file(prettier_config_files)
      end
    })
  }
})

require('mason-null-ls').setup()
