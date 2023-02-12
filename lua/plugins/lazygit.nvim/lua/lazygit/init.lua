local M = {}

function M.open()
  vim.api.nvim_command(':terminal lazygit')

  vim.opt_local.number = false
  vim.opt_local.signcolumn = 'no'
  vim.opt_local.relativenumber = false

  vim.api.nvim_command('startinsert')
end

function M.setup()
  vim.api.nvim_create_user_command('LazyGit', M.open, { desc = 'Toggle LazyGit' })
  vim.api.nvim_create_autocmd({ 'TermClose' }, { pattern = '*lazygit', command = 'bd!' })
end

return M
