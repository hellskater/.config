return {
  "Pocco81/auto-save.nvim",
  event = "VeryLazy",
  config = true,
  opts = {
    enabled = true,
    execution_message = {
      message = function()
        return "Saved at " .. vim.fn.strftime "%H:%M:%S"
      end,
      dim = 0.18,
      cleaning_interval = 1250,
    },
    trigger_events = { "InsertLeave", "TextChanged" },
    condition = function(buf)
      local fn = vim.fn
      local utils = require "auto-save.utils.data"
      -- Check if the file is modifiable and not a .lua file
      if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), { "lua" }) then -- Exclude .lua files
        return true -- met condition(s), can save
      end
      return false -- can't save because it's either not modifiable or a .lua file
    end,
    write_all_buffers = false,
    debounce_delay = 500,
    callbacks = {
      enabling = nil,
      disabling = nil,
      before_asserting_save = nil,
      before_saving = nil,
      after_saving = nil,
    },
  },
}
