return {
  "nvim-treesitter/nvim-treesitter",

  build = ":TSUpdate",

  config = function()
    local configs = require("nvim-treesitter.configs")

    vim.diagnostic.config({
      virtual_text = false,  -- This disables inline virtual text
      signs = true,          -- Keep or remove signs in the sign column
      underline = true,     -- Disable underlining the text
      update_in_insert = false, -- Disable updates in insert mode
      severity_sort = true,  -- Sort by severity
    })

    configs.setup({
      auto_install = true,
      sync_install = false,

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },
    })
  end,
}
