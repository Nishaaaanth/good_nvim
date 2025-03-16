-- Line Numbers
vim.o.nu = true
vim.o.rnu = true

-- Indents
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

-- Colors & Highlights
vim.o.termguicolors = true
vim.o.guicursor = ''
vim.g.bg = "dark"
vim.o.hlsearch = false

-- Split
vim.o.splitbelow = true
vim.o.splitright = true

-- Edit
vim.o.wrap = true
-- vim.o.scrolloff = 999
vim.o.virtualedit = "block"

-- Misc
vim.o.mouse = 'a'
vim.opt.inccommand = "split"
vim.o.updatetime = 50
vim.o.clipboard = "unnamedplus"

-- Netrw
-- vim.g.netrw_browse_split = 0
-- vim.g.netrw_banner = 0
-- vim.g.netrw_winsize = 26

vim.opt.conceallevel = 0
vim.g.mapleader = " "

return {}
