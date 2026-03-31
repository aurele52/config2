return {
  "williamboman/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    require("mason-tool-installer").setup({
      ensure_installed = {
        "prettier",
        "eslint_d",
        "eslint",
        "stylua",
        "rustfmt",
      },
    })

    require("mason-lspconfig").setup({
      ensure_installed = {
        "cssls",
        "elmls",
        "graphql",
        "html",
        "lua_ls",
        "rust_analyzer",
        "svelte",
        "yamlls",
        "vtsls",
        "eslint",
      },
      automatic_enable = false,
    })

    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    vim.lsp.config("rust_analyzer", {
      settings = {
        ["rust-analyzer"] = {
          diagnostics = {
            enable = true,
            styleLints = {
              enable = true,
            },
          },
        },
      },
    })

    vim.lsp.config("eslint", {
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      settings = {
        workingDirectory = { mode = "auto" },
      },
    })

    vim.lsp.enable({
      "cssls",
      "elmls",
      "graphql",
      "html",
      "lua_ls",
      "rust_analyzer",
      "svelte",
      "yamlls",
      "vtsls",
      "eslint",
    })
  end,
}
