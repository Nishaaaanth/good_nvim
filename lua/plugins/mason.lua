-- For indent_style & indent_size we can have a ".editorconfig" file with [*.fileType] at the top

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "ts_ls", "bash-language-server" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" }
                        },
                        workspace = {
                            library = { vim.env.VIMRUNTIME },
                            checkThirdParty = false
                        },
                        telemetry = {
                            enable = false,
                        }
                    }
                }
            })
            lspconfig.clangd.setup({
                capabilities = capabilities
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities
            })
            lspconfig.bashls.setup({
                capabilities = capabilities
            })
            lspconfig.prismals.setup({
                capabilities = capabilities
            })
            lspconfig.tailwindcss.setup({
                capabilities = capabilities
            })
            lspconfig.cssls.setup({
                capabilities = capabilities
            })
            lspconfig.html.setup({
                capabilities = capabilities
            })
            lspconfig.jdtls.setup({
                capabilities = capabilities
            })
            lspconfig.emmet_ls.setup({
                capabilities = capabilities
            })
            lspconfig.jsonls.setup({
                capabilities = capabilities
            })

            vim.keymap.set('n', "<leader>lr", vim.lsp.buf.rename, { desc = "[L]sp [r]ename" })
            vim.keymap.set('n', "<leader>lk", vim.lsp.buf.hover, { desc = "[L]sp [k]nowledge" })
            vim.keymap.set('n', "<leader>ld", vim.lsp.buf.definition, { desc = "[L]sp [d]efinition" })
            vim.keymap.set('n', "<leader>li", vim.lsp.buf.implementation, { desc = "[L]sp [i]mplementation" })
            vim.keymap.set('n', "<leader>lt", vim.lsp.buf.type_definition, { desc = "[L]sp [t]ype definition" })
            vim.keymap.set('n', "<leader>lf", function() vim.lsp.buf.format() end,
                { desc = "[L]sp [f]ormat" })
            vim.keymap.set('n', "<leader>la", vim.lsp.buf.code_action, { desc = "[L]sp code [a]ction" })
            vim.keymap.set('n', "<leader>dn", vim.diagnostic.goto_next, { desc = "[D]iagnostic [n]ext" })
            vim.keymap.set('n', "<leader>dp", vim.diagnostic.goto_prev, { desc = "[D]iagnostic [p]rev" })
        end
    }
}
