local null_ls = require('null-ls')

local eslint_config_files = {
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

function make_condition_for(files)
  return function(utils)
    return utils.root_has_file(files)
  end
end

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      condition = make_condition_for(eslint_config_files)
    }),

    null_ls.builtins.formatting.prettierd.with({
      condition = make_condition_for(prettier_config_files)
    })
  }
})

require('mason-null-ls').setup()
