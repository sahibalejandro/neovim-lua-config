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
  local buf = vim.api.nvim_create_buf(false, true)
  local buf_lines = { 'List of tracked keymaps - Press q to close', '' }

  for i,keymap in ipairs(keymaps) do
    local keymap_len = string.len(keymap.keymap)
    max_keymap_len = keymap_len > max_keymap_len and keymap_len or max_keymap_len
  end

  for i,keymap in ipairs(keymaps) do
    local spacing = string.rep(' ', max_keymap_len - string.len(keymap.keymap) + 2)

    buf_lines[#buf_lines + 1] = " "
      .. keymap.mode
      .. "  "
      .. keymap.keymap
      .. spacing
      .. keymap.description
  end

  -- Calculate the width, height and positon of the
  -- window to place it in the center of the screen.
  local win_width = math.floor(vim.o.columns * 0.6)
  local win_height = math.floor(vim.o.lines * 0.6)
  local win_col = math.floor(vim.o.columns / 2 - win_width / 2)

  local win = vim.api.nvim_open_win(buf, false, {
    row = 2,
    col = win_col,
    style = 'minimal',
    border = 'single',
    width = win_width,
    height = win_height,
    relative = 'editor',
  })

  vim.api.nvim_set_current_win(win)
  vim.api.nvim_buf_set_lines(buf, 0, 0, nil, buf_lines)
  vim.api.nvim_buf_set_option(buf, 'modifiable', false)

  vim.keymap.set('n', 'q', function()
    vim.api.nvim_win_close(win, true)
  end, { buffer = buf })
end

function M.setup(options)
  options = options or {}
  options.keymap = options.keymap or '<leader>cs'

  M.keymap('Open Keymap Tracker', 'n', options.keymap, M.open, {})
end

return M
