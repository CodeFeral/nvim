-- set leader key to space
vim.g.mapleader = " "

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode with jk" })
vim.keymap.set("i", "kj", "<ESC>", { desc = "exit insert mode with kj" })

-- window splits
vim.keymap.set({ "n", "v" }, "<leader>ws", "<C-w>s", { desc = "split window horizontally" })
vim.keymap.set({ "n", "v" }, "<leader>wv", "<C-w>v", { desc = "split window vertically" })
vim.keymap.set({ "n", "v" }, "<leader>wx", "<cmd>close<CR>", { desc = "close current split" })

vim.keymap.set({ "n", "v" }, "<leader>wwh", "2<C-w><", { desc = "decrease width" })
vim.keymap.set({ "n", "v" }, "<leader>wwj", "2<C-w>-", { desc = "decrease height" })
vim.keymap.set({ "n", "v" }, "<leader>wwk", "2<C-w>+", { desc = "increase height" })
vim.keymap.set({ "n", "v" }, "<leader>wwl", "2<C-w>>", { desc = "increase width" })
vim.keymap.set({ "n", "v" }, "<leader>wwe", "2<C-w>=", { desc = "equal size" })

vim.keymap.set({ "n", "v" }, "<leader>wh", "<C-w>h", { desc = "go to left split " })
vim.keymap.set({ "n", "v" }, "<leader>wj", "<C-w>j", { desc = "go to down split" })
vim.keymap.set({ "n", "v" }, "<leader>wk", "<C-w>k", { desc = "go to up split" })
vim.keymap.set({ "n", "v" }, "<leader>wl", "<C-w>l", { desc = "go to right split" })

-- tabs
vim.keymap.set({ "n", "v" }, "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" })
vim.keymap.set({ "n", "v" }, "<leader>tx", "<cmd>tabclose<CR>", { desc = "close current tab" })
vim.keymap.set({ "n", "v" }, "<leader>th", "<cmd>tabp<CR>", { desc = "go to previous tab" })
vim.keymap.set({ "n", "v" }, "<leader>tl", "<cmd>tabn<CR>", { desc = "go to next tab" })
vim.keymap.set({ "n", "v" }, "<leader>tt", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" })

-- Plugins GUI
vim.keymap.set({ "n", "v" }, "<leader>pl", "<cmd>Lazy<CR>", { desc = "Lazy" })
vim.keymap.set({ "n", "v" }, "<leader>pm", "<cmd>Mason<CR>", { desc = "Mason" })
vim.keymap.set({ "n", "v" }, "<leader>pd", "<cmd>Dashboard<CR>", { desc = "Dashboard" })

-- LSP
vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "action" })
vim.keymap.set({ "n", "v" }, "<leader>ll", vim.lsp.buf.hover, { desc = "look" })
vim.keymap.set({ "n", "v" }, "<leader>ld", vim.lsp.buf.definition, { desc = "definition" })
vim.keymap.set({ "n", "v" }, "<leader>lD", vim.lsp.buf.declaration, { desc = "declaration" })
vim.keymap.set({ "n", "v" }, "<leader>li", vim.lsp.buf.implementation, { desc = "implementation" })
vim.keymap.set({ "n", "v" }, "<leader>lr", vim.lsp.buf.rename, { desc = "rename" })
vim.keymap.set({ "n", "v" }, "<leader>lf", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "format" })

-- Neo-tree
vim.keymap.set({ "n", "v" }, "<leader>ee", "<cmd>Neotree focus filesystem left reveal<CR>", { desc = "neotree open" })
vim.keymap.set({ "n", "v" }, "<leader>ew", "<cmd>Neotree float reveal<CR>", { desc = "neotree float open" })
vim.keymap.set({ "n", "v" }, "<leader>ex", "<cmd>Neotree close<CR>", { desc = "neotree close" })
vim.keymap.set({ "n", "v" }, "<leader>eg", "<cmd>Neotree git_status toggle float<CR>", { desc = "neotree git status" })

-- Telescope
vim.keymap.set({ "n", "v" }, "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
vim.keymap.set({ "n", "v" }, "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
vim.keymap.set({ "n", "v" }, "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
