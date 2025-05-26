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

  vim.api.nvim_set_hl(0, group, color)
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

  -- -- Неизменяемые переменные (readonly)
  -- vim.api.nvim_set_hl(0, "@lsp.typemod.variable.readonly.rust", { fg = "#00FF00" }) -- Зеленый цвет
  --
  -- -- Изменяемые переменные (без модификатора readonly)
  -- vim.api.nvim_set_hl(0, "@lsp.type.variable.rust", { fg = "#FF0000" }) -- Красный цвет
end

return M
