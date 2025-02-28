return {
    -- {
    --     "nvimtools/none-ls.nvim",
    --     opts = function(_, opts)
    --         local nls = require("null-ls")
    --         table.insert(opts.sources, nls.builtins.formatting.clang_format)
    --         table.insert(opts.sources, nls.builtins.formatting.blackd)
    --     end,
    -- },
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                ["python"] = { "isort", "black" },
                ["c"] = { "clang_format" },
                ["c++"] = { "clang_format" },
                ["sql"] = { "sqlfmt" },
            },
        },
    },
}
