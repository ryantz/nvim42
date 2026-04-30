return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
		lazy = false,
		priority = 900,
        opts = {
            ensure_installed = { "c", "cpp", "lua", "python", "bash", "make", "html", "latex", "yaml" },
            highlight = { enable = true },
        },
        config = function(_, opts)
            require("nvim-treesitter").setup(opts)
            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "c", "cpp", "python", "bash", "yaml", "html" },
                callback = function()
                    pcall(vim.treesitter.start)
                end,
            })
            vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
                pattern = "*.h",
                callback = function()
                    vim.bo.filetype = "c"
                end,
            })
        end,
    },
}
