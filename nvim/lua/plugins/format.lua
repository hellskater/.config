local prettier = { "prettier" }
return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
  config = function()
    local conform = require "conform"

    conform.setup {
      formatters_by_ft = {
        javascript = { prettier },
        typescript = { prettier },
        javascriptreact = { prettier },
        typescriptreact = { prettier },
        css = { prettier },
        html = { prettier },
        json = { prettier },
        jsonc = { prettier },
        yaml = { prettier },
        markdown = { prettier, "injected" },
        norg = { "injected" },
        graphql = { prettier },
        lua = { "stylua" },
        go = { "goimports", "gofmt" },
        sh = { "shfmt" },
        python = { "isort", "black" },
        ["_"] = { "trim_whitespace", "trim_newlines" },
      },
      -- format_on_save = {
      --   lsp_fallback = true,
      --   async = false,
      --   timeout_ms = 1000,
      -- },
    }

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      }
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
