-- set leader key to space
vim.g.mapleader = " "

-- splits
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Makes splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Neotree
vim.keymap.set("n", "<leader>fe", "<cmd>Neotree<CR>", { desc = "Neotree Open" })
vim.keymap.set("n", "<leader>fx", "<cmd>Neotree close<CR>", { desc = "Neotree Close" })
vim.keymap.set("n", "<leader>fg", "<cmd>Neotree git_status toggle<CR>", { desc = "Neotree git status" })
