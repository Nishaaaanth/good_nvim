-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not (vim.uv or vim.loop).fs_stat(lazypath) then
--     vim.fn.system({
--         "git",
--         "clone",
--         "--filter=blob:none",
--         "https://github.com/folke/lazy.nvim.git",
--         "--branch=stable",
--         lazypath,
--     })
-- end
-- vim.opt.rtp:prepend(lazypath)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
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
