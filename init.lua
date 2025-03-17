local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    ui = {
        border = "rounded"
    },
    spec = {
        { import = "plugins" },
        { import = "colors" },
        { import = "options" },
        { import = "keymaps" },
    },
    change_detection = {
        notify = false
    },
    checker = {
        enable = true,
        notify = false
    }
})

local terminal_group = vim.api.nvim_create_augroup("Terminal", { clear = true })
vim.api.nvim_create_autocmd({ "TermOpen" }, {
  group = terminal_group,
  pattern = "*",
  command = "setlocal nonumber norelativenumber"
})

local yank_group = vim.api.nvim_create_augroup("Yank", { clear = true })
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  group = yank_group,
  callback = function()
    vim.highlight.on_yank()
  end
})
