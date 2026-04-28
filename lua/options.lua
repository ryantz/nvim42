--vim.o.background = "light"
vim.o.background = "dark"

vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr-o:block"

-- Line at 80 chars (42 norm)
vim.opt.colorcolumn = "80"
--vim.cmd [[
--    highlight ColorColumn ctermbg=NONE guibg=#FF0000
--]]

-- Tabs — required by 42 Norm
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.cursorline = true

-- Numbers
vim.opt.number = true
vim.opt.termguicolors = true
vim.cmd.colorscheme('thorn-dark-warm')

vim.opt.list = true
vim.opt.listchars = {
  tab = '› ',
  trail= '·',
}

vim.api.nvim_set_hl(0, "Whitespace", { fg = "#444444" })
-- opengl tags
-- command to generate tags
-- =============================================================
-- sudo ctags -R --c++-kinds=+p --fields=+iaS --extras=+q \
--  -f /usr/include/GLFW/tags \
--  /usr/include/GLFW/
--  ============================================================
vim.opt.tags:append("/usr/include/GLFW/tags")
vim.opt.tags:append("/usr/include/GL/tags")
