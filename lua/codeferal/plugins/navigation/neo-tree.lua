return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = false,
      enable_normal_mode_for_inputs = true,

      filesystem = {
        filtered_items = {
          visible = true,
        },

        window = {
          width = 35,
          mappings = {
            ["l"] = "open",
            ["h"] = "close_node",
          },
        },
      },
    })
  end,
}
