local M = {}

function M.setup(config)
  local palette            = {
    white   = '#FFFFFF',
    black   = '#080808',
    --grey
    grey1   = '#FAFBFC',
    grey2   = '#F1F2F3',
    grey3   = '#DDE2E7',
    grey4   = '#DADADA',
    grey5   = '#C8CED6',
    grey6   = '#BABBBC',
    grey7   = '#9E9E9E',
    grey8   = '#76787B',
    grey9   = '#41484F',
    grey0   = '#1F2328',
    --blue
    blue1   = '#DDF4FF',
    blue2   = '#B6E3FF',
    blue3   = '#0087AF',
    blue4   = '#218BFF',
    blue5   = '#0969DA',
    blue6   = '#0550AE',
    blue7   = '#5094E4',
    blue8   = '#1B7F82',
    blue9   = '#27408B',
    blue0   = '#030380',
    --red
    red1    = '#FFD6CC',
    red2    = '#FB8F44',
    red3    = '#FD8C73',
    red4    = '#EC6547',
    red5    = '#CF222E',
    red6    = '#9E2F1C',
    red7    = '#801F0F',
    red8    = '#510901',
    --purple
    purple1 = '#ECD8FF',
    purple2 = '#D8B9FF',
    purple3 = '#A475F9',
    purple4 = '#DAE9F9',
    purple5 = '#6639BA',
    purple6 = '#3E1F79',
    purple7 = '#5F005F',
    --yellow
    yellow1 = '#FFF8C5',
    yellow2 = '#E1D1B3',
    yellow3 = '#FAE17D',
    yellow4 = '#EAC54F',
    yellow5 = '#D4A72C',
    yellow6 = '#FFAF00',
    yellow7 = '#953800',
    yellow8 = '#C18301',
    --green
    green1  = '#DAFBE1',
    green2  = '#ACEEBB',
    green3  = '#2DA44E',
    green4  = '#5FAF00',
    green5  = '#008700',
    green6  = '#044F1E',
    --orange
    orange1 = '#FF8700',
    orange2 = '#D78700',
    orange3 = '#FF5F00',
    orange4 = '#D75F00',
    orange5 = '#AF5F00',
  }

  local colors             = {}

  colors.base0             = palette.grey0
  colors.base1             = palette.grey9
  colors.base2             = palette.grey8
  colors.base3             = palette.grey7
  colors.fg                = colors.base0
  colors.gutterfg          = colors.base3

  colors.grey0             = palette.grey3
  colors.grey1             = palette.grey2
  colors.grey2             = palette.grey1
  colors.overlay           = palette.grey1
  colors.gutter            = palette.grey1
  colors.endofbuf          = colors.gutter
  colors.bg                = palette.grey1
  colors.base4             = palette.grey6
  colors.visualblue        = palette.blue2
  colors.lightblue         = palette.blue1

  -- Syntax
  colors.comments          = palette.grey8
  colors.consts            = palette.blue5
  colors.strings           = palette.green5
  colors.chars             = palette.red4
  colors.numbers           = colors.consts
  colors.floats            = colors.consts
  colors.boolean           = colors.consts
  colors.identifiers       = palette.grey0
  colors.functions         = palette.purple6
  colors.keywords          = palette.red5
  colors.conditionals      = colors.keywords
  colors.repeats           = colors.keywords
  colors.labels            = colors.keywords
  colors.operators         = palette.blue0
  colors.exceptions        = colors.keywords
  colors.preprocessors     = colors.keywords
  colors.includes          = colors.keywords
  colors.defines           = colors.keywords
  colors.macros            = palette.purple5
  colors.types             = palette.grey9
  colors.statics           = colors.types
  colors.structs           = palette.yellow8
  colors.specials          = palette.grey0
  colors.tags              = palette.grey0
  colors.delimiters        = colors.specials

  -- Treesitter
  colors.variables         = palette.black
  colors.mutablevariables  = palette.red8
  colors.builtins          = palette.red7
  colors.parameters        = palette.orange3
  colors.members           = palette.blue8
  colors.globals           = palette.purple5
  colors.interfaces        = palette.orange4
  colors.direvctives       = palette.blue9
  colors.functionsbuiltins = palette.red5
  colors.selfs             = palette.green5
  colors.imports           = palette.red6
  colors.keywordsfunctions = palette.red7

  -- LSP
  colors.inlay_hint_fg     = palette.grey8
  colors.inlay_hint_bg     = palette.grey2

  -- Editor
  colors.white             = palette.white
  colors.bg0               = palette.grey1
  colors.bg1               = palette.grey2
  colors.bg2               = palette.grey6

  colors.fg0               = palette.grey6
  colors.fg1               = palette.grey0
  colors.fg3               = palette.grey8
  colors.directory         = palette.blue6
  colors.match_fg          = palette.grey0
  colors.match_bg          = palette.blue1
  colors.text              = colors.fg1
  colors.border            = colors.bg2

  -- Pmenu
  colors.sel0              = palette.purple4
  colors.sel1              = palette.blue1

  -- Search
  colors.ser0              = palette.yellow3
  colors.ser1              = palette.red2

  colors.statusline        = {
    fg = colors.bg0,
    bg = palette.blue5,
    bgNC = palette.blue2,
  }

  colors.tabline           = {
    tab  = palette.grey4,
    fg   = colors.bg0,
    bg   = palette.blue5,
    fgNC = colors.bg0,
    bgNC = palette.grey7,
  }

  -- Numeric Tab
  colors.nr                = {
    fg = colors.bg0,
    bg = palette.grey4,
  }

  colors.visual            = palette.blue2
  colors.title             = palette.blue5

  -- Special
  colors.diag              = {
    info  = palette.blue3,
    warn  = palette.yellow5,
    error = palette.red5,
    hint  = palette.grey5
  }
  colors.diffLine          = palette.blue6
  colors.diffIndexLine     = palette.red5

  colors.git               = {
    add     = palette.green4,
    changed = palette.yellow5,
    removed = palette.red5
  }

  colors.diff              = {
    add    = palette.green1,
    change = palette.yellow1,
    delete = palette.red1,
    text   = palette.grey2,
  }



  return colors
end

return M
