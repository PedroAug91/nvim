return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufNewFile" },
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup {
                highlight = {
                    enable = true,
                    -- disable = {"javascript"}
                },
                indent = { enable = true },
            }
        end,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {},
    },
    {
        "windwp/nvim-ts-autotag",
        ft = {
            "html",
            "css",
            "javascript",
            "typescript",
            "python",
            "c",
            "cpp",
            "lua",
            "markdown",
            "markdown_inline",
            "dockerfile",
            "json",
            "php"
        },
        opts = {},
    },
}
