local M = {}

function M.setup(configColors, configStyle)
  local colors = configColors
  local style = configStyle

  return {
    ["@variable"]                               = { fg = colors.variables },
    ["@variable.builtin"]                       = { fg = colors.builtins },
    ["@variable.parameter"]                     = { fg = colors.parameters },
    ["@variable.member"]                        = { fg = colors.members },
    ["@variable.global"]                        = { fg = colors.globals },

    ["@constant"]                               = { fg = colors.consts },
    ["@constant.builtin"]                       = { fg = colors.builtins },

    ["@string.special.symbol"]                  = { fg = colors.structs },

    ["@keyword"]                                = { fg = colors.keywords },
    ["@keyword.modifier"]                       = { fg = colors.mutablevariables, style = style.bold },
    ["@keyword.directive"]                      = { fg = colors.direvctives },
    ["@keyword.import"]                         = { fg = colors.imports },
    ["@keyword.function"]                       = { fg = colors.keywordsfunctions },

    ["@type.builtin"]                           = { fg = colors.types },

    ["@function"]                               = { fg = colors.functions },
    ["@function.builtin"]                       = { fg = colors.functionsbuiltins },
    ["@function.macro"]                         = { fg = colors.macros },

    ["@label"]                                  = { link = "@variable" },
    ["@punctuation.special"]                    = { fg = colors.specials },

    ["@lsp.type.selfKeyword"]                   = { link = "@variable.builtin" },
    ["@lsp.type.property"]                      = { link = "@variable.member" },
    ["@lsp.type.static"]                        = { link = "@variable.global" },
    ["@lsp.type.const"]                         = { link = "@constant" },
    ["@lsp.type.struct"]                        = { link = "@string.special.symbol" },
    ["@lsp.type.interface"]                     = { fg = colors.interfaces, style = style.classname },
    ["@lsp.type.selfTypeKeyword"]               = { fg = colors.selfs, style = style.bold },

    ["@lsp.mod.defaultLibrary"]                 = { link = "@variable.builtin" },

    ["@lsp.typemod.enumMember.defaultLibrary"]  = { link = "@constant.builtin" },
    ["@lsp.typemod.enumMember.default_library"] = { link = "@constant.builtin" },
    ["@lsp.typemod.variable.mutable"]           = { fg = colors.mutablevariables, style = style.mutable },
    ["@lsp.typemod.parameter.mutable"]          = { fg = colors.parameters, style = style.mutable },
    -- ["@lsp.typemod.builtinAttribute.attribute"] = { style = style.italic },
    ["@lsp.typemod.generic.attribute"]          = { style = style.bold },
    ["@lsp.typemod.function.defaultLibrary"]    = { link = "@function.builtin" },
    ["@lsp.typemod.macro.library"]              = { link = "@function.macro" },
    ["@lsp.typemod.macro.defaultLibrary"]       = { link = "@function.macro" },
    ["@lsp.typemod.namespace.library"]          = { link = "@module" },
    ["@lsp.typemod.method.defaultLibrary"]      = { link = "@function.builtin" },
    ["@lsp.typemod.derive.attribute"]           = { italic = false, bold = true },
    ["@lsp.type.attributeBracket"]              = { style = style.italic },
  }
end

return M
