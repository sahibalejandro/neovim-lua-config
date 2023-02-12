local modal = require('nvim-lua-ui.modal')

local M = {}
local keymaps = {}

function M.keymap(description, mode, keymap, command, options)
  vim.keymap.set(mode, keymap, command, options)

  keymaps[#keymaps + 1] = {
    mode = mode,
    keymap = keymap,
    command = command,
    options = options,
    description = description,
  }
end

function M.open()
  local max_keymap_len = 0
  local buf_lines = { 'List of tracked keymaps - Press q to close', '' }

  for i,keymap in ipairs(keymaps) do
    local keymap_len = #keymap.keymap
    max_keymap_len = keymap_len > max_keymap_len and keymap_len or max_keymap_len
  end

  for i,keymap in ipairs(keymaps) do
    local spacing = string.rep(' ', max_keymap_len - #keymap.keymap + 2)

    buf_lines[#buf_lines + 1] = " "
      .. keymap.mode
      .. "  "
      .. keymap.keymap
      .. spacing
      .. keymap.description
  end

  local win, buf = modal.open({
    height = #buf_lines,
    width_percent = 0.5,
  })

  vim.api.nvim_buf_set_lines(buf, 0, 0, nil, buf_lines)
  vim.api.nvim_feedkeys('gg', 'n', true)
  vim.api.nvim_buf_set_option(buf, 'modifiable', false)

  vim.keymap.set('n', 'q', function()
    vim.api.nvim_win_close(win, true)
  end, { buffer = buf })
end

function M.setup()
  vim.api.nvim_create_user_command('KeymapTracker', M.open, { desc = 'Open Keymap Tracker' })
end

return M
