local M = {}

M.config = {
  style = "light"
  ui = {
    enabled = true,
    sep = "│",
  }
}

function M.setup(opts)
  require("atomic.theme").setup()

  M.opts = vim.tbl_extend("force", M.opts, config or {})
  if M.opts.ui.enabled then
    require("atomic.ui").setup(M.opts.ui)
  end
end

return M
