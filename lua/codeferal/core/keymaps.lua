-- set leader key to space
vim.g.mapleader = " "

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode with jk" })
vim.keymap.set("i", "kj", "<ESC>", { desc = "exit insert mode with kj" })

-- splits
vim.keymap.set("n", "<leader>ss", "<C-w>s", { desc = "split window horizontally" })
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split" })
vim.keymap.set("n", "<leader>sh", "<C-w>h", { desc = "go to left split " })
vim.keymap.set("n", "<leader>sj", "<C-w>j", { desc = "go to down split" })
vim.keymap.set("n", "<leader>sk", "<C-w>k", { desc = "go to up split" })
vim.keymap.set("n", "<leader>sl", "<C-w>l", { desc = "go to right split" })

-- tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close current tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to previous tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" })

-- Lazy
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "open Lazy" })

-- Neo-tree
vim.keymap.set("n", "<leader>fe", "<cmd>Neotree focus filesystem left reveal<CR>", { desc = "neotree open" })
vim.keymap.set("n", "<leader>ff", "<cmd>Neotree toggle float reveal<CR>", { desc = "neotree float open" })
vim.keymap.set("n", "<leader>fx", "<cmd>Neotree close<CR>", { desc = "neotree close" })
vim.keymap.set("n", "<leader>fg", "<cmd>Neotree git_status toggle float<CR>", { desc = "neotree git status" })
