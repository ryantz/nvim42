vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

require("nvim-treesitter").setup({
    ensure_installed = { "c", "cpp", "lua", "python", "bash", "make", "html", "latex", "yaml" },
    highlight = { enable = true },
})

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
