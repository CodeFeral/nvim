return {
  "stevearc/aerial.nvim",

  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },

  opts = {},

  config = function ()
    require("aerial").setup({
      layout = {
        width = 18
      }
    })
  end
}
