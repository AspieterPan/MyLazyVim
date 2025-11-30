-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.wrap = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.clipboard = ""
vim.opt.ttimeoutlen = 5
vim.g.lazyvim_picker = "snacks"
-- vim.o.cursorcolumn = true
vim.g.ai_cmp = false

if vim.env.SSH_CONNECTION then
    vim.g.clipboard = {
        name = "OSC 52",
        copy = {
            ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
            ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
        },
        paste = {
            ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
            ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
        },
    }
end
