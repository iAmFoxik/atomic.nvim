local M = {}

function M.setup(configColors, configStyle)
  local colors = configColors
  local style = configStyle

  return {
    Cursor       = { fg = colors.white, bg = colors.fg1 },                             -- character under the cursor
    lCursor      = { link = 'Cursor' },                                                -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     = { link = 'Cursor' },                                                -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { link = 'CursorLine' },                                            -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   = { bg = colors.bg1 },                                                -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    = { fg = colors.directory },                                          -- directory names (and other special names in listings)
    DiffAdd      = { bg = colors.diff.add },                                           -- diff mode: Added line |diff.txt|
    DiffChange   = { bg = colors.diff.change },                                        -- diff mode: Changed line |diff.txt|
    DiffDelete   = { bg = colors.diff.delete },                                        -- diff mode: Deleted line |diff.txt|
    DiffText     = { bg = colors.diff.text },                                          -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  = { fg = colors.white },                                              -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg     = { fg = colors.diag.error },                                         -- error messages on the command line
    VertSplit    = { fg = colors.border },                                             -- the column separating vertically split windows
    WinSeparator = { fg = colors.border },                                             -- (nvim >= 0.10) the column separating vertically split windows
    Folded       = { fg = colors.fg3, bg = colors.bg1 },                               -- line used for closed folds
    FoldColumn   = { fg = colors.fg3 },                                                -- 'foldcolumn'
    SignColumn   = { fg = colors.fg3 },                                                -- column where |signs| are displayed
    SignColumnSB = { link = 'SignColumn' },                                            -- column where |signs| are displayed
    Substitute   = { fg = colors.white, bg = colors.diag.error },                      -- |:substitute| replacement text highlighting
    LineNr       = { fg = colors.fg0 },                                                -- Line number for ':number' and ':#' commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = colors.fg1 },                                                -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   = { fg = colors.match_fg, bg = colors.match_bg, style = style.bold }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      = { fg = colors.diag.warn, style = 'bold' },                          -- 'showmode' message (e.g., '-- INSERT -- ')
    NonText      = { fg = colors.bg2 },                                                -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., '>' displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       = { fg = colors.text, bg = colors.white },                            -- normal text
    NormalSB     = { fg = colors.text, bg = colors.bg0 },                              -- normal text

    NormalNC     = { fg = colors.text, bg = colors.white },                            -- normal text in non-current windows

    NormalFloat  = { fg = colors.text, bg = colors.bg0 },                              -- Normal text in floating windows.
    FloatBorder  = { fg = colors.border },                                             -- TODO
    Pmenu        = { fg = colors.fg1, bg = colors.bg0 },                               -- Popup menu: normal item.
    PmenuSel     = { bg = colors.sel1 },                                               -- Popup menu: selected item.
    PmenuSbar    = { link = 'Pmenu' },                                                 -- Popup menu: scrollbar.
    PmenuThumb   = { bg = colors.sel0 },                                               -- Popup menu: Thumb of the scrollbar.
    Question     = { link = 'MoreMsg' },                                               -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { link = 'CursorLine' },                                            -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

    Search       = { bg = colors.ser0 },                                               -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch    = { bg = colors.ser1 },                                               -- 'incsearch' highlighting; also used for the text replaced with ':s///c'

    CurSearch    = { link = 'IncSearch' },                                             -- Search result under cursor (available since neovim >0.7.0 (https://github.com/neovim/neovim/commit/b16afe4d556af7c3e86b311cfffd1c68a5eed71f)).
    SpecialKey   = { link = 'NonText' },                                               -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     = { sp = colors.diag.error, style = 'undercurl' },                    -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     = { sp = colors.diag.warn, style = 'undercurl' },                     -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   = { sp = colors.diag.info, style = 'undercurl' },                     -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    = { sp = colors.diag.info, style = 'undercurl' },                     -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   = { fg = colors.statusline.fg, bg = colors.statusline.bg },           -- status line of current window
    StatusLineNC = { fg = colors.statusline.fg, bg = colors.statusline.bgNC },         -- status lines of not-current windows Note: if this is equal to 'StatusLine' Vim will use '^^^' in the status line of the current window.
    --
    TabLine      = { fg = colors.tabline.fgNC, bg = colors.tabline.bgNC },             -- tab pages line, not active tab page label
    TabLineFill  = { bg = colors.tabline.tab },                                        -- tab pages line, where there are no labels
    TabLineSel   = { fg = colors.tabline.fg, bg = colors.tabline.bg },                 -- tab pages line, active tab page label
    Title        = { fg = colors.title, style = 'bold' },                              -- titles for output from ':set all', ':autocmd' etc.

    Visual       = { fg = colors.bg0, bg = colors.visual },                            -- Visual mode selection
    VisualNOS    = { link = 'Visual' },                                                -- Visual mode selection when vim is 'Not Owning the Selection'.

    WarningMsg   = { fg = colors.diag.warn },                                          -- warning messages
    Whitespace   = { fg = colors.bg1 },                                                -- 'nbsp', 'space', 'tab' and 'trail' in 'listchars'
    WildMenu     = { link = 'Pmenu' },                                                 -- current match in 'wildmenu' completion
    WinBar       = { fg = colors.fg3, bg = colors.white, style = 'bold' },             -- Window bar of current window.
    WinBarNC     = { fg = colors.fg3, bg = colors.white, style = 'bold' },             --Window bar of not-current windows.
  }
end

return M
