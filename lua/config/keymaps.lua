-- Generals
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('t', "<esc>", "<C-\\><C-n>")

-- Term <-> Pane
vim.keymap.set({ 't', 'i' }, '<C-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set({ 't', 'i' }, '<C-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set({ 't', 'i' }, '<C-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set({ 't', 'i' }, '<C-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Splits
vim.keymap.set('n', "<leader>t", "<CMD>sp<CR><CMD>resize -10<CR><CMD>term<CR>i", { desc = '[V]ertical [t]erm' })
vim.keymap.set('n', "<leader>wl", "<CMD>vsp<CR>", { desc = '[W]indow [v]ertical' })
vim.keymap.set('n', "<leader>wj", "<CMD>sp<CR>", { desc = '[W]indow [h]orizontal' })

-- Tabs
vim.keymap.set('n', "<M-t>", "<CMD>tabnew<CR>", {})
vim.keymap.set('n', "<M-n>", "<CMD>tabNext<CR>", {})

-- Windows
vim.keymap.set('n', "<M-,>", "<C-w>3>", {})
vim.keymap.set('n', "<M-.>", "<C-w>3<", {})
vim.keymap.set('n', "<M-=>", "<C-w>3+", {})
vim.keymap.set('n', "<M-->", "<C-w>3-", {})
