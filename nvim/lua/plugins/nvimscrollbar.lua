return {
  "petertriho/nvim-scrollbar",
  dependencies = {
    "kevinhwang91/nvim-hlslens",
    "lewis6991/gitsigns.nvim",
  },
  opts = {
    -- show_in_active_only = true,
    excluded_filetypes = {
      "neo-tree",
    },
    marks = {
      Cursor = {
        text = " ",
        priority = 99,
      },
    },
    handle = {
      blend = 90,
      highlight = "Cursor",
    },
    handlers = {
      cursor = true,
      diagnostic = true,
      gitsigns = true, -- Requires gitsign
      handle = true,
      search = true, -- Requires hlslens
      ale = false, -- Requires ALE
    },
  },
}
