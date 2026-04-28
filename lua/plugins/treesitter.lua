return {
    {
	  "nvim-treesitter/nvim-treesitter",
	  build = ":TSUpdate",
	  config = function()
	    require'nvim-treesitter'.setup {
	      ensure_installed = { "c", "cpp", "lua", "python", "bash" , "make", "html", "latex", "yaml"},
	      highlight = { enable = true },
	    }
	  end,
	},
}
