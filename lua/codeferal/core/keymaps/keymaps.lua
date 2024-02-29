-- set leader key to space
vim.g.mapleader = " "

-- map jk and kj to escape
vim.keymap.set("i", "jk", "<ESC>", { desc = "escape" })
vim.keymap.set("i", "kj", "<ESC>", { desc = "escape" })

-- Swap Ctrl-i and Ctrl-o
vim.api.nvim_set_keymap("n", "<C-o>", "<C-i>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-i>", "<C-o>", { noremap = true, silent = true })

-- Toggle Word Wrap
vim.api.nvim_set_keymap({ "n", "v" }, "<leader>w", "<cmd>set wrap!<CR>", { desc = "Word Wrap" })
