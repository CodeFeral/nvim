-- set leader key to space
vim.g.mapleader = " "


-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode with jk" })
vim.keymap.set("i", "kj", "<ESC>", { desc = "exit insert mode with kj" })


-- window splits
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = "split window horizontally" })
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "split window vertically" })
vim.keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "close current split" })

vim.keymap.set("n", "<leader>wwh", "2<C-w><", { desc = "decrease width" })
vim.keymap.set("n", "<leader>wwj", "2<C-w>-", { desc = "decrease height" })
vim.keymap.set("n", "<leader>wwk", "2<C-w>+", { desc = "increase height" })
vim.keymap.set("n", "<leader>wwl", "2<C-w>>", { desc = "increase width" })
vim.keymap.set("n", "<leader>wwe", "2<C-w>=", { desc = "equal size" })

vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "go to left split " })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "go to down split" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "go to up split" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "go to right split" })


-- tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close current tab" })
vim.keymap.set("n", "<leader>th", "<cmd>tabp<CR>", { desc = "go to previous tab" })
vim.keymap.set("n", "<leader>tl", "<cmd>tabn<CR>", { desc = "go to next tab" })
vim.keymap.set("n", "<leader>tt", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" })


-- Lazy
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "open Lazy" })


-- Neo-tree
vim.keymap.set("n", "<leader>ee", "<cmd>Neotree focus filesystem left reveal<CR>", { desc = "neotree open" })
vim.keymap.set("n", "<leader>ew", "<cmd>Neotree float reveal<CR>", { desc = "neotree float open" })
vim.keymap.set("n", "<leader>ex", "<cmd>Neotree close<CR>", { desc = "neotree close" })
vim.keymap.set("n", "<leader>eg", "<cmd>Neotree git_status toggle float<CR>", { desc = "neotree git status" })


-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
