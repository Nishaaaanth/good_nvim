-- Generals
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('t', "<esc>", "<C-\\><C-n>")

-- Splits
vim.keymap.set('n', "<leader>tv", "<CMD>vsp<CR><CMD>term<CR>", { desc = '[V]ertical [t]erm' })
vim.keymap.set('n', "<leader>tt", "<CMD>sp<CR><CMD>term<CR>", { desc = '[H]orizontal [t]erm' })
vim.keymap.set('n', "<leader>T", "<CMD>term<CR>", { desc = '[T]erm' })
vim.keymap.set('n', "<leader>wv", "<CMD>vsp<CR>", { desc = '[W]indow [v]ertical' })
vim.keymap.set('n', "<leader>ww", "<CMD>sp<CR>", { desc = '[W]indow [h]orizontal' })
vim.keymap.set('n', "<leader>+", "<CMD>res 15<CR>", { desc = '[+] window' })

-- Colors
vim.keymap.set('n', "<leader>cr", "<CMD>lua Color('rose-pine')<CR>", { desc = '[C]olor [r]ose-Pine' })
vim.keymap.set('n', "<leader>ca", "<CMD>lua Color('anderson')<CR>", { desc = '[C]olor [a]nderson' })
vim.keymap.set('n', "<leader>cm", "<CMD>lua Color('mountaineer')<CR>", { desc = '[C]olor [m]ountaineer' })
vim.keymap.set('n', "<leader>cf", "<CMD>lua Color('fahrenheit')<CR>", { desc = '[C]olor [f]ahrenheit' })
vim.keymap.set('n', "<leader>cc", "<CMD>lua Color('catppuccin-mocha')<CR>", { desc = '[C]olor [c]atppuccin-Mocha' })

-- Tabs
vim.keymap.set('n', "<M-t>", "<CMD>tabnew<CR>", {})
vim.keymap.set('n', "<M-n>", "<CMD>tabNext<CR>", {})

-- Windows
vim.keymap.set('n', "<M-,>", "<C-w>3>", {})
vim.keymap.set('n', "<M-.>", "<C-w>3<", {})
vim.keymap.set('n', "<M-=>", "<C-w>3+", {})
vim.keymap.set('n', "<M-->", "<C-w>3-", {})

-- Snippets
-- vim.keymap.set("n", ",cm", "<cmd>-1read ~/.config/nvim/skeleton/.cmake.skeleton<cr>", { desc = '[c][m]ake' })
-- vim.keymap.set("n", ",h", "<cmd>-1read ~/.config/nvim/skeleton/.html.skeleton<cr>6jf>a", { desc = '[h]tml' })
-- vim.keymap.set("n", ",cp", "<cmd>-1read ~/.config/nvim/skeleton/.cpp.skeleton<cr>3jo", { desc = '[c][p]p' })
-- vim.keymap.set("n", ",c", "<cmd>-1read ~/.config/nvim/skeleton/.c.skeleton<cr>2jo", { desc = '[c]' })

return {}
