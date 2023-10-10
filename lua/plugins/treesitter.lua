return {
    "nvim-treesitter/nvim-treesitter",
    keys = {
        { "<leader>v", desc = "Increment selection" },
        { "<c-space>", false },
    },
    opts = {
        incremental_selection = {
            keymaps = {
                init_selection = "<leader>v",
                node_incremental = "<leader>v",
            },
        },
    },
}
