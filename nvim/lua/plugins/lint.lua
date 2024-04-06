return {
  "mfussenegger/nvim-lint",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
  config = function()
    local lint = require "lint"

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      python = { "mypy", "ruff" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>L", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })

    -- Autofix entire buffer with eslint_d
    vim.api.nvim_set_keymap(
      "n",
      "<leader>f",
      "mF:%!eslint_d --stdin --fix-to-stdout<CR>`F",
      { noremap = true, silent = true }
    )

    -- Autofix visual selection with eslint_d
    vim.api.nvim_set_keymap(
      "v",
      "<leader>f",
      ":!eslint_d --stdin --fix-to-stdout<CR>gv",
      { noremap = true, silent = true }
    )
  end,
}
