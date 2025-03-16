return {
    "rcarriga/nvim-notify",

    config = function()
        require("notify").setup({
            render = "minimal",
            stages = "fade"
        })

        require("notify")("Welcome Back Nishanth!!")
    end
}
