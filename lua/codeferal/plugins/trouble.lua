return {
  "folke/trouble.nvim",

  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("trouble").setup({
      use_diagnostic_signs = true,
    })
  end,
}
