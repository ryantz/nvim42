vim.pack.add({
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/lewis6991/gitsigns.nvim",
    "https://github.com/kdheepak/lazygit.nvim",
})

require("gitsigns").setup()

vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
