-- set leader key to space
vim.g.mapleader = " "

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode with jk" })
vim.keymap.set("i", "kj", "<ESC>", { desc = "exit insert mode with kj" })

-- Swap Ctrl-i and Ctrl-o
vim.api.nvim_set_keymap("n", "<C-o>", "<C-i>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-i>", "<C-o>", { noremap = true, silent = true })
