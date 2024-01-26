-- Related to windows, splits, and their navigation.
-- Begins with "<leader>w"

-- splits
vim.keymap.set({ "n", "v" }, "<leader>ww", "<C-w>v", { desc = "split vertically" })
vim.keymap.set({ "n", "v" }, "<leader>ws", "<C-w>s", { desc = "split horizontally" })
vim.keymap.set({ "n", "v" }, "<leader>wq", "<cmd>close<CR>", { desc = "quit window" })

-- size
vim.keymap.set({ "n", "v" }, "<leader>wH", "2<C-w><", { desc = "decrease width" })
vim.keymap.set({ "n", "v" }, "<leader>WH", "2<C-w><", { desc = "decrease width" })

vim.keymap.set({ "n", "v" }, "<leader>wJ", "2<C-w>-", { desc = "decrease height" })
vim.keymap.set({ "n", "v" }, "<leader>WJ", "2<C-w>-", { desc = "decrease height" })

vim.keymap.set({ "n", "v" }, "<leader>wK", "2<C-w>+", { desc = "increase height" })
vim.keymap.set({ "n", "v" }, "<leader>WK", "2<C-w>+", { desc = "increase height" })

vim.keymap.set({ "n", "v" }, "<leader>wL", "2<C-w>>", { desc = "increase width" })
vim.keymap.set({ "n", "v" }, "<leader>WL", "2<C-w>>", { desc = "increase width" })

vim.keymap.set({ "n", "v" }, "<leader>we", "<C-w>=", { desc = "equal size" })
vim.keymap.set({ "n", "v" }, "<leader>WE", "<C-w>=", { desc = "equal size" })

-- navigation
vim.keymap.set({ "n", "v" }, "<leader>wh", "<C-w>h", { desc = "go to left split " })
vim.keymap.set({ "n", "v" }, "<leader>wj", "<C-w>j", { desc = "go to down split" })
vim.keymap.set({ "n", "v" }, "<leader>wk", "<C-w>k", { desc = "go to up split" })
vim.keymap.set({ "n", "v" }, "<leader>wl", "<C-w>l", { desc = "go to right split" })
