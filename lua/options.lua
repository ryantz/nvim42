vim.o.background = "dark"
--vim.o.background = "light"
vim.cmd.colorscheme("nordic")

vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr-o:block"

-- Line at 80 chars (42 norm)
vim.opt.colorcolumn = "80"
vim.cmd [[
    highlight ColorColumn ctermbg=NONE guibg=#FF0000
]]

-- Tabs — required by 42 Norm
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.cursorline = true

-- Numbers
vim.opt.number = true