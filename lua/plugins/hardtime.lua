-- lazy.nvim
return {
    {
        "m4xshen/hardtime.nvim",
        dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
        opts = {
            disable_mouse = false,
        },
        -- Add "oil" to the disabled_filetypes
        disabled_filetypes = { "qf", "netrw", "NvimTree", "lazy", "mason", "oil" },
    },
}
