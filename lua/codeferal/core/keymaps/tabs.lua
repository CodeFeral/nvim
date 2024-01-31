-- Related to tabs.

vim.keymap.set({ "n", "v" }, "<leader>tt", "<cmd>tabedit<CR>", { desc = "tabedit" })
vim.keymap.set({ "n", "v" }, "<leader>tq", "<cmd>tabclose<CR>", { desc = "tabclose" })

-- Use the default gt, gT, 1gt for tab navigation.
