vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Désactive OSC52 auto
local termfeatures = vim.g.termfeatures or {}
termfeatures.osc52 = false
vim.g.termfeatures = termfeatures

-- Force xclip via le DISPLAY forwardé par SSH
vim.g.clipboard = {
  name = "xclip-ssh",
  copy = {
    ["+"] = "xclip -selection clipboard",
    ["*"] = "xclip -selection primary",
  },
  paste = {
    ["+"] = "xclip -selection clipboard -o",
    ["*"] = "xclip -selection primary -o",
  },
  cache_enabled = 0,
}

require("core.options")
require("core.keymaps")
