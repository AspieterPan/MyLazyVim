-- Keymaps are automatically loaded on the VeryLazy event
-- ndowndowndowDefault keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- clean blank lines in visual mode
vim.keymap.set("x", "<leader>id", [[:g/^\s*\n/d<CR>]], { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "Y", [["+y]], { noremap = true, silent = true })

vim.keymap.set({ "n" }, "<leader>wh", "<C-w>h", { desc = "Go to the left window", noremap = true, silent = true })
vim.keymap.set({ "n" }, "<leader>wj", "<C-w>j", { desc = "Go to the down window", noremap = true, silent = true })
vim.keymap.set({ "n" }, "<leader>wk", "<C-w>k", { desc = "Go to the up window", noremap = true, silent = true })
vim.keymap.set({ "n" }, "<leader>wl", "<C-w>l", { desc = "Go to the right window", noremap = true, silent = true })

vim.keymap.set({ "n", "x" }, "<leader>w+", "<C-w>+", { desc = "Increase height", noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>w-", "<C-w>-", { desc = "Decrease height", noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>w<", "<C-w><", { desc = "Decrease width", noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>w>", "<C-w>>", { desc = "Increase height", noremap = true, silent = true })

vim.keymap.set({ "n", "x" }, "<leader>w=", "<C-w>=", { desc = "Equally high and wide", noremap = true, silent = true })

vim.keymap.set({ "n", "x" }, "<leader>wx", "<C-w>x", { desc = "Swap current with next", noremap = true, silent = true })
vim.keymap.set(
    { "n", "x" },
    "<leader>wo",
    "<C-w>o",
    { desc = "Close all other windows", noremap = true, silent = true }
)

vim.keymap.set({ "n", "x" }, "<M-k>", "<C-w>+", { desc = "Increase height", noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<M-j>", "<C-w>-", { desc = "Decrease height", noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<M-h>", "<C-w><", { desc = "Decrease width", noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<M-l>", "<C-w>>", { desc = "Increase width", noremap = true, silent = true })
