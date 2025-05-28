local M = {}

function M.setup(configColors, configStyle)
  local colors = configColors
  local style = configStyle

  return {
    LspInlayHint = { fg = colors.inlay_hint_fg, bg = colors.inlay_hint_bg }
  }
end

return M
