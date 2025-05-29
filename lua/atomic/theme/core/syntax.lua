local M = {}

function M.setup(configColors, configStyle)
  local colors = configColors
  local style = configStyle

  return {
    Boolean        = { fg = colors.booleans },                          -- a boolean constant: TRUE, false
    Character      = { fg = colors.chars, style = style.italic },       -- a character constant: 'c', '\n'
    Conditional    = { fg = colors.conditionals },                      -- if, then, else, endif, switch, etc.
    Constant       = { fg = colors.consts },                            -- (preferred) any constant
    Comment        = { fg = colors.comments, style = style.italic },    -- any comment
    Debug          = { fg = colors.specials },                          -- debugging statements
    Define         = { fg = colors.defines },                           -- preprocessor #define
    Delimiter      = { fg = colors.delimiters },                        -- character that needs attention
    Error          = { fg = colors.diag.error },                        -- (preferred) any erroneous construct
    Exception      = { fg = colors.exceptions },                        -- try, catch, throw
    Float          = { fg = colors.floats },                            -- a floating point constant: 2.3e10
    Function       = { fg = colors.functions },                         -- function name (also: methods for classes)
    Identifier     = { fg = colors.identifiers, style = style.italic }, -- (preferred) any variable name
    Include        = { fg = colors.includes },                          -- preprocessor #include
    Keyword        = { fg = colors.keywords },                          -- any other keyword
    Label          = { fg = colors.labels },                            -- case, default, etc.
    Macro          = { fg = colors.macros },                            -- same as Define
    Number         = { fg = colors.numbers },                           -- a number constant: 234, 0xff
    Operator       = { fg = colors.operators },                         -- 'sizeof', '+', '*', etc.
    PreCondit      = { fg = colors.preprocessors },                     -- preprocessor #if, #else, #endif, etc.
    PreProc        = { fg = colors.preprocessors },                     -- (preferred) generic Preprocessor
    Repeat         = { fg = colors.repeats },                           -- for, do, while, etc.
    Special        = { fg = colors.specials },                          -- (preferred) any special symbol
    SpecialChar    = { fg = colors.specials },                          -- special character in a constant
    SpecialComment = { fg = colors.specials },                          -- special things inside a comment
    Statement      = { fg = colors.keywords },                          -- (preferred) any statement
    StorageClass   = { fg = colors.statics },                           -- static, register, volatile, etc.
    String         = { fg = colors.strings, style = style.italic },     -- a string constant: 'this is a string'
    Structure      = { fg = colors.structs },                           -- struct, union, enum, etc.
    Tag            = { fg = colors.tags },                              -- you can use CTRL-] on this
    Todo           = { fg = colors.bg, bg = colors.diag.info },         -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type           = { fg = colors.types },                             -- (preferred) int, long, char, etc.
    Typedef        = { fg = colors.types },                             -- A typedef

    Underlined     = { style = 'underline' },                           -- (preferred) text that stands out, HTML links
    Bold           = { style = 'bold' },
    Italic         = { style = 'italic' },

    Added          = { fg = colors.git.add, bg = colors.diff.add },        -- added line in a diff
    Changed        = { fg = colors.git.changed, bg = colors.diff.change }, -- changed line in a diff
    Removed        = { fg = colors.git.removed, bg = colors.diff.delete }, -- removed line in a diff
    diffAdded      = { link = 'Added' },                                   -- Added lines ('^+.*' | '^>.*')
    diffChanged    = { link = 'Changed' },                                 -- Changed lines ('^! .*')
    diffRemoved    = { link = 'Removed' },                                 -- Removed lines ('^-.*' | '^<.*')
    diffOldFile    = { fg = colors.diag.warn },                            -- Old file that is being diff against
    diffNewFile    = { fg = colors.diag.hint },                            -- New file that is being compared to the old file
    diffFile       = { fg = colors.diag.info },                            -- The filename of the diff ('diff --git a/readme.md b/readme.md')
    diffLine       = { fg = colors.diffLine },                             -- Line information ('@@ -169,6 +169,9 @@')
    diffIndexLine  = { fg = colors.diffIndexLine },                        -- Index line of diff ('index bf3763d..94f0f62 100644')
  }
end

return M
