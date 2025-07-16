local M = {}

function M.setup(configColors, configStyle)
    local colors = configColors
    local style = configStyle

    return {
        CmpItemAbbr           = { fg = colors.abbr },
        CmpItemAbbrMatch      = { fg = colors.match },
        CmpItemAbbrMatchFuzzy = { fg = colors.fuzzy },
    }
end

return M
