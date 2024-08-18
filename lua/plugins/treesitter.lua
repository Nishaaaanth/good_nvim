return {
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate"
        },

        config = function()
            local treesitter_config = require("nvim-treesitter.configs")

            treesitter_config.setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "rust", "javascript", "typescript", "query", "markdown" },
                auto_install = true,
                hightlight = {
                    enable = true
                },
                indent = {
                    enable = true
                },

                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                            ["as"] = { query = "@scope", query_group = "locals", desc = "Select langauge scope" }
                        },

                        selection_modes = {
                            ["@parameters.outer"] = 'v',
                            ["@function.outer"] = 'V',
                            ["@class.outer"] = '<c-v>',
                        },

                        include_surrounding_whitespace = true
                    }
                }
            })
        end
    },

}
