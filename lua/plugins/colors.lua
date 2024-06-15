return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
        enable = {
            terminal = true
        },
        styles = {
            bold = true,
            italic = true,
            transparency = true
        }
    })
        vim.cmd("colorscheme rose-pine-moon")
    end
}
-- "ellisonleao/gruvbox.nvim",
-- priority = 1000,
-- config = function()
--     require("gruvbox").setup({
--         transparent_mode = true,
--         italic = {
--             strings = true,
--             emphasis = true,
--             comments = true,
--             operators = false,
--             folds = true,
--         },
--     })
-- 
--     vim.cmd("colorscheme gruvbox")
-- end,
-- #1c2021
