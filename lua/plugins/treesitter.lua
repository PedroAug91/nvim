return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufNewFile" },
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup {
                highlight = {
                    enable = true,
                    disable = {"htmldjango"}
                },
                indent = { enable = true },
                ensure_installed = {
                    "cpp", "c", "python",
                    "json5", "javascript", "json",
                    "typescript", "lua", "luadoc",
                    "php", "php_only", "phpdoc",
                    "htmldjango", "html", "css",
                    "dockerfile", "yaml", "sql",
                    "gitignore", "bash"
                }
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
            "html", "css", "javascript",
            "typescript", "python", "c",
            "cpp", "markdown", "markdown_inline",
            "dockerfile", "json", "php"
        },
        opts = {},
    },
}
