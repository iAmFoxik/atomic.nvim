local M = {}

local folder = "atomic.theme.core."

local files = {
    "cmp",
    "editor",
    "lsp",
    "syntax",
    "treesiter",
}

for _, value in ipairs(files) do
    local fileSyn = folder .. value
    table.insert(M, fileSyn)
end

return M
