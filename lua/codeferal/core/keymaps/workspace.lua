-- Relates to workspace IDE GUI elements.
-- Begins with "<leader>e"

-- terminal
vim.api.nvim_set_keymap("t", "<C-Space>", "<C-\\><C-n>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>es", "<cmd>terminal<CR>", { desc = "open terminal" })

-- Neo-tree
vim.keymap.set({ "n", "v" }, "<leader>ew", "<cmd>Neotree focus filesystem left reveal<CR>", { desc = "neotree open" })
vim.keymap.set({ "n", "v" }, "<leader>ee", "<cmd>Neotree float reveal<CR>", { desc = "neotree float open" })
vim.keymap.set({ "n", "v" }, "<leader>eq", "<cmd>Neotree close<CR>", { desc = "neotree close" })
vim.keymap.set({ "n", "v" }, "<leader>eg", "<cmd>Neotree git_status toggle float<CR>", { desc = "neotree git status" })

-- Trouble
vim.keymap.set({ "n", "v" }, "<leader>er", "<cmd>:Trouble<CR>", { desc = "trouble errors" })

-- Aerial
vim.keymap.set({ "n", "v" }, "<leader>eaw", "<cmd>AerialOpen! left<CR>", { desc = "aerial open" })
vim.keymap.set({ "n", "v" }, "<leader>eaa", "<cmd>AerialNavToggle<CR>", { desc = "aerial float" })
vim.keymap.set({ "n", "v" }, "<leader>eaq", "<cmd>AerialClose<CR>", { desc = "aerial close" })
vim.keymap.set({ "n", "v" }, "<leader>eaQ", "<cmd>AerialCloseAll<CR>", { desc = "aerial close all" })

-- Combined
local deferDelay = 80
local function openWorkspace()
  vim.cmd("Neotree filesystem left show reveal")

  vim.defer_fn(function()
    vim.cmd("AerialOpen! left")

    vim.defer_fn(function()
      vim.cmd("Trouble")
    end, deferDelay)
  end, deferDelay)
end

local function closeWorkspace()
  vim.cmd("Neotree close")

  vim.defer_fn(function()
    vim.cmd("AerialCloseAll")

    vim.defer_fn(function()
      vim.cmd("TroubleClose")
    end, deferDelay)
  end, deferDelay)
end

vim.keymap.set({ "n", "v" }, "<leader>zz", openWorkspace, { desc = "workspace open" })
vim.keymap.set({ "n", "v" }, "<leader>zq", closeWorkspace, { desc = "workspace close" })
