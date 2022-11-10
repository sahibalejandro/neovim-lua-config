local function lazygit()
  vim.cmd('terminal lazygit')
  vim.cmd('startinsert')
  vim.opt_local.number = false
  vim.opt_local.relativenumber = false
  vim.opt_local.signcolumn = 'no'
end

vim.api.nvim_create_user_command('Lazygit', lazygit, { desc = "Launch Lazygit"})
