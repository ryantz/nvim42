return {
    "jpwol/thorn.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        theme = nil,
        background = "warm",
        transparent = false,
        terminal = true,
        styles = {
            keywords = { italic = false, bold = true },
            comments = { italic = false, bold = false },
            strings  = { italic = false, bold = false },
            diagnostic = {
                underline = true,
                error = { highlight = true },
                hint  = { highlight = false },
                info  = { highlight = false },
                warn  = { highlight = false },
            },
        },
    },
}
