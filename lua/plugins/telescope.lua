return {
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            -- add a keymap to browse plugin files
            {
                "<leader>fc",
                function()
                    require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
                end,
                desc = "Find Plugin File",
            },
            {
                "<leader>fC",
                function()
                    require("telescope.builtin").find_files({ cwd = "~/.config/nvim/" })
                end,
                desc = "Find Config File",
            },
        },
    },

    -- add telescope-fzf-native
    {
        "telescope.nvim",
        dependencies = {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            config = function()
                require("telescope").load_extension("fzf")
            end,
        },
    },
}
