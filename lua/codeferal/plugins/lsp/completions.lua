return {
  "hrsh7th/nvim-cmp",

  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",         -- source for text in buffer
    "hrsh7th/cmp-path",           -- source for file system paths
    "L3MON4D3/LuaSnip",           -- snippet engine
    "saadparwaiz1/cmp_luasnip",   -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
  },

  config = function()
    local cmp = require("cmp")

    local luasnip = require("luasnip")

    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({

      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },

      mapping = cmp.mapping.preset.insert({
        ["<A-k>"] = cmp.mapping.select_prev_item(),
        ["<A-j>"] = cmp.mapping.select_next_item(),
        ["<A-b>"] = cmp.mapping.scroll_docs(-4),
        ["<A-f>"] = cmp.mapping.scroll_docs(4),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),

      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" }, -- snippets
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
      }),
    })
  end,
}
