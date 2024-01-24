return {
  "neovim/nvim-lspconfig",

  dependencies = {
    "williamboman/mason.nvim",
  },

  event = { "BufReadPre", "BufNewFile" },

  config = function()
    local lspconfig = require("lspconfig")

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    lspconfig["tsserver"].setup({
      capabilities = capabilities,
    })

    lspconfig["html"].setup({
      capabilities = capabilities,
    })

    lspconfig["cssls"].setup({
      capabilities = capabilities,
    })
  end,
}
