local M = {}

function M.setup(configColors, configStyle)
  local colors = configColors
  local style = configStyle

  return {
    Boolean      = { fg = colors.booleans },
    Character    = { fg = colors.chars, style = style.chars },
    Conditional  = { fg = colors.keywords },
    Constant     = { fg = colors.darkgreen },
    -- Debug          = { fg = colors.red },
    -- Define         = { fg = colors.magenta },
    -- Delimiter      = { fg = colors.persimona, style = style.d_style },
    -- Error          = { fg = colors.errormsg_fg, bg = colors.errormsg_bg },
    -- Exception      = { fg = colors.redorange },
    -- Float          = { fg = colors.magenta },
    -- Function       = { fg = colors.lua_navy, style = style.f_style },
    -- Identifier     = { fg = colors.variables, style = style.v_style },
    -- Ignore         = { fg = colors.disabled },
    -- Include        = { fg = colors.maroon },
    Keyword      = { fg = colors.keywords },
    -- Label          = { fg = colors.magenta },
    Macro        = { fg = colors.magenta },
    -- Method         = { fg = colors.ruby_navy, style = style.f_style },
    -- Noise          = { link = "Delimiter" },
    Number       = { fg = colors.numbers },
    Operator     = { fg = colors.navy, style = style.bold },
    -- PreCondit      = { fg = colors.magenta, style = style.k_style },
    -- PreProc        = { fg = colors.navy },
    -- Quote          = { link = "String" },
    Repeat       = { fg = colors.keywords },
    -- Special        = { fg = colors.dark_maroon },
    -- SpecialChar    = { fg = colors.maroon },
    -- SpecialComment = { fg = colors.comments, style = style.k_style },
    -- Statement      = { fg = colors.keywords, style = style.k_style },
    StorageClass = { fg = colors.teal, style = style.bold },
    String       = { fg = colors.strings, style = style.strings },
    Structure    = { fg = colors.darkpurple },
    -- Tag            = { fg = colors.tags, style = style.tags_style },
    -- Todo           = { fg = colors.bg, bg = colors.todo_info, style = style.b_bold },
    Type         = { fg = colors.darkengreen },
    -- Typedef        = { fg = colors.maroon },
    -- Underlined     = { fg = colors.links, style = style.underline },
    --
    -- Added          = { fg = colors.git_added, bg = colors.diffadd_bg },
    -- Changed        = { fg = colors.texts, bg = colors.diffchange_bg },
    -- Removed        = { fg = colors.git_removed, bg = colors.diffdelete_bg },
  }
end

return M
