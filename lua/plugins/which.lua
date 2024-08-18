return {
    "folke/which-key.nvim",
    config = function()
        require("which-key").add({
            { "<leader>c", group = "[C]olor" },
            { "<leader>t", group = "[T]erm" },
            { "<leader>w", group = "[W]indow" },
            { "<leader>*", group = "C[*]nfig" },
        })
    end
}
