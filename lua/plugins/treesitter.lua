return {
<<<<<<< Updated upstream
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = { "c", "lua", "python", "bash" },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false, -- usually false is fine
        },
      }

    end,
  },
=======
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
>>>>>>> Stashed changes
}
