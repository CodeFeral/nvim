-- Related to the Obsidian plugin
-- Begins with "<leader>o"

vim.keymap.set({ "n", "v" }, "<leader>oo", "<cmd>ObsidianOpen<cr>", { desc = "Open" })
vim.keymap.set({ "n", "v" }, "<leader>oh", "<cmd>ObsidianCheck<cr>", { desc = "Health" })

vim.keymap.set({ "n", "v" }, "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "New" })
vim.keymap.set({ "n", "v" }, "<leader>or", "<cmd>ObsidianRename<cr>", { desc = "Rename" })
vim.keymap.set({ "n", "v" }, "<leader>ot", "<cmd>ObsidianTemplate<cr>", { desc = "Template" })

vim.keymap.set({ "n", "v" }, "<leader>of", "<cmd>ObsidianQuickSwitch<cr>", { desc = "Files" })
vim.keymap.set({ "n", "v" }, "<leader>ol", "<cmd>ObsidianLinks<cr>", { desc = "Links" })
vim.keymap.set({ "n", "v" }, "<leader>os", "<cmd>ObsidianSearch<cr>", { desc = "Search" })
vim.keymap.set({ "n", "v" }, "<leader>ob", "<cmd>ObsidianBacklinks<cr>", { desc = "Backlinks" })

vim.keymap.set({ "n", "v" }, "<leader>oe", "<cmd>ObsidianExtractNote<cr>", { desc = "Extract Node" })

vim.keymap.set({ "n", "v" }, "<leader>op", "<cmd>ObsidianPasteImg<cr>", { desc = "Paste Image" })
