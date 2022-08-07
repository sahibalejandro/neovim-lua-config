vim.api.nvim_create_user_command("LazyGit", function ()
  vim.cmd("terminal lazygit")
  vim.cmd("startinsert")
  vim.opt_local.number = false
  vim.opt_local.relativenumber = false
  vim.opt_local.signcolumn = "no"
end, { desc = "Launch LazyGit" })
