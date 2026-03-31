-- lua/plugins/undotree.lua
return {
  "mbbill/undotree",
  cmd = { "UndotreeToggle", "UndotreeFocus" },
  keys = {
    { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Toggle UndoTree" },
  },
  init = function()
    -- Ouvre la fenêtre à droite et utilise le mode diff pour mieux voir les changements
    vim.g.undotree_WindowLayout = 3       -- 2/3 = panneau à droite
    vim.g.undotree_DiffAutoOpen = 1
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_ShortIndicators = 1
    vim.g.undotree_SplitWidth = 35
  end,
}
