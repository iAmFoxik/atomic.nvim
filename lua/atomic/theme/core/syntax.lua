local M = {}

function M.setup(configColors, configStyle)
  local colors = configColors
  local style = configStyle

  return {
    Boolean        = { fg = colors.booleans },
    Character      = { fg = colors.chars, style = style.italic },
    Conditional    = { fg = colors.gray },
    Constant       = { fg = colors.consts },
    Comment        = { fg = colors.comments, style = style.italic },
    Debug          = { fg = colors.gray },
    Define         = { fg = colors.gray },
    Delimiter      = { fg = colors.texts },
    Error          = { fg = colors.gray },
    Exception      = { fg = colors.gray },
    Float          = { link = 'Number' },
    Function       = { fg = colors.functions },
    Identifier     = { fg = colors.identifiers, style = style.italic },
    Ignore         = { fg = colors.gray },
    Include        = { fg = colors.gray },
    Keyword        = { fg = colors.keywords },
    Label          = { fg = colors.texts },
    Macro          = { fg = colors.functions },
    Method         = { fg = colors.gray },
    Noise          = { link = "Delimiter" },
    Number         = { fg = colors.numbers },
    Operator       = { fg = colors.operators },
    PreCondit      = { fg = colors.gray },
    PreProc        = { fg = colors. },
    Quote          = { fg = colors.gray }, --{ link = "String" },
    Repeat         = { fg = colors.gray },
    Special        = { fg = colors.specials },
    SpecialChar    = { fg = colors.specials },
    SpecialComment = { fg = colors.gray },
    Statement      = { fg = colors.gray },
    StorageClass   = { fg = colors.gray },
    String         = { fg = colors.strings, style = style.italic },
    Structure      = { fg = colors.structs },
    Tag            = { fg = colors.gray },
    Todo           = { fg = colors.gray },
    Type           = { fg = colors.types },
    Typedef        = { fg = colors.gray },
    Underlined     = { fg = colors.gray },

    Added          = { fg = colors.gray, bg = colors.diffadd_bg },
    Changed        = { fg = colors.gray, bg = colors.diffchange_bg },
    Removed        = { fg = colors.gray, bg = colors.diffdelete_bg },
  }
end

return M
