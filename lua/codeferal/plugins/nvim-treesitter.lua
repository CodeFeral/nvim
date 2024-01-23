return {
  "nvim-treesitter/nvim-treesitter",

  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  },

  build = ":TSUpdate",

  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "bash",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
      },

      sync_install = false,

      highlight = {
        enable = true
      },

      indent = {
        enable = true
      },

    })
  end
}
