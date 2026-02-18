return {
    {
	  "nvim-treesitter/nvim-treesitter",
	  build = ":TSUpdate",
	  config = function()
	    require'nvim-treesitter'.setup {
	      ensure_installed = { "c", "lua", "python", "bash" },
	      highlight = { enable = true },
	    }
	  end,
	},
}