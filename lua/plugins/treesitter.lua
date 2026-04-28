return {
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
}
