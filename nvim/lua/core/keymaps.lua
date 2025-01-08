local opts = function(desc)
    return { silent = true, desc = desc }
end

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


vim.keymap.set('n', '<M-h>', '<c-w>h', opts('go to left split'))
vim.keymap.set('n', '<M-j>', '<c-w>j', opts('go to lower split'))
vim.keymap.set('n', '<M-k>', '<c-w>k', opts('go to upper split'))
vim.keymap.set('n', '<M-l>', '<c-w>l', opts('go to right split'))


vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv", opts(''))
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv", opts(''))

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.keymap.set('n', '<c-d>', '<c-d>zz')
vim.keymap.set('n', '<c-u>', '<c-u>zz')
