local M = {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
}

function M.config()
  require("tokyonight").setup({
    transparent = true,
    style = "night",
  })
  vim.cmd("colorscheme tokyonight")   -- set the colorscheme
end

return M
