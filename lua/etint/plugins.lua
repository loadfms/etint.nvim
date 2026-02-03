local c  = require("etint.palette")
local hi = vim.api.nvim_set_hl

local M  = {}

function M.setup()
    ---------------------------------------------------------------------------
    -- fzf
    ---------------------------------------------------------------------------
    vim.env.FZF_DEFAULT_OPTS = table.concat({
        "--color=fg:#26262a",
        "--color=bg:#f1edde",
        "--color=hl:#26262a",
        "--color=fg+:#26262a",
        "--color=bg+:#e6e2d6",
        "--color=hl+:#26262a",

        "--color=header:#3a3a3f",
        "--color=info:#3a3a3f",

        "--color=prompt:#26262a",
        "--color=pointer:#26262a",
        "--color=marker:#26262a",
        "--color=spinner:#26262a",

        "--no-bold",
    }, " ")

    ---------------------------------------------------------------------------
    -- gitsings
    ---------------------------------------------------------------------------
    hi(0, "GitSignsAdd", { fg = c.fg })
    hi(0, "GitSignsChange", { fg = c.fg })
    hi(0, "GitSignsDelete", { fg = c.fg })

    hi(0, "GitSignsAddNr", { fg = c.bg, bg = c.fg })
    hi(0, "GitSignsChangeNr", { fg = c.bg, bg = c.fg })
    hi(0, "GitSignsDeleteNr", { fg = c.bg, bg = c.fg })

    hi(0, "GitSignsAddLn", { bg = c.bg3 })
    hi(0, "GitSignsChangeLn", { bg = c.bg3 })
    hi(0, "GitSignsDeleteLn", { bg = c.bg3 })


    ---------------------------------------------------------------------------
    -- diff
    ---------------------------------------------------------------------------
    hi(0, "DiffAdd", { bg = c.bg2 })
    hi(0, "DiffChange", { bg = c.bg3 })
    hi(0, "DiffDelete", { bg = c.bg3 })
    hi(0, "DiffText", { bg = c.bg3, bold = true })
end

return M
