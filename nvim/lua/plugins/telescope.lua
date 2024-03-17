return {
    'nvim-telescope/telescope.nvim',
    config = function()
        local builtin = require('telescope.builtin')

        require('telescope').setup({
            defaults = { path_display = { 'truncate' } }
        })

        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { silent = true, desc = '󰭎 live grep'})
        vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { silent = true, desc = '󰭎 diagnostics' })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { silent = true, desc = '󰭎 files' })
        vim.keymap.set('n', '<leader>fj', builtin.jumplist, { silent = true, desc = '󰭎 jumplist' })
        vim.keymap.set('n', '<leader>fq', builtin.quickfix, { silent = true, desc = '󰭎 quickfix' })
        vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { silent = true, desc = '󰭎 lsp document symbols' })
        vim.keymap.set({ 'n', 'v' }, 'fgs', builtin.grep_string, { silent = true, desc = '󰭎 grep string' })
    end,
    dependencies = { 'nvim-lua/plenary.nvim' }
}
