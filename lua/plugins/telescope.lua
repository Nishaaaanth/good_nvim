return {
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            cond = function()
                return vim.fn.executable "make" == 1
            end,
        },
        { "nvim-telescope/telescope-ui-select.nvim" },
        { "nvim-tree/nvim-web-devicons",            enabled = vim.g.have_nerd_font },
    },

    config = function()
        require("telescope").setup({
            pickers = {
                colorscheme = {
                    enable_preview = true
                }
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown()
                }
            }
        })

        pcall(require("telescope").load_extension, "fzf")
        pcall(require("telescope").load_extension, "ui-select")

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [f]iles" })
        vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [h]elp" })
        vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [k]eymaps" })
        vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [s]elect telescope" })
        vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [w]ord" })
        vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [g]rep" })
        vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [d]iagnostics" })
        vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [r]esume" })
        vim.keymap.set("n", "<leader>sc", builtin.colorscheme, { desc = "[S]earch [c]olor" })
        vim.keymap.set("n", "<leader>s/", function()
            builtin.live_grep {
                grep_open_files = true,
                prompt_title = "Live Grep in Open Files",
            }
        end, { desc = "[S]earch [/]urrent file" })
        vim.keymap.set("n", "<leader>sn", function()
            builtin.find_files { cwd = vim.fn.stdpath "config" }
        end, { desc = "[S]earch [n]eovim files" })
        vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Existing [ ]" })
        vim.keymap.set("n", "<leader>?", builtin.oldfiles, { desc = "[S]earch [?]ecent" })
        vim.keymap.set("n", "<leader>/", function()
            builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
                winblend = 10,
                previewer = false,
            })
        end, { desc = "[/]urrent buffer" })
    end
}
