return {
    {
        'ThePrimeagen/harpoon',

        config = function()
            require("harpoon").setup({})

            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")

            vim.keymap.set('n', "<leader>aa", mark.add_file)

            vim.keymap.set('n', "<leader>ag", ui.toggle_quick_menu)

            vim.keymap.set('n', "<leader>au", function()
                ui.nav_file(1)
            end)
            vim.keymap.set('n', "<leader>ai", function()
                ui.nav_file(2)
            end)
            vim.keymap.set('n', "<leader>ao", function()
                ui.nav_file(3)
            end)
            vim.keymap.set('n', "<leader>ap", function()
                ui.nav_file(4)
            end)
        end
    }
}
