local c  = require("etint.palette")
local hi = vim.api.nvim_set_hl

local M  = {}

function M.setup()
    -- Main
    hi(0, "@keyword", { link = "Keyword" })
    hi(0, "@function", { link = "Function" })
    hi(0, "@type", { link = "Type" })
    hi(0, "@string", { link = "String" })
    hi(0, "@comment", { link = "Comment" })

    -- Operators and punctuation
    hi(0, "@operator", { fg = c.fg2 })
    hi(0, "@punctuation", { fg = c.fg })
    hi(0, "@punctuation.bracket", { fg = c.fg })
    hi(0, "@punctuation.delimiter", { fg = c.fg })

    -- Variables (TS + LSP semantic)
    hi(0, "@variable", { fg = c.fg3 })
    hi(0, "@variable.builtin", { fg = c.fg3 })
    hi(0, "@property", { fg = c.fg3 })

    hi(0, "@lsp.type.variable", { fg = c.fg3 })
    hi(0, "@lsp.type.property", { fg = c.fg3 })
    hi(0, "@lsp.type.parameter", { fg = c.fg3 })
    hi(0, "@lsp.type.member", { fg = c.fg3 })

    -- Lua (fallbacks)
    hi(0, "@constructor", { fg = c.fg })
    hi(0, "@constructor.lua", { fg = c.fg })

    -- Markdown / LSP docs (floats)
    hi(0, "@markup.raw", { fg = c.fg })
    hi(0, "@markup.raw.block", { fg = c.fg })
    hi(0, "@markup.code", { fg = c.fg })
    hi(0, "@markup.inline", { fg = c.fg })
    hi(0, "@markup.heading", { fg = c.fg, bold = true })
    hi(0, "@markup.strong", { fg = c.fg, bold = true })
    hi(0, "@markup.emphasis", { fg = c.fg, italic = true })
    hi(0, "@markup.link", { fg = c.fg })
    hi(0, "@markup.link.url", { fg = c.muted, underline = true })
    hi(0, "@markup.raw.block", { fg = c.fg, bg = c.bg3, })
end

return M
