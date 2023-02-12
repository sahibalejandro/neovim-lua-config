local M = {}

local defaults = {
  width = nil,
  height = nil,
  style = 'minimal',
  border = 'single',
  relative = 'editor',
  width_percent = 0.8,
}

local function value(table, key)
  return table[key] and table[key] or defaults[key]
end

local function make_win_opts(opts)
  local row
  local width = value(opts, 'width')
  local height = value(opts, 'height')

  if width == nil then
    width = vim.o.columns * value(opts, 'width_percent')
  end

  local col = vim.o.columns / 2 - width / 2

  if height ~= nil then
    row = vim.o.lines / 2 - height / 2
  else
    row = 2
    height = vim.o.lines - 8
  end

  return {
    row = row,
    col = col,
    width = width,
    height = height,
    style = value(opts, 'style'),
    border = value(opts, 'border'),
    relative = value(opts, 'relative'),
  }
end

function M.open(opts)
  opts = opts and opts or {}
  local buf = vim.api.nvim_create_buf(false, true)
  local win = vim.api.nvim_open_win(buf, true, make_win_opts(opts))

  vim.api.nvim_set_current_win(win)

  return win, buf
end

return M
