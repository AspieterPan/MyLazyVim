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

vim.api.nvim_create_autocmd("BufEnter", {
    group = augroup("Python_Run_Command"),
    pattern = { "*.py" },
    callback = function()
        vim.api.nvim_create_user_command("Run", 'execute "!python3 %" ', {})
    end,
})

vim.api.nvim_create_autocmd("BufEnter", {
    group = augroup("JS_Run_Command"),
    pattern = { "*.js" },
    callback = function()
        vim.api.nvim_create_user_command("Run", 'execute "!node %" ', {})
    end,
})

vim.api.nvim_create_autocmd("BufEnter", {
    group = augroup("TS_Run_Command"),
    pattern = { "*.ts" },
    callback = function()
        vim.api.nvim_create_user_command("Run", 'execute "!npx ts-node %" ', {})
    end,
})
