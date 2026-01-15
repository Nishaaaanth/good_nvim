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
-- vim.o.guicursor = ''
vim.g.bg = "dark"
vim.o.hlsearch = false
vim.o.cursorline = true
vim.o.numberwidth = 1
vim.o.signcolumn = 'auto:1'
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"

-- Split
vim.o.splitbelow = true
vim.o.splitright = true

-- Edit
vim.o.wrap = true
vim.o.scrolloff = 15
vim.o.virtualedit = "block"

-- Misc
vim.o.mouse = 'a'
vim.opt.inccommand = "split"
vim.o.updatetime = 50
vim.o.clipboard = "unnamedplus"
vim.opt.conceallevel = 0
vim.g.mapleader = " "
-- vim.cmd [[hi @function.builtin guifg=yellow]]
