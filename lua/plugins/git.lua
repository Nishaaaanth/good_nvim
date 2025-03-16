return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            vim.keymap.set("n", "<leader>gs", ":Gitsigns preview_hunk<CR>", { desc = "[G]it [S]igns" })
        end
    },

    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set('n', "<leader>g", "<CMD>Git<CR>", { desc = "[G]it" })
            vim.keymap.set('n', "<leader>ga", "<CMD>Git add .<CR>", { desc = "[G]it [A]dd" })
            vim.keymap.set('n', "<leader>gc", "<CMD>Git commit<CR>", { desc = "[G]it [C]ommit" })
            vim.keymap.set('n', "<leader>gb", "<CMD>Git blame<CR>", { desc = "[G]it [B]lame" })
            vim.keymap.set('n', "<leader>gp", "<CMD>sp<CR><CMD>term<CR>igit push<CR>", { desc = "[G]it [P]ush" })
        end
    }
}
