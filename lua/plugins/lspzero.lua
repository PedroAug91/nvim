return {
    "VonHeikemen/lsp-zero.nvim",
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'L3MON4D3/LuaSnip',
    },

    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(client, bufnr)
            lsp_zero.default_keymaps({ buffer = bufnr })

            -- Keymaps
            vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', { buffer = bufnr })
            vim.keymap.set('n', '<leader>nn', function() vim.lsp.buf.rename() end, { buffer = bufnr })
        end)

        lsp_zero.set_sign_icons({
            error = '✘',
            warn = '▲',
            hint = '⚑',
            info = '»'
        })

        local cmp = require("cmp")
        local cmp_format = require("lsp-zero").cmp_format({ details = true })


        cmp.setup({
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered()
            },
            preselect = "item",
            completion = {
                completeopt = "menu,menuone,noinsert"
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "buffer" }
            },
            formatting = cmp_format,
            mapping = {
                ["<C-j>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
                ["<C-k>"] = cmp.mapping.select_next_item({ behavior = "select" }),
                ["<Tab>"] = cmp.mapping.confirm({ select = true }),
            }
        })

        require("lspconfig").intelephense.setup({
            root_dir = function ()
                local current_path = vim.fn.expand('%:p:h')
                return current_path
            end
        }) -- Por algum motivo, essa desgraça só funciona se for assim...

        require("mason").setup({})
        require("mason-lspconfig").setup({
            ensure_installed = {
                "clangd",
                "cssls",
                "css_variables",
                "denols",
                "docker_compose_language_service",
                "dockerls",
                "emmet_language_server",
                "html",
                "lua_ls",
                "pyright",
                "sqlls"
            },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
            },
        })

    end
}
