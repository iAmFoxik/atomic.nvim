-- local M = {}
--
-- local scale = {
--   black = "#2B2B2B",
--   white = "#F7F7F6",
--   gray = {
--     "#F6F8FA",
--     "#EAEEF2",
--     "#D0D7DE",
--     "#AFB8C1",
--     "#8C959F",
--     "#6E7781",
--     "#57606A",
--     "#424A53",
--     "#32383F",
--     "#24292F"
--   },
--   blue = {
--     "#ddf4ff",
--     "#b6e3ff",
--     "#80ccff",
--     "#54aeff",
--     "#218bff",
--     "#0969da",
--     "#0550ae",
--     "#033d8b",
--     "#0a3069",
--     "#002155"
--   },
--   green = {
--     "#dafbe1",
--     "#aceebb",
--     "#6fdd8b",
--     "#4ac26b",
--     "#2da44e",
--     "#1a7f37",
--     "#116329",
--     "#044F1E",
--     "#003d16",
--     "#002d11"
--   },
--   yellow = {
--     "#fff8c5",
--     "#fae17d",
--     "#eac54f",
--     "#d4a72c",
--     "#bf8700",
--     "#9a6700",
--     "#7d4e00",
--     "#633c01",
--     "#4d2d00",
--     "#3b2300"
--   },
--   orange = {
--     "#fff1e5",
--     "#ffd8b5",
--     "#ffb77c",
--     "#fb8f44",
--     "#e16f24",
--     "#bc4c00",
--     "#953800",
--     "#762c00",
--     "#5c2200",
--     "#471700"
--   },
--   red = {
--     "#ffebe9",
--     "#ffcecb",
--     "#ffaba8",
--     "#ff8182",
--     "#fa4549",
--     "#cf222e",
--     "#a40e26",
--     "#82071e",
--     "#660018",
--     "#4c0014"
--   },
--   purple = {
--     "#fbefff",
--     "#ecd8ff",
--     "#d8b9ff",
--     "#c297ff",
--     "#a475f9",
--     "#8250df",
--     "#6639ba",
--     "#512a97",
--     "#3e1f79",
--     "#2e1461"
--   },
--   pink = {
--     "#ffeff7",
--     "#ffd3eb",
--     "#ffadda",
--     "#ff80c8",
--     "#e85aad",
--     "#bf3989",
--     "#99286e",
--     "#772057",
--     "#611347",
--     "#4d0336"
--   },
--   coral = {
--     "#fff0eb",
--     "#ffd6cc",
--     "#ffb4a1",
--     "#fd8c73",
--     "#ec6547",
--     "#c4432b",
--     "#9e2f1c",
--     "#801f0f",
--     "#691105",
--     "#510901"
--   }
-- }
--
-- local palette = {
--   gray    = "#6e7781",
--   orange  = "#fb8f44",
--
--   black   = { base = "#24292f", bright = "#57606a" },
--   white   = { base = "#6e7781", bright = "#8c959f" },
--   red     = { base = "#cf222e", bright = "#a40e26" },
--   green   = { base = "#116329", bright = "#1a7f37" },
--   yellow  = { base = "#4d2d00", bright = "#633c01" },
--   blue    = { base = "#0969da", bright = "#218bff" },
--   magenta = { base = "#8250df", bright = "#a475f9" },
--   pink    = { base = "#bf3989", bright = "#e85aad" },
--   cyan    = { base = "#1b7c83", bright = "#3192aa" },
-- }
--
--
--
-- -- elseif config.style == "dark" then
-- --   colors = {
-- --     black        = "#2B2B2B", -- color00
-- --     maroon       = "#CC5555", -- color01
-- --     darkgreen    = "#75B680", -- color02
-- --     darkorange   = "#C57A30", -- color03
-- --     navy         = "#8195E7", -- color04
-- --     purple       = "#A274D1", -- color05
-- --     teal         = "#72AEB3", -- color06
-- --     darkgrey     = "#BCBCBC", -- color08
-- --     red          = "#DC5761", -- color09
-- --     green        = "#5FAF5F", -- color10
-- --     orange       = "#F5824B", -- color11
-- --     lightblue    = "#7DB1D5", -- color12
-- --     lightmagenta = "#E878D8", -- color13
-- --     blue         = "#5FAFD7", -- color14
-- --     white        = "#F1F3F2",
-- --
-- --     -- Default fg and bg
-- --     fg           = "#C6C8CD", -- color15
-- --     bg           = "#303030", -- color07
-- --   }
-- --
--
-- function M.setup(config)
--   local colors         = {}
--
--   -- if config.style == "light" then
--   --   colors = {
--   --     black        = "#2B2B2B", -- color00 '#000000'
--   --     maroon       = "#C90202", -- color01 '#800000'
--   --     darkgreen    = "#008700", -- color02 '#006400'
--   --     darkorange   = "#AF5F00", -- color03 '#FF8C00'
--   --     navy         = "#27408B", -- color04 '#000080'
--   --     purple       = "#8700AF", -- color05 '#800080'
--   --     teal         = "#005F87", -- color06 '#008080'
--   --     darkgrey     = "#444444", -- color08 '#A9A9A9'
--   --     red          = "#E14133", -- color09 '#FF0000'
--   --     green        = "#50A14F", -- color10 '#008000'
--   --     orange       = "#D75F00", -- color11 '#FFA500'
--   --     lightblue    = "#0072C1", -- color12 '#ADD8E6'
--   --     lightmagenta = "#E563BA", -- color13 '#EE82EE'
--   --     blue         = "#0087AF", -- color14 '#0000FF'
--   --     white        = "#FFFFFF", -- '#FFFFFF'
--   --
--   --     -- Default fg and bg
--   --     fg           = "#2B2B2B", -- color15 '#000000'
--   --     bg           = "#F1F3F2", -- color07 '#FFFFFF'
--   --
--   --     -- Optional
--   --     lightred     = "#E14133",
--   --     magenta      = "#D7005F",
--   --     darknavy     = '#29398D'
--   --   }
--   -- end
--
--   colors.gray          = scale.gray[2]
--   colors.test          = scale.green[3]
--   -- Optional colors
--   colors.booleans      = scale.blue[4]
--   colors.keywords      = scale.red[6]
--   colors.numbers       = scale.coral[6]
--   colors.chars         = scale.coral[5]
--   colors.strings       = scale.blue[5]
--   colors.consts        = scale.green[8]
--   colors.comments      = scale.gray[4]
--   colors.identifiers   = scale.green[6]
--   -- colors.variables     = colors.black
--   colors.functions     = scale.purple[7]
--   colors.types         = scale.yellow[7]
--   colors.specials      = scale.gray[7]
--   colors.operators     = scale.blue[7]
--   colors.structs       = scale.red[9]
--   -- colors.interfaces    = colors.purple
--   colors.texts         = scale.black
--   -- colors.cursor        = scale.orange[4]
--
--   -- Editor
--   colors.normal_fg     = scale.black
--   colors.normal_bg     = scale.white
--
--   -- LSP
--   colors.inlay_hint_fg = scale.gray[7]
--   colors.inlay_hint_bg = scale.gray[2]
--
--   -- Treesiter
--   colors.variables     = scale.gray[10]
--
--   return colors
-- end
--
-- return M


-- # (Paper Light) Colors for Alacritty
-- [colors.primary]
-- background = '#EFF1F5'
-- foreground = '#4C4F69'
--
-- # Cursor colors
-- #
-- # These will only be used when the `custom_cursor_colors` field is set to `true`.
-- [colors.cursor]
-- text = '#EFF0F4'
-- cursor = '#DC8A78'
--
-- # Normal colors
-- [colors.normal]
-- black = '#5C5F77'
-- red = '#D20F39'
-- green = '#40A02B'
-- yellow = '#DF8E1D'
-- blue = '#1E66F5'
-- magenta = '#EA76CB'
-- cyan = '#179299'
-- white = '#ACB0BE'
--
-- # Bright colors
-- [colors.bright]
-- black = '#6C6F85'
-- red = '#D20F39'
-- green = '#40A02B'
-- yellow = '#DF8E1D'
-- blue = '#1E66F5'
-- magenta = '#EA76CB'
-- cyan = '#179299'
-- white = '#BCC0CC'
--
--

local M = {}

function M.setup(config)
  local palette = {
    white = '#FFFFFF',
    black = '#080808',
    grey = {
      '#FAFBFC', -- grey1
      '#F1F2F3', -- grey2
      '#DDE2E7', -- grey3
      '#DADADA', -- grey4
      '#C8CED6', -- grey5
      '#BABBBC', -- grey6
      '#9E9E9E', -- grey7
      '#76787B', -- grey8
      '#41484F', -- grey9
      '#1F2328'  -- grey10
    },
    blue = {
      '#DDF4FF', -- blue1
      '#B6E3FF', -- blue2
      '#0087AF', -- blue3
      '#218BFF', -- blue4
      '#0969DA', -- blue5
      '#0550AE', -- blue6
      '#5094E4', -- blue7
    },
    red = {
      '#FFD6CC', -- red1
      '#FB8F44', -- red2
      '#FD8C73', -- red3
      '#EC6547', -- red4
      '#CF222E', -- red5
      '#9E2F1C', -- red6
      '#801F0F', -- red7
      '#510901', -- red8
    },
    purple = {
      '#ECD8FF', -- purple1
      '#D8B9FF', -- purple2
      '#A475F9', -- purple3
      '#DAE9F9', -- purple4
      '#6639BA', -- purple5
      '#3E1F79', -- purple6
    },
    yellow = {
      '#FFF8C5', -- yellow1
      '#E1D1B3', -- yellow2
      '#FAE17D', -- yellow3
      '#EAC54F', -- yellow4
      '#D4A72C', -- yellow5
      '#FFAF00', -- yellow6
      '#953800', -- yellow7
    },
    green = {
      '#DAFBE1', -- green1
      '#ACEEBB', -- green2
      '#2DA44E', -- green3
      '#5FAF00', -- green4
      '#008700', -- green5
      '#044F1E', -- green6
    }
  }
  -- #FAFBFC -- grey1
  -- #F6F8FA
  -- #F1F2F3 -- grey2
  -- #ECEEF1
  -- #E7EAF0
  -- #DDE2E7 -- grey3
  -- #DADADA -- grey4
  -- #C8CED6 -- grey5
  -- #BABBBC -- grey6
  -- #9E9E9E -- grey7
  -- #76787b -- grey8
  -- #6E7781
  -- #6a737d
  -- #41484f -- grey9
  -- #24292e
  -- #1F2328 -- grey10
  -- blue
  -- #DDF4FF -- blue0
  -- #C2E2FF
  -- #B6E3FF -- blue1
  -- #BBDFFF
  -- #0087AF -- blue2
  -- #218BFF
  -- #0969DA -- blue3
  -- #0550AE -- blue4
  -- #5094E4 -- blue5
  -- red
  -- #FFD6CC -- red1
  -- #FB8F44 -- red2
  -- #FD8C73 -- red3
  -- #EC6547 -- red4
  -- #CF222E -- red5
  -- #D1242F
  -- #C90202
  -- #9E2F1C -- red6
  -- #801F0F -- red7
  -- #510901 -- red8
  -- purple
  -- #ECD8FF -- purple1
  -- #D8B9FF -- purple2
  -- #A475F9 -- purple3
  -- #DAE9F9 -- purple4
  -- #6639BA -- purple5
  -- #3E1F79 -- purple6
  -- yellow
  -- #FFF8C5 -- yellow1
  -- #E1D1B3 -- yellow2
  -- #FAE17D -- yellow3
  -- #EAC54F -- yellow4
  -- #D4A72C -- yellow5
  -- #953800 -- yellow6
  -- #9A6700
  -- green
  -- #DAFBE1 -- green1
  -- #ACEEBB -- green2
  -- #2DA44E -- green3
  -- #5FAF00 -- green4
  -- #044F1E -- green5


  local lib    = {
    numDarkest = '#76787b',
    numMedium  = '#979797',
    numLighter = '#babbbc',
    c8d1db     = '#C8D1DB',
    d7dce1     = '#d7dce1',
    dde2e7     = '#C8CED6',
    e0e7ef     = '#e0e7ef',
    ebeced     = '#ebeced',
    eceef1     = '#ECEEF1',
    eaeff4     = '#eaeff4',
    f1f2f3     = '#f1f2f3',
    f6f8fa     = '#f6f8fa', -- github inline code block bg,
    fafbfc     = '#fafbfc', -- github generic light,
    white      = '#ffffff',
    base0      = '#24292e', -- github text fg,
    base05     = '#2d343a', -- lightened from 0,
    base1      = '#41484f', -- lightened from 0,
    base2      = '#6a737d', -- github comment,
    base3      = '#76787b',
  }

  -- local darktext     = [
  --       { gui= '#fafbfc', cterm= 255 },
  --       \{ 'gui': '#d2d4d6', 'cterm': 254 },
  --       \{ 'gui': '#abaeb1', 'cterm': 251 },
  --       \{ 'gui': '#868a8e', 'cterm': 251 },
  --       \{ 'gui': '#63686c', 'cterm': 251 },
  --       \{ 'gui': '#42474c', 'cterm': 251 },
  --       \s:lib.base0
  --       \]

  local colors = {
    red            = '#d73a49', -- github syntax
    darkred        = '#b31d28', -- github syntax
    purple         = '#6f42c1', -- github syntax
    darkpurple     = '#45267d', -- ^- darkened
    yellow         = '#ffffc5', -- github search
    green          = '#22863a', -- github syntax (html)
    boldgreen      = '#3ebc5c', -- ^
    orange         = '#e36209', -- github syntax
    boldorange     = '#f18338', -- ^
    lightgreen_nr  = '#cdffd8', -- github diff
    lightgreen     = '#e6ffed', -- github diff
    lightred_nr    = '#ffdce0', -- github diff
    lightred       = '#ffeef0', -- github diff
    lightorange_nr = '#fff5b1', -- github selected line number column
    lightorange    = '#fffbdd', -- github selected line
    difftext       = '#f2e496', -- ^- darkened
    darkblue       = '#032f62', -- ^- darkened
    blue           = '#005cc5', -- github syntax
    blue0          = '#669cc2',
    blue1          = '#c1daec',
    blue2          = '#e4effb',
    blue3          = '#bde0fb',
    blue4          = '#f1f8ff', -- github diff folds
    errorred       = '#b74951', -- from darkred
  }

  local grey1  = '#DADADA'


  colors.base0      = palette.grey[10]
  colors.base1      = palette.grey[9]
  colors.base2      = palette.grey[8]
  colors.base3      = palette.grey[7]
  colors.fg         = colors.base0
  colors.gutterfg   = colors.base3

  colors.grey0      = palette.grey[3]
  colors.grey1      = palette.grey[2]
  colors.grey2      = palette.grey[1]
  colors.overlay    = palette.grey[1]
  colors.gutter     = palette.grey[1]
  colors.endofbuf   = colors.gutter
  colors.bg         = lib.fafbfc
  colors.base4      = lib.numLighter
  colors.visualblue = colors.blue3
  colors.lightblue  = colors.blue4


  -- Syntax
  colors.comments      = palette.grey[8]
  colors.consts        = palette.blue[5]
  colors.strings       = palette.green[5]
  colors.chars         = palette.red[4]
  colors.numbers       = colors.consts
  colors.floats        = colors.consts
  colors.boolean       = colors.consts
  colors.identifiers   = palette.grey[10]
  colors.functions     = palette.purple[6]
  colors.keywords      = palette.red[6]
  colors.conditionals  = colors.keywords
  colors.repeats       = colors.keywords
  colors.labels        = colors.keywords
  colors.operators     = palette.blue[6]
  colors.exceptions    = colors.keywords
  colors.preprocessors = colors.keywords
  colors.includes      = colors.keywords
  colors.defines       = colors.keywords
  colors.macros        = colors.keywords
  colors.types         = palette.yellow[5]
  colors.statics       = colors.types
  colors.structs       = colors.types
  colors.specials      = palette.grey[10]
  colors.tags          = palette.grey[10]
  colors.delimiters    = colors.specials

  -- Editor
  colors.white         = palette.white
  colors.bg0           = palette.grey[1]
  colors.bg1           = palette.grey[2]
  colors.bg2           = palette.grey[6]

  colors.fg0           = palette.grey[6]
  colors.fg1           = palette.grey[10]
  colors.fg3           = palette.grey[8]
  colors.directory     = palette.blue[3]
  colors.match_fg      = palette.grey[10]
  colors.match_bg      = palette.blue[1]
  colors.text          = colors.fg1
  colors.border        = colors.bg2

  -- Pmenu
  colors.sel0          = palette.purple[4]
  colors.sel1          = palette.blue[1]

  -- Search
  colors.ser0          = palette.yellow[3]
  colors.ser1          = palette.red[2]

  colors.statusline    = {
    fg = colors.bg0,
    bg = palette.blue[5],
    bgNC = palette.blue[1],
  }

  colors.tabline       = {
    tab  = palette.grey[4],
    fg   = colors.bg0,
    bg   = palette.blue[5],
    fgNC = colors.bg0,
    bgNC = palette.grey[7],
  }

  -- Numeric Tab
  colors.nr            = {
    fg = colors.bg0,
    bg = grey1,
  }

  colors.visual        = palette.blue[2]
  colors.title         = palette.blue[4]

  -- Special
  colors.diag          = {
    info  = palette.blue[3],
    warn  = palette.yellow[5],
    error = palette.red[5],
    hint  = palette.grey[5]
  }
  colors.diffLine      = palette.blue[6]
  colors.diffIndexLine = palette.red[5]

  colors.git           = {
    add     = palette.green[4],
    changed = palette.yellow[5],
    removed = palette.red[5]
  }

  colors.diff          = {
    add    = palette.green[1],
    change = palette.yellow[1],
    delete = palette.red[1],
    text   = palette.grey[2],
  }



  return colors
end

return M

-- local grey = {
--   grey0  = '#eeeeee',
--   grey1  = '#dadada',
--   grey2  = '#c6c6c6',
--   grey3  = '#b2b2b2',
--   grey4  = '#9e9e9e',
--   grey5  = '#8a8a8a',
--   grey6  = '#767676',
--   grey7  = '#626262',
--   grey8  = '#4e4e4e',
--   grey9  = '#303030',
--   grey20 = '#1c1c1c',
--   grey22 = '#080808',
--   grey20 = '#000000'
-- }
-- local red = {
--   red0 = '#ff8787',
--   red1 = '#af0000'
--
-- }
