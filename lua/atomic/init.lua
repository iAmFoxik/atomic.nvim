local core = require('atomic.theme.core')

local M = {}
local config = { style = "light" }

function M.syntax(syntax)
  for group, colors in pairs(syntax) do
    M.highlight(group, colors)
  end
end

function M.highlight(group, color)
  if color.style then
    if color.style:lower() ~= "none" then
      for s in string.gmatch(color.style, "([^,]+)") do
        color[s] = true
      end
    end

    color.style = nil
  end



  -- print(vim.inspect(group))
  -- print(vim.inspect(color))
  local t = vim.api.nvim_set_hl(0, group, color)

  -- print(vim.inspect(t))
end

function M.onColorScheme()
  vim.api.nvim_clear_autocmds({ group = "atomic" })
end

function M.setup()
  vim.opt.termguicolors = true

  vim.api.nvim_command 'hi clear'


  -- local colors = require('atomic.colors').setup(config)

  -- print(vim.inspect())
  local colors = require('atomic.colors').setup(config)
  local style = require('atomic.style').setup(config)

  for _, group in ipairs(core) do
    M.syntax(require(group).setup(colors, style))
  end

  local group = vim.api.nvim_create_augroup("atomic", {})
  vim.api.nvim_create_autocmd({ "ColorSchemePre" }, {
    group = group,
    pattern = { "*" },
    callback = function()
      require("atomic").onColorScheme()
    end,
  })
end

return M
