local opts = function(desc)
    return { silent = true, desc = desc }
end

vim.g.mapleader = ' '

vim.keymap.set('n', '<M-h>', '<c-w>h', opts('go to left split'))
vim.keymap.set('n', '<M-j>', '<c-w>j', opts('go to lower split'))
vim.keymap.set('n', '<M-k>', '<c-w>k', opts('go to upper split'))
vim.keymap.set('n', '<M-l>', '<c-w>l', opts('go to right split'))


vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv", opts(''))
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv", opts(''))
