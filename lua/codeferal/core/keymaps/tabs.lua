-- Related to tabs.

vim.keymap.set({ "n", "v" }, "<leader>tt", "<cmd>tabnew<CR>", { desc = "tabnew" })
vim.keymap.set({ "n", "v" }, "<leader>tq", "<cmd>tabclose<CR>", { desc = "tabclose" })

-- Use the default gt, gT, 1gt for tab navigation.
