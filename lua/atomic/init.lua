local M = {}

M.config = {
  style = "light",
  ui = {
    enabled = false,
    sep = "│",
    ft_ignore = {
      "neo-tree",
    },
    bt_ignore = {
      "nofile",
      "prompt",
    },
  },
}

function M.setup(opts)
  require("atomic.theme").setup()

  M.opts = vim.tbl_extend("force", M.config, opts or {})
  if M.opts.ui.enabled then
    require("atomic.ui").setup(M.opts.ui)
  end
end

return M
