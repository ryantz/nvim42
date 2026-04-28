return {
    "jpwol/thorn.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        theme = nil, -- 'light' or 'dark' - defaults to vim.o.background if unset
        background = "warm", -- options are 'warm' and 'cold'

        transparent = false, -- transparent background
        terminal = true, -- terminal colors

        styles = {
            keywords = { italic = false, bold = true },
            comments = { italic = false, bold = false },
            strings  = { italic = false, bold = false },
            diagnostic = {
                underline = true, -- if true, flat underlines will be used. Otherwise, undercurls will be used

                -- true will apply the bg highlight, false applies the fg highlight
                error = { highlight = true, },
                hint  = { highlight = false, },
                info  = { highlight = false, },
                warn  = { highlight = false, },
            },
        },

        on_highlights = function(hl, palette) end, -- apply your own highlights
    },
    config = function()
	    vim.cmd([[colorscheme thorn]])
    end
}
