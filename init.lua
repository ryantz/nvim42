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
    	'Verf/deepwhite.nvim',
    	lazy = false,
    	priority = 1000,
    	config = function()
    	    vim.cmd [[colorscheme deepwhite]]
    	end,
	},
	{ "shortcuts/no-neck-pain.nvim" },
	{
	  "oskarnurm/koda.nvim",
	  lazy = false, -- make sure we load this during startup if it is your main colorscheme
	  priority = 1000, -- make sure to load this before all the other start plugins
	  config = function()
		  vim.cmd("colorscheme koda")
	  end,
	},
	{
	  "yorickpeterse/vim-paper",
	  lazy = false, -- make sure we load this during startup if it is your main colorscheme
	  priority = 1000, -- make sure to load this before all the other start plugins
	  config = function()
		  vim.cmd("colorscheme paper")
	  end,
	},
})

-- =========================
-- Editor Settings
-- =========================
vim.o.background = "light"
vim.cmd.colorscheme("paper")
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
vim.keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })

-- go back to ex
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { desc = "Open Netrw file explorer" })

-- no neck pain
vim.keymap.set("n", "<leader>nn", ":NoNeckPain<CR>", { desc = "No neck pain" })

-- splits
vim.keymap.set("n", "<leader>\\", ":vsplit<CR>", { desc = "vertical split in nvim" })
vim.keymap.set("n", "<leader>-", ":split<CR>", { desc = "horizontal split in nvim" })
vim.keymap.set("n", "<leader>c", "<C-w>c", { desc = "close split in nvim" })


