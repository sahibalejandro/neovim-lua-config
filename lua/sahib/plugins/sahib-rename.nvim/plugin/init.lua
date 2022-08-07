local function notify(message, level)
  vim.schedule(function()
    vim.notify(message, level)
  end)
end

vim.api.nvim_create_user_command("RenameCurrentFile", function()
  if vim.api.nvim_buf_get_name(0) == "" then
    notify("No file attached to current buffer.", vim.log.levels.WARN)
    return
  end

  local fullpath = vim.fn.expand("%:p:h")
  local filename = vim.fn.expand("%:t")

  vim.ui.input({ prompt = "New name: ", default = filename }, function (new_filename)
    if new_filename == nil or filename == new_filename then
      notify("Nothing to rename.")
      return
    end

    os.rename(fullpath.."/"..filename, fullpath.."/"..new_filename)

    local path = vim.fn.expand("%:h")

    vim.api.nvim_buf_delete(0, { force = true })
    vim.cmd("e "..path.."/"..new_filename)

    notify(filename.." renamed to "..new_filename)
  end)
end, { desc = "Rename current file" })
