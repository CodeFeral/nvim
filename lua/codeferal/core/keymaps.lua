-- set leader key to space
vim.g.mapleader = " "

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
vim.keymap.set("i", "kj", "<ESC>", { desc = "Exit insert mode with kj" })

-- splits
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window Vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window Horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Splits Equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current Split" })

-- tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new Tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current Tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to Next Tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to Previous Tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffer in new Tab" })

-- Lazy
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "open Lazy" })

-- Neo-tree
vim.keymap.set("n", "<leader>fe", "<cmd>Neotree focus filesystem left reveal<CR>", { desc = "Neotree open" })
vim.keymap.set("n", "<leader>ff", "<cmd>Neotree toggle float reveal<CR>", { desc = "Neotree Float open" })
vim.keymap.set("n", "<leader>fx", "<cmd>Neotree close<CR>", { desc = "Neotree close" })
vim.keymap.set("n", "<leader>fg", "<cmd>Neotree git_status toggle float<CR>", { desc = "Neotree Git status" })
