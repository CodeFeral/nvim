return {
  "folke/todo-comments.nvim",

  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    require("todo-comments").setup()
  end,
}

-- PERF: Fully optimized
-- HACK: Weird code
-- TODO: What else?
-- NOTE: Adding a note
-- FIX: Needs fixing
-- WARNING: Attention!
