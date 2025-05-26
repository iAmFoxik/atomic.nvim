local M = {}

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
  local colors = {}

  if config.style == "light" then
    colors = {
      black        = "#2B2B2B", -- color00 '#000000'
      maroon       = "#C90202", -- color01 '#800000'
      darkgreen    = "#008700", -- color02 '#006400'
      darkorange   = "#AF5F00", -- color03 '#FF8C00'
      navy         = "#27408B", -- color04 '#000080'
      purple       = "#8700AF", -- color05 '#800080'
      teal         = "#005F87", -- color06 '#008080'
      darkgrey     = "#444444", -- color08 '#A9A9A9'
      red          = "#E14133", -- color09 '#FF0000'
      green        = "#50A14F", -- color10 '#008000'
      orange       = "#D75F00", -- color11 '#FFA500'
      lightblue    = "#0072C1", -- color12 '#ADD8E6'
      lightmagenta = "#E563BA", -- color13 '#EE82EE'
      blue         = "#0087AF", -- color14 '#0000FF'
      white        = "#F1F3F2", -- '#FFFFFF'

      -- Default fg and bg
      fg           = "#2B2B2B", -- color15 '#000000'
      bg           = "#F1F3F2", -- color07 '#FFFFFF'

      -- Optional
      lightred     = "#E14133",
      magenta      = "#D7005F",
    }
  end

  -- Optional colors
  colors.booleans  = colors.lightred
  colors.keywords  = colors.maroon
  colors.numbers   = colors.blue
  colors.chars     = colors.orange
  colors.strings   = colors.blue

  -- Editor
  colors.normal_fg = colors.fg
  colors.normal_bg = colors.bg

  return colors
end

return M
