local opt = { noremap = true, silent = true }
local nosilent = { noremap = true, silent = false }

vim.g.maplocalleader = ' '
vim.g.mapleader = ' '

vim.keymap.set('i', 'jk', '<esc>', opt)
vim.keymap.set('i', '<c-b>', '<left>',  opt)
vim.keymap.set('i', '<c-f>', '<right>', opt)
vim.keymap.set('i', '<c-n>', '<down>',  opt)
vim.keymap.set('i', '<c-p>', '<up>',    opt)

vim.keymap.set('v', '<leader>s', '<cmd>sort<cr>', nosilent)

vim.keymap.set('n', '<c-h>', '<c-w>h', opt)
vim.keymap.set('n', '<c-j>', '<c-w>j', opt)
vim.keymap.set('n', '<c-k>', '<c-w>k', opt)
vim.keymap.set('n', '<c-l>', '<c-w>l', opt)

vim.keymap.set('n', '<leader>b', '<cmd>b#<cr>', opt)
vim.keymap.set('n', '<leader>s', '<cmd>buffers<cr>:b ', nosilent)
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', opt)
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', opt)

vim.keymap.set('n', '<leader>to', '<cmd>tabnew<cr>', opt)

vim.keymap.set('n', '<leader>co', '<cmd>copen<cr>', opt)
vim.keymap.set('n', '<leader>cm', '<cmd>make<cr>',  opt)
vim.keymap.set('n', '<leader>cM', '<cmd>make', nosilent)
vim.keymap.set('n', '<leader>cn', '<cmd>cnext<cr>', opt)
vim.keymap.set('n', '<leader>cp', '<cmd>cprev<cr>', opt)
