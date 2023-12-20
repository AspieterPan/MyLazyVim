return {
    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                -- pyright will be automatically installed with mason and loaded with lspconfig
                clangd = {
                    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto", "hh", "cc" },
                },
            },
        },
    },
}
