local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
}

function M.config()
  local servers = {
    "lua_ls",
    "cssls",
    "html",
    "tsserver",
    "pyright",
    "bashls",
    "jsonls",
    "dockerls",
    "docker_compose_language_service",
    "emmet_language_server",
    "gopls",
    "tailwindcss",
    "marksman"
  }

  local tools = {
    "prettier",
    "stylua",
    "shfmt",
    "isort",
    "black",
    "eslint",
    "mypy",
    "eslint_d",
    "ruff"
  }

  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }

  require("mason-lspconfig").setup {
    ensure_installed = servers,
  }

  require("mason-tool-installer").setup {
    ensure_installed = tools,
  }
end

return M
