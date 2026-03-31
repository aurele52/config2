return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      git = {
        ignore = true, -- cache ce qui est dans .gitignore
      },
      filters = {
        dotfiles = false,     -- affiche les dotfiles en général
        exclude = { ".env" }, -- MAIS affiche .env même s’il est gitignored
      },
    })

    vim.keymap.set(
      "n",
      "<leader>e",
      "<cmd>NvimTreeFindFileToggle<CR>",
      { desc = "Ouverture/fermeture de l'explorateur de fichiers" }
    )
  end,
}
