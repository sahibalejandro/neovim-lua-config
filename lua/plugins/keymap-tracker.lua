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
  local buf = vim.api.nvim_create_buf(false, true)

  -- todo: calculate the longest keymap to know in wich column the descriptions will be printed.
  local buf_lines = { 'Press q to exit', '' }
  for i,keymap in ipairs(keymaps) do
    buf_lines[#buf_lines + 1] = keymap.mode .." " .. keymap.keymap .. " - " .. keymap.description
  end

  local win = vim.api.nvim_open_win(buf, false, {
    -- todo: center the floating window on the screen
    col = 0,
    row = 0,
    width = 80,
    style = 'minimal',
    border = 'single',
    relative = 'editor',
    height = #buf_lines + 1,
  })

  vim.api.nvim_set_current_win(win)
  vim.api.nvim_buf_set_lines(buf, 0, 0, nil, buf_lines)
  vim.api.nvim_buf_set_option(buf, 'modifiable', false)

  vim.keymap.set('n', 'q', function () vim.api.nvim_win_close(win, true) end, { buffer = buf })
end

function M.setup(options)
  options = options or {}
  options.keymap = options.keymap or '<leader>cs'

  M.keymap('Open Keymap Tracker', 'n', options.keymap, M.open, {})
end

return M
