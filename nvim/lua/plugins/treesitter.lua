return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    -- configuration de treesitter
    treesitter.setup({
      -- activation de la coloration syntaxique
      highlight = {
        enable = true,
      },
      -- activation de l'indentation améliorée
      indent = { enable = true },

      -- langages installés et configurés
      ensure_installed = {
        "bash",
        "dockerfile",
        "gitignore",
        "html",
        "json",
        "lua",
        "javascript", "typescript", "tsx",
        "markdown",
        "markdown_inline",
        "python",
        "rst",
        "rust",
        "typescript",
        "vim",
        "yaml",
      },
      -- lorse de l'appui sur <Ctrl-space> sélectionne le bloc
      -- courant spécifique au langage de programmation
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
} -- lua/plugins/treesitter.lua
-- return {
--   {
--     event = { "BufReadPost", "BufNewFile" },
--     dependencies = {
--       "nvim-treesitter/nvim-treesitter-textobjects",
--       "windwp/nvim-ts-autotag",
--       "JoosepAlviste/nvim-ts-context-commentstring",
--     },
--     opts = {
--       ensure_installed = {
--         "lua", "vim", "vimdoc",
--         "javascript", "typescript", "tsx",
--         "html", "css", "json", "markdown", "markdown_inline",
--         "query"
--       },
--       highlight = {
--         enable = true,
--         additional_vim_regex_highlighting = false,
--       },
--       indent = { enable = true },
--       autotag = { enable = true },
--     },
--     config = function(_, opts)
--       require("nvim-treesitter.configs").setup(opts)
--     end,
--   },
-- }
