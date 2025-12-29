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
  if vim.v.virtnum < 0 then
    return string.rep(" ", M.width) .. M.sep
  end

  local lnum = tostring(M.get_lnum())

  local pad = (" "):rep(M.width - #lnum)

  return pad .. lnum .. M.sep
end

function M.setup(opts)
  opts = opts or {}
  M.sep = opts.sep or "│"

  vim.api.nvim_create_autocmd({ "BufEnter", "TextChanged", "TextChangedI" }, {
    callback = function()
      M.update_width()
    end,
  })

  M.update_width()

  local stc = "%s%{%v:lua.require('atomic.ui').render()%}"

  vim.api.nvim_set_option_value("stc", stc, { scope = "global" })

  local id = vim.api.nvim_create_augroup("StatusCol", {})

  if opts.ft_ignore then
    vim.api.nvim_create_autocmd("FileType", { group = id, pattern = opts.ft_ignore, command = "setlocal stc=" })
    vim.api.nvim_create_autocmd("BufWinEnter", {
      group = id,
      callback = function()
        if vim.tbl_contains(opts.ft_ignore, vim.api.nvim_get_option_value("ft", { scope = "local" })) then
          vim.api.nvim_set_option_value("stc", "", { scope = "local" })
        end
      end,
    })
  end
end

return M
