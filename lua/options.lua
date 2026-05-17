vim.o.background = "dark"
vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr-o:block"

vim.opt.colorcolumn = "80"
vim.opt.scrollbind = false
vim.opt.lazyredraw = false
vim.opt.cursorbind = false
vim.opt.splitkeep = "screen"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.cursorline = true

vim.opt.number = true
vim.opt.termguicolors = true

-- colorcolumn override AFTER colorscheme (set in colorschemes.lua)
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#FFFFFF" })
        vim.api.nvim_set_hl(0, "Whitespace",  { fg = "#2a3f40" })
        vim.api.nvim_set_hl(0, "SpecialKey",  { fg = "#2a3f40" })
        vim.api.nvim_set_hl(0, "NonText",     { fg = "#2a3f40" })
    end,
})

vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "Whitespace",  { fg = "#2a3f40" })
vim.api.nvim_set_hl(0, "SpecialKey",  { fg = "#2a3f40" })
vim.api.nvim_set_hl(0, "NonText",     { fg = "#2a3f40" })

vim.opt.list = true
vim.opt.listchars = { tab = '› ', trail = '·' }

vim.opt.tags:append("/usr/include/GLFW/tags")
vim.opt.tags:append("/usr/include/GL/tags")
