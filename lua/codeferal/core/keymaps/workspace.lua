-- Relates to workspace IDE GUI elements.
-- Begins with "<leader>e"

-- terminal
vim.api.nvim_set_keymap("t", "<C-Space>", "<C-\\><C-n>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>es", "<cmd>terminal<CR>", { desc = "open terminal" })

-- Neo-tree
vim.keymap.set({ "n", "v" }, "<leader>ew", "<cmd>Neotree focus filesystem left reveal<CR>", { desc = "neotree open" })
vim.keymap.set({ "n", "v" }, "<leader>ee", "<cmd>Neotree float reveal<CR>", { desc = "neotree float open" })
vim.keymap.set({ "n", "v" }, "<leader>eq", "<cmd>Neotree close<CR>", { desc = "neotree close" })
vim.keymap.set({ "n", "v" }, "<leader>eg", "<cmd>Neotree git_status toggle float<CR>", { desc = "neotree git status" })

-- Trouble
vim.keymap.set({ "n", "v" }, "<leader>er", "<cmd>:Trouble<CR>", { desc = "trouble errors" })
