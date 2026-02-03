local M = {}

function M.setup()
    vim.o.background = "light"
    vim.cmd("hi clear")
    vim.g.colors_name = "etint"
    vim.o.winhl = table.concat({
        "NormalFloat:NormalFloat",
        "FloatBorder:FloatBorder",
        "FloatTitle:FloatTitle",
    }, ",")

    require("etint.highlights").setup()
    require("etint.treesitter").setup()
    require("etint.ui").setup()
    require("etint.plugins").setup()
end

return M
