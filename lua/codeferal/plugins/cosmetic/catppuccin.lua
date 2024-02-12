return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,

      integrations = {
        dashboard = true,
        leap = true,
        mason = false,
        neotree = false,
        cmp = true,
        notify = false,
        treesitter = true,
        lsp_trouble = false,
        which_key = false,

        -- telescope
        telescope = {
          enabled = true,
          -- style = "nvchad"
        },

        -- nvim-lspconfig
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
          inlay_hints = {
            background = true,
          },
        },
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
