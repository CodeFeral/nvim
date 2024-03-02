-- set leader key to space
vim.g.mapleader = " "

-- map jk and kj to escape
vim.keymap.set("i", "jk", "<ESC>", { desc = "escape" })
vim.keymap.set("i", "kj", "<ESC>", { desc = "escape" })

-- Swap Ctrl-i and Ctrl-o
vim.api.nvim_set_keymap("n", "<C-o>", "<C-i>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-i>", "<C-o>", { noremap = true, silent = true })

-- View
vim.keymap.set({ "n", "v" }, "<leader>vw", "<cmd>set wrap!<CR>", { desc = "Word Wrap" })

local function toggle_conceal()
	if vim.wo.conceallevel == 0 then
		vim.wo.conceallevel = 1
	else
		vim.wo.conceallevel = 0
	end
end

vim.keymap.set({ "n", "v" }, "<leader>vc", toggle_conceal, { desc = "Toggle Conceal" })

