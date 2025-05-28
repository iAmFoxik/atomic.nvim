local M = {}

function M.setup(configColors, configStyle)
  local colors = configColors
  local style = configStyle

  return {
    ["@variable"]           = { fg = colors.variables },
    ["@variable.builtin"]   = { fg = colors.test },
    ["@variable.parameter"] = { fg = colors.variables },
    ["@variable.member"]    = { fg = colors.test },
    ["@variable.global"]    = { fg = colors.test }
    -- ["@keyword.directive.rust"] = { fg = colors.navy, style = style.bi_style },
    -- -- ["@type.builtin.rust"] = { fg = colors },
    --
    --
    -- -- LSP Rust
    -- ["@lsp.type.struct"] = { fg = colors.structs, style = style.bold },
    -- ["@lsp.type.interface"] = { fg = colors.interfaces, style = style.bold },
    -- ["@lsp.virtual.text"] = { bg = colors.black },
  }
end

return M
