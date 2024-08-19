return {
    "folke/which-key.nvim",
    config = function()
        local which = require("which-key")
        which.add({
            { "<leader>c", group = "[C]olor" },
            { "<leader>t", group = "[T]erm" },
            { "<leader>w", group = "[W]indow" },
            { "<leader>*", group = "C[*]nfig" },
            { "<leader>d", group = "[D]iagnostics" },
            { "<leader>l", group = "[L]sp" },
            { "<leader>s", group = "[S]earch" },
        })
    end
}
