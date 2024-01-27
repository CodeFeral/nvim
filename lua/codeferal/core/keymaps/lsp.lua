-- Everything related to LSP and code support.
-- Begins with "<leader>l"

vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "action" })
vim.keymap.set({ "n", "v" }, "<leader>ll", vim.lsp.buf.hover, { desc = "look" })
vim.keymap.set({ "n", "v" }, "<leader>ld", vim.lsp.buf.definition, { desc = "definition" })
vim.keymap.set({ "n", "v" }, "<leader>lD", vim.lsp.buf.declaration, { desc = "declaration" })
vim.keymap.set({ "n", "v" }, "<leader>li", vim.lsp.buf.implementation, { desc = "implementation" })
vim.keymap.set({ "n", "v" }, "<leader>lr", vim.lsp.buf.rename, { desc = "rename" })
vim.keymap.set({ "n", "v" }, "<leader>le", vim.lsp.buf.references, { desc = "references" })
vim.keymap.set({ "n", "v" }, "<leader>ls", "<cmd>LspRestart<CR>", { desc = "restart" })
vim.keymap.set({ "n", "v" }, "<leader>lg", "<cmd>LspInfo<CR>", { desc = "info" })
vim.keymap.set({ "n", "v" }, "<leader>lf", function() vim.lsp.buf.format({ async = true }) end, { desc = "format" })
