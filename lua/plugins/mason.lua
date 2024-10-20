-- ctrl + t => jump back from tag list
-- Telescope diagnosiics => ctrl+q => jump to

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
                ensure_installed = { "lua_ls", "clangd", "tsserver", "bash-language-server" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.clangd.setup({
                capabilities = capabilities
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities
            })
            lspconfig.bashls.setup({
                capabilities = capabilities
            })
            lspconfig.prismals.setup({
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

    -- {
    --     "williamboman/mason-lspconfig.nvim",
    --     dependencies = {
    --         "williamboman/mason.nvim",
    --         "neovim/nvim-lspconfig",
    --     },
    --
    --     config = function()
    --         require("mason").setup({})
    --         require("mason-lspconfig").setup({
    --             ensure_installed = { "lua_ls", "clangd", "tsserver", "bash-language-server" }
    --         })
    --         local capabilities = require("cmp_nvim_lsp").default_capabilities()
    --
    --         local on_attach = function()
    --             vim.keymap.set('n', "<leader>lr", vim.lsp.buf.rename, { desc = "[L]sp [r]ename" })
    --             vim.keymap.set('n', "<leader>lk", vim.lsp.buf.hover, { desc = "[L]sp [k]nowledge" })
    --             vim.keymap.set('n', "<leader>ld", vim.lsp.buf.definition, { desc = "[L]sp [d]efinition" })
    --             vim.keymap.set('n', "<leader>li", vim.lsp.buf.implementation, { desc = "[L]sp [i]mplementation" })
    --             vim.keymap.set('n', "<leader>lt", vim.lsp.buf.type_definition, { desc = "[L]sp [t]ype definition" })
    --             vim.keymap.set('n', "<leader>lf", function() vim.lsp.buf.format() end,
    --                 { desc = "[L]sp [f]ormat" })
    --             vim.keymap.set('n', "<leader>la", vim.lsp.buf.code_action, { desc = "[L]sp code [a]ction" })
    --             vim.keymap.set('n', "<leader>dn", vim.diagnostic.goto_next, { desc = "[D]iagnostic [n]ext" })
    --             vim.keymap.set('n', "<leader>dp", vim.diagnostic.goto_prev, { desc = "[D]iagnostic [p]rev" })
    --         end
    --         local lspconfig = require("lspconfig")
    --
    --         -- LSP Setups
    --         lspconfig.lua_ls.setup({
    --             capabilities = capabilities,
    --             on_attach = on_attach
    --         })
    --         lspconfig.clangd.setup({
    --             capabilities = capabilities,
    --             on_attach    = on_attach
    --         })
    --         lspconfig.tsserver.setup({
    --             capabilities = capabilities,
    --             filetypes = {
    --                 "javascript",
    --                 "typescript",
    --                 "typescriptreact",
    --             },
    --             on_attach = on_attach
    --         })
    --         lspconfig.gopls.setup({
    --             capabilities = capabilities,
    --             filetypes    = {
    --                 "go",
    --                 "gomod",
    --                 "gowork",
    --                 "gotmpl"
    --             },
    --             on_attach    = on_attach
    --         })
    --         lspconfig.rust_analyzer.setup({
    --             capabilities = capabilities,
    --             filetypes    = {
    --                 "rs",
    --                 "rust"
    --             },
    --             on_attach    = on_attach
    --         })
    --         lspconfig.bashls.setup({
    --             capabilities = capabilities,
    --             filetypes    = {
    --                 "sh",
    --                 "bash",
    --                 ".bashrc",
    --                 "bash-language-server"
    --             },
    --             on_attach    = on_attach
    --         })
    --         lspconfig.prismals.setup({
    --             capabilities = capabilities,
    --             filetypes    = {
    --                 "sh",
    --                 "bash",
    --                 ".bashrc",
    --                 "bash-language-server"
    --             },
    --             on_attach    = on_attach
    --         })
    --     end
    -- }
}
