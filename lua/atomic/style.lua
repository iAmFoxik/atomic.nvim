local M = {}

function M.setup(config)
  local style     = {
    -- default styles
    none      = "NONE",
    bold      = "bold",
    italic    = "italic",
    underline = "underline",
    undercurl = "undercurl",
    reverse   = "reverse",
    strike    = "strikethrough",

  }

  style.bi_style  = style.bold .. ',' .. style.italic
  style.strings   = style.italic
  style.mutable   = style.undercurl
  style.classname = style.bold

  return style
end

return M
