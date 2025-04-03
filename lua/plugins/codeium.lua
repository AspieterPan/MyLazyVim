if false then
    return {}
end

return {
    {
        "nvim-lualine/lualine.nvim",
        opts = function(_, opts)
            table.insert(opts.sections.lualine_x, 2, require("codeium.virtual_text").status_string)
        end,
    },
    {
        "Exafunction/codeium.nvim",
        opts = {
            virtual_text = {
                filetypes = {
                    ["dap-repl"] = false,
                    ["dapui_console"] = false,
                    ["dapui_scopes"] = false,
                    ["dapui_breakpoints"] = false,
                    ["dapui_stacks"] = false,
                    ["dapui_watches"] = false,
                },
            },
        },
    },
}
