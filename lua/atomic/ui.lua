local M = {}

M.width = 1

function M.update_width()
  local last = vim.api.nvim_buf_line_count(0)
  M.width = tostring(last):len()
end

function M.get_lnum()
  if vim.wo.relativenumber and vim.v.relnum ~= 0 then
    return vim.v.relnum
  end

  return vim.v.lnum
end

function M.render()
  local sign = vim.v.sign or " "

  if vim.v.virtnum < 0 then
    return sign .. " " .. string.rep(" ", M.width) .. M.sep
  end

  local lnum = M.get_lnum()

  return string.format("%s %*d%s", sign, M.width, lnum, M.sep)
end

function M.setup(opts)
  M.sep = opts.sep

  vim.api.nvim_create_autocmd({ "BufEnter", "TextChanged", "TextChangedI" }, {
    callback = function()
      M.update_width()
    end,
  })

  M.update_width()

  vim.opt.statuscolumn = "%!v:lua.require('atomic.ui').render()"
end

return M
