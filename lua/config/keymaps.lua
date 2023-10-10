-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- clean blank lines in visual mode
vim.keymap.set("x", "<leader>id", [[:g/^\s*\n/d<CR>]], { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "Y", [["+y]], { noremap = true, silent = true })

-- codeium
-- vim.keymap.set("i", "<c-i>", function()
--     return vim.fn["codeium#Accept"]()
-- end, { expr = true })
-- vim.keymap.set("i", "<c-;>", function()
--     return vim.fn["codeium#CycleCompletions"](1)
-- end, { expr = true })
-- vim.keymap.set("i", "<c-,>", function()
--     return vim.fn["codeium#CycleCompletions"](-1)
-- end, { expr = true })
-- vim.keymap.set("i", "<c-x>", function()
--     return vim.fn["codeium#Clear"]()
-- end, { expr = true })
