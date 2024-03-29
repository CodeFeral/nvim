local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "codeferal.plugins" },
  { import = "codeferal.plugins.treesitter" },
  { import = "codeferal.plugins.navigation" },
  { import = "codeferal.plugins.writing" },
  { import = "codeferal.plugins.cosmetic" },
  { import = "codeferal.plugins.lsp" },
  -- { import = "codeferal.plugins.ai" },
})
