local M = {}

function M.setup(configColors, configStyle)
  local colors = configColors
  local style = configStyle

  return {
    Normal = { fg = colors.normal_fg, bg = colors.normal_bg, style = style.none },
  }
end

return M
