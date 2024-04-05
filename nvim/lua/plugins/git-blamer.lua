local map = function(lhs, rhs, modes, opts)
  modes = modes or { "n" }
  opts = opts or { noremap = true, silent = true }
  vim.keymap.set(modes, lhs, rhs, opts)
end
return {
  "APZelos/blamer.nvim",
  config = function()
    -- toggle blamer
    map("<leader>gb", "<CMD>BlamerToggle<CR>")

    vim.g.blamer_enabled = 0
    vim.g.blamer_delay = 1000
    vim.g.blamer_show_in_visual_modes = 1
    vim.g.blamer_show_in_insert_modes = 0
    vim.g.blamer_prefix = " > "
    vim.g.blamer_template = "<committer>, <committer-time> • <summary>"
    vim.g.blamer_date_format = "%y/%m/%d"
    vim.g.blamer_relative_time = 0
    vim.api.nvim_set_hl(0, "Blamer", { fg = "#727478"})
  end,
}
