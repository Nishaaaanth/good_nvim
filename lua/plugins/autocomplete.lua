--     "hrsh7th/cmp-nvim-lsp",
--     "hrsh7th/cmp-buffer",
--     "hrsh7th/cmp-path",

return {
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "hrsh7th/nvim-cmp",

        config = function()
            local cmp = require("cmp")
            local cmp_select = { behavior = cmp.SelectBehavior.Select }
            cmp.setup({
                -- snippet = {
                -- expand = function(args)
                -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                --     end,
                -- },

                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },

                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),

                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    -- {name = "luasnip"},
                }, {
                    { name = "buffer" }
                })
            })
        end
    }
}
