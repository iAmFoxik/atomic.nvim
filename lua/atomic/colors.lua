local M = {}

local scale = {
  black = "#2B2B2B",
  white = "#F7F7F6",
  gray = {
    "#F6F8FA",
    "#EAEEF2",
    "#D0D7DE",
    "#AFB8C1",
    "#8C959F",
    "#6E7781",
    "#57606A",
    "#424A53",
    "#32383F",
    "#24292F"
  },
  blue = {
    "#ddf4ff",
    "#b6e3ff",
    "#80ccff",
    "#54aeff",
    "#218bff",
    "#0969da",
    "#0550ae",
    "#033d8b",
    "#0a3069",
    "#002155"
  },
  green = {
    "#dafbe1",
    "#aceebb",
    "#6fdd8b",
    "#4ac26b",
    "#2da44e",
    "#1a7f37",
    "#116329",
    "#044F1E",
    "#003d16",
    "#002d11"
  },
  yellow = {
    "#fff8c5",
    "#fae17d",
    "#eac54f",
    "#d4a72c",
    "#bf8700",
    "#9a6700",
    "#7d4e00",
    "#633c01",
    "#4d2d00",
    "#3b2300"
  },
  orange = {
    "#fff1e5",
    "#ffd8b5",
    "#ffb77c",
    "#fb8f44",
    "#e16f24",
    "#bc4c00",
    "#953800",
    "#762c00",
    "#5c2200",
    "#471700"
  },
  red = {
    "#ffebe9",
    "#ffcecb",
    "#ffaba8",
    "#ff8182",
    "#fa4549",
    "#cf222e",
    "#a40e26",
    "#82071e",
    "#660018",
    "#4c0014"
  },
  purple = {
    "#fbefff",
    "#ecd8ff",
    "#d8b9ff",
    "#c297ff",
    "#a475f9",
    "#8250df",
    "#6639ba",
    "#512a97",
    "#3e1f79",
    "#2e1461"
  },
  pink = {
    "#ffeff7",
    "#ffd3eb",
    "#ffadda",
    "#ff80c8",
    "#e85aad",
    "#bf3989",
    "#99286e",
    "#772057",
    "#611347",
    "#4d0336"
  },
  coral = {
    "#fff0eb",
    "#ffd6cc",
    "#ffb4a1",
    "#fd8c73",
    "#ec6547",
    "#c4432b",
    "#9e2f1c",
    "#801f0f",
    "#691105",
    "#510901"
  }
}

local palette = {
  gray    = "#6e7781",
  orange  = "#fb8f44",

  black   = { base = "#24292f", bright = "#57606a" },
  white   = { base = "#6e7781", bright = "#8c959f" },
  red     = { base = "#cf222e", bright = "#a40e26" },
  green   = { base = "#116329", bright = "#1a7f37" },
  yellow  = { base = "#4d2d00", bright = "#633c01" },
  blue    = { base = "#0969da", bright = "#218bff" },
  magenta = { base = "#8250df", bright = "#a475f9" },
  pink    = { base = "#bf3989", bright = "#e85aad" },
  cyan    = { base = "#1b7c83", bright = "#3192aa" },
}



-- elseif config.style == "dark" then
--   colors = {
--     black        = "#2B2B2B", -- color00
--     maroon       = "#CC5555", -- color01
--     darkgreen    = "#75B680", -- color02
--     darkorange   = "#C57A30", -- color03
--     navy         = "#8195E7", -- color04
--     purple       = "#A274D1", -- color05
--     teal         = "#72AEB3", -- color06
--     darkgrey     = "#BCBCBC", -- color08
--     red          = "#DC5761", -- color09
--     green        = "#5FAF5F", -- color10
--     orange       = "#F5824B", -- color11
--     lightblue    = "#7DB1D5", -- color12
--     lightmagenta = "#E878D8", -- color13
--     blue         = "#5FAFD7", -- color14
--     white        = "#F1F3F2",
--
--     -- Default fg and bg
--     fg           = "#C6C8CD", -- color15
--     bg           = "#303030", -- color07
--   }
--

function M.setup(config)
  local colors         = {}

  -- if config.style == "light" then
  --   colors = {
  --     black        = "#2B2B2B", -- color00 '#000000'
  --     maroon       = "#C90202", -- color01 '#800000'
  --     darkgreen    = "#008700", -- color02 '#006400'
  --     darkorange   = "#AF5F00", -- color03 '#FF8C00'
  --     navy         = "#27408B", -- color04 '#000080'
  --     purple       = "#8700AF", -- color05 '#800080'
  --     teal         = "#005F87", -- color06 '#008080'
  --     darkgrey     = "#444444", -- color08 '#A9A9A9'
  --     red          = "#E14133", -- color09 '#FF0000'
  --     green        = "#50A14F", -- color10 '#008000'
  --     orange       = "#D75F00", -- color11 '#FFA500'
  --     lightblue    = "#0072C1", -- color12 '#ADD8E6'
  --     lightmagenta = "#E563BA", -- color13 '#EE82EE'
  --     blue         = "#0087AF", -- color14 '#0000FF'
  --     white        = "#FFFFFF", -- '#FFFFFF'
  --
  --     -- Default fg and bg
  --     fg           = "#2B2B2B", -- color15 '#000000'
  --     bg           = "#F1F3F2", -- color07 '#FFFFFF'
  --
  --     -- Optional
  --     lightred     = "#E14133",
  --     magenta      = "#D7005F",
  --     darknavy     = '#29398D'
  --   }
  -- end

  colors.gray          = scale.gray[2]
  colors.test          = scale.green[3]
  -- Optional colors
  colors.booleans      = scale.blue[4]
  colors.keywords      = scale.red[6]
  colors.numbers       = scale.coral[6]
  colors.chars         = scale.coral[5]
  colors.strings       = scale.blue[5]
  colors.consts        = scale.green[8]
  colors.comments      = scale.gray[4]
  colors.identifiers   = scale.green[6]
  -- colors.variables     = colors.black
  colors.functions     = scale.purple[7]
  colors.types         = scale.yellow[7]
  colors.specials      = scale.gray[7]
  colors.operators     = scale.blue[7]
  colors.structs       = scale.red[9]
  -- colors.interfaces    = colors.purple
  colors.texts         = scale.black
  -- colors.cursor        = scale.orange[4]

  -- Editor
  colors.normal_fg     = scale.black
  colors.normal_bg     = scale.white

  -- LSP
  colors.inlay_hint_fg = scale.gray[7]
  colors.inlay_hint_bg = scale.gray[2]

  -- Treesiter
  colors.variables     = scale.gray[10]

  return colors
end

return M


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
