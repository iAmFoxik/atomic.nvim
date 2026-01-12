local M = {}

M.width_by_buf = {}
M.width = 1

-- function M.update_width()
--   local last = vim.api.nvim_buf_line_count(0)
--   M.width = tostring(last):len()
-- end
function M.update_width(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  local last = vim.api.nvim_buf_line_count(bufnr)
  M.width_by_buf[bufnr] = tostring(last):len()
end

function M.get_width()
  local bufnr = vim.api.nvim_get_current_buf()
  return M.width_by_buf[bufnr] or 1
end

function M.get_lnum()
  if vim.wo.relativenumber and vim.v.relnum ~= 0 then
    return vim.v.relnum
  end

  return vim.v.lnum
end

function M.render()
  local width = M.get_width()
  if vim.v.virtnum < 0 then
    return string.rep(" ", width) .. M.sep
  end

  local lnum = tostring(M.get_lnum())

  local pad = (" "):rep(width - #lnum)

  return pad .. lnum .. M.sep
end

function M.setup(opts)
  opts = opts or {}
  M.sep = opts.sep or "│"

  local group = vim.api.nvim_create_augroup("StatusCol", { clear = true })

  vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter", "TextChanged", "TextChangedI", "BufWritePost" }, {
    callback = function()
      M.update_width()
    end,
  })

  M.update_width()

  local stc = "%#SignColumn#%s%#LineNr#%{%v:lua.require('atomic.ui').render()%}"

  vim.api.nvim_set_option_value("stc", stc, { scope = "global" })
  vim.api.nvim_set_option_value("signcolumn", "yes:1", { scope = "global" })

  if opts.ft_ignore then
    vim.api.nvim_create_autocmd("FileType", { group = group, pattern = opts.ft_ignore, command = "setlocal stc=" })
    vim.api.nvim_create_autocmd("BufWinEnter", {
      group = group,
      callback = function()
        if vim.tbl_contains(opts.ft_ignore, vim.api.nvim_get_option_value("ft", { scope = "local" })) then
          vim.api.nvim_set_option_value("stc", "", { scope = "local" })
        end
      end,
    })
  end

  if opts.bt_ignore then
    vim.api.nvim_create_autocmd("BufWinEnter", {
      group = group,
      callback = function()
        local bt = vim.bo.buftype
        if vim.tbl_contains(opts.bt_ignore, bt) then
          vim.opt_local.stc = ""
        end
      end,
    })
  end
end

return M
