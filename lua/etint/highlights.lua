local c  = require("etint.palette")
local hi = vim.api.nvim_set_hl

local M  = {}

function M.setup()
    -- Base text
    hi(0, "Normal", { fg = c.fg, bg = c.bg })
    hi(0, "Comment", { fg = c.muted, italic = true })
    hi(0, "Keyword", { fg = c.fg2, bold = true })
    hi(0, "Function", { fg = c.fg3 })
    hi(0, "String", { fg = c.fg4 })
    hi(0, "Type", { fg = c.deep })
    hi(0, "Constant", { fg = c.fg4 })

    -- Diagnostics
    hi(0, "DiagnosticWarn", { fg = c.warn })
    hi(0, "DiagnosticInfo", { fg = c.fg3 })
    hi(0, "DiagnosticHint", { fg = c.muted })

    -- Statusline
    hi(0, "StatusLine", { fg = c.fg, bg = c.bg2, })
    hi(0, "StatusLineNC", { fg = c.muted, bg = c.bg3, })
    hi(0, "ModeMsg", { fg = c.fg, bg = c.bg3, bold = true, })
    hi(0, "StatusLineSeparator", { fg = c.bg3, bg = c.bg2, })
end

return M
