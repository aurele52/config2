return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,    -- recommandé pour éviter les soucis de chargement
  priority = 1000, -- charge tôt (optionnel mais sûr)

  config = function()
    require("nvim-treesitter.config").setup({
      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },

      ensure_installed = {
        "bash",
        "dockerfile",
        "gitignore",
        "html",
        "json",
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "markdown",
        "markdown_inline",
        "python",
        "rst",
        "rust",
        "vim",
        "yaml",
        "python"
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
