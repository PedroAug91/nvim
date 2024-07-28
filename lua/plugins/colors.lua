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
