-- Related to windows, splits, and their navigation.

-- size
vim.keymap.set({ "n", "v" }, "<C-A-h>", "<C-w><", { desc = "decrease width" })
vim.keymap.set({ "n", "v" }, "<C-A-j>", "<C-w>-", { desc = "decrease height" })
vim.keymap.set({ "n", "v" }, "<C-A-k>", "<C-w>+", { desc = "increase height" })
vim.keymap.set({ "n", "v" }, "<C-A-l>", "<C-w>>", { desc = "increase width" })
