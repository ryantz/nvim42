-- Telescope
vim.keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })

-- go back to ex
--vim.keymap.set("n", "<leader>e", ":Ex<CR>", { desc = "Open Netrw file explorer" })

-- no neck pain
vim.keymap.set("n", "<leader>nn", ":NoNeckPain<CR>", { desc = "No neck pain" })

-- splits
vim.keymap.set("n", "<leader>\\", ":vsplit<CR>", { desc = "vertical split in nvim" })
vim.keymap.set("n", "<leader>-", ":split<CR>", { desc = "horizontal split in nvim" })
vim.keymap.set("n", "<leader>c", "<C-w>c", { desc = "close split in nvim" })
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "leader vim movement for navigating splits" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "leader vim movement for navigating splits" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "leader vim movement for navigating splits" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "leader vim movement for navigating splits" })

-- resize splits
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")
vim.keymap.set("n", "<leader>e", "<C-w>=")
