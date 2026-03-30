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

vim.keymap.set("n", "<leader>th", "<cmd>split | terminal<cr>", { desc = "Terminal horizontal" })
vim.keymap.set("n", "<leader>tv", "<cmd>vsplit | terminal<cr>", { desc = "Terminal vertical" })
vim.keymap.set("n", "<leader>tf", "<cmd>terminal<cr>", { desc = "Terminal (current window)" })

vim.keymap.set("t", "<C-Space>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
vim.keymap.set("t", "<Nul>", [[<C-\><C-n>]], { desc = "Exit terminal mode (Ctrl-Space fallback)" })
vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
