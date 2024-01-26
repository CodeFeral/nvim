-- Related to searching and finding things.
-- Begins with "<leader>f"

vim.keymap.set({ "n", "v" }, "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope files" })
vim.keymap.set({ "n", "v" }, "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "telescope recent files" })
vim.keymap.set({ "n", "v" }, "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "telescope string" })
vim.keymap.set({ "n", "v" }, "<leader>fn", "<cmd>Telescope notify<cr>", { desc = "telescope notifications" })
