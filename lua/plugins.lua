--local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
--
--if not vim.loop.fs_stat(lazypath) then
--  vim.fn.system({
--    "git", "clone", "--filter=blob:none",
--    "https://github.com/folke/lazy.nvim.git",
--    lazypath
--  })
--end
--vim.opt.rtp:prepend(lazypath)
--
--require("lazy").setup({
--	require("plugins.git"),
--	require("plugins.misc"),
--	require("plugins.oil"),
--	require("plugins.telescope"),
--	require("plugins.treesitter"),
--	require("plugins.colorschemes"),
--})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)  -- this line was missing

require("lazy").setup({
    { import = "plugins.colorschemes" },
    { import = "plugins.git" },
    { import = "plugins.misc" },
    { import = "plugins.oil" },
    { import = "plugins.mason" },
    { import = "plugins.telescope" },
    { import = "plugins.treesitter" },
})
