-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
    return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end
--
-- vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
--     group = augroup("cursor always center"),
--     callback = function()
--         vim.cmd("normal! zz")
--     end,
-- })

vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = "markdown",
    group = augroup("disable md format"),
    callback = function()
        require("lazyvim.util").format.enable(false, true)
        require("snacks").toggle.get("diagnostics").opts.set(false)
    end,
})
