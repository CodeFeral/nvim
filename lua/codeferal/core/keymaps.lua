-- set leader key to space
vim.g.mapleader = " "

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode with jk" })
vim.keymap.set("i", "kj", "<ESC>", { desc = "exit insert mode with kj" })

-- Swap Ctrl-i and Ctrl-o
vim.api.nvim_set_keymap("n", "<C-o>", "<C-i>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-i>", "<C-o>", { noremap = true, silent = true })

-- terminal
vim.api.nvim_set_keymap("t", "<C-Space>", "<C-\\><C-n>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>t", "<cmd>terminal<CR>", { desc = "open terminal" })

-- window splits
vim.keymap.set({ "n", "v" }, "<leader>ws", "<C-w>s", { desc = "split window horizontally" })
vim.keymap.set({ "n", "v" }, "<leader>wv", "<C-w>v", { desc = "split window vertically" })
vim.keymap.set({ "n", "v" }, "<leader>wx", "<cmd>close<CR>", { desc = "close current split" })

vim.keymap.set({ "n", "v" }, "<leader>wwh", "<C-w><", { desc = "decrease width" })
vim.keymap.set({ "n", "v" }, "<leader>wwj", "<C-w>-", { desc = "decrease height" })
vim.keymap.set({ "n", "v" }, "<leader>wwk", "<C-w>+", { desc = "increase height" })
vim.keymap.set({ "n", "v" }, "<leader>wwl", "<C-w>>", { desc = "increase width" })
vim.keymap.set({ "n", "v" }, "<leader>wwe", "<C-w>=", { desc = "equal size" })

vim.keymap.set({ "n", "v" }, "<leader>wh", "<C-w>h", { desc = "go to left split " })
vim.keymap.set({ "n", "v" }, "<leader>wj", "<C-w>j", { desc = "go to down split" })
vim.keymap.set({ "n", "v" }, "<leader>wk", "<C-w>k", { desc = "go to up split" })
vim.keymap.set({ "n", "v" }, "<leader>wl", "<C-w>l", { desc = "go to right split" })

-- LSP
vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "action" })
vim.keymap.set({ "n", "v" }, "<leader>ll", vim.lsp.buf.hover, { desc = "look" })
vim.keymap.set({ "n", "v" }, "<leader>ld", vim.lsp.buf.definition, { desc = "definition" })
vim.keymap.set({ "n", "v" }, "<leader>lD", vim.lsp.buf.declaration, { desc = "declaration" })
vim.keymap.set({ "n", "v" }, "<leader>li", vim.lsp.buf.implementation, { desc = "implementation" })
vim.keymap.set({ "n", "v" }, "<leader>lr", vim.lsp.buf.rename, { desc = "rename" })
vim.keymap.set({ "n", "v" }, "<leader>le", vim.lsp.buf.references, { desc = "references" })
vim.keymap.set({ "n", "v" }, "<leader>ls", "<cmd>LspRestart<CR>", { desc = "restart" })
vim.keymap.set({ "n", "v" }, "<leader>lf", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "format" })

-- Completion
-- mappings inside completions.lua

-- Telescope
vim.keymap.set({ "n", "v" }, "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope files" })
vim.keymap.set({ "n", "v" }, "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "telescope recent files" })
vim.keymap.set({ "n", "v" }, "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "telescope string" })
vim.keymap.set({ "n", "v" }, "<leader>fn", "<cmd>Telescope notify<cr>", { desc = "telescope notifications" })

-- Neo-tree
vim.keymap.set({ "n", "v" }, "<leader>ew", "<cmd>Neotree focus filesystem left reveal<CR>", { desc = "neotree open" })
vim.keymap.set({ "n", "v" }, "<leader>ee", "<cmd>Neotree float reveal<CR>", { desc = "neotree float open" })
vim.keymap.set({ "n", "v" }, "<leader>ex", "<cmd>Neotree close<CR>", { desc = "neotree close" })
vim.keymap.set({ "n", "v" }, "<leader>eg", "<cmd>Neotree git_status toggle float<CR>", { desc = "neotree git status" })

-- Aerial
vim.keymap.set({ "n", "v" }, "<leader>aw", "<cmd>AerialOpen! left<CR>", { desc = "aerial open" })
vim.keymap.set({ "n", "v" }, "<leader>aa", "<cmd>AerialNavToggle<CR>", { desc = "aerial float" })
vim.keymap.set({ "n", "v" }, "<leader>ax", "<cmd>AerialClose<CR>", { desc = "aerial close" })
vim.keymap.set({ "n", "v" }, "<leader>aX", "<cmd>AerialCloseAll<CR>", { desc = "aerial close all" })

-- Copilot
vim.keymap.set({ "n", "v" }, "<leader>cc", "<cmd>Copilot<CR>", { desc = "copilot" })
vim.keymap.set({ "n", "v" }, "<leader>ch", "<cmd>h Copilot<CR>", { desc = "copilot help" })
vim.keymap.set({ "n", "v" }, "<leader>ce", "<cmd>Copilot enable<CR>", { desc = "copilot enable" })
vim.keymap.set({ "n", "v" }, "<leader>cx", "<cmd>Copilot disable<CR>", { desc = "copilot disable" })
vim.keymap.set({ "n", "v" }, "<leader>cs", "<cmd>Copilot status<CR>", { desc = "copilot status" })

-- Workspace
local function openWorkspace()
  vim.cmd("Neotree filesystem left show reveal")
  vim.defer_fn(function()
    vim.cmd("AerialOpen! left")
  end, 100)
end

local function closeWorkspace()
  vim.cmd("Neotree close")
  vim.defer_fn(function()
    vim.cmd("AerialCloseAll")
  end, 100)
end

vim.keymap.set({ "n", "v" }, "<leader>zz", openWorkspace, { desc = "workspace open" })
vim.keymap.set({ "n", "v" }, "<leader>zx", closeWorkspace, { desc = "workspace close" })
