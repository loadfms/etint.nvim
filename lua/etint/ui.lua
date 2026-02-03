local c  = require("etint.palette")
local hi = vim.api.nvim_set_hl

local M  = {}

function M.setup()
    -- Find and Selection
    hi(0, "Visual", { fg = c.bg, bg = c.fg, })
    hi(0, "Search", { fg = c.fg, bg = c.bg3 })
    hi(0, "IncSearch", { fg = c.fg, bg = c.bg2, bold = true })
    hi(0, "CurSearch", { fg = c.bg, bg = c.fg, bold = true, })
    hi(0, "MatchParen", { fg = c.bg, bg = c.fg, bold = true, })
    hi(0, "LineNr", { fg = c.muted, bg = c.bg2, })

    -- Actual line
    hi(0, "CursorLine", { bg = c.bg2 })
    hi(0, "CursorLineNr", { fg = c.bg, bg = c.fg, bold = true, })
    hi(0, "VisualNOS", { fg = c.bg, bg = c.fg, })

    -- Floating windows
    hi(0, "NormalFloat", { fg = c.fg, bg = c.bg3, })
    hi(0, "FloatBorder", { fg = c.fg, bg = c.bg3, })
    hi(0, "FloatTitle", { fg = c.bg, bg = c.fg, bold = true, })

    -- Menus / completion
    hi(0, "Pmenu", { fg = c.fg, bg = c.bg2 })
    hi(0, "PmenuSel", { fg = c.bg, bg = c.fg, bold = true, })
    hi(0, "PmenuSbar", { bg = c.bg3 })
    hi(0, "PmenuThumb", { bg = c.fg })

    -- Separators
    hi(0, "WinSeparator", { fg = c.bg3, bg = c.bg })

    -- UI Text
    hi(0, "Directory", { fg = c.fg3 })
    hi(0, "Title", { fg = c.fg, bold = true })
    hi(0, "Identifier", { fg = c.fg3 })
end

return M
