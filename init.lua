-- =========================
--   Minimal NeoVim for 42
-- =========================

-- Install lazy.nvim (plugin manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    -- Telescope fuzzy finder
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim" },
 	{ "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup {}
    end
   	},

    -- 42 header
    {
        "42Paris/42header",
  		config = function()
  		 vim.g.user42 = "ryatan"
  		 vim.g.mail42 = "ryatan@student.42singapore.sg"
  		end
    },
 	{
    	"nvim-treesitter/nvim-treesitter",
    	build = ":TSUpdate",
    	config = function()
    	  require'nvim-treesitter.configs'.setup {
    	    ensure_installed = { "c", "lua", "python", "bash" },
    	    highlight = { enable = true },
    	  }
    	end,
 	},
	{
  		'RostislavArts/naysayer.nvim',
  		priority = 1000,
  		lazy = false,
  		config = function()
  		  vim.cmd.colorscheme('naysayer')
  		end,
	},
	{
    	'nvim-lualine/lualine.nvim',
    	dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require('lualine').setup {
				options = {
					theme = '16color',
					section_separators = ' ',
					component_separators = '',
				}
			}
		end
	},
})

-- =========================
-- Editor Settings
-- =========================
vim.opt.termguicolors = true
--vim.opt.background = "light"
vim.cmd.colorscheme("naysayer")
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

-- =========================
-- Keymaps
-- =========================
vim.g.mapleader = " "

-- Telescope
vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })

-- 42 Header
vim.keymap.set("n", "<leader>h", "<cmd>Stdheader<CR>", { desc = "Insert 42 header" })

-- go back to ex
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { desc = "Open Netrw file explorer" })
