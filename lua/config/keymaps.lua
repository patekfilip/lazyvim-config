-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap diagnostic navigation:
vim.keymap.set("n", "ge", function()
  vim.diagnostic.jump({ count = 1 })
end, { desc = "Go to next diagnostic" })

vim.keymap.set("n", "gE", function()
  vim.diagnostic.jump({ count = -1 })
end, { desc = "Go to previous diagnostic" })
