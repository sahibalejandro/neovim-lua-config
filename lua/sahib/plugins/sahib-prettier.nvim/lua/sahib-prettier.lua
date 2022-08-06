local M = {}

local default_conf = {
  config_file = ".prettierrc.json",
  pattern = "*.js,*.jsx,*.ts,*.tsx",
  binary = "./node_modules/.bin/prettier",
}

function M.config_file_exists()
  local config_file_exists = false
  local config_file = io.open(M.conf.config_file, "r")

  if config_file ~= nil then
    io.close(config_file)
    config_file_exists = true
  end

  return config_file_exists
end

function M.notify_plugin_is_enabled()
  vim.schedule(function()
    vim.notify("[Prettier] "..M.conf.config_file.." found.", vim.log.levels.INFO)
  end)
end

function M.create_user_command()
  vim.api.nvim_create_user_command("Prettier", function()
    local file = vim.api.nvim_buf_get_name(0)

    if file == "" then
      print("No file attached to current buffer.")
      return
    end

    vim.fn.jobstart({M.conf.binary, "--write", file}, {
      on_exit = function()
        vim.cmd("e %")
      end,
    })

  end, { desc = "Run prettier on current file." })
end

function M.create_autocmd()
  -- TODO: Check if this can be BufWritePre to pass buffer
  -- contents to Prettier before writing to disk.
  vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("sahib-prettier-augroup", { clear = true }),
    pattern = M.conf.pattern,
    callback = function()
      vim.cmd("Prettier")
    end,
  })
end

M.setup = function(user_conf)
  M.conf = vim.tbl_deep_extend("force", default_conf, user_conf or {})

  if M.config_file_exists() then
    M.notify_plugin_is_enabled()
    M.create_user_command()
    M.create_autocmd()
  end
end

return M
